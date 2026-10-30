# LLVM Backend Plugins: talk outline (draft 1)

> Earlier this year, LLVM's plugin interface gained the PreCodeGenCallback hook. It allows us to
> inject code before the backend pipeline or even replace the entire backend with a custom
> implementation. In this session we will discuss opportunities and limitations of the feature and
> see how clients have been adopting it in past and ongoing releases.

Legend: ✅ verified (source given) · ⚠️ correction to the notes · ❓ open / needs your input · 🎬 demo

---

## Fact check: corrections to the notes

- ⚠️ **"Added in the last release cycle"** isn't quite right. The hook landed on `main` on
  2025-12-16 ([`cd806d7e7689`], PR [#170846]) and shipped in **LLVM 22.1**. The release cycle that
  just finished was 23. The abstract's "earlier this year" works if it means the release date of 22.1.
- ⚠️ **The plugin header moved.** It is now `llvm/Plugins/PassPlugin.h` (separate `LLVMPlugins`
  library, [`f54df0d09e19`], 2025-12-22), no longer `llvm/Passes/PassPlugin.h`. Any code on slides
  should use the new path.
- ⚠️ **The API version changed twice.** `LLVM_PLUGIN_API_VERSION` 1 (≤ 21) → 2 (22, adds
  `PreCodeGenCallback`) → 3 (`main`/24, adds `ParseArguments`). In #170846 you commented that this
  was *"the first-ever change in the pass-plugin API"*.
- ⚠️ **In-tree clients today:** `llc`, `clang` and `flang` only. clang-repl and lld do **not** call
  the hook (clang-repl goes through ORC, and lld only reaches it via LTO, which is still open in #231516).
- ⚠️ **TPDE no longer needs a patch for 22+.** For Clang/Flang 22+ it ships `tpde-plugin.so` and you
  use `-fpass-plugin=`. The patch is only needed for 19–21. TPDE emits **ELF only** (x86-64,
  AArch64), so the demo runs in an arm64 Linux container.

---

## 0 · What is an LLVM backend? (≈3 min)

- Codegen: IR → instruction selection → MIR → scheduling + regalloc → prologue/epilogue → MC
- Plus: Calling conventions, Debug info, EH/unwind tables, inline asm, object file writing relocations, stack maps/statepoints, CFI, pointer-auth

- What it cannot do:
  - Adding a new arch, because IR depends on it and `Triple::ArchType` is closed
  - Offloading: usually, frontends split host and device code

- Why would we want a custom one?
  - TPDE (10–20× faster in `-O0`)
  - llvm-cbe? (C backend), llvm-spirv? (Khronos SPIRV-LLVM-Translator)
  - wllvm/gllvm/`-fembed-bitcode`?
  - arm-tv? Regehr, Lopes et al. detect backend miscompilations

🖼 Graphic: pipeline frontend → middle-end (opt) → **backend** → object, with NO hook arrow between opt and backend.

## 1 · Plugin interfaces in LLVM (≈2 min)

| Interface | Loaded by |
|---|---|
| Clang frontend plugins | `clang -fplugin=` |
| Legacy-PM plugins | `opt -load` and static ctors like RegisterTargetPassConfigCallback (Codegen legacy hook) |
| **New-PM pass plugins** | `clang -fpass-plugin` etc. with `llvmGetPassPluginInfo()` |
| Other unrelated ones | clang-tidy, clangd, lldb, MLIR dialect plugins, CAS plugin C API |

## 2 · The pass-plugin interface (≈3 min)

- Presented last year: [🔗 EuroLLVM 2025 talk](https://llvm.org/devmtg/2025-04/slides/technical_talk/graenitz_pass_plugins.pdf)
- Version check is strict: a mismatch is an error, and in practice you need the *exact* LLVM version because the C++ ABI isn't stable
- PassBuilder extension points (`registerPipelineStartEPCallback`, `…OptimizerLastEPCallback`, …)
- `PassPluginLibraryInfo` today, simplified ([PassPlugin.h](llvm-project/llvm/include/llvm/Plugins/PassPlugin.h)):
  ```cpp
  struct PassPluginLibraryInfo {
    uint32_t APIVersion;          // LLVM_PLUGIN_API_VERSION: 3 on main
    const char *PluginName;
    const char *PluginVersion;
    void (*RegisterPassBuilderCallbacks)(PassBuilder &);
    bool (*PreCodeGenCallback)(Module &, TargetMachine &, CodeGenFileType, raw_pwrite_stream &);  // since version 2, LLVM 22
    Error (*ParseArguments)(ArrayRef<const char *> Args); // from LLVM 24 on
  };

  extern "C" PassPluginLibraryInfo llvmGetPassPluginInfo();  // looked up via dlsym
  ```

## 3 · 🎬 Demo 1: minimal pass plugin with Bye (≈3 min)

Two slides:
1. **Commands**: the two invocations below, plus the "one plugin, two spellings" note.
2. **Live terminal, full screen** (ttyd, `PAUSE=1 demo/demo1.sh`). No other content on that slide.

Text size rule for all slides: nothing smaller than the code blocks on the commands slide.

`llvm/examples/Bye` prints Bye for all functions 👋
```sh
> opt -load-pass-plugin=build/llvm/lib/Bye.so -passes=goodbye -plugin-arg=Bye,-wave-goodbye -disable-output demo/hello.ll
> clang -O1 -c -fpass-plugin=build/llvm/lib/Bye.so -mllvm -wave-goodbye demo/hello.c
```

- ⚠️ On `main`, plugin `cl::opt`s go through `-plugin-arg=Bye,…` in opt/llc (see §D). With 22/23 it was just `-wave-goodbye`.
- clang still takes `-mllvm -wave-goodbye`, because it loads plugins before parsing `-mllvm` ([`c3678c4165b5`]).
  One plugin, two spellings: a nice live moment for §D.

## 4 · The new `PreCodeGenCallback` (≈4 min)

Landed in LLVM 22:

```cpp
bool (*PreCodeGenCallback)(Module &, TargetMachine &, CodeGenFileType,
                           raw_pwrite_stream &OS) = nullptr;
```
- Runs after the optimization pipeline and before `addPassesToEmitFile`.
- Return `true` → the plugin wrote the output itself. The default backend **and all later plugins' callbacks** are skipped.
- Return `false` → it was only an inspection or modification, or it falls back to LLVM (TPDE does this for unsupported IR).

## 5 · Why it doesn't fit the pass-plugin API, and why it landed there anyway (≈3 min)

- Misfit: pass plugins *add passes to a pipeline*. This hook *replaces the pipeline*. It is a
  frontend-level decision with a first-wins chain, it isn't a pass, and there is no PassBuilder involved.
- Alternatives discussed in #165257:
  - Keep it in Clang (the original RFC): every frontend (Flang, Rust, Swift, Julia, …) would need its own copy.
  - You proposed moving it into `CodeGenTargetMachineImpl`/`addPassesToEmitFile()` so that *"all frontends would profit"*.
  - efriedma: *"Can we use the llvm::PassPlugin infrastructure here, instead of a clang plugin?"* and
    later *"extend PassPluginLibraryInfo with additional callbacks"* → it gets "free" integration
    wherever `-fpass-plugin`/`-load-pass-plugin` already exist (LTO, other frontends).
  - ❓ Was "add another plugin interface" discussed explicitly? Not found yet. Do you remember where?
- Verdict: pragmatic. Distribution and loading are already solved, at the cost of a semantic stretch.
- Why not `addPassesToEmitFile()` after all? Right layer (LTO, llc, rustc, … all call it, e.g.
  [LTOBackend.cpp:506](llvm-project/llvm/lib/LTO/LTOBackend.cpp#L506)), but the wrong abstraction:
  it only *builds* a legacy pipeline and never sees the `Module`, so no per-module fallback; the new-PM
  codegen path bypasses it; and `TargetMachine` can't depend on `LLVMPlugins` (→ global registry).
- **Conclusion: the missing layer now exists.** [#220305] (Aiden Grossman, [`dca328efcdee`], 2026-09-03)
  adds `llvm::runCodeGenPipeline(TM, M, OS, DwoOS, CGFT, …)`
  ([RunCodeGen.cpp:89](llvm-project/llvm/lib/Passes/RunCodeGen.cpp#L89)), *"intended to replace this
  logic in clang/flang other frontends which currently write essentially the same thing"*.
  - Same signature as the hook, sees the `Module`, dispatches legacy vs new PM.
  - clang and flang already use it. Clang calls the plugin hook right before it
    ([BackendUtil.cpp:1273](llvm-project/clang/lib/CodeGen/BackendUtil.cpp#L1273) vs
    [:1284](llvm-project/clang/lib/CodeGen/BackendUtil.cpp#L1284)).
  - Pass the plugin list in, move llc and `LTOBackend::codegen` over, and "all frontends profit"
    (including LTO, cf. §9) without the `addPassesToEmitFile` problems.
  - Framing: `addPassesToEmitFile` was the right layer with the wrong abstraction; `PassPluginLibraryInfo`
    was the right loading mechanism at the wrong layer; `runCodeGenPipeline` may be where they meet.
  - ❓ Not checked yet: can `LLVMPasses` depend on `LLVMPlugins` without a cycle?

## 6 · 🎬 Demo 2: the hook in llc (≈3 min)

- ✅ Bye implements `PreCodeGenCallback` since the hook landed ([`cd806d7e7689`]), behind `-last-words`
  ([Bye.cpp:63-76](llvm-project/llvm/examples/Bye/Bye.cpp#L63-L76)). Same plugin as Demo 1, one more option.
  In-tree tests: [codegen-plugin.ll](llvm-project/llvm/test/Feature/codegen-plugin.ll) (llc, plus
  `codegen-plugin-legacy.ll`), [codegen-plugins.c](llvm-project/clang/test/CodeGen/codegen-plugins.c) (clang),
  [pass-plugin-codegen.f90](llvm-project/flang/test/Driver/pass-plugin-codegen.f90) (flang, also checks
  that `-emit-llvm` doesn't run the hook).
- ✅ The three outcomes of the hook, tested on AArch64:
  ```sh
  > llc -load-pass-plugin=./Bye.so hello.ll                                  # returns false → normal asm
  > llc -load-pass-plugin=./Bye.so -plugin-arg=Bye,-last-words hello.ll     # returns true  → "CodeGen Bye"
  > llc … -plugin-arg=Bye,-last-words -filetype=obj hello.ll                 # emitError → "last words unsupported for binary output"
  > clang -S -fpass-plugin=./Bye.so -mllvm -last-words hello.c              # → "CodeGen Bye"
  ```
- Show side by side with the llc call site
  [llcdriver.cpp:722](llvm-project/llvm/tools/llc/lib/llcdriver.cpp#L722).
- Note: llc's driver is now a library (`LLVMLlcDriver`, [`c86292488b86`], Sep 2026) for embedding (WasmBolt).

## 7 · 🎬 Demo 3: TPDE in Clang (≈4 min)

- ✅ Tested on AArch64 Linux (container); TPDE produced the object (no fallback, otherwise `-Werror` would have failed):
  ```sh
  clang -O0 -c -fpass-plugin=build/tpde/tpde-llvm/tpde-plugin.so -Werror=backend-plugin demo/hello.c -o hello.o
  clang -fuse-ld=lld hello.o -o hello && ./hello   # exit 0
  ```
- ✅ `-S` is a **hard error**, not a fallback: `error: TPDE only support compiling to object files`
  (the callback calls `emitError` and returns `false`). Good live example for "no asm" in §9.
- The plugin source is about 40 lines ([tpde-plugin.cpp](tpde/tpde-llvm/tools/tpde-plugin.cpp)), worth showing on a slide.
- ✅ How it loads: `tpde-plugin.so` (1.8 MB) has **no LLVM dependency** (NEEDED: only libstdc++, libm, libgcc_s, libc).
  89 `llvm::` symbols stay undefined and bind to the clang executable at `dlopen` time
  (clang is linked with `-Wl,--export-dynamic` because of `LLVM_ENABLE_PLUGINS`; about 122k dynamic symbols).
  - Hence the "exact LLVM version" requirement: the C++ ABI between plugin and host is unchecked.
  - Example: `llvm::APFloatBase::semPPCDoubleDouble` is `U` in the plugin and `V` (weak, implicitly-inline
    `constexpr` static member) in clang, so there is **one** copy and address identity holds. This links to bonus A.
    It is referenced directly since the APFloat getters became inline (`0f68dc6cffd9`, #163794, Oct 2025).
  - ELF-specific: Windows needs a dylib build plus explicit exports; macOS needs `-undefined dynamic_lookup`.
- Measure with `hyperfine` LLVM -O0 against TPDE on a real-world TU, and show `-ftime-trace` (TPDE adds a `TimeTraceScope("TPDE")`).
- Fallback: show the warning on unsupported IR (e.g. `-O2` vector code).
- ❓ Which workload? (sqlite3.c amalgamation is a classic single TU.)

## 8 · Adoption by other clients (≈3 min)


- 2025-10-28 RFC PR [#165257] "[RFC][Clang] Allow plugins to hook into back-end" was a **Clang-only, Registry-based** design.
- 2025-12-16 [#170846] hook in `PassPluginLibraryInfo` plus llc support.
- 2025-12-23 [#171872] Clang invokes it (in `BackendUtil.cpp` `RunCodegenPipeline`).
- 2026-01-07 [`277069e8c184`] (#174006) Flang matches Clang.

| Client | Status | Source |
|---|---|---|
| llc, clang, flang | ✅ in LLVM 22+ | commits above |
| distributed ThinLTO in clang | `-fpass-plugin` + `-fthinlto-index` works since 2026-03 ([`23cb4e5f4602`]); the PreCodeGen hook in LTO still ❌ (#231516) | |
| **Rust** | 🟡 open PR [rust#164108] `-Zllvm-tpde=try\|only` loads TPDE via `-Zllvm-plugins`, built on llvmorg-24-init. Ripgrep: −3–4 % wall time, −17 % instructions, 12/1113 CGUs fell back. Also the rustc-dev-guide PR #3051 and the `jonastahl/RustcTpde` prototype | ❓ verify flag name |
| Julia | ❓ no evidence of PreCodeGen use. libjulia *is* a pass plugin (`-julia` meta-pass). Julia's JIT would use TPDE via ORC instead (your blog post 2025-09-30) | |
| Zig | ❓ nothing found | |
| clang-repl | ❌ JIT path, not covered by the hook. TPDE-in-ORC is the alternative | |
| lld | ❌ until #231516 lands | |
| Flang MLIR pipeline | related: `MLIRToLLVMPassPipeline` plugin callbacks ([`140425be9bb3`], Churavy, Oct 2026) | |
| ❓ Swift, GHC, others | not researched yet | |

## 9 · Missing features (≈3 min)

- **LTO**: your PR [#231516] (open, 2026-10-13) covers regular LTO, in-process ThinLTO and distributed ThinLTO,
  loads plugins once in `LTO::run()`, and has tests for clang ThinLTO and lld ELF. Open points: static
  extensions (aengelke: they *"should behave exactly like plugins that are always loaded"*) and an LLVMLTO ABI break.
- **Static extensions** (`Extension.def`, `LLVM_${name}_LINK_INTO_TOOLS`) don't get the hook.
- **Plugin arguments in clang**: there is no `-fpass-plugin-arg`. `-plugin-arg` exists in opt/llc only, so clang relies on `-mllvm`.
- **Order and composition**: first `true` wins. There is no way to chain or wrap another backend's output.
- **Only file output**: the hook gets a `raw_pwrite_stream`. JIT/ORC users need a different path.
- **No asm**: TPDE rejects `CodeGenFileType::AssemblyFile` (`-S`).
- ❓ Windows: plugins need `LLVM_ABI_EXPORT` ([`9f20fc9ba70b`]) and a dylib build.
- ❓ ABI fragility: exact-version matching, and API version bumps.

---

## Bonus

### A · Modified backend vs plugin
- Fork, minimal diff: hard to maintain. Duplicating a backend is the opposite extreme.
- Inline changes in a DSO lead to symbol collisions, so you isolate the DSO. That leads to *silent* address-as-identity
  bugs: `APFloat::IEEEdouble()` fltSemantics compared by address, and `ErrorInfo<T>::ID` (static char) used for `isA<>`.
  ❓ Concrete example or story from your experience?
- Note the contrast: TPDE's plugin links `tpde_llvm_impl` and resolves LLVM symbols **from the host process** (it doesn't bundle LLVM).

### B · Codegen in the new pass manager
- llc NPM path registers plugin `PassBuilder` callbacks since 2026-08 ([`0a1ed5c28403`], X. Fabian). This only makes
  plugin passes **nameable in `-passes=`** (test: `llvm/test/Feature/codegen-plugin-passes.mir`).
- `CodeGenPassBuilder::insertPass/disablePass` exist, but for *targets*. There are no EP callbacks for plugins,
  and no replace/reorder. ✅ "inject only" is right. Even inject only works through an explicit `-passes` pipeline.
- Legacy alternative: `RegisterTargetPassConfigCallback` (static ctor gets `TargetPassConfig*`, can `insertPass`/`substitutePass`).

### C · Progress in the current (24) cycle
- `-plugin-arg` + `ParseArguments`, API v3 ([`3084a8ffb386`], #227414)
- plugins loaded after cl parsing in opt/llc ([`1f84168f595d`], #226773) + review follow-up ([`0170d3c340a2`])
- `PassPlugin::Load` → `load` (NFC)
- `llvmGetPassPluginInfo` always exported (Windows)
- llc NPM plugin callbacks, llc `-load` dropped, `LLVMLlcDriver` library
- CGPluginTest fixes (yours: [`cbab69595ca6`], [`2032d7a2f64e`])
- Flang MLIR→LLVM pipeline plugin callbacks
- open: LTO hook #231516

### D · MaskRay's library-options refactor
- Motivation: the RFC "Declare library command-line options in TableGen, one struct per library"
  (discourse 91877). `cl::callback` is to be removed, so opt/llc can't load plugins mid-`argv`-parse anymore.
- Consequence: plugin options can't be ordinary options, which is why `-plugin-arg=<plugin>,<arg>` and
  `ParseArguments` exist (API v3).
- ❓ "How that allows plugins to inspect internal -mllvm options": since plugins now load *after* parsing, the
  global `cl::opt`s are final when `ParseArguments` runs. Did you mean reading them via `cl::getRegisteredOptions()`?
  And which "other API function" did you mean, `passPluginArguments()`?
- Inconsistency: clang still loads plugins *before* parsing `-mllvm` (Alexis, #173287), while opt/llc load them after.

---

## Demo environment (in this folder)

- `llvm-project/` is a worktree on branch `berlinllvm-demo` at `0fcaf83fba58` (LLVM 24.0.0git).
- `tpde/` is cloned at `9779acf` (already contains LLVM 24 adjustments; CMake warns "unsupported version", which is expected).
- `scripts/docker.sh [cmd]` runs a command in an arm64 Ubuntu 24.04 container, with the workspace mounted at the same path.
- `scripts/build-llvm.sh` builds Release, AArch64, clang+lld (+ `Bye`) into `build/llvm`.
- `scripts/build-tpde.sh` builds TPDE + `tpde-plugin.so` into `build/tpde`, with
  `-DTPDE_TARGETS=aarch64` (encodegen would otherwise need LLVM's X86 target), `-DTPDE_INCLUDE_TESTS=OFF`
  (TPDE's tests require both targets) and `-DTPDE_LINK_LLVM_STATIC=ON` (no `libLLVM.so` in our build; this
  only affects tpde-llc/-lli/-encodegen, not the plugin).
- ✅ Status 2026-10-28: both builds are green. For x86-64 demos or TPDE's test suite, rebuild LLVM with `X86` added.

## Open questions for you

1. Talk length and time slot? (The estimates above add up to ≈35 min without the bonus.)
2. Your EuroLLVM 2025 talk title and link.
3. "codegen plus X" list and motivation for custom backends (§0).
4. Demo 2: write our own `ByeCodeGen` plugin? (recommended)
5. Demo 3 workload (sqlite3?).
6. §D: what exactly you meant by "another API function" and "inspect internal -mllvm options".

[`cd806d7e7689`]: https://github.com/llvm/llvm-project/commit/cd806d7e7689
[`f54df0d09e19`]: https://github.com/llvm/llvm-project/commit/f54df0d09e19
[`277069e8c184`]: https://github.com/llvm/llvm-project/commit/277069e8c184
[`c6c55417e835`]: https://github.com/llvm/llvm-project/commit/c6c55417e835
[`7daa1defd242`]: https://github.com/llvm/llvm-project/commit/7daa1defd242
[`9f3af63e886d`]: https://github.com/llvm/llvm-project/commit/9f3af63e886d
[`c3678c4165b5`]: https://github.com/llvm/llvm-project/commit/c3678c4165b5
[`c86292488b86`]: https://github.com/llvm/llvm-project/commit/c86292488b86
[`dca328efcdee`]: https://github.com/llvm/llvm-project/commit/dca328efcdee
[`23cb4e5f4602`]: https://github.com/llvm/llvm-project/commit/23cb4e5f4602
[`140425be9bb3`]: https://github.com/llvm/llvm-project/commit/140425be9bb3
[`9f20fc9ba70b`]: https://github.com/llvm/llvm-project/commit/9f20fc9ba70b
[`0a1ed5c28403`]: https://github.com/llvm/llvm-project/commit/0a1ed5c28403
[`3084a8ffb386`]: https://github.com/llvm/llvm-project/commit/3084a8ffb386
[`1f84168f595d`]: https://github.com/llvm/llvm-project/commit/1f84168f595d
[`0170d3c340a2`]: https://github.com/llvm/llvm-project/commit/0170d3c340a2
[`cbab69595ca6`]: https://github.com/llvm/llvm-project/commit/cbab69595ca6
[`2032d7a2f64e`]: https://github.com/llvm/llvm-project/commit/2032d7a2f64e
[#165257]: https://github.com/llvm/llvm-project/pull/165257
[#170846]: https://github.com/llvm/llvm-project/pull/170846
[#171872]: https://github.com/llvm/llvm-project/pull/171872
[#231516]: https://github.com/llvm/llvm-project/pull/231516
[#220305]: https://github.com/llvm/llvm-project/pull/220305
[rust#164108]: https://github.com/rust-lang/rust/pull/164108

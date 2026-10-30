---
theme: default
title: Plugi
info: Berlin LLVM meetup, 2026. PreCodeGenCallback and friends.
author: Stefan Gränitz
colorSchema: light
fonts:
  sans: Nunito
  mono: Fira Code
  weights: '400,600,700'
transition: fade
layout: cover
---

# Pluggable Backends in LLVM

PreCodeGenCallback and friends

<div class="abs-bl m-12 text-sm opacity-70">Stefan Gränitz · Berlin LLVM · 2026</div>

---

# Agenda

<div class="mt-8 space-y-8">

<div>
<div class="text-2xl font-semibold">1. Introduction to pass plugins</div>
<div class="text-lg opacity-80 mt-1">What is an LLVM backend? • Plugin interfaces in LLVM • 🎬 Pass plugins</div>
</div>

<div>
<div class="text-2xl font-semibold">2. PreCodeGenCallback for backends</div>
<div class="text-lg opacity-80 mt-1">The new <code>PreCodeGenCallback</code> • Why in the pass-plugin API? • 🎬 The hook in llc • 🎬 TPDE in clang</div>
</div>

<div>
<div class="text-2xl font-semibold">3. Status and outlook</div>
<div class="text-lg opacity-80 mt-1">Who adopted it? • What's missing?</div>
</div>

</div>

---

# What is an LLVM backend?

<img src="/diagrams/pipeline.svg" class="w-full mt-2" />

<div class="grid grid-cols-2 gap-10 mt-8">
<div>

**Codegen, plus:**

- calling conventions
- debug info, EH / unwind tables
- inline asm, object files, relocations
- stack maps, CFI, pointer auth

</div>
<div v-click>

**What it cannot do:**

- add a new arch: IR depends on it, and `Triple::ArchType` is closed
- offloading: frontends split host and device code

</div>
</div>

<!--
- Full compiler pipeline
- Backend takes IR and produces native code
- Codegen is one part: IR → ISel → MIR → regalloc etc. → MC
- plus more stuff, that pluggable backend has to do itself
- [click] limits:
 * custom backend has to reuse an existing triple
 * offloading isn't a backend swap, device code goes through a regular in-tree backend
-->

---

# Why would we want a custom backend?

<div class="text-xl leading-loose mt-6">

- **compile time:** TPDE (10–20× faster than `-O0`)
- **other output:** llvm-cbe (C backend), llvm-spirv (Khronos SPIRV-LLVM-Translator)
- **capture the final IR:** wllvm / gllvm, `-fembed-bitcode`
- **validation:** arm-tv (Regehr, Lopes et al.) finds backend miscompilations

</div>

<!--
- TPDE: baseline backend, ELF x86-64 / AArch64
- llvm-cbe and llvm-spirv ship as separate tools today: clang -emit-llvm, then convert
- wllvm/gllvm compile twice to collect whole-program bitcode
- arm-tv: lifts AArch64 code back to IR and checks it with Alive2
-->

---

# Plugin interfaces in LLVM

<div class="text-lg mt-4">

| Interface | Loaded by |
|---|---|
| Clang frontend plugins | `clang -fplugin=` |
| Legacy-PM plugins | `opt -load` and static ctors like `RegisterTargetPassConfigCallback` |
| **New-PM pass plugins** | `clang -fpass-plugin` etc. with `llvmGetPassPluginInfo()` |
| Other unrelated ones | clang-tidy, clangd, lldb, MLIR dialect plugins, CAS plugin C API |

</div>

<!--
- Clang frontend plugins work on AST
- legacy: plain .so with static ctor, sneak into PM using register hooks → also for Codegen Pipeline
- last line: apparently even clangd has plugins nowadays
- New-PM is what we talk about: defined entry point and use in clang
-->

---

# The pass-plugin interface

<div class="text-lg">

See my [EuroLLVM 2025 talk](https://llvm.org/devmtg/2025-04/slides/technical_talk/graenitz_pass_plugins.pdf) from last year

</div>

```cpp
struct PassPluginLibraryInfo {
  uint32_t APIVersion;         // LLVM_PLUGIN_API_VERSION: 3 on main
  const char *PluginName;
  const char *PluginVersion;
  void (*RegisterPassBuilderCallbacks)(PassBuilder &);
  bool (*PreCodeGenCallback)(Module &, TargetMachine &,
                             CodeGenFileType, raw_pwrite_stream &);  // LLVM 22
  Error (*ParseArguments)(ArrayRef<const char *> Args);              // LLVM 24
};

extern "C" PassPluginLibraryInfo llvmGetPassPluginInfo();  // looked up via dlsym
```

<div class="flex items-center gap-10 mt-4">
<div v-click>

**Only works with the New PassManager!**

- default in opt pipeline for a while
- still in-progress for the codegen pipeline

</div>

<div v-click class="sticky flex-1 text-xl">
the C++ ABI between plugin and host is unchecked → exact LLVM version
</div>
</div>

<!--
- entry point returns a plugin info:
- API version 2: PreCodeGenCallback (LLVM 22)
- API version 3: ParseArguments LLVM 24 (-plugin-arg)
- regular usage: pass injection
- [click] ABI-locked with host tool
-->

---

# Demo 1 · Bye, the minimal pass plugin

`llvm/examples/Bye` prints Bye for all functions 👋

<div class="grid grid-cols-2 gap-8 mt-6">

```sh
# opt / llc (LLVM 24)
opt -load-pass-plugin=Bye.so \
    -passes=goodbye \
    -plugin-arg=Bye,-wave-goodbye \
    hello.ll
```

<div v-click>

```sh
# clang
clang -fpass-plugin=Bye.so \
      -mllvm -wave-goodbye \
      -c hello.c
```

</div>
</div>

<div v-click class="sticky mt-10 w-max text-xl">
one plugin, two spellings for its option
</div>

<!--
- opt: explain command-line
- before current release-cycle it was just -wave-goodbye
- [click] clang: loads plugins before LLVM option parsing, so -wave-goodbye is an ordinary option (still)
- [click] same plugin, two spellings: teaser for the -plugin-arg story later
-->

---
layout: full
---

<Terminal height="100%" :sketch="false" />

<!--
- `head -10 demo/hello.ll` 
- highlight `add()` and `main()`, delete
- run `./demo/demo1.sh`
- opt is straighforward
- clang: runs in `-emit-llvm` because this includes the opt pipeline
- but not in `-O0` because `registerVectorizerStartEPCallback()`

this was regular pass-plugins...
-->

---

# PreCodeGenCallback landed in [`#170846`](https://github.com/llvm/llvm-project/pull/170846)

<img src="/diagrams/hook.svg" class="w-full" />

<div class="grid grid-rows-2 mt-4 text-lg">
<div v-click>

**`true`** → skip regular backend and all later plugins

</div>
<div v-click>

**`false`** → fall back to LLVM

</div>
</div>

<!--
- Landed in LLVM 22
- Runs **after** opt pipeline, before `addPassesToEmitFile`
- Not called for `-emit-llvm`
- [click] true: first plugin that returns true wins • assume it wrote the output
- [click] false: e.g. can't handle IR → normal backend
- easy to implement a self-opt-in mechanism

Well, nothing to do with passes right?
-->

---

# Why in the pass-plugin API?

<div class="grid grid-cols-[1fr_2fr] gap-15 mt-4 text-lg">
<div>

**It doesn't fit**

- pass plugins *add passes* to a pipeline
- this hook *replaces* the pipeline
- no pass, no `PassBuilder`, first one wins

</div>
<div v-click>

**Alternatives ([#165257](https://github.com/llvm/llvm-project/pull/165257))**

- keep it in Clang (original RFC): every frontend needs its own copy
- Me: `addPassesToEmitFile()` would be the right layer, but wrong abstraction
- Eli Friedman: extend `PassPluginLibraryInfo` ✅

</div>
</div>

<div v-click class="sticky mt-10 w-max text-xl">
pragmatic: loading and distribution are already solved
</div>

<!--
- Misfit: it's a frontend-level decision with a first-wins chain
- [click] RFC [#165257](https://github.com/llvm/llvm-project/pull/165257) was a Clang-only, Registry-based design
- addPassesToEmitFile: right layer (LTO, llc, rustc all call it), wrong abstraction:
  builds a legacy pipeline, never sees the Module (no per-module fallback), new-PM codegen bypasses it, TargetMachine can't depend on LLVMPlugins
- efriedma: "Can we use the llvm::PassPlugin infrastructure here, instead of a clang plugin?"
- [click] free integration wherever -fpass-plugin / -load-pass-plugin already exist
-->

---

# The missing layer now exists

`llvm::runCodeGenPipeline` · Aiden Grossman, [#220305](https://github.com/llvm/llvm-project/pull/220305), Sep 2026

```cpp
Error runCodeGenPipeline(TargetMachine &TM, Module &M,
                         raw_pwrite_stream &OS, raw_pwrite_stream *DwoOS,
                         CodeGenFileType CGFT, ...);
```

<div class="text-lg mt-4">

- same parameters as the hook, sees the `Module`, legacy and new PM
- clang and flang use it already. Next: llc and LTO?

</div>

<div v-click class="sticky mt-8 w-max text-xl">
right layer + right loading mechanism, finally in one place?
</div>

<!--
Fast forward to 2026
- used in clang/flang, NOT in llc, LTO
- clang calls the plugin hook right before it
- pass the plugin list in, move llc and LTOBackend::codegen over → all frontends profit, LTO included
- [click] Should we move the invocation point over?
- open: can LLVMPasses depend on LLVMPlugins without a cycle?
-->

---

# Demo 2 · the hook in llc

Bye has a `PreCodeGenCallback` too, behind `-last-words`

```sh
# normal asm
llc -load-pass-plugin=Bye.so hello.ll

# CodeGen Bye
llc -load-pass-plugin=Bye.so -plugin-arg=Bye,-last-words hello.ll

# error
llc ... -filetype=obj hello.ll 
```

<!--
- upstream tests with Bye
- Three outcomes for PreCodeGenCallback: false → normal asm; true → "CodeGen Bye"; object file → emitError "last words unsupported for binary output"
-->

---
layout: full
---

<Terminal height="100%" :sketch="false" />

<!--
`demo/demo2.sh`
- llc: normal asm, "CodeGen Bye", error
- clang: `-O0` skips the 👋
- `-S` select ASM output
- `-c` selects object output
-->

---

# Demo 3 · TPDE in clang

The whole plugin, about 40 lines

```cpp {*|5-8|9-14|15-16}
extern "C" PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return {.APIVersion = LLVM_PLUGIN_API_VERSION, .PluginName = "TPDE-LLVM", .PluginVersion = "1",
          .PreCodeGenCallback = [](Module &mod, TargetMachine &,
                                   CodeGenFileType file_type, raw_pwrite_stream &os) {
    if (file_type != CodeGenFileType::ObjectFile) {
      mod.getContext().emitError("TPDE only support compiling to object files");
      return false;
    }
    auto compiler = tpde_llvm::LLVMCompiler::create(mod.getTargetTriple());
    std::vector<uint8_t> buf;
    if (compiler && compiler->compile_to_elf(mod, buf)) {
      os.write(reinterpret_cast<char *>(buf.data()), buf.size());
      return true;
    }
    mod.getContext().diagnose(DiagnosticInfoGeneric{"TPDE compilation failed", DS_Warning});
    return false;
  }};
}
```

<!--
- try a real backend-plugin
- relevant parts from impl on one slide
- [click] -S is a hard error, not a fallback
- [click] compile to ELF and write the object
- [click] unsupported IR: warning, then LLVM's backend takes over
-->

---

# Demo 3 · TPDE in clang

TPDE ships `tpde-plugin.so` for LLVM 22+, no patch needed

```sh
clang -O0 -c -fpass-plugin=tpde-plugin.so \
      -Werror=backend-plugin hello.c -o hello.o
clang -fuse-ld=lld hello.o -o hello && ./hello

clang -O0 -S -fpass-plugin=tpde-plugin.so hello.c   # error: no asm
```

<div v-click class="sticky mt-10 w-max text-xl">
ELF only: x86-64 and AArch64
</div>

<!--
- -Werror=backend-plugin: a fallback would fail the build, so this proves TPDE wrote the object
- -S: "TPDE only support compiling to object files"
- Timing: hyperfine LLVM -O0 vs TPDE on a real-world TU, plus -ftime-trace ("TPDE" scope)
  (workload still open: sqlite3?)
- Fallback: half.c (_Float16) → "TPDE compilation failed" warning, LLVM takes over
- [click] that's why the demo runs in an arm64 Linux container
-->

---
layout: full
---

<Terminal height="100%" :sketch="false" />

<!--
- `demo/demo3.sh` check TPDE in clang: obj, asm, error
- `demo/bench-llc.sh` show only marginal speedup
- `demo/bench-llc.sh` show 4.5x speedup with bitcode input
- `demo/llc-time-trace.sh` shows real 20x speedup
-->

---

# Who adopted the PreCodeGenCallback?

<div class="text-lg">

| Client | Status |
|---|---|
| llc, clang, flang | ✅ LLVM 22+ |
| Rust | 🟡 open PR [rust#164108](https://github.com/rust-lang/rust/pull/164108): `-Zllvm-tpde=try\|only` |
| LTO, lld, distributed ThinLTO | ❌ open PR [#231516](https://github.com/llvm/llvm-project/pull/231516) |
| clang-repl | ❌ JIT path, TPDE in ORC instead |
| Julia, Zig, Swift | no evidence yet |

</div>

<!--
- Timeline: Oct 2025 Clang-only RFC [#165257](https://github.com/llvm/llvm-project/pull/165257) → Dec 16 hook + llc ([#170846](https://github.com/llvm/llvm-project/pull/170846))
  → Dec 23 clang ([#171872](https://github.com/llvm/llvm-project/pull/171872)) → Jan 7 flang (277069e8c184)
- Rust: loads TPDE via -Zllvm-plugins, built on llvmorg-24-init.
  Ripgrep: −3–4 % wall time, −17 % instructions, 12/1113 CGUs fell back
- distributed ThinLTO: -fpass-plugin + -fthinlto-index works since Mar 2026 (23cb4e5f4602),
  but the hook isn't called there
- Julia: libjulia is a pass plugin, but its JIT would use TPDE via ORC
- Related: Flang MLIR → LLVM pipeline plugin callbacks (140425be9bb3, Oct 2026)
-->

---

# What's missing?

<div class="text-lg leading-loose mt-2">

- **LTO:** open PR [#231516](https://github.com/llvm/llvm-project/pull/231516) (regular, in-process and distributed ThinLTO)
- plugins don't get the hook, that are **linked statically** in LLVM (`LLVM_${name}_LINK_INTO_TOOLS`)
- **plugin arguments** are inconsistent in clang: no `-fpass-plugin-arg`, only `-mllvm`
- **file output only** as the API has a `raw_pwrite_stream` (no implicit JIT support)

</div>

<!--
- [#231516](https://github.com/llvm/llvm-project/pull/231516) loads plugins once in LTO::run(), tests for clang ThinLTO and lld ELF.
  Open points: static extensions (aengelke: they "should behave exactly like plugins
  that are always loaded") and an LLVMLTO ABI break
- -plugin-arg exists in opt/llc only
- Windows: plugins need LLVM_ABI_EXPORT (9f20fc9ba70b) and a dylib build
- ABI fragility: exact-version matching and API version bumps
-->

---

# Related

<div class="text-lg">

**New Pass-Manager in Codegen:**

- Plugin-support so far not comparable to opt pipeline
- Plugin passes only **nameable in `-passes=`**
- Target pipeline needs entry-point callbacks or something comparable
- `CodeGenPassBuilder::insertPass/disablePass` exist, but no replace/reorder

</div>

<!--
EP callbacks are hard for Codegen pipeline, because they are so different
Inject alone not sufficient for Codegen pipeline
It needs reorder, replace, disable, etc.
-->

---
layout: center
---

<img src="/images/llvmberlin.png" class="max-h-76 mx-auto" />

<div class="text-xl text-center mt-6">

**Next episode:** Philipp Grulich will talk about **Nautilus**,<br>
the lightweight, tracing JIT on **December 10**

[github.com/nebulastream/nautilus](https://github.com/nebulastream/nautilus)

</div>

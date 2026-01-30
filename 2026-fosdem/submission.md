# OrcJIT at Scale with the llvm-autojit Plugin

LLVM’s ORC JIT [1] is a powerful framework for just-in-time compilation of LLVM IR. However, when applied to large codebases, ORC often exhibits a surprisingly high front-load ratio: we have to parse all IR modules before execution even reaches main(). This diminishes the benefits of JITing and contributes to phenomena as the “time to first plot” latency in Julia, one of ORC’s large-scale users [2].

The llvm-autojit plugin [3] is a new experimental compiler extension for automatic just-in-time compilation with ORC. The project reached a proof-of-concept state, where basic C, C++ and Rust programs build and run successfully. It integrates easily with build systems like CMake, make and cargo, making it practical to apply to real-world projects.

In this talk, we will examine the front-loading issue in ORC and explain how llvm-autojit mitigates it. Attendees will learn about pass plugins, LLVM IR code transformations, callgraphs and runtime libraries. And they will see how to experiment with ORC-based JITing in their own projects.

[1] https://llvm.org/docs/ORCv2.html
[2] https://discourse.julialang.org/t/time-to-first-plot-clarification/58534
[3] https://github.com/weliveindetail/llvm-autojit

----


# OrcJIT at Scale with the llvm-autojit Plugin

LLVM's ORC JIT [1] is a remarkable set of libraries for just-in-time compilation of LLVM IR code. However, when applied to large codebases, ORC often exhibits a surprisingly high front-load ratio: The majority of the code is likely compiled before execution reaches main(). This reduces the benefits of JITing. The “time to first plot” phenomenon in julialang, one of the large-scale users of ORC, illustrates this very well [2].

The llvm-autojit plugin [3] is a new experimental compiler extension for automatic just-in-time compilation with ORC. The project reached a proof-of-concept state, where basic C, C++ and Rust programs build and run successfully. It integrates easily with build systems like make, CMake and cargo, making it practical to apply to real-world projects.

In this talk, we will examine the reasons for excessive front-loading in ORC and see how llvm-autojit avoids it. Participants will learn something about pass plugins, LLVM IR code transformations, callgraphs, runtime libraries, and how to experiment with ORC-based JITing in their own projects.


-----


# OrcJIT at scale with the llvm-autojit plugin

LLVM's ORC JIT [1] is a remarkable set of libraries for just-in-time compilation of system's programming languages. It manages to be both, highly configurable and easy to use. It allows to compile and link LLVM IR code in-memory with a single lookup() invocation. At the same time we can configure it to use our own symbol generators, codegen backends, task dispatchers, pre-compiled binaries and linker plugins.

Despite its glamour, there are a few weaknesses, which become particularly apparent when scaling ORC from small examples to large codebases. The surprisingly high front-load ratio is a prime example. It means that the majority of the code is likely compiled before we reach main(). Is that a problem? Well,  it certainly calls into question how much actually happens just-in-time. The TTFP term in julialang, one of the large-scale users of ORC, illustrates this phenomenon very well: "time to first plot" [2]

The llvm-autojit plugin [3] is a new experimental compiler extension for automatic just-in-time compilation with ORC. The project reached a proof-of-concept state, where basic C, C++ and Rust programs build and run successfully. Since llvm-autojit eas to integrate with build systems (like make, CMake and cargo), making it practical to apply to real-world can scale it up to large codebases easily. We will see how it works in a simple example and how it avoids the pitfalls when scaling up!

[1] https://llvm.org/docs/ORCv2.html
[2] https://discourse.julialang.org/t/time-to-first-plot-clarification/58534
[3] https://github.com/weliveindetail/llvm-autojit


-----


# OrcJIT at scale with the llvm-autojit plugin

LLVM's ORC JIT [1] is a remarkable set of libraries for just-in-time compilation of system's programming languages. It manages to be both, highly configurable and easy to use. It allows to compile and link LLVM IR code in-memory with a single lookup() invocation. And we can easily mix in prelinked code in common native binary formats. At the same time we can configure it to use our own symbol generators, codegen backends, task dispatchers and linker plugins. Advanced features like exception handling, native thread-local storage and debugging of JIT'd code work on most platforms.

With all its glamour there come a few weaknesses though, and they become particularly apparent when we scale from small examples to large codebases. The over-proportionally large front-load ratio is a typical candidate: It is the typical case, that the majority of the code is compiled before we reach main(). Is that a problem? Well at least it questions how much actaully happens just-in-time. One of the large-scale users of ORC, julialang, even coined the term TTFP for it: "time to first plot" [2]

The llvm-autojit plugin [3] is a new experimental compiler extension that defers LLVM IR compilation to runtime automatically. In the background it uses ORC JIT and we will see how to scale it well.

The project reached a proof-of-concept state, where simple C, C++ and Rust programs build and run successfully. The pass plugin and runtime library are easy to integrate with common build systems like make, CMake and cargo.

[1] https://llvm.org/docs/ORCv2.html
[2] https://discourse.julialang.org/t/time-to-first-plot-clarification/58534
[3] https://github.com/weliveindetail/llvm-autojit

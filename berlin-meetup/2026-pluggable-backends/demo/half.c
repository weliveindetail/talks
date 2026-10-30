// TPDE doesn't support LLVM's half type: the plugin warns and LLVM's backend takes over.
_Float16 inc(_Float16 x) { return x + 1; }

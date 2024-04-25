; ModuleID = 'sum_rs.bc'
source_filename = "sum.34139a3ab588e8bd-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

@alloc_627f0eb4f9e8ec9b6c780254587da13f = private unnamed_addr constant <{ [66 x i8] }> <{ [66 x i8] c"/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit/sum.rs" }>, align 1
@alloc_d34009200d7776bd5a4c9b632b1213fb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_627f0eb4f9e8ec9b6c780254587da13f, [16 x i8] c"B\00\00\00\00\00\00\00\03\00\00\00\05\00\00\00" }>, align 8
@str.0 = internal unnamed_addr constant [28 x i8] c"attempt to add with overflow"

; Function Attrs: uwtable
define i32 @sum(i32 %a, i32 %b) unnamed_addr #0 !dbg !6 {
start:
  %b.dbg.spill = alloca i32, align 4
  %a.dbg.spill = alloca i32, align 4
  store i32 %a, ptr %a.dbg.spill, align 4
  call void @llvm.dbg.declare(metadata ptr %a.dbg.spill, metadata !13, metadata !DIExpression()), !dbg !16
  store i32 %b, ptr %b.dbg.spill, align 4
  call void @llvm.dbg.declare(metadata ptr %b.dbg.spill, metadata !14, metadata !DIExpression()), !dbg !17
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %a, i32 %b), !dbg !18
  %_3.0 = extractvalue { i32, i1 } %0, 0, !dbg !18
  %_3.1 = extractvalue { i32, i1 } %0, 1, !dbg !18
  %1 = call i1 @llvm.expect.i1(i1 %_3.1, i1 false), !dbg !18
  br i1 %1, label %panic, label %bb1, !dbg !18

bb1:                                              ; preds = %start
  ret i32 %_3.0, !dbg !19

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17hbabdc6a4f6b38581E(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_d34009200d7776bd5a4c9b632b1213fb) #4, !dbg !18
  unreachable, !dbg !18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17hbabdc6a4f6b38581E(ptr align 1, i64, ptr align 8) unnamed_addr #3

attributes #0 = { uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{!"rustc version 1.76.0-nightly (3a85a5cfe 2023-11-20)"}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.76.0-nightly (3a85a5cfe 2023-11-20))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!5 = !DIFile(filename: "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit/sum.rs/@/sum.34139a3ab588e8bd-cgu.0", directory: "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit")
!6 = distinct !DISubprogram(name: "sum", scope: !8, file: !7, line: 2, type: !9, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, templateParams: !15, retainedNodes: !12)
!7 = !DIFile(filename: "sum.rs", directory: "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit", checksumkind: CSK_MD5, checksum: "6248102fa613638a772dff0ef71c20e5")
!8 = !DINamespace(name: "sum", scope: null)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !11}
!11 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "a", arg: 1, scope: !6, file: !7, line: 2, type: !11)
!14 = !DILocalVariable(name: "b", arg: 2, scope: !6, file: !7, line: 2, type: !11)
!15 = !{}
!16 = !DILocation(line: 2, column: 12, scope: !6)
!17 = !DILocation(line: 2, column: 20, scope: !6)
!18 = !DILocation(line: 3, column: 5, scope: !6)
!19 = !DILocation(line: 4, column: 2, scope: !6)

^0 = module: (path: "sum_rs.bc", hash: (2468545031, 328225667, 76484230, 846987453, 2931192742))
^1 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^2 = gv: (name: "_ZN4core9panicking5panic17hbabdc6a4f6b38581E") ; guid = 3033838370663142927
^3 = gv: (name: "alloc_d34009200d7776bd5a4c9b632b1213fb", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^5)))) ; guid = 3655797267995079737
^4 = gv: (name: "llvm.sadd.with.overflow.i32") ; guid = 10553262824061260096
^5 = gv: (name: "alloc_627f0eb4f9e8ec9b6c780254587da13f", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12560740496221124283
^6 = gv: (name: "llvm.dbg.declare") ; guid = 13513223491971101989
^7 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15050947335021381040
^8 = gv: (name: "sum", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12, calls: ((callee: ^2)), refs: (^7, ^3)))) ; guid = 16473111255225950749
^9 = blockcount: 0

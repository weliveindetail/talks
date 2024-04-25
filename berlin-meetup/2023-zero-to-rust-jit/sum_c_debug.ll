; ModuleID = 'build/sum_c.bc'
source_filename = "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit/sum.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@.str = private unnamed_addr constant [30 x i8] c"Oh hello, that's JITed code!\0A\00", align 1, !dbg !0

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sum(i32 noundef %a, i32 noundef %b) #0 !dbg !18 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !25, metadata !DIExpression()), !dbg !26
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !27
  %0 = load i32, ptr %a.addr, align 4, !dbg !28
  %1 = load i32, ptr %b.addr, align 4, !dbg !29
  %add = add nsw i32 %0, %1, !dbg !30
  ret i32 %add, !dbg !31
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.dbg.cu = !{!14}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 4, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sum.c", directory: "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 0]}
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 18.0.0 (https://github.com/llvm/llvm-project 661d46587b04fcc0420131d4e29ab97dcbd4273b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !16, splitDebugInlining: false, nameTableKind: Apple, sysroot: "/Applications/Xcode_14.1.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!15 = !DIFile(filename: "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit/sum.c", directory: "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit")
!16 = !{!0}
!17 = !{!"clang version 18.0.0 (https://github.com/llvm/llvm-project 661d46587b04fcc0420131d4e29ab97dcbd4273b)"}
!18 = distinct !DISubprogram(name: "sum", scope: !2, file: !2, line: 3, type: !19, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21, !21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{}
!23 = !DILocalVariable(name: "a", arg: 1, scope: !18, file: !2, line: 3, type: !21)
!24 = !DILocation(line: 3, column: 13, scope: !18)
!25 = !DILocalVariable(name: "b", arg: 2, scope: !18, file: !2, line: 3, type: !21)
!26 = !DILocation(line: 3, column: 20, scope: !18)
!27 = !DILocation(line: 4, column: 3, scope: !18)
!28 = !DILocation(line: 5, column: 10, scope: !18)
!29 = !DILocation(line: 5, column: 14, scope: !18)
!30 = !DILocation(line: 5, column: 12, scope: !18)
!31 = !DILocation(line: 5, column: 3, scope: !18)

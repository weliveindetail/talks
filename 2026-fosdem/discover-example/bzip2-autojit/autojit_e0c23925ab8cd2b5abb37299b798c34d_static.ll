; ModuleID = '/tmp/autojit_e0c23925ab8cd2b5abb37299b798c34d'
source_filename = "huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__llvm_autojit_ptr_BZ2_hbMakeCodeLengths = internal global ptr null
@__llvm_autojit_ptr_BZ2_hbAssignCodes = internal global ptr null
@__llvm_autojit_ptr_BZ2_hbCreateDecodeTables = internal global ptr null
@__llvm_autojit_lazy_file = private unnamed_addr constant [49 x i8] c"/tmp/autojit_e0c23925ab8cd2b5abb37299b798c34d.ll\00"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 100, ptr @_GLOBAL__sub_I_huffman.c_llvm_autojit_init, ptr null }]
@llvm.used = appending global [4 x ptr] [ptr @BZ2_hbMakeCodeLengths, ptr @BZ2_hbAssignCodes, ptr @BZ2_hbCreateDecodeTables, ptr @_GLOBAL__sub_I_huffman.c_llvm_autojit_init], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_hbMakeCodeLengths(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_hbMakeCodeLengths, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store ptr inttoptr (i64 -9200467249631312295 to ptr), ptr @__llvm_autojit_ptr_BZ2_hbMakeCodeLengths, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_hbMakeCodeLengths)
  %8 = load ptr, ptr @__llvm_autojit_ptr_BZ2_hbMakeCodeLengths, align 8
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %5, %4 ], [ %8, %7 ]
  tail call void %10(ptr %0, ptr %1, i32 %2, i32 %3)
  ret void
}

declare void @BZ2_bz__AssertH__fail(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_hbAssignCodes(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr @__llvm_autojit_ptr_BZ2_hbAssignCodes, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  store ptr inttoptr (i64 4501320808800066321 to ptr), ptr @__llvm_autojit_ptr_BZ2_hbAssignCodes, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_hbAssignCodes)
  %9 = load ptr, ptr @__llvm_autojit_ptr_BZ2_hbAssignCodes, align 8
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %8 ]
  tail call void %11(ptr %0, ptr %1, i32 %2, i32 %3, i32 %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_hbCreateDecodeTables(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load ptr, ptr @__llvm_autojit_ptr_BZ2_hbCreateDecodeTables, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  store ptr inttoptr (i64 -1114062495423247602 to ptr), ptr @__llvm_autojit_ptr_BZ2_hbCreateDecodeTables, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_hbCreateDecodeTables)
  %11 = load ptr, ptr @__llvm_autojit_ptr_BZ2_hbCreateDecodeTables, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %10 ]
  tail call void %13(ptr %0, ptr %1, ptr %2, ptr %3, i32 %4, i32 %5, i32 %6)
  ret void
}

declare void @__llvm_autojit_materialize(ptr)

; Function Attrs: nounwind
define internal void @_GLOBAL__sub_I_huffman.c_llvm_autojit_init() #2 section ".text.startup" {
  call void @__llvm_autojit_register(ptr @__llvm_autojit_lazy_file)
  ret void
}

declare void @__llvm_autojit_register(ptr)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 21.1.5 (++20251023083201+45afac62e373-1~exp1~20251023083316.53)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "huffman.c", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_autojit_shlib", checksumkind: CSK_MD5, checksum: "6f0d59d3951e7475c9a25b5fc6cf7ec0")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !4, line: 82, baseType: !5)
!4 = !DIFile(filename: "./bzlib_private.h", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_autojit_shlib", checksumkind: CSK_MD5, checksum: "5325523d55f5e1fa9d9d8a95214ec2fe")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 21.1.5 (++20251023083201+45afac62e373-1~exp1~20251023083316.53)"}

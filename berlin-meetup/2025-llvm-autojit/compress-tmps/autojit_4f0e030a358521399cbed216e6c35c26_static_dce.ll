; ModuleID = '/tmp/autojit_4f0e030a358521399cbed216e6c35c26_static.ll'
source_filename = "compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__llvm_autojit_ptr_BZ2_compressBlock = internal global ptr null
@__llvm_autojit_lazy_file = private unnamed_addr constant [49 x i8] c"/tmp/autojit_4f0e030a358521399cbed216e6c35c26.ll\00"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 100, ptr @_GLOBAL__sub_I_compress.c_llvm_autojit_init, ptr null }]
@llvm.used = appending global [2 x ptr] [ptr @BZ2_compressBlock, ptr @_GLOBAL__sub_I_compress.c_llvm_autojit_init], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_compressBlock(ptr noundef %0, i8 noundef zeroext %1) #0 {
entry:
  %existing_ptr = load ptr, ptr @__llvm_autojit_ptr_BZ2_compressBlock, align 8
  %2 = icmp eq ptr %existing_ptr, null
  br i1 %2, label %materialize, label %call

materialize:                                      ; preds = %entry
  store ptr inttoptr (i64 -4592883590450763574 to ptr), ptr @__llvm_autojit_ptr_BZ2_compressBlock, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_compressBlock)
  %materialized_ptr = load ptr, ptr @__llvm_autojit_ptr_BZ2_compressBlock, align 8
  br label %call

call:                                             ; preds = %materialize, %entry
  %impl_ptr = phi ptr [ %existing_ptr, %entry ], [ %materialized_ptr, %materialize ]
  tail call void %impl_ptr(ptr %0, i8 %1)
  ret void
}

declare void @__llvm_autojit_materialize(ptr)

; Function Attrs: nounwind
define internal void @_GLOBAL__sub_I_compress.c_llvm_autojit_init() #1 section ".text.startup" {
entry:
  call void @__llvm_autojit_register(ptr @__llvm_autojit_lazy_file)
  ret void
}

declare void @__llvm_autojit_register(ptr)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 21.1.5 (++20251023083201+45afac62e373-1~exp1~20251023083316.53)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, globals: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "compress.c", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_regular", checksumkind: CSK_MD5, checksum: "488d677c2aa4efc17578588bf7891a56")
!2 = !{!3, !4, !7, !9, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !5, line: 83, baseType: !6)
!5 = !DIFile(filename: "./bzlib_private.h", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_regular", checksumkind: CSK_MD5, checksum: "5325523d55f5e1fa9d9d8a95214ec2fe")
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt32", file: !5, line: 85, baseType: !8)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !5, line: 82, baseType: !6)
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!12, !18, !23, !28, !33, !38, !43, !48, !53, !58, !63}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !1, line: 656, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 496, elements: !16)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17}
!17 = !DISubrange(count: 62)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !1, line: 708, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 288, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 36)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !1, line: 306, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 64)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !1, line: 347, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 472, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 59)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !1, line: 481, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 328, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 41)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !1, line: 484, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 4)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !1, line: 485, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 16, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 2)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !1, line: 558, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 26)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !1, line: 570, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 120, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 15)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !1, line: 586, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 144, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 18)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !1, line: 641, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 80, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 10)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{i32 1, !"EnableSplitLTOUnit", i32 0}
!76 = !{!"Ubuntu clang version 21.1.5 (++20251023083201+45afac62e373-1~exp1~20251023083316.53)"}

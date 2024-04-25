; ModuleID = 'zero-to-rust-jit/build/prime_factors_rs.bc'
source_filename = "prime_factors.580a1bc6348a1e33-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [1 x i64], i64, [1 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok" = type { [1 x i64], { ptr, i64 } }
%"alloc::vec::Vec<u64>" = type { { ptr, i64 }, i64 }

@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_f3f2c5c573da7ee29de90bfe7e3e80e0 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit/prime_factors.rs" }>, align 1
@alloc_539ad61624b54118bba6c2eeef947f5a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f3f2c5c573da7ee29de90bfe7e3e80e0, [16 x i8] c"L\00\00\00\00\00\00\00\06\00\00\00\0F\00\00\00" }>, align 8
@str.1 = internal unnamed_addr constant [57 x i8] c"attempt to calculate the remainder with a divisor of zero"

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h3b7527282e164c16E(ptr noalias nocapture noundef writeonly sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") align 8 dereferenceable(24) %_0, i64 noundef %new_layout.0, i64 %new_layout.1, ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %current_memory) unnamed_addr #0 !dbg !100 {
start:
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !282
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !282
  call void @llvm.dbg.declare(metadata ptr %current_memory, metadata !206, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata ptr poison, metadata !207, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !315
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !284, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !315
  call void @llvm.dbg.declare(metadata ptr undef, metadata !310, metadata !DIExpression()), !dbg !317
  %0 = icmp eq i64 %new_layout.0, 0, !dbg !318
  br i1 %0, label %bb4, label %bb2, !dbg !319

bb2:                                              ; preds = %start
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !208, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !320
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !208, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !320
  %1 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %current_memory, i64 0, i32 1, !dbg !321
  %2 = load i64, ptr %1, align 8, !dbg !321, !range !322, !noundef !125
  %.not = icmp eq i64 %2, 0, !dbg !321
  br i1 %.not, label %bb7, label %bb8, !dbg !321

bb4:                                              ; preds = %start
  call void @llvm.dbg.value(metadata i64 0, metadata !210, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !323
  call void @llvm.dbg.value(metadata i64 0, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !348
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !210, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !323
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !348
  call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !350
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !350
  %3 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %_0, i64 0, i32 1, !dbg !351
  store i64 0, ptr %3, align 8, !dbg !351
  %4 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %_0, i64 0, i32 1, i32 1, !dbg !351
  br label %bb14, !dbg !352

bb8:                                              ; preds = %bb2
  %ptr = load ptr, ptr %current_memory, align 8, !dbg !353, !nonnull !125, !noundef !125
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !268, metadata !DIExpression()), !dbg !354
  %5 = getelementptr inbounds { ptr, { i64, i64 } }, ptr %current_memory, i64 0, i32 1, i32 1, !dbg !355
  %6 = load i64, ptr %5, align 8, !dbg !355, !noundef !125
  call void @llvm.dbg.value(metadata i64 %2, metadata !270, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !354
  call void @llvm.dbg.value(metadata i64 %6, metadata !270, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !354
  %_24 = icmp eq i64 %2, %new_layout.0, !dbg !356
  tail call void @llvm.assume(i1 %_24), !dbg !357
  call void @llvm.dbg.value(metadata ptr poison, metadata !358, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 %2, metadata !367, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !369
  call void @llvm.dbg.value(metadata i64 %6, metadata !367, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !369
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !368, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !369
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !368, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !369
  call void @llvm.dbg.value(metadata i64 %2, metadata !371, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !417
  call void @llvm.dbg.value(metadata i64 %6, metadata !371, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !417
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !380, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !417
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !380, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !417
  call void @llvm.dbg.value(metadata ptr poison, metadata !378, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !379, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i1 false, metadata !381, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !417
  %7 = icmp eq i64 %6, 0, !dbg !419
  br i1 %7, label %bb1.i.i, label %bb4.i.i, !dbg !419

bb1.i.i:                                          ; preds = %bb8
  call void @llvm.dbg.value(metadata ptr @__rust_no_alloc_shim_is_unstable, metadata !420, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !443, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !455
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !443, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !455
  call void @llvm.dbg.value(metadata ptr poison, metadata !442, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i1 false, metadata !444, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !455
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !445, metadata !DIExpression()), !dbg !456
  %8 = icmp eq i64 %new_layout.1, 0, !dbg !457
  br i1 %8, label %bb2.i.i.i, label %bb4.i.i.i, !dbg !457

bb2.i.i.i:                                        ; preds = %bb1.i.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !458, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !469, metadata !DIExpression()), !dbg !475
  %ptr.i.i.i = inttoptr i64 %new_layout.0 to ptr, !dbg !477
  br label %bb11, !dbg !478

bb4.i.i.i:                                        ; preds = %bb1.i.i
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !434, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !479
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !434, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !479
  %9 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !dbg !480
  %10 = tail call noundef ptr @__rust_alloc(i64 noundef %new_layout.1, i64 noundef %new_layout.0) #14, !dbg !481
  call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression()), !dbg !482
  br label %bb11, !dbg !483

bb4.i.i:                                          ; preds = %bb8
  call void @llvm.dbg.value(metadata ptr undef, metadata !384, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i64 %6, metadata !382, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !485, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !385, metadata !DIExpression()), !dbg !495
  %_21.i.i = icmp ule i64 %6, %new_layout.1, !dbg !496
  tail call void @llvm.assume(i1 %_21.i.i), !dbg !497
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !491, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i64 %2, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !493
  call void @llvm.dbg.value(metadata i64 %6, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !493
  %raw_ptr.i.i = tail call noundef ptr @__rust_realloc(ptr noundef nonnull %ptr, i64 noundef %6, i64 noundef %new_layout.0, i64 noundef %new_layout.1) #14, !dbg !498
  call void @llvm.dbg.value(metadata ptr %raw_ptr.i.i, metadata !387, metadata !DIExpression()), !dbg !499
  br label %bb11, !dbg !500

bb7:                                              ; preds = %bb2
  call void @llvm.dbg.value(metadata ptr poison, metadata !501, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !506, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !507
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !506, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !507
  call void @llvm.dbg.value(metadata ptr @__rust_no_alloc_shim_is_unstable, metadata !420, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !443, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !443, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !513
  call void @llvm.dbg.value(metadata ptr poison, metadata !442, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i1 false, metadata !444, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !513
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !445, metadata !DIExpression()), !dbg !514
  %11 = icmp eq i64 %new_layout.1, 0, !dbg !515
  br i1 %11, label %bb2.i.i, label %bb4.i.i28, !dbg !515

bb2.i.i:                                          ; preds = %bb7
  call void @llvm.dbg.value(metadata ptr undef, metadata !458, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !469, metadata !DIExpression()), !dbg !518
  %ptr.i.i = inttoptr i64 %new_layout.0 to ptr, !dbg !520
  br label %bb11, !dbg !521

bb4.i.i28:                                        ; preds = %bb7
  call void @llvm.dbg.value(metadata i64 %new_layout.0, metadata !434, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !522
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !434, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !522
  %12 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !dbg !523
  %13 = tail call noundef ptr @__rust_alloc(i64 noundef %new_layout.1, i64 noundef %new_layout.0) #14, !dbg !524
  call void @llvm.dbg.value(metadata ptr %13, metadata !446, metadata !DIExpression()), !dbg !525
  br label %bb11, !dbg !526

bb11:                                             ; preds = %bb4.i.i28, %bb2.i.i, %bb4.i.i, %bb4.i.i.i, %bb2.i.i.i
  %_0.sroa.0.2.i.i.pn = phi ptr [ %raw_ptr.i.i, %bb4.i.i ], [ %ptr.i.i.i, %bb2.i.i.i ], [ %10, %bb4.i.i.i ], [ %ptr.i.i, %bb2.i.i ], [ %13, %bb4.i.i28 ]
  call void @llvm.dbg.value(metadata i64 poison, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !527
  call void @llvm.dbg.value(metadata ptr %_0.sroa.0.2.i.i.pn, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !527
  call void @llvm.dbg.value(metadata ptr %_0.sroa.0.2.i.i.pn, metadata !528, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !544
  call void @llvm.dbg.value(metadata i64 poison, metadata !528, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !544
  call void @llvm.dbg.value(metadata ptr undef, metadata !539, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata ptr undef, metadata !542, metadata !DIExpression()), !dbg !546
  %14 = icmp eq ptr %_0.sroa.0.2.i.i.pn, null, !dbg !547
  br i1 %14, label %bb1.i31, label %bb3.i29, !dbg !548

bb3.i29:                                          ; preds = %bb11
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !527
  call void @llvm.dbg.value(metadata i64 %new_layout.1, metadata !528, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !544
  call void @llvm.dbg.value(metadata ptr %_0.sroa.0.2.i.i.pn, metadata !540, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !549
  call void @llvm.dbg.value(metadata i64 poison, metadata !540, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !549
  %15 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", ptr %_0, i64 0, i32 1, !dbg !550
  store ptr %_0.sroa.0.2.i.i.pn, ptr %15, align 8, !dbg !550, !alias.scope !551, !noalias !554
  %16 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", ptr %_0, i64 0, i32 1, i32 1, !dbg !550
  br label %bb14, !dbg !556

bb1.i31:                                          ; preds = %bb11
  %17 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %_0, i64 0, i32 1, !dbg !557
  store i64 %new_layout.0, ptr %17, align 8, !dbg !557, !alias.scope !551, !noalias !554
  %18 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %_0, i64 0, i32 1, i32 1, !dbg !557
  br label %bb14, !dbg !558

bb14:                                             ; preds = %bb1.i31, %bb3.i29, %bb4
  %.sink = phi ptr [ %18, %bb1.i31 ], [ %16, %bb3.i29 ], [ %4, %bb4 ]
  %storemerge = phi i64 [ 1, %bb1.i31 ], [ 0, %bb3.i29 ], [ 1, %bb4 ], !dbg !282
  store i64 %new_layout.1, ptr %.sink, align 8, !dbg !282
  store i64 %storemerge, ptr %_0, align 8, !dbg !282
  ret void, !dbg !352
}

; Function Attrs: noinline uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h64c368c8ab5cf45cE"(ptr noalias nocapture noundef align 8 dereferenceable(16) %self, i64 noundef %len) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !559 {
start:
  %_21.i = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %self5.i = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", align 8
  call void @llvm.dbg.value(metadata ptr %self, metadata !584, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata i64 %len, metadata !585, metadata !DIExpression()), !dbg !586
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587), !dbg !590
  call void @llvm.dbg.value(metadata i64 4, metadata !591, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i64 4, metadata !648, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata ptr %self, metadata !661, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata ptr %self, metadata !628, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64 %len, metadata !673, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i64 %len, metadata !629, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64 1, metadata !688, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i64 1, metadata !630, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.declare(metadata ptr %self5.i, metadata !719, metadata !DIExpression()), !dbg !748
  %0 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %len, i64 1), !dbg !750
  %_30.1.i = extractvalue { i64, i1 } %0, 1, !dbg !750
  br i1 %_30.1.i, label %bb5.i, label %bb3.i, !dbg !751

bb3.i:                                            ; preds = %start
  %_30.0.i = extractvalue { i64, i1 } %0, 0, !dbg !750
  call void @llvm.dbg.value(metadata i64 %_30.0.i, metadata !655, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %_30.0.i, metadata !600, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i64 %_30.0.i, metadata !631, metadata !DIExpression()), !dbg !756
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1, !dbg !757
  %_16.i = load i64, ptr %1, align 8, !dbg !757, !alias.scope !587, !noundef !125
  %v1.i = shl i64 %_16.i, 1, !dbg !757
  call void @llvm.dbg.value(metadata i64 %v1.i, metadata !653, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %v1.i, metadata !598, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i64 %v1.i, metadata !758, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i64 %_30.0.i, metadata !766, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.declare(metadata ptr undef, metadata !767, metadata !DIExpression()), !dbg !772
  %_0.0.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %v1.i, i64 %_30.0.i), !dbg !770
  call void @llvm.dbg.value(metadata i64 %_0.0.sroa.speculated.i.i, metadata !656, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i64 %_0.0.sroa.speculated.i.i, metadata !601, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i64 %_0.0.sroa.speculated.i.i, metadata !636, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i64 4, metadata !758, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i64 %_0.0.sroa.speculated.i.i, metadata !766, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.declare(metadata ptr undef, metadata !767, metadata !DIExpression()), !dbg !776
  %_0.0.sroa.speculated.i34.i = tail call i64 @llvm.umax.i64(i64 %_0.0.sroa.speculated.i.i, i64 4), !dbg !774
  call void @llvm.dbg.value(metadata i64 %_0.0.sroa.speculated.i34.i, metadata !669, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i64 %_0.0.sroa.speculated.i34.i, metadata !777, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i64 %_0.0.sroa.speculated.i34.i, metadata !637, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i64 8, metadata !787, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 8, metadata !794, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %_0.0.sroa.speculated.i34.i, metadata !795, metadata !DIExpression()), !dbg !798
  %_4.i.i = icmp ugt i64 %_0.0.sroa.speculated.i34.i, 1152921504606846975, !dbg !800
  %array_size.i.i = shl i64 %_0.0.sroa.speculated.i34.i, 3, !dbg !800
  %_0.sroa.0.0.i.i = select i1 %_4.i.i, i64 0, i64 8, !dbg !800
  call void @llvm.dbg.value(metadata i64 %_0.sroa.0.0.i.i, metadata !639, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !801
  call void @llvm.dbg.value(metadata i64 %array_size.i.i, metadata !639, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !801
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self5.i), !dbg !802, !noalias !587
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_21.i), !dbg !803, !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804), !dbg !803
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807), !dbg !803
  call void @llvm.dbg.value(metadata ptr %self, metadata !809, metadata !DIExpression()), !dbg !822
  %2 = icmp eq i64 %_16.i, 0, !dbg !824
  br i1 %2, label %bb2.i.i, label %bb3.i.i, !dbg !824

bb2.i.i:                                          ; preds = %bb3.i
  %3 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_21.i, i64 0, i32 1, !dbg !825
  store i64 0, ptr %3, align 8, !dbg !825, !alias.scope !804, !noalias !826
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE.exit.i", !dbg !827

bb3.i.i:                                          ; preds = %bb3.i
  call void @llvm.dbg.value(metadata i64 8, metadata !816, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i64 8, metadata !829, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i64 %_16.i, metadata !834, metadata !DIExpression()), !dbg !835
  %size.i.i = shl nuw i64 %_16.i, 3, !dbg !837
  call void @llvm.dbg.value(metadata i64 %size.i.i, metadata !818, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i64 %size.i.i, metadata !820, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !839
  call void @llvm.dbg.value(metadata i64 8, metadata !820, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !839
  %self4.i.i = load ptr, ptr %self, align 8, !dbg !840, !alias.scope !826, !noalias !804, !nonnull !125, !noundef !125
  store ptr %self4.i.i, ptr %_21.i, align 8, !dbg !841, !alias.scope !804, !noalias !826
  %_9.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds i8, ptr %_21.i, i64 8, !dbg !841
  store i64 8, ptr %_9.sroa.4.0._0.sroa_idx.i.i, align 8, !dbg !841, !alias.scope !804, !noalias !826
  %_9.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds i8, ptr %_21.i, i64 16, !dbg !841
  store i64 %size.i.i, ptr %_9.sroa.5.0._0.sroa_idx.i.i, align 8, !dbg !841, !alias.scope !804, !noalias !826
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE.exit.i", !dbg !827

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE.exit.i": ; preds = %bb3.i.i, %bb2.i.i
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h3b7527282e164c16E(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") align 8 dereferenceable(24) %self5.i, i64 noundef %_0.sroa.0.0.i.i, i64 %array_size.i.i, ptr noalias nocapture noundef nonnull readonly align 8 dereferenceable(24) %_21.i), !dbg !802
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_21.i), !dbg !842, !noalias !587
  %_46.i = load i64, ptr %self5.i, align 8, !dbg !843, !range !844, !noalias !587, !noundef !125
  %trunc.not.i = icmp eq i64 %_46.i, 0, !dbg !845
  %4 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %self5.i, i64 0, i32 1, !dbg !845
  %e.015.i = load i64, ptr %4, align 8, !dbg !845, !noalias !587
  %5 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %self5.i, i64 0, i32 1, i32 1, !dbg !845
  %e.116.i = load i64, ptr %5, align 8, !dbg !845, !noalias !587
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self5.i), !dbg !802, !noalias !587
  br i1 %trunc.not.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E.exit.thread", label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E.exit", !dbg !802

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E.exit.thread": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE.exit.i"
  %6 = inttoptr i64 %e.015.i to ptr, !dbg !845
  call void @llvm.dbg.value(metadata ptr %6, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !846
  call void @llvm.dbg.value(metadata ptr %6, metadata !668, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !670
  call void @llvm.dbg.value(metadata i64 undef, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !846
  call void @llvm.dbg.value(metadata i64 undef, metadata !668, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !670
  store ptr %6, ptr %self, align 8, !dbg !847, !alias.scope !587
  store i64 %_0.0.sroa.speculated.i34.i, ptr %1, align 8, !dbg !848, !alias.scope !587
  call void @llvm.dbg.value(metadata i64 -9223372036854775807, metadata !849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !856
  call void @llvm.dbg.value(metadata i64 undef, metadata !849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !856
  br label %_ZN5alloc7raw_vec14handle_reserve17h48ca5d16756bfe57E.exit, !dbg !858

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E.exit": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE.exit.i"
  call void @llvm.dbg.value(metadata i64 %e.015.i, metadata !849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !856
  call void @llvm.dbg.value(metadata i64 %e.116.i, metadata !849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !856
  switch i64 %e.015.i, label %bb6.i [
    i64 -9223372036854775807, label %_ZN5alloc7raw_vec14handle_reserve17h48ca5d16756bfe57E.exit
    i64 0, label %bb5.i
  ], !dbg !858

bb5.i:                                            ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E.exit", %start
  tail call void @_ZN5alloc7raw_vec17capacity_overflow17h6ac1a41ac007777eE() #15, !dbg !859
  unreachable, !dbg !859

bb6.i:                                            ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E.exit"
  call void @llvm.dbg.value(metadata i64 %e.015.i, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !860
  call void @llvm.dbg.value(metadata i64 %e.116.i, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !860
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he5a37e3de770ae93E(i64 noundef %e.015.i, i64 noundef %e.116.i) #15, !dbg !861
  unreachable, !dbg !861

_ZN5alloc7raw_vec14handle_reserve17h48ca5d16756bfe57E.exit: ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E.exit", %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E.exit.thread"
  ret void, !dbg !862
}

; Function Attrs: uwtable
define void @_ZN13prime_factors13prime_factors17h828e6070e337ed09E(ptr noalias nocapture noundef writeonly sret(%"alloc::vec::Vec<u64>") align 8 dereferenceable(24) %_0, i64 noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !863 {
start:
  %factors = alloca %"alloc::vec::Vec<u64>", align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !874, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata ptr %factors, metadata !875, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %factors), !dbg !881
  store ptr inttoptr (i64 8 to ptr), ptr %factors, align 8, !dbg !882
  %1 = getelementptr inbounds { ptr, i64 }, ptr %factors, i64 0, i32 1, !dbg !882
  %2 = getelementptr inbounds %"alloc::vec::Vec<u64>", ptr %factors, i64 0, i32 1, !dbg !882
  call void @llvm.dbg.value(metadata i64 2, metadata !877, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata i64 %0, metadata !874, metadata !DIExpression()), !dbg !879
  %_410 = icmp ugt i64 %0, 1, !dbg !891
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !882
  br i1 %_410, label %bb3.preheader, label %bb9, !dbg !891

bb3.preheader:                                    ; preds = %bb8, %start
  %self3.i18 = phi ptr [ %self3.i19.lcssa, %bb8 ], [ inttoptr (i64 8 to ptr), %start ]
  %_4.i16 = phi i64 [ %_4.i.lcssa, %bb8 ], [ 0, %start ]
  %n.012 = phi i64 [ %n.19.lcssa, %bb8 ], [ %0, %start ]
  %candidate.011 = phi i64 [ %6, %bb8 ], [ 2, %start ]
  call void @llvm.dbg.value(metadata i64 %n.012, metadata !874, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 %candidate.011, metadata !877, metadata !DIExpression()), !dbg !890
  %_9 = icmp eq i64 %candidate.011, 0
  call void @llvm.dbg.value(metadata i64 %n.012, metadata !874, metadata !DIExpression()), !dbg !879
  br i1 %_9, label %panic, label %bb4.preheader, !dbg !892, !prof !893

bb4.preheader:                                    ; preds = %bb3.preheader
  call void @llvm.dbg.value(metadata i64 %n.012, metadata !874, metadata !DIExpression()), !dbg !879
  %_627 = urem i64 %n.012, %candidate.011, !dbg !892
  %3 = icmp eq i64 %_627, 0, !dbg !892
  br i1 %3, label %bb5, label %bb8, !dbg !892

bb9:                                              ; preds = %bb8, %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %factors, i64 24, i1 false), !dbg !894
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %factors), !dbg !895
  ret void, !dbg !896

panic:                                            ; preds = %bb3.preheader
  invoke void @_ZN4core9panicking5panic17hbabdc6a4f6b38581E(ptr noalias noundef nonnull readonly align 1 @str.1, i64 noundef 57, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_539ad61624b54118bba6c2eeef947f5a) #15
          to label %unreachable unwind label %cleanup.loopexit.split-lp, !dbg !892

cleanup.loopexit:                                 ; preds = %bb1.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897), !dbg !895
  call void @llvm.dbg.value(metadata ptr %factors, metadata !900, metadata !DIExpression()), !dbg !908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910), !dbg !913
  call void @llvm.dbg.value(metadata ptr %factors, metadata !914, metadata !DIExpression()), !dbg !922
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924), !dbg !927
  call void @llvm.dbg.value(metadata ptr %factors, metadata !928, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr %factors, metadata !809, metadata !DIExpression()), !dbg !939
  %_3.i.i.i1.i = load i64, ptr %1, align 8, !dbg !941, !alias.scope !942, !noalias !945, !noundef !125
  %4 = icmp eq i64 %_3.i.i.i1.i, 0, !dbg !941
  br i1 %4, label %bb11, label %bb1.i.i.i2.i, !dbg !941

bb1.i.i.i2.i:                                     ; preds = %cleanup
  call void @llvm.dbg.value(metadata i64 8, metadata !816, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i64 8, metadata !829, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %_3.i.i.i1.i, metadata !834, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %_3.i.i.i1.i, metadata !818, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !950
  call void @llvm.dbg.value(metadata i64 %_3.i.i.i1.i, metadata !820, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !951
  call void @llvm.dbg.value(metadata i64 8, metadata !820, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !951
  call void @llvm.dbg.value(metadata ptr poison, metadata !934, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 8, metadata !936, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !952
  call void @llvm.dbg.value(metadata i64 %_3.i.i.i1.i, metadata !936, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !952
  call void @llvm.dbg.value(metadata i64 8, metadata !953, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !960
  call void @llvm.dbg.value(metadata i64 %_3.i.i.i1.i, metadata !953, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !960
  call void @llvm.dbg.value(metadata ptr %factors, metadata !958, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !960
  call void @llvm.dbg.value(metadata ptr poison, metadata !959, metadata !DIExpression()), !dbg !960
  %size.i.i.i3.i = shl nuw i64 %_3.i.i.i1.i, 3, !dbg !962
  call void @llvm.dbg.value(metadata i64 %size.i.i.i3.i, metadata !818, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i64 %size.i.i.i3.i, metadata !820, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !951
  call void @llvm.dbg.value(metadata i64 %size.i.i.i3.i, metadata !936, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !952
  call void @llvm.dbg.value(metadata i64 %size.i.i.i3.i, metadata !953, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !960
  %self4.i.i.i4.i = load ptr, ptr %factors, align 8, !dbg !963, !alias.scope !942, !noalias !945, !nonnull !125, !noundef !125
  call void @llvm.dbg.value(metadata ptr %self4.i.i.i4.i, metadata !934, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr %self4.i.i.i4.i, metadata !959, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr poison, metadata !964, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 8, metadata !970, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !971
  call void @llvm.dbg.value(metadata i64 %_3.i.i.i1.i, metadata !970, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !971
  tail call void @__rust_dealloc(ptr noundef nonnull %self4.i.i.i4.i, i64 noundef %size.i.i.i3.i, i64 noundef 8) #14, !dbg !973, !noalias !974
  br label %bb11, !dbg !975

unreachable:                                      ; preds = %panic
  unreachable

bb5:                                              ; preds = %bb7, %bb4.preheader
  %n.1930 = phi i64 [ %8, %bb7 ], [ %n.012, %bb4.preheader ]
  %_4.i29 = phi i64 [ %7, %bb7 ], [ %_4.i16, %bb4.preheader ]
  %self3.i1928 = phi ptr [ %self3.i, %bb7 ], [ %self3.i18, %bb4.preheader ]
  call void @llvm.dbg.value(metadata i64 %n.1930, metadata !874, metadata !DIExpression()), !dbg !879
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976), !dbg !979
  call void @llvm.dbg.value(metadata ptr %factors, metadata !980, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr %factors, metadata !996, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %candidate.011, metadata !997, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr %factors, metadata !1002, metadata !DIExpression()), !dbg !1009
  %5 = load i64, ptr %1, align 8, !dbg !1011, !alias.scope !976, !noundef !125
  %_3.i = icmp eq i64 %_4.i29, %5, !dbg !1012
  br i1 %_3.i, label %bb1.i, label %bb7, !dbg !1012

bb1.i:                                            ; preds = %bb5
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h64c368c8ab5cf45cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %factors, i64 noundef %_4.i29)
          to label %.noexc unwind label %cleanup.loopexit, !dbg !1013

.noexc:                                           ; preds = %bb1.i
  %count.pre.i = load i64, ptr %2, align 8, !dbg !1014, !alias.scope !976
  %self3.i.pre = load ptr, ptr %factors, align 8, !dbg !1015, !alias.scope !976
  br label %bb7

bb8:                                              ; preds = %bb7, %bb4.preheader
  %self3.i19.lcssa = phi ptr [ %self3.i18, %bb4.preheader ], [ %self3.i, %bb7 ]
  %_4.i.lcssa = phi i64 [ %_4.i16, %bb4.preheader ], [ %7, %bb7 ]
  %n.19.lcssa = phi i64 [ %n.012, %bb4.preheader ], [ %8, %bb7 ]
  %6 = add i64 %candidate.011, 1, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %n.19.lcssa, metadata !874, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 %6, metadata !877, metadata !DIExpression()), !dbg !890
  %_4 = icmp ugt i64 %n.19.lcssa, 1, !dbg !891
  br i1 %_4, label %bb3.preheader, label %bb9, !dbg !891

bb7:                                              ; preds = %.noexc, %bb5
  %self3.i = phi ptr [ %self3.i.pre, %.noexc ], [ %self3.i1928, %bb5 ], !dbg !1015
  %count.i = phi i64 [ %count.pre.i, %.noexc ], [ %_4.i29, %bb5 ], !dbg !1014
  call void @llvm.dbg.value(metadata ptr %factors, metadata !1022, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr %self3.i, metadata !1026, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %count.i, metadata !1035, metadata !DIExpression()), !dbg !1036
  %end.i = getelementptr inbounds i64, ptr %self3.i, i64 %count.i, !dbg !1038
  call void @llvm.dbg.value(metadata ptr %end.i, metadata !1039, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata ptr %end.i, metadata !998, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i64 %candidate.011, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i64 %candidate.011, ptr %end.i, align 8, !dbg !1049, !noalias !976
  %7 = add i64 %count.i, 1, !dbg !1050
  store i64 %7, ptr %2, align 8, !dbg !1050, !alias.scope !976
  %8 = udiv i64 %n.1930, %candidate.011, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %8, metadata !874, metadata !DIExpression()), !dbg !879
  %_6 = urem i64 %8, %candidate.011, !dbg !892
  %9 = icmp eq i64 %_6, 0, !dbg !892
  br i1 %9, label %bb5, label %bb8, !dbg !892

bb11:                                             ; preds = %bb1.i.i.i2.i, %cleanup
  resume { ptr, i32 } %lpad.phi, !dbg !1052
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17hbabdc6a4f6b38581E(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @__rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #8

; Function Attrs: noinline noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17h6ac1a41ac007777eE() unnamed_addr #9

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17he5a37e3de770ae93E(i64 noundef, i64 noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #1 = { noinline uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #2 = { uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { cold noinline noreturn uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #6 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #9 = { noinline noreturn uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #10 = { cold noreturn uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #11 = { nounwind allockind("free") uwtable "alloc-family"="__rust_alloc" "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{!"rustc version 1.76.0-nightly (3a85a5cfe 2023-11-20)"}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.76.0-nightly (3a85a5cfe 2023-11-20))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, splitDebugInlining: false)
!5 = !DIFile(filename: "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit/prime_factors.rs/@/prime_factors.580a1bc6348a1e33-cgu.0", directory: "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit")
!6 = !{!7, !16, !85, !94}
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Ordering", scope: !9, file: !8, baseType: !11, size: 8, align: 8, flags: DIFlagEnumClass, elements: !12)
!8 = !DIFile(filename: "<unknown>", directory: "")
!9 = !DINamespace(name: "cmp", scope: !10)
!10 = !DINamespace(name: "core", scope: null)
!11 = !DIBasicType(name: "i8", size: 8, encoding: DW_ATE_signed)
!12 = !{!13, !14, !15}
!13 = !DIEnumerator(name: "Less", value: -1)
!14 = !DIEnumerator(name: "Equal", value: 0)
!15 = !DIEnumerator(name: "Greater", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AlignmentEnum64", scope: !17, file: !8, baseType: !19, size: 64, align: 64, flags: DIFlagEnumClass, elements: !20)
!17 = !DINamespace(name: "alignment", scope: !18)
!18 = !DINamespace(name: "ptr", scope: !10)
!19 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!21 = !DIEnumerator(name: "_Align1Shl0", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "_Align1Shl1", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "_Align1Shl2", value: 4, isUnsigned: true)
!24 = !DIEnumerator(name: "_Align1Shl3", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "_Align1Shl4", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "_Align1Shl5", value: 32, isUnsigned: true)
!27 = !DIEnumerator(name: "_Align1Shl6", value: 64, isUnsigned: true)
!28 = !DIEnumerator(name: "_Align1Shl7", value: 128, isUnsigned: true)
!29 = !DIEnumerator(name: "_Align1Shl8", value: 256, isUnsigned: true)
!30 = !DIEnumerator(name: "_Align1Shl9", value: 512, isUnsigned: true)
!31 = !DIEnumerator(name: "_Align1Shl10", value: 1024, isUnsigned: true)
!32 = !DIEnumerator(name: "_Align1Shl11", value: 2048, isUnsigned: true)
!33 = !DIEnumerator(name: "_Align1Shl12", value: 4096, isUnsigned: true)
!34 = !DIEnumerator(name: "_Align1Shl13", value: 8192, isUnsigned: true)
!35 = !DIEnumerator(name: "_Align1Shl14", value: 16384, isUnsigned: true)
!36 = !DIEnumerator(name: "_Align1Shl15", value: 32768, isUnsigned: true)
!37 = !DIEnumerator(name: "_Align1Shl16", value: 65536, isUnsigned: true)
!38 = !DIEnumerator(name: "_Align1Shl17", value: 131072, isUnsigned: true)
!39 = !DIEnumerator(name: "_Align1Shl18", value: 262144, isUnsigned: true)
!40 = !DIEnumerator(name: "_Align1Shl19", value: 524288, isUnsigned: true)
!41 = !DIEnumerator(name: "_Align1Shl20", value: 1048576, isUnsigned: true)
!42 = !DIEnumerator(name: "_Align1Shl21", value: 2097152, isUnsigned: true)
!43 = !DIEnumerator(name: "_Align1Shl22", value: 4194304, isUnsigned: true)
!44 = !DIEnumerator(name: "_Align1Shl23", value: 8388608, isUnsigned: true)
!45 = !DIEnumerator(name: "_Align1Shl24", value: 16777216, isUnsigned: true)
!46 = !DIEnumerator(name: "_Align1Shl25", value: 33554432, isUnsigned: true)
!47 = !DIEnumerator(name: "_Align1Shl26", value: 67108864, isUnsigned: true)
!48 = !DIEnumerator(name: "_Align1Shl27", value: 134217728, isUnsigned: true)
!49 = !DIEnumerator(name: "_Align1Shl28", value: 268435456, isUnsigned: true)
!50 = !DIEnumerator(name: "_Align1Shl29", value: 536870912, isUnsigned: true)
!51 = !DIEnumerator(name: "_Align1Shl30", value: 1073741824, isUnsigned: true)
!52 = !DIEnumerator(name: "_Align1Shl31", value: 2147483648, isUnsigned: true)
!53 = !DIEnumerator(name: "_Align1Shl32", value: 4294967296, isUnsigned: true)
!54 = !DIEnumerator(name: "_Align1Shl33", value: 8589934592, isUnsigned: true)
!55 = !DIEnumerator(name: "_Align1Shl34", value: 17179869184, isUnsigned: true)
!56 = !DIEnumerator(name: "_Align1Shl35", value: 34359738368, isUnsigned: true)
!57 = !DIEnumerator(name: "_Align1Shl36", value: 68719476736, isUnsigned: true)
!58 = !DIEnumerator(name: "_Align1Shl37", value: 137438953472, isUnsigned: true)
!59 = !DIEnumerator(name: "_Align1Shl38", value: 274877906944, isUnsigned: true)
!60 = !DIEnumerator(name: "_Align1Shl39", value: 549755813888, isUnsigned: true)
!61 = !DIEnumerator(name: "_Align1Shl40", value: 1099511627776, isUnsigned: true)
!62 = !DIEnumerator(name: "_Align1Shl41", value: 2199023255552, isUnsigned: true)
!63 = !DIEnumerator(name: "_Align1Shl42", value: 4398046511104, isUnsigned: true)
!64 = !DIEnumerator(name: "_Align1Shl43", value: 8796093022208, isUnsigned: true)
!65 = !DIEnumerator(name: "_Align1Shl44", value: 17592186044416, isUnsigned: true)
!66 = !DIEnumerator(name: "_Align1Shl45", value: 35184372088832, isUnsigned: true)
!67 = !DIEnumerator(name: "_Align1Shl46", value: 70368744177664, isUnsigned: true)
!68 = !DIEnumerator(name: "_Align1Shl47", value: 140737488355328, isUnsigned: true)
!69 = !DIEnumerator(name: "_Align1Shl48", value: 281474976710656, isUnsigned: true)
!70 = !DIEnumerator(name: "_Align1Shl49", value: 562949953421312, isUnsigned: true)
!71 = !DIEnumerator(name: "_Align1Shl50", value: 1125899906842624, isUnsigned: true)
!72 = !DIEnumerator(name: "_Align1Shl51", value: 2251799813685248, isUnsigned: true)
!73 = !DIEnumerator(name: "_Align1Shl52", value: 4503599627370496, isUnsigned: true)
!74 = !DIEnumerator(name: "_Align1Shl53", value: 9007199254740992, isUnsigned: true)
!75 = !DIEnumerator(name: "_Align1Shl54", value: 18014398509481984, isUnsigned: true)
!76 = !DIEnumerator(name: "_Align1Shl55", value: 36028797018963968, isUnsigned: true)
!77 = !DIEnumerator(name: "_Align1Shl56", value: 72057594037927936, isUnsigned: true)
!78 = !DIEnumerator(name: "_Align1Shl57", value: 144115188075855872, isUnsigned: true)
!79 = !DIEnumerator(name: "_Align1Shl58", value: 288230376151711744, isUnsigned: true)
!80 = !DIEnumerator(name: "_Align1Shl59", value: 576460752303423488, isUnsigned: true)
!81 = !DIEnumerator(name: "_Align1Shl60", value: 1152921504606846976, isUnsigned: true)
!82 = !DIEnumerator(name: "_Align1Shl61", value: 2305843009213693952, isUnsigned: true)
!83 = !DIEnumerator(name: "_Align1Shl62", value: 4611686018427387904, isUnsigned: true)
!84 = !DIEnumerator(name: "_Align1Shl63", value: 9223372036854775808, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !86, file: !8, baseType: !88, size: 8, align: 8, flags: DIFlagEnumClass, elements: !89)
!86 = !DINamespace(name: "rt", scope: !87)
!87 = !DINamespace(name: "fmt", scope: !10)
!88 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "Left", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "Right", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "Center", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "Unknown", value: 3, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AssertKind", scope: !95, file: !8, baseType: !88, size: 8, align: 8, flags: DIFlagEnumClass, elements: !96)
!95 = !DINamespace(name: "panicking", scope: !10)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "Eq", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "Ne", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "Match", value: 2, isUnsigned: true)
!100 = distinct !DISubprogram(name: "finish_grow<alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec11finish_grow17h3b7527282e164c16E", scope: !102, file: !101, line: 474, type: !104, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !280, retainedNodes: !204)
!101 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/alloc/src/raw_vec.rs", directory: "", checksumkind: CSK_MD5, checksum: "cd9af9c7c588e2c3756711d604068d69")
!102 = !DINamespace(name: "raw_vec", scope: !103)
!103 = !DINamespace(name: "alloc", scope: null)
!104 = !DISubroutineType(cc: DW_CC_nocall, types: !105)
!105 = !{!106, !162, !179, !201}
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", scope: !107, file: !8, size: 192, align: 64, elements: !108, templateParams: !125, identifier: "700f7d6b743cfbce6bf50c027877486f")
!107 = !DINamespace(name: "result", scope: !10)
!108 = !{!109}
!109 = !DICompositeType(tag: DW_TAG_variant_part, scope: !106, file: !8, size: 192, align: 64, elements: !110, templateParams: !125, identifier: "1fc74ee5d89737fc52a4649ef0a32c01", discriminator: !161)
!110 = !{!111, !157}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !109, file: !8, baseType: !112, size: 192, align: 64, extraData: i128 0)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !106, file: !8, size: 192, align: 64, elements: !113, templateParams: !128, identifier: "a8961c1471274e505f7da941b36fa835")
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !112, file: !8, baseType: !115, size: 128, align: 64, offset: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<[u8]>", scope: !116, file: !8, size: 128, align: 64, elements: !117, templateParams: !126, identifier: "c9a305787334cfd32afbb3ffc869aa25")
!116 = !DINamespace(name: "non_null", scope: !18)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !115, file: !8, baseType: !119, size: 128, align: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "*const [u8]", file: !8, size: 128, align: 64, elements: !120, templateParams: !125, identifier: "a329dffc2f36de2e98a77091932cf429")
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !119, file: !8, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64, dwarfAddressSpace: 0)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !119, file: !8, baseType: !124, size: 64, align: 64, offset: 64)
!124 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!125 = !{}
!126 = !{!127}
!127 = !DITemplateTypeParameter(name: "T", type: !88)
!128 = !{!129, !130}
!129 = !DITemplateTypeParameter(name: "T", type: !115)
!130 = !DITemplateTypeParameter(name: "E", type: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "TryReserveError", scope: !132, file: !8, size: 128, align: 64, elements: !133, templateParams: !125, identifier: "64ec755e4a052ad3dcb46186f1fe0ab1")
!132 = !DINamespace(name: "collections", scope: !103)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !131, file: !8, baseType: !135, size: 128, align: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "TryReserveErrorKind", scope: !132, file: !8, size: 128, align: 64, elements: !136, templateParams: !125, identifier: "8d68b211e7f8829d179884aa97182d04")
!136 = !{!137}
!137 = !DICompositeType(tag: DW_TAG_variant_part, scope: !135, file: !8, size: 128, align: 64, elements: !138, templateParams: !125, identifier: "ad200cd5d6be25ca13d88cb1ce63c5c3", discriminator: !156)
!138 = !{!139, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "CapacityOverflow", scope: !137, file: !8, baseType: !140, size: 128, align: 64, extraData: i128 0)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "CapacityOverflow", scope: !135, file: !8, size: 128, align: 64, elements: !125, identifier: "981e8d501b50150cbb6536b98ef2cd33")
!141 = !DIDerivedType(tag: DW_TAG_member, name: "AllocError", scope: !137, file: !8, baseType: !142, size: 128, align: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "AllocError", scope: !135, file: !8, size: 128, align: 64, elements: !143, templateParams: !125, identifier: "dce97d7866bed1e018e0d182424405d")
!143 = !{!144, !154}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "layout", scope: !142, file: !8, baseType: !145, size: 128, align: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "Layout", scope: !146, file: !8, size: 128, align: 64, elements: !148, templateParams: !125, identifier: "91d7bf4a7044202a48c884b335c6e64f")
!146 = !DINamespace(name: "layout", scope: !147)
!147 = !DINamespace(name: "alloc", scope: !10)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !145, file: !8, baseType: !124, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !145, file: !8, baseType: !151, size: 64, align: 64)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "Alignment", scope: !17, file: !8, size: 64, align: 64, elements: !152, templateParams: !125, identifier: "3d8990813d86caad527bfb6b6b77e123")
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !151, file: !8, baseType: !16, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "non_exhaustive", scope: !142, file: !8, baseType: !155, align: 8, offset: 128)
!155 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !8, baseType: !19, size: 64, align: 64, flags: DIFlagArtificial)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !109, file: !8, baseType: !158, size: 192, align: 64, extraData: i128 1)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !106, file: !8, size: 192, align: 64, elements: !159, templateParams: !128, identifier: "60885506e8300df5653213d575cb263a")
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !158, file: !8, baseType: !131, size: 128, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !8, baseType: !19, size: 64, align: 64, flags: DIFlagArtificial)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>", scope: !107, file: !8, size: 128, align: 64, elements: !163, templateParams: !125, identifier: "97502c212d43c68997f0821467c18fb4")
!163 = !{!164}
!164 = !DICompositeType(tag: DW_TAG_variant_part, scope: !162, file: !8, size: 128, align: 64, elements: !165, templateParams: !125, identifier: "484e93ebb4b558d09037d924595fafd", discriminator: !178)
!165 = !{!166, !174}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !164, file: !8, baseType: !167, size: 128, align: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !162, file: !8, size: 128, align: 64, elements: !168, templateParams: !170, identifier: "d0456a81a98865e57dde5ae73105b743")
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !167, file: !8, baseType: !145, size: 128, align: 64)
!170 = !{!171, !172}
!171 = !DITemplateTypeParameter(name: "T", type: !145)
!172 = !DITemplateTypeParameter(name: "E", type: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "LayoutError", scope: !146, file: !8, align: 8, elements: !125, identifier: "708d2a59ead1c6392e94999e128d102b")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !164, file: !8, baseType: !175, size: 128, align: 64, extraData: i128 0)
!175 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !162, file: !8, size: 128, align: 64, elements: !176, templateParams: !170, identifier: "9131bf9e563f6f0cae8c3221d98c0f14")
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !175, file: !8, baseType: !173, align: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !8, baseType: !19, size: 64, align: 64, flags: DIFlagArtificial)
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", scope: !180, file: !8, size: 192, align: 64, elements: !181, templateParams: !125, identifier: "b09c03cafa8fd3d4b6aecd566fbd6a2")
!180 = !DINamespace(name: "option", scope: !10)
!181 = !{!182}
!182 = !DICompositeType(tag: DW_TAG_variant_part, scope: !179, file: !8, size: 192, align: 64, elements: !183, templateParams: !125, identifier: "74bd862e82443f21260b127f587b18f9", discriminator: !200)
!183 = !{!184, !196}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !182, file: !8, baseType: !185, size: 192, align: 64, extraData: i128 0)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !179, file: !8, size: 192, align: 64, elements: !125, templateParams: !186, identifier: "90ebc412b391577d039c0133a6ccdf8")
!186 = !{!187}
!187 = !DITemplateTypeParameter(name: "T", type: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)", file: !8, size: 192, align: 64, elements: !189, templateParams: !125, identifier: "e22865c7b5c574082b70e2404767bc55")
!189 = !{!190, !195}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !188, file: !8, baseType: !191, size: 64, align: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !116, file: !8, size: 64, align: 64, elements: !192, templateParams: !126, identifier: "aa89d2603d5e6bbc7b61677e8abb7637")
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !191, file: !8, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !88, size: 64, align: 64, dwarfAddressSpace: 0)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !188, file: !8, baseType: !145, size: 128, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !182, file: !8, baseType: !197, size: 192, align: 64)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !179, file: !8, size: 192, align: 64, elements: !198, templateParams: !186, identifier: "57c4ef2d003e823b26de4a6569b2e04a")
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !197, file: !8, baseType: !188, size: 192, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !8, baseType: !19, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::alloc::Global", baseType: !202, size: 64, align: 64, dwarfAddressSpace: 0)
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !203, file: !8, align: 8, elements: !125, identifier: "8d221f6376c1740bb83691feb6e4b99e")
!203 = !DINamespace(name: "alloc", scope: !103)
!204 = !{!205, !206, !207, !208, !210, !231, !233, !248, !250, !268, !270, !271, !276, !277}
!205 = !DILocalVariable(name: "new_layout", arg: 1, scope: !100, file: !101, line: 475, type: !162)
!206 = !DILocalVariable(name: "current_memory", arg: 2, scope: !100, file: !101, line: 476, type: !179)
!207 = !DILocalVariable(name: "alloc", arg: 3, scope: !100, file: !101, line: 477, type: !201)
!208 = !DILocalVariable(name: "new_layout", scope: !209, file: !101, line: 483, type: !145, align: 8)
!209 = distinct !DILexicalBlock(scope: !100, file: !101, line: 483, column: 5)
!210 = !DILocalVariable(name: "residual", scope: !211, file: !101, line: 483, type: !212, align: 8)
!211 = distinct !DILexicalBlock(scope: !100, file: !101, line: 483, column: 62)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>", scope: !107, file: !8, size: 128, align: 64, elements: !213, templateParams: !125, identifier: "321ab8f8f0ba0e6c57198d642442850")
!213 = !{!214}
!214 = !DICompositeType(tag: DW_TAG_variant_part, scope: !212, file: !8, size: 128, align: 64, elements: !215, templateParams: !125, identifier: "c4e67a5148e11d31220a31980d44e82f")
!215 = !{!216, !227}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !214, file: !8, baseType: !217, size: 128, align: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !212, file: !8, size: 128, align: 64, elements: !218, templateParams: !224, identifier: "6941bfdd7f423f6ead91a485a43dec36")
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !217, file: !8, baseType: !220, align: 8)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "Infallible", scope: !221, file: !8, align: 8, elements: !222, templateParams: !125, identifier: "637bdb288d7182ded26d0aa4dd452dbc")
!221 = !DINamespace(name: "convert", scope: !10)
!222 = !{!223}
!223 = !DICompositeType(tag: DW_TAG_variant_part, scope: !220, file: !8, align: 8, elements: !125, identifier: "eedca44f6a40cd67513b54eee1bfa89")
!224 = !{!225, !226}
!225 = !DITemplateTypeParameter(name: "T", type: !220)
!226 = !DITemplateTypeParameter(name: "E", type: !135)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !214, file: !8, baseType: !228, size: 128, align: 64)
!228 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !212, file: !8, size: 128, align: 64, elements: !229, templateParams: !224, identifier: "629762753384cfed9dfc8c3043a89c20")
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !228, file: !8, baseType: !135, size: 128, align: 64)
!231 = !DILocalVariable(name: "val", scope: !232, file: !101, line: 483, type: !145, align: 8)
!232 = distinct !DILexicalBlock(scope: !100, file: !101, line: 483, column: 22)
!233 = !DILocalVariable(name: "residual", scope: !234, file: !101, line: 485, type: !235, align: 8)
!234 = distinct !DILexicalBlock(scope: !209, file: !101, line: 485, column: 35)
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::convert::Infallible, alloc::collections::TryReserveError>", scope: !107, file: !8, size: 128, align: 64, elements: !236, templateParams: !125, identifier: "e1d4c043e13ae3bc5f28f7fbb8c77b2e")
!236 = !{!237}
!237 = !DICompositeType(tag: DW_TAG_variant_part, scope: !235, file: !8, size: 128, align: 64, elements: !238, templateParams: !125, identifier: "576e4126b00a2d77f518c4f2f465cfb0")
!238 = !{!239, !244}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !237, file: !8, baseType: !240, size: 128, align: 64)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !235, file: !8, size: 128, align: 64, elements: !241, templateParams: !243, identifier: "5aebd342896253507c9770eb128018ef")
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !240, file: !8, baseType: !220, align: 8)
!243 = !{!225, !130}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !237, file: !8, baseType: !245, size: 128, align: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !235, file: !8, size: 128, align: 64, elements: !246, templateParams: !243, identifier: "80aa28860e1bca4454f97cce748b347a")
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !245, file: !8, baseType: !131, size: 128, align: 64)
!248 = !DILocalVariable(name: "val", scope: !249, file: !101, line: 485, type: !155, align: 1)
!249 = distinct !DILexicalBlock(scope: !209, file: !101, line: 485, column: 5)
!250 = !DILocalVariable(name: "memory", scope: !251, file: !101, line: 487, type: !252, align: 8)
!251 = distinct !DILexicalBlock(scope: !209, file: !101, line: 487, column: 5)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", scope: !107, file: !8, size: 128, align: 64, elements: !253, templateParams: !125, identifier: "12ec70f942585efc71db9de2fd0966a7")
!253 = !{!254}
!254 = !DICompositeType(tag: DW_TAG_variant_part, scope: !252, file: !8, size: 128, align: 64, elements: !255, templateParams: !125, identifier: "4393bfa5099a66af71779b69d6de556d", discriminator: !267)
!255 = !{!256, !263}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !254, file: !8, baseType: !257, size: 128, align: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !252, file: !8, size: 128, align: 64, elements: !258, templateParams: !260, identifier: "ea9cc93ba4e0da417f22e7e3d5dc5b09")
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !257, file: !8, baseType: !115, size: 128, align: 64)
!260 = !{!129, !261}
!261 = !DITemplateTypeParameter(name: "E", type: !262)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "AllocError", scope: !147, file: !8, align: 8, elements: !125, identifier: "9e5a8efbc9fb810b609c0df36929fad4")
!263 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !254, file: !8, baseType: !264, size: 128, align: 64, extraData: i128 0)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !252, file: !8, size: 128, align: 64, elements: !265, templateParams: !260, identifier: "68bd5660ba7c3c95ee38075a3e58ba06")
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !264, file: !8, baseType: !262, align: 8)
!267 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !8, baseType: !19, size: 64, align: 64, flags: DIFlagArtificial)
!268 = !DILocalVariable(name: "ptr", scope: !269, file: !101, line: 487, type: !191, align: 8)
!269 = distinct !DILexicalBlock(scope: !209, file: !101, line: 487, column: 66)
!270 = !DILocalVariable(name: "old_layout", scope: !269, file: !101, line: 487, type: !145, align: 8)
!271 = !DILocalVariable(name: "left_val", scope: !272, file: !101, line: 488, type: !275, align: 8)
!272 = !DILexicalBlockFile(scope: !273, file: !101, discriminator: 0)
!273 = distinct !DILexicalBlock(scope: !269, file: !274, line: 39, column: 13)
!274 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/core/src/macros/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "a57e716e54c372a351d6511c0663e58d")
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !124, size: 64, align: 64, dwarfAddressSpace: 0)
!276 = !DILocalVariable(name: "right_val", scope: !272, file: !101, line: 488, type: !275, align: 8)
!277 = !DILocalVariable(name: "kind", scope: !278, file: !101, line: 488, type: !94, align: 1)
!278 = !DILexicalBlockFile(scope: !279, file: !101, discriminator: 0)
!279 = distinct !DILexicalBlock(scope: !273, file: !274, line: 41, column: 21)
!280 = !{!281}
!281 = !DITemplateTypeParameter(name: "A", type: !202)
!282 = !DILocation(line: 0, scope: !100)
!283 = !DILocation(line: 476, column: 5, scope: !100)
!284 = !DILocalVariable(name: "self", arg: 1, scope: !285, file: !286, line: 826, type: !162)
!285 = distinct !DISubprogram(name: "map_err<core::alloc::layout::Layout, core::alloc::layout::LayoutError, alloc::collections::TryReserveErrorKind, alloc::raw_vec::finish_grow::{closure_env#0}<alloc::alloc::Global>>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hc60c6cd14ae8c7dcE", scope: !162, file: !286, line: 826, type: !287, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !306, declaration: !305, retainedNodes: !309)
!286 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/core/src/result.rs", directory: "", checksumkind: CSK_MD5, checksum: "cc8b7cecba5f727f67dc5e53b092ac26")
!287 = !DISubroutineType(types: !288)
!288 = !{!289, !162, !303}
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>", scope: !107, file: !8, size: 192, align: 64, elements: !290, templateParams: !125, identifier: "7d97eb0dfb92b825447d159729bd071e")
!290 = !{!291}
!291 = !DICompositeType(tag: DW_TAG_variant_part, scope: !289, file: !8, size: 192, align: 64, elements: !292, templateParams: !125, identifier: "e461fa62617c2f0ca473c5b8a5ec5e6", discriminator: !302)
!292 = !{!293, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !291, file: !8, baseType: !294, size: 192, align: 64, extraData: i128 0)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !289, file: !8, size: 192, align: 64, elements: !295, templateParams: !297, identifier: "a32e80fa625cd1c048f57da1fb5cfea6")
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !294, file: !8, baseType: !145, size: 128, align: 64, offset: 64)
!297 = !{!171, !226}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !291, file: !8, baseType: !299, size: 192, align: 64, extraData: i128 1)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !289, file: !8, size: 192, align: 64, elements: !300, templateParams: !297, identifier: "1f545246a6e915c1d5e5f685aabce5ac")
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !299, file: !8, baseType: !135, size: 128, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !8, baseType: !19, size: 64, align: 64, flags: DIFlagArtificial)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<alloc::alloc::Global>", scope: !304, file: !8, align: 8, elements: !125, identifier: "ba6d733308dcbb7f9225ecedd128e1")
!304 = !DINamespace(name: "finish_grow", scope: !102)
!305 = !DISubprogram(name: "map_err<core::alloc::layout::Layout, core::alloc::layout::LayoutError, alloc::collections::TryReserveErrorKind, alloc::raw_vec::finish_grow::{closure_env#0}<alloc::alloc::Global>>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hc60c6cd14ae8c7dcE", scope: !162, file: !286, line: 826, type: !287, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !306)
!306 = !{!171, !172, !307, !308}
!307 = !DITemplateTypeParameter(name: "F", type: !135)
!308 = !DITemplateTypeParameter(name: "O", type: !303)
!309 = !{!284, !310, !311, !313}
!310 = !DILocalVariable(name: "op", arg: 2, scope: !285, file: !286, line: 826, type: !303)
!311 = !DILocalVariable(name: "t", scope: !312, file: !286, line: 828, type: !145, align: 8)
!312 = distinct !DILexicalBlock(scope: !285, file: !286, line: 828, column: 13)
!313 = !DILocalVariable(name: "e", scope: !314, file: !286, line: 829, type: !173, align: 1)
!314 = distinct !DILexicalBlock(scope: !285, file: !286, line: 829, column: 13)
!315 = !DILocation(line: 0, scope: !285, inlinedAt: !316)
!316 = distinct !DILocation(line: 483, column: 22, scope: !100)
!317 = !DILocation(line: 826, column: 48, scope: !285, inlinedAt: !316)
!318 = !DILocation(line: 827, column: 15, scope: !285, inlinedAt: !316)
!319 = !DILocation(line: 827, column: 9, scope: !285, inlinedAt: !316)
!320 = !DILocation(line: 0, scope: !209)
!321 = !DILocation(line: 487, column: 25, scope: !269)
!322 = !{i64 0, i64 -9223372036854775807}
!323 = !DILocation(line: 0, scope: !211)
!324 = !DILocalVariable(name: "residual", arg: 1, scope: !325, file: !286, line: 1957, type: !212)
!325 = distinct !DILexicalBlock(scope: !326, file: !286, line: 1957, column: 5)
!326 = distinct !DISubprogram(name: "from_residual<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveErrorKind, alloc::collections::TryReserveError>", linkageName: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h834b4ce993e0d364E", scope: !327, file: !286, line: 1957, type: !328, scopeLine: 1957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !346, retainedNodes: !343)
!327 = !DINamespace(name: "{impl#27}", scope: !107)
!328 = !DISubroutineType(types: !329)
!329 = !{!106, !212, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !331, size: 64, align: 64, dwarfAddressSpace: 0)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !332, file: !8, size: 192, align: 64, elements: !334, templateParams: !125, identifier: "1481efc785b9dbf3d2dbf3ae57750658")
!332 = !DINamespace(name: "location", scope: !333)
!333 = !DINamespace(name: "panic", scope: !10)
!334 = !{!335, !340, !342}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !331, file: !8, baseType: !336, size: 128, align: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !8, size: 128, align: 64, elements: !337, templateParams: !125, identifier: "857c99401054bcaa39f98e6e0c6d74b")
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !336, file: !8, baseType: !122, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !336, file: !8, baseType: !124, size: 64, align: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !331, file: !8, baseType: !341, size: 32, align: 32, offset: 128)
!341 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !331, file: !8, baseType: !341, size: 32, align: 32, offset: 160)
!343 = !{!324, !344}
!344 = !DILocalVariable(name: "e", scope: !345, file: !286, line: 1959, type: !135, align: 8)
!345 = distinct !DILexicalBlock(scope: !325, file: !286, line: 1959, column: 13)
!346 = !{!129, !226, !347}
!347 = !DITemplateTypeParameter(name: "F", type: !131)
!348 = !DILocation(line: 0, scope: !325, inlinedAt: !349)
!349 = !DILocation(line: 483, column: 22, scope: !211)
!350 = !DILocation(line: 0, scope: !345, inlinedAt: !349)
!351 = !DILocation(line: 1959, column: 23, scope: !345, inlinedAt: !349)
!352 = !DILocation(line: 499, column: 2, scope: !100)
!353 = !DILocation(line: 487, column: 31, scope: !269)
!354 = !DILocation(line: 0, scope: !269)
!355 = !DILocation(line: 487, column: 36, scope: !269)
!356 = !DILocation(line: 491, column: 32, scope: !269)
!357 = !DILocation(line: 491, column: 13, scope: !269)
!358 = !DILocalVariable(name: "self", arg: 1, scope: !359, file: !360, line: 260, type: !364)
!359 = distinct !DISubprogram(name: "grow", linkageName: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h266b261192d34913E", scope: !361, file: !360, line: 259, type: !362, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !365)
!360 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/alloc/src/alloc.rs", directory: "", checksumkind: CSK_MD5, checksum: "9432c23e73888495aa5c35d4544c8a21")
!361 = !DINamespace(name: "{impl#1}", scope: !203)
!362 = !DISubroutineType(types: !363)
!363 = !{!252, !364, !191, !145, !145}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::alloc::Global", baseType: !202, size: 64, align: 64, dwarfAddressSpace: 0)
!365 = !{!358, !366, !367, !368}
!366 = !DILocalVariable(name: "ptr", arg: 2, scope: !359, file: !360, line: 261, type: !191)
!367 = !DILocalVariable(name: "old_layout", arg: 3, scope: !359, file: !360, line: 262, type: !145)
!368 = !DILocalVariable(name: "new_layout", arg: 4, scope: !359, file: !360, line: 263, type: !145)
!369 = !DILocation(line: 0, scope: !359, inlinedAt: !370)
!370 = distinct !DILocation(line: 492, column: 13, scope: !269)
!371 = !DILocalVariable(name: "old_layout", arg: 3, scope: !372, file: !360, line: 193, type: !145)
!372 = distinct !DISubprogram(name: "grow_impl", linkageName: "_ZN5alloc5alloc6Global9grow_impl17h8019ce819b104f5cE", scope: !202, file: !360, line: 190, type: !373, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, declaration: !376, retainedNodes: !377)
!373 = !DISubroutineType(types: !374)
!374 = !{!252, !364, !191, !145, !145, !375}
!375 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!376 = !DISubprogram(name: "grow_impl", linkageName: "_ZN5alloc5alloc6Global9grow_impl17h8019ce819b104f5cE", scope: !202, file: !360, line: 190, type: !373, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !125)
!377 = !{!378, !379, !371, !380, !381, !382, !384, !385, !387, !390, !392, !407, !409, !411, !413, !415}
!378 = !DILocalVariable(name: "self", arg: 1, scope: !372, file: !360, line: 191, type: !364)
!379 = !DILocalVariable(name: "ptr", arg: 2, scope: !372, file: !360, line: 192, type: !191)
!380 = !DILocalVariable(name: "new_layout", arg: 4, scope: !372, file: !360, line: 194, type: !145)
!381 = !DILocalVariable(name: "zeroed", arg: 5, scope: !372, file: !360, line: 195, type: !375)
!382 = !DILocalVariable(name: "old_size", scope: !383, file: !360, line: 207, type: !124, align: 8)
!383 = distinct !DILexicalBlock(scope: !372, file: !360, line: 207, column: 13)
!384 = !DILocalVariable(name: "old_size", scope: !383, file: !360, line: 207, type: !275, align: 8)
!385 = !DILocalVariable(name: "new_size", scope: !386, file: !360, line: 208, type: !124, align: 8)
!386 = distinct !DILexicalBlock(scope: !383, file: !360, line: 208, column: 17)
!387 = !DILocalVariable(name: "raw_ptr", scope: !388, file: !360, line: 213, type: !389, align: 8)
!388 = distinct !DILexicalBlock(scope: !386, file: !360, line: 213, column: 17)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !88, size: 64, align: 64, dwarfAddressSpace: 0)
!390 = !DILocalVariable(name: "ptr", scope: !391, file: !360, line: 214, type: !191, align: 8)
!391 = distinct !DILexicalBlock(scope: !388, file: !360, line: 214, column: 17)
!392 = !DILocalVariable(name: "residual", scope: !393, file: !360, line: 214, type: !394, align: 1)
!393 = distinct !DILexicalBlock(scope: !388, file: !360, line: 214, column: 66)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::convert::Infallible, core::alloc::AllocError>", scope: !107, file: !8, align: 8, elements: !395, templateParams: !125, identifier: "8a80b63927979054a7364cc17405b644")
!395 = !{!396}
!396 = !DICompositeType(tag: DW_TAG_variant_part, scope: !394, file: !8, align: 8, elements: !397, templateParams: !125, identifier: "af4fa224358298efbf7a0f45c778e82e")
!397 = !{!398, !403}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !396, file: !8, baseType: !399, align: 8)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !394, file: !8, align: 8, elements: !400, templateParams: !402, identifier: "85adaf0917a16b74a2eda98c64a8a9b3")
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !399, file: !8, baseType: !220, align: 8)
!402 = !{!225, !261}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !396, file: !8, baseType: !404, align: 8)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !394, file: !8, align: 8, elements: !405, templateParams: !402, identifier: "67756002f5ce8bdf5648d921f153e77a")
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !404, file: !8, baseType: !262, align: 8)
!407 = !DILocalVariable(name: "val", scope: !408, file: !360, line: 214, type: !191, align: 8)
!408 = distinct !DILexicalBlock(scope: !388, file: !360, line: 214, column: 27)
!409 = !DILocalVariable(name: "old_size", scope: !410, file: !360, line: 226, type: !124, align: 8)
!410 = distinct !DILexicalBlock(scope: !372, file: !360, line: 226, column: 13)
!411 = !DILocalVariable(name: "new_ptr", scope: !412, file: !360, line: 227, type: !115, align: 8)
!412 = distinct !DILexicalBlock(scope: !410, file: !360, line: 227, column: 17)
!413 = !DILocalVariable(name: "residual", scope: !414, file: !360, line: 227, type: !394, align: 1)
!414 = distinct !DILexicalBlock(scope: !410, file: !360, line: 227, column: 66)
!415 = !DILocalVariable(name: "val", scope: !416, file: !360, line: 227, type: !115, align: 8)
!416 = distinct !DILexicalBlock(scope: !410, file: !360, line: 227, column: 31)
!417 = !DILocation(line: 0, scope: !372, inlinedAt: !418)
!418 = distinct !DILocation(line: 266, column: 18, scope: !359, inlinedAt: !370)
!419 = !DILocation(line: 202, column: 9, scope: !372, inlinedAt: !418)
!420 = !DILocalVariable(name: "src", scope: !421, file: !422, line: 1561, type: !194, align: 8)
!421 = distinct !DILexicalBlock(scope: !423, file: !422, line: 1561, column: 1)
!422 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "438238c3f27b7b9e70a8eb6743e94def")
!423 = distinct !DISubprogram(name: "read_volatile<u8>", linkageName: "_ZN4core3ptr13read_volatile17h9e8727937dc05c26E", scope: !18, file: !422, line: 1561, type: !424, scopeLine: 1561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !126, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{!88, !194}
!426 = !{!420}
!427 = !DILocation(line: 0, scope: !421, inlinedAt: !428)
!428 = distinct !DILocation(line: 96, column: 9, scope: !429, inlinedAt: !435)
!429 = distinct !DILexicalBlock(scope: !430, file: !360, line: 92, column: 1)
!430 = distinct !DISubprogram(name: "alloc", linkageName: "_ZN5alloc5alloc5alloc17h5f18d771aa4f7cd5E", scope: !203, file: !360, line: 92, type: !431, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!389, !145}
!433 = !{!434}
!434 = !DILocalVariable(name: "layout", arg: 1, scope: !429, file: !360, line: 92, type: !145)
!435 = distinct !DILocation(line: 181, column: 73, scope: !436, inlinedAt: !454)
!436 = distinct !DILexicalBlock(scope: !437, file: !360, line: 180, column: 13)
!437 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_ZN5alloc5alloc6Global10alloc_impl17h53837f5c4e2736b4E", scope: !202, file: !360, line: 176, type: !438, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, declaration: !440, retainedNodes: !441)
!438 = !DISubroutineType(types: !439)
!439 = !{!252, !364, !145, !375}
!440 = !DISubprogram(name: "alloc_impl", linkageName: "_ZN5alloc5alloc6Global10alloc_impl17h53837f5c4e2736b4E", scope: !202, file: !360, line: 176, type: !438, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !125)
!441 = !{!442, !443, !444, !445, !446, !448, !450, !452}
!442 = !DILocalVariable(name: "self", arg: 1, scope: !437, file: !360, line: 176, type: !364)
!443 = !DILocalVariable(name: "layout", arg: 2, scope: !437, file: !360, line: 176, type: !145)
!444 = !DILocalVariable(name: "zeroed", arg: 3, scope: !437, file: !360, line: 176, type: !375)
!445 = !DILocalVariable(name: "size", scope: !436, file: !360, line: 180, type: !124, align: 8)
!446 = !DILocalVariable(name: "raw_ptr", scope: !447, file: !360, line: 181, type: !389, align: 8)
!447 = distinct !DILexicalBlock(scope: !436, file: !360, line: 181, column: 17)
!448 = !DILocalVariable(name: "ptr", scope: !449, file: !360, line: 182, type: !191, align: 8)
!449 = distinct !DILexicalBlock(scope: !447, file: !360, line: 182, column: 17)
!450 = !DILocalVariable(name: "residual", scope: !451, file: !360, line: 182, type: !394, align: 1)
!451 = distinct !DILexicalBlock(scope: !447, file: !360, line: 182, column: 66)
!452 = !DILocalVariable(name: "val", scope: !453, file: !360, line: 182, type: !191, align: 8)
!453 = distinct !DILexicalBlock(scope: !447, file: !360, line: 182, column: 27)
!454 = distinct !DILocation(line: 203, column: 18, scope: !372, inlinedAt: !418)
!455 = !DILocation(line: 0, scope: !437, inlinedAt: !454)
!456 = !DILocation(line: 0, scope: !436, inlinedAt: !454)
!457 = !DILocation(line: 177, column: 9, scope: !437, inlinedAt: !454)
!458 = !DILocalVariable(name: "self", arg: 1, scope: !459, file: !460, line: 216, type: !464)
!459 = distinct !DILexicalBlock(scope: !461, file: !460, line: 216, column: 5)
!460 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/core/src/alloc/layout.rs", directory: "", checksumkind: CSK_MD5, checksum: "68d6ecbd60c509f295fc3fbc55384f3f")
!461 = distinct !DISubprogram(name: "dangling", linkageName: "_ZN4core5alloc6layout6Layout8dangling17hae63a7d18fbc0559E", scope: !145, file: !460, line: 216, type: !462, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, declaration: !465, retainedNodes: !466)
!462 = !DISubroutineType(types: !463)
!463 = !{!191, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::alloc::layout::Layout", baseType: !145, size: 64, align: 64, dwarfAddressSpace: 0)
!465 = !DISubprogram(name: "dangling", linkageName: "_ZN4core5alloc6layout6Layout8dangling17hae63a7d18fbc0559E", scope: !145, file: !460, line: 216, type: !462, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !125)
!466 = !{!458}
!467 = !DILocation(line: 0, scope: !459, inlinedAt: !468)
!468 = distinct !DILocation(line: 178, column: 58, scope: !437, inlinedAt: !454)
!469 = !DILocalVariable(name: "addr", arg: 1, scope: !470, file: !422, line: 611, type: !124)
!470 = distinct !DILexicalBlock(scope: !471, file: !422, line: 611, column: 1)
!471 = distinct !DISubprogram(name: "invalid_mut<u8>", linkageName: "_ZN4core3ptr11invalid_mut17h6e90672b55ed9083E", scope: !18, file: !422, line: 611, type: !472, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !126, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!389, !124}
!474 = !{!469}
!475 = !DILocation(line: 0, scope: !470, inlinedAt: !476)
!476 = distinct !DILocation(line: 218, column: 41, scope: !459, inlinedAt: !468)
!477 = !DILocation(line: 617, column: 14, scope: !470, inlinedAt: !476)
!478 = !DILocation(line: 178, column: 72, scope: !437, inlinedAt: !454)
!479 = !DILocation(line: 0, scope: !429, inlinedAt: !435)
!480 = !DILocation(line: 1568, column: 9, scope: !421, inlinedAt: !428)
!481 = !DILocation(line: 98, column: 9, scope: !429, inlinedAt: !435)
!482 = !DILocation(line: 0, scope: !447, inlinedAt: !454)
!483 = !DILocation(line: 182, column: 27, scope: !447, inlinedAt: !454)
!484 = !DILocation(line: 0, scope: !383, inlinedAt: !418)
!485 = !DILocalVariable(name: "new_size", arg: 3, scope: !486, file: !360, line: 135, type: !124)
!486 = distinct !DILexicalBlock(scope: !487, file: !360, line: 135, column: 1)
!487 = distinct !DISubprogram(name: "realloc", linkageName: "_ZN5alloc5alloc7realloc17h77b9fa08c1cf8f84E", scope: !203, file: !360, line: 135, type: !488, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!389, !389, !145, !124}
!490 = !{!491, !492, !485}
!491 = !DILocalVariable(name: "ptr", arg: 1, scope: !486, file: !360, line: 135, type: !389)
!492 = !DILocalVariable(name: "layout", arg: 2, scope: !486, file: !360, line: 135, type: !145)
!493 = !DILocation(line: 0, scope: !486, inlinedAt: !494)
!494 = distinct !DILocation(line: 213, column: 31, scope: !386, inlinedAt: !418)
!495 = !DILocation(line: 0, scope: !386, inlinedAt: !418)
!496 = !DILocation(line: 211, column: 36, scope: !386, inlinedAt: !418)
!497 = !DILocation(line: 211, column: 17, scope: !386, inlinedAt: !418)
!498 = !DILocation(line: 136, column: 14, scope: !486, inlinedAt: !494)
!499 = !DILocation(line: 0, scope: !388, inlinedAt: !418)
!500 = !DILocation(line: 214, column: 27, scope: !388, inlinedAt: !418)
!501 = !DILocalVariable(name: "self", arg: 1, scope: !502, file: !360, line: 240, type: !364)
!502 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h12539d2a1be46529E", scope: !361, file: !360, line: 240, type: !503, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!252, !364, !145}
!505 = !{!501, !506}
!506 = !DILocalVariable(name: "layout", arg: 2, scope: !502, file: !360, line: 240, type: !145)
!507 = !DILocation(line: 0, scope: !502, inlinedAt: !508)
!508 = distinct !DILocation(line: 495, column: 9, scope: !209)
!509 = !DILocation(line: 0, scope: !421, inlinedAt: !510)
!510 = distinct !DILocation(line: 96, column: 9, scope: !429, inlinedAt: !511)
!511 = distinct !DILocation(line: 181, column: 73, scope: !436, inlinedAt: !512)
!512 = distinct !DILocation(line: 241, column: 9, scope: !502, inlinedAt: !508)
!513 = !DILocation(line: 0, scope: !437, inlinedAt: !512)
!514 = !DILocation(line: 0, scope: !436, inlinedAt: !512)
!515 = !DILocation(line: 177, column: 9, scope: !437, inlinedAt: !512)
!516 = !DILocation(line: 0, scope: !459, inlinedAt: !517)
!517 = distinct !DILocation(line: 178, column: 58, scope: !437, inlinedAt: !512)
!518 = !DILocation(line: 0, scope: !470, inlinedAt: !519)
!519 = distinct !DILocation(line: 218, column: 41, scope: !459, inlinedAt: !517)
!520 = !DILocation(line: 617, column: 14, scope: !470, inlinedAt: !519)
!521 = !DILocation(line: 178, column: 72, scope: !437, inlinedAt: !512)
!522 = !DILocation(line: 0, scope: !429, inlinedAt: !511)
!523 = !DILocation(line: 1568, column: 9, scope: !421, inlinedAt: !510)
!524 = !DILocation(line: 98, column: 9, scope: !429, inlinedAt: !511)
!525 = !DILocation(line: 0, scope: !447, inlinedAt: !512)
!526 = !DILocation(line: 182, column: 27, scope: !447, inlinedAt: !512)
!527 = !DILocation(line: 0, scope: !251)
!528 = !DILocalVariable(name: "self", arg: 1, scope: !529, file: !286, line: 826, type: !252)
!529 = distinct !DISubprogram(name: "map_err<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError, alloc::collections::TryReserveError, alloc::raw_vec::finish_grow::{closure_env#1}<alloc::alloc::Global>>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8d248327e2d6df8fE", scope: !252, file: !286, line: 826, type: !530, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !536, declaration: !535, retainedNodes: !538)
!530 = !DISubroutineType(types: !531)
!531 = !{!106, !252, !532}
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}<alloc::alloc::Global>", scope: !304, file: !8, size: 64, align: 64, elements: !533, templateParams: !125, identifier: "b51e9ae0dd033af5c372770e85584587")
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__new_layout", scope: !532, file: !8, baseType: !464, size: 64, align: 64)
!535 = !DISubprogram(name: "map_err<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError, alloc::collections::TryReserveError, alloc::raw_vec::finish_grow::{closure_env#1}<alloc::alloc::Global>>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8d248327e2d6df8fE", scope: !252, file: !286, line: 826, type: !530, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !536)
!536 = !{!129, !261, !347, !537}
!537 = !DITemplateTypeParameter(name: "O", type: !532)
!538 = !{!528, !539, !540, !542}
!539 = !DILocalVariable(name: "op", arg: 2, scope: !529, file: !286, line: 826, type: !532)
!540 = !DILocalVariable(name: "t", scope: !541, file: !286, line: 828, type: !115, align: 8)
!541 = distinct !DILexicalBlock(scope: !529, file: !286, line: 828, column: 13)
!542 = !DILocalVariable(name: "e", scope: !543, file: !286, line: 829, type: !262, align: 1)
!543 = distinct !DILexicalBlock(scope: !529, file: !286, line: 829, column: 13)
!544 = !DILocation(line: 0, scope: !529, inlinedAt: !545)
!545 = distinct !DILocation(line: 498, column: 5, scope: !251)
!546 = !DILocation(line: 829, column: 17, scope: !543, inlinedAt: !545)
!547 = !DILocation(line: 827, column: 15, scope: !529, inlinedAt: !545)
!548 = !DILocation(line: 827, column: 9, scope: !529, inlinedAt: !545)
!549 = !DILocation(line: 0, scope: !541, inlinedAt: !545)
!550 = !DILocation(line: 828, column: 22, scope: !541, inlinedAt: !545)
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8d248327e2d6df8fE: %_0"}
!553 = distinct !{!553, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8d248327e2d6df8fE"}
!554 = !{!555}
!555 = distinct !{!555, !553, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8d248327e2d6df8fE: %op"}
!556 = !DILocation(line: 828, column: 26, scope: !529, inlinedAt: !545)
!557 = !DILocation(line: 829, column: 23, scope: !543, inlinedAt: !545)
!558 = !DILocation(line: 829, column: 32, scope: !529, inlinedAt: !545)
!559 = distinct !DISubprogram(name: "reserve_for_push<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h64c368c8ab5cf45cE", scope: !560, file: !101, line: 301, type: !579, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !578, declaration: !582, retainedNodes: !583)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<u64, alloc::alloc::Global>", scope: !102, file: !8, size: 128, align: 64, elements: !561, templateParams: !578, identifier: "56588561f4e5fb1b16ecaf879399f905")
!561 = !{!562, !576, !577}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !560, file: !8, baseType: !563, size: 64, align: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u64>", scope: !564, file: !8, size: 64, align: 64, elements: !565, templateParams: !571, identifier: "63aef0d50831c10a3e424b57e6b8a40")
!564 = !DINamespace(name: "unique", scope: !18)
!565 = !{!566, !573}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !563, file: !8, baseType: !567, size: 64, align: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u64>", scope: !116, file: !8, size: 64, align: 64, elements: !568, templateParams: !571, identifier: "e03306774b73a79e1d894e0cb896f846")
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !567, file: !8, baseType: !570, size: 64, align: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u64", baseType: !19, size: 64, align: 64, dwarfAddressSpace: 0)
!571 = !{!572}
!572 = !DITemplateTypeParameter(name: "T", type: !19)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !563, file: !8, baseType: !574, align: 8, offset: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u64>", scope: !575, file: !8, align: 8, elements: !125, templateParams: !571, identifier: "20a17b110a642970f9bff2e269193b08")
!575 = !DINamespace(name: "marker", scope: !10)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !560, file: !8, baseType: !124, size: 64, align: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !560, file: !8, baseType: !202, align: 8, offset: 128)
!578 = !{!572, !281}
!579 = !DISubroutineType(types: !580)
!580 = !{null, !581, !124}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::raw_vec::RawVec<u64, alloc::alloc::Global>", baseType: !560, size: 64, align: 64, dwarfAddressSpace: 0)
!582 = !DISubprogram(name: "reserve_for_push<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h64c368c8ab5cf45cE", scope: !560, file: !101, line: 301, type: !579, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !578)
!583 = !{!584, !585}
!584 = !DILocalVariable(name: "self", arg: 1, scope: !559, file: !101, line: 301, type: !581)
!585 = !DILocalVariable(name: "len", arg: 2, scope: !559, file: !101, line: 301, type: !124)
!586 = !DILocation(line: 0, scope: !559)
!587 = !{!588}
!588 = distinct !{!588, !589, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E: %self"}
!589 = distinct !{!589, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E"}
!590 = !DILocation(line: 302, column: 24, scope: !559)
!591 = !DILocalVariable(name: "v1", scope: !592, file: !593, line: 1273, type: !124, align: 8)
!592 = distinct !DILexicalBlock(scope: !594, file: !593, line: 1273, column: 1)
!593 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/core/src/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "0596876c8495a985e0a54f9e45f18ad0")
!594 = distinct !DISubprogram(name: "max<usize>", linkageName: "_ZN4core3cmp3max17h997a584ac82bb7f6E", scope: !9, file: !593, line: 1273, type: !595, scopeLine: 1273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !602, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!124, !124, !124}
!597 = !{!598, !600, !591, !601}
!598 = !DILocalVariable(name: "v1", arg: 1, scope: !599, file: !593, line: 1273, type: !124)
!599 = distinct !DILexicalBlock(scope: !594, file: !593, line: 1273, column: 1)
!600 = !DILocalVariable(name: "v2", arg: 2, scope: !599, file: !593, line: 1273, type: !124)
!601 = !DILocalVariable(name: "v2", arg: 2, scope: !592, file: !593, line: 1273, type: !124)
!602 = !{!603}
!603 = !DITemplateTypeParameter(name: "T", type: !124)
!604 = !DILocation(line: 0, scope: !592, inlinedAt: !605)
!605 = distinct !DILocation(line: 409, column: 19, scope: !606, inlinedAt: !647)
!606 = distinct !DILexicalBlock(scope: !607, file: !101, line: 408, column: 9)
!607 = distinct !DILexicalBlock(scope: !608, file: !101, line: 404, column: 9)
!608 = distinct !DISubprogram(name: "grow_amortized<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E", scope: !560, file: !101, line: 393, type: !609, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !578, declaration: !626, retainedNodes: !627)
!609 = !DISubroutineType(types: !610)
!610 = !{!611, !581, !124, !124}
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), alloc::collections::TryReserveError>", scope: !107, file: !8, size: 128, align: 64, elements: !612, templateParams: !125, identifier: "1e8f506b25f28e119cbc26a18daa566f")
!612 = !{!613}
!613 = !DICompositeType(tag: DW_TAG_variant_part, scope: !611, file: !8, size: 128, align: 64, elements: !614, templateParams: !125, identifier: "d76b64f23b1a2be7f32bab298aeec0e6", discriminator: !625)
!614 = !{!615, !621}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !613, file: !8, baseType: !616, size: 128, align: 64, extraData: i128 9223372036854775809)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !611, file: !8, size: 128, align: 64, elements: !617, templateParams: !619, identifier: "91721934cb0f5d3f9fb7ed4db76ccc3")
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !616, file: !8, baseType: !155, align: 8)
!619 = !{!620, !130}
!620 = !DITemplateTypeParameter(name: "T", type: !155)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !613, file: !8, baseType: !622, size: 128, align: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !611, file: !8, size: 128, align: 64, elements: !623, templateParams: !619, identifier: "7889ad4bd597b03a8488f3db3ccf864f")
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !622, file: !8, baseType: !131, size: 128, align: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !8, baseType: !19, size: 64, align: 64, flags: DIFlagArtificial)
!626 = !DISubprogram(name: "grow_amortized<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfa0879bf967e9916E", scope: !560, file: !101, line: 393, type: !609, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !578)
!627 = !{!628, !629, !630, !631, !632, !634, !636, !637, !639, !641, !643, !645}
!628 = !DILocalVariable(name: "self", arg: 1, scope: !608, file: !101, line: 393, type: !581)
!629 = !DILocalVariable(name: "len", arg: 2, scope: !608, file: !101, line: 393, type: !124)
!630 = !DILocalVariable(name: "additional", arg: 3, scope: !608, file: !101, line: 393, type: !124)
!631 = !DILocalVariable(name: "required_cap", scope: !607, file: !101, line: 404, type: !124, align: 8)
!632 = !DILocalVariable(name: "residual", scope: !633, file: !101, line: 404, type: !212, align: 8)
!633 = distinct !DILexicalBlock(scope: !608, file: !101, line: 404, column: 79)
!634 = !DILocalVariable(name: "val", scope: !635, file: !101, line: 404, type: !124, align: 8)
!635 = distinct !DILexicalBlock(scope: !608, file: !101, line: 404, column: 28)
!636 = !DILocalVariable(name: "cap", scope: !606, file: !101, line: 408, type: !124, align: 8)
!637 = !DILocalVariable(name: "cap", scope: !638, file: !101, line: 409, type: !124, align: 8)
!638 = distinct !DILexicalBlock(scope: !606, file: !101, line: 409, column: 9)
!639 = !DILocalVariable(name: "new_layout", scope: !640, file: !101, line: 411, type: !162, align: 8)
!640 = distinct !DILexicalBlock(scope: !638, file: !101, line: 411, column: 9)
!641 = !DILocalVariable(name: "ptr", scope: !642, file: !101, line: 414, type: !115, align: 8)
!642 = distinct !DILexicalBlock(scope: !640, file: !101, line: 414, column: 9)
!643 = !DILocalVariable(name: "residual", scope: !644, file: !101, line: 414, type: !235, align: 8)
!644 = distinct !DILexicalBlock(scope: !640, file: !101, line: 414, column: 82)
!645 = !DILocalVariable(name: "val", scope: !646, file: !101, line: 414, type: !115, align: 8)
!646 = distinct !DILexicalBlock(scope: !640, file: !101, line: 414, column: 19)
!647 = distinct !DILocation(line: 302, column: 24, scope: !559)
!648 = !DILocalVariable(name: "self", scope: !649, file: !593, line: 826, type: !124, align: 8)
!649 = distinct !DILexicalBlock(scope: !650, file: !593, line: 826, column: 5)
!650 = distinct !DISubprogram(name: "max<usize>", linkageName: "_ZN4core3cmp3Ord3max17hf0ed9832a32278fbE", scope: !651, file: !593, line: 826, type: !595, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !657, retainedNodes: !652)
!651 = !DINamespace(name: "Ord", scope: !9)
!652 = !{!653, !655, !648, !656}
!653 = !DILocalVariable(name: "self", arg: 1, scope: !654, file: !593, line: 826, type: !124)
!654 = distinct !DILexicalBlock(scope: !650, file: !593, line: 826, column: 5)
!655 = !DILocalVariable(name: "other", arg: 2, scope: !654, file: !593, line: 826, type: !124)
!656 = !DILocalVariable(name: "other", arg: 2, scope: !649, file: !593, line: 826, type: !124)
!657 = !{!658}
!658 = !DITemplateTypeParameter(name: "Self", type: !124)
!659 = !DILocation(line: 0, scope: !649, inlinedAt: !660)
!660 = distinct !DILocation(line: 1274, column: 8, scope: !592, inlinedAt: !605)
!661 = !DILocalVariable(name: "self", arg: 1, scope: !662, file: !101, line: 378, type: !581)
!662 = distinct !DILexicalBlock(scope: !663, file: !101, line: 378, column: 5)
!663 = distinct !DISubprogram(name: "set_ptr_and_cap<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h735586866e8c390fE", scope: !560, file: !101, line: 378, type: !664, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !578, declaration: !666, retainedNodes: !667)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !581, !115, !124}
!666 = !DISubprogram(name: "set_ptr_and_cap<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h735586866e8c390fE", scope: !560, file: !101, line: 378, type: !664, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !578)
!667 = !{!661, !668, !669}
!668 = !DILocalVariable(name: "ptr", arg: 2, scope: !662, file: !101, line: 378, type: !115)
!669 = !DILocalVariable(name: "cap", arg: 3, scope: !662, file: !101, line: 378, type: !124)
!670 = !DILocation(line: 0, scope: !662, inlinedAt: !671)
!671 = distinct !DILocation(line: 415, column: 14, scope: !642, inlinedAt: !647)
!672 = !DILocation(line: 0, scope: !608, inlinedAt: !647)
!673 = !DILocalVariable(name: "self", arg: 1, scope: !674, file: !675, line: 1269, type: !124)
!674 = !DILexicalBlockFile(scope: !676, file: !675, discriminator: 0)
!675 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/core/src/num/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "6c7ddcd36fde02899f44916751cb2109")
!676 = distinct !DILexicalBlock(scope: !678, file: !677, line: 1520, column: 9)
!677 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "77985b69d8b96d3837a96dc7438f1392")
!678 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hfa3a66f4a4bc5692E", scope: !679, file: !677, line: 1520, type: !681, scopeLine: 1520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !687)
!679 = !DINamespace(name: "{impl#11}", scope: !680)
!680 = !DINamespace(name: "num", scope: !10)
!681 = !DISubroutineType(types: !682)
!682 = !{!683, !124, !124}
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !8, size: 128, align: 64, elements: !684, templateParams: !125, identifier: "3455e5ba91d322de931b901b9c5e965e")
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !683, file: !8, baseType: !124, size: 64, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !683, file: !8, baseType: !375, size: 8, align: 8, offset: 64)
!687 = !{!673, !688, !689, !692}
!688 = !DILocalVariable(name: "rhs", arg: 2, scope: !674, file: !675, line: 1269, type: !124)
!689 = !DILocalVariable(name: "a", scope: !690, file: !675, line: 1269, type: !19, align: 8)
!690 = !DILexicalBlockFile(scope: !691, file: !675, discriminator: 0)
!691 = distinct !DILexicalBlock(scope: !676, file: !677, line: 1521, column: 13)
!692 = !DILocalVariable(name: "b", scope: !690, file: !675, line: 1269, type: !375, align: 1)
!693 = !DILocation(line: 0, scope: !674, inlinedAt: !694)
!694 = distinct !DILocation(line: 461, column: 31, scope: !695, inlinedAt: !718)
!695 = distinct !DILexicalBlock(scope: !696, file: !677, line: 460, column: 9)
!696 = distinct !DISubprogram(name: "checked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h709cab3d6db31e1fE", scope: !679, file: !677, line: 460, type: !697, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !710)
!697 = !DISubroutineType(types: !698)
!698 = !{!699, !124, !124}
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !180, file: !8, size: 128, align: 64, elements: !700, templateParams: !125, identifier: "d197b1085afd8832eb63e54baf0e3b15")
!700 = !{!701}
!701 = !DICompositeType(tag: DW_TAG_variant_part, scope: !699, file: !8, size: 128, align: 64, elements: !702, templateParams: !125, identifier: "86cde732ab4974ec32c24c5adbbae52e", discriminator: !709)
!702 = !{!703, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !701, file: !8, baseType: !704, size: 128, align: 64, extraData: i128 0)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !699, file: !8, size: 128, align: 64, elements: !125, templateParams: !602, identifier: "f693554150822393ac804760deb57410")
!705 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !701, file: !8, baseType: !706, size: 128, align: 64, extraData: i128 1)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !699, file: !8, size: 128, align: 64, elements: !707, templateParams: !602, identifier: "12ea2f4d07b4502c670027c663c30f2e")
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !706, file: !8, baseType: !124, size: 64, align: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !699, file: !8, baseType: !19, size: 64, align: 64, flags: DIFlagArtificial)
!710 = !{!711, !713, !714, !717}
!711 = !DILocalVariable(name: "self", arg: 1, scope: !712, file: !675, line: 1269, type: !124)
!712 = !DILexicalBlockFile(scope: !695, file: !675, discriminator: 0)
!713 = !DILocalVariable(name: "rhs", arg: 2, scope: !712, file: !675, line: 1269, type: !124)
!714 = !DILocalVariable(name: "a", scope: !715, file: !675, line: 1269, type: !124, align: 8)
!715 = !DILexicalBlockFile(scope: !716, file: !675, discriminator: 0)
!716 = distinct !DILexicalBlock(scope: !695, file: !677, line: 461, column: 13)
!717 = !DILocalVariable(name: "b", scope: !715, file: !675, line: 1269, type: !375, align: 1)
!718 = distinct !DILocation(line: 404, column: 32, scope: !608, inlinedAt: !647)
!719 = !DILocalVariable(name: "self", arg: 1, scope: !720, file: !286, line: 1945, type: !106)
!720 = distinct !DILexicalBlock(scope: !721, file: !286, line: 1945, column: 5)
!721 = distinct !DISubprogram(name: "branch<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", linkageName: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdec6b2be21c16736E", scope: !722, file: !286, line: 1945, type: !723, scopeLine: 1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !128, retainedNodes: !743)
!722 = !DINamespace(name: "{impl#26}", scope: !107)
!723 = !DISubroutineType(types: !724)
!724 = !{!725, !106}
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>", scope: !726, file: !8, size: 192, align: 64, elements: !728, templateParams: !125, identifier: "d7c7655eccee416ac18b454d210c1e1a")
!726 = !DINamespace(name: "control_flow", scope: !727)
!727 = !DINamespace(name: "ops", scope: !10)
!728 = !{!729}
!729 = !DICompositeType(tag: DW_TAG_variant_part, scope: !725, file: !8, size: 192, align: 64, elements: !730, templateParams: !125, identifier: "280e8cac36a3e29bb73edf2461b949ae", discriminator: !742)
!730 = !{!731, !738}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !729, file: !8, baseType: !732, size: 192, align: 64, extraData: i128 0)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !725, file: !8, size: 192, align: 64, elements: !733, templateParams: !735, identifier: "36409c8dc6f77b76e0295c13ac7d709b")
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !732, file: !8, baseType: !115, size: 128, align: 64, offset: 64)
!735 = !{!736, !737}
!736 = !DITemplateTypeParameter(name: "B", type: !235)
!737 = !DITemplateTypeParameter(name: "C", type: !115)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !729, file: !8, baseType: !739, size: 192, align: 64, extraData: i128 1)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !725, file: !8, size: 192, align: 64, elements: !740, templateParams: !735, identifier: "36f31f9848661304cf0c4820c47b0681")
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !739, file: !8, baseType: !235, size: 128, align: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !8, baseType: !19, size: 64, align: 64, flags: DIFlagArtificial)
!743 = !{!719, !744, !746}
!744 = !DILocalVariable(name: "v", scope: !745, file: !286, line: 1947, type: !115, align: 8)
!745 = distinct !DILexicalBlock(scope: !720, file: !286, line: 1947, column: 13)
!746 = !DILocalVariable(name: "e", scope: !747, file: !286, line: 1948, type: !131, align: 8)
!747 = distinct !DILexicalBlock(scope: !720, file: !286, line: 1948, column: 13)
!748 = !DILocation(line: 1945, column: 15, scope: !720, inlinedAt: !749)
!749 = distinct !DILocation(line: 414, column: 19, scope: !640, inlinedAt: !647)
!750 = !DILocation(line: 1269, column: 5, scope: !674, inlinedAt: !694)
!751 = !DILocation(line: 404, column: 28, scope: !608, inlinedAt: !647)
!752 = !DILocation(line: 0, scope: !654, inlinedAt: !753)
!753 = distinct !DILocation(line: 1274, column: 8, scope: !599, inlinedAt: !754)
!754 = distinct !DILocation(line: 408, column: 19, scope: !607, inlinedAt: !647)
!755 = !DILocation(line: 0, scope: !599, inlinedAt: !754)
!756 = !DILocation(line: 0, scope: !607, inlinedAt: !647)
!757 = !DILocation(line: 408, column: 28, scope: !607, inlinedAt: !647)
!758 = !DILocalVariable(name: "v1", arg: 1, scope: !759, file: !593, line: 1295, type: !124)
!759 = distinct !DISubprogram(name: "max_by<usize, fn(&usize, &usize) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6max_by17hfbd70c925fe0be4bE", scope: !9, file: !593, line: 1295, type: !760, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !768, retainedNodes: !765)
!760 = !DISubroutineType(types: !761)
!761 = !{!124, !124, !124, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&usize, &usize) -> core::cmp::Ordering", baseType: !763, align: 1, dwarfAddressSpace: 0)
!763 = !DISubroutineType(types: !764)
!764 = !{!7, !275, !275}
!765 = !{!758, !766, !767}
!766 = !DILocalVariable(name: "v2", arg: 2, scope: !759, file: !593, line: 1295, type: !124)
!767 = !DILocalVariable(name: "compare", arg: 3, scope: !759, file: !593, line: 1295, type: !762)
!768 = !{!603, !769}
!769 = !DITemplateTypeParameter(name: "F", type: !762)
!770 = !DILocation(line: 0, scope: !759, inlinedAt: !771)
!771 = distinct !DILocation(line: 830, column: 9, scope: !654, inlinedAt: !753)
!772 = !DILocation(line: 1295, column: 63, scope: !759, inlinedAt: !771)
!773 = !DILocation(line: 0, scope: !606, inlinedAt: !647)
!774 = !DILocation(line: 0, scope: !759, inlinedAt: !775)
!775 = distinct !DILocation(line: 830, column: 9, scope: !649, inlinedAt: !660)
!776 = !DILocation(line: 1295, column: 63, scope: !759, inlinedAt: !775)
!777 = !DILocalVariable(name: "n", arg: 1, scope: !778, file: !460, line: 433, type: !124)
!778 = distinct !DILexicalBlock(scope: !779, file: !460, line: 433, column: 5)
!779 = distinct !DISubprogram(name: "array<u64>", linkageName: "_ZN4core5alloc6layout6Layout5array17hd9790a28e7156facE", scope: !145, file: !460, line: 433, type: !780, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !571, declaration: !782, retainedNodes: !783)
!780 = !DISubroutineType(types: !781)
!781 = !{!162, !124}
!782 = !DISubprogram(name: "array<u64>", linkageName: "_ZN4core5alloc6layout6Layout5array17hd9790a28e7156facE", scope: !145, file: !460, line: 433, type: !780, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !571)
!783 = !{!777}
!784 = !DILocation(line: 0, scope: !778, inlinedAt: !785)
!785 = distinct !DILocation(line: 411, column: 26, scope: !638, inlinedAt: !647)
!786 = !DILocation(line: 0, scope: !638, inlinedAt: !647)
!787 = !DILocalVariable(name: "element_size", arg: 1, scope: !788, file: !460, line: 439, type: !124)
!788 = distinct !DISubprogram(name: "inner", linkageName: "_ZN4core5alloc6layout6Layout5array5inner17hbbbc2b8c392be834E", scope: !789, file: !460, line: 438, type: !791, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !793)
!789 = !DINamespace(name: "array", scope: !790)
!790 = !DINamespace(name: "{impl#0}", scope: !146)
!791 = !DISubroutineType(types: !792)
!792 = !{!162, !124, !151, !124}
!793 = !{!787, !794, !795, !796}
!794 = !DILocalVariable(name: "align", arg: 2, scope: !788, file: !460, line: 440, type: !151)
!795 = !DILocalVariable(name: "n", arg: 3, scope: !788, file: !460, line: 441, type: !124)
!796 = !DILocalVariable(name: "array_size", scope: !797, file: !460, line: 453, type: !124, align: 8)
!797 = distinct !DILexicalBlock(scope: !788, file: !460, line: 453, column: 13)
!798 = !DILocation(line: 0, scope: !788, inlinedAt: !799)
!799 = distinct !DILocation(line: 435, column: 16, scope: !778, inlinedAt: !785)
!800 = !DILocation(line: 449, column: 37, scope: !788, inlinedAt: !799)
!801 = !DILocation(line: 0, scope: !640, inlinedAt: !647)
!802 = !DILocation(line: 414, column: 19, scope: !640, inlinedAt: !647)
!803 = !DILocation(line: 414, column: 43, scope: !640, inlinedAt: !647)
!804 = !{!805}
!805 = distinct !{!805, !806, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE: %_0"}
!806 = distinct !{!806, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE"}
!807 = !{!808}
!808 = distinct !{!808, !806, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE: %self"}
!809 = !DILocalVariable(name: "self", arg: 1, scope: !810, file: !101, line: 239, type: !813)
!810 = distinct !DISubprogram(name: "current_memory<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE", scope: !560, file: !101, line: 239, type: !811, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !578, declaration: !814, retainedNodes: !815)
!811 = !DISubroutineType(types: !812)
!812 = !{!179, !813}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<u64, alloc::alloc::Global>", baseType: !560, size: 64, align: 64, dwarfAddressSpace: 0)
!814 = !DISubprogram(name: "current_memory<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE", scope: !560, file: !101, line: 239, type: !811, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !578)
!815 = !{!809, !816, !818, !820}
!816 = !DILocalVariable(name: "align", scope: !817, file: !101, line: 249, type: !124, align: 8)
!817 = distinct !DILexicalBlock(scope: !810, file: !101, line: 249, column: 17)
!818 = !DILocalVariable(name: "size", scope: !819, file: !101, line: 250, type: !124, align: 8)
!819 = distinct !DILexicalBlock(scope: !817, file: !101, line: 250, column: 17)
!820 = !DILocalVariable(name: "layout", scope: !821, file: !101, line: 251, type: !145, align: 8)
!821 = distinct !DILexicalBlock(scope: !819, file: !101, line: 251, column: 17)
!822 = !DILocation(line: 0, scope: !810, inlinedAt: !823)
!823 = distinct !DILocation(line: 414, column: 43, scope: !640, inlinedAt: !647)
!824 = !DILocation(line: 240, column: 25, scope: !810, inlinedAt: !823)
!825 = !DILocation(line: 241, column: 13, scope: !810, inlinedAt: !823)
!826 = !{!808, !588}
!827 = !DILocation(line: 240, column: 9, scope: !810, inlinedAt: !823)
!828 = !DILocation(line: 0, scope: !817, inlinedAt: !823)
!829 = !DILocalVariable(name: "self", arg: 1, scope: !830, file: !675, line: 1269, type: !124)
!830 = !DILexicalBlockFile(scope: !831, file: !675, discriminator: 0)
!831 = distinct !DILexicalBlock(scope: !832, file: !677, line: 601, column: 9)
!832 = distinct !DISubprogram(name: "unchecked_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_mul17hac9eee35bc0d7d5dE", scope: !679, file: !677, line: 601, type: !595, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !833)
!833 = !{!829, !834}
!834 = !DILocalVariable(name: "rhs", arg: 2, scope: !830, file: !675, line: 1269, type: !124)
!835 = !DILocation(line: 0, scope: !830, inlinedAt: !836)
!836 = distinct !DILocation(line: 250, column: 48, scope: !817, inlinedAt: !823)
!837 = !DILocation(line: 1269, column: 5, scope: !830, inlinedAt: !836)
!838 = !DILocation(line: 0, scope: !819, inlinedAt: !823)
!839 = !DILocation(line: 0, scope: !821, inlinedAt: !823)
!840 = !DILocation(line: 252, column: 23, scope: !821, inlinedAt: !823)
!841 = !DILocation(line: 252, column: 17, scope: !821, inlinedAt: !823)
!842 = !DILocation(line: 414, column: 81, scope: !640, inlinedAt: !647)
!843 = !DILocation(line: 1946, column: 15, scope: !720, inlinedAt: !749)
!844 = !{i64 0, i64 2}
!845 = !DILocation(line: 1946, column: 9, scope: !720, inlinedAt: !749)
!846 = !DILocation(line: 0, scope: !642, inlinedAt: !647)
!847 = !DILocation(line: 382, column: 9, scope: !662, inlinedAt: !671)
!848 = !DILocation(line: 383, column: 9, scope: !662, inlinedAt: !671)
!849 = !DILocalVariable(name: "result", arg: 1, scope: !850, file: !101, line: 513, type: !611)
!850 = distinct !DISubprogram(name: "handle_reserve", linkageName: "_ZN5alloc7raw_vec14handle_reserve17h48ca5d16756bfe57E", scope: !102, file: !101, line: 513, type: !851, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !611}
!853 = !{!849, !854}
!854 = !DILocalVariable(name: "layout", scope: !855, file: !101, line: 516, type: !145, align: 8)
!855 = distinct !DILexicalBlock(scope: !850, file: !101, line: 516, column: 9)
!856 = !DILocation(line: 0, scope: !850, inlinedAt: !857)
!857 = distinct !DILocation(line: 302, column: 9, scope: !559)
!858 = !DILocation(line: 514, column: 5, scope: !850, inlinedAt: !857)
!859 = !DILocation(line: 515, column: 34, scope: !850, inlinedAt: !857)
!860 = !DILocation(line: 0, scope: !855, inlinedAt: !857)
!861 = !DILocation(line: 516, column: 43, scope: !855, inlinedAt: !857)
!862 = !DILocation(line: 303, column: 6, scope: !559)
!863 = distinct !DISubprogram(name: "prime_factors", linkageName: "_ZN13prime_factors13prime_factors17h828e6070e337ed09E", scope: !865, file: !864, line: 1, type: !866, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !873)
!864 = !DIFile(filename: "prime_factors.rs", directory: "/Users/staefsn/Develop/2023-12-llvm-social/zero-to-rust-jit", checksumkind: CSK_MD5, checksum: "05b747c5a683209c4a47e7a18b4c2836")
!865 = !DINamespace(name: "prime_factors", scope: null)
!866 = !DISubroutineType(types: !867)
!867 = !{!868, !19}
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<u64, alloc::alloc::Global>", scope: !869, file: !8, size: 192, align: 64, elements: !870, templateParams: !578, identifier: "6538cbcf290b6cee99466bbe0b701dca")
!869 = !DINamespace(name: "vec", scope: !103)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !868, file: !8, baseType: !560, size: 128, align: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !868, file: !8, baseType: !124, size: 64, align: 64, offset: 128)
!873 = !{!874, !875, !877}
!874 = !DILocalVariable(name: "n", arg: 1, scope: !863, file: !864, line: 1, type: !19)
!875 = !DILocalVariable(name: "factors", scope: !876, file: !864, line: 2, type: !868, align: 8)
!876 = distinct !DILexicalBlock(scope: !863, file: !864, line: 2, column: 5)
!877 = !DILocalVariable(name: "candidate", scope: !878, file: !864, line: 3, type: !19, align: 8)
!878 = distinct !DILexicalBlock(scope: !876, file: !864, line: 3, column: 5)
!879 = !DILocation(line: 0, scope: !863)
!880 = !DILocation(line: 2, column: 9, scope: !876)
!881 = !DILocation(line: 2, column: 9, scope: !863)
!882 = !DILocation(line: 421, column: 9, scope: !883, inlinedAt: !889)
!883 = distinct !DILexicalBlock(scope: !885, file: !884, line: 420, column: 5)
!884 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/alloc/src/vec/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "4f40b56526736d64af8949299398eed9")
!885 = distinct !DISubprogram(name: "new<u64>", linkageName: "_ZN5alloc3vec12Vec$LT$T$GT$3new17h687fa8e5c2c78cacE", scope: !868, file: !884, line: 420, type: !886, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !571, declaration: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{!868}
!888 = !DISubprogram(name: "new<u64>", linkageName: "_ZN5alloc3vec12Vec$LT$T$GT$3new17h687fa8e5c2c78cacE", scope: !868, file: !884, line: 420, type: !886, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !571)
!889 = !DILocation(line: 2, column: 23, scope: !863)
!890 = !DILocation(line: 0, scope: !878)
!891 = !DILocation(line: 5, column: 11, scope: !878)
!892 = !DILocation(line: 6, column: 15, scope: !878)
!893 = !{!"branch_weights", i32 1, i32 2000}
!894 = !DILocation(line: 13, column: 5, scope: !878)
!895 = !DILocation(line: 14, column: 1, scope: !863)
!896 = !DILocation(line: 14, column: 2, scope: !863)
!897 = !{!898}
!898 = distinct !{!898, !899, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hd7ce11266813c5b9E: %_1"}
!899 = distinct !{!899, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hd7ce11266813c5b9E"}
!900 = !DILocalVariable(arg: 1, scope: !901, file: !422, line: 498, type: !904)
!901 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<u64, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u64$GT$$GT$17hd7ce11266813c5b9E", scope: !18, file: !422, line: 498, type: !902, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !906, retainedNodes: !905)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut alloc::vec::Vec<u64, alloc::alloc::Global>", baseType: !868, size: 64, align: 64, dwarfAddressSpace: 0)
!905 = !{!900}
!906 = !{!907}
!907 = !DITemplateTypeParameter(name: "T", type: !868)
!908 = !DILocation(line: 0, scope: !901, inlinedAt: !909)
!909 = distinct !DILocation(line: 14, column: 1, scope: !863)
!910 = !{!911}
!911 = distinct !{!911, !912, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17hdebd27d655486e01E: %_1"}
!912 = distinct !{!912, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17hdebd27d655486e01E"}
!913 = !DILocation(line: 498, column: 1, scope: !901, inlinedAt: !909)
!914 = !DILocalVariable(arg: 1, scope: !915, file: !422, line: 498, type: !918)
!915 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<u64, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u64$GT$$GT$17hdebd27d655486e01E", scope: !18, file: !422, line: 498, type: !916, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !920, retainedNodes: !919)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut alloc::raw_vec::RawVec<u64, alloc::alloc::Global>", baseType: !560, size: 64, align: 64, dwarfAddressSpace: 0)
!919 = !{!914}
!920 = !{!921}
!921 = !DITemplateTypeParameter(name: "T", type: !560)
!922 = !DILocation(line: 0, scope: !915, inlinedAt: !923)
!923 = distinct !DILocation(line: 498, column: 1, scope: !901, inlinedAt: !909)
!924 = !{!925}
!925 = distinct !{!925, !926, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5519c5787107a827E: %self"}
!926 = distinct !{!926, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5519c5787107a827E"}
!927 = !DILocation(line: 498, column: 1, scope: !915, inlinedAt: !923)
!928 = !DILocalVariable(name: "self", arg: 1, scope: !929, file: !101, line: 503, type: !581)
!929 = distinct !DISubprogram(name: "drop<u64, alloc::alloc::Global>", linkageName: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5519c5787107a827E", scope: !930, file: !101, line: 503, type: !931, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !578, retainedNodes: !933)
!930 = !DINamespace(name: "{impl#3}", scope: !102)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !581}
!933 = !{!928, !934, !936}
!934 = !DILocalVariable(name: "ptr", scope: !935, file: !101, line: 504, type: !191, align: 8)
!935 = distinct !DILexicalBlock(scope: !929, file: !101, line: 504, column: 60)
!936 = !DILocalVariable(name: "layout", scope: !935, file: !101, line: 504, type: !145, align: 8)
!937 = !DILocation(line: 0, scope: !929, inlinedAt: !938)
!938 = distinct !DILocation(line: 498, column: 1, scope: !915, inlinedAt: !923)
!939 = !DILocation(line: 0, scope: !810, inlinedAt: !940)
!940 = distinct !DILocation(line: 504, column: 38, scope: !935, inlinedAt: !938)
!941 = !DILocation(line: 240, column: 25, scope: !810, inlinedAt: !940)
!942 = !{!943, !925, !911, !898}
!943 = distinct !{!943, !944, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE: %self"}
!944 = distinct !{!944, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE"}
!945 = !{!946}
!946 = distinct !{!946, !944, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hb68d70f2332bb1fcE: %_0"}
!947 = !DILocation(line: 0, scope: !817, inlinedAt: !940)
!948 = !DILocation(line: 0, scope: !830, inlinedAt: !949)
!949 = distinct !DILocation(line: 250, column: 48, scope: !817, inlinedAt: !940)
!950 = !DILocation(line: 0, scope: !819, inlinedAt: !940)
!951 = !DILocation(line: 0, scope: !821, inlinedAt: !940)
!952 = !DILocation(line: 0, scope: !935, inlinedAt: !938)
!953 = !DILocalVariable(name: "layout", arg: 3, scope: !954, file: !360, line: 250, type: !145)
!954 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h9e2174bc287cae1dE", scope: !361, file: !360, line: 250, type: !955, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !957)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !364, !191, !145}
!957 = !{!958, !959, !953}
!958 = !DILocalVariable(name: "self", arg: 1, scope: !954, file: !360, line: 250, type: !364)
!959 = !DILocalVariable(name: "ptr", arg: 2, scope: !954, file: !360, line: 250, type: !191)
!960 = !DILocation(line: 0, scope: !954, inlinedAt: !961)
!961 = distinct !DILocation(line: 505, column: 22, scope: !935, inlinedAt: !938)
!962 = !DILocation(line: 1269, column: 5, scope: !830, inlinedAt: !949)
!963 = !DILocation(line: 252, column: 23, scope: !821, inlinedAt: !940)
!964 = !DILocalVariable(name: "ptr", arg: 1, scope: !965, file: !360, line: 116, type: !389)
!965 = distinct !DILexicalBlock(scope: !966, file: !360, line: 116, column: 1)
!966 = distinct !DISubprogram(name: "dealloc", linkageName: "_ZN5alloc5alloc7dealloc17h8f8b989ecedd551fE", scope: !203, file: !360, line: 116, type: !967, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !125, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !389, !145}
!969 = !{!964, !970}
!970 = !DILocalVariable(name: "layout", arg: 2, scope: !965, file: !360, line: 116, type: !145)
!971 = !DILocation(line: 0, scope: !965, inlinedAt: !972)
!972 = distinct !DILocation(line: 254, column: 22, scope: !954, inlinedAt: !961)
!973 = !DILocation(line: 117, column: 14, scope: !965, inlinedAt: !972)
!974 = !{!925, !911, !898}
!975 = !DILocation(line: 251, column: 9, scope: !954, inlinedAt: !961)
!976 = !{!977}
!977 = distinct !{!977, !978, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he2eacc0a4f031040E: %self"}
!978 = distinct !{!978, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he2eacc0a4f031040E"}
!979 = !DILocation(line: 7, column: 13, scope: !878)
!980 = !DILocalVariable(name: "self", arg: 1, scope: !981, file: !884, line: 1323, type: !986)
!981 = distinct !DILexicalBlock(scope: !982, file: !884, line: 1323, column: 5)
!982 = distinct !DISubprogram(name: "as_mut_ptr<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he141fc3a2127b4deE", scope: !868, file: !884, line: 1323, type: !983, scopeLine: 1323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !578, declaration: !987, retainedNodes: !988)
!983 = !DISubroutineType(types: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u64", baseType: !19, size: 64, align: 64, dwarfAddressSpace: 0)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::Vec<u64, alloc::alloc::Global>", baseType: !868, size: 64, align: 64, dwarfAddressSpace: 0)
!987 = !DISubprogram(name: "as_mut_ptr<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he141fc3a2127b4deE", scope: !868, file: !884, line: 1323, type: !983, scopeLine: 1323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !578)
!988 = !{!980}
!989 = !DILocation(line: 0, scope: !981, inlinedAt: !990)
!990 = distinct !DILocation(line: 1887, column: 28, scope: !991, inlinedAt: !1000)
!991 = distinct !DISubprogram(name: "push<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he2eacc0a4f031040E", scope: !868, file: !884, line: 1880, type: !992, scopeLine: 1880, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !578, declaration: !994, retainedNodes: !995)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !986, !19}
!994 = !DISubprogram(name: "push<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he2eacc0a4f031040E", scope: !868, file: !884, line: 1880, type: !992, scopeLine: 1880, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !578)
!995 = !{!996, !997, !998}
!996 = !DILocalVariable(name: "self", arg: 1, scope: !991, file: !884, line: 1880, type: !986)
!997 = !DILocalVariable(name: "value", arg: 2, scope: !991, file: !884, line: 1880, type: !19)
!998 = !DILocalVariable(name: "end", scope: !999, file: !884, line: 1887, type: !985, align: 8)
!999 = distinct !DILexicalBlock(scope: !991, file: !884, line: 1887, column: 13)
!1000 = distinct !DILocation(line: 7, column: 13, scope: !878)
!1001 = !DILocation(line: 0, scope: !991, inlinedAt: !1000)
!1002 = !DILocalVariable(name: "self", arg: 1, scope: !1003, file: !101, line: 230, type: !813)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !101, line: 230, column: 5)
!1004 = distinct !DISubprogram(name: "capacity<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8capacity17h834d0130df1c2452E", scope: !560, file: !101, line: 230, type: !1005, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !578, declaration: !1007, retainedNodes: !1008)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!124, !813}
!1007 = !DISubprogram(name: "capacity<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8capacity17h834d0130df1c2452E", scope: !560, file: !101, line: 230, type: !1005, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !578)
!1008 = !{!1002}
!1009 = !DILocation(line: 0, scope: !1003, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 1883, column: 33, scope: !991, inlinedAt: !1000)
!1011 = !DILocation(line: 231, column: 44, scope: !1003, inlinedAt: !1010)
!1012 = !DILocation(line: 1883, column: 12, scope: !991, inlinedAt: !1000)
!1013 = !DILocation(line: 1884, column: 13, scope: !991, inlinedAt: !1000)
!1014 = !DILocation(line: 1887, column: 45, scope: !991, inlinedAt: !1000)
!1015 = !DILocation(line: 223, column: 9, scope: !1016, inlinedAt: !1023)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !101, line: 222, column: 5)
!1017 = distinct !DISubprogram(name: "ptr<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h99700f2f6f043941E", scope: !560, file: !101, line: 222, type: !1018, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !578, declaration: !1020, retainedNodes: !1021)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!985, !813}
!1020 = !DISubprogram(name: "ptr<u64, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h99700f2f6f043941E", scope: !560, file: !101, line: 222, type: !1018, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !578)
!1021 = !{!1022}
!1022 = !DILocalVariable(name: "self", arg: 1, scope: !1016, file: !101, line: 222, type: !813)
!1023 = distinct !DILocation(line: 1326, column: 18, scope: !981, inlinedAt: !990)
!1024 = !DILocation(line: 10, column: 9, scope: !878)
!1025 = !DILocation(line: 0, scope: !1016, inlinedAt: !1023)
!1026 = !DILocalVariable(name: "self", arg: 1, scope: !1027, file: !1028, line: 1039, type: !985)
!1027 = distinct !DILexicalBlock(scope: !1029, file: !1028, line: 1039, column: 5)
!1028 = !DIFile(filename: "/rustc/3a85a5cfe7884f94e3cb29a606913d7989ad9b48/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "022c1174ed351e3e4fb0ab632ee6a10a")
!1029 = distinct !DISubprogram(name: "add<u64>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h5acfa3cf0c29d12fE", scope: !1030, file: !1028, line: 1039, type: !1032, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !571, retainedNodes: !1034)
!1030 = !DINamespace(name: "{impl#0}", scope: !1031)
!1031 = !DINamespace(name: "mut_ptr", scope: !18)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!985, !985, !124}
!1034 = !{!1026, !1035}
!1035 = !DILocalVariable(name: "count", arg: 2, scope: !1027, file: !1028, line: 1039, type: !124)
!1036 = !DILocation(line: 0, scope: !1027, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 1887, column: 41, scope: !991, inlinedAt: !1000)
!1038 = !DILocation(line: 1044, column: 18, scope: !1027, inlinedAt: !1037)
!1039 = !DILocalVariable(name: "dst", arg: 1, scope: !1040, file: !422, line: 1383, type: !985)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !422, line: 1383, column: 1)
!1041 = distinct !DISubprogram(name: "write<u64>", linkageName: "_ZN4core3ptr5write17hc82c29d3a0883502E", scope: !18, file: !422, line: 1383, type: !1042, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !571, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !985, !19}
!1044 = !{!1039, !1045}
!1045 = !DILocalVariable(name: "src", arg: 2, scope: !1040, file: !422, line: 1383, type: !19)
!1046 = !DILocation(line: 0, scope: !1040, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 1888, column: 13, scope: !999, inlinedAt: !1000)
!1048 = !DILocation(line: 0, scope: !999, inlinedAt: !1000)
!1049 = !DILocation(line: 1400, column: 9, scope: !1040, inlinedAt: !1047)
!1050 = !DILocation(line: 1889, column: 13, scope: !999, inlinedAt: !1000)
!1051 = !DILocation(line: 8, column: 13, scope: !878)
!1052 = !DILocation(line: 1, column: 1, scope: !863)

^0 = module: (path: "zero-to-rust-jit/build/prime_factors_rs.bc", hash: (2258526172, 1641913549, 3773902806, 1847529638, 1328337089))
^1 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17he5a37e3de770ae93E") ; guid = 2605650299373521854
^2 = gv: (name: "llvm.memcpy.p0.p0.i64") ; guid = 2699563562842851132
^3 = gv: (name: "_ZN4core9panicking5panic17hbabdc6a4f6b38581E") ; guid = 3033838370663142927
^4 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^5 = gv: (name: "llvm.lifetime.start.p0") ; guid = 4736283418132453162
^6 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^7 = gv: (name: "llvm.dbg.value") ; guid = 7457163675545648777
^8 = gv: (name: "llvm.experimental.noalias.scope.decl") ; guid = 8095543252637616711
^9 = gv: (name: "_ZN13prime_factors13prime_factors17h828e6070e337ed09E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 65, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^3), (callee: ^4), (callee: ^12)), refs: (^21, ^13, ^11)))) ; guid = 10084786374391784161
^10 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^11 = gv: (name: "alloc_539ad61624b54118bba6c2eeef947f5a", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^23)))) ; guid = 10645026469537762696
^12 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h64c368c8ab5cf45cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^20), (callee: ^14), (callee: ^1)), refs: (^21)))) ; guid = 11039420236151670254
^13 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12224822929026817262
^14 = gv: (name: "_ZN5alloc7raw_vec17capacity_overflow17h6ac1a41ac007777eE") ; guid = 12673253189309399085
^15 = gv: (name: "llvm.memset.p0.i64") ; guid = 12767501690323846396
^16 = gv: (name: "llvm.lifetime.end.p0") ; guid = 13244677477227836793
^17 = gv: (name: "llvm.dbg.declare") ; guid = 13513223491971101989
^18 = gv: (name: "__rust_no_alloc_shim_is_unstable") ; guid = 13822087122343762216
^19 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^20 = gv: (name: "_ZN5alloc7raw_vec11finish_grow17h3b7527282e164c16E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 51, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^10), (callee: ^22)), refs: (^18)))) ; guid = 14486727132807678244
^21 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^22 = gv: (name: "__rust_realloc") ; guid = 15507136812573830794
^23 = gv: (name: "alloc_f3f2c5c573da7ee29de90bfe7e3e80e0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15640422404466058151
^24 = gv: (name: "llvm.umax.i64") ; guid = 16918396447761400868
^25 = blockcount: 0

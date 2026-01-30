; ModuleID = '/tmp/autojit_a67b8472f07710730b1a65a68ac67bd7'
source_filename = "bzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [443 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis is a bug in bzip2/libbzip2, %s.\0APlease report it to me at: jseward@bzip.org.  If this happened\0Awhen you were using some program which uses libbzip2 as a\0Acomponent, you should also report this bug to the author(s)\0Aof that program.  Please make an effort to report this bug;\0Atimely and accurate bug reports eventually lead to higher\0Aquality software.  Thanks.  Julian Seward, 15 February 2005.\0A\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [19 x i8] c"1.0.3, 15-Feb-2005\00", align 1, !dbg !27
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@bzerrorstrings_autojit_module_a67b8472f07710730b1a65a68ac67bd7 = global [16 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 16, !dbg !32
@BZ2_crc32Table = external global [256 x i32], align 16
@BZ2_rNums = external global [512 x i32], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !163
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !165
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1, !dbg !167
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !169
@.str.10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1, !dbg !171
@.str.11 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1, !dbg !176
@.str.12 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1, !dbg !181
@.str.13 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1, !dbg !186
@.str.14 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1, !dbg !191
@.str.15 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1, !dbg !196
@.str.16 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1, !dbg !201
@.str.17 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1, !dbg !206
@.str.18 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1, !dbg !208
@.str.19 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1, !dbg !213
@.str.20 = private unnamed_addr constant [4 x i8] c"???\00", align 1, !dbg !215
@__llvm_autojit_ptr_BZ2_bz__AssertH__fail = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzlibVersion = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzCompressInit = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzCompress = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzCompressEnd = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzDecompressInit = internal global ptr null
@__llvm_autojit_ptr_BZ2_indexIntoF = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzDecompress = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzDecompressEnd = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzWriteOpen = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzWrite = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzWriteClose = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzWriteClose64 = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzReadOpen = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzReadClose = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzRead = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzReadGetUnused = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzBuffToBuffCompress = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzBuffToBuffDecompress = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzopen = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzdopen = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzread = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzwrite = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzflush = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzclose = internal global ptr null
@__llvm_autojit_ptr_BZ2_bzerror = internal global ptr null
@__llvm_autojit_lazy_file = private unnamed_addr constant [49 x i8] c"/tmp/autojit_a67b8472f07710730b1a65a68ac67bd7.ll\00"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 100, ptr @_GLOBAL__sub_I_bzlib.c_llvm_autojit_init, ptr null }]
@llvm.used = appending global [27 x ptr] [ptr @BZ2_bz__AssertH__fail, ptr @BZ2_bzlibVersion, ptr @BZ2_bzCompressInit, ptr @BZ2_bzCompress, ptr @BZ2_bzCompressEnd, ptr @BZ2_bzDecompressInit, ptr @BZ2_indexIntoF, ptr @BZ2_bzDecompress, ptr @BZ2_bzDecompressEnd, ptr @BZ2_bzWriteOpen, ptr @BZ2_bzWrite, ptr @BZ2_bzWriteClose, ptr @BZ2_bzWriteClose64, ptr @BZ2_bzReadOpen, ptr @BZ2_bzReadClose, ptr @BZ2_bzRead, ptr @BZ2_bzReadGetUnused, ptr @BZ2_bzBuffToBuffCompress, ptr @BZ2_bzBuffToBuffDecompress, ptr @BZ2_bzopen, ptr @BZ2_bzdopen, ptr @BZ2_bzread, ptr @BZ2_bzwrite, ptr @BZ2_bzflush, ptr @BZ2_bzclose, ptr @BZ2_bzerror, ptr @_GLOBAL__sub_I_bzlib.c_llvm_autojit_init], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bz__AssertH__fail(i32 noundef %0) #0 {
  %2 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bz__AssertH__fail, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  store ptr inttoptr (i64 -3224305450045654 to ptr), ptr @__llvm_autojit_ptr_BZ2_bz__AssertH__fail, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bz__AssertH__fail)
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bz__AssertH__fail, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  tail call void %7(i32 %0)
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzlibVersion() #0 {
  %1 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzlibVersion, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  store ptr inttoptr (i64 4364279684691675085 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzlibVersion, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzlibVersion)
  %4 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzlibVersion, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  %7 = tail call ptr %6()
  ret ptr %7
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzCompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzCompressInit, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store ptr inttoptr (i64 2955341414002248116 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzCompressInit, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzCompressInit)
  %8 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzCompressInit, align 8
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %5, %4 ], [ %8, %7 ]
  %11 = tail call i32 %10(ptr %0, i32 %1, i32 %2, i32 %3)
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bz_config_ok() #0 !dbg !231 {
  ret i32 1, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @default_bzalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !235 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !239, !DIExpression(), !240)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !241, !DIExpression(), !242)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !243, !DIExpression(), !244)
    #dbg_declare(ptr %7, !245, !DIExpression(), !246)
  %8 = load i32, ptr %5, align 4, !dbg !247
  %9 = load i32, ptr %6, align 4, !dbg !248
  %10 = mul nsw i32 %8, %9, !dbg !249
  %11 = sext i32 %10 to i64, !dbg !247
  %12 = call noalias ptr @malloc(i64 noundef %11) #9, !dbg !250
  store ptr %12, ptr %7, align 8, !dbg !246
  %13 = load ptr, ptr %7, align 8, !dbg !251
  ret ptr %13, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_bzfree(ptr noundef %0, ptr noundef %1) #0 !dbg !253 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !254, !DIExpression(), !255)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !256, !DIExpression(), !257)
  %5 = load ptr, ptr %4, align 8, !dbg !258
  %6 = icmp ne ptr %5, null, !dbg !260
  br i1 %6, label %7, label %9, !dbg !260

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !dbg !261
  call void @free(ptr noundef %8) #8, !dbg !262
  br label %9, !dbg !262

9:                                                ; preds = %7, %2
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_RL(ptr noundef %0) #0 !dbg !264 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !327, !DIExpression(), !328)
  %3 = load ptr, ptr %2, align 8, !dbg !329
  %4 = getelementptr inbounds nuw %struct.EState, ptr %3, i32 0, i32 13, !dbg !330
  store i32 256, ptr %4, align 4, !dbg !331
  %5 = load ptr, ptr %2, align 8, !dbg !332
  %6 = getelementptr inbounds nuw %struct.EState, ptr %5, i32 0, i32 14, !dbg !333
  store i32 0, ptr %6, align 8, !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_new_block(ptr noundef %0) #0 !dbg !336 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !337, !DIExpression(), !338)
    #dbg_declare(ptr %3, !339, !DIExpression(), !340)
  %4 = load ptr, ptr %2, align 8, !dbg !341
  %5 = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 17, !dbg !342
  store i32 0, ptr %5, align 4, !dbg !343
  %6 = load ptr, ptr %2, align 8, !dbg !344
  %7 = getelementptr inbounds nuw %struct.EState, ptr %6, i32 0, i32 19, !dbg !345
  store i32 0, ptr %7, align 4, !dbg !346
  %8 = load ptr, ptr %2, align 8, !dbg !347
  %9 = getelementptr inbounds nuw %struct.EState, ptr %8, i32 0, i32 20, !dbg !348
  store i32 0, ptr %9, align 8, !dbg !349
  %10 = load ptr, ptr %2, align 8, !dbg !350
  %11 = getelementptr inbounds nuw %struct.EState, ptr %10, i32 0, i32 26, !dbg !350
  store i32 -1, ptr %11, align 8, !dbg !350
  store i32 0, ptr %3, align 4, !dbg !352
  br label %12, !dbg !354

12:                                               ; preds = %21, %1
  %13 = load i32, ptr %3, align 4, !dbg !355
  %14 = icmp slt i32 %13, 256, !dbg !357
  br i1 %14, label %15, label %24, !dbg !358

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !dbg !359
  %17 = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 22, !dbg !360
  %18 = load i32, ptr %3, align 4, !dbg !361
  %19 = sext i32 %18 to i64, !dbg !359
  %20 = getelementptr inbounds [256 x i8], ptr %17, i64 0, i64 %19, !dbg !359
  store i8 0, ptr %20, align 1, !dbg !362
  br label %21, !dbg !359

21:                                               ; preds = %15
  %22 = load i32, ptr %3, align 4, !dbg !363
  %23 = add nsw i32 %22, 1, !dbg !363
  store i32 %23, ptr %3, align 4, !dbg !363
  br label %12, !dbg !364, !llvm.loop !365

24:                                               ; preds = %12
  %25 = load ptr, ptr %2, align 8, !dbg !368
  %26 = getelementptr inbounds nuw %struct.EState, ptr %25, i32 0, i32 29, !dbg !369
  %27 = load i32, ptr %26, align 4, !dbg !370
  %28 = add nsw i32 %27, 1, !dbg !370
  store i32 %28, ptr %26, align 4, !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzCompress(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzCompress, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store ptr inttoptr (i64 -334699329303038683 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzCompress, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzCompress)
  %6 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzCompress, align 8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  %9 = tail call i32 %8(ptr %0, i32 %1)
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @handle_compress(ptr noundef %0) #0 !dbg !372 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !375, !DIExpression(), !376)
    #dbg_declare(ptr %3, !377, !DIExpression(), !378)
  store i8 0, ptr %3, align 1, !dbg !378
    #dbg_declare(ptr %4, !379, !DIExpression(), !380)
  store i8 0, ptr %4, align 1, !dbg !380
    #dbg_declare(ptr %5, !381, !DIExpression(), !382)
  %6 = load ptr, ptr %2, align 8, !dbg !383
  %7 = getelementptr inbounds nuw %struct.bz_stream, ptr %6, i32 0, i32 8, !dbg !384
  %8 = load ptr, ptr %7, align 8, !dbg !384
  store ptr %8, ptr %5, align 8, !dbg !382
  br label %9, !dbg !385

9:                                                ; preds = %1, %122
  %10 = load ptr, ptr %5, align 8, !dbg !386
  %11 = getelementptr inbounds nuw %struct.EState, ptr %10, i32 0, i32 2, !dbg !389
  %12 = load i32, ptr %11, align 4, !dbg !389
  %13 = icmp eq i32 %12, 1, !dbg !390
  br i1 %13, label %14, label %66, !dbg !390

14:                                               ; preds = %9
  %15 = load ptr, ptr %5, align 8, !dbg !391
  %16 = call zeroext i8 @copy_output_until_stop(ptr noundef %15), !dbg !393
  %17 = zext i8 %16 to i32, !dbg !393
  %18 = load i8, ptr %4, align 1, !dbg !394
  %19 = zext i8 %18 to i32, !dbg !394
  %20 = or i32 %19, %17, !dbg !394
  %21 = trunc i32 %20 to i8, !dbg !394
  store i8 %21, ptr %4, align 1, !dbg !394
  %22 = load ptr, ptr %5, align 8, !dbg !395
  %23 = getelementptr inbounds nuw %struct.EState, ptr %22, i32 0, i32 20, !dbg !397
  %24 = load i32, ptr %23, align 8, !dbg !397
  %25 = load ptr, ptr %5, align 8, !dbg !398
  %26 = getelementptr inbounds nuw %struct.EState, ptr %25, i32 0, i32 19, !dbg !399
  %27 = load i32, ptr %26, align 4, !dbg !399
  %28 = icmp slt i32 %24, %27, !dbg !400
  br i1 %28, label %29, label %30, !dbg !400

29:                                               ; preds = %14
  br label %123, !dbg !401

30:                                               ; preds = %14
  %31 = load ptr, ptr %5, align 8, !dbg !402
  %32 = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 1, !dbg !404
  %33 = load i32, ptr %32, align 8, !dbg !404
  %34 = icmp eq i32 %33, 4, !dbg !405
  br i1 %34, label %35, label %46, !dbg !406

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8, !dbg !407
  %37 = getelementptr inbounds nuw %struct.EState, ptr %36, i32 0, i32 3, !dbg !408
  %38 = load i32, ptr %37, align 8, !dbg !408
  %39 = icmp eq i32 %38, 0, !dbg !409
  br i1 %39, label %40, label %46, !dbg !410

40:                                               ; preds = %35
  %41 = load ptr, ptr %5, align 8, !dbg !411
  %42 = call zeroext i8 @isempty_RL(ptr noundef %41), !dbg !412
  %43 = zext i8 %42 to i32, !dbg !412
  %44 = icmp ne i32 %43, 0, !dbg !412
  br i1 %44, label %45, label %46, !dbg !410

45:                                               ; preds = %40
  br label %123, !dbg !413

46:                                               ; preds = %40, %35, %30
  %47 = load ptr, ptr %5, align 8, !dbg !414
  call void @prepare_new_block(ptr noundef %47), !dbg !415
  %48 = load ptr, ptr %5, align 8, !dbg !416
  %49 = getelementptr inbounds nuw %struct.EState, ptr %48, i32 0, i32 2, !dbg !417
  store i32 2, ptr %49, align 4, !dbg !418
  %50 = load ptr, ptr %5, align 8, !dbg !419
  %51 = getelementptr inbounds nuw %struct.EState, ptr %50, i32 0, i32 1, !dbg !421
  %52 = load i32, ptr %51, align 8, !dbg !421
  %53 = icmp eq i32 %52, 3, !dbg !422
  br i1 %53, label %54, label %65, !dbg !423

54:                                               ; preds = %46
  %55 = load ptr, ptr %5, align 8, !dbg !424
  %56 = getelementptr inbounds nuw %struct.EState, ptr %55, i32 0, i32 3, !dbg !425
  %57 = load i32, ptr %56, align 8, !dbg !425
  %58 = icmp eq i32 %57, 0, !dbg !426
  br i1 %58, label %59, label %65, !dbg !427

59:                                               ; preds = %54
  %60 = load ptr, ptr %5, align 8, !dbg !428
  %61 = call zeroext i8 @isempty_RL(ptr noundef %60), !dbg !429
  %62 = zext i8 %61 to i32, !dbg !429
  %63 = icmp ne i32 %62, 0, !dbg !429
  br i1 %63, label %64, label %65, !dbg !427

64:                                               ; preds = %59
  br label %123, !dbg !430

65:                                               ; preds = %59, %54, %46
  br label %66, !dbg !431

66:                                               ; preds = %65, %9
  %67 = load ptr, ptr %5, align 8, !dbg !432
  %68 = getelementptr inbounds nuw %struct.EState, ptr %67, i32 0, i32 2, !dbg !434
  %69 = load i32, ptr %68, align 4, !dbg !434
  %70 = icmp eq i32 %69, 2, !dbg !435
  br i1 %70, label %71, label %122, !dbg !435

71:                                               ; preds = %66
  %72 = load ptr, ptr %5, align 8, !dbg !436
  %73 = call zeroext i8 @copy_input_until_stop(ptr noundef %72), !dbg !438
  %74 = zext i8 %73 to i32, !dbg !438
  %75 = load i8, ptr %3, align 1, !dbg !439
  %76 = zext i8 %75 to i32, !dbg !439
  %77 = or i32 %76, %74, !dbg !439
  %78 = trunc i32 %77 to i8, !dbg !439
  store i8 %78, ptr %3, align 1, !dbg !439
  %79 = load ptr, ptr %5, align 8, !dbg !440
  %80 = getelementptr inbounds nuw %struct.EState, ptr %79, i32 0, i32 1, !dbg !442
  %81 = load i32, ptr %80, align 8, !dbg !442
  %82 = icmp ne i32 %81, 2, !dbg !443
  br i1 %82, label %83, label %99, !dbg !444

83:                                               ; preds = %71
  %84 = load ptr, ptr %5, align 8, !dbg !445
  %85 = getelementptr inbounds nuw %struct.EState, ptr %84, i32 0, i32 3, !dbg !446
  %86 = load i32, ptr %85, align 8, !dbg !446
  %87 = icmp eq i32 %86, 0, !dbg !447
  br i1 %87, label %88, label %99, !dbg !444

88:                                               ; preds = %83
  %89 = load ptr, ptr %5, align 8, !dbg !448
  call void @flush_RL(ptr noundef %89), !dbg !450
  %90 = load ptr, ptr %5, align 8, !dbg !451
  %91 = load ptr, ptr %5, align 8, !dbg !452
  %92 = getelementptr inbounds nuw %struct.EState, ptr %91, i32 0, i32 1, !dbg !453
  %93 = load i32, ptr %92, align 8, !dbg !453
  %94 = icmp eq i32 %93, 4, !dbg !454
  %95 = zext i1 %94 to i32, !dbg !454
  %96 = trunc i32 %95 to i8, !dbg !455
  call void @BZ2_compressBlock(ptr noundef %90, i8 noundef zeroext %96), !dbg !456
  %97 = load ptr, ptr %5, align 8, !dbg !457
  %98 = getelementptr inbounds nuw %struct.EState, ptr %97, i32 0, i32 2, !dbg !458
  store i32 1, ptr %98, align 4, !dbg !459
  br label %121, !dbg !460

99:                                               ; preds = %83, %71
  %100 = load ptr, ptr %5, align 8, !dbg !461
  %101 = getelementptr inbounds nuw %struct.EState, ptr %100, i32 0, i32 17, !dbg !463
  %102 = load i32, ptr %101, align 4, !dbg !463
  %103 = load ptr, ptr %5, align 8, !dbg !464
  %104 = getelementptr inbounds nuw %struct.EState, ptr %103, i32 0, i32 18, !dbg !465
  %105 = load i32, ptr %104, align 8, !dbg !465
  %106 = icmp sge i32 %102, %105, !dbg !466
  br i1 %106, label %107, label %111, !dbg !466

107:                                              ; preds = %99
  %108 = load ptr, ptr %5, align 8, !dbg !467
  call void @BZ2_compressBlock(ptr noundef %108, i8 noundef zeroext 0), !dbg !469
  %109 = load ptr, ptr %5, align 8, !dbg !470
  %110 = getelementptr inbounds nuw %struct.EState, ptr %109, i32 0, i32 2, !dbg !471
  store i32 1, ptr %110, align 4, !dbg !472
  br label %120, !dbg !473

111:                                              ; preds = %99
  %112 = load ptr, ptr %5, align 8, !dbg !474
  %113 = getelementptr inbounds nuw %struct.EState, ptr %112, i32 0, i32 0, !dbg !476
  %114 = load ptr, ptr %113, align 8, !dbg !476
  %115 = getelementptr inbounds nuw %struct.bz_stream, ptr %114, i32 0, i32 1, !dbg !477
  %116 = load i32, ptr %115, align 8, !dbg !477
  %117 = icmp eq i32 %116, 0, !dbg !478
  br i1 %117, label %118, label %119, !dbg !478

118:                                              ; preds = %111
  br label %123, !dbg !479

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %107
  br label %121

121:                                              ; preds = %120, %88
  br label %122, !dbg !481

122:                                              ; preds = %121, %66
  br label %9, !dbg !385, !llvm.loop !482

123:                                              ; preds = %118, %64, %45, %29
  %124 = load i8, ptr %3, align 1, !dbg !484
  %125 = zext i8 %124 to i32, !dbg !484
  %126 = icmp ne i32 %125, 0, !dbg !484
  br i1 %126, label %131, label %127, !dbg !485

127:                                              ; preds = %123
  %128 = load i8, ptr %4, align 1, !dbg !486
  %129 = zext i8 %128 to i32, !dbg !486
  %130 = icmp ne i32 %129, 0, !dbg !485
  br label %131, !dbg !485

131:                                              ; preds = %127, %123
  %132 = phi i1 [ true, %123 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32, !dbg !485
  %134 = trunc i32 %133 to i8, !dbg !484
  ret i8 %134, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @isempty_RL(ptr noundef %0) #0 !dbg !488 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !491, !DIExpression(), !492)
  %4 = load ptr, ptr %3, align 8, !dbg !493
  %5 = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 13, !dbg !495
  %6 = load i32, ptr %5, align 4, !dbg !495
  %7 = icmp ult i32 %6, 256, !dbg !496
  br i1 %7, label %8, label %14, !dbg !497

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !498
  %10 = getelementptr inbounds nuw %struct.EState, ptr %9, i32 0, i32 14, !dbg !499
  %11 = load i32, ptr %10, align 8, !dbg !499
  %12 = icmp sgt i32 %11, 0, !dbg !500
  br i1 %12, label %13, label %14, !dbg !497

13:                                               ; preds = %8
  store i8 0, ptr %2, align 1, !dbg !501
  br label %15, !dbg !501

14:                                               ; preds = %8, %1
  store i8 1, ptr %2, align 1, !dbg !502
  br label %15, !dbg !502

15:                                               ; preds = %14, %13
  %16 = load i8, ptr %2, align 1, !dbg !503
  ret i8 %16, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzCompressEnd(ptr noundef %0) #0 {
  %2 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzCompressEnd, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  store ptr inttoptr (i64 7492901234580991795 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzCompressEnd, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzCompressEnd)
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzCompressEnd, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  %8 = tail call i32 %7(ptr %0)
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzDecompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzDecompressInit, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  store ptr inttoptr (i64 8830962154303357271 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzDecompressInit, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzDecompressInit)
  %7 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzDecompressInit, align 8
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %4, %3 ], [ %7, %6 ]
  %10 = tail call i32 %9(ptr %0, i32 %1, i32 %2)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_indexIntoF(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @__llvm_autojit_ptr_BZ2_indexIntoF, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store ptr inttoptr (i64 -4356725463698771045 to ptr), ptr @__llvm_autojit_ptr_BZ2_indexIntoF, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_indexIntoF)
  %6 = load ptr, ptr @__llvm_autojit_ptr_BZ2_indexIntoF, align 8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  %9 = tail call i32 %8(i32 %0, ptr %1)
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzDecompress(ptr noundef %0) #0 {
  %2 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzDecompress, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  store ptr inttoptr (i64 -7428673261472815515 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzDecompress, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzDecompress)
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzDecompress, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  %8 = tail call i32 %7(ptr %0)
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(ptr noundef %0) #0 !dbg !504 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !587, !DIExpression(), !588)
    #dbg_declare(ptr %4, !589, !DIExpression(), !590)
  %5 = load ptr, ptr %3, align 8, !dbg !591
  %6 = getelementptr inbounds nuw %struct.DState, ptr %5, i32 0, i32 4, !dbg !593
  %7 = load i8, ptr %6, align 4, !dbg !593
  %8 = icmp ne i8 %7, 0, !dbg !591
  br i1 %8, label %9, label %614, !dbg !591

9:                                                ; preds = %1
  br label %10, !dbg !594

10:                                               ; preds = %9, %210, %218, %318, %326, %426, %434, %595
  br label %11, !dbg !596

11:                                               ; preds = %10, %88
  %12 = load ptr, ptr %3, align 8, !dbg !598
  %13 = getelementptr inbounds nuw %struct.DState, ptr %12, i32 0, i32 0, !dbg !601
  %14 = load ptr, ptr %13, align 8, !dbg !601
  %15 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 5, !dbg !602
  %16 = load i32, ptr %15, align 8, !dbg !602
  %17 = icmp eq i32 %16, 0, !dbg !603
  br i1 %17, label %18, label %19, !dbg !603

18:                                               ; preds = %11
  store i8 0, ptr %2, align 1, !dbg !604
  br label %1019, !dbg !604

19:                                               ; preds = %11
  %20 = load ptr, ptr %3, align 8, !dbg !605
  %21 = getelementptr inbounds nuw %struct.DState, ptr %20, i32 0, i32 3, !dbg !607
  %22 = load i32, ptr %21, align 8, !dbg !607
  %23 = icmp eq i32 %22, 0, !dbg !608
  br i1 %23, label %24, label %25, !dbg !608

24:                                               ; preds = %19
  br label %89, !dbg !609

25:                                               ; preds = %19
  %26 = load ptr, ptr %3, align 8, !dbg !610
  %27 = getelementptr inbounds nuw %struct.DState, ptr %26, i32 0, i32 2, !dbg !611
  %28 = load i8, ptr %27, align 4, !dbg !611
  %29 = load ptr, ptr %3, align 8, !dbg !612
  %30 = getelementptr inbounds nuw %struct.DState, ptr %29, i32 0, i32 0, !dbg !613
  %31 = load ptr, ptr %30, align 8, !dbg !613
  %32 = getelementptr inbounds nuw %struct.bz_stream, ptr %31, i32 0, i32 4, !dbg !614
  %33 = load ptr, ptr %32, align 8, !dbg !614
  store i8 %28, ptr %33, align 1, !dbg !615
  %34 = load ptr, ptr %3, align 8, !dbg !616
  %35 = getelementptr inbounds nuw %struct.DState, ptr %34, i32 0, i32 25, !dbg !616
  %36 = load i32, ptr %35, align 8, !dbg !616
  %37 = shl i32 %36, 8, !dbg !616
  %38 = load ptr, ptr %3, align 8, !dbg !616
  %39 = getelementptr inbounds nuw %struct.DState, ptr %38, i32 0, i32 25, !dbg !616
  %40 = load i32, ptr %39, align 8, !dbg !616
  %41 = lshr i32 %40, 24, !dbg !616
  %42 = load ptr, ptr %3, align 8, !dbg !616
  %43 = getelementptr inbounds nuw %struct.DState, ptr %42, i32 0, i32 2, !dbg !616
  %44 = load i8, ptr %43, align 4, !dbg !616
  %45 = zext i8 %44 to i32, !dbg !616
  %46 = xor i32 %41, %45, !dbg !616
  %47 = zext i32 %46 to i64, !dbg !616
  %48 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %47, !dbg !616
  %49 = load i32, ptr %48, align 4, !dbg !616
  %50 = xor i32 %37, %49, !dbg !616
  %51 = load ptr, ptr %3, align 8, !dbg !616
  %52 = getelementptr inbounds nuw %struct.DState, ptr %51, i32 0, i32 25, !dbg !616
  store i32 %50, ptr %52, align 8, !dbg !616
  %53 = load ptr, ptr %3, align 8, !dbg !618
  %54 = getelementptr inbounds nuw %struct.DState, ptr %53, i32 0, i32 3, !dbg !619
  %55 = load i32, ptr %54, align 8, !dbg !620
  %56 = add nsw i32 %55, -1, !dbg !620
  store i32 %56, ptr %54, align 8, !dbg !620
  %57 = load ptr, ptr %3, align 8, !dbg !621
  %58 = getelementptr inbounds nuw %struct.DState, ptr %57, i32 0, i32 0, !dbg !622
  %59 = load ptr, ptr %58, align 8, !dbg !622
  %60 = getelementptr inbounds nuw %struct.bz_stream, ptr %59, i32 0, i32 4, !dbg !623
  %61 = load ptr, ptr %60, align 8, !dbg !624
  %62 = getelementptr inbounds nuw i8, ptr %61, i32 1, !dbg !624
  store ptr %62, ptr %60, align 8, !dbg !624
  %63 = load ptr, ptr %3, align 8, !dbg !625
  %64 = getelementptr inbounds nuw %struct.DState, ptr %63, i32 0, i32 0, !dbg !626
  %65 = load ptr, ptr %64, align 8, !dbg !626
  %66 = getelementptr inbounds nuw %struct.bz_stream, ptr %65, i32 0, i32 5, !dbg !627
  %67 = load i32, ptr %66, align 8, !dbg !628
  %68 = add i32 %67, -1, !dbg !628
  store i32 %68, ptr %66, align 8, !dbg !628
  %69 = load ptr, ptr %3, align 8, !dbg !629
  %70 = getelementptr inbounds nuw %struct.DState, ptr %69, i32 0, i32 0, !dbg !630
  %71 = load ptr, ptr %70, align 8, !dbg !630
  %72 = getelementptr inbounds nuw %struct.bz_stream, ptr %71, i32 0, i32 6, !dbg !631
  %73 = load i32, ptr %72, align 4, !dbg !632
  %74 = add i32 %73, 1, !dbg !632
  store i32 %74, ptr %72, align 4, !dbg !632
  %75 = load ptr, ptr %3, align 8, !dbg !633
  %76 = getelementptr inbounds nuw %struct.DState, ptr %75, i32 0, i32 0, !dbg !635
  %77 = load ptr, ptr %76, align 8, !dbg !635
  %78 = getelementptr inbounds nuw %struct.bz_stream, ptr %77, i32 0, i32 6, !dbg !636
  %79 = load i32, ptr %78, align 4, !dbg !636
  %80 = icmp eq i32 %79, 0, !dbg !637
  br i1 %80, label %81, label %88, !dbg !637

81:                                               ; preds = %25
  %82 = load ptr, ptr %3, align 8, !dbg !638
  %83 = getelementptr inbounds nuw %struct.DState, ptr %82, i32 0, i32 0, !dbg !639
  %84 = load ptr, ptr %83, align 8, !dbg !639
  %85 = getelementptr inbounds nuw %struct.bz_stream, ptr %84, i32 0, i32 7, !dbg !640
  %86 = load i32, ptr %85, align 8, !dbg !641
  %87 = add i32 %86, 1, !dbg !641
  store i32 %87, ptr %85, align 8, !dbg !641
  br label %88, !dbg !638

88:                                               ; preds = %81, %25
  br label %11, !dbg !596, !llvm.loop !642

89:                                               ; preds = %24
  %90 = load ptr, ptr %3, align 8, !dbg !644
  %91 = getelementptr inbounds nuw %struct.DState, ptr %90, i32 0, i32 17, !dbg !646
  %92 = load i32, ptr %91, align 4, !dbg !646
  %93 = load ptr, ptr %3, align 8, !dbg !647
  %94 = getelementptr inbounds nuw %struct.DState, ptr %93, i32 0, i32 51, !dbg !648
  %95 = load i32, ptr %94, align 8, !dbg !648
  %96 = add nsw i32 %95, 1, !dbg !649
  %97 = icmp eq i32 %92, %96, !dbg !650
  br i1 %97, label %98, label %99, !dbg !650

98:                                               ; preds = %89
  store i8 0, ptr %2, align 1, !dbg !651
  br label %1019, !dbg !651

99:                                               ; preds = %89
  %100 = load ptr, ptr %3, align 8, !dbg !652
  %101 = getelementptr inbounds nuw %struct.DState, ptr %100, i32 0, i32 17, !dbg !654
  %102 = load i32, ptr %101, align 4, !dbg !654
  %103 = load ptr, ptr %3, align 8, !dbg !655
  %104 = getelementptr inbounds nuw %struct.DState, ptr %103, i32 0, i32 51, !dbg !656
  %105 = load i32, ptr %104, align 8, !dbg !656
  %106 = add nsw i32 %105, 1, !dbg !657
  %107 = icmp sgt i32 %102, %106, !dbg !658
  br i1 %107, label %108, label %109, !dbg !658

108:                                              ; preds = %99
  store i8 1, ptr %2, align 1, !dbg !659
  br label %1019, !dbg !659

109:                                              ; preds = %99
  %110 = load ptr, ptr %3, align 8, !dbg !660
  %111 = getelementptr inbounds nuw %struct.DState, ptr %110, i32 0, i32 3, !dbg !661
  store i32 1, ptr %111, align 8, !dbg !662
  %112 = load ptr, ptr %3, align 8, !dbg !663
  %113 = getelementptr inbounds nuw %struct.DState, ptr %112, i32 0, i32 15, !dbg !664
  %114 = load i32, ptr %113, align 8, !dbg !664
  %115 = trunc i32 %114 to i8, !dbg !663
  %116 = load ptr, ptr %3, align 8, !dbg !665
  %117 = getelementptr inbounds nuw %struct.DState, ptr %116, i32 0, i32 2, !dbg !666
  store i8 %115, ptr %117, align 4, !dbg !667
  %118 = load ptr, ptr %3, align 8, !dbg !668
  %119 = getelementptr inbounds nuw %struct.DState, ptr %118, i32 0, i32 14, !dbg !668
  %120 = load i32, ptr %119, align 4, !dbg !668
  %121 = load ptr, ptr %3, align 8, !dbg !668
  %122 = getelementptr inbounds nuw %struct.DState, ptr %121, i32 0, i32 18, !dbg !668
  %123 = getelementptr inbounds [257 x i32], ptr %122, i64 0, i64 0, !dbg !668
  %124 = call i32 @BZ2_indexIntoF(i32 noundef %120, ptr noundef %123), !dbg !668
  %125 = trunc i32 %124 to i8, !dbg !668
  store i8 %125, ptr %4, align 1, !dbg !668
  %126 = load ptr, ptr %3, align 8, !dbg !668
  %127 = getelementptr inbounds nuw %struct.DState, ptr %126, i32 0, i32 21, !dbg !668
  %128 = load ptr, ptr %127, align 8, !dbg !668
  %129 = load ptr, ptr %3, align 8, !dbg !668
  %130 = getelementptr inbounds nuw %struct.DState, ptr %129, i32 0, i32 14, !dbg !668
  %131 = load i32, ptr %130, align 4, !dbg !668
  %132 = zext i32 %131 to i64, !dbg !668
  %133 = getelementptr inbounds nuw i16, ptr %128, i64 %132, !dbg !668
  %134 = load i16, ptr %133, align 2, !dbg !668
  %135 = zext i16 %134 to i32, !dbg !668
  %136 = load ptr, ptr %3, align 8, !dbg !668
  %137 = getelementptr inbounds nuw %struct.DState, ptr %136, i32 0, i32 22, !dbg !668
  %138 = load ptr, ptr %137, align 8, !dbg !668
  %139 = load ptr, ptr %3, align 8, !dbg !668
  %140 = getelementptr inbounds nuw %struct.DState, ptr %139, i32 0, i32 14, !dbg !668
  %141 = load i32, ptr %140, align 4, !dbg !668
  %142 = lshr i32 %141, 1, !dbg !668
  %143 = zext i32 %142 to i64, !dbg !668
  %144 = getelementptr inbounds nuw i8, ptr %138, i64 %143, !dbg !668
  %145 = load i8, ptr %144, align 1, !dbg !668
  %146 = zext i8 %145 to i32, !dbg !668
  %147 = load ptr, ptr %3, align 8, !dbg !668
  %148 = getelementptr inbounds nuw %struct.DState, ptr %147, i32 0, i32 14, !dbg !668
  %149 = load i32, ptr %148, align 4, !dbg !668
  %150 = shl i32 %149, 2, !dbg !668
  %151 = and i32 %150, 4, !dbg !668
  %152 = lshr i32 %146, %151, !dbg !668
  %153 = and i32 %152, 15, !dbg !668
  %154 = shl i32 %153, 16, !dbg !668
  %155 = or i32 %135, %154, !dbg !668
  %156 = load ptr, ptr %3, align 8, !dbg !668
  %157 = getelementptr inbounds nuw %struct.DState, ptr %156, i32 0, i32 14, !dbg !668
  store i32 %155, ptr %157, align 4, !dbg !668
  %158 = load ptr, ptr %3, align 8, !dbg !669
  %159 = getelementptr inbounds nuw %struct.DState, ptr %158, i32 0, i32 5, !dbg !669
  %160 = load i32, ptr %159, align 8, !dbg !669
  %161 = icmp eq i32 %160, 0, !dbg !669
  br i1 %161, label %162, label %183, !dbg !669

162:                                              ; preds = %109
  %163 = load ptr, ptr %3, align 8, !dbg !671
  %164 = getelementptr inbounds nuw %struct.DState, ptr %163, i32 0, i32 6, !dbg !671
  %165 = load i32, ptr %164, align 4, !dbg !671
  %166 = sext i32 %165 to i64, !dbg !671
  %167 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %166, !dbg !671
  %168 = load i32, ptr %167, align 4, !dbg !671
  %169 = load ptr, ptr %3, align 8, !dbg !671
  %170 = getelementptr inbounds nuw %struct.DState, ptr %169, i32 0, i32 5, !dbg !671
  store i32 %168, ptr %170, align 8, !dbg !671
  %171 = load ptr, ptr %3, align 8, !dbg !671
  %172 = getelementptr inbounds nuw %struct.DState, ptr %171, i32 0, i32 6, !dbg !671
  %173 = load i32, ptr %172, align 4, !dbg !671
  %174 = add nsw i32 %173, 1, !dbg !671
  store i32 %174, ptr %172, align 4, !dbg !671
  %175 = load ptr, ptr %3, align 8, !dbg !673
  %176 = getelementptr inbounds nuw %struct.DState, ptr %175, i32 0, i32 6, !dbg !673
  %177 = load i32, ptr %176, align 4, !dbg !673
  %178 = icmp eq i32 %177, 512, !dbg !673
  br i1 %178, label %179, label %182, !dbg !673

179:                                              ; preds = %162
  %180 = load ptr, ptr %3, align 8, !dbg !673
  %181 = getelementptr inbounds nuw %struct.DState, ptr %180, i32 0, i32 6, !dbg !673
  store i32 0, ptr %181, align 4, !dbg !673
  br label %182, !dbg !673

182:                                              ; preds = %179, %162
  br label %183, !dbg !671

183:                                              ; preds = %182, %109
  %184 = load ptr, ptr %3, align 8, !dbg !675
  %185 = getelementptr inbounds nuw %struct.DState, ptr %184, i32 0, i32 5, !dbg !675
  %186 = load i32, ptr %185, align 8, !dbg !675
  %187 = add nsw i32 %186, -1, !dbg !675
  store i32 %187, ptr %185, align 8, !dbg !675
  %188 = load ptr, ptr %3, align 8, !dbg !676
  %189 = getelementptr inbounds nuw %struct.DState, ptr %188, i32 0, i32 5, !dbg !676
  %190 = load i32, ptr %189, align 8, !dbg !676
  %191 = icmp eq i32 %190, 1, !dbg !676
  %192 = zext i1 %191 to i64, !dbg !676
  %193 = select i1 %191, i32 1, i32 0, !dbg !676
  %194 = load i8, ptr %4, align 1, !dbg !677
  %195 = zext i8 %194 to i32, !dbg !677
  %196 = xor i32 %195, %193, !dbg !677
  %197 = trunc i32 %196 to i8, !dbg !677
  store i8 %197, ptr %4, align 1, !dbg !677
  %198 = load ptr, ptr %3, align 8, !dbg !678
  %199 = getelementptr inbounds nuw %struct.DState, ptr %198, i32 0, i32 17, !dbg !679
  %200 = load i32, ptr %199, align 4, !dbg !680
  %201 = add nsw i32 %200, 1, !dbg !680
  store i32 %201, ptr %199, align 4, !dbg !680
  %202 = load ptr, ptr %3, align 8, !dbg !681
  %203 = getelementptr inbounds nuw %struct.DState, ptr %202, i32 0, i32 17, !dbg !683
  %204 = load i32, ptr %203, align 4, !dbg !683
  %205 = load ptr, ptr %3, align 8, !dbg !684
  %206 = getelementptr inbounds nuw %struct.DState, ptr %205, i32 0, i32 51, !dbg !685
  %207 = load i32, ptr %206, align 8, !dbg !685
  %208 = add nsw i32 %207, 1, !dbg !686
  %209 = icmp eq i32 %204, %208, !dbg !687
  br i1 %209, label %210, label %211, !dbg !687

210:                                              ; preds = %183
  br label %10, !dbg !688, !llvm.loop !689

211:                                              ; preds = %183
  %212 = load i8, ptr %4, align 1, !dbg !691
  %213 = zext i8 %212 to i32, !dbg !691
  %214 = load ptr, ptr %3, align 8, !dbg !693
  %215 = getelementptr inbounds nuw %struct.DState, ptr %214, i32 0, i32 15, !dbg !694
  %216 = load i32, ptr %215, align 8, !dbg !694
  %217 = icmp ne i32 %213, %216, !dbg !695
  br i1 %217, label %218, label %223, !dbg !695

218:                                              ; preds = %211
  %219 = load i8, ptr %4, align 1, !dbg !696
  %220 = zext i8 %219 to i32, !dbg !696
  %221 = load ptr, ptr %3, align 8, !dbg !698
  %222 = getelementptr inbounds nuw %struct.DState, ptr %221, i32 0, i32 15, !dbg !699
  store i32 %220, ptr %222, align 8, !dbg !700
  br label %10, !dbg !701, !llvm.loop !689

223:                                              ; preds = %211
  %224 = load ptr, ptr %3, align 8, !dbg !702
  %225 = getelementptr inbounds nuw %struct.DState, ptr %224, i32 0, i32 3, !dbg !703
  store i32 2, ptr %225, align 8, !dbg !704
  %226 = load ptr, ptr %3, align 8, !dbg !705
  %227 = getelementptr inbounds nuw %struct.DState, ptr %226, i32 0, i32 14, !dbg !705
  %228 = load i32, ptr %227, align 4, !dbg !705
  %229 = load ptr, ptr %3, align 8, !dbg !705
  %230 = getelementptr inbounds nuw %struct.DState, ptr %229, i32 0, i32 18, !dbg !705
  %231 = getelementptr inbounds [257 x i32], ptr %230, i64 0, i64 0, !dbg !705
  %232 = call i32 @BZ2_indexIntoF(i32 noundef %228, ptr noundef %231), !dbg !705
  %233 = trunc i32 %232 to i8, !dbg !705
  store i8 %233, ptr %4, align 1, !dbg !705
  %234 = load ptr, ptr %3, align 8, !dbg !705
  %235 = getelementptr inbounds nuw %struct.DState, ptr %234, i32 0, i32 21, !dbg !705
  %236 = load ptr, ptr %235, align 8, !dbg !705
  %237 = load ptr, ptr %3, align 8, !dbg !705
  %238 = getelementptr inbounds nuw %struct.DState, ptr %237, i32 0, i32 14, !dbg !705
  %239 = load i32, ptr %238, align 4, !dbg !705
  %240 = zext i32 %239 to i64, !dbg !705
  %241 = getelementptr inbounds nuw i16, ptr %236, i64 %240, !dbg !705
  %242 = load i16, ptr %241, align 2, !dbg !705
  %243 = zext i16 %242 to i32, !dbg !705
  %244 = load ptr, ptr %3, align 8, !dbg !705
  %245 = getelementptr inbounds nuw %struct.DState, ptr %244, i32 0, i32 22, !dbg !705
  %246 = load ptr, ptr %245, align 8, !dbg !705
  %247 = load ptr, ptr %3, align 8, !dbg !705
  %248 = getelementptr inbounds nuw %struct.DState, ptr %247, i32 0, i32 14, !dbg !705
  %249 = load i32, ptr %248, align 4, !dbg !705
  %250 = lshr i32 %249, 1, !dbg !705
  %251 = zext i32 %250 to i64, !dbg !705
  %252 = getelementptr inbounds nuw i8, ptr %246, i64 %251, !dbg !705
  %253 = load i8, ptr %252, align 1, !dbg !705
  %254 = zext i8 %253 to i32, !dbg !705
  %255 = load ptr, ptr %3, align 8, !dbg !705
  %256 = getelementptr inbounds nuw %struct.DState, ptr %255, i32 0, i32 14, !dbg !705
  %257 = load i32, ptr %256, align 4, !dbg !705
  %258 = shl i32 %257, 2, !dbg !705
  %259 = and i32 %258, 4, !dbg !705
  %260 = lshr i32 %254, %259, !dbg !705
  %261 = and i32 %260, 15, !dbg !705
  %262 = shl i32 %261, 16, !dbg !705
  %263 = or i32 %243, %262, !dbg !705
  %264 = load ptr, ptr %3, align 8, !dbg !705
  %265 = getelementptr inbounds nuw %struct.DState, ptr %264, i32 0, i32 14, !dbg !705
  store i32 %263, ptr %265, align 4, !dbg !705
  %266 = load ptr, ptr %3, align 8, !dbg !706
  %267 = getelementptr inbounds nuw %struct.DState, ptr %266, i32 0, i32 5, !dbg !706
  %268 = load i32, ptr %267, align 8, !dbg !706
  %269 = icmp eq i32 %268, 0, !dbg !706
  br i1 %269, label %270, label %291, !dbg !706

270:                                              ; preds = %223
  %271 = load ptr, ptr %3, align 8, !dbg !708
  %272 = getelementptr inbounds nuw %struct.DState, ptr %271, i32 0, i32 6, !dbg !708
  %273 = load i32, ptr %272, align 4, !dbg !708
  %274 = sext i32 %273 to i64, !dbg !708
  %275 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %274, !dbg !708
  %276 = load i32, ptr %275, align 4, !dbg !708
  %277 = load ptr, ptr %3, align 8, !dbg !708
  %278 = getelementptr inbounds nuw %struct.DState, ptr %277, i32 0, i32 5, !dbg !708
  store i32 %276, ptr %278, align 8, !dbg !708
  %279 = load ptr, ptr %3, align 8, !dbg !708
  %280 = getelementptr inbounds nuw %struct.DState, ptr %279, i32 0, i32 6, !dbg !708
  %281 = load i32, ptr %280, align 4, !dbg !708
  %282 = add nsw i32 %281, 1, !dbg !708
  store i32 %282, ptr %280, align 4, !dbg !708
  %283 = load ptr, ptr %3, align 8, !dbg !710
  %284 = getelementptr inbounds nuw %struct.DState, ptr %283, i32 0, i32 6, !dbg !710
  %285 = load i32, ptr %284, align 4, !dbg !710
  %286 = icmp eq i32 %285, 512, !dbg !710
  br i1 %286, label %287, label %290, !dbg !710

287:                                              ; preds = %270
  %288 = load ptr, ptr %3, align 8, !dbg !710
  %289 = getelementptr inbounds nuw %struct.DState, ptr %288, i32 0, i32 6, !dbg !710
  store i32 0, ptr %289, align 4, !dbg !710
  br label %290, !dbg !710

290:                                              ; preds = %287, %270
  br label %291, !dbg !708

291:                                              ; preds = %290, %223
  %292 = load ptr, ptr %3, align 8, !dbg !712
  %293 = getelementptr inbounds nuw %struct.DState, ptr %292, i32 0, i32 5, !dbg !712
  %294 = load i32, ptr %293, align 8, !dbg !712
  %295 = add nsw i32 %294, -1, !dbg !712
  store i32 %295, ptr %293, align 8, !dbg !712
  %296 = load ptr, ptr %3, align 8, !dbg !713
  %297 = getelementptr inbounds nuw %struct.DState, ptr %296, i32 0, i32 5, !dbg !713
  %298 = load i32, ptr %297, align 8, !dbg !713
  %299 = icmp eq i32 %298, 1, !dbg !713
  %300 = zext i1 %299 to i64, !dbg !713
  %301 = select i1 %299, i32 1, i32 0, !dbg !713
  %302 = load i8, ptr %4, align 1, !dbg !714
  %303 = zext i8 %302 to i32, !dbg !714
  %304 = xor i32 %303, %301, !dbg !714
  %305 = trunc i32 %304 to i8, !dbg !714
  store i8 %305, ptr %4, align 1, !dbg !714
  %306 = load ptr, ptr %3, align 8, !dbg !715
  %307 = getelementptr inbounds nuw %struct.DState, ptr %306, i32 0, i32 17, !dbg !716
  %308 = load i32, ptr %307, align 4, !dbg !717
  %309 = add nsw i32 %308, 1, !dbg !717
  store i32 %309, ptr %307, align 4, !dbg !717
  %310 = load ptr, ptr %3, align 8, !dbg !718
  %311 = getelementptr inbounds nuw %struct.DState, ptr %310, i32 0, i32 17, !dbg !720
  %312 = load i32, ptr %311, align 4, !dbg !720
  %313 = load ptr, ptr %3, align 8, !dbg !721
  %314 = getelementptr inbounds nuw %struct.DState, ptr %313, i32 0, i32 51, !dbg !722
  %315 = load i32, ptr %314, align 8, !dbg !722
  %316 = add nsw i32 %315, 1, !dbg !723
  %317 = icmp eq i32 %312, %316, !dbg !724
  br i1 %317, label %318, label %319, !dbg !724

318:                                              ; preds = %291
  br label %10, !dbg !725, !llvm.loop !689

319:                                              ; preds = %291
  %320 = load i8, ptr %4, align 1, !dbg !726
  %321 = zext i8 %320 to i32, !dbg !726
  %322 = load ptr, ptr %3, align 8, !dbg !728
  %323 = getelementptr inbounds nuw %struct.DState, ptr %322, i32 0, i32 15, !dbg !729
  %324 = load i32, ptr %323, align 8, !dbg !729
  %325 = icmp ne i32 %321, %324, !dbg !730
  br i1 %325, label %326, label %331, !dbg !730

326:                                              ; preds = %319
  %327 = load i8, ptr %4, align 1, !dbg !731
  %328 = zext i8 %327 to i32, !dbg !731
  %329 = load ptr, ptr %3, align 8, !dbg !733
  %330 = getelementptr inbounds nuw %struct.DState, ptr %329, i32 0, i32 15, !dbg !734
  store i32 %328, ptr %330, align 8, !dbg !735
  br label %10, !dbg !736, !llvm.loop !689

331:                                              ; preds = %319
  %332 = load ptr, ptr %3, align 8, !dbg !737
  %333 = getelementptr inbounds nuw %struct.DState, ptr %332, i32 0, i32 3, !dbg !738
  store i32 3, ptr %333, align 8, !dbg !739
  %334 = load ptr, ptr %3, align 8, !dbg !740
  %335 = getelementptr inbounds nuw %struct.DState, ptr %334, i32 0, i32 14, !dbg !740
  %336 = load i32, ptr %335, align 4, !dbg !740
  %337 = load ptr, ptr %3, align 8, !dbg !740
  %338 = getelementptr inbounds nuw %struct.DState, ptr %337, i32 0, i32 18, !dbg !740
  %339 = getelementptr inbounds [257 x i32], ptr %338, i64 0, i64 0, !dbg !740
  %340 = call i32 @BZ2_indexIntoF(i32 noundef %336, ptr noundef %339), !dbg !740
  %341 = trunc i32 %340 to i8, !dbg !740
  store i8 %341, ptr %4, align 1, !dbg !740
  %342 = load ptr, ptr %3, align 8, !dbg !740
  %343 = getelementptr inbounds nuw %struct.DState, ptr %342, i32 0, i32 21, !dbg !740
  %344 = load ptr, ptr %343, align 8, !dbg !740
  %345 = load ptr, ptr %3, align 8, !dbg !740
  %346 = getelementptr inbounds nuw %struct.DState, ptr %345, i32 0, i32 14, !dbg !740
  %347 = load i32, ptr %346, align 4, !dbg !740
  %348 = zext i32 %347 to i64, !dbg !740
  %349 = getelementptr inbounds nuw i16, ptr %344, i64 %348, !dbg !740
  %350 = load i16, ptr %349, align 2, !dbg !740
  %351 = zext i16 %350 to i32, !dbg !740
  %352 = load ptr, ptr %3, align 8, !dbg !740
  %353 = getelementptr inbounds nuw %struct.DState, ptr %352, i32 0, i32 22, !dbg !740
  %354 = load ptr, ptr %353, align 8, !dbg !740
  %355 = load ptr, ptr %3, align 8, !dbg !740
  %356 = getelementptr inbounds nuw %struct.DState, ptr %355, i32 0, i32 14, !dbg !740
  %357 = load i32, ptr %356, align 4, !dbg !740
  %358 = lshr i32 %357, 1, !dbg !740
  %359 = zext i32 %358 to i64, !dbg !740
  %360 = getelementptr inbounds nuw i8, ptr %354, i64 %359, !dbg !740
  %361 = load i8, ptr %360, align 1, !dbg !740
  %362 = zext i8 %361 to i32, !dbg !740
  %363 = load ptr, ptr %3, align 8, !dbg !740
  %364 = getelementptr inbounds nuw %struct.DState, ptr %363, i32 0, i32 14, !dbg !740
  %365 = load i32, ptr %364, align 4, !dbg !740
  %366 = shl i32 %365, 2, !dbg !740
  %367 = and i32 %366, 4, !dbg !740
  %368 = lshr i32 %362, %367, !dbg !740
  %369 = and i32 %368, 15, !dbg !740
  %370 = shl i32 %369, 16, !dbg !740
  %371 = or i32 %351, %370, !dbg !740
  %372 = load ptr, ptr %3, align 8, !dbg !740
  %373 = getelementptr inbounds nuw %struct.DState, ptr %372, i32 0, i32 14, !dbg !740
  store i32 %371, ptr %373, align 4, !dbg !740
  %374 = load ptr, ptr %3, align 8, !dbg !741
  %375 = getelementptr inbounds nuw %struct.DState, ptr %374, i32 0, i32 5, !dbg !741
  %376 = load i32, ptr %375, align 8, !dbg !741
  %377 = icmp eq i32 %376, 0, !dbg !741
  br i1 %377, label %378, label %399, !dbg !741

378:                                              ; preds = %331
  %379 = load ptr, ptr %3, align 8, !dbg !743
  %380 = getelementptr inbounds nuw %struct.DState, ptr %379, i32 0, i32 6, !dbg !743
  %381 = load i32, ptr %380, align 4, !dbg !743
  %382 = sext i32 %381 to i64, !dbg !743
  %383 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %382, !dbg !743
  %384 = load i32, ptr %383, align 4, !dbg !743
  %385 = load ptr, ptr %3, align 8, !dbg !743
  %386 = getelementptr inbounds nuw %struct.DState, ptr %385, i32 0, i32 5, !dbg !743
  store i32 %384, ptr %386, align 8, !dbg !743
  %387 = load ptr, ptr %3, align 8, !dbg !743
  %388 = getelementptr inbounds nuw %struct.DState, ptr %387, i32 0, i32 6, !dbg !743
  %389 = load i32, ptr %388, align 4, !dbg !743
  %390 = add nsw i32 %389, 1, !dbg !743
  store i32 %390, ptr %388, align 4, !dbg !743
  %391 = load ptr, ptr %3, align 8, !dbg !745
  %392 = getelementptr inbounds nuw %struct.DState, ptr %391, i32 0, i32 6, !dbg !745
  %393 = load i32, ptr %392, align 4, !dbg !745
  %394 = icmp eq i32 %393, 512, !dbg !745
  br i1 %394, label %395, label %398, !dbg !745

395:                                              ; preds = %378
  %396 = load ptr, ptr %3, align 8, !dbg !745
  %397 = getelementptr inbounds nuw %struct.DState, ptr %396, i32 0, i32 6, !dbg !745
  store i32 0, ptr %397, align 4, !dbg !745
  br label %398, !dbg !745

398:                                              ; preds = %395, %378
  br label %399, !dbg !743

399:                                              ; preds = %398, %331
  %400 = load ptr, ptr %3, align 8, !dbg !747
  %401 = getelementptr inbounds nuw %struct.DState, ptr %400, i32 0, i32 5, !dbg !747
  %402 = load i32, ptr %401, align 8, !dbg !747
  %403 = add nsw i32 %402, -1, !dbg !747
  store i32 %403, ptr %401, align 8, !dbg !747
  %404 = load ptr, ptr %3, align 8, !dbg !748
  %405 = getelementptr inbounds nuw %struct.DState, ptr %404, i32 0, i32 5, !dbg !748
  %406 = load i32, ptr %405, align 8, !dbg !748
  %407 = icmp eq i32 %406, 1, !dbg !748
  %408 = zext i1 %407 to i64, !dbg !748
  %409 = select i1 %407, i32 1, i32 0, !dbg !748
  %410 = load i8, ptr %4, align 1, !dbg !749
  %411 = zext i8 %410 to i32, !dbg !749
  %412 = xor i32 %411, %409, !dbg !749
  %413 = trunc i32 %412 to i8, !dbg !749
  store i8 %413, ptr %4, align 1, !dbg !749
  %414 = load ptr, ptr %3, align 8, !dbg !750
  %415 = getelementptr inbounds nuw %struct.DState, ptr %414, i32 0, i32 17, !dbg !751
  %416 = load i32, ptr %415, align 4, !dbg !752
  %417 = add nsw i32 %416, 1, !dbg !752
  store i32 %417, ptr %415, align 4, !dbg !752
  %418 = load ptr, ptr %3, align 8, !dbg !753
  %419 = getelementptr inbounds nuw %struct.DState, ptr %418, i32 0, i32 17, !dbg !755
  %420 = load i32, ptr %419, align 4, !dbg !755
  %421 = load ptr, ptr %3, align 8, !dbg !756
  %422 = getelementptr inbounds nuw %struct.DState, ptr %421, i32 0, i32 51, !dbg !757
  %423 = load i32, ptr %422, align 8, !dbg !757
  %424 = add nsw i32 %423, 1, !dbg !758
  %425 = icmp eq i32 %420, %424, !dbg !759
  br i1 %425, label %426, label %427, !dbg !759

426:                                              ; preds = %399
  br label %10, !dbg !760, !llvm.loop !689

427:                                              ; preds = %399
  %428 = load i8, ptr %4, align 1, !dbg !761
  %429 = zext i8 %428 to i32, !dbg !761
  %430 = load ptr, ptr %3, align 8, !dbg !763
  %431 = getelementptr inbounds nuw %struct.DState, ptr %430, i32 0, i32 15, !dbg !764
  %432 = load i32, ptr %431, align 8, !dbg !764
  %433 = icmp ne i32 %429, %432, !dbg !765
  br i1 %433, label %434, label %439, !dbg !765

434:                                              ; preds = %427
  %435 = load i8, ptr %4, align 1, !dbg !766
  %436 = zext i8 %435 to i32, !dbg !766
  %437 = load ptr, ptr %3, align 8, !dbg !768
  %438 = getelementptr inbounds nuw %struct.DState, ptr %437, i32 0, i32 15, !dbg !769
  store i32 %436, ptr %438, align 8, !dbg !770
  br label %10, !dbg !771, !llvm.loop !689

439:                                              ; preds = %427
  %440 = load ptr, ptr %3, align 8, !dbg !772
  %441 = getelementptr inbounds nuw %struct.DState, ptr %440, i32 0, i32 14, !dbg !772
  %442 = load i32, ptr %441, align 4, !dbg !772
  %443 = load ptr, ptr %3, align 8, !dbg !772
  %444 = getelementptr inbounds nuw %struct.DState, ptr %443, i32 0, i32 18, !dbg !772
  %445 = getelementptr inbounds [257 x i32], ptr %444, i64 0, i64 0, !dbg !772
  %446 = call i32 @BZ2_indexIntoF(i32 noundef %442, ptr noundef %445), !dbg !772
  %447 = trunc i32 %446 to i8, !dbg !772
  store i8 %447, ptr %4, align 1, !dbg !772
  %448 = load ptr, ptr %3, align 8, !dbg !772
  %449 = getelementptr inbounds nuw %struct.DState, ptr %448, i32 0, i32 21, !dbg !772
  %450 = load ptr, ptr %449, align 8, !dbg !772
  %451 = load ptr, ptr %3, align 8, !dbg !772
  %452 = getelementptr inbounds nuw %struct.DState, ptr %451, i32 0, i32 14, !dbg !772
  %453 = load i32, ptr %452, align 4, !dbg !772
  %454 = zext i32 %453 to i64, !dbg !772
  %455 = getelementptr inbounds nuw i16, ptr %450, i64 %454, !dbg !772
  %456 = load i16, ptr %455, align 2, !dbg !772
  %457 = zext i16 %456 to i32, !dbg !772
  %458 = load ptr, ptr %3, align 8, !dbg !772
  %459 = getelementptr inbounds nuw %struct.DState, ptr %458, i32 0, i32 22, !dbg !772
  %460 = load ptr, ptr %459, align 8, !dbg !772
  %461 = load ptr, ptr %3, align 8, !dbg !772
  %462 = getelementptr inbounds nuw %struct.DState, ptr %461, i32 0, i32 14, !dbg !772
  %463 = load i32, ptr %462, align 4, !dbg !772
  %464 = lshr i32 %463, 1, !dbg !772
  %465 = zext i32 %464 to i64, !dbg !772
  %466 = getelementptr inbounds nuw i8, ptr %460, i64 %465, !dbg !772
  %467 = load i8, ptr %466, align 1, !dbg !772
  %468 = zext i8 %467 to i32, !dbg !772
  %469 = load ptr, ptr %3, align 8, !dbg !772
  %470 = getelementptr inbounds nuw %struct.DState, ptr %469, i32 0, i32 14, !dbg !772
  %471 = load i32, ptr %470, align 4, !dbg !772
  %472 = shl i32 %471, 2, !dbg !772
  %473 = and i32 %472, 4, !dbg !772
  %474 = lshr i32 %468, %473, !dbg !772
  %475 = and i32 %474, 15, !dbg !772
  %476 = shl i32 %475, 16, !dbg !772
  %477 = or i32 %457, %476, !dbg !772
  %478 = load ptr, ptr %3, align 8, !dbg !772
  %479 = getelementptr inbounds nuw %struct.DState, ptr %478, i32 0, i32 14, !dbg !772
  store i32 %477, ptr %479, align 4, !dbg !772
  %480 = load ptr, ptr %3, align 8, !dbg !773
  %481 = getelementptr inbounds nuw %struct.DState, ptr %480, i32 0, i32 5, !dbg !773
  %482 = load i32, ptr %481, align 8, !dbg !773
  %483 = icmp eq i32 %482, 0, !dbg !773
  br i1 %483, label %484, label %505, !dbg !773

484:                                              ; preds = %439
  %485 = load ptr, ptr %3, align 8, !dbg !775
  %486 = getelementptr inbounds nuw %struct.DState, ptr %485, i32 0, i32 6, !dbg !775
  %487 = load i32, ptr %486, align 4, !dbg !775
  %488 = sext i32 %487 to i64, !dbg !775
  %489 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %488, !dbg !775
  %490 = load i32, ptr %489, align 4, !dbg !775
  %491 = load ptr, ptr %3, align 8, !dbg !775
  %492 = getelementptr inbounds nuw %struct.DState, ptr %491, i32 0, i32 5, !dbg !775
  store i32 %490, ptr %492, align 8, !dbg !775
  %493 = load ptr, ptr %3, align 8, !dbg !775
  %494 = getelementptr inbounds nuw %struct.DState, ptr %493, i32 0, i32 6, !dbg !775
  %495 = load i32, ptr %494, align 4, !dbg !775
  %496 = add nsw i32 %495, 1, !dbg !775
  store i32 %496, ptr %494, align 4, !dbg !775
  %497 = load ptr, ptr %3, align 8, !dbg !777
  %498 = getelementptr inbounds nuw %struct.DState, ptr %497, i32 0, i32 6, !dbg !777
  %499 = load i32, ptr %498, align 4, !dbg !777
  %500 = icmp eq i32 %499, 512, !dbg !777
  br i1 %500, label %501, label %504, !dbg !777

501:                                              ; preds = %484
  %502 = load ptr, ptr %3, align 8, !dbg !777
  %503 = getelementptr inbounds nuw %struct.DState, ptr %502, i32 0, i32 6, !dbg !777
  store i32 0, ptr %503, align 4, !dbg !777
  br label %504, !dbg !777

504:                                              ; preds = %501, %484
  br label %505, !dbg !775

505:                                              ; preds = %504, %439
  %506 = load ptr, ptr %3, align 8, !dbg !779
  %507 = getelementptr inbounds nuw %struct.DState, ptr %506, i32 0, i32 5, !dbg !779
  %508 = load i32, ptr %507, align 8, !dbg !779
  %509 = add nsw i32 %508, -1, !dbg !779
  store i32 %509, ptr %507, align 8, !dbg !779
  %510 = load ptr, ptr %3, align 8, !dbg !780
  %511 = getelementptr inbounds nuw %struct.DState, ptr %510, i32 0, i32 5, !dbg !780
  %512 = load i32, ptr %511, align 8, !dbg !780
  %513 = icmp eq i32 %512, 1, !dbg !780
  %514 = zext i1 %513 to i64, !dbg !780
  %515 = select i1 %513, i32 1, i32 0, !dbg !780
  %516 = load i8, ptr %4, align 1, !dbg !781
  %517 = zext i8 %516 to i32, !dbg !781
  %518 = xor i32 %517, %515, !dbg !781
  %519 = trunc i32 %518 to i8, !dbg !781
  store i8 %519, ptr %4, align 1, !dbg !781
  %520 = load ptr, ptr %3, align 8, !dbg !782
  %521 = getelementptr inbounds nuw %struct.DState, ptr %520, i32 0, i32 17, !dbg !783
  %522 = load i32, ptr %521, align 4, !dbg !784
  %523 = add nsw i32 %522, 1, !dbg !784
  store i32 %523, ptr %521, align 4, !dbg !784
  %524 = load i8, ptr %4, align 1, !dbg !785
  %525 = zext i8 %524 to i32, !dbg !786
  %526 = add nsw i32 %525, 4, !dbg !787
  %527 = load ptr, ptr %3, align 8, !dbg !788
  %528 = getelementptr inbounds nuw %struct.DState, ptr %527, i32 0, i32 3, !dbg !789
  store i32 %526, ptr %528, align 8, !dbg !790
  %529 = load ptr, ptr %3, align 8, !dbg !791
  %530 = getelementptr inbounds nuw %struct.DState, ptr %529, i32 0, i32 14, !dbg !791
  %531 = load i32, ptr %530, align 4, !dbg !791
  %532 = load ptr, ptr %3, align 8, !dbg !791
  %533 = getelementptr inbounds nuw %struct.DState, ptr %532, i32 0, i32 18, !dbg !791
  %534 = getelementptr inbounds [257 x i32], ptr %533, i64 0, i64 0, !dbg !791
  %535 = call i32 @BZ2_indexIntoF(i32 noundef %531, ptr noundef %534), !dbg !791
  %536 = load ptr, ptr %3, align 8, !dbg !791
  %537 = getelementptr inbounds nuw %struct.DState, ptr %536, i32 0, i32 15, !dbg !791
  store i32 %535, ptr %537, align 8, !dbg !791
  %538 = load ptr, ptr %3, align 8, !dbg !791
  %539 = getelementptr inbounds nuw %struct.DState, ptr %538, i32 0, i32 21, !dbg !791
  %540 = load ptr, ptr %539, align 8, !dbg !791
  %541 = load ptr, ptr %3, align 8, !dbg !791
  %542 = getelementptr inbounds nuw %struct.DState, ptr %541, i32 0, i32 14, !dbg !791
  %543 = load i32, ptr %542, align 4, !dbg !791
  %544 = zext i32 %543 to i64, !dbg !791
  %545 = getelementptr inbounds nuw i16, ptr %540, i64 %544, !dbg !791
  %546 = load i16, ptr %545, align 2, !dbg !791
  %547 = zext i16 %546 to i32, !dbg !791
  %548 = load ptr, ptr %3, align 8, !dbg !791
  %549 = getelementptr inbounds nuw %struct.DState, ptr %548, i32 0, i32 22, !dbg !791
  %550 = load ptr, ptr %549, align 8, !dbg !791
  %551 = load ptr, ptr %3, align 8, !dbg !791
  %552 = getelementptr inbounds nuw %struct.DState, ptr %551, i32 0, i32 14, !dbg !791
  %553 = load i32, ptr %552, align 4, !dbg !791
  %554 = lshr i32 %553, 1, !dbg !791
  %555 = zext i32 %554 to i64, !dbg !791
  %556 = getelementptr inbounds nuw i8, ptr %550, i64 %555, !dbg !791
  %557 = load i8, ptr %556, align 1, !dbg !791
  %558 = zext i8 %557 to i32, !dbg !791
  %559 = load ptr, ptr %3, align 8, !dbg !791
  %560 = getelementptr inbounds nuw %struct.DState, ptr %559, i32 0, i32 14, !dbg !791
  %561 = load i32, ptr %560, align 4, !dbg !791
  %562 = shl i32 %561, 2, !dbg !791
  %563 = and i32 %562, 4, !dbg !791
  %564 = lshr i32 %558, %563, !dbg !791
  %565 = and i32 %564, 15, !dbg !791
  %566 = shl i32 %565, 16, !dbg !791
  %567 = or i32 %547, %566, !dbg !791
  %568 = load ptr, ptr %3, align 8, !dbg !791
  %569 = getelementptr inbounds nuw %struct.DState, ptr %568, i32 0, i32 14, !dbg !791
  store i32 %567, ptr %569, align 4, !dbg !791
  %570 = load ptr, ptr %3, align 8, !dbg !792
  %571 = getelementptr inbounds nuw %struct.DState, ptr %570, i32 0, i32 5, !dbg !792
  %572 = load i32, ptr %571, align 8, !dbg !792
  %573 = icmp eq i32 %572, 0, !dbg !792
  br i1 %573, label %574, label %595, !dbg !792

574:                                              ; preds = %505
  %575 = load ptr, ptr %3, align 8, !dbg !794
  %576 = getelementptr inbounds nuw %struct.DState, ptr %575, i32 0, i32 6, !dbg !794
  %577 = load i32, ptr %576, align 4, !dbg !794
  %578 = sext i32 %577 to i64, !dbg !794
  %579 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %578, !dbg !794
  %580 = load i32, ptr %579, align 4, !dbg !794
  %581 = load ptr, ptr %3, align 8, !dbg !794
  %582 = getelementptr inbounds nuw %struct.DState, ptr %581, i32 0, i32 5, !dbg !794
  store i32 %580, ptr %582, align 8, !dbg !794
  %583 = load ptr, ptr %3, align 8, !dbg !794
  %584 = getelementptr inbounds nuw %struct.DState, ptr %583, i32 0, i32 6, !dbg !794
  %585 = load i32, ptr %584, align 4, !dbg !794
  %586 = add nsw i32 %585, 1, !dbg !794
  store i32 %586, ptr %584, align 4, !dbg !794
  %587 = load ptr, ptr %3, align 8, !dbg !796
  %588 = getelementptr inbounds nuw %struct.DState, ptr %587, i32 0, i32 6, !dbg !796
  %589 = load i32, ptr %588, align 4, !dbg !796
  %590 = icmp eq i32 %589, 512, !dbg !796
  br i1 %590, label %591, label %594, !dbg !796

591:                                              ; preds = %574
  %592 = load ptr, ptr %3, align 8, !dbg !796
  %593 = getelementptr inbounds nuw %struct.DState, ptr %592, i32 0, i32 6, !dbg !796
  store i32 0, ptr %593, align 4, !dbg !796
  br label %594, !dbg !796

594:                                              ; preds = %591, %574
  br label %595, !dbg !794

595:                                              ; preds = %594, %505
  %596 = load ptr, ptr %3, align 8, !dbg !798
  %597 = getelementptr inbounds nuw %struct.DState, ptr %596, i32 0, i32 5, !dbg !798
  %598 = load i32, ptr %597, align 8, !dbg !798
  %599 = add nsw i32 %598, -1, !dbg !798
  store i32 %599, ptr %597, align 8, !dbg !798
  %600 = load ptr, ptr %3, align 8, !dbg !799
  %601 = getelementptr inbounds nuw %struct.DState, ptr %600, i32 0, i32 5, !dbg !799
  %602 = load i32, ptr %601, align 8, !dbg !799
  %603 = icmp eq i32 %602, 1, !dbg !799
  %604 = zext i1 %603 to i64, !dbg !799
  %605 = select i1 %603, i32 1, i32 0, !dbg !799
  %606 = load ptr, ptr %3, align 8, !dbg !800
  %607 = getelementptr inbounds nuw %struct.DState, ptr %606, i32 0, i32 15, !dbg !801
  %608 = load i32, ptr %607, align 8, !dbg !802
  %609 = xor i32 %608, %605, !dbg !802
  store i32 %609, ptr %607, align 8, !dbg !802
  %610 = load ptr, ptr %3, align 8, !dbg !803
  %611 = getelementptr inbounds nuw %struct.DState, ptr %610, i32 0, i32 17, !dbg !804
  %612 = load i32, ptr %611, align 4, !dbg !805
  %613 = add nsw i32 %612, 1, !dbg !805
  store i32 %613, ptr %611, align 4, !dbg !805
  br label %10, !dbg !594, !llvm.loop !689

614:                                              ; preds = %1
  br label %615, !dbg !806

615:                                              ; preds = %614, %775, %783, %843, %851, %911, %919, %924
  br label %616, !dbg !808

616:                                              ; preds = %615, %693
  %617 = load ptr, ptr %3, align 8, !dbg !810
  %618 = getelementptr inbounds nuw %struct.DState, ptr %617, i32 0, i32 0, !dbg !813
  %619 = load ptr, ptr %618, align 8, !dbg !813
  %620 = getelementptr inbounds nuw %struct.bz_stream, ptr %619, i32 0, i32 5, !dbg !814
  %621 = load i32, ptr %620, align 8, !dbg !814
  %622 = icmp eq i32 %621, 0, !dbg !815
  br i1 %622, label %623, label %624, !dbg !815

623:                                              ; preds = %616
  store i8 0, ptr %2, align 1, !dbg !816
  br label %1019, !dbg !816

624:                                              ; preds = %616
  %625 = load ptr, ptr %3, align 8, !dbg !817
  %626 = getelementptr inbounds nuw %struct.DState, ptr %625, i32 0, i32 3, !dbg !819
  %627 = load i32, ptr %626, align 8, !dbg !819
  %628 = icmp eq i32 %627, 0, !dbg !820
  br i1 %628, label %629, label %630, !dbg !820

629:                                              ; preds = %624
  br label %694, !dbg !821

630:                                              ; preds = %624
  %631 = load ptr, ptr %3, align 8, !dbg !822
  %632 = getelementptr inbounds nuw %struct.DState, ptr %631, i32 0, i32 2, !dbg !823
  %633 = load i8, ptr %632, align 4, !dbg !823
  %634 = load ptr, ptr %3, align 8, !dbg !824
  %635 = getelementptr inbounds nuw %struct.DState, ptr %634, i32 0, i32 0, !dbg !825
  %636 = load ptr, ptr %635, align 8, !dbg !825
  %637 = getelementptr inbounds nuw %struct.bz_stream, ptr %636, i32 0, i32 4, !dbg !826
  %638 = load ptr, ptr %637, align 8, !dbg !826
  store i8 %633, ptr %638, align 1, !dbg !827
  %639 = load ptr, ptr %3, align 8, !dbg !828
  %640 = getelementptr inbounds nuw %struct.DState, ptr %639, i32 0, i32 25, !dbg !828
  %641 = load i32, ptr %640, align 8, !dbg !828
  %642 = shl i32 %641, 8, !dbg !828
  %643 = load ptr, ptr %3, align 8, !dbg !828
  %644 = getelementptr inbounds nuw %struct.DState, ptr %643, i32 0, i32 25, !dbg !828
  %645 = load i32, ptr %644, align 8, !dbg !828
  %646 = lshr i32 %645, 24, !dbg !828
  %647 = load ptr, ptr %3, align 8, !dbg !828
  %648 = getelementptr inbounds nuw %struct.DState, ptr %647, i32 0, i32 2, !dbg !828
  %649 = load i8, ptr %648, align 4, !dbg !828
  %650 = zext i8 %649 to i32, !dbg !828
  %651 = xor i32 %646, %650, !dbg !828
  %652 = zext i32 %651 to i64, !dbg !828
  %653 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %652, !dbg !828
  %654 = load i32, ptr %653, align 4, !dbg !828
  %655 = xor i32 %642, %654, !dbg !828
  %656 = load ptr, ptr %3, align 8, !dbg !828
  %657 = getelementptr inbounds nuw %struct.DState, ptr %656, i32 0, i32 25, !dbg !828
  store i32 %655, ptr %657, align 8, !dbg !828
  %658 = load ptr, ptr %3, align 8, !dbg !830
  %659 = getelementptr inbounds nuw %struct.DState, ptr %658, i32 0, i32 3, !dbg !831
  %660 = load i32, ptr %659, align 8, !dbg !832
  %661 = add nsw i32 %660, -1, !dbg !832
  store i32 %661, ptr %659, align 8, !dbg !832
  %662 = load ptr, ptr %3, align 8, !dbg !833
  %663 = getelementptr inbounds nuw %struct.DState, ptr %662, i32 0, i32 0, !dbg !834
  %664 = load ptr, ptr %663, align 8, !dbg !834
  %665 = getelementptr inbounds nuw %struct.bz_stream, ptr %664, i32 0, i32 4, !dbg !835
  %666 = load ptr, ptr %665, align 8, !dbg !836
  %667 = getelementptr inbounds nuw i8, ptr %666, i32 1, !dbg !836
  store ptr %667, ptr %665, align 8, !dbg !836
  %668 = load ptr, ptr %3, align 8, !dbg !837
  %669 = getelementptr inbounds nuw %struct.DState, ptr %668, i32 0, i32 0, !dbg !838
  %670 = load ptr, ptr %669, align 8, !dbg !838
  %671 = getelementptr inbounds nuw %struct.bz_stream, ptr %670, i32 0, i32 5, !dbg !839
  %672 = load i32, ptr %671, align 8, !dbg !840
  %673 = add i32 %672, -1, !dbg !840
  store i32 %673, ptr %671, align 8, !dbg !840
  %674 = load ptr, ptr %3, align 8, !dbg !841
  %675 = getelementptr inbounds nuw %struct.DState, ptr %674, i32 0, i32 0, !dbg !842
  %676 = load ptr, ptr %675, align 8, !dbg !842
  %677 = getelementptr inbounds nuw %struct.bz_stream, ptr %676, i32 0, i32 6, !dbg !843
  %678 = load i32, ptr %677, align 4, !dbg !844
  %679 = add i32 %678, 1, !dbg !844
  store i32 %679, ptr %677, align 4, !dbg !844
  %680 = load ptr, ptr %3, align 8, !dbg !845
  %681 = getelementptr inbounds nuw %struct.DState, ptr %680, i32 0, i32 0, !dbg !847
  %682 = load ptr, ptr %681, align 8, !dbg !847
  %683 = getelementptr inbounds nuw %struct.bz_stream, ptr %682, i32 0, i32 6, !dbg !848
  %684 = load i32, ptr %683, align 4, !dbg !848
  %685 = icmp eq i32 %684, 0, !dbg !849
  br i1 %685, label %686, label %693, !dbg !849

686:                                              ; preds = %630
  %687 = load ptr, ptr %3, align 8, !dbg !850
  %688 = getelementptr inbounds nuw %struct.DState, ptr %687, i32 0, i32 0, !dbg !851
  %689 = load ptr, ptr %688, align 8, !dbg !851
  %690 = getelementptr inbounds nuw %struct.bz_stream, ptr %689, i32 0, i32 7, !dbg !852
  %691 = load i32, ptr %690, align 8, !dbg !853
  %692 = add i32 %691, 1, !dbg !853
  store i32 %692, ptr %690, align 8, !dbg !853
  br label %693, !dbg !850

693:                                              ; preds = %686, %630
  br label %616, !dbg !808, !llvm.loop !854

694:                                              ; preds = %629
  %695 = load ptr, ptr %3, align 8, !dbg !856
  %696 = getelementptr inbounds nuw %struct.DState, ptr %695, i32 0, i32 17, !dbg !858
  %697 = load i32, ptr %696, align 4, !dbg !858
  %698 = load ptr, ptr %3, align 8, !dbg !859
  %699 = getelementptr inbounds nuw %struct.DState, ptr %698, i32 0, i32 51, !dbg !860
  %700 = load i32, ptr %699, align 8, !dbg !860
  %701 = add nsw i32 %700, 1, !dbg !861
  %702 = icmp eq i32 %697, %701, !dbg !862
  br i1 %702, label %703, label %704, !dbg !862

703:                                              ; preds = %694
  store i8 0, ptr %2, align 1, !dbg !863
  br label %1019, !dbg !863

704:                                              ; preds = %694
  %705 = load ptr, ptr %3, align 8, !dbg !864
  %706 = getelementptr inbounds nuw %struct.DState, ptr %705, i32 0, i32 17, !dbg !866
  %707 = load i32, ptr %706, align 4, !dbg !866
  %708 = load ptr, ptr %3, align 8, !dbg !867
  %709 = getelementptr inbounds nuw %struct.DState, ptr %708, i32 0, i32 51, !dbg !868
  %710 = load i32, ptr %709, align 8, !dbg !868
  %711 = add nsw i32 %710, 1, !dbg !869
  %712 = icmp sgt i32 %707, %711, !dbg !870
  br i1 %712, label %713, label %714, !dbg !870

713:                                              ; preds = %704
  store i8 1, ptr %2, align 1, !dbg !871
  br label %1019, !dbg !871

714:                                              ; preds = %704
  %715 = load ptr, ptr %3, align 8, !dbg !872
  %716 = getelementptr inbounds nuw %struct.DState, ptr %715, i32 0, i32 3, !dbg !873
  store i32 1, ptr %716, align 8, !dbg !874
  %717 = load ptr, ptr %3, align 8, !dbg !875
  %718 = getelementptr inbounds nuw %struct.DState, ptr %717, i32 0, i32 15, !dbg !876
  %719 = load i32, ptr %718, align 8, !dbg !876
  %720 = trunc i32 %719 to i8, !dbg !875
  %721 = load ptr, ptr %3, align 8, !dbg !877
  %722 = getelementptr inbounds nuw %struct.DState, ptr %721, i32 0, i32 2, !dbg !878
  store i8 %720, ptr %722, align 4, !dbg !879
  %723 = load ptr, ptr %3, align 8, !dbg !880
  %724 = getelementptr inbounds nuw %struct.DState, ptr %723, i32 0, i32 14, !dbg !880
  %725 = load i32, ptr %724, align 4, !dbg !880
  %726 = load ptr, ptr %3, align 8, !dbg !880
  %727 = getelementptr inbounds nuw %struct.DState, ptr %726, i32 0, i32 18, !dbg !880
  %728 = getelementptr inbounds [257 x i32], ptr %727, i64 0, i64 0, !dbg !880
  %729 = call i32 @BZ2_indexIntoF(i32 noundef %725, ptr noundef %728), !dbg !880
  %730 = trunc i32 %729 to i8, !dbg !880
  store i8 %730, ptr %4, align 1, !dbg !880
  %731 = load ptr, ptr %3, align 8, !dbg !880
  %732 = getelementptr inbounds nuw %struct.DState, ptr %731, i32 0, i32 21, !dbg !880
  %733 = load ptr, ptr %732, align 8, !dbg !880
  %734 = load ptr, ptr %3, align 8, !dbg !880
  %735 = getelementptr inbounds nuw %struct.DState, ptr %734, i32 0, i32 14, !dbg !880
  %736 = load i32, ptr %735, align 4, !dbg !880
  %737 = zext i32 %736 to i64, !dbg !880
  %738 = getelementptr inbounds nuw i16, ptr %733, i64 %737, !dbg !880
  %739 = load i16, ptr %738, align 2, !dbg !880
  %740 = zext i16 %739 to i32, !dbg !880
  %741 = load ptr, ptr %3, align 8, !dbg !880
  %742 = getelementptr inbounds nuw %struct.DState, ptr %741, i32 0, i32 22, !dbg !880
  %743 = load ptr, ptr %742, align 8, !dbg !880
  %744 = load ptr, ptr %3, align 8, !dbg !880
  %745 = getelementptr inbounds nuw %struct.DState, ptr %744, i32 0, i32 14, !dbg !880
  %746 = load i32, ptr %745, align 4, !dbg !880
  %747 = lshr i32 %746, 1, !dbg !880
  %748 = zext i32 %747 to i64, !dbg !880
  %749 = getelementptr inbounds nuw i8, ptr %743, i64 %748, !dbg !880
  %750 = load i8, ptr %749, align 1, !dbg !880
  %751 = zext i8 %750 to i32, !dbg !880
  %752 = load ptr, ptr %3, align 8, !dbg !880
  %753 = getelementptr inbounds nuw %struct.DState, ptr %752, i32 0, i32 14, !dbg !880
  %754 = load i32, ptr %753, align 4, !dbg !880
  %755 = shl i32 %754, 2, !dbg !880
  %756 = and i32 %755, 4, !dbg !880
  %757 = lshr i32 %751, %756, !dbg !880
  %758 = and i32 %757, 15, !dbg !880
  %759 = shl i32 %758, 16, !dbg !880
  %760 = or i32 %740, %759, !dbg !880
  %761 = load ptr, ptr %3, align 8, !dbg !880
  %762 = getelementptr inbounds nuw %struct.DState, ptr %761, i32 0, i32 14, !dbg !880
  store i32 %760, ptr %762, align 4, !dbg !880
  %763 = load ptr, ptr %3, align 8, !dbg !881
  %764 = getelementptr inbounds nuw %struct.DState, ptr %763, i32 0, i32 17, !dbg !882
  %765 = load i32, ptr %764, align 4, !dbg !883
  %766 = add nsw i32 %765, 1, !dbg !883
  store i32 %766, ptr %764, align 4, !dbg !883
  %767 = load ptr, ptr %3, align 8, !dbg !884
  %768 = getelementptr inbounds nuw %struct.DState, ptr %767, i32 0, i32 17, !dbg !886
  %769 = load i32, ptr %768, align 4, !dbg !886
  %770 = load ptr, ptr %3, align 8, !dbg !887
  %771 = getelementptr inbounds nuw %struct.DState, ptr %770, i32 0, i32 51, !dbg !888
  %772 = load i32, ptr %771, align 8, !dbg !888
  %773 = add nsw i32 %772, 1, !dbg !889
  %774 = icmp eq i32 %769, %773, !dbg !890
  br i1 %774, label %775, label %776, !dbg !890

775:                                              ; preds = %714
  br label %615, !dbg !891, !llvm.loop !892

776:                                              ; preds = %714
  %777 = load i8, ptr %4, align 1, !dbg !894
  %778 = zext i8 %777 to i32, !dbg !894
  %779 = load ptr, ptr %3, align 8, !dbg !896
  %780 = getelementptr inbounds nuw %struct.DState, ptr %779, i32 0, i32 15, !dbg !897
  %781 = load i32, ptr %780, align 8, !dbg !897
  %782 = icmp ne i32 %778, %781, !dbg !898
  br i1 %782, label %783, label %788, !dbg !898

783:                                              ; preds = %776
  %784 = load i8, ptr %4, align 1, !dbg !899
  %785 = zext i8 %784 to i32, !dbg !899
  %786 = load ptr, ptr %3, align 8, !dbg !901
  %787 = getelementptr inbounds nuw %struct.DState, ptr %786, i32 0, i32 15, !dbg !902
  store i32 %785, ptr %787, align 8, !dbg !903
  br label %615, !dbg !904, !llvm.loop !892

788:                                              ; preds = %776
  %789 = load ptr, ptr %3, align 8, !dbg !905
  %790 = getelementptr inbounds nuw %struct.DState, ptr %789, i32 0, i32 3, !dbg !906
  store i32 2, ptr %790, align 8, !dbg !907
  %791 = load ptr, ptr %3, align 8, !dbg !908
  %792 = getelementptr inbounds nuw %struct.DState, ptr %791, i32 0, i32 14, !dbg !908
  %793 = load i32, ptr %792, align 4, !dbg !908
  %794 = load ptr, ptr %3, align 8, !dbg !908
  %795 = getelementptr inbounds nuw %struct.DState, ptr %794, i32 0, i32 18, !dbg !908
  %796 = getelementptr inbounds [257 x i32], ptr %795, i64 0, i64 0, !dbg !908
  %797 = call i32 @BZ2_indexIntoF(i32 noundef %793, ptr noundef %796), !dbg !908
  %798 = trunc i32 %797 to i8, !dbg !908
  store i8 %798, ptr %4, align 1, !dbg !908
  %799 = load ptr, ptr %3, align 8, !dbg !908
  %800 = getelementptr inbounds nuw %struct.DState, ptr %799, i32 0, i32 21, !dbg !908
  %801 = load ptr, ptr %800, align 8, !dbg !908
  %802 = load ptr, ptr %3, align 8, !dbg !908
  %803 = getelementptr inbounds nuw %struct.DState, ptr %802, i32 0, i32 14, !dbg !908
  %804 = load i32, ptr %803, align 4, !dbg !908
  %805 = zext i32 %804 to i64, !dbg !908
  %806 = getelementptr inbounds nuw i16, ptr %801, i64 %805, !dbg !908
  %807 = load i16, ptr %806, align 2, !dbg !908
  %808 = zext i16 %807 to i32, !dbg !908
  %809 = load ptr, ptr %3, align 8, !dbg !908
  %810 = getelementptr inbounds nuw %struct.DState, ptr %809, i32 0, i32 22, !dbg !908
  %811 = load ptr, ptr %810, align 8, !dbg !908
  %812 = load ptr, ptr %3, align 8, !dbg !908
  %813 = getelementptr inbounds nuw %struct.DState, ptr %812, i32 0, i32 14, !dbg !908
  %814 = load i32, ptr %813, align 4, !dbg !908
  %815 = lshr i32 %814, 1, !dbg !908
  %816 = zext i32 %815 to i64, !dbg !908
  %817 = getelementptr inbounds nuw i8, ptr %811, i64 %816, !dbg !908
  %818 = load i8, ptr %817, align 1, !dbg !908
  %819 = zext i8 %818 to i32, !dbg !908
  %820 = load ptr, ptr %3, align 8, !dbg !908
  %821 = getelementptr inbounds nuw %struct.DState, ptr %820, i32 0, i32 14, !dbg !908
  %822 = load i32, ptr %821, align 4, !dbg !908
  %823 = shl i32 %822, 2, !dbg !908
  %824 = and i32 %823, 4, !dbg !908
  %825 = lshr i32 %819, %824, !dbg !908
  %826 = and i32 %825, 15, !dbg !908
  %827 = shl i32 %826, 16, !dbg !908
  %828 = or i32 %808, %827, !dbg !908
  %829 = load ptr, ptr %3, align 8, !dbg !908
  %830 = getelementptr inbounds nuw %struct.DState, ptr %829, i32 0, i32 14, !dbg !908
  store i32 %828, ptr %830, align 4, !dbg !908
  %831 = load ptr, ptr %3, align 8, !dbg !909
  %832 = getelementptr inbounds nuw %struct.DState, ptr %831, i32 0, i32 17, !dbg !910
  %833 = load i32, ptr %832, align 4, !dbg !911
  %834 = add nsw i32 %833, 1, !dbg !911
  store i32 %834, ptr %832, align 4, !dbg !911
  %835 = load ptr, ptr %3, align 8, !dbg !912
  %836 = getelementptr inbounds nuw %struct.DState, ptr %835, i32 0, i32 17, !dbg !914
  %837 = load i32, ptr %836, align 4, !dbg !914
  %838 = load ptr, ptr %3, align 8, !dbg !915
  %839 = getelementptr inbounds nuw %struct.DState, ptr %838, i32 0, i32 51, !dbg !916
  %840 = load i32, ptr %839, align 8, !dbg !916
  %841 = add nsw i32 %840, 1, !dbg !917
  %842 = icmp eq i32 %837, %841, !dbg !918
  br i1 %842, label %843, label %844, !dbg !918

843:                                              ; preds = %788
  br label %615, !dbg !919, !llvm.loop !892

844:                                              ; preds = %788
  %845 = load i8, ptr %4, align 1, !dbg !920
  %846 = zext i8 %845 to i32, !dbg !920
  %847 = load ptr, ptr %3, align 8, !dbg !922
  %848 = getelementptr inbounds nuw %struct.DState, ptr %847, i32 0, i32 15, !dbg !923
  %849 = load i32, ptr %848, align 8, !dbg !923
  %850 = icmp ne i32 %846, %849, !dbg !924
  br i1 %850, label %851, label %856, !dbg !924

851:                                              ; preds = %844
  %852 = load i8, ptr %4, align 1, !dbg !925
  %853 = zext i8 %852 to i32, !dbg !925
  %854 = load ptr, ptr %3, align 8, !dbg !927
  %855 = getelementptr inbounds nuw %struct.DState, ptr %854, i32 0, i32 15, !dbg !928
  store i32 %853, ptr %855, align 8, !dbg !929
  br label %615, !dbg !930, !llvm.loop !892

856:                                              ; preds = %844
  %857 = load ptr, ptr %3, align 8, !dbg !931
  %858 = getelementptr inbounds nuw %struct.DState, ptr %857, i32 0, i32 3, !dbg !932
  store i32 3, ptr %858, align 8, !dbg !933
  %859 = load ptr, ptr %3, align 8, !dbg !934
  %860 = getelementptr inbounds nuw %struct.DState, ptr %859, i32 0, i32 14, !dbg !934
  %861 = load i32, ptr %860, align 4, !dbg !934
  %862 = load ptr, ptr %3, align 8, !dbg !934
  %863 = getelementptr inbounds nuw %struct.DState, ptr %862, i32 0, i32 18, !dbg !934
  %864 = getelementptr inbounds [257 x i32], ptr %863, i64 0, i64 0, !dbg !934
  %865 = call i32 @BZ2_indexIntoF(i32 noundef %861, ptr noundef %864), !dbg !934
  %866 = trunc i32 %865 to i8, !dbg !934
  store i8 %866, ptr %4, align 1, !dbg !934
  %867 = load ptr, ptr %3, align 8, !dbg !934
  %868 = getelementptr inbounds nuw %struct.DState, ptr %867, i32 0, i32 21, !dbg !934
  %869 = load ptr, ptr %868, align 8, !dbg !934
  %870 = load ptr, ptr %3, align 8, !dbg !934
  %871 = getelementptr inbounds nuw %struct.DState, ptr %870, i32 0, i32 14, !dbg !934
  %872 = load i32, ptr %871, align 4, !dbg !934
  %873 = zext i32 %872 to i64, !dbg !934
  %874 = getelementptr inbounds nuw i16, ptr %869, i64 %873, !dbg !934
  %875 = load i16, ptr %874, align 2, !dbg !934
  %876 = zext i16 %875 to i32, !dbg !934
  %877 = load ptr, ptr %3, align 8, !dbg !934
  %878 = getelementptr inbounds nuw %struct.DState, ptr %877, i32 0, i32 22, !dbg !934
  %879 = load ptr, ptr %878, align 8, !dbg !934
  %880 = load ptr, ptr %3, align 8, !dbg !934
  %881 = getelementptr inbounds nuw %struct.DState, ptr %880, i32 0, i32 14, !dbg !934
  %882 = load i32, ptr %881, align 4, !dbg !934
  %883 = lshr i32 %882, 1, !dbg !934
  %884 = zext i32 %883 to i64, !dbg !934
  %885 = getelementptr inbounds nuw i8, ptr %879, i64 %884, !dbg !934
  %886 = load i8, ptr %885, align 1, !dbg !934
  %887 = zext i8 %886 to i32, !dbg !934
  %888 = load ptr, ptr %3, align 8, !dbg !934
  %889 = getelementptr inbounds nuw %struct.DState, ptr %888, i32 0, i32 14, !dbg !934
  %890 = load i32, ptr %889, align 4, !dbg !934
  %891 = shl i32 %890, 2, !dbg !934
  %892 = and i32 %891, 4, !dbg !934
  %893 = lshr i32 %887, %892, !dbg !934
  %894 = and i32 %893, 15, !dbg !934
  %895 = shl i32 %894, 16, !dbg !934
  %896 = or i32 %876, %895, !dbg !934
  %897 = load ptr, ptr %3, align 8, !dbg !934
  %898 = getelementptr inbounds nuw %struct.DState, ptr %897, i32 0, i32 14, !dbg !934
  store i32 %896, ptr %898, align 4, !dbg !934
  %899 = load ptr, ptr %3, align 8, !dbg !935
  %900 = getelementptr inbounds nuw %struct.DState, ptr %899, i32 0, i32 17, !dbg !936
  %901 = load i32, ptr %900, align 4, !dbg !937
  %902 = add nsw i32 %901, 1, !dbg !937
  store i32 %902, ptr %900, align 4, !dbg !937
  %903 = load ptr, ptr %3, align 8, !dbg !938
  %904 = getelementptr inbounds nuw %struct.DState, ptr %903, i32 0, i32 17, !dbg !940
  %905 = load i32, ptr %904, align 4, !dbg !940
  %906 = load ptr, ptr %3, align 8, !dbg !941
  %907 = getelementptr inbounds nuw %struct.DState, ptr %906, i32 0, i32 51, !dbg !942
  %908 = load i32, ptr %907, align 8, !dbg !942
  %909 = add nsw i32 %908, 1, !dbg !943
  %910 = icmp eq i32 %905, %909, !dbg !944
  br i1 %910, label %911, label %912, !dbg !944

911:                                              ; preds = %856
  br label %615, !dbg !945, !llvm.loop !892

912:                                              ; preds = %856
  %913 = load i8, ptr %4, align 1, !dbg !946
  %914 = zext i8 %913 to i32, !dbg !946
  %915 = load ptr, ptr %3, align 8, !dbg !948
  %916 = getelementptr inbounds nuw %struct.DState, ptr %915, i32 0, i32 15, !dbg !949
  %917 = load i32, ptr %916, align 8, !dbg !949
  %918 = icmp ne i32 %914, %917, !dbg !950
  br i1 %918, label %919, label %924, !dbg !950

919:                                              ; preds = %912
  %920 = load i8, ptr %4, align 1, !dbg !951
  %921 = zext i8 %920 to i32, !dbg !951
  %922 = load ptr, ptr %3, align 8, !dbg !953
  %923 = getelementptr inbounds nuw %struct.DState, ptr %922, i32 0, i32 15, !dbg !954
  store i32 %921, ptr %923, align 8, !dbg !955
  br label %615, !dbg !956, !llvm.loop !892

924:                                              ; preds = %912
  %925 = load ptr, ptr %3, align 8, !dbg !957
  %926 = getelementptr inbounds nuw %struct.DState, ptr %925, i32 0, i32 14, !dbg !957
  %927 = load i32, ptr %926, align 4, !dbg !957
  %928 = load ptr, ptr %3, align 8, !dbg !957
  %929 = getelementptr inbounds nuw %struct.DState, ptr %928, i32 0, i32 18, !dbg !957
  %930 = getelementptr inbounds [257 x i32], ptr %929, i64 0, i64 0, !dbg !957
  %931 = call i32 @BZ2_indexIntoF(i32 noundef %927, ptr noundef %930), !dbg !957
  %932 = trunc i32 %931 to i8, !dbg !957
  store i8 %932, ptr %4, align 1, !dbg !957
  %933 = load ptr, ptr %3, align 8, !dbg !957
  %934 = getelementptr inbounds nuw %struct.DState, ptr %933, i32 0, i32 21, !dbg !957
  %935 = load ptr, ptr %934, align 8, !dbg !957
  %936 = load ptr, ptr %3, align 8, !dbg !957
  %937 = getelementptr inbounds nuw %struct.DState, ptr %936, i32 0, i32 14, !dbg !957
  %938 = load i32, ptr %937, align 4, !dbg !957
  %939 = zext i32 %938 to i64, !dbg !957
  %940 = getelementptr inbounds nuw i16, ptr %935, i64 %939, !dbg !957
  %941 = load i16, ptr %940, align 2, !dbg !957
  %942 = zext i16 %941 to i32, !dbg !957
  %943 = load ptr, ptr %3, align 8, !dbg !957
  %944 = getelementptr inbounds nuw %struct.DState, ptr %943, i32 0, i32 22, !dbg !957
  %945 = load ptr, ptr %944, align 8, !dbg !957
  %946 = load ptr, ptr %3, align 8, !dbg !957
  %947 = getelementptr inbounds nuw %struct.DState, ptr %946, i32 0, i32 14, !dbg !957
  %948 = load i32, ptr %947, align 4, !dbg !957
  %949 = lshr i32 %948, 1, !dbg !957
  %950 = zext i32 %949 to i64, !dbg !957
  %951 = getelementptr inbounds nuw i8, ptr %945, i64 %950, !dbg !957
  %952 = load i8, ptr %951, align 1, !dbg !957
  %953 = zext i8 %952 to i32, !dbg !957
  %954 = load ptr, ptr %3, align 8, !dbg !957
  %955 = getelementptr inbounds nuw %struct.DState, ptr %954, i32 0, i32 14, !dbg !957
  %956 = load i32, ptr %955, align 4, !dbg !957
  %957 = shl i32 %956, 2, !dbg !957
  %958 = and i32 %957, 4, !dbg !957
  %959 = lshr i32 %953, %958, !dbg !957
  %960 = and i32 %959, 15, !dbg !957
  %961 = shl i32 %960, 16, !dbg !957
  %962 = or i32 %942, %961, !dbg !957
  %963 = load ptr, ptr %3, align 8, !dbg !957
  %964 = getelementptr inbounds nuw %struct.DState, ptr %963, i32 0, i32 14, !dbg !957
  store i32 %962, ptr %964, align 4, !dbg !957
  %965 = load ptr, ptr %3, align 8, !dbg !958
  %966 = getelementptr inbounds nuw %struct.DState, ptr %965, i32 0, i32 17, !dbg !959
  %967 = load i32, ptr %966, align 4, !dbg !960
  %968 = add nsw i32 %967, 1, !dbg !960
  store i32 %968, ptr %966, align 4, !dbg !960
  %969 = load i8, ptr %4, align 1, !dbg !961
  %970 = zext i8 %969 to i32, !dbg !962
  %971 = add nsw i32 %970, 4, !dbg !963
  %972 = load ptr, ptr %3, align 8, !dbg !964
  %973 = getelementptr inbounds nuw %struct.DState, ptr %972, i32 0, i32 3, !dbg !965
  store i32 %971, ptr %973, align 8, !dbg !966
  %974 = load ptr, ptr %3, align 8, !dbg !967
  %975 = getelementptr inbounds nuw %struct.DState, ptr %974, i32 0, i32 14, !dbg !967
  %976 = load i32, ptr %975, align 4, !dbg !967
  %977 = load ptr, ptr %3, align 8, !dbg !967
  %978 = getelementptr inbounds nuw %struct.DState, ptr %977, i32 0, i32 18, !dbg !967
  %979 = getelementptr inbounds [257 x i32], ptr %978, i64 0, i64 0, !dbg !967
  %980 = call i32 @BZ2_indexIntoF(i32 noundef %976, ptr noundef %979), !dbg !967
  %981 = load ptr, ptr %3, align 8, !dbg !967
  %982 = getelementptr inbounds nuw %struct.DState, ptr %981, i32 0, i32 15, !dbg !967
  store i32 %980, ptr %982, align 8, !dbg !967
  %983 = load ptr, ptr %3, align 8, !dbg !967
  %984 = getelementptr inbounds nuw %struct.DState, ptr %983, i32 0, i32 21, !dbg !967
  %985 = load ptr, ptr %984, align 8, !dbg !967
  %986 = load ptr, ptr %3, align 8, !dbg !967
  %987 = getelementptr inbounds nuw %struct.DState, ptr %986, i32 0, i32 14, !dbg !967
  %988 = load i32, ptr %987, align 4, !dbg !967
  %989 = zext i32 %988 to i64, !dbg !967
  %990 = getelementptr inbounds nuw i16, ptr %985, i64 %989, !dbg !967
  %991 = load i16, ptr %990, align 2, !dbg !967
  %992 = zext i16 %991 to i32, !dbg !967
  %993 = load ptr, ptr %3, align 8, !dbg !967
  %994 = getelementptr inbounds nuw %struct.DState, ptr %993, i32 0, i32 22, !dbg !967
  %995 = load ptr, ptr %994, align 8, !dbg !967
  %996 = load ptr, ptr %3, align 8, !dbg !967
  %997 = getelementptr inbounds nuw %struct.DState, ptr %996, i32 0, i32 14, !dbg !967
  %998 = load i32, ptr %997, align 4, !dbg !967
  %999 = lshr i32 %998, 1, !dbg !967
  %1000 = zext i32 %999 to i64, !dbg !967
  %1001 = getelementptr inbounds nuw i8, ptr %995, i64 %1000, !dbg !967
  %1002 = load i8, ptr %1001, align 1, !dbg !967
  %1003 = zext i8 %1002 to i32, !dbg !967
  %1004 = load ptr, ptr %3, align 8, !dbg !967
  %1005 = getelementptr inbounds nuw %struct.DState, ptr %1004, i32 0, i32 14, !dbg !967
  %1006 = load i32, ptr %1005, align 4, !dbg !967
  %1007 = shl i32 %1006, 2, !dbg !967
  %1008 = and i32 %1007, 4, !dbg !967
  %1009 = lshr i32 %1003, %1008, !dbg !967
  %1010 = and i32 %1009, 15, !dbg !967
  %1011 = shl i32 %1010, 16, !dbg !967
  %1012 = or i32 %992, %1011, !dbg !967
  %1013 = load ptr, ptr %3, align 8, !dbg !967
  %1014 = getelementptr inbounds nuw %struct.DState, ptr %1013, i32 0, i32 14, !dbg !967
  store i32 %1012, ptr %1014, align 4, !dbg !967
  %1015 = load ptr, ptr %3, align 8, !dbg !968
  %1016 = getelementptr inbounds nuw %struct.DState, ptr %1015, i32 0, i32 17, !dbg !969
  %1017 = load i32, ptr %1016, align 4, !dbg !970
  %1018 = add nsw i32 %1017, 1, !dbg !970
  store i32 %1018, ptr %1016, align 4, !dbg !970
  br label %615, !dbg !806, !llvm.loop !892

1019:                                             ; preds = %713, %703, %623, %108, %98, %18
  %1020 = load i8, ptr %2, align 1, !dbg !971
  ret i8 %1020, !dbg !971
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @unRLE_obuf_to_output_FAST(ptr noundef %0) #0 !dbg !972 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !973, !DIExpression(), !974)
    #dbg_declare(ptr %4, !975, !DIExpression(), !976)
  %17 = load ptr, ptr %3, align 8, !dbg !977
  %18 = getelementptr inbounds nuw %struct.DState, ptr %17, i32 0, i32 4, !dbg !979
  %19 = load i8, ptr %18, align 4, !dbg !979
  %20 = icmp ne i8 %19, 0, !dbg !977
  br i1 %20, label %21, label %528, !dbg !977

21:                                               ; preds = %1
  br label %22, !dbg !980

22:                                               ; preds = %21, %202, %210, %290, %298, %378, %386, %509
  br label %23, !dbg !982

23:                                               ; preds = %22, %100
  %24 = load ptr, ptr %3, align 8, !dbg !984
  %25 = getelementptr inbounds nuw %struct.DState, ptr %24, i32 0, i32 0, !dbg !987
  %26 = load ptr, ptr %25, align 8, !dbg !987
  %27 = getelementptr inbounds nuw %struct.bz_stream, ptr %26, i32 0, i32 5, !dbg !988
  %28 = load i32, ptr %27, align 8, !dbg !988
  %29 = icmp eq i32 %28, 0, !dbg !989
  br i1 %29, label %30, label %31, !dbg !989

30:                                               ; preds = %23
  store i8 0, ptr %2, align 1, !dbg !990
  br label %798, !dbg !990

31:                                               ; preds = %23
  %32 = load ptr, ptr %3, align 8, !dbg !991
  %33 = getelementptr inbounds nuw %struct.DState, ptr %32, i32 0, i32 3, !dbg !993
  %34 = load i32, ptr %33, align 8, !dbg !993
  %35 = icmp eq i32 %34, 0, !dbg !994
  br i1 %35, label %36, label %37, !dbg !994

36:                                               ; preds = %31
  br label %101, !dbg !995

37:                                               ; preds = %31
  %38 = load ptr, ptr %3, align 8, !dbg !996
  %39 = getelementptr inbounds nuw %struct.DState, ptr %38, i32 0, i32 2, !dbg !997
  %40 = load i8, ptr %39, align 4, !dbg !997
  %41 = load ptr, ptr %3, align 8, !dbg !998
  %42 = getelementptr inbounds nuw %struct.DState, ptr %41, i32 0, i32 0, !dbg !999
  %43 = load ptr, ptr %42, align 8, !dbg !999
  %44 = getelementptr inbounds nuw %struct.bz_stream, ptr %43, i32 0, i32 4, !dbg !1000
  %45 = load ptr, ptr %44, align 8, !dbg !1000
  store i8 %40, ptr %45, align 1, !dbg !1001
  %46 = load ptr, ptr %3, align 8, !dbg !1002
  %47 = getelementptr inbounds nuw %struct.DState, ptr %46, i32 0, i32 25, !dbg !1002
  %48 = load i32, ptr %47, align 8, !dbg !1002
  %49 = shl i32 %48, 8, !dbg !1002
  %50 = load ptr, ptr %3, align 8, !dbg !1002
  %51 = getelementptr inbounds nuw %struct.DState, ptr %50, i32 0, i32 25, !dbg !1002
  %52 = load i32, ptr %51, align 8, !dbg !1002
  %53 = lshr i32 %52, 24, !dbg !1002
  %54 = load ptr, ptr %3, align 8, !dbg !1002
  %55 = getelementptr inbounds nuw %struct.DState, ptr %54, i32 0, i32 2, !dbg !1002
  %56 = load i8, ptr %55, align 4, !dbg !1002
  %57 = zext i8 %56 to i32, !dbg !1002
  %58 = xor i32 %53, %57, !dbg !1002
  %59 = zext i32 %58 to i64, !dbg !1002
  %60 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %59, !dbg !1002
  %61 = load i32, ptr %60, align 4, !dbg !1002
  %62 = xor i32 %49, %61, !dbg !1002
  %63 = load ptr, ptr %3, align 8, !dbg !1002
  %64 = getelementptr inbounds nuw %struct.DState, ptr %63, i32 0, i32 25, !dbg !1002
  store i32 %62, ptr %64, align 8, !dbg !1002
  %65 = load ptr, ptr %3, align 8, !dbg !1004
  %66 = getelementptr inbounds nuw %struct.DState, ptr %65, i32 0, i32 3, !dbg !1005
  %67 = load i32, ptr %66, align 8, !dbg !1006
  %68 = add nsw i32 %67, -1, !dbg !1006
  store i32 %68, ptr %66, align 8, !dbg !1006
  %69 = load ptr, ptr %3, align 8, !dbg !1007
  %70 = getelementptr inbounds nuw %struct.DState, ptr %69, i32 0, i32 0, !dbg !1008
  %71 = load ptr, ptr %70, align 8, !dbg !1008
  %72 = getelementptr inbounds nuw %struct.bz_stream, ptr %71, i32 0, i32 4, !dbg !1009
  %73 = load ptr, ptr %72, align 8, !dbg !1010
  %74 = getelementptr inbounds nuw i8, ptr %73, i32 1, !dbg !1010
  store ptr %74, ptr %72, align 8, !dbg !1010
  %75 = load ptr, ptr %3, align 8, !dbg !1011
  %76 = getelementptr inbounds nuw %struct.DState, ptr %75, i32 0, i32 0, !dbg !1012
  %77 = load ptr, ptr %76, align 8, !dbg !1012
  %78 = getelementptr inbounds nuw %struct.bz_stream, ptr %77, i32 0, i32 5, !dbg !1013
  %79 = load i32, ptr %78, align 8, !dbg !1014
  %80 = add i32 %79, -1, !dbg !1014
  store i32 %80, ptr %78, align 8, !dbg !1014
  %81 = load ptr, ptr %3, align 8, !dbg !1015
  %82 = getelementptr inbounds nuw %struct.DState, ptr %81, i32 0, i32 0, !dbg !1016
  %83 = load ptr, ptr %82, align 8, !dbg !1016
  %84 = getelementptr inbounds nuw %struct.bz_stream, ptr %83, i32 0, i32 6, !dbg !1017
  %85 = load i32, ptr %84, align 4, !dbg !1018
  %86 = add i32 %85, 1, !dbg !1018
  store i32 %86, ptr %84, align 4, !dbg !1018
  %87 = load ptr, ptr %3, align 8, !dbg !1019
  %88 = getelementptr inbounds nuw %struct.DState, ptr %87, i32 0, i32 0, !dbg !1021
  %89 = load ptr, ptr %88, align 8, !dbg !1021
  %90 = getelementptr inbounds nuw %struct.bz_stream, ptr %89, i32 0, i32 6, !dbg !1022
  %91 = load i32, ptr %90, align 4, !dbg !1022
  %92 = icmp eq i32 %91, 0, !dbg !1023
  br i1 %92, label %93, label %100, !dbg !1023

93:                                               ; preds = %37
  %94 = load ptr, ptr %3, align 8, !dbg !1024
  %95 = getelementptr inbounds nuw %struct.DState, ptr %94, i32 0, i32 0, !dbg !1025
  %96 = load ptr, ptr %95, align 8, !dbg !1025
  %97 = getelementptr inbounds nuw %struct.bz_stream, ptr %96, i32 0, i32 7, !dbg !1026
  %98 = load i32, ptr %97, align 8, !dbg !1027
  %99 = add i32 %98, 1, !dbg !1027
  store i32 %99, ptr %97, align 8, !dbg !1027
  br label %100, !dbg !1024

100:                                              ; preds = %93, %37
  br label %23, !dbg !982, !llvm.loop !1028

101:                                              ; preds = %36
  %102 = load ptr, ptr %3, align 8, !dbg !1030
  %103 = getelementptr inbounds nuw %struct.DState, ptr %102, i32 0, i32 17, !dbg !1032
  %104 = load i32, ptr %103, align 4, !dbg !1032
  %105 = load ptr, ptr %3, align 8, !dbg !1033
  %106 = getelementptr inbounds nuw %struct.DState, ptr %105, i32 0, i32 51, !dbg !1034
  %107 = load i32, ptr %106, align 8, !dbg !1034
  %108 = add nsw i32 %107, 1, !dbg !1035
  %109 = icmp eq i32 %104, %108, !dbg !1036
  br i1 %109, label %110, label %111, !dbg !1036

110:                                              ; preds = %101
  store i8 0, ptr %2, align 1, !dbg !1037
  br label %798, !dbg !1037

111:                                              ; preds = %101
  %112 = load ptr, ptr %3, align 8, !dbg !1038
  %113 = getelementptr inbounds nuw %struct.DState, ptr %112, i32 0, i32 17, !dbg !1040
  %114 = load i32, ptr %113, align 4, !dbg !1040
  %115 = load ptr, ptr %3, align 8, !dbg !1041
  %116 = getelementptr inbounds nuw %struct.DState, ptr %115, i32 0, i32 51, !dbg !1042
  %117 = load i32, ptr %116, align 8, !dbg !1042
  %118 = add nsw i32 %117, 1, !dbg !1043
  %119 = icmp sgt i32 %114, %118, !dbg !1044
  br i1 %119, label %120, label %121, !dbg !1044

120:                                              ; preds = %111
  store i8 1, ptr %2, align 1, !dbg !1045
  br label %798, !dbg !1045

121:                                              ; preds = %111
  %122 = load ptr, ptr %3, align 8, !dbg !1046
  %123 = getelementptr inbounds nuw %struct.DState, ptr %122, i32 0, i32 3, !dbg !1047
  store i32 1, ptr %123, align 8, !dbg !1048
  %124 = load ptr, ptr %3, align 8, !dbg !1049
  %125 = getelementptr inbounds nuw %struct.DState, ptr %124, i32 0, i32 15, !dbg !1050
  %126 = load i32, ptr %125, align 8, !dbg !1050
  %127 = trunc i32 %126 to i8, !dbg !1049
  %128 = load ptr, ptr %3, align 8, !dbg !1051
  %129 = getelementptr inbounds nuw %struct.DState, ptr %128, i32 0, i32 2, !dbg !1052
  store i8 %127, ptr %129, align 4, !dbg !1053
  %130 = load ptr, ptr %3, align 8, !dbg !1054
  %131 = getelementptr inbounds nuw %struct.DState, ptr %130, i32 0, i32 20, !dbg !1054
  %132 = load ptr, ptr %131, align 8, !dbg !1054
  %133 = load ptr, ptr %3, align 8, !dbg !1054
  %134 = getelementptr inbounds nuw %struct.DState, ptr %133, i32 0, i32 14, !dbg !1054
  %135 = load i32, ptr %134, align 4, !dbg !1054
  %136 = zext i32 %135 to i64, !dbg !1054
  %137 = getelementptr inbounds nuw i32, ptr %132, i64 %136, !dbg !1054
  %138 = load i32, ptr %137, align 4, !dbg !1054
  %139 = load ptr, ptr %3, align 8, !dbg !1054
  %140 = getelementptr inbounds nuw %struct.DState, ptr %139, i32 0, i32 14, !dbg !1054
  store i32 %138, ptr %140, align 4, !dbg !1054
  %141 = load ptr, ptr %3, align 8, !dbg !1054
  %142 = getelementptr inbounds nuw %struct.DState, ptr %141, i32 0, i32 14, !dbg !1054
  %143 = load i32, ptr %142, align 4, !dbg !1054
  %144 = and i32 %143, 255, !dbg !1054
  %145 = trunc i32 %144 to i8, !dbg !1054
  store i8 %145, ptr %4, align 1, !dbg !1054
  %146 = load ptr, ptr %3, align 8, !dbg !1054
  %147 = getelementptr inbounds nuw %struct.DState, ptr %146, i32 0, i32 14, !dbg !1054
  %148 = load i32, ptr %147, align 4, !dbg !1054
  %149 = lshr i32 %148, 8, !dbg !1054
  store i32 %149, ptr %147, align 4, !dbg !1054
  %150 = load ptr, ptr %3, align 8, !dbg !1055
  %151 = getelementptr inbounds nuw %struct.DState, ptr %150, i32 0, i32 5, !dbg !1055
  %152 = load i32, ptr %151, align 8, !dbg !1055
  %153 = icmp eq i32 %152, 0, !dbg !1055
  br i1 %153, label %154, label %175, !dbg !1055

154:                                              ; preds = %121
  %155 = load ptr, ptr %3, align 8, !dbg !1057
  %156 = getelementptr inbounds nuw %struct.DState, ptr %155, i32 0, i32 6, !dbg !1057
  %157 = load i32, ptr %156, align 4, !dbg !1057
  %158 = sext i32 %157 to i64, !dbg !1057
  %159 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %158, !dbg !1057
  %160 = load i32, ptr %159, align 4, !dbg !1057
  %161 = load ptr, ptr %3, align 8, !dbg !1057
  %162 = getelementptr inbounds nuw %struct.DState, ptr %161, i32 0, i32 5, !dbg !1057
  store i32 %160, ptr %162, align 8, !dbg !1057
  %163 = load ptr, ptr %3, align 8, !dbg !1057
  %164 = getelementptr inbounds nuw %struct.DState, ptr %163, i32 0, i32 6, !dbg !1057
  %165 = load i32, ptr %164, align 4, !dbg !1057
  %166 = add nsw i32 %165, 1, !dbg !1057
  store i32 %166, ptr %164, align 4, !dbg !1057
  %167 = load ptr, ptr %3, align 8, !dbg !1059
  %168 = getelementptr inbounds nuw %struct.DState, ptr %167, i32 0, i32 6, !dbg !1059
  %169 = load i32, ptr %168, align 4, !dbg !1059
  %170 = icmp eq i32 %169, 512, !dbg !1059
  br i1 %170, label %171, label %174, !dbg !1059

171:                                              ; preds = %154
  %172 = load ptr, ptr %3, align 8, !dbg !1059
  %173 = getelementptr inbounds nuw %struct.DState, ptr %172, i32 0, i32 6, !dbg !1059
  store i32 0, ptr %173, align 4, !dbg !1059
  br label %174, !dbg !1059

174:                                              ; preds = %171, %154
  br label %175, !dbg !1057

175:                                              ; preds = %174, %121
  %176 = load ptr, ptr %3, align 8, !dbg !1061
  %177 = getelementptr inbounds nuw %struct.DState, ptr %176, i32 0, i32 5, !dbg !1061
  %178 = load i32, ptr %177, align 8, !dbg !1061
  %179 = add nsw i32 %178, -1, !dbg !1061
  store i32 %179, ptr %177, align 8, !dbg !1061
  %180 = load ptr, ptr %3, align 8, !dbg !1062
  %181 = getelementptr inbounds nuw %struct.DState, ptr %180, i32 0, i32 5, !dbg !1062
  %182 = load i32, ptr %181, align 8, !dbg !1062
  %183 = icmp eq i32 %182, 1, !dbg !1062
  %184 = zext i1 %183 to i64, !dbg !1062
  %185 = select i1 %183, i32 1, i32 0, !dbg !1062
  %186 = load i8, ptr %4, align 1, !dbg !1063
  %187 = zext i8 %186 to i32, !dbg !1063
  %188 = xor i32 %187, %185, !dbg !1063
  %189 = trunc i32 %188 to i8, !dbg !1063
  store i8 %189, ptr %4, align 1, !dbg !1063
  %190 = load ptr, ptr %3, align 8, !dbg !1064
  %191 = getelementptr inbounds nuw %struct.DState, ptr %190, i32 0, i32 17, !dbg !1065
  %192 = load i32, ptr %191, align 4, !dbg !1066
  %193 = add nsw i32 %192, 1, !dbg !1066
  store i32 %193, ptr %191, align 4, !dbg !1066
  %194 = load ptr, ptr %3, align 8, !dbg !1067
  %195 = getelementptr inbounds nuw %struct.DState, ptr %194, i32 0, i32 17, !dbg !1069
  %196 = load i32, ptr %195, align 4, !dbg !1069
  %197 = load ptr, ptr %3, align 8, !dbg !1070
  %198 = getelementptr inbounds nuw %struct.DState, ptr %197, i32 0, i32 51, !dbg !1071
  %199 = load i32, ptr %198, align 8, !dbg !1071
  %200 = add nsw i32 %199, 1, !dbg !1072
  %201 = icmp eq i32 %196, %200, !dbg !1073
  br i1 %201, label %202, label %203, !dbg !1073

202:                                              ; preds = %175
  br label %22, !dbg !1074, !llvm.loop !1075

203:                                              ; preds = %175
  %204 = load i8, ptr %4, align 1, !dbg !1077
  %205 = zext i8 %204 to i32, !dbg !1077
  %206 = load ptr, ptr %3, align 8, !dbg !1079
  %207 = getelementptr inbounds nuw %struct.DState, ptr %206, i32 0, i32 15, !dbg !1080
  %208 = load i32, ptr %207, align 8, !dbg !1080
  %209 = icmp ne i32 %205, %208, !dbg !1081
  br i1 %209, label %210, label %215, !dbg !1081

210:                                              ; preds = %203
  %211 = load i8, ptr %4, align 1, !dbg !1082
  %212 = zext i8 %211 to i32, !dbg !1082
  %213 = load ptr, ptr %3, align 8, !dbg !1084
  %214 = getelementptr inbounds nuw %struct.DState, ptr %213, i32 0, i32 15, !dbg !1085
  store i32 %212, ptr %214, align 8, !dbg !1086
  br label %22, !dbg !1087, !llvm.loop !1075

215:                                              ; preds = %203
  %216 = load ptr, ptr %3, align 8, !dbg !1088
  %217 = getelementptr inbounds nuw %struct.DState, ptr %216, i32 0, i32 3, !dbg !1089
  store i32 2, ptr %217, align 8, !dbg !1090
  %218 = load ptr, ptr %3, align 8, !dbg !1091
  %219 = getelementptr inbounds nuw %struct.DState, ptr %218, i32 0, i32 20, !dbg !1091
  %220 = load ptr, ptr %219, align 8, !dbg !1091
  %221 = load ptr, ptr %3, align 8, !dbg !1091
  %222 = getelementptr inbounds nuw %struct.DState, ptr %221, i32 0, i32 14, !dbg !1091
  %223 = load i32, ptr %222, align 4, !dbg !1091
  %224 = zext i32 %223 to i64, !dbg !1091
  %225 = getelementptr inbounds nuw i32, ptr %220, i64 %224, !dbg !1091
  %226 = load i32, ptr %225, align 4, !dbg !1091
  %227 = load ptr, ptr %3, align 8, !dbg !1091
  %228 = getelementptr inbounds nuw %struct.DState, ptr %227, i32 0, i32 14, !dbg !1091
  store i32 %226, ptr %228, align 4, !dbg !1091
  %229 = load ptr, ptr %3, align 8, !dbg !1091
  %230 = getelementptr inbounds nuw %struct.DState, ptr %229, i32 0, i32 14, !dbg !1091
  %231 = load i32, ptr %230, align 4, !dbg !1091
  %232 = and i32 %231, 255, !dbg !1091
  %233 = trunc i32 %232 to i8, !dbg !1091
  store i8 %233, ptr %4, align 1, !dbg !1091
  %234 = load ptr, ptr %3, align 8, !dbg !1091
  %235 = getelementptr inbounds nuw %struct.DState, ptr %234, i32 0, i32 14, !dbg !1091
  %236 = load i32, ptr %235, align 4, !dbg !1091
  %237 = lshr i32 %236, 8, !dbg !1091
  store i32 %237, ptr %235, align 4, !dbg !1091
  %238 = load ptr, ptr %3, align 8, !dbg !1092
  %239 = getelementptr inbounds nuw %struct.DState, ptr %238, i32 0, i32 5, !dbg !1092
  %240 = load i32, ptr %239, align 8, !dbg !1092
  %241 = icmp eq i32 %240, 0, !dbg !1092
  br i1 %241, label %242, label %263, !dbg !1092

242:                                              ; preds = %215
  %243 = load ptr, ptr %3, align 8, !dbg !1094
  %244 = getelementptr inbounds nuw %struct.DState, ptr %243, i32 0, i32 6, !dbg !1094
  %245 = load i32, ptr %244, align 4, !dbg !1094
  %246 = sext i32 %245 to i64, !dbg !1094
  %247 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %246, !dbg !1094
  %248 = load i32, ptr %247, align 4, !dbg !1094
  %249 = load ptr, ptr %3, align 8, !dbg !1094
  %250 = getelementptr inbounds nuw %struct.DState, ptr %249, i32 0, i32 5, !dbg !1094
  store i32 %248, ptr %250, align 8, !dbg !1094
  %251 = load ptr, ptr %3, align 8, !dbg !1094
  %252 = getelementptr inbounds nuw %struct.DState, ptr %251, i32 0, i32 6, !dbg !1094
  %253 = load i32, ptr %252, align 4, !dbg !1094
  %254 = add nsw i32 %253, 1, !dbg !1094
  store i32 %254, ptr %252, align 4, !dbg !1094
  %255 = load ptr, ptr %3, align 8, !dbg !1096
  %256 = getelementptr inbounds nuw %struct.DState, ptr %255, i32 0, i32 6, !dbg !1096
  %257 = load i32, ptr %256, align 4, !dbg !1096
  %258 = icmp eq i32 %257, 512, !dbg !1096
  br i1 %258, label %259, label %262, !dbg !1096

259:                                              ; preds = %242
  %260 = load ptr, ptr %3, align 8, !dbg !1096
  %261 = getelementptr inbounds nuw %struct.DState, ptr %260, i32 0, i32 6, !dbg !1096
  store i32 0, ptr %261, align 4, !dbg !1096
  br label %262, !dbg !1096

262:                                              ; preds = %259, %242
  br label %263, !dbg !1094

263:                                              ; preds = %262, %215
  %264 = load ptr, ptr %3, align 8, !dbg !1098
  %265 = getelementptr inbounds nuw %struct.DState, ptr %264, i32 0, i32 5, !dbg !1098
  %266 = load i32, ptr %265, align 8, !dbg !1098
  %267 = add nsw i32 %266, -1, !dbg !1098
  store i32 %267, ptr %265, align 8, !dbg !1098
  %268 = load ptr, ptr %3, align 8, !dbg !1099
  %269 = getelementptr inbounds nuw %struct.DState, ptr %268, i32 0, i32 5, !dbg !1099
  %270 = load i32, ptr %269, align 8, !dbg !1099
  %271 = icmp eq i32 %270, 1, !dbg !1099
  %272 = zext i1 %271 to i64, !dbg !1099
  %273 = select i1 %271, i32 1, i32 0, !dbg !1099
  %274 = load i8, ptr %4, align 1, !dbg !1100
  %275 = zext i8 %274 to i32, !dbg !1100
  %276 = xor i32 %275, %273, !dbg !1100
  %277 = trunc i32 %276 to i8, !dbg !1100
  store i8 %277, ptr %4, align 1, !dbg !1100
  %278 = load ptr, ptr %3, align 8, !dbg !1101
  %279 = getelementptr inbounds nuw %struct.DState, ptr %278, i32 0, i32 17, !dbg !1102
  %280 = load i32, ptr %279, align 4, !dbg !1103
  %281 = add nsw i32 %280, 1, !dbg !1103
  store i32 %281, ptr %279, align 4, !dbg !1103
  %282 = load ptr, ptr %3, align 8, !dbg !1104
  %283 = getelementptr inbounds nuw %struct.DState, ptr %282, i32 0, i32 17, !dbg !1106
  %284 = load i32, ptr %283, align 4, !dbg !1106
  %285 = load ptr, ptr %3, align 8, !dbg !1107
  %286 = getelementptr inbounds nuw %struct.DState, ptr %285, i32 0, i32 51, !dbg !1108
  %287 = load i32, ptr %286, align 8, !dbg !1108
  %288 = add nsw i32 %287, 1, !dbg !1109
  %289 = icmp eq i32 %284, %288, !dbg !1110
  br i1 %289, label %290, label %291, !dbg !1110

290:                                              ; preds = %263
  br label %22, !dbg !1111, !llvm.loop !1075

291:                                              ; preds = %263
  %292 = load i8, ptr %4, align 1, !dbg !1112
  %293 = zext i8 %292 to i32, !dbg !1112
  %294 = load ptr, ptr %3, align 8, !dbg !1114
  %295 = getelementptr inbounds nuw %struct.DState, ptr %294, i32 0, i32 15, !dbg !1115
  %296 = load i32, ptr %295, align 8, !dbg !1115
  %297 = icmp ne i32 %293, %296, !dbg !1116
  br i1 %297, label %298, label %303, !dbg !1116

298:                                              ; preds = %291
  %299 = load i8, ptr %4, align 1, !dbg !1117
  %300 = zext i8 %299 to i32, !dbg !1117
  %301 = load ptr, ptr %3, align 8, !dbg !1119
  %302 = getelementptr inbounds nuw %struct.DState, ptr %301, i32 0, i32 15, !dbg !1120
  store i32 %300, ptr %302, align 8, !dbg !1121
  br label %22, !dbg !1122, !llvm.loop !1075

303:                                              ; preds = %291
  %304 = load ptr, ptr %3, align 8, !dbg !1123
  %305 = getelementptr inbounds nuw %struct.DState, ptr %304, i32 0, i32 3, !dbg !1124
  store i32 3, ptr %305, align 8, !dbg !1125
  %306 = load ptr, ptr %3, align 8, !dbg !1126
  %307 = getelementptr inbounds nuw %struct.DState, ptr %306, i32 0, i32 20, !dbg !1126
  %308 = load ptr, ptr %307, align 8, !dbg !1126
  %309 = load ptr, ptr %3, align 8, !dbg !1126
  %310 = getelementptr inbounds nuw %struct.DState, ptr %309, i32 0, i32 14, !dbg !1126
  %311 = load i32, ptr %310, align 4, !dbg !1126
  %312 = zext i32 %311 to i64, !dbg !1126
  %313 = getelementptr inbounds nuw i32, ptr %308, i64 %312, !dbg !1126
  %314 = load i32, ptr %313, align 4, !dbg !1126
  %315 = load ptr, ptr %3, align 8, !dbg !1126
  %316 = getelementptr inbounds nuw %struct.DState, ptr %315, i32 0, i32 14, !dbg !1126
  store i32 %314, ptr %316, align 4, !dbg !1126
  %317 = load ptr, ptr %3, align 8, !dbg !1126
  %318 = getelementptr inbounds nuw %struct.DState, ptr %317, i32 0, i32 14, !dbg !1126
  %319 = load i32, ptr %318, align 4, !dbg !1126
  %320 = and i32 %319, 255, !dbg !1126
  %321 = trunc i32 %320 to i8, !dbg !1126
  store i8 %321, ptr %4, align 1, !dbg !1126
  %322 = load ptr, ptr %3, align 8, !dbg !1126
  %323 = getelementptr inbounds nuw %struct.DState, ptr %322, i32 0, i32 14, !dbg !1126
  %324 = load i32, ptr %323, align 4, !dbg !1126
  %325 = lshr i32 %324, 8, !dbg !1126
  store i32 %325, ptr %323, align 4, !dbg !1126
  %326 = load ptr, ptr %3, align 8, !dbg !1127
  %327 = getelementptr inbounds nuw %struct.DState, ptr %326, i32 0, i32 5, !dbg !1127
  %328 = load i32, ptr %327, align 8, !dbg !1127
  %329 = icmp eq i32 %328, 0, !dbg !1127
  br i1 %329, label %330, label %351, !dbg !1127

330:                                              ; preds = %303
  %331 = load ptr, ptr %3, align 8, !dbg !1129
  %332 = getelementptr inbounds nuw %struct.DState, ptr %331, i32 0, i32 6, !dbg !1129
  %333 = load i32, ptr %332, align 4, !dbg !1129
  %334 = sext i32 %333 to i64, !dbg !1129
  %335 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %334, !dbg !1129
  %336 = load i32, ptr %335, align 4, !dbg !1129
  %337 = load ptr, ptr %3, align 8, !dbg !1129
  %338 = getelementptr inbounds nuw %struct.DState, ptr %337, i32 0, i32 5, !dbg !1129
  store i32 %336, ptr %338, align 8, !dbg !1129
  %339 = load ptr, ptr %3, align 8, !dbg !1129
  %340 = getelementptr inbounds nuw %struct.DState, ptr %339, i32 0, i32 6, !dbg !1129
  %341 = load i32, ptr %340, align 4, !dbg !1129
  %342 = add nsw i32 %341, 1, !dbg !1129
  store i32 %342, ptr %340, align 4, !dbg !1129
  %343 = load ptr, ptr %3, align 8, !dbg !1131
  %344 = getelementptr inbounds nuw %struct.DState, ptr %343, i32 0, i32 6, !dbg !1131
  %345 = load i32, ptr %344, align 4, !dbg !1131
  %346 = icmp eq i32 %345, 512, !dbg !1131
  br i1 %346, label %347, label %350, !dbg !1131

347:                                              ; preds = %330
  %348 = load ptr, ptr %3, align 8, !dbg !1131
  %349 = getelementptr inbounds nuw %struct.DState, ptr %348, i32 0, i32 6, !dbg !1131
  store i32 0, ptr %349, align 4, !dbg !1131
  br label %350, !dbg !1131

350:                                              ; preds = %347, %330
  br label %351, !dbg !1129

351:                                              ; preds = %350, %303
  %352 = load ptr, ptr %3, align 8, !dbg !1133
  %353 = getelementptr inbounds nuw %struct.DState, ptr %352, i32 0, i32 5, !dbg !1133
  %354 = load i32, ptr %353, align 8, !dbg !1133
  %355 = add nsw i32 %354, -1, !dbg !1133
  store i32 %355, ptr %353, align 8, !dbg !1133
  %356 = load ptr, ptr %3, align 8, !dbg !1134
  %357 = getelementptr inbounds nuw %struct.DState, ptr %356, i32 0, i32 5, !dbg !1134
  %358 = load i32, ptr %357, align 8, !dbg !1134
  %359 = icmp eq i32 %358, 1, !dbg !1134
  %360 = zext i1 %359 to i64, !dbg !1134
  %361 = select i1 %359, i32 1, i32 0, !dbg !1134
  %362 = load i8, ptr %4, align 1, !dbg !1135
  %363 = zext i8 %362 to i32, !dbg !1135
  %364 = xor i32 %363, %361, !dbg !1135
  %365 = trunc i32 %364 to i8, !dbg !1135
  store i8 %365, ptr %4, align 1, !dbg !1135
  %366 = load ptr, ptr %3, align 8, !dbg !1136
  %367 = getelementptr inbounds nuw %struct.DState, ptr %366, i32 0, i32 17, !dbg !1137
  %368 = load i32, ptr %367, align 4, !dbg !1138
  %369 = add nsw i32 %368, 1, !dbg !1138
  store i32 %369, ptr %367, align 4, !dbg !1138
  %370 = load ptr, ptr %3, align 8, !dbg !1139
  %371 = getelementptr inbounds nuw %struct.DState, ptr %370, i32 0, i32 17, !dbg !1141
  %372 = load i32, ptr %371, align 4, !dbg !1141
  %373 = load ptr, ptr %3, align 8, !dbg !1142
  %374 = getelementptr inbounds nuw %struct.DState, ptr %373, i32 0, i32 51, !dbg !1143
  %375 = load i32, ptr %374, align 8, !dbg !1143
  %376 = add nsw i32 %375, 1, !dbg !1144
  %377 = icmp eq i32 %372, %376, !dbg !1145
  br i1 %377, label %378, label %379, !dbg !1145

378:                                              ; preds = %351
  br label %22, !dbg !1146, !llvm.loop !1075

379:                                              ; preds = %351
  %380 = load i8, ptr %4, align 1, !dbg !1147
  %381 = zext i8 %380 to i32, !dbg !1147
  %382 = load ptr, ptr %3, align 8, !dbg !1149
  %383 = getelementptr inbounds nuw %struct.DState, ptr %382, i32 0, i32 15, !dbg !1150
  %384 = load i32, ptr %383, align 8, !dbg !1150
  %385 = icmp ne i32 %381, %384, !dbg !1151
  br i1 %385, label %386, label %391, !dbg !1151

386:                                              ; preds = %379
  %387 = load i8, ptr %4, align 1, !dbg !1152
  %388 = zext i8 %387 to i32, !dbg !1152
  %389 = load ptr, ptr %3, align 8, !dbg !1154
  %390 = getelementptr inbounds nuw %struct.DState, ptr %389, i32 0, i32 15, !dbg !1155
  store i32 %388, ptr %390, align 8, !dbg !1156
  br label %22, !dbg !1157, !llvm.loop !1075

391:                                              ; preds = %379
  %392 = load ptr, ptr %3, align 8, !dbg !1158
  %393 = getelementptr inbounds nuw %struct.DState, ptr %392, i32 0, i32 20, !dbg !1158
  %394 = load ptr, ptr %393, align 8, !dbg !1158
  %395 = load ptr, ptr %3, align 8, !dbg !1158
  %396 = getelementptr inbounds nuw %struct.DState, ptr %395, i32 0, i32 14, !dbg !1158
  %397 = load i32, ptr %396, align 4, !dbg !1158
  %398 = zext i32 %397 to i64, !dbg !1158
  %399 = getelementptr inbounds nuw i32, ptr %394, i64 %398, !dbg !1158
  %400 = load i32, ptr %399, align 4, !dbg !1158
  %401 = load ptr, ptr %3, align 8, !dbg !1158
  %402 = getelementptr inbounds nuw %struct.DState, ptr %401, i32 0, i32 14, !dbg !1158
  store i32 %400, ptr %402, align 4, !dbg !1158
  %403 = load ptr, ptr %3, align 8, !dbg !1158
  %404 = getelementptr inbounds nuw %struct.DState, ptr %403, i32 0, i32 14, !dbg !1158
  %405 = load i32, ptr %404, align 4, !dbg !1158
  %406 = and i32 %405, 255, !dbg !1158
  %407 = trunc i32 %406 to i8, !dbg !1158
  store i8 %407, ptr %4, align 1, !dbg !1158
  %408 = load ptr, ptr %3, align 8, !dbg !1158
  %409 = getelementptr inbounds nuw %struct.DState, ptr %408, i32 0, i32 14, !dbg !1158
  %410 = load i32, ptr %409, align 4, !dbg !1158
  %411 = lshr i32 %410, 8, !dbg !1158
  store i32 %411, ptr %409, align 4, !dbg !1158
  %412 = load ptr, ptr %3, align 8, !dbg !1159
  %413 = getelementptr inbounds nuw %struct.DState, ptr %412, i32 0, i32 5, !dbg !1159
  %414 = load i32, ptr %413, align 8, !dbg !1159
  %415 = icmp eq i32 %414, 0, !dbg !1159
  br i1 %415, label %416, label %437, !dbg !1159

416:                                              ; preds = %391
  %417 = load ptr, ptr %3, align 8, !dbg !1161
  %418 = getelementptr inbounds nuw %struct.DState, ptr %417, i32 0, i32 6, !dbg !1161
  %419 = load i32, ptr %418, align 4, !dbg !1161
  %420 = sext i32 %419 to i64, !dbg !1161
  %421 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %420, !dbg !1161
  %422 = load i32, ptr %421, align 4, !dbg !1161
  %423 = load ptr, ptr %3, align 8, !dbg !1161
  %424 = getelementptr inbounds nuw %struct.DState, ptr %423, i32 0, i32 5, !dbg !1161
  store i32 %422, ptr %424, align 8, !dbg !1161
  %425 = load ptr, ptr %3, align 8, !dbg !1161
  %426 = getelementptr inbounds nuw %struct.DState, ptr %425, i32 0, i32 6, !dbg !1161
  %427 = load i32, ptr %426, align 4, !dbg !1161
  %428 = add nsw i32 %427, 1, !dbg !1161
  store i32 %428, ptr %426, align 4, !dbg !1161
  %429 = load ptr, ptr %3, align 8, !dbg !1163
  %430 = getelementptr inbounds nuw %struct.DState, ptr %429, i32 0, i32 6, !dbg !1163
  %431 = load i32, ptr %430, align 4, !dbg !1163
  %432 = icmp eq i32 %431, 512, !dbg !1163
  br i1 %432, label %433, label %436, !dbg !1163

433:                                              ; preds = %416
  %434 = load ptr, ptr %3, align 8, !dbg !1163
  %435 = getelementptr inbounds nuw %struct.DState, ptr %434, i32 0, i32 6, !dbg !1163
  store i32 0, ptr %435, align 4, !dbg !1163
  br label %436, !dbg !1163

436:                                              ; preds = %433, %416
  br label %437, !dbg !1161

437:                                              ; preds = %436, %391
  %438 = load ptr, ptr %3, align 8, !dbg !1165
  %439 = getelementptr inbounds nuw %struct.DState, ptr %438, i32 0, i32 5, !dbg !1165
  %440 = load i32, ptr %439, align 8, !dbg !1165
  %441 = add nsw i32 %440, -1, !dbg !1165
  store i32 %441, ptr %439, align 8, !dbg !1165
  %442 = load ptr, ptr %3, align 8, !dbg !1166
  %443 = getelementptr inbounds nuw %struct.DState, ptr %442, i32 0, i32 5, !dbg !1166
  %444 = load i32, ptr %443, align 8, !dbg !1166
  %445 = icmp eq i32 %444, 1, !dbg !1166
  %446 = zext i1 %445 to i64, !dbg !1166
  %447 = select i1 %445, i32 1, i32 0, !dbg !1166
  %448 = load i8, ptr %4, align 1, !dbg !1167
  %449 = zext i8 %448 to i32, !dbg !1167
  %450 = xor i32 %449, %447, !dbg !1167
  %451 = trunc i32 %450 to i8, !dbg !1167
  store i8 %451, ptr %4, align 1, !dbg !1167
  %452 = load ptr, ptr %3, align 8, !dbg !1168
  %453 = getelementptr inbounds nuw %struct.DState, ptr %452, i32 0, i32 17, !dbg !1169
  %454 = load i32, ptr %453, align 4, !dbg !1170
  %455 = add nsw i32 %454, 1, !dbg !1170
  store i32 %455, ptr %453, align 4, !dbg !1170
  %456 = load i8, ptr %4, align 1, !dbg !1171
  %457 = zext i8 %456 to i32, !dbg !1172
  %458 = add nsw i32 %457, 4, !dbg !1173
  %459 = load ptr, ptr %3, align 8, !dbg !1174
  %460 = getelementptr inbounds nuw %struct.DState, ptr %459, i32 0, i32 3, !dbg !1175
  store i32 %458, ptr %460, align 8, !dbg !1176
  %461 = load ptr, ptr %3, align 8, !dbg !1177
  %462 = getelementptr inbounds nuw %struct.DState, ptr %461, i32 0, i32 20, !dbg !1177
  %463 = load ptr, ptr %462, align 8, !dbg !1177
  %464 = load ptr, ptr %3, align 8, !dbg !1177
  %465 = getelementptr inbounds nuw %struct.DState, ptr %464, i32 0, i32 14, !dbg !1177
  %466 = load i32, ptr %465, align 4, !dbg !1177
  %467 = zext i32 %466 to i64, !dbg !1177
  %468 = getelementptr inbounds nuw i32, ptr %463, i64 %467, !dbg !1177
  %469 = load i32, ptr %468, align 4, !dbg !1177
  %470 = load ptr, ptr %3, align 8, !dbg !1177
  %471 = getelementptr inbounds nuw %struct.DState, ptr %470, i32 0, i32 14, !dbg !1177
  store i32 %469, ptr %471, align 4, !dbg !1177
  %472 = load ptr, ptr %3, align 8, !dbg !1177
  %473 = getelementptr inbounds nuw %struct.DState, ptr %472, i32 0, i32 14, !dbg !1177
  %474 = load i32, ptr %473, align 4, !dbg !1177
  %475 = and i32 %474, 255, !dbg !1177
  %476 = trunc i32 %475 to i8, !dbg !1177
  %477 = zext i8 %476 to i32, !dbg !1177
  %478 = load ptr, ptr %3, align 8, !dbg !1177
  %479 = getelementptr inbounds nuw %struct.DState, ptr %478, i32 0, i32 15, !dbg !1177
  store i32 %477, ptr %479, align 8, !dbg !1177
  %480 = load ptr, ptr %3, align 8, !dbg !1177
  %481 = getelementptr inbounds nuw %struct.DState, ptr %480, i32 0, i32 14, !dbg !1177
  %482 = load i32, ptr %481, align 4, !dbg !1177
  %483 = lshr i32 %482, 8, !dbg !1177
  store i32 %483, ptr %481, align 4, !dbg !1177
  %484 = load ptr, ptr %3, align 8, !dbg !1178
  %485 = getelementptr inbounds nuw %struct.DState, ptr %484, i32 0, i32 5, !dbg !1178
  %486 = load i32, ptr %485, align 8, !dbg !1178
  %487 = icmp eq i32 %486, 0, !dbg !1178
  br i1 %487, label %488, label %509, !dbg !1178

488:                                              ; preds = %437
  %489 = load ptr, ptr %3, align 8, !dbg !1180
  %490 = getelementptr inbounds nuw %struct.DState, ptr %489, i32 0, i32 6, !dbg !1180
  %491 = load i32, ptr %490, align 4, !dbg !1180
  %492 = sext i32 %491 to i64, !dbg !1180
  %493 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %492, !dbg !1180
  %494 = load i32, ptr %493, align 4, !dbg !1180
  %495 = load ptr, ptr %3, align 8, !dbg !1180
  %496 = getelementptr inbounds nuw %struct.DState, ptr %495, i32 0, i32 5, !dbg !1180
  store i32 %494, ptr %496, align 8, !dbg !1180
  %497 = load ptr, ptr %3, align 8, !dbg !1180
  %498 = getelementptr inbounds nuw %struct.DState, ptr %497, i32 0, i32 6, !dbg !1180
  %499 = load i32, ptr %498, align 4, !dbg !1180
  %500 = add nsw i32 %499, 1, !dbg !1180
  store i32 %500, ptr %498, align 4, !dbg !1180
  %501 = load ptr, ptr %3, align 8, !dbg !1182
  %502 = getelementptr inbounds nuw %struct.DState, ptr %501, i32 0, i32 6, !dbg !1182
  %503 = load i32, ptr %502, align 4, !dbg !1182
  %504 = icmp eq i32 %503, 512, !dbg !1182
  br i1 %504, label %505, label %508, !dbg !1182

505:                                              ; preds = %488
  %506 = load ptr, ptr %3, align 8, !dbg !1182
  %507 = getelementptr inbounds nuw %struct.DState, ptr %506, i32 0, i32 6, !dbg !1182
  store i32 0, ptr %507, align 4, !dbg !1182
  br label %508, !dbg !1182

508:                                              ; preds = %505, %488
  br label %509, !dbg !1180

509:                                              ; preds = %508, %437
  %510 = load ptr, ptr %3, align 8, !dbg !1184
  %511 = getelementptr inbounds nuw %struct.DState, ptr %510, i32 0, i32 5, !dbg !1184
  %512 = load i32, ptr %511, align 8, !dbg !1184
  %513 = add nsw i32 %512, -1, !dbg !1184
  store i32 %513, ptr %511, align 8, !dbg !1184
  %514 = load ptr, ptr %3, align 8, !dbg !1185
  %515 = getelementptr inbounds nuw %struct.DState, ptr %514, i32 0, i32 5, !dbg !1185
  %516 = load i32, ptr %515, align 8, !dbg !1185
  %517 = icmp eq i32 %516, 1, !dbg !1185
  %518 = zext i1 %517 to i64, !dbg !1185
  %519 = select i1 %517, i32 1, i32 0, !dbg !1185
  %520 = load ptr, ptr %3, align 8, !dbg !1186
  %521 = getelementptr inbounds nuw %struct.DState, ptr %520, i32 0, i32 15, !dbg !1187
  %522 = load i32, ptr %521, align 8, !dbg !1188
  %523 = xor i32 %522, %519, !dbg !1188
  store i32 %523, ptr %521, align 8, !dbg !1188
  %524 = load ptr, ptr %3, align 8, !dbg !1189
  %525 = getelementptr inbounds nuw %struct.DState, ptr %524, i32 0, i32 17, !dbg !1190
  %526 = load i32, ptr %525, align 4, !dbg !1191
  %527 = add nsw i32 %526, 1, !dbg !1191
  store i32 %527, ptr %525, align 4, !dbg !1191
  br label %22, !dbg !980, !llvm.loop !1075

528:                                              ; preds = %1
    #dbg_declare(ptr %5, !1192, !DIExpression(), !1194)
  %529 = load ptr, ptr %3, align 8, !dbg !1195
  %530 = getelementptr inbounds nuw %struct.DState, ptr %529, i32 0, i32 25, !dbg !1196
  %531 = load i32, ptr %530, align 8, !dbg !1196
  store i32 %531, ptr %5, align 4, !dbg !1194
    #dbg_declare(ptr %6, !1197, !DIExpression(), !1198)
  %532 = load ptr, ptr %3, align 8, !dbg !1199
  %533 = getelementptr inbounds nuw %struct.DState, ptr %532, i32 0, i32 2, !dbg !1200
  %534 = load i8, ptr %533, align 4, !dbg !1200
  store i8 %534, ptr %6, align 1, !dbg !1198
    #dbg_declare(ptr %7, !1201, !DIExpression(), !1202)
  %535 = load ptr, ptr %3, align 8, !dbg !1203
  %536 = getelementptr inbounds nuw %struct.DState, ptr %535, i32 0, i32 3, !dbg !1204
  %537 = load i32, ptr %536, align 8, !dbg !1204
  store i32 %537, ptr %7, align 4, !dbg !1202
    #dbg_declare(ptr %8, !1205, !DIExpression(), !1206)
  %538 = load ptr, ptr %3, align 8, !dbg !1207
  %539 = getelementptr inbounds nuw %struct.DState, ptr %538, i32 0, i32 17, !dbg !1208
  %540 = load i32, ptr %539, align 4, !dbg !1208
  store i32 %540, ptr %8, align 4, !dbg !1206
    #dbg_declare(ptr %9, !1209, !DIExpression(), !1210)
  %541 = load ptr, ptr %3, align 8, !dbg !1211
  %542 = getelementptr inbounds nuw %struct.DState, ptr %541, i32 0, i32 15, !dbg !1212
  %543 = load i32, ptr %542, align 8, !dbg !1212
  store i32 %543, ptr %9, align 4, !dbg !1210
    #dbg_declare(ptr %10, !1213, !DIExpression(), !1214)
  %544 = load ptr, ptr %3, align 8, !dbg !1215
  %545 = getelementptr inbounds nuw %struct.DState, ptr %544, i32 0, i32 20, !dbg !1216
  %546 = load ptr, ptr %545, align 8, !dbg !1216
  store ptr %546, ptr %10, align 8, !dbg !1214
    #dbg_declare(ptr %11, !1217, !DIExpression(), !1218)
  %547 = load ptr, ptr %3, align 8, !dbg !1219
  %548 = getelementptr inbounds nuw %struct.DState, ptr %547, i32 0, i32 14, !dbg !1220
  %549 = load i32, ptr %548, align 4, !dbg !1220
  store i32 %549, ptr %11, align 4, !dbg !1218
    #dbg_declare(ptr %12, !1221, !DIExpression(), !1222)
  %550 = load ptr, ptr %3, align 8, !dbg !1223
  %551 = getelementptr inbounds nuw %struct.DState, ptr %550, i32 0, i32 0, !dbg !1224
  %552 = load ptr, ptr %551, align 8, !dbg !1224
  %553 = getelementptr inbounds nuw %struct.bz_stream, ptr %552, i32 0, i32 4, !dbg !1225
  %554 = load ptr, ptr %553, align 8, !dbg !1225
  store ptr %554, ptr %12, align 8, !dbg !1222
    #dbg_declare(ptr %13, !1226, !DIExpression(), !1227)
  %555 = load ptr, ptr %3, align 8, !dbg !1228
  %556 = getelementptr inbounds nuw %struct.DState, ptr %555, i32 0, i32 0, !dbg !1229
  %557 = load ptr, ptr %556, align 8, !dbg !1229
  %558 = getelementptr inbounds nuw %struct.bz_stream, ptr %557, i32 0, i32 5, !dbg !1230
  %559 = load i32, ptr %558, align 8, !dbg !1230
  store i32 %559, ptr %13, align 4, !dbg !1227
    #dbg_declare(ptr %14, !1231, !DIExpression(), !1232)
  %560 = load i32, ptr %13, align 4, !dbg !1233
  store i32 %560, ptr %14, align 4, !dbg !1232
    #dbg_declare(ptr %15, !1234, !DIExpression(), !1235)
  %561 = load ptr, ptr %3, align 8, !dbg !1236
  %562 = getelementptr inbounds nuw %struct.DState, ptr %561, i32 0, i32 51, !dbg !1237
  %563 = load i32, ptr %562, align 8, !dbg !1237
  %564 = add nsw i32 %563, 1, !dbg !1238
  store i32 %564, ptr %15, align 4, !dbg !1235
    #dbg_declare(ptr %16, !1239, !DIExpression(), !1240)
  br label %565, !dbg !1241

565:                                              ; preds = %528, %673, %679, %698, %704, %707
  %566 = load i32, ptr %7, align 4, !dbg !1242
  %567 = icmp sgt i32 %566, 0, !dbg !1245
  br i1 %567, label %568, label %620, !dbg !1245

568:                                              ; preds = %565
  br label %569, !dbg !1246

569:                                              ; preds = %568, %577
  %570 = load i32, ptr %13, align 4, !dbg !1248
  %571 = icmp eq i32 %570, 0, !dbg !1251
  br i1 %571, label %572, label %573, !dbg !1251

572:                                              ; preds = %569
  br label %736, !dbg !1252

573:                                              ; preds = %569
  %574 = load i32, ptr %7, align 4, !dbg !1253
  %575 = icmp eq i32 %574, 1, !dbg !1255
  br i1 %575, label %576, label %577, !dbg !1255

576:                                              ; preds = %573
  br label %597, !dbg !1256

577:                                              ; preds = %573
  %578 = load i8, ptr %6, align 1, !dbg !1257
  %579 = load ptr, ptr %12, align 8, !dbg !1258
  store i8 %578, ptr %579, align 1, !dbg !1259
  %580 = load i32, ptr %5, align 4, !dbg !1260
  %581 = shl i32 %580, 8, !dbg !1260
  %582 = load i32, ptr %5, align 4, !dbg !1260
  %583 = lshr i32 %582, 24, !dbg !1260
  %584 = load i8, ptr %6, align 1, !dbg !1260
  %585 = zext i8 %584 to i32, !dbg !1260
  %586 = xor i32 %583, %585, !dbg !1260
  %587 = zext i32 %586 to i64, !dbg !1260
  %588 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %587, !dbg !1260
  %589 = load i32, ptr %588, align 4, !dbg !1260
  %590 = xor i32 %581, %589, !dbg !1260
  store i32 %590, ptr %5, align 4, !dbg !1260
  %591 = load i32, ptr %7, align 4, !dbg !1262
  %592 = add nsw i32 %591, -1, !dbg !1262
  store i32 %592, ptr %7, align 4, !dbg !1262
  %593 = load ptr, ptr %12, align 8, !dbg !1263
  %594 = getelementptr inbounds nuw i8, ptr %593, i32 1, !dbg !1263
  store ptr %594, ptr %12, align 8, !dbg !1263
  %595 = load i32, ptr %13, align 4, !dbg !1264
  %596 = add i32 %595, -1, !dbg !1264
  store i32 %596, ptr %13, align 4, !dbg !1264
  br label %569, !dbg !1246, !llvm.loop !1265

597:                                              ; preds = %576
  br label %598, !dbg !1246

598:                                              ; preds = %656, %649, %597
    #dbg_label(!1267, !1268)
  %599 = load i32, ptr %13, align 4, !dbg !1269
  %600 = icmp eq i32 %599, 0, !dbg !1272
  br i1 %600, label %601, label %602, !dbg !1272

601:                                              ; preds = %598
  store i32 1, ptr %7, align 4, !dbg !1273
  br label %736, !dbg !1275

602:                                              ; preds = %598
  %603 = load i8, ptr %6, align 1, !dbg !1276
  %604 = load ptr, ptr %12, align 8, !dbg !1277
  store i8 %603, ptr %604, align 1, !dbg !1278
  %605 = load i32, ptr %5, align 4, !dbg !1279
  %606 = shl i32 %605, 8, !dbg !1279
  %607 = load i32, ptr %5, align 4, !dbg !1279
  %608 = lshr i32 %607, 24, !dbg !1279
  %609 = load i8, ptr %6, align 1, !dbg !1279
  %610 = zext i8 %609 to i32, !dbg !1279
  %611 = xor i32 %608, %610, !dbg !1279
  %612 = zext i32 %611 to i64, !dbg !1279
  %613 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %612, !dbg !1279
  %614 = load i32, ptr %613, align 4, !dbg !1279
  %615 = xor i32 %606, %614, !dbg !1279
  store i32 %615, ptr %5, align 4, !dbg !1279
  %616 = load ptr, ptr %12, align 8, !dbg !1281
  %617 = getelementptr inbounds nuw i8, ptr %616, i32 1, !dbg !1281
  store ptr %617, ptr %12, align 8, !dbg !1281
  %618 = load i32, ptr %13, align 4, !dbg !1282
  %619 = add i32 %618, -1, !dbg !1282
  store i32 %619, ptr %13, align 4, !dbg !1282
  br label %620, !dbg !1283

620:                                              ; preds = %602, %565
  %621 = load i32, ptr %8, align 4, !dbg !1284
  %622 = load i32, ptr %15, align 4, !dbg !1286
  %623 = icmp sgt i32 %621, %622, !dbg !1287
  br i1 %623, label %624, label %625, !dbg !1287

624:                                              ; preds = %620
  store i8 1, ptr %2, align 1, !dbg !1288
  br label %798, !dbg !1288

625:                                              ; preds = %620
  %626 = load i32, ptr %8, align 4, !dbg !1289
  %627 = load i32, ptr %15, align 4, !dbg !1291
  %628 = icmp eq i32 %626, %627, !dbg !1292
  br i1 %628, label %629, label %630, !dbg !1292

629:                                              ; preds = %625
  store i32 0, ptr %7, align 4, !dbg !1293
  br label %736, !dbg !1295

630:                                              ; preds = %625
  %631 = load i32, ptr %9, align 4, !dbg !1296
  %632 = trunc i32 %631 to i8, !dbg !1296
  store i8 %632, ptr %6, align 1, !dbg !1297
  %633 = load ptr, ptr %10, align 8, !dbg !1298
  %634 = load i32, ptr %11, align 4, !dbg !1298
  %635 = zext i32 %634 to i64, !dbg !1298
  %636 = getelementptr inbounds nuw i32, ptr %633, i64 %635, !dbg !1298
  %637 = load i32, ptr %636, align 4, !dbg !1298
  store i32 %637, ptr %11, align 4, !dbg !1298
  %638 = load i32, ptr %11, align 4, !dbg !1298
  %639 = and i32 %638, 255, !dbg !1298
  %640 = trunc i32 %639 to i8, !dbg !1298
  store i8 %640, ptr %4, align 1, !dbg !1298
  %641 = load i32, ptr %11, align 4, !dbg !1298
  %642 = lshr i32 %641, 8, !dbg !1298
  store i32 %642, ptr %11, align 4, !dbg !1298
  %643 = load i32, ptr %8, align 4, !dbg !1299
  %644 = add nsw i32 %643, 1, !dbg !1299
  store i32 %644, ptr %8, align 4, !dbg !1299
  %645 = load i8, ptr %4, align 1, !dbg !1300
  %646 = zext i8 %645 to i32, !dbg !1300
  %647 = load i32, ptr %9, align 4, !dbg !1302
  %648 = icmp ne i32 %646, %647, !dbg !1303
  br i1 %648, label %649, label %652, !dbg !1303

649:                                              ; preds = %630
  %650 = load i8, ptr %4, align 1, !dbg !1304
  %651 = zext i8 %650 to i32, !dbg !1304
  store i32 %651, ptr %9, align 4, !dbg !1306
  br label %598, !dbg !1307

652:                                              ; preds = %630
  %653 = load i32, ptr %8, align 4, !dbg !1308
  %654 = load i32, ptr %15, align 4, !dbg !1310
  %655 = icmp eq i32 %653, %654, !dbg !1311
  br i1 %655, label %656, label %657, !dbg !1311

656:                                              ; preds = %652
  br label %598, !dbg !1312

657:                                              ; preds = %652
  store i32 2, ptr %7, align 4, !dbg !1313
  %658 = load ptr, ptr %10, align 8, !dbg !1314
  %659 = load i32, ptr %11, align 4, !dbg !1314
  %660 = zext i32 %659 to i64, !dbg !1314
  %661 = getelementptr inbounds nuw i32, ptr %658, i64 %660, !dbg !1314
  %662 = load i32, ptr %661, align 4, !dbg !1314
  store i32 %662, ptr %11, align 4, !dbg !1314
  %663 = load i32, ptr %11, align 4, !dbg !1314
  %664 = and i32 %663, 255, !dbg !1314
  %665 = trunc i32 %664 to i8, !dbg !1314
  store i8 %665, ptr %4, align 1, !dbg !1314
  %666 = load i32, ptr %11, align 4, !dbg !1314
  %667 = lshr i32 %666, 8, !dbg !1314
  store i32 %667, ptr %11, align 4, !dbg !1314
  %668 = load i32, ptr %8, align 4, !dbg !1315
  %669 = add nsw i32 %668, 1, !dbg !1315
  store i32 %669, ptr %8, align 4, !dbg !1315
  %670 = load i32, ptr %8, align 4, !dbg !1316
  %671 = load i32, ptr %15, align 4, !dbg !1318
  %672 = icmp eq i32 %670, %671, !dbg !1319
  br i1 %672, label %673, label %674, !dbg !1319

673:                                              ; preds = %657
  br label %565, !dbg !1320, !llvm.loop !1321

674:                                              ; preds = %657
  %675 = load i8, ptr %4, align 1, !dbg !1323
  %676 = zext i8 %675 to i32, !dbg !1323
  %677 = load i32, ptr %9, align 4, !dbg !1325
  %678 = icmp ne i32 %676, %677, !dbg !1326
  br i1 %678, label %679, label %682, !dbg !1326

679:                                              ; preds = %674
  %680 = load i8, ptr %4, align 1, !dbg !1327
  %681 = zext i8 %680 to i32, !dbg !1327
  store i32 %681, ptr %9, align 4, !dbg !1329
  br label %565, !dbg !1330, !llvm.loop !1321

682:                                              ; preds = %674
  store i32 3, ptr %7, align 4, !dbg !1331
  %683 = load ptr, ptr %10, align 8, !dbg !1332
  %684 = load i32, ptr %11, align 4, !dbg !1332
  %685 = zext i32 %684 to i64, !dbg !1332
  %686 = getelementptr inbounds nuw i32, ptr %683, i64 %685, !dbg !1332
  %687 = load i32, ptr %686, align 4, !dbg !1332
  store i32 %687, ptr %11, align 4, !dbg !1332
  %688 = load i32, ptr %11, align 4, !dbg !1332
  %689 = and i32 %688, 255, !dbg !1332
  %690 = trunc i32 %689 to i8, !dbg !1332
  store i8 %690, ptr %4, align 1, !dbg !1332
  %691 = load i32, ptr %11, align 4, !dbg !1332
  %692 = lshr i32 %691, 8, !dbg !1332
  store i32 %692, ptr %11, align 4, !dbg !1332
  %693 = load i32, ptr %8, align 4, !dbg !1333
  %694 = add nsw i32 %693, 1, !dbg !1333
  store i32 %694, ptr %8, align 4, !dbg !1333
  %695 = load i32, ptr %8, align 4, !dbg !1334
  %696 = load i32, ptr %15, align 4, !dbg !1336
  %697 = icmp eq i32 %695, %696, !dbg !1337
  br i1 %697, label %698, label %699, !dbg !1337

698:                                              ; preds = %682
  br label %565, !dbg !1338, !llvm.loop !1321

699:                                              ; preds = %682
  %700 = load i8, ptr %4, align 1, !dbg !1339
  %701 = zext i8 %700 to i32, !dbg !1339
  %702 = load i32, ptr %9, align 4, !dbg !1341
  %703 = icmp ne i32 %701, %702, !dbg !1342
  br i1 %703, label %704, label %707, !dbg !1342

704:                                              ; preds = %699
  %705 = load i8, ptr %4, align 1, !dbg !1343
  %706 = zext i8 %705 to i32, !dbg !1343
  store i32 %706, ptr %9, align 4, !dbg !1345
  br label %565, !dbg !1346, !llvm.loop !1321

707:                                              ; preds = %699
  %708 = load ptr, ptr %10, align 8, !dbg !1347
  %709 = load i32, ptr %11, align 4, !dbg !1347
  %710 = zext i32 %709 to i64, !dbg !1347
  %711 = getelementptr inbounds nuw i32, ptr %708, i64 %710, !dbg !1347
  %712 = load i32, ptr %711, align 4, !dbg !1347
  store i32 %712, ptr %11, align 4, !dbg !1347
  %713 = load i32, ptr %11, align 4, !dbg !1347
  %714 = and i32 %713, 255, !dbg !1347
  %715 = trunc i32 %714 to i8, !dbg !1347
  store i8 %715, ptr %4, align 1, !dbg !1347
  %716 = load i32, ptr %11, align 4, !dbg !1347
  %717 = lshr i32 %716, 8, !dbg !1347
  store i32 %717, ptr %11, align 4, !dbg !1347
  %718 = load i32, ptr %8, align 4, !dbg !1348
  %719 = add nsw i32 %718, 1, !dbg !1348
  store i32 %719, ptr %8, align 4, !dbg !1348
  %720 = load i8, ptr %4, align 1, !dbg !1349
  %721 = zext i8 %720 to i32, !dbg !1350
  %722 = add nsw i32 %721, 4, !dbg !1351
  store i32 %722, ptr %7, align 4, !dbg !1352
  %723 = load ptr, ptr %10, align 8, !dbg !1353
  %724 = load i32, ptr %11, align 4, !dbg !1353
  %725 = zext i32 %724 to i64, !dbg !1353
  %726 = getelementptr inbounds nuw i32, ptr %723, i64 %725, !dbg !1353
  %727 = load i32, ptr %726, align 4, !dbg !1353
  store i32 %727, ptr %11, align 4, !dbg !1353
  %728 = load i32, ptr %11, align 4, !dbg !1353
  %729 = and i32 %728, 255, !dbg !1353
  %730 = trunc i32 %729 to i8, !dbg !1353
  %731 = zext i8 %730 to i32, !dbg !1353
  store i32 %731, ptr %9, align 4, !dbg !1353
  %732 = load i32, ptr %11, align 4, !dbg !1353
  %733 = lshr i32 %732, 8, !dbg !1353
  store i32 %733, ptr %11, align 4, !dbg !1353
  %734 = load i32, ptr %8, align 4, !dbg !1354
  %735 = add nsw i32 %734, 1, !dbg !1354
  store i32 %735, ptr %8, align 4, !dbg !1354
  br label %565, !dbg !1241, !llvm.loop !1321

736:                                              ; preds = %629, %601, %572
    #dbg_label(!1355, !1356)
  %737 = load ptr, ptr %3, align 8, !dbg !1357
  %738 = getelementptr inbounds nuw %struct.DState, ptr %737, i32 0, i32 0, !dbg !1358
  %739 = load ptr, ptr %738, align 8, !dbg !1358
  %740 = getelementptr inbounds nuw %struct.bz_stream, ptr %739, i32 0, i32 6, !dbg !1359
  %741 = load i32, ptr %740, align 4, !dbg !1359
  store i32 %741, ptr %16, align 4, !dbg !1360
  %742 = load i32, ptr %14, align 4, !dbg !1361
  %743 = load i32, ptr %13, align 4, !dbg !1362
  %744 = sub i32 %742, %743, !dbg !1363
  %745 = load ptr, ptr %3, align 8, !dbg !1364
  %746 = getelementptr inbounds nuw %struct.DState, ptr %745, i32 0, i32 0, !dbg !1365
  %747 = load ptr, ptr %746, align 8, !dbg !1365
  %748 = getelementptr inbounds nuw %struct.bz_stream, ptr %747, i32 0, i32 6, !dbg !1366
  %749 = load i32, ptr %748, align 4, !dbg !1367
  %750 = add i32 %749, %744, !dbg !1367
  store i32 %750, ptr %748, align 4, !dbg !1367
  %751 = load ptr, ptr %3, align 8, !dbg !1368
  %752 = getelementptr inbounds nuw %struct.DState, ptr %751, i32 0, i32 0, !dbg !1370
  %753 = load ptr, ptr %752, align 8, !dbg !1370
  %754 = getelementptr inbounds nuw %struct.bz_stream, ptr %753, i32 0, i32 6, !dbg !1371
  %755 = load i32, ptr %754, align 4, !dbg !1371
  %756 = load i32, ptr %16, align 4, !dbg !1372
  %757 = icmp ult i32 %755, %756, !dbg !1373
  br i1 %757, label %758, label %765, !dbg !1373

758:                                              ; preds = %736
  %759 = load ptr, ptr %3, align 8, !dbg !1374
  %760 = getelementptr inbounds nuw %struct.DState, ptr %759, i32 0, i32 0, !dbg !1375
  %761 = load ptr, ptr %760, align 8, !dbg !1375
  %762 = getelementptr inbounds nuw %struct.bz_stream, ptr %761, i32 0, i32 7, !dbg !1376
  %763 = load i32, ptr %762, align 8, !dbg !1377
  %764 = add i32 %763, 1, !dbg !1377
  store i32 %764, ptr %762, align 8, !dbg !1377
  br label %765, !dbg !1374

765:                                              ; preds = %758, %736
  %766 = load i32, ptr %5, align 4, !dbg !1378
  %767 = load ptr, ptr %3, align 8, !dbg !1379
  %768 = getelementptr inbounds nuw %struct.DState, ptr %767, i32 0, i32 25, !dbg !1380
  store i32 %766, ptr %768, align 8, !dbg !1381
  %769 = load i8, ptr %6, align 1, !dbg !1382
  %770 = load ptr, ptr %3, align 8, !dbg !1383
  %771 = getelementptr inbounds nuw %struct.DState, ptr %770, i32 0, i32 2, !dbg !1384
  store i8 %769, ptr %771, align 4, !dbg !1385
  %772 = load i32, ptr %7, align 4, !dbg !1386
  %773 = load ptr, ptr %3, align 8, !dbg !1387
  %774 = getelementptr inbounds nuw %struct.DState, ptr %773, i32 0, i32 3, !dbg !1388
  store i32 %772, ptr %774, align 8, !dbg !1389
  %775 = load i32, ptr %8, align 4, !dbg !1390
  %776 = load ptr, ptr %3, align 8, !dbg !1391
  %777 = getelementptr inbounds nuw %struct.DState, ptr %776, i32 0, i32 17, !dbg !1392
  store i32 %775, ptr %777, align 4, !dbg !1393
  %778 = load i32, ptr %9, align 4, !dbg !1394
  %779 = load ptr, ptr %3, align 8, !dbg !1395
  %780 = getelementptr inbounds nuw %struct.DState, ptr %779, i32 0, i32 15, !dbg !1396
  store i32 %778, ptr %780, align 8, !dbg !1397
  %781 = load ptr, ptr %10, align 8, !dbg !1398
  %782 = load ptr, ptr %3, align 8, !dbg !1399
  %783 = getelementptr inbounds nuw %struct.DState, ptr %782, i32 0, i32 20, !dbg !1400
  store ptr %781, ptr %783, align 8, !dbg !1401
  %784 = load i32, ptr %11, align 4, !dbg !1402
  %785 = load ptr, ptr %3, align 8, !dbg !1403
  %786 = getelementptr inbounds nuw %struct.DState, ptr %785, i32 0, i32 14, !dbg !1404
  store i32 %784, ptr %786, align 4, !dbg !1405
  %787 = load ptr, ptr %12, align 8, !dbg !1406
  %788 = load ptr, ptr %3, align 8, !dbg !1407
  %789 = getelementptr inbounds nuw %struct.DState, ptr %788, i32 0, i32 0, !dbg !1408
  %790 = load ptr, ptr %789, align 8, !dbg !1408
  %791 = getelementptr inbounds nuw %struct.bz_stream, ptr %790, i32 0, i32 4, !dbg !1409
  store ptr %787, ptr %791, align 8, !dbg !1410
  %792 = load i32, ptr %13, align 4, !dbg !1411
  %793 = load ptr, ptr %3, align 8, !dbg !1412
  %794 = getelementptr inbounds nuw %struct.DState, ptr %793, i32 0, i32 0, !dbg !1413
  %795 = load ptr, ptr %794, align 8, !dbg !1413
  %796 = getelementptr inbounds nuw %struct.bz_stream, ptr %795, i32 0, i32 5, !dbg !1414
  store i32 %792, ptr %796, align 8, !dbg !1415
  br label %797

797:                                              ; preds = %765
  store i8 0, ptr %2, align 1, !dbg !1416
  br label %798, !dbg !1416

798:                                              ; preds = %797, %624, %120, %110, %30
  %799 = load i8, ptr %2, align 1, !dbg !1417
  ret i8 %799, !dbg !1417
}

declare i32 @BZ2_decompress(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzDecompressEnd(ptr noundef %0) #0 {
  %2 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzDecompressEnd, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  store ptr inttoptr (i64 5896136371949372678 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzDecompressEnd, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzDecompressEnd)
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzDecompressEnd, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  %8 = tail call i32 %7(ptr %0)
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzWriteOpen(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzWriteOpen, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  store ptr inttoptr (i64 4284608645312911136 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzWriteOpen, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzWriteOpen)
  %9 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzWriteOpen, align 8
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %8 ]
  %12 = tail call ptr %11(ptr %0, ptr %1, i32 %2, i32 %3, i32 %4)
  ret ptr %12
}

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzWrite(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzWrite, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store ptr inttoptr (i64 4916840667439368584 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzWrite, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzWrite)
  %8 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzWrite, align 8
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %5, %4 ], [ %8, %7 ]
  tail call void %10(ptr %0, ptr %1, ptr %2, i32 %3)
  ret void
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzWriteClose(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzWriteClose, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  store ptr inttoptr (i64 -7008793135962012522 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzWriteClose, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzWriteClose)
  %9 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzWriteClose, align 8
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %8 ]
  tail call void %11(ptr %0, ptr %1, i32 %2, ptr %3, ptr %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzWriteClose64(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzWriteClose64, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  store ptr inttoptr (i64 1522661247684859730 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzWriteClose64, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzWriteClose64)
  %11 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzWriteClose64, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %10 ]
  tail call void %13(ptr %0, ptr %1, i32 %2, ptr %3, ptr %4, ptr %5, ptr %6)
  ret void
}

declare i32 @fflush(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzReadOpen(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzReadOpen, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  store ptr inttoptr (i64 7338612040747971307 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzReadOpen, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzReadOpen)
  %10 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzReadOpen, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %7, %6 ], [ %10, %9 ]
  %13 = tail call ptr %12(ptr %0, ptr %1, i32 %2, i32 %3, ptr %4, i32 %5)
  ret ptr %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzReadClose(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzReadClose, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store ptr inttoptr (i64 -8806266828371742361 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzReadClose, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzReadClose)
  %6 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzReadClose, align 8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  tail call void %8(ptr %0, ptr %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzRead(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzRead, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store ptr inttoptr (i64 4880401171639127485 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzRead, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzRead)
  %8 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzRead, align 8
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %5, %4 ], [ %8, %7 ]
  %11 = tail call i32 %10(ptr %0, ptr %1, ptr %2, i32 %3)
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myfeof_(ptr noundef %0) #0 !dbg !1418 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1421, !DIExpression(), !1422)
    #dbg_declare(ptr %4, !1423, !DIExpression(), !1424)
  %5 = load ptr, ptr %3, align 8, !dbg !1425
  %6 = call i32 @fgetc(ptr noundef %5), !dbg !1426
  store i32 %6, ptr %4, align 4, !dbg !1424
  %7 = load i32, ptr %4, align 4, !dbg !1427
  %8 = icmp eq i32 %7, -1, !dbg !1429
  br i1 %8, label %9, label %10, !dbg !1429

9:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !1430
  br label %14, !dbg !1430

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4, !dbg !1431
  %12 = load ptr, ptr %3, align 8, !dbg !1432
  %13 = call i32 @ungetc(i32 noundef %11, ptr noundef %12), !dbg !1433
  store i8 0, ptr %2, align 1, !dbg !1434
  br label %14, !dbg !1434

14:                                               ; preds = %10, %9
  %15 = load i8, ptr %2, align 1, !dbg !1435
  ret i8 %15, !dbg !1435
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzReadGetUnused(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzReadGetUnused, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store ptr inttoptr (i64 2055401656495128884 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzReadGetUnused, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzReadGetUnused)
  %8 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzReadGetUnused, align 8
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %5, %4 ], [ %8, %7 ]
  tail call void %10(ptr %0, ptr %1, ptr %2, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzBuffToBuffCompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzBuffToBuffCompress, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  store ptr inttoptr (i64 4574284923786367950 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzBuffToBuffCompress, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzBuffToBuffCompress)
  %11 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzBuffToBuffCompress, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %10 ]
  %14 = tail call i32 %13(ptr %0, ptr %1, ptr %2, i32 %3, i32 %4, i32 %5, i32 %6)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzBuffToBuffDecompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzBuffToBuffDecompress, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  store ptr inttoptr (i64 -1808194619348726167 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzBuffToBuffDecompress, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzBuffToBuffDecompress)
  %10 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzBuffToBuffDecompress, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %7, %6 ], [ %10, %9 ]
  %13 = tail call i32 %12(ptr %0, ptr %1, ptr %2, i32 %3, i32 %4, i32 %5)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzopen(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzopen, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store ptr inttoptr (i64 -1668224937164140726 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzopen, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzopen)
  %6 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzopen, align 8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  %9 = tail call ptr %8(ptr %0, ptr %1)
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @bzopen_or_bzdopen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1436 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5000 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [10 x i8], align 1
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1443, !DIExpression(), !1444)
  store i32 %1, ptr %7, align 4
    #dbg_declare(ptr %7, !1445, !DIExpression(), !1446)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !1447, !DIExpression(), !1448)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !1449, !DIExpression(), !1450)
    #dbg_declare(ptr %10, !1451, !DIExpression(), !1452)
    #dbg_declare(ptr %11, !1453, !DIExpression(), !1455)
    #dbg_declare(ptr %12, !1456, !DIExpression(), !1457)
  store i32 9, ptr %12, align 4, !dbg !1457
    #dbg_declare(ptr %13, !1458, !DIExpression(), !1459)
  store i32 0, ptr %13, align 4, !dbg !1459
    #dbg_declare(ptr %14, !1460, !DIExpression(), !1461)
  call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 10, i1 false), !dbg !1461
    #dbg_declare(ptr %15, !1462, !DIExpression(), !1463)
  store ptr null, ptr %15, align 8, !dbg !1463
    #dbg_declare(ptr %16, !1464, !DIExpression(), !1465)
  store ptr null, ptr %16, align 8, !dbg !1465
    #dbg_declare(ptr %17, !1466, !DIExpression(), !1467)
  store i32 0, ptr %17, align 4, !dbg !1467
    #dbg_declare(ptr %18, !1468, !DIExpression(), !1469)
  store i32 30, ptr %18, align 4, !dbg !1469
    #dbg_declare(ptr %19, !1470, !DIExpression(), !1471)
  store i32 0, ptr %19, align 4, !dbg !1471
    #dbg_declare(ptr %20, !1472, !DIExpression(), !1473)
  store i32 0, ptr %20, align 4, !dbg !1473
  %21 = load ptr, ptr %8, align 8, !dbg !1474
  %22 = icmp eq ptr %21, null, !dbg !1476
  br i1 %22, label %23, label %24, !dbg !1476

23:                                               ; preds = %4
  store ptr null, ptr %5, align 8, !dbg !1477
  br label %138, !dbg !1477

24:                                               ; preds = %4
  br label %25, !dbg !1478

25:                                               ; preds = %54, %24
  %26 = load ptr, ptr %8, align 8, !dbg !1479
  %27 = load i8, ptr %26, align 1, !dbg !1480
  %28 = icmp ne i8 %27, 0, !dbg !1478
  br i1 %28, label %29, label %57, !dbg !1478

29:                                               ; preds = %25
  %30 = load ptr, ptr %8, align 8, !dbg !1481
  %31 = load i8, ptr %30, align 1, !dbg !1483
  %32 = sext i8 %31 to i32, !dbg !1483
  switch i32 %32, label %36 [
    i32 114, label %33
    i32 119, label %34
    i32 115, label %35
  ], !dbg !1484

33:                                               ; preds = %29
  store i32 0, ptr %13, align 4, !dbg !1485
  br label %54, !dbg !1487

34:                                               ; preds = %29
  store i32 1, ptr %13, align 4, !dbg !1488
  br label %54, !dbg !1489

35:                                               ; preds = %29
  store i32 1, ptr %19, align 4, !dbg !1490
  br label %54, !dbg !1491

36:                                               ; preds = %29
  %37 = call ptr @__ctype_b_loc() #10, !dbg !1492
  %38 = load ptr, ptr %37, align 8, !dbg !1492
  %39 = load ptr, ptr %8, align 8, !dbg !1492
  %40 = load i8, ptr %39, align 1, !dbg !1492
  %41 = sext i8 %40 to i32, !dbg !1492
  %42 = sext i32 %41 to i64, !dbg !1492
  %43 = getelementptr inbounds i16, ptr %38, i64 %42, !dbg !1492
  %44 = load i16, ptr %43, align 2, !dbg !1492
  %45 = zext i16 %44 to i32, !dbg !1492
  %46 = and i32 %45, 2048, !dbg !1492
  %47 = icmp ne i32 %46, 0, !dbg !1492
  br i1 %47, label %48, label %53, !dbg !1492

48:                                               ; preds = %36
  %49 = load ptr, ptr %8, align 8, !dbg !1494
  %50 = load i8, ptr %49, align 1, !dbg !1496
  %51 = sext i8 %50 to i32, !dbg !1496
  %52 = sub nsw i32 %51, 48, !dbg !1497
  store i32 %52, ptr %12, align 4, !dbg !1498
  br label %53, !dbg !1499

53:                                               ; preds = %48, %36
  br label %54, !dbg !1500

54:                                               ; preds = %53, %35, %34, %33
  %55 = load ptr, ptr %8, align 8, !dbg !1501
  %56 = getelementptr inbounds nuw i8, ptr %55, i32 1, !dbg !1501
  store ptr %56, ptr %8, align 8, !dbg !1501
  br label %25, !dbg !1478, !llvm.loop !1502

57:                                               ; preds = %25
  %58 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0, !dbg !1504
  %59 = load i32, ptr %13, align 4, !dbg !1505
  %60 = icmp ne i32 %59, 0, !dbg !1505
  %61 = zext i1 %60 to i64, !dbg !1505
  %62 = select i1 %60, ptr @.str.6, ptr @.str.7, !dbg !1505
  %63 = call ptr @strcat(ptr noundef %58, ptr noundef %62) #8, !dbg !1506
  %64 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0, !dbg !1507
  %65 = call ptr @strcat(ptr noundef %64, ptr noundef @.str.8) #8, !dbg !1508
  %66 = load i32, ptr %9, align 4, !dbg !1509
  %67 = icmp eq i32 %66, 0, !dbg !1511
  br i1 %67, label %68, label %89, !dbg !1511

68:                                               ; preds = %57
  %69 = load ptr, ptr %6, align 8, !dbg !1512
  %70 = icmp eq ptr %69, null, !dbg !1515
  br i1 %70, label %75, label %71, !dbg !1516

71:                                               ; preds = %68
  %72 = load ptr, ptr %6, align 8, !dbg !1517
  %73 = call i32 @strcmp(ptr noundef %72, ptr noundef @.str.9) #11, !dbg !1518
  %74 = icmp eq i32 %73, 0, !dbg !1519
  br i1 %74, label %75, label %84, !dbg !1516

75:                                               ; preds = %71, %68
  %76 = load i32, ptr %13, align 4, !dbg !1520
  %77 = icmp ne i32 %76, 0, !dbg !1520
  br i1 %77, label %78, label %80, !dbg !1520

78:                                               ; preds = %75
  %79 = load ptr, ptr @stdout, align 8, !dbg !1522
  br label %82, !dbg !1520

80:                                               ; preds = %75
  %81 = load ptr, ptr @stdin, align 8, !dbg !1523
  br label %82, !dbg !1520

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %79, %78 ], [ %81, %80 ], !dbg !1520
  store ptr %83, ptr %15, align 8, !dbg !1524
  br label %88, !dbg !1525

84:                                               ; preds = %71
  %85 = load ptr, ptr %6, align 8, !dbg !1526
  %86 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0, !dbg !1528
  %87 = call noalias ptr @fopen(ptr noundef %85, ptr noundef %86), !dbg !1529
  store ptr %87, ptr %15, align 8, !dbg !1530
  br label %88

88:                                               ; preds = %84, %82
  br label %93, !dbg !1531

89:                                               ; preds = %57
  %90 = load i32, ptr %7, align 4, !dbg !1532
  %91 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0, !dbg !1534
  %92 = call noalias ptr @fdopen(i32 noundef %90, ptr noundef %91) #8, !dbg !1535
  store ptr %92, ptr %15, align 8, !dbg !1536
  br label %93

93:                                               ; preds = %89, %88
  %94 = load ptr, ptr %15, align 8, !dbg !1537
  %95 = icmp eq ptr %94, null, !dbg !1539
  br i1 %95, label %96, label %97, !dbg !1539

96:                                               ; preds = %93
  store ptr null, ptr %5, align 8, !dbg !1540
  br label %138, !dbg !1540

97:                                               ; preds = %93
  %98 = load i32, ptr %13, align 4, !dbg !1541
  %99 = icmp ne i32 %98, 0, !dbg !1541
  br i1 %99, label %100, label %114, !dbg !1541

100:                                              ; preds = %97
  %101 = load i32, ptr %12, align 4, !dbg !1543
  %102 = icmp slt i32 %101, 1, !dbg !1546
  br i1 %102, label %103, label %104, !dbg !1546

103:                                              ; preds = %100
  store i32 1, ptr %12, align 4, !dbg !1547
  br label %104, !dbg !1548

104:                                              ; preds = %103, %100
  %105 = load i32, ptr %12, align 4, !dbg !1549
  %106 = icmp sgt i32 %105, 9, !dbg !1551
  br i1 %106, label %107, label %108, !dbg !1551

107:                                              ; preds = %104
  store i32 9, ptr %12, align 4, !dbg !1552
  br label %108, !dbg !1553

108:                                              ; preds = %107, %104
  %109 = load ptr, ptr %15, align 8, !dbg !1554
  %110 = load i32, ptr %12, align 4, !dbg !1555
  %111 = load i32, ptr %17, align 4, !dbg !1556
  %112 = load i32, ptr %18, align 4, !dbg !1557
  %113 = call ptr @BZ2_bzWriteOpen(ptr noundef %10, ptr noundef %109, i32 noundef %110, i32 noundef %111, i32 noundef %112), !dbg !1558
  store ptr %113, ptr %16, align 8, !dbg !1559
  br label %121, !dbg !1560

114:                                              ; preds = %97
  %115 = load ptr, ptr %15, align 8, !dbg !1561
  %116 = load i32, ptr %17, align 4, !dbg !1563
  %117 = load i32, ptr %19, align 4, !dbg !1564
  %118 = getelementptr inbounds [5000 x i8], ptr %11, i64 0, i64 0, !dbg !1565
  %119 = load i32, ptr %20, align 4, !dbg !1566
  %120 = call ptr @BZ2_bzReadOpen(ptr noundef %10, ptr noundef %115, i32 noundef %116, i32 noundef %117, ptr noundef %118, i32 noundef %119), !dbg !1567
  store ptr %120, ptr %16, align 8, !dbg !1568
  br label %121

121:                                              ; preds = %114, %108
  %122 = load ptr, ptr %16, align 8, !dbg !1569
  %123 = icmp eq ptr %122, null, !dbg !1571
  br i1 %123, label %124, label %136, !dbg !1571

124:                                              ; preds = %121
  %125 = load ptr, ptr %15, align 8, !dbg !1572
  %126 = load ptr, ptr @stdin, align 8, !dbg !1575
  %127 = icmp ne ptr %125, %126, !dbg !1576
  br i1 %127, label %128, label %135, !dbg !1577

128:                                              ; preds = %124
  %129 = load ptr, ptr %15, align 8, !dbg !1578
  %130 = load ptr, ptr @stdout, align 8, !dbg !1579
  %131 = icmp ne ptr %129, %130, !dbg !1580
  br i1 %131, label %132, label %135, !dbg !1577

132:                                              ; preds = %128
  %133 = load ptr, ptr %15, align 8, !dbg !1581
  %134 = call i32 @fclose(ptr noundef %133), !dbg !1582
  br label %135, !dbg !1582

135:                                              ; preds = %132, %128, %124
  store ptr null, ptr %5, align 8, !dbg !1583
  br label %138, !dbg !1583

136:                                              ; preds = %121
  %137 = load ptr, ptr %16, align 8, !dbg !1584
  store ptr %137, ptr %5, align 8, !dbg !1585
  br label %138, !dbg !1585

138:                                              ; preds = %136, %135, %96, %23
  %139 = load ptr, ptr %5, align 8, !dbg !1586
  ret ptr %139, !dbg !1586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzdopen(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzdopen, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store ptr inttoptr (i64 -4189200524277439138 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzdopen, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzdopen)
  %6 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzdopen, align 8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  %9 = tail call ptr %8(i32 %0, ptr %1)
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzread(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzread, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  store ptr inttoptr (i64 -3853582136559326436 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzread, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzread)
  %7 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzread, align 8
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %4, %3 ], [ %7, %6 ]
  %10 = tail call i32 %9(ptr %0, ptr %1, i32 %2)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzwrite, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  store ptr inttoptr (i64 4242229565524937818 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzwrite, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzwrite)
  %7 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzwrite, align 8
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %4, %3 ], [ %7, %6 ]
  %10 = tail call i32 %9(ptr %0, ptr %1, i32 %2)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzflush(ptr noundef %0) #0 {
  %2 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzflush, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  store ptr inttoptr (i64 -2917215899138405149 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzflush, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzflush)
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzflush, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  %8 = tail call i32 %7(ptr %0)
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzclose(ptr noundef %0) #0 {
  %2 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzclose, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  store ptr inttoptr (i64 -7146356883220608207 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzclose, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzclose)
  %5 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzclose, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  tail call void %7(ptr %0)
  ret void
}

declare i32 @fclose(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzerror(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzerror, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store ptr inttoptr (i64 -3834601593815985727 to ptr), ptr @__llvm_autojit_ptr_BZ2_bzerror, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_BZ2_bzerror)
  %6 = load ptr, ptr @__llvm_autojit_ptr_BZ2_bzerror, align 8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  %9 = tail call ptr %8(ptr %0, ptr %1)
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @copy_output_until_stop(ptr noundef %0) #0 !dbg !1587 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1588, !DIExpression(), !1589)
    #dbg_declare(ptr %3, !1590, !DIExpression(), !1591)
  store i8 0, ptr %3, align 1, !dbg !1591
  br label %4, !dbg !1592

4:                                                ; preds = %1, %71
  %5 = load ptr, ptr %2, align 8, !dbg !1593
  %6 = getelementptr inbounds nuw %struct.EState, ptr %5, i32 0, i32 0, !dbg !1596
  %7 = load ptr, ptr %6, align 8, !dbg !1596
  %8 = getelementptr inbounds nuw %struct.bz_stream, ptr %7, i32 0, i32 5, !dbg !1597
  %9 = load i32, ptr %8, align 8, !dbg !1597
  %10 = icmp eq i32 %9, 0, !dbg !1598
  br i1 %10, label %11, label %12, !dbg !1598

11:                                               ; preds = %4
  br label %72, !dbg !1599

12:                                               ; preds = %4
  %13 = load ptr, ptr %2, align 8, !dbg !1600
  %14 = getelementptr inbounds nuw %struct.EState, ptr %13, i32 0, i32 20, !dbg !1602
  %15 = load i32, ptr %14, align 8, !dbg !1602
  %16 = load ptr, ptr %2, align 8, !dbg !1603
  %17 = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 19, !dbg !1604
  %18 = load i32, ptr %17, align 4, !dbg !1604
  %19 = icmp sge i32 %15, %18, !dbg !1605
  br i1 %19, label %20, label %21, !dbg !1605

20:                                               ; preds = %12
  br label %72, !dbg !1606

21:                                               ; preds = %12
  store i8 1, ptr %3, align 1, !dbg !1607
  %22 = load ptr, ptr %2, align 8, !dbg !1608
  %23 = getelementptr inbounds nuw %struct.EState, ptr %22, i32 0, i32 11, !dbg !1609
  %24 = load ptr, ptr %23, align 8, !dbg !1609
  %25 = load ptr, ptr %2, align 8, !dbg !1610
  %26 = getelementptr inbounds nuw %struct.EState, ptr %25, i32 0, i32 20, !dbg !1611
  %27 = load i32, ptr %26, align 8, !dbg !1611
  %28 = sext i32 %27 to i64, !dbg !1608
  %29 = getelementptr inbounds i8, ptr %24, i64 %28, !dbg !1608
  %30 = load i8, ptr %29, align 1, !dbg !1608
  %31 = load ptr, ptr %2, align 8, !dbg !1612
  %32 = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 0, !dbg !1613
  %33 = load ptr, ptr %32, align 8, !dbg !1613
  %34 = getelementptr inbounds nuw %struct.bz_stream, ptr %33, i32 0, i32 4, !dbg !1614
  %35 = load ptr, ptr %34, align 8, !dbg !1614
  store i8 %30, ptr %35, align 1, !dbg !1615
  %36 = load ptr, ptr %2, align 8, !dbg !1616
  %37 = getelementptr inbounds nuw %struct.EState, ptr %36, i32 0, i32 20, !dbg !1617
  %38 = load i32, ptr %37, align 8, !dbg !1618
  %39 = add nsw i32 %38, 1, !dbg !1618
  store i32 %39, ptr %37, align 8, !dbg !1618
  %40 = load ptr, ptr %2, align 8, !dbg !1619
  %41 = getelementptr inbounds nuw %struct.EState, ptr %40, i32 0, i32 0, !dbg !1620
  %42 = load ptr, ptr %41, align 8, !dbg !1620
  %43 = getelementptr inbounds nuw %struct.bz_stream, ptr %42, i32 0, i32 5, !dbg !1621
  %44 = load i32, ptr %43, align 8, !dbg !1622
  %45 = add i32 %44, -1, !dbg !1622
  store i32 %45, ptr %43, align 8, !dbg !1622
  %46 = load ptr, ptr %2, align 8, !dbg !1623
  %47 = getelementptr inbounds nuw %struct.EState, ptr %46, i32 0, i32 0, !dbg !1624
  %48 = load ptr, ptr %47, align 8, !dbg !1624
  %49 = getelementptr inbounds nuw %struct.bz_stream, ptr %48, i32 0, i32 4, !dbg !1625
  %50 = load ptr, ptr %49, align 8, !dbg !1626
  %51 = getelementptr inbounds nuw i8, ptr %50, i32 1, !dbg !1626
  store ptr %51, ptr %49, align 8, !dbg !1626
  %52 = load ptr, ptr %2, align 8, !dbg !1627
  %53 = getelementptr inbounds nuw %struct.EState, ptr %52, i32 0, i32 0, !dbg !1628
  %54 = load ptr, ptr %53, align 8, !dbg !1628
  %55 = getelementptr inbounds nuw %struct.bz_stream, ptr %54, i32 0, i32 6, !dbg !1629
  %56 = load i32, ptr %55, align 4, !dbg !1630
  %57 = add i32 %56, 1, !dbg !1630
  store i32 %57, ptr %55, align 4, !dbg !1630
  %58 = load ptr, ptr %2, align 8, !dbg !1631
  %59 = getelementptr inbounds nuw %struct.EState, ptr %58, i32 0, i32 0, !dbg !1633
  %60 = load ptr, ptr %59, align 8, !dbg !1633
  %61 = getelementptr inbounds nuw %struct.bz_stream, ptr %60, i32 0, i32 6, !dbg !1634
  %62 = load i32, ptr %61, align 4, !dbg !1634
  %63 = icmp eq i32 %62, 0, !dbg !1635
  br i1 %63, label %64, label %71, !dbg !1635

64:                                               ; preds = %21
  %65 = load ptr, ptr %2, align 8, !dbg !1636
  %66 = getelementptr inbounds nuw %struct.EState, ptr %65, i32 0, i32 0, !dbg !1637
  %67 = load ptr, ptr %66, align 8, !dbg !1637
  %68 = getelementptr inbounds nuw %struct.bz_stream, ptr %67, i32 0, i32 7, !dbg !1638
  %69 = load i32, ptr %68, align 8, !dbg !1639
  %70 = add i32 %69, 1, !dbg !1639
  store i32 %70, ptr %68, align 8, !dbg !1639
  br label %71, !dbg !1636

71:                                               ; preds = %64, %21
  br label %4, !dbg !1592, !llvm.loop !1640

72:                                               ; preds = %20, %11
  %73 = load i8, ptr %3, align 1, !dbg !1642
  ret i8 %73, !dbg !1643
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @copy_input_until_stop(ptr noundef %0) #0 !dbg !1644 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1645, !DIExpression(), !1646)
    #dbg_declare(ptr %3, !1647, !DIExpression(), !1648)
  store i8 0, ptr %3, align 1, !dbg !1648
  %8 = load ptr, ptr %2, align 8, !dbg !1649
  %9 = getelementptr inbounds nuw %struct.EState, ptr %8, i32 0, i32 1, !dbg !1651
  %10 = load i32, ptr %9, align 8, !dbg !1651
  %11 = icmp eq i32 %10, 2, !dbg !1652
  br i1 %11, label %12, label %157, !dbg !1652

12:                                               ; preds = %1
  br label %13, !dbg !1653

13:                                               ; preds = %12, %155
  %14 = load ptr, ptr %2, align 8, !dbg !1655
  %15 = getelementptr inbounds nuw %struct.EState, ptr %14, i32 0, i32 17, !dbg !1658
  %16 = load i32, ptr %15, align 4, !dbg !1658
  %17 = load ptr, ptr %2, align 8, !dbg !1659
  %18 = getelementptr inbounds nuw %struct.EState, ptr %17, i32 0, i32 18, !dbg !1660
  %19 = load i32, ptr %18, align 8, !dbg !1660
  %20 = icmp sge i32 %16, %19, !dbg !1661
  br i1 %20, label %21, label %22, !dbg !1661

21:                                               ; preds = %13
  br label %156, !dbg !1662

22:                                               ; preds = %13
  %23 = load ptr, ptr %2, align 8, !dbg !1663
  %24 = getelementptr inbounds nuw %struct.EState, ptr %23, i32 0, i32 0, !dbg !1665
  %25 = load ptr, ptr %24, align 8, !dbg !1665
  %26 = getelementptr inbounds nuw %struct.bz_stream, ptr %25, i32 0, i32 1, !dbg !1666
  %27 = load i32, ptr %26, align 8, !dbg !1666
  %28 = icmp eq i32 %27, 0, !dbg !1667
  br i1 %28, label %29, label %30, !dbg !1667

29:                                               ; preds = %22
  br label %156, !dbg !1668

30:                                               ; preds = %22
  store i8 1, ptr %3, align 1, !dbg !1669
    #dbg_declare(ptr %4, !1670, !DIExpression(), !1672)
  %31 = load ptr, ptr %2, align 8, !dbg !1672
  %32 = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 0, !dbg !1672
  %33 = load ptr, ptr %32, align 8, !dbg !1672
  %34 = getelementptr inbounds nuw %struct.bz_stream, ptr %33, i32 0, i32 0, !dbg !1672
  %35 = load ptr, ptr %34, align 8, !dbg !1672
  %36 = load i8, ptr %35, align 1, !dbg !1672
  %37 = zext i8 %36 to i32, !dbg !1672
  store i32 %37, ptr %4, align 4, !dbg !1672
  %38 = load i32, ptr %4, align 4, !dbg !1673
  %39 = load ptr, ptr %2, align 8, !dbg !1673
  %40 = getelementptr inbounds nuw %struct.EState, ptr %39, i32 0, i32 13, !dbg !1673
  %41 = load i32, ptr %40, align 4, !dbg !1673
  %42 = icmp ne i32 %38, %41, !dbg !1673
  br i1 %42, label %43, label %93, !dbg !1673

43:                                               ; preds = %30
  %44 = load ptr, ptr %2, align 8, !dbg !1673
  %45 = getelementptr inbounds nuw %struct.EState, ptr %44, i32 0, i32 14, !dbg !1673
  %46 = load i32, ptr %45, align 8, !dbg !1673
  %47 = icmp eq i32 %46, 1, !dbg !1673
  br i1 %47, label %48, label %93, !dbg !1673

48:                                               ; preds = %43
    #dbg_declare(ptr %5, !1675, !DIExpression(), !1677)
  %49 = load ptr, ptr %2, align 8, !dbg !1677
  %50 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 13, !dbg !1677
  %51 = load i32, ptr %50, align 4, !dbg !1677
  %52 = trunc i32 %51 to i8, !dbg !1677
  store i8 %52, ptr %5, align 1, !dbg !1677
  %53 = load ptr, ptr %2, align 8, !dbg !1678
  %54 = getelementptr inbounds nuw %struct.EState, ptr %53, i32 0, i32 26, !dbg !1678
  %55 = load i32, ptr %54, align 8, !dbg !1678
  %56 = shl i32 %55, 8, !dbg !1678
  %57 = load ptr, ptr %2, align 8, !dbg !1678
  %58 = getelementptr inbounds nuw %struct.EState, ptr %57, i32 0, i32 26, !dbg !1678
  %59 = load i32, ptr %58, align 8, !dbg !1678
  %60 = lshr i32 %59, 24, !dbg !1678
  %61 = load i8, ptr %5, align 1, !dbg !1678
  %62 = zext i8 %61 to i32, !dbg !1678
  %63 = xor i32 %60, %62, !dbg !1678
  %64 = zext i32 %63 to i64, !dbg !1678
  %65 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %64, !dbg !1678
  %66 = load i32, ptr %65, align 4, !dbg !1678
  %67 = xor i32 %56, %66, !dbg !1678
  %68 = load ptr, ptr %2, align 8, !dbg !1678
  %69 = getelementptr inbounds nuw %struct.EState, ptr %68, i32 0, i32 26, !dbg !1678
  store i32 %67, ptr %69, align 8, !dbg !1678
  %70 = load ptr, ptr %2, align 8, !dbg !1677
  %71 = getelementptr inbounds nuw %struct.EState, ptr %70, i32 0, i32 22, !dbg !1677
  %72 = load ptr, ptr %2, align 8, !dbg !1677
  %73 = getelementptr inbounds nuw %struct.EState, ptr %72, i32 0, i32 13, !dbg !1677
  %74 = load i32, ptr %73, align 4, !dbg !1677
  %75 = zext i32 %74 to i64, !dbg !1677
  %76 = getelementptr inbounds nuw [256 x i8], ptr %71, i64 0, i64 %75, !dbg !1677
  store i8 1, ptr %76, align 1, !dbg !1677
  %77 = load i8, ptr %5, align 1, !dbg !1677
  %78 = load ptr, ptr %2, align 8, !dbg !1677
  %79 = getelementptr inbounds nuw %struct.EState, ptr %78, i32 0, i32 9, !dbg !1677
  %80 = load ptr, ptr %79, align 8, !dbg !1677
  %81 = load ptr, ptr %2, align 8, !dbg !1677
  %82 = getelementptr inbounds nuw %struct.EState, ptr %81, i32 0, i32 17, !dbg !1677
  %83 = load i32, ptr %82, align 4, !dbg !1677
  %84 = sext i32 %83 to i64, !dbg !1677
  %85 = getelementptr inbounds i8, ptr %80, i64 %84, !dbg !1677
  store i8 %77, ptr %85, align 1, !dbg !1677
  %86 = load ptr, ptr %2, align 8, !dbg !1677
  %87 = getelementptr inbounds nuw %struct.EState, ptr %86, i32 0, i32 17, !dbg !1677
  %88 = load i32, ptr %87, align 4, !dbg !1677
  %89 = add nsw i32 %88, 1, !dbg !1677
  store i32 %89, ptr %87, align 4, !dbg !1677
  %90 = load i32, ptr %4, align 4, !dbg !1677
  %91 = load ptr, ptr %2, align 8, !dbg !1677
  %92 = getelementptr inbounds nuw %struct.EState, ptr %91, i32 0, i32 13, !dbg !1677
  store i32 %90, ptr %92, align 4, !dbg !1677
  br label %123, !dbg !1677

93:                                               ; preds = %43, %30
  %94 = load i32, ptr %4, align 4, !dbg !1680
  %95 = load ptr, ptr %2, align 8, !dbg !1680
  %96 = getelementptr inbounds nuw %struct.EState, ptr %95, i32 0, i32 13, !dbg !1680
  %97 = load i32, ptr %96, align 4, !dbg !1680
  %98 = icmp ne i32 %94, %97, !dbg !1680
  br i1 %98, label %104, label %99, !dbg !1680

99:                                               ; preds = %93
  %100 = load ptr, ptr %2, align 8, !dbg !1680
  %101 = getelementptr inbounds nuw %struct.EState, ptr %100, i32 0, i32 14, !dbg !1680
  %102 = load i32, ptr %101, align 8, !dbg !1680
  %103 = icmp eq i32 %102, 255, !dbg !1680
  br i1 %103, label %104, label %117, !dbg !1680

104:                                              ; preds = %99, %93
  %105 = load ptr, ptr %2, align 8, !dbg !1682
  %106 = getelementptr inbounds nuw %struct.EState, ptr %105, i32 0, i32 13, !dbg !1682
  %107 = load i32, ptr %106, align 4, !dbg !1682
  %108 = icmp ult i32 %107, 256, !dbg !1682
  br i1 %108, label %109, label %111, !dbg !1682

109:                                              ; preds = %104
  %110 = load ptr, ptr %2, align 8, !dbg !1682
  call void @add_pair_to_block(ptr noundef %110), !dbg !1682
  br label %111, !dbg !1682

111:                                              ; preds = %109, %104
  %112 = load i32, ptr %4, align 4, !dbg !1685
  %113 = load ptr, ptr %2, align 8, !dbg !1685
  %114 = getelementptr inbounds nuw %struct.EState, ptr %113, i32 0, i32 13, !dbg !1685
  store i32 %112, ptr %114, align 4, !dbg !1685
  %115 = load ptr, ptr %2, align 8, !dbg !1685
  %116 = getelementptr inbounds nuw %struct.EState, ptr %115, i32 0, i32 14, !dbg !1685
  store i32 1, ptr %116, align 8, !dbg !1685
  br label %122, !dbg !1685

117:                                              ; preds = %99
  %118 = load ptr, ptr %2, align 8, !dbg !1686
  %119 = getelementptr inbounds nuw %struct.EState, ptr %118, i32 0, i32 14, !dbg !1686
  %120 = load i32, ptr %119, align 8, !dbg !1686
  %121 = add nsw i32 %120, 1, !dbg !1686
  store i32 %121, ptr %119, align 8, !dbg !1686
  br label %122

122:                                              ; preds = %117, %111
  br label %123

123:                                              ; preds = %122, %48
  %124 = load ptr, ptr %2, align 8, !dbg !1688
  %125 = getelementptr inbounds nuw %struct.EState, ptr %124, i32 0, i32 0, !dbg !1689
  %126 = load ptr, ptr %125, align 8, !dbg !1689
  %127 = getelementptr inbounds nuw %struct.bz_stream, ptr %126, i32 0, i32 0, !dbg !1690
  %128 = load ptr, ptr %127, align 8, !dbg !1691
  %129 = getelementptr inbounds nuw i8, ptr %128, i32 1, !dbg !1691
  store ptr %129, ptr %127, align 8, !dbg !1691
  %130 = load ptr, ptr %2, align 8, !dbg !1692
  %131 = getelementptr inbounds nuw %struct.EState, ptr %130, i32 0, i32 0, !dbg !1693
  %132 = load ptr, ptr %131, align 8, !dbg !1693
  %133 = getelementptr inbounds nuw %struct.bz_stream, ptr %132, i32 0, i32 1, !dbg !1694
  %134 = load i32, ptr %133, align 8, !dbg !1695
  %135 = add i32 %134, -1, !dbg !1695
  store i32 %135, ptr %133, align 8, !dbg !1695
  %136 = load ptr, ptr %2, align 8, !dbg !1696
  %137 = getelementptr inbounds nuw %struct.EState, ptr %136, i32 0, i32 0, !dbg !1697
  %138 = load ptr, ptr %137, align 8, !dbg !1697
  %139 = getelementptr inbounds nuw %struct.bz_stream, ptr %138, i32 0, i32 2, !dbg !1698
  %140 = load i32, ptr %139, align 4, !dbg !1699
  %141 = add i32 %140, 1, !dbg !1699
  store i32 %141, ptr %139, align 4, !dbg !1699
  %142 = load ptr, ptr %2, align 8, !dbg !1700
  %143 = getelementptr inbounds nuw %struct.EState, ptr %142, i32 0, i32 0, !dbg !1702
  %144 = load ptr, ptr %143, align 8, !dbg !1702
  %145 = getelementptr inbounds nuw %struct.bz_stream, ptr %144, i32 0, i32 2, !dbg !1703
  %146 = load i32, ptr %145, align 4, !dbg !1703
  %147 = icmp eq i32 %146, 0, !dbg !1704
  br i1 %147, label %148, label %155, !dbg !1704

148:                                              ; preds = %123
  %149 = load ptr, ptr %2, align 8, !dbg !1705
  %150 = getelementptr inbounds nuw %struct.EState, ptr %149, i32 0, i32 0, !dbg !1706
  %151 = load ptr, ptr %150, align 8, !dbg !1706
  %152 = getelementptr inbounds nuw %struct.bz_stream, ptr %151, i32 0, i32 3, !dbg !1707
  %153 = load i32, ptr %152, align 8, !dbg !1708
  %154 = add i32 %153, 1, !dbg !1708
  store i32 %154, ptr %152, align 8, !dbg !1708
  br label %155, !dbg !1705

155:                                              ; preds = %148, %123
  br label %13, !dbg !1653, !llvm.loop !1709

156:                                              ; preds = %29, %21
  br label %312, !dbg !1711

157:                                              ; preds = %1
  br label %158, !dbg !1712

158:                                              ; preds = %157, %306
  %159 = load ptr, ptr %2, align 8, !dbg !1714
  %160 = getelementptr inbounds nuw %struct.EState, ptr %159, i32 0, i32 17, !dbg !1717
  %161 = load i32, ptr %160, align 4, !dbg !1717
  %162 = load ptr, ptr %2, align 8, !dbg !1718
  %163 = getelementptr inbounds nuw %struct.EState, ptr %162, i32 0, i32 18, !dbg !1719
  %164 = load i32, ptr %163, align 8, !dbg !1719
  %165 = icmp sge i32 %161, %164, !dbg !1720
  br i1 %165, label %166, label %167, !dbg !1720

166:                                              ; preds = %158
  br label %311, !dbg !1721

167:                                              ; preds = %158
  %168 = load ptr, ptr %2, align 8, !dbg !1722
  %169 = getelementptr inbounds nuw %struct.EState, ptr %168, i32 0, i32 0, !dbg !1724
  %170 = load ptr, ptr %169, align 8, !dbg !1724
  %171 = getelementptr inbounds nuw %struct.bz_stream, ptr %170, i32 0, i32 1, !dbg !1725
  %172 = load i32, ptr %171, align 8, !dbg !1725
  %173 = icmp eq i32 %172, 0, !dbg !1726
  br i1 %173, label %174, label %175, !dbg !1726

174:                                              ; preds = %167
  br label %311, !dbg !1727

175:                                              ; preds = %167
  %176 = load ptr, ptr %2, align 8, !dbg !1728
  %177 = getelementptr inbounds nuw %struct.EState, ptr %176, i32 0, i32 3, !dbg !1730
  %178 = load i32, ptr %177, align 8, !dbg !1730
  %179 = icmp eq i32 %178, 0, !dbg !1731
  br i1 %179, label %180, label %181, !dbg !1731

180:                                              ; preds = %175
  br label %311, !dbg !1732

181:                                              ; preds = %175
  store i8 1, ptr %3, align 1, !dbg !1733
    #dbg_declare(ptr %6, !1734, !DIExpression(), !1736)
  %182 = load ptr, ptr %2, align 8, !dbg !1736
  %183 = getelementptr inbounds nuw %struct.EState, ptr %182, i32 0, i32 0, !dbg !1736
  %184 = load ptr, ptr %183, align 8, !dbg !1736
  %185 = getelementptr inbounds nuw %struct.bz_stream, ptr %184, i32 0, i32 0, !dbg !1736
  %186 = load ptr, ptr %185, align 8, !dbg !1736
  %187 = load i8, ptr %186, align 1, !dbg !1736
  %188 = zext i8 %187 to i32, !dbg !1736
  store i32 %188, ptr %6, align 4, !dbg !1736
  %189 = load i32, ptr %6, align 4, !dbg !1737
  %190 = load ptr, ptr %2, align 8, !dbg !1737
  %191 = getelementptr inbounds nuw %struct.EState, ptr %190, i32 0, i32 13, !dbg !1737
  %192 = load i32, ptr %191, align 4, !dbg !1737
  %193 = icmp ne i32 %189, %192, !dbg !1737
  br i1 %193, label %194, label %244, !dbg !1737

194:                                              ; preds = %181
  %195 = load ptr, ptr %2, align 8, !dbg !1737
  %196 = getelementptr inbounds nuw %struct.EState, ptr %195, i32 0, i32 14, !dbg !1737
  %197 = load i32, ptr %196, align 8, !dbg !1737
  %198 = icmp eq i32 %197, 1, !dbg !1737
  br i1 %198, label %199, label %244, !dbg !1737

199:                                              ; preds = %194
    #dbg_declare(ptr %7, !1739, !DIExpression(), !1741)
  %200 = load ptr, ptr %2, align 8, !dbg !1741
  %201 = getelementptr inbounds nuw %struct.EState, ptr %200, i32 0, i32 13, !dbg !1741
  %202 = load i32, ptr %201, align 4, !dbg !1741
  %203 = trunc i32 %202 to i8, !dbg !1741
  store i8 %203, ptr %7, align 1, !dbg !1741
  %204 = load ptr, ptr %2, align 8, !dbg !1742
  %205 = getelementptr inbounds nuw %struct.EState, ptr %204, i32 0, i32 26, !dbg !1742
  %206 = load i32, ptr %205, align 8, !dbg !1742
  %207 = shl i32 %206, 8, !dbg !1742
  %208 = load ptr, ptr %2, align 8, !dbg !1742
  %209 = getelementptr inbounds nuw %struct.EState, ptr %208, i32 0, i32 26, !dbg !1742
  %210 = load i32, ptr %209, align 8, !dbg !1742
  %211 = lshr i32 %210, 24, !dbg !1742
  %212 = load i8, ptr %7, align 1, !dbg !1742
  %213 = zext i8 %212 to i32, !dbg !1742
  %214 = xor i32 %211, %213, !dbg !1742
  %215 = zext i32 %214 to i64, !dbg !1742
  %216 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %215, !dbg !1742
  %217 = load i32, ptr %216, align 4, !dbg !1742
  %218 = xor i32 %207, %217, !dbg !1742
  %219 = load ptr, ptr %2, align 8, !dbg !1742
  %220 = getelementptr inbounds nuw %struct.EState, ptr %219, i32 0, i32 26, !dbg !1742
  store i32 %218, ptr %220, align 8, !dbg !1742
  %221 = load ptr, ptr %2, align 8, !dbg !1741
  %222 = getelementptr inbounds nuw %struct.EState, ptr %221, i32 0, i32 22, !dbg !1741
  %223 = load ptr, ptr %2, align 8, !dbg !1741
  %224 = getelementptr inbounds nuw %struct.EState, ptr %223, i32 0, i32 13, !dbg !1741
  %225 = load i32, ptr %224, align 4, !dbg !1741
  %226 = zext i32 %225 to i64, !dbg !1741
  %227 = getelementptr inbounds nuw [256 x i8], ptr %222, i64 0, i64 %226, !dbg !1741
  store i8 1, ptr %227, align 1, !dbg !1741
  %228 = load i8, ptr %7, align 1, !dbg !1741
  %229 = load ptr, ptr %2, align 8, !dbg !1741
  %230 = getelementptr inbounds nuw %struct.EState, ptr %229, i32 0, i32 9, !dbg !1741
  %231 = load ptr, ptr %230, align 8, !dbg !1741
  %232 = load ptr, ptr %2, align 8, !dbg !1741
  %233 = getelementptr inbounds nuw %struct.EState, ptr %232, i32 0, i32 17, !dbg !1741
  %234 = load i32, ptr %233, align 4, !dbg !1741
  %235 = sext i32 %234 to i64, !dbg !1741
  %236 = getelementptr inbounds i8, ptr %231, i64 %235, !dbg !1741
  store i8 %228, ptr %236, align 1, !dbg !1741
  %237 = load ptr, ptr %2, align 8, !dbg !1741
  %238 = getelementptr inbounds nuw %struct.EState, ptr %237, i32 0, i32 17, !dbg !1741
  %239 = load i32, ptr %238, align 4, !dbg !1741
  %240 = add nsw i32 %239, 1, !dbg !1741
  store i32 %240, ptr %238, align 4, !dbg !1741
  %241 = load i32, ptr %6, align 4, !dbg !1741
  %242 = load ptr, ptr %2, align 8, !dbg !1741
  %243 = getelementptr inbounds nuw %struct.EState, ptr %242, i32 0, i32 13, !dbg !1741
  store i32 %241, ptr %243, align 4, !dbg !1741
  br label %274, !dbg !1741

244:                                              ; preds = %194, %181
  %245 = load i32, ptr %6, align 4, !dbg !1744
  %246 = load ptr, ptr %2, align 8, !dbg !1744
  %247 = getelementptr inbounds nuw %struct.EState, ptr %246, i32 0, i32 13, !dbg !1744
  %248 = load i32, ptr %247, align 4, !dbg !1744
  %249 = icmp ne i32 %245, %248, !dbg !1744
  br i1 %249, label %255, label %250, !dbg !1744

250:                                              ; preds = %244
  %251 = load ptr, ptr %2, align 8, !dbg !1744
  %252 = getelementptr inbounds nuw %struct.EState, ptr %251, i32 0, i32 14, !dbg !1744
  %253 = load i32, ptr %252, align 8, !dbg !1744
  %254 = icmp eq i32 %253, 255, !dbg !1744
  br i1 %254, label %255, label %268, !dbg !1744

255:                                              ; preds = %250, %244
  %256 = load ptr, ptr %2, align 8, !dbg !1746
  %257 = getelementptr inbounds nuw %struct.EState, ptr %256, i32 0, i32 13, !dbg !1746
  %258 = load i32, ptr %257, align 4, !dbg !1746
  %259 = icmp ult i32 %258, 256, !dbg !1746
  br i1 %259, label %260, label %262, !dbg !1746

260:                                              ; preds = %255
  %261 = load ptr, ptr %2, align 8, !dbg !1746
  call void @add_pair_to_block(ptr noundef %261), !dbg !1746
  br label %262, !dbg !1746

262:                                              ; preds = %260, %255
  %263 = load i32, ptr %6, align 4, !dbg !1749
  %264 = load ptr, ptr %2, align 8, !dbg !1749
  %265 = getelementptr inbounds nuw %struct.EState, ptr %264, i32 0, i32 13, !dbg !1749
  store i32 %263, ptr %265, align 4, !dbg !1749
  %266 = load ptr, ptr %2, align 8, !dbg !1749
  %267 = getelementptr inbounds nuw %struct.EState, ptr %266, i32 0, i32 14, !dbg !1749
  store i32 1, ptr %267, align 8, !dbg !1749
  br label %273, !dbg !1749

268:                                              ; preds = %250
  %269 = load ptr, ptr %2, align 8, !dbg !1750
  %270 = getelementptr inbounds nuw %struct.EState, ptr %269, i32 0, i32 14, !dbg !1750
  %271 = load i32, ptr %270, align 8, !dbg !1750
  %272 = add nsw i32 %271, 1, !dbg !1750
  store i32 %272, ptr %270, align 8, !dbg !1750
  br label %273

273:                                              ; preds = %268, %262
  br label %274

274:                                              ; preds = %273, %199
  %275 = load ptr, ptr %2, align 8, !dbg !1752
  %276 = getelementptr inbounds nuw %struct.EState, ptr %275, i32 0, i32 0, !dbg !1753
  %277 = load ptr, ptr %276, align 8, !dbg !1753
  %278 = getelementptr inbounds nuw %struct.bz_stream, ptr %277, i32 0, i32 0, !dbg !1754
  %279 = load ptr, ptr %278, align 8, !dbg !1755
  %280 = getelementptr inbounds nuw i8, ptr %279, i32 1, !dbg !1755
  store ptr %280, ptr %278, align 8, !dbg !1755
  %281 = load ptr, ptr %2, align 8, !dbg !1756
  %282 = getelementptr inbounds nuw %struct.EState, ptr %281, i32 0, i32 0, !dbg !1757
  %283 = load ptr, ptr %282, align 8, !dbg !1757
  %284 = getelementptr inbounds nuw %struct.bz_stream, ptr %283, i32 0, i32 1, !dbg !1758
  %285 = load i32, ptr %284, align 8, !dbg !1759
  %286 = add i32 %285, -1, !dbg !1759
  store i32 %286, ptr %284, align 8, !dbg !1759
  %287 = load ptr, ptr %2, align 8, !dbg !1760
  %288 = getelementptr inbounds nuw %struct.EState, ptr %287, i32 0, i32 0, !dbg !1761
  %289 = load ptr, ptr %288, align 8, !dbg !1761
  %290 = getelementptr inbounds nuw %struct.bz_stream, ptr %289, i32 0, i32 2, !dbg !1762
  %291 = load i32, ptr %290, align 4, !dbg !1763
  %292 = add i32 %291, 1, !dbg !1763
  store i32 %292, ptr %290, align 4, !dbg !1763
  %293 = load ptr, ptr %2, align 8, !dbg !1764
  %294 = getelementptr inbounds nuw %struct.EState, ptr %293, i32 0, i32 0, !dbg !1766
  %295 = load ptr, ptr %294, align 8, !dbg !1766
  %296 = getelementptr inbounds nuw %struct.bz_stream, ptr %295, i32 0, i32 2, !dbg !1767
  %297 = load i32, ptr %296, align 4, !dbg !1767
  %298 = icmp eq i32 %297, 0, !dbg !1768
  br i1 %298, label %299, label %306, !dbg !1768

299:                                              ; preds = %274
  %300 = load ptr, ptr %2, align 8, !dbg !1769
  %301 = getelementptr inbounds nuw %struct.EState, ptr %300, i32 0, i32 0, !dbg !1770
  %302 = load ptr, ptr %301, align 8, !dbg !1770
  %303 = getelementptr inbounds nuw %struct.bz_stream, ptr %302, i32 0, i32 3, !dbg !1771
  %304 = load i32, ptr %303, align 8, !dbg !1772
  %305 = add i32 %304, 1, !dbg !1772
  store i32 %305, ptr %303, align 8, !dbg !1772
  br label %306, !dbg !1769

306:                                              ; preds = %299, %274
  %307 = load ptr, ptr %2, align 8, !dbg !1773
  %308 = getelementptr inbounds nuw %struct.EState, ptr %307, i32 0, i32 3, !dbg !1774
  %309 = load i32, ptr %308, align 8, !dbg !1775
  %310 = add i32 %309, -1, !dbg !1775
  store i32 %310, ptr %308, align 8, !dbg !1775
  br label %158, !dbg !1712, !llvm.loop !1776

311:                                              ; preds = %180, %174, %166
  br label %312

312:                                              ; preds = %311, %156
  %313 = load i8, ptr %3, align 1, !dbg !1778
  ret i8 %313, !dbg !1779
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_RL(ptr noundef %0) #0 !dbg !1780 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1781, !DIExpression(), !1782)
  %3 = load ptr, ptr %2, align 8, !dbg !1783
  %4 = getelementptr inbounds nuw %struct.EState, ptr %3, i32 0, i32 13, !dbg !1785
  %5 = load i32, ptr %4, align 4, !dbg !1785
  %6 = icmp ult i32 %5, 256, !dbg !1786
  br i1 %6, label %7, label %9, !dbg !1786

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !1787
  call void @add_pair_to_block(ptr noundef %8), !dbg !1788
  br label %9, !dbg !1788

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr %2, align 8, !dbg !1789
  call void @init_RL(ptr noundef %10), !dbg !1790
  ret void, !dbg !1791
}

declare void @BZ2_compressBlock(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pair_to_block(ptr noundef %0) #0 !dbg !1792 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1793, !DIExpression(), !1794)
    #dbg_declare(ptr %3, !1795, !DIExpression(), !1796)
    #dbg_declare(ptr %4, !1797, !DIExpression(), !1798)
  %5 = load ptr, ptr %2, align 8, !dbg !1799
  %6 = getelementptr inbounds nuw %struct.EState, ptr %5, i32 0, i32 13, !dbg !1800
  %7 = load i32, ptr %6, align 4, !dbg !1800
  %8 = trunc i32 %7 to i8, !dbg !1801
  store i8 %8, ptr %4, align 1, !dbg !1798
  store i32 0, ptr %3, align 4, !dbg !1802
  br label %9, !dbg !1804

9:                                                ; preds = %33, %1
  %10 = load i32, ptr %3, align 4, !dbg !1805
  %11 = load ptr, ptr %2, align 8, !dbg !1807
  %12 = getelementptr inbounds nuw %struct.EState, ptr %11, i32 0, i32 14, !dbg !1808
  %13 = load i32, ptr %12, align 8, !dbg !1808
  %14 = icmp slt i32 %10, %13, !dbg !1809
  br i1 %14, label %15, label %36, !dbg !1810

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !dbg !1811
  %17 = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 26, !dbg !1811
  %18 = load i32, ptr %17, align 8, !dbg !1811
  %19 = shl i32 %18, 8, !dbg !1811
  %20 = load ptr, ptr %2, align 8, !dbg !1811
  %21 = getelementptr inbounds nuw %struct.EState, ptr %20, i32 0, i32 26, !dbg !1811
  %22 = load i32, ptr %21, align 8, !dbg !1811
  %23 = lshr i32 %22, 24, !dbg !1811
  %24 = load i8, ptr %4, align 1, !dbg !1811
  %25 = zext i8 %24 to i32, !dbg !1811
  %26 = xor i32 %23, %25, !dbg !1811
  %27 = zext i32 %26 to i64, !dbg !1811
  %28 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %27, !dbg !1811
  %29 = load i32, ptr %28, align 4, !dbg !1811
  %30 = xor i32 %19, %29, !dbg !1811
  %31 = load ptr, ptr %2, align 8, !dbg !1811
  %32 = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 26, !dbg !1811
  store i32 %30, ptr %32, align 8, !dbg !1811
  br label %33, !dbg !1814

33:                                               ; preds = %15
  %34 = load i32, ptr %3, align 4, !dbg !1815
  %35 = add nsw i32 %34, 1, !dbg !1815
  store i32 %35, ptr %3, align 4, !dbg !1815
  br label %9, !dbg !1816, !llvm.loop !1817

36:                                               ; preds = %9
  %37 = load ptr, ptr %2, align 8, !dbg !1819
  %38 = getelementptr inbounds nuw %struct.EState, ptr %37, i32 0, i32 22, !dbg !1820
  %39 = load ptr, ptr %2, align 8, !dbg !1821
  %40 = getelementptr inbounds nuw %struct.EState, ptr %39, i32 0, i32 13, !dbg !1822
  %41 = load i32, ptr %40, align 4, !dbg !1822
  %42 = zext i32 %41 to i64, !dbg !1819
  %43 = getelementptr inbounds nuw [256 x i8], ptr %38, i64 0, i64 %42, !dbg !1819
  store i8 1, ptr %43, align 1, !dbg !1823
  %44 = load ptr, ptr %2, align 8, !dbg !1824
  %45 = getelementptr inbounds nuw %struct.EState, ptr %44, i32 0, i32 14, !dbg !1825
  %46 = load i32, ptr %45, align 8, !dbg !1825
  switch i32 %46, label %128 [
    i32 1, label %47
    i32 2, label %61
    i32 3, label %88
  ], !dbg !1826

47:                                               ; preds = %36
  %48 = load i8, ptr %4, align 1, !dbg !1827
  %49 = load ptr, ptr %2, align 8, !dbg !1829
  %50 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 9, !dbg !1830
  %51 = load ptr, ptr %50, align 8, !dbg !1830
  %52 = load ptr, ptr %2, align 8, !dbg !1831
  %53 = getelementptr inbounds nuw %struct.EState, ptr %52, i32 0, i32 17, !dbg !1832
  %54 = load i32, ptr %53, align 4, !dbg !1832
  %55 = sext i32 %54 to i64, !dbg !1829
  %56 = getelementptr inbounds i8, ptr %51, i64 %55, !dbg !1829
  store i8 %48, ptr %56, align 1, !dbg !1833
  %57 = load ptr, ptr %2, align 8, !dbg !1834
  %58 = getelementptr inbounds nuw %struct.EState, ptr %57, i32 0, i32 17, !dbg !1835
  %59 = load i32, ptr %58, align 4, !dbg !1836
  %60 = add nsw i32 %59, 1, !dbg !1836
  store i32 %60, ptr %58, align 4, !dbg !1836
  br label %206, !dbg !1837

61:                                               ; preds = %36
  %62 = load i8, ptr %4, align 1, !dbg !1838
  %63 = load ptr, ptr %2, align 8, !dbg !1839
  %64 = getelementptr inbounds nuw %struct.EState, ptr %63, i32 0, i32 9, !dbg !1840
  %65 = load ptr, ptr %64, align 8, !dbg !1840
  %66 = load ptr, ptr %2, align 8, !dbg !1841
  %67 = getelementptr inbounds nuw %struct.EState, ptr %66, i32 0, i32 17, !dbg !1842
  %68 = load i32, ptr %67, align 4, !dbg !1842
  %69 = sext i32 %68 to i64, !dbg !1839
  %70 = getelementptr inbounds i8, ptr %65, i64 %69, !dbg !1839
  store i8 %62, ptr %70, align 1, !dbg !1843
  %71 = load ptr, ptr %2, align 8, !dbg !1844
  %72 = getelementptr inbounds nuw %struct.EState, ptr %71, i32 0, i32 17, !dbg !1845
  %73 = load i32, ptr %72, align 4, !dbg !1846
  %74 = add nsw i32 %73, 1, !dbg !1846
  store i32 %74, ptr %72, align 4, !dbg !1846
  %75 = load i8, ptr %4, align 1, !dbg !1847
  %76 = load ptr, ptr %2, align 8, !dbg !1848
  %77 = getelementptr inbounds nuw %struct.EState, ptr %76, i32 0, i32 9, !dbg !1849
  %78 = load ptr, ptr %77, align 8, !dbg !1849
  %79 = load ptr, ptr %2, align 8, !dbg !1850
  %80 = getelementptr inbounds nuw %struct.EState, ptr %79, i32 0, i32 17, !dbg !1851
  %81 = load i32, ptr %80, align 4, !dbg !1851
  %82 = sext i32 %81 to i64, !dbg !1848
  %83 = getelementptr inbounds i8, ptr %78, i64 %82, !dbg !1848
  store i8 %75, ptr %83, align 1, !dbg !1852
  %84 = load ptr, ptr %2, align 8, !dbg !1853
  %85 = getelementptr inbounds nuw %struct.EState, ptr %84, i32 0, i32 17, !dbg !1854
  %86 = load i32, ptr %85, align 4, !dbg !1855
  %87 = add nsw i32 %86, 1, !dbg !1855
  store i32 %87, ptr %85, align 4, !dbg !1855
  br label %206, !dbg !1856

88:                                               ; preds = %36
  %89 = load i8, ptr %4, align 1, !dbg !1857
  %90 = load ptr, ptr %2, align 8, !dbg !1858
  %91 = getelementptr inbounds nuw %struct.EState, ptr %90, i32 0, i32 9, !dbg !1859
  %92 = load ptr, ptr %91, align 8, !dbg !1859
  %93 = load ptr, ptr %2, align 8, !dbg !1860
  %94 = getelementptr inbounds nuw %struct.EState, ptr %93, i32 0, i32 17, !dbg !1861
  %95 = load i32, ptr %94, align 4, !dbg !1861
  %96 = sext i32 %95 to i64, !dbg !1858
  %97 = getelementptr inbounds i8, ptr %92, i64 %96, !dbg !1858
  store i8 %89, ptr %97, align 1, !dbg !1862
  %98 = load ptr, ptr %2, align 8, !dbg !1863
  %99 = getelementptr inbounds nuw %struct.EState, ptr %98, i32 0, i32 17, !dbg !1864
  %100 = load i32, ptr %99, align 4, !dbg !1865
  %101 = add nsw i32 %100, 1, !dbg !1865
  store i32 %101, ptr %99, align 4, !dbg !1865
  %102 = load i8, ptr %4, align 1, !dbg !1866
  %103 = load ptr, ptr %2, align 8, !dbg !1867
  %104 = getelementptr inbounds nuw %struct.EState, ptr %103, i32 0, i32 9, !dbg !1868
  %105 = load ptr, ptr %104, align 8, !dbg !1868
  %106 = load ptr, ptr %2, align 8, !dbg !1869
  %107 = getelementptr inbounds nuw %struct.EState, ptr %106, i32 0, i32 17, !dbg !1870
  %108 = load i32, ptr %107, align 4, !dbg !1870
  %109 = sext i32 %108 to i64, !dbg !1867
  %110 = getelementptr inbounds i8, ptr %105, i64 %109, !dbg !1867
  store i8 %102, ptr %110, align 1, !dbg !1871
  %111 = load ptr, ptr %2, align 8, !dbg !1872
  %112 = getelementptr inbounds nuw %struct.EState, ptr %111, i32 0, i32 17, !dbg !1873
  %113 = load i32, ptr %112, align 4, !dbg !1874
  %114 = add nsw i32 %113, 1, !dbg !1874
  store i32 %114, ptr %112, align 4, !dbg !1874
  %115 = load i8, ptr %4, align 1, !dbg !1875
  %116 = load ptr, ptr %2, align 8, !dbg !1876
  %117 = getelementptr inbounds nuw %struct.EState, ptr %116, i32 0, i32 9, !dbg !1877
  %118 = load ptr, ptr %117, align 8, !dbg !1877
  %119 = load ptr, ptr %2, align 8, !dbg !1878
  %120 = getelementptr inbounds nuw %struct.EState, ptr %119, i32 0, i32 17, !dbg !1879
  %121 = load i32, ptr %120, align 4, !dbg !1879
  %122 = sext i32 %121 to i64, !dbg !1876
  %123 = getelementptr inbounds i8, ptr %118, i64 %122, !dbg !1876
  store i8 %115, ptr %123, align 1, !dbg !1880
  %124 = load ptr, ptr %2, align 8, !dbg !1881
  %125 = getelementptr inbounds nuw %struct.EState, ptr %124, i32 0, i32 17, !dbg !1882
  %126 = load i32, ptr %125, align 4, !dbg !1883
  %127 = add nsw i32 %126, 1, !dbg !1883
  store i32 %127, ptr %125, align 4, !dbg !1883
  br label %206, !dbg !1884

128:                                              ; preds = %36
  %129 = load ptr, ptr %2, align 8, !dbg !1885
  %130 = getelementptr inbounds nuw %struct.EState, ptr %129, i32 0, i32 22, !dbg !1886
  %131 = load ptr, ptr %2, align 8, !dbg !1887
  %132 = getelementptr inbounds nuw %struct.EState, ptr %131, i32 0, i32 14, !dbg !1888
  %133 = load i32, ptr %132, align 8, !dbg !1888
  %134 = sub nsw i32 %133, 4, !dbg !1889
  %135 = sext i32 %134 to i64, !dbg !1885
  %136 = getelementptr inbounds [256 x i8], ptr %130, i64 0, i64 %135, !dbg !1885
  store i8 1, ptr %136, align 1, !dbg !1890
  %137 = load i8, ptr %4, align 1, !dbg !1891
  %138 = load ptr, ptr %2, align 8, !dbg !1892
  %139 = getelementptr inbounds nuw %struct.EState, ptr %138, i32 0, i32 9, !dbg !1893
  %140 = load ptr, ptr %139, align 8, !dbg !1893
  %141 = load ptr, ptr %2, align 8, !dbg !1894
  %142 = getelementptr inbounds nuw %struct.EState, ptr %141, i32 0, i32 17, !dbg !1895
  %143 = load i32, ptr %142, align 4, !dbg !1895
  %144 = sext i32 %143 to i64, !dbg !1892
  %145 = getelementptr inbounds i8, ptr %140, i64 %144, !dbg !1892
  store i8 %137, ptr %145, align 1, !dbg !1896
  %146 = load ptr, ptr %2, align 8, !dbg !1897
  %147 = getelementptr inbounds nuw %struct.EState, ptr %146, i32 0, i32 17, !dbg !1898
  %148 = load i32, ptr %147, align 4, !dbg !1899
  %149 = add nsw i32 %148, 1, !dbg !1899
  store i32 %149, ptr %147, align 4, !dbg !1899
  %150 = load i8, ptr %4, align 1, !dbg !1900
  %151 = load ptr, ptr %2, align 8, !dbg !1901
  %152 = getelementptr inbounds nuw %struct.EState, ptr %151, i32 0, i32 9, !dbg !1902
  %153 = load ptr, ptr %152, align 8, !dbg !1902
  %154 = load ptr, ptr %2, align 8, !dbg !1903
  %155 = getelementptr inbounds nuw %struct.EState, ptr %154, i32 0, i32 17, !dbg !1904
  %156 = load i32, ptr %155, align 4, !dbg !1904
  %157 = sext i32 %156 to i64, !dbg !1901
  %158 = getelementptr inbounds i8, ptr %153, i64 %157, !dbg !1901
  store i8 %150, ptr %158, align 1, !dbg !1905
  %159 = load ptr, ptr %2, align 8, !dbg !1906
  %160 = getelementptr inbounds nuw %struct.EState, ptr %159, i32 0, i32 17, !dbg !1907
  %161 = load i32, ptr %160, align 4, !dbg !1908
  %162 = add nsw i32 %161, 1, !dbg !1908
  store i32 %162, ptr %160, align 4, !dbg !1908
  %163 = load i8, ptr %4, align 1, !dbg !1909
  %164 = load ptr, ptr %2, align 8, !dbg !1910
  %165 = getelementptr inbounds nuw %struct.EState, ptr %164, i32 0, i32 9, !dbg !1911
  %166 = load ptr, ptr %165, align 8, !dbg !1911
  %167 = load ptr, ptr %2, align 8, !dbg !1912
  %168 = getelementptr inbounds nuw %struct.EState, ptr %167, i32 0, i32 17, !dbg !1913
  %169 = load i32, ptr %168, align 4, !dbg !1913
  %170 = sext i32 %169 to i64, !dbg !1910
  %171 = getelementptr inbounds i8, ptr %166, i64 %170, !dbg !1910
  store i8 %163, ptr %171, align 1, !dbg !1914
  %172 = load ptr, ptr %2, align 8, !dbg !1915
  %173 = getelementptr inbounds nuw %struct.EState, ptr %172, i32 0, i32 17, !dbg !1916
  %174 = load i32, ptr %173, align 4, !dbg !1917
  %175 = add nsw i32 %174, 1, !dbg !1917
  store i32 %175, ptr %173, align 4, !dbg !1917
  %176 = load i8, ptr %4, align 1, !dbg !1918
  %177 = load ptr, ptr %2, align 8, !dbg !1919
  %178 = getelementptr inbounds nuw %struct.EState, ptr %177, i32 0, i32 9, !dbg !1920
  %179 = load ptr, ptr %178, align 8, !dbg !1920
  %180 = load ptr, ptr %2, align 8, !dbg !1921
  %181 = getelementptr inbounds nuw %struct.EState, ptr %180, i32 0, i32 17, !dbg !1922
  %182 = load i32, ptr %181, align 4, !dbg !1922
  %183 = sext i32 %182 to i64, !dbg !1919
  %184 = getelementptr inbounds i8, ptr %179, i64 %183, !dbg !1919
  store i8 %176, ptr %184, align 1, !dbg !1923
  %185 = load ptr, ptr %2, align 8, !dbg !1924
  %186 = getelementptr inbounds nuw %struct.EState, ptr %185, i32 0, i32 17, !dbg !1925
  %187 = load i32, ptr %186, align 4, !dbg !1926
  %188 = add nsw i32 %187, 1, !dbg !1926
  store i32 %188, ptr %186, align 4, !dbg !1926
  %189 = load ptr, ptr %2, align 8, !dbg !1927
  %190 = getelementptr inbounds nuw %struct.EState, ptr %189, i32 0, i32 14, !dbg !1928
  %191 = load i32, ptr %190, align 8, !dbg !1928
  %192 = sub nsw i32 %191, 4, !dbg !1929
  %193 = trunc i32 %192 to i8, !dbg !1930
  %194 = load ptr, ptr %2, align 8, !dbg !1931
  %195 = getelementptr inbounds nuw %struct.EState, ptr %194, i32 0, i32 9, !dbg !1932
  %196 = load ptr, ptr %195, align 8, !dbg !1932
  %197 = load ptr, ptr %2, align 8, !dbg !1933
  %198 = getelementptr inbounds nuw %struct.EState, ptr %197, i32 0, i32 17, !dbg !1934
  %199 = load i32, ptr %198, align 4, !dbg !1934
  %200 = sext i32 %199 to i64, !dbg !1931
  %201 = getelementptr inbounds i8, ptr %196, i64 %200, !dbg !1931
  store i8 %193, ptr %201, align 1, !dbg !1935
  %202 = load ptr, ptr %2, align 8, !dbg !1936
  %203 = getelementptr inbounds nuw %struct.EState, ptr %202, i32 0, i32 17, !dbg !1937
  %204 = load i32, ptr %203, align 4, !dbg !1938
  %205 = add nsw i32 %204, 1, !dbg !1938
  store i32 %205, ptr %203, align 4, !dbg !1938
  br label %206, !dbg !1939

206:                                              ; preds = %128, %88, %61, %47
  ret void, !dbg !1940
}

declare i32 @fgetc(ptr noundef) #3

declare i32 @ungetc(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #6

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare noalias ptr @fdopen(i32 noundef, ptr noundef) #1

declare void @__llvm_autojit_materialize(ptr)

; Function Attrs: nounwind
define internal void @_GLOBAL__sub_I_bzlib.c_llvm_autojit_init() #8 section ".text.startup" {
  call void @__llvm_autojit_register(ptr @__llvm_autojit_lazy_file)
  ret void
}

declare void @__llvm_autojit_register(ptr)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bzlib.c", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_autojit_shlib", checksumkind: CSK_MD5, checksum: "e9102cb29eb978e014a27ac5a82e01da")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3544, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 443)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8456, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1057)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 871, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 18)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 873, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 2)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 889, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 55)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1413, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 19)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "bzerrorstrings", scope: !34, file: !2, line: 1583, type: !220, isLocal: true, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 21.1.5 (++20251023083201+45afac62e373-1~exp1~20251023083316.53)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !52, globals: !162, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 46, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!40 = !DIEnumerator(name: "_ISupper", value: 256)
!41 = !DIEnumerator(name: "_ISlower", value: 512)
!42 = !DIEnumerator(name: "_ISalpha", value: 1024)
!43 = !DIEnumerator(name: "_ISdigit", value: 2048)
!44 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!45 = !DIEnumerator(name: "_ISspace", value: 8192)
!46 = !DIEnumerator(name: "_ISprint", value: 16384)
!47 = !DIEnumerator(name: "_ISgraph", value: 32768)
!48 = !DIEnumerator(name: "_ISblank", value: 1)
!49 = !DIEnumerator(name: "_IScntrl", value: 2)
!50 = !DIEnumerator(name: "_ISpunct", value: 4)
!51 = !DIEnumerator(name: "_ISalnum", value: 8)
!52 = !{!53, !54, !58, !61, !63, !64, !62, !55, !135, !76, !60}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !56, line: 83, baseType: !57)
!56 = !DIFile(filename: "./bzlib_private.h", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_autojit_shlib", checksumkind: CSK_MD5, checksum: "5325523d55f5e1fa9d9d8a95214ec2fe")
!57 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt16", file: !56, line: 87, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt32", file: !56, line: 85, baseType: !38)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !56, line: 82, baseType: !57)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "bzFile", file: !2, line: 946, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 937, size: 40832, elements: !67)
!67 = !{!68, !129, !134, !136, !137, !160, !161}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !66, file: !2, line: 938, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 7, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 49, size: 1728, elements: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!74 = !{!75, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !92, !94, !95, !96, !100, !101, !103, !107, !110, !112, !115, !118, !119, !120, !124, !125}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !72, file: !73, line: 51, baseType: !76, size: 32)
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !72, file: !73, line: 54, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !72, file: !73, line: 55, baseType: !78, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !72, file: !73, line: 56, baseType: !78, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !72, file: !73, line: 57, baseType: !78, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !72, file: !73, line: 58, baseType: !78, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !72, file: !73, line: 59, baseType: !78, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !72, file: !73, line: 60, baseType: !78, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !72, file: !73, line: 61, baseType: !78, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !72, file: !73, line: 64, baseType: !78, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !72, file: !73, line: 65, baseType: !78, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !72, file: !73, line: 66, baseType: !78, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !72, file: !73, line: 68, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !73, line: 36, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !72, file: !73, line: 70, baseType: !93, size: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !72, file: !73, line: 72, baseType: !76, size: 32, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !72, file: !73, line: 73, baseType: !76, size: 32, offset: 928)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !72, file: !73, line: 74, baseType: !97, size: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !98, line: 152, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!99 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !72, file: !73, line: 77, baseType: !60, size: 16, offset: 1024)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !72, file: !73, line: 78, baseType: !102, size: 8, offset: 1040)
!102 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !72, file: !73, line: 79, baseType: !104, size: 8, offset: 1048)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 1)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !72, file: !73, line: 81, baseType: !108, size: 64, offset: 1088)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !73, line: 43, baseType: null)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !72, file: !73, line: 89, baseType: !111, size: 64, offset: 1152)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !98, line: 153, baseType: !99)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !72, file: !73, line: 91, baseType: !113, size: 64, offset: 1216)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !73, line: 37, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !72, file: !73, line: 92, baseType: !116, size: 64, offset: 1280)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !73, line: 38, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !72, file: !73, line: 93, baseType: !93, size: 64, offset: 1344)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !72, file: !73, line: 94, baseType: !53, size: 64, offset: 1408)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !72, file: !73, line: 95, baseType: !121, size: 64, offset: 1472)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 18, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/llvm-21/lib/clang/21/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!123 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !72, file: !73, line: 96, baseType: !76, size: 32, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !72, file: !73, line: 98, baseType: !126, size: 160, offset: 1568)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 20)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !66, file: !2, line: 939, baseType: !130, size: 40000, offset: 64)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 40000, elements: !132)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "Char", file: !56, line: 81, baseType: !4)
!132 = !{!133}
!133 = !DISubrange(count: 5000)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "bufN", scope: !66, file: !2, line: 940, baseType: !135, size: 32, offset: 40064)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "Int32", file: !56, line: 84, baseType: !76)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !66, file: !2, line: 941, baseType: !63, size: 8, offset: 40096)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !66, file: !2, line: 942, baseType: !138, size: 640, offset: 40128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "bz_stream", file: !139, line: 106, baseType: !140)
!139 = !DIFile(filename: "./bzlib.h", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_autojit_shlib", checksumkind: CSK_MD5, checksum: "2630d715580548e1aacc6fac1a21250d")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 89, size: 640, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !155, !159}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !140, file: !139, line: 90, baseType: !78, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !140, file: !139, line: 91, baseType: !38, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "total_in_lo32", scope: !140, file: !139, line: 92, baseType: !38, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "total_in_hi32", scope: !140, file: !139, line: 93, baseType: !38, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !140, file: !139, line: 95, baseType: !78, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !140, file: !139, line: 96, baseType: !38, size: 32, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "total_out_lo32", scope: !140, file: !139, line: 97, baseType: !38, size: 32, offset: 288)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "total_out_hi32", scope: !140, file: !139, line: 98, baseType: !38, size: 32, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !140, file: !139, line: 100, baseType: !53, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bzalloc", scope: !140, file: !139, line: 102, baseType: !152, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!53, !53, !76, !76}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "bzfree", scope: !140, file: !139, line: 103, baseType: !156, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !53, !53}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !140, file: !139, line: 104, baseType: !53, size: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lastErr", scope: !66, file: !2, line: 943, baseType: !135, size: 32, offset: 40768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "initialisedOk", scope: !66, file: !2, line: 944, baseType: !63, size: 8, offset: 40800)
!162 = !{!0, !7, !12, !17, !22, !27, !163, !165, !167, !169, !171, !176, !181, !186, !191, !196, !201, !206, !208, !213, !215, !32}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1462, type: !19, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1462, type: !19, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1463, type: !19, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1466, type: !104, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1584, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 3)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1585, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 15)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1586, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 12)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1587, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 10)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1588, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 11)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1589, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 17)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1590, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 9)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1591, type: !178, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1592, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 13)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1593, type: !210, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1594, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 4)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 1024, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 16)
!223 = !{i32 7, !"Dwarf Version", i32 5}
!224 = !{i32 2, !"Debug Info Version", i32 3}
!225 = !{i32 1, !"wchar_size", i32 4}
!226 = !{i32 8, !"PIC Level", i32 2}
!227 = !{i32 7, !"PIE Level", i32 2}
!228 = !{i32 7, !"uwtable", i32 2}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"Ubuntu clang version 21.1.5 (++20251023083201+45afac62e373-1~exp1~20251023083316.53)"}
!231 = distinct !DISubprogram(name: "bz_config_ok", scope: !2, file: !2, line: 136, type: !232, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34)
!232 = !DISubroutineType(types: !233)
!233 = !{!76}
!234 = !DILocation(line: 141, column: 4, scope: !231)
!235 = distinct !DISubprogram(name: "default_bzalloc", scope: !2, file: !2, line: 147, type: !236, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!53, !53, !135, !135}
!238 = !{}
!239 = !DILocalVariable(name: "opaque", arg: 1, scope: !235, file: !2, line: 147, type: !53)
!240 = !DILocation(line: 147, column: 31, scope: !235)
!241 = !DILocalVariable(name: "items", arg: 2, scope: !235, file: !2, line: 147, type: !135)
!242 = !DILocation(line: 147, column: 45, scope: !235)
!243 = !DILocalVariable(name: "size", arg: 3, scope: !235, file: !2, line: 147, type: !135)
!244 = !DILocation(line: 147, column: 58, scope: !235)
!245 = !DILocalVariable(name: "v", scope: !235, file: !2, line: 149, type: !53)
!246 = !DILocation(line: 149, column: 10, scope: !235)
!247 = !DILocation(line: 149, column: 23, scope: !235)
!248 = !DILocation(line: 149, column: 31, scope: !235)
!249 = !DILocation(line: 149, column: 29, scope: !235)
!250 = !DILocation(line: 149, column: 14, scope: !235)
!251 = !DILocation(line: 150, column: 11, scope: !235)
!252 = !DILocation(line: 150, column: 4, scope: !235)
!253 = distinct !DISubprogram(name: "default_bzfree", scope: !2, file: !2, line: 154, type: !157, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!254 = !DILocalVariable(name: "opaque", arg: 1, scope: !253, file: !2, line: 154, type: !53)
!255 = !DILocation(line: 154, column: 29, scope: !253)
!256 = !DILocalVariable(name: "addr", arg: 2, scope: !253, file: !2, line: 154, type: !53)
!257 = !DILocation(line: 154, column: 43, scope: !253)
!258 = !DILocation(line: 156, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !253, file: !2, line: 156, column: 8)
!260 = !DILocation(line: 156, column: 13, scope: !259)
!261 = !DILocation(line: 156, column: 29, scope: !259)
!262 = !DILocation(line: 156, column: 22, scope: !259)
!263 = !DILocation(line: 157, column: 1, scope: !253)
!264 = distinct !DISubprogram(name: "init_RL", scope: !2, file: !2, line: 176, type: !265, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "EState", file: !56, line: 300, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 231, size: 446144, elements: !270)
!270 = !{!271, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !298, !300, !301, !302, !303, !304, !305, !306, !307, !308, !312, !316, !317, !321, !323, !324}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !269, file: !56, line: 233, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !269, file: !56, line: 237, baseType: !135, size: 32, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !56, line: 238, baseType: !135, size: 32, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in_expect", scope: !269, file: !56, line: 241, baseType: !62, size: 32, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "arr1", scope: !269, file: !56, line: 244, baseType: !61, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "arr2", scope: !269, file: !56, line: 245, baseType: !61, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ftab", scope: !269, file: !56, line: 246, baseType: !61, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "origPtr", scope: !269, file: !56, line: 247, baseType: !135, size: 32, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !269, file: !56, line: 250, baseType: !61, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !269, file: !56, line: 251, baseType: !54, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mtfv", scope: !269, file: !56, line: 252, baseType: !58, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "zbits", scope: !269, file: !56, line: 253, baseType: !54, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "workFactor", scope: !269, file: !56, line: 256, baseType: !135, size: 32, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_ch", scope: !269, file: !56, line: 259, baseType: !62, size: 32, offset: 736)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_len", scope: !269, file: !56, line: 260, baseType: !135, size: 32, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rNToGo", scope: !269, file: !56, line: 261, baseType: !135, size: 32, offset: 800)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rTPos", scope: !269, file: !56, line: 261, baseType: !135, size: 32, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "nblock", scope: !269, file: !56, line: 264, baseType: !135, size: 32, offset: 864)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "nblockMAX", scope: !269, file: !56, line: 265, baseType: !135, size: 32, offset: 896)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "numZ", scope: !269, file: !56, line: 266, baseType: !135, size: 32, offset: 928)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state_out_pos", scope: !269, file: !56, line: 267, baseType: !135, size: 32, offset: 960)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "nInUse", scope: !269, file: !56, line: 270, baseType: !135, size: 32, offset: 992)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "inUse", scope: !269, file: !56, line: 271, baseType: !295, size: 2048, offset: 1024)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2048, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "unseqToSeq", scope: !269, file: !56, line: 272, baseType: !299, size: 2048, offset: 3072)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, elements: !296)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "bsBuff", scope: !269, file: !56, line: 275, baseType: !62, size: 32, offset: 5120)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "bsLive", scope: !269, file: !56, line: 276, baseType: !135, size: 32, offset: 5152)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "blockCRC", scope: !269, file: !56, line: 279, baseType: !62, size: 32, offset: 5184)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "combinedCRC", scope: !269, file: !56, line: 280, baseType: !62, size: 32, offset: 5216)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "verbosity", scope: !269, file: !56, line: 283, baseType: !135, size: 32, offset: 5248)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "blockNo", scope: !269, file: !56, line: 284, baseType: !135, size: 32, offset: 5280)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "blockSize100k", scope: !269, file: !56, line: 285, baseType: !135, size: 32, offset: 5312)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "nMTF", scope: !269, file: !56, line: 288, baseType: !135, size: 32, offset: 5344)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mtfFreq", scope: !269, file: !56, line: 289, baseType: !309, size: 8256, offset: 5376)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8256, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 258)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !269, file: !56, line: 290, baseType: !313, size: 144016, offset: 13632)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 144016, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 18002)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "selectorMtf", scope: !269, file: !56, line: 291, baseType: !313, size: 144016, offset: 157648)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !269, file: !56, line: 293, baseType: !318, size: 12384, offset: 301664)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 12384, elements: !319)
!319 = !{!320, !311}
!320 = !DISubrange(count: 6)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !269, file: !56, line: 294, baseType: !322, size: 49536, offset: 314048)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 49536, elements: !319)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rfreq", scope: !269, file: !56, line: 295, baseType: !322, size: 49536, offset: 363584)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "len_pack", scope: !269, file: !56, line: 297, baseType: !325, size: 33024, offset: 413120)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 33024, elements: !326)
!326 = !{!311, !219}
!327 = !DILocalVariable(name: "s", arg: 1, scope: !264, file: !2, line: 176, type: !267)
!328 = !DILocation(line: 176, column: 24, scope: !264)
!329 = !DILocation(line: 178, column: 4, scope: !264)
!330 = !DILocation(line: 178, column: 7, scope: !264)
!331 = !DILocation(line: 178, column: 20, scope: !264)
!332 = !DILocation(line: 179, column: 4, scope: !264)
!333 = !DILocation(line: 179, column: 7, scope: !264)
!334 = !DILocation(line: 179, column: 20, scope: !264)
!335 = !DILocation(line: 180, column: 1, scope: !264)
!336 = distinct !DISubprogram(name: "prepare_new_block", scope: !2, file: !2, line: 162, type: !265, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!337 = !DILocalVariable(name: "s", arg: 1, scope: !336, file: !2, line: 162, type: !267)
!338 = !DILocation(line: 162, column: 34, scope: !336)
!339 = !DILocalVariable(name: "i", scope: !336, file: !2, line: 164, type: !135)
!340 = !DILocation(line: 164, column: 10, scope: !336)
!341 = !DILocation(line: 165, column: 4, scope: !336)
!342 = !DILocation(line: 165, column: 7, scope: !336)
!343 = !DILocation(line: 165, column: 14, scope: !336)
!344 = !DILocation(line: 166, column: 4, scope: !336)
!345 = !DILocation(line: 166, column: 7, scope: !336)
!346 = !DILocation(line: 166, column: 12, scope: !336)
!347 = !DILocation(line: 167, column: 4, scope: !336)
!348 = !DILocation(line: 167, column: 7, scope: !336)
!349 = !DILocation(line: 167, column: 21, scope: !336)
!350 = !DILocation(line: 168, column: 4, scope: !351)
!351 = distinct !DILexicalBlock(scope: !336, file: !2, line: 168, column: 4)
!352 = !DILocation(line: 169, column: 11, scope: !353)
!353 = distinct !DILexicalBlock(scope: !336, file: !2, line: 169, column: 4)
!354 = !DILocation(line: 169, column: 9, scope: !353)
!355 = !DILocation(line: 169, column: 16, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !2, line: 169, column: 4)
!357 = !DILocation(line: 169, column: 18, scope: !356)
!358 = !DILocation(line: 169, column: 4, scope: !353)
!359 = !DILocation(line: 169, column: 30, scope: !356)
!360 = !DILocation(line: 169, column: 33, scope: !356)
!361 = !DILocation(line: 169, column: 39, scope: !356)
!362 = !DILocation(line: 169, column: 42, scope: !356)
!363 = !DILocation(line: 169, column: 26, scope: !356)
!364 = !DILocation(line: 169, column: 4, scope: !356)
!365 = distinct !{!365, !358, !366, !367}
!366 = !DILocation(line: 169, column: 44, scope: !353)
!367 = !{!"llvm.loop.mustprogress"}
!368 = !DILocation(line: 170, column: 4, scope: !336)
!369 = !DILocation(line: 170, column: 7, scope: !336)
!370 = !DILocation(line: 170, column: 14, scope: !336)
!371 = !DILocation(line: 171, column: 1, scope: !336)
!372 = distinct !DISubprogram(name: "handle_compress", scope: !2, file: !2, line: 406, type: !373, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!373 = !DISubroutineType(types: !374)
!374 = !{!63, !272}
!375 = !DILocalVariable(name: "strm", arg: 1, scope: !372, file: !2, line: 406, type: !272)
!376 = !DILocation(line: 406, column: 35, scope: !372)
!377 = !DILocalVariable(name: "progress_in", scope: !372, file: !2, line: 408, type: !63)
!378 = !DILocation(line: 408, column: 9, scope: !372)
!379 = !DILocalVariable(name: "progress_out", scope: !372, file: !2, line: 409, type: !63)
!380 = !DILocation(line: 409, column: 9, scope: !372)
!381 = !DILocalVariable(name: "s", scope: !372, file: !2, line: 410, type: !267)
!382 = !DILocation(line: 410, column: 12, scope: !372)
!383 = !DILocation(line: 410, column: 16, scope: !372)
!384 = !DILocation(line: 410, column: 22, scope: !372)
!385 = !DILocation(line: 412, column: 4, scope: !372)
!386 = !DILocation(line: 414, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 414, column: 11)
!388 = distinct !DILexicalBlock(scope: !372, file: !2, line: 412, column: 17)
!389 = !DILocation(line: 414, column: 14, scope: !387)
!390 = !DILocation(line: 414, column: 20, scope: !387)
!391 = !DILocation(line: 415, column: 51, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !2, line: 414, column: 36)
!393 = !DILocation(line: 415, column: 26, scope: !392)
!394 = !DILocation(line: 415, column: 23, scope: !392)
!395 = !DILocation(line: 416, column: 14, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !2, line: 416, column: 14)
!397 = !DILocation(line: 416, column: 17, scope: !396)
!398 = !DILocation(line: 416, column: 33, scope: !396)
!399 = !DILocation(line: 416, column: 36, scope: !396)
!400 = !DILocation(line: 416, column: 31, scope: !396)
!401 = !DILocation(line: 416, column: 42, scope: !396)
!402 = !DILocation(line: 417, column: 14, scope: !403)
!403 = distinct !DILexicalBlock(scope: !392, file: !2, line: 417, column: 14)
!404 = !DILocation(line: 417, column: 17, scope: !403)
!405 = !DILocation(line: 417, column: 22, scope: !403)
!406 = !DILocation(line: 417, column: 40, scope: !403)
!407 = !DILocation(line: 418, column: 14, scope: !403)
!408 = !DILocation(line: 418, column: 17, scope: !403)
!409 = !DILocation(line: 418, column: 33, scope: !403)
!410 = !DILocation(line: 418, column: 38, scope: !403)
!411 = !DILocation(line: 419, column: 25, scope: !403)
!412 = !DILocation(line: 419, column: 14, scope: !403)
!413 = !DILocation(line: 419, column: 29, scope: !403)
!414 = !DILocation(line: 420, column: 30, scope: !392)
!415 = !DILocation(line: 420, column: 10, scope: !392)
!416 = !DILocation(line: 421, column: 10, scope: !392)
!417 = !DILocation(line: 421, column: 13, scope: !392)
!418 = !DILocation(line: 421, column: 19, scope: !392)
!419 = !DILocation(line: 422, column: 14, scope: !420)
!420 = distinct !DILexicalBlock(scope: !392, file: !2, line: 422, column: 14)
!421 = !DILocation(line: 422, column: 17, scope: !420)
!422 = !DILocation(line: 422, column: 22, scope: !420)
!423 = !DILocation(line: 422, column: 39, scope: !420)
!424 = !DILocation(line: 423, column: 14, scope: !420)
!425 = !DILocation(line: 423, column: 17, scope: !420)
!426 = !DILocation(line: 423, column: 33, scope: !420)
!427 = !DILocation(line: 423, column: 38, scope: !420)
!428 = !DILocation(line: 424, column: 25, scope: !420)
!429 = !DILocation(line: 424, column: 14, scope: !420)
!430 = !DILocation(line: 424, column: 29, scope: !420)
!431 = !DILocation(line: 425, column: 7, scope: !392)
!432 = !DILocation(line: 427, column: 11, scope: !433)
!433 = distinct !DILexicalBlock(scope: !388, file: !2, line: 427, column: 11)
!434 = !DILocation(line: 427, column: 14, scope: !433)
!435 = !DILocation(line: 427, column: 20, scope: !433)
!436 = !DILocation(line: 428, column: 49, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !2, line: 427, column: 35)
!438 = !DILocation(line: 428, column: 25, scope: !437)
!439 = !DILocation(line: 428, column: 22, scope: !437)
!440 = !DILocation(line: 429, column: 14, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !2, line: 429, column: 14)
!442 = !DILocation(line: 429, column: 17, scope: !441)
!443 = !DILocation(line: 429, column: 22, scope: !441)
!444 = !DILocation(line: 429, column: 38, scope: !441)
!445 = !DILocation(line: 429, column: 41, scope: !441)
!446 = !DILocation(line: 429, column: 44, scope: !441)
!447 = !DILocation(line: 429, column: 60, scope: !441)
!448 = !DILocation(line: 430, column: 24, scope: !449)
!449 = distinct !DILexicalBlock(scope: !441, file: !2, line: 429, column: 66)
!450 = !DILocation(line: 430, column: 13, scope: !449)
!451 = !DILocation(line: 431, column: 33, scope: !449)
!452 = !DILocation(line: 431, column: 43, scope: !449)
!453 = !DILocation(line: 431, column: 46, scope: !449)
!454 = !DILocation(line: 431, column: 51, scope: !449)
!455 = !DILocation(line: 431, column: 36, scope: !449)
!456 = !DILocation(line: 431, column: 13, scope: !449)
!457 = !DILocation(line: 432, column: 13, scope: !449)
!458 = !DILocation(line: 432, column: 16, scope: !449)
!459 = !DILocation(line: 432, column: 22, scope: !449)
!460 = !DILocation(line: 433, column: 10, scope: !449)
!461 = !DILocation(line: 435, column: 14, scope: !462)
!462 = distinct !DILexicalBlock(scope: !441, file: !2, line: 435, column: 14)
!463 = !DILocation(line: 435, column: 17, scope: !462)
!464 = !DILocation(line: 435, column: 27, scope: !462)
!465 = !DILocation(line: 435, column: 30, scope: !462)
!466 = !DILocation(line: 435, column: 24, scope: !462)
!467 = !DILocation(line: 436, column: 33, scope: !468)
!468 = distinct !DILexicalBlock(scope: !462, file: !2, line: 435, column: 41)
!469 = !DILocation(line: 436, column: 13, scope: !468)
!470 = !DILocation(line: 437, column: 13, scope: !468)
!471 = !DILocation(line: 437, column: 16, scope: !468)
!472 = !DILocation(line: 437, column: 22, scope: !468)
!473 = !DILocation(line: 438, column: 10, scope: !468)
!474 = !DILocation(line: 440, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !462, file: !2, line: 440, column: 14)
!476 = !DILocation(line: 440, column: 17, scope: !475)
!477 = !DILocation(line: 440, column: 23, scope: !475)
!478 = !DILocation(line: 440, column: 32, scope: !475)
!479 = !DILocation(line: 441, column: 13, scope: !480)
!480 = distinct !DILexicalBlock(scope: !475, file: !2, line: 440, column: 38)
!481 = !DILocation(line: 443, column: 7, scope: !437)
!482 = distinct !{!482, !385, !483}
!483 = !DILocation(line: 445, column: 4, scope: !372)
!484 = !DILocation(line: 447, column: 11, scope: !372)
!485 = !DILocation(line: 447, column: 23, scope: !372)
!486 = !DILocation(line: 447, column: 26, scope: !372)
!487 = !DILocation(line: 447, column: 4, scope: !372)
!488 = distinct !DISubprogram(name: "isempty_RL", scope: !2, file: !2, line: 184, type: !489, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!489 = !DISubroutineType(types: !490)
!490 = !{!63, !267}
!491 = !DILocalVariable(name: "s", arg: 1, scope: !488, file: !2, line: 184, type: !267)
!492 = !DILocation(line: 184, column: 27, scope: !488)
!493 = !DILocation(line: 186, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !488, file: !2, line: 186, column: 8)
!495 = !DILocation(line: 186, column: 11, scope: !494)
!496 = !DILocation(line: 186, column: 23, scope: !494)
!497 = !DILocation(line: 186, column: 29, scope: !494)
!498 = !DILocation(line: 186, column: 32, scope: !494)
!499 = !DILocation(line: 186, column: 35, scope: !494)
!500 = !DILocation(line: 186, column: 48, scope: !494)
!501 = !DILocation(line: 187, column: 7, scope: !494)
!502 = !DILocation(line: 188, column: 7, scope: !494)
!503 = !DILocation(line: 189, column: 1, scope: !488)
!504 = distinct !DISubprogram(name: "unRLE_obuf_to_output_SMALL", scope: !2, file: !2, line: 750, type: !505, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!505 = !DISubroutineType(types: !506)
!506 = !{!63, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "DState", file: !56, line: 472, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 382, size: 513152, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !529, !530, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !546, !547, !551, !553, !554, !555, !556, !557, !558, !559, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !585, !586}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !509, file: !56, line: 384, baseType: !272, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !509, file: !56, line: 387, baseType: !135, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "state_out_ch", scope: !509, file: !56, line: 390, baseType: !55, size: 8, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "state_out_len", scope: !509, file: !56, line: 391, baseType: !135, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "blockRandomised", scope: !509, file: !56, line: 392, baseType: !63, size: 8, offset: 160)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rNToGo", scope: !509, file: !56, line: 393, baseType: !135, size: 32, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rTPos", scope: !509, file: !56, line: 393, baseType: !135, size: 32, offset: 224)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "bsBuff", scope: !509, file: !56, line: 396, baseType: !62, size: 32, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "bsLive", scope: !509, file: !56, line: 397, baseType: !135, size: 32, offset: 288)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "blockSize100k", scope: !509, file: !56, line: 400, baseType: !135, size: 32, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "smallDecompress", scope: !509, file: !56, line: 401, baseType: !63, size: 8, offset: 352)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "currBlockNo", scope: !509, file: !56, line: 402, baseType: !135, size: 32, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "verbosity", scope: !509, file: !56, line: 403, baseType: !135, size: 32, offset: 416)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "origPtr", scope: !509, file: !56, line: 406, baseType: !135, size: 32, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tPos", scope: !509, file: !56, line: 407, baseType: !62, size: 32, offset: 480)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "k0", scope: !509, file: !56, line: 408, baseType: !135, size: 32, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "unzftab", scope: !509, file: !56, line: 409, baseType: !528, size: 8192, offset: 544)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8192, elements: !296)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nblock_used", scope: !509, file: !56, line: 410, baseType: !135, size: 32, offset: 8736)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cftab", scope: !509, file: !56, line: 411, baseType: !531, size: 8224, offset: 8768)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8224, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 257)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "cftabCopy", scope: !509, file: !56, line: 412, baseType: !531, size: 8224, offset: 16992)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !509, file: !56, line: 415, baseType: !61, size: 64, offset: 25216)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ll16", scope: !509, file: !56, line: 418, baseType: !58, size: 64, offset: 25280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ll4", scope: !509, file: !56, line: 419, baseType: !54, size: 64, offset: 25344)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "storedBlockCRC", scope: !509, file: !56, line: 422, baseType: !62, size: 32, offset: 25408)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "storedCombinedCRC", scope: !509, file: !56, line: 423, baseType: !62, size: 32, offset: 25440)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "calculatedBlockCRC", scope: !509, file: !56, line: 424, baseType: !62, size: 32, offset: 25472)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "calculatedCombinedCRC", scope: !509, file: !56, line: 425, baseType: !62, size: 32, offset: 25504)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nInUse", scope: !509, file: !56, line: 428, baseType: !135, size: 32, offset: 25536)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "inUse", scope: !509, file: !56, line: 429, baseType: !295, size: 2048, offset: 25568)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "inUse16", scope: !509, file: !56, line: 430, baseType: !545, size: 128, offset: 27616)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !221)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "seqToUnseq", scope: !509, file: !56, line: 431, baseType: !299, size: 2048, offset: 27744)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mtfa", scope: !509, file: !56, line: 434, baseType: !548, size: 32768, offset: 29792)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32768, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 4096)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mtfbase", scope: !509, file: !56, line: 435, baseType: !552, size: 512, offset: 62560)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 512, elements: !221)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !509, file: !56, line: 436, baseType: !313, size: 144016, offset: 63072)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "selectorMtf", scope: !509, file: !56, line: 437, baseType: !313, size: 144016, offset: 207088)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !509, file: !56, line: 438, baseType: !318, size: 12384, offset: 351104)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !509, file: !56, line: 440, baseType: !322, size: 49536, offset: 363488)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !509, file: !56, line: 441, baseType: !322, size: 49536, offset: 413024)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !509, file: !56, line: 442, baseType: !322, size: 49536, offset: 462560)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "minLens", scope: !509, file: !56, line: 443, baseType: !560, size: 192, offset: 512096)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 192, elements: !561)
!561 = !{!320}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "save_i", scope: !509, file: !56, line: 446, baseType: !135, size: 32, offset: 512288)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "save_j", scope: !509, file: !56, line: 447, baseType: !135, size: 32, offset: 512320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "save_t", scope: !509, file: !56, line: 448, baseType: !135, size: 32, offset: 512352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "save_alphaSize", scope: !509, file: !56, line: 449, baseType: !135, size: 32, offset: 512384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "save_nGroups", scope: !509, file: !56, line: 450, baseType: !135, size: 32, offset: 512416)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "save_nSelectors", scope: !509, file: !56, line: 451, baseType: !135, size: 32, offset: 512448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "save_EOB", scope: !509, file: !56, line: 452, baseType: !135, size: 32, offset: 512480)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "save_groupNo", scope: !509, file: !56, line: 453, baseType: !135, size: 32, offset: 512512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "save_groupPos", scope: !509, file: !56, line: 454, baseType: !135, size: 32, offset: 512544)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "save_nextSym", scope: !509, file: !56, line: 455, baseType: !135, size: 32, offset: 512576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "save_nblockMAX", scope: !509, file: !56, line: 456, baseType: !135, size: 32, offset: 512608)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "save_nblock", scope: !509, file: !56, line: 457, baseType: !135, size: 32, offset: 512640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "save_es", scope: !509, file: !56, line: 458, baseType: !135, size: 32, offset: 512672)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "save_N", scope: !509, file: !56, line: 459, baseType: !135, size: 32, offset: 512704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "save_curr", scope: !509, file: !56, line: 460, baseType: !135, size: 32, offset: 512736)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "save_zt", scope: !509, file: !56, line: 461, baseType: !135, size: 32, offset: 512768)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "save_zn", scope: !509, file: !56, line: 462, baseType: !135, size: 32, offset: 512800)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "save_zvec", scope: !509, file: !56, line: 463, baseType: !135, size: 32, offset: 512832)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "save_zj", scope: !509, file: !56, line: 464, baseType: !135, size: 32, offset: 512864)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "save_gSel", scope: !509, file: !56, line: 465, baseType: !135, size: 32, offset: 512896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "save_gMinlen", scope: !509, file: !56, line: 466, baseType: !135, size: 32, offset: 512928)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "save_gLimit", scope: !509, file: !56, line: 467, baseType: !584, size: 64, offset: 512960)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "save_gBase", scope: !509, file: !56, line: 468, baseType: !584, size: 64, offset: 513024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "save_gPerm", scope: !509, file: !56, line: 469, baseType: !584, size: 64, offset: 513088)
!587 = !DILocalVariable(name: "s", arg: 1, scope: !504, file: !2, line: 750, type: !507)
!588 = !DILocation(line: 750, column: 43, scope: !504)
!589 = !DILocalVariable(name: "k1", scope: !504, file: !2, line: 752, type: !55)
!590 = !DILocation(line: 752, column: 10, scope: !504)
!591 = !DILocation(line: 754, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !504, file: !2, line: 754, column: 8)
!593 = !DILocation(line: 754, column: 11, scope: !592)
!594 = !DILocation(line: 756, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !2, line: 754, column: 28)
!596 = !DILocation(line: 758, column: 10, scope: !597)
!597 = distinct !DILexicalBlock(scope: !595, file: !2, line: 756, column: 20)
!598 = !DILocation(line: 759, column: 17, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !2, line: 759, column: 17)
!600 = distinct !DILexicalBlock(scope: !597, file: !2, line: 758, column: 23)
!601 = !DILocation(line: 759, column: 20, scope: !599)
!602 = !DILocation(line: 759, column: 26, scope: !599)
!603 = !DILocation(line: 759, column: 36, scope: !599)
!604 = !DILocation(line: 759, column: 42, scope: !599)
!605 = !DILocation(line: 760, column: 17, scope: !606)
!606 = distinct !DILexicalBlock(scope: !600, file: !2, line: 760, column: 17)
!607 = !DILocation(line: 760, column: 20, scope: !606)
!608 = !DILocation(line: 760, column: 34, scope: !606)
!609 = !DILocation(line: 760, column: 40, scope: !606)
!610 = !DILocation(line: 761, column: 48, scope: !600)
!611 = !DILocation(line: 761, column: 51, scope: !600)
!612 = !DILocation(line: 761, column: 25, scope: !600)
!613 = !DILocation(line: 761, column: 28, scope: !600)
!614 = !DILocation(line: 761, column: 34, scope: !600)
!615 = !DILocation(line: 761, column: 46, scope: !600)
!616 = !DILocation(line: 762, column: 13, scope: !617)
!617 = distinct !DILexicalBlock(scope: !600, file: !2, line: 762, column: 13)
!618 = !DILocation(line: 763, column: 13, scope: !600)
!619 = !DILocation(line: 763, column: 16, scope: !600)
!620 = !DILocation(line: 763, column: 29, scope: !600)
!621 = !DILocation(line: 764, column: 13, scope: !600)
!622 = !DILocation(line: 764, column: 16, scope: !600)
!623 = !DILocation(line: 764, column: 22, scope: !600)
!624 = !DILocation(line: 764, column: 30, scope: !600)
!625 = !DILocation(line: 765, column: 13, scope: !600)
!626 = !DILocation(line: 765, column: 16, scope: !600)
!627 = !DILocation(line: 765, column: 22, scope: !600)
!628 = !DILocation(line: 765, column: 31, scope: !600)
!629 = !DILocation(line: 766, column: 13, scope: !600)
!630 = !DILocation(line: 766, column: 16, scope: !600)
!631 = !DILocation(line: 766, column: 22, scope: !600)
!632 = !DILocation(line: 766, column: 36, scope: !600)
!633 = !DILocation(line: 767, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !600, file: !2, line: 767, column: 17)
!635 = !DILocation(line: 767, column: 20, scope: !634)
!636 = !DILocation(line: 767, column: 26, scope: !634)
!637 = !DILocation(line: 767, column: 41, scope: !634)
!638 = !DILocation(line: 767, column: 47, scope: !634)
!639 = !DILocation(line: 767, column: 50, scope: !634)
!640 = !DILocation(line: 767, column: 56, scope: !634)
!641 = !DILocation(line: 767, column: 70, scope: !634)
!642 = distinct !{!642, !596, !643}
!643 = !DILocation(line: 768, column: 10, scope: !597)
!644 = !DILocation(line: 771, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !597, file: !2, line: 771, column: 14)
!646 = !DILocation(line: 771, column: 17, scope: !645)
!647 = !DILocation(line: 771, column: 32, scope: !645)
!648 = !DILocation(line: 771, column: 35, scope: !645)
!649 = !DILocation(line: 771, column: 46, scope: !645)
!650 = !DILocation(line: 771, column: 29, scope: !645)
!651 = !DILocation(line: 771, column: 50, scope: !645)
!652 = !DILocation(line: 774, column: 14, scope: !653)
!653 = distinct !DILexicalBlock(scope: !597, file: !2, line: 774, column: 14)
!654 = !DILocation(line: 774, column: 17, scope: !653)
!655 = !DILocation(line: 774, column: 31, scope: !653)
!656 = !DILocation(line: 774, column: 34, scope: !653)
!657 = !DILocation(line: 774, column: 45, scope: !653)
!658 = !DILocation(line: 774, column: 29, scope: !653)
!659 = !DILocation(line: 775, column: 13, scope: !653)
!660 = !DILocation(line: 777, column: 10, scope: !597)
!661 = !DILocation(line: 777, column: 13, scope: !597)
!662 = !DILocation(line: 777, column: 27, scope: !597)
!663 = !DILocation(line: 778, column: 28, scope: !597)
!664 = !DILocation(line: 778, column: 31, scope: !597)
!665 = !DILocation(line: 778, column: 10, scope: !597)
!666 = !DILocation(line: 778, column: 13, scope: !597)
!667 = !DILocation(line: 778, column: 26, scope: !597)
!668 = !DILocation(line: 779, column: 10, scope: !597)
!669 = !DILocation(line: 779, column: 28, scope: !670)
!670 = distinct !DILexicalBlock(scope: !597, file: !2, line: 779, column: 28)
!671 = !DILocation(line: 779, column: 28, scope: !672)
!672 = distinct !DILexicalBlock(scope: !670, file: !2, line: 779, column: 28)
!673 = !DILocation(line: 779, column: 28, scope: !674)
!674 = distinct !DILexicalBlock(scope: !672, file: !2, line: 779, column: 28)
!675 = !DILocation(line: 779, column: 28, scope: !597)
!676 = !DILocation(line: 780, column: 16, scope: !597)
!677 = !DILocation(line: 780, column: 13, scope: !597)
!678 = !DILocation(line: 780, column: 30, scope: !597)
!679 = !DILocation(line: 780, column: 33, scope: !597)
!680 = !DILocation(line: 780, column: 44, scope: !597)
!681 = !DILocation(line: 781, column: 14, scope: !682)
!682 = distinct !DILexicalBlock(scope: !597, file: !2, line: 781, column: 14)
!683 = !DILocation(line: 781, column: 17, scope: !682)
!684 = !DILocation(line: 781, column: 32, scope: !682)
!685 = !DILocation(line: 781, column: 35, scope: !682)
!686 = !DILocation(line: 781, column: 46, scope: !682)
!687 = !DILocation(line: 781, column: 29, scope: !682)
!688 = !DILocation(line: 781, column: 50, scope: !682)
!689 = distinct !{!689, !594, !690}
!690 = !DILocation(line: 801, column: 7, scope: !595)
!691 = !DILocation(line: 782, column: 14, scope: !692)
!692 = distinct !DILexicalBlock(scope: !597, file: !2, line: 782, column: 14)
!693 = !DILocation(line: 782, column: 20, scope: !692)
!694 = !DILocation(line: 782, column: 23, scope: !692)
!695 = !DILocation(line: 782, column: 17, scope: !692)
!696 = !DILocation(line: 782, column: 37, scope: !697)
!697 = distinct !DILexicalBlock(scope: !692, file: !2, line: 782, column: 27)
!698 = !DILocation(line: 782, column: 29, scope: !697)
!699 = !DILocation(line: 782, column: 32, scope: !697)
!700 = !DILocation(line: 782, column: 35, scope: !697)
!701 = !DILocation(line: 782, column: 41, scope: !697)
!702 = !DILocation(line: 784, column: 10, scope: !597)
!703 = !DILocation(line: 784, column: 13, scope: !597)
!704 = !DILocation(line: 784, column: 27, scope: !597)
!705 = !DILocation(line: 785, column: 10, scope: !597)
!706 = !DILocation(line: 785, column: 28, scope: !707)
!707 = distinct !DILexicalBlock(scope: !597, file: !2, line: 785, column: 28)
!708 = !DILocation(line: 785, column: 28, scope: !709)
!709 = distinct !DILexicalBlock(scope: !707, file: !2, line: 785, column: 28)
!710 = !DILocation(line: 785, column: 28, scope: !711)
!711 = distinct !DILexicalBlock(scope: !709, file: !2, line: 785, column: 28)
!712 = !DILocation(line: 785, column: 28, scope: !597)
!713 = !DILocation(line: 786, column: 16, scope: !597)
!714 = !DILocation(line: 786, column: 13, scope: !597)
!715 = !DILocation(line: 786, column: 30, scope: !597)
!716 = !DILocation(line: 786, column: 33, scope: !597)
!717 = !DILocation(line: 786, column: 44, scope: !597)
!718 = !DILocation(line: 787, column: 14, scope: !719)
!719 = distinct !DILexicalBlock(scope: !597, file: !2, line: 787, column: 14)
!720 = !DILocation(line: 787, column: 17, scope: !719)
!721 = !DILocation(line: 787, column: 32, scope: !719)
!722 = !DILocation(line: 787, column: 35, scope: !719)
!723 = !DILocation(line: 787, column: 46, scope: !719)
!724 = !DILocation(line: 787, column: 29, scope: !719)
!725 = !DILocation(line: 787, column: 50, scope: !719)
!726 = !DILocation(line: 788, column: 14, scope: !727)
!727 = distinct !DILexicalBlock(scope: !597, file: !2, line: 788, column: 14)
!728 = !DILocation(line: 788, column: 20, scope: !727)
!729 = !DILocation(line: 788, column: 23, scope: !727)
!730 = !DILocation(line: 788, column: 17, scope: !727)
!731 = !DILocation(line: 788, column: 37, scope: !732)
!732 = distinct !DILexicalBlock(scope: !727, file: !2, line: 788, column: 27)
!733 = !DILocation(line: 788, column: 29, scope: !732)
!734 = !DILocation(line: 788, column: 32, scope: !732)
!735 = !DILocation(line: 788, column: 35, scope: !732)
!736 = !DILocation(line: 788, column: 41, scope: !732)
!737 = !DILocation(line: 790, column: 10, scope: !597)
!738 = !DILocation(line: 790, column: 13, scope: !597)
!739 = !DILocation(line: 790, column: 27, scope: !597)
!740 = !DILocation(line: 791, column: 10, scope: !597)
!741 = !DILocation(line: 791, column: 28, scope: !742)
!742 = distinct !DILexicalBlock(scope: !597, file: !2, line: 791, column: 28)
!743 = !DILocation(line: 791, column: 28, scope: !744)
!744 = distinct !DILexicalBlock(scope: !742, file: !2, line: 791, column: 28)
!745 = !DILocation(line: 791, column: 28, scope: !746)
!746 = distinct !DILexicalBlock(scope: !744, file: !2, line: 791, column: 28)
!747 = !DILocation(line: 791, column: 28, scope: !597)
!748 = !DILocation(line: 792, column: 16, scope: !597)
!749 = !DILocation(line: 792, column: 13, scope: !597)
!750 = !DILocation(line: 792, column: 30, scope: !597)
!751 = !DILocation(line: 792, column: 33, scope: !597)
!752 = !DILocation(line: 792, column: 44, scope: !597)
!753 = !DILocation(line: 793, column: 14, scope: !754)
!754 = distinct !DILexicalBlock(scope: !597, file: !2, line: 793, column: 14)
!755 = !DILocation(line: 793, column: 17, scope: !754)
!756 = !DILocation(line: 793, column: 32, scope: !754)
!757 = !DILocation(line: 793, column: 35, scope: !754)
!758 = !DILocation(line: 793, column: 46, scope: !754)
!759 = !DILocation(line: 793, column: 29, scope: !754)
!760 = !DILocation(line: 793, column: 50, scope: !754)
!761 = !DILocation(line: 794, column: 14, scope: !762)
!762 = distinct !DILexicalBlock(scope: !597, file: !2, line: 794, column: 14)
!763 = !DILocation(line: 794, column: 20, scope: !762)
!764 = !DILocation(line: 794, column: 23, scope: !762)
!765 = !DILocation(line: 794, column: 17, scope: !762)
!766 = !DILocation(line: 794, column: 37, scope: !767)
!767 = distinct !DILexicalBlock(scope: !762, file: !2, line: 794, column: 27)
!768 = !DILocation(line: 794, column: 29, scope: !767)
!769 = !DILocation(line: 794, column: 32, scope: !767)
!770 = !DILocation(line: 794, column: 35, scope: !767)
!771 = !DILocation(line: 794, column: 41, scope: !767)
!772 = !DILocation(line: 796, column: 10, scope: !597)
!773 = !DILocation(line: 796, column: 28, scope: !774)
!774 = distinct !DILexicalBlock(scope: !597, file: !2, line: 796, column: 28)
!775 = !DILocation(line: 796, column: 28, scope: !776)
!776 = distinct !DILexicalBlock(scope: !774, file: !2, line: 796, column: 28)
!777 = !DILocation(line: 796, column: 28, scope: !778)
!778 = distinct !DILexicalBlock(scope: !776, file: !2, line: 796, column: 28)
!779 = !DILocation(line: 796, column: 28, scope: !597)
!780 = !DILocation(line: 797, column: 16, scope: !597)
!781 = !DILocation(line: 797, column: 13, scope: !597)
!782 = !DILocation(line: 797, column: 30, scope: !597)
!783 = !DILocation(line: 797, column: 33, scope: !597)
!784 = !DILocation(line: 797, column: 44, scope: !597)
!785 = !DILocation(line: 798, column: 37, scope: !597)
!786 = !DILocation(line: 798, column: 30, scope: !597)
!787 = !DILocation(line: 798, column: 41, scope: !597)
!788 = !DILocation(line: 798, column: 10, scope: !597)
!789 = !DILocation(line: 798, column: 13, scope: !597)
!790 = !DILocation(line: 798, column: 27, scope: !597)
!791 = !DILocation(line: 799, column: 10, scope: !597)
!792 = !DILocation(line: 799, column: 31, scope: !793)
!793 = distinct !DILexicalBlock(scope: !597, file: !2, line: 799, column: 31)
!794 = !DILocation(line: 799, column: 31, scope: !795)
!795 = distinct !DILexicalBlock(scope: !793, file: !2, line: 799, column: 31)
!796 = !DILocation(line: 799, column: 31, scope: !797)
!797 = distinct !DILexicalBlock(scope: !795, file: !2, line: 799, column: 31)
!798 = !DILocation(line: 799, column: 31, scope: !597)
!799 = !DILocation(line: 800, column: 19, scope: !597)
!800 = !DILocation(line: 800, column: 10, scope: !597)
!801 = !DILocation(line: 800, column: 13, scope: !597)
!802 = !DILocation(line: 800, column: 16, scope: !597)
!803 = !DILocation(line: 800, column: 33, scope: !597)
!804 = !DILocation(line: 800, column: 36, scope: !597)
!805 = !DILocation(line: 800, column: 47, scope: !597)
!806 = !DILocation(line: 805, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !592, file: !2, line: 803, column: 11)
!808 = !DILocation(line: 807, column: 10, scope: !809)
!809 = distinct !DILexicalBlock(scope: !807, file: !2, line: 805, column: 20)
!810 = !DILocation(line: 808, column: 17, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !2, line: 808, column: 17)
!812 = distinct !DILexicalBlock(scope: !809, file: !2, line: 807, column: 23)
!813 = !DILocation(line: 808, column: 20, scope: !811)
!814 = !DILocation(line: 808, column: 26, scope: !811)
!815 = !DILocation(line: 808, column: 36, scope: !811)
!816 = !DILocation(line: 808, column: 42, scope: !811)
!817 = !DILocation(line: 809, column: 17, scope: !818)
!818 = distinct !DILexicalBlock(scope: !812, file: !2, line: 809, column: 17)
!819 = !DILocation(line: 809, column: 20, scope: !818)
!820 = !DILocation(line: 809, column: 34, scope: !818)
!821 = !DILocation(line: 809, column: 40, scope: !818)
!822 = !DILocation(line: 810, column: 48, scope: !812)
!823 = !DILocation(line: 810, column: 51, scope: !812)
!824 = !DILocation(line: 810, column: 25, scope: !812)
!825 = !DILocation(line: 810, column: 28, scope: !812)
!826 = !DILocation(line: 810, column: 34, scope: !812)
!827 = !DILocation(line: 810, column: 46, scope: !812)
!828 = !DILocation(line: 811, column: 13, scope: !829)
!829 = distinct !DILexicalBlock(scope: !812, file: !2, line: 811, column: 13)
!830 = !DILocation(line: 812, column: 13, scope: !812)
!831 = !DILocation(line: 812, column: 16, scope: !812)
!832 = !DILocation(line: 812, column: 29, scope: !812)
!833 = !DILocation(line: 813, column: 13, scope: !812)
!834 = !DILocation(line: 813, column: 16, scope: !812)
!835 = !DILocation(line: 813, column: 22, scope: !812)
!836 = !DILocation(line: 813, column: 30, scope: !812)
!837 = !DILocation(line: 814, column: 13, scope: !812)
!838 = !DILocation(line: 814, column: 16, scope: !812)
!839 = !DILocation(line: 814, column: 22, scope: !812)
!840 = !DILocation(line: 814, column: 31, scope: !812)
!841 = !DILocation(line: 815, column: 13, scope: !812)
!842 = !DILocation(line: 815, column: 16, scope: !812)
!843 = !DILocation(line: 815, column: 22, scope: !812)
!844 = !DILocation(line: 815, column: 36, scope: !812)
!845 = !DILocation(line: 816, column: 17, scope: !846)
!846 = distinct !DILexicalBlock(scope: !812, file: !2, line: 816, column: 17)
!847 = !DILocation(line: 816, column: 20, scope: !846)
!848 = !DILocation(line: 816, column: 26, scope: !846)
!849 = !DILocation(line: 816, column: 41, scope: !846)
!850 = !DILocation(line: 816, column: 47, scope: !846)
!851 = !DILocation(line: 816, column: 50, scope: !846)
!852 = !DILocation(line: 816, column: 56, scope: !846)
!853 = !DILocation(line: 816, column: 70, scope: !846)
!854 = distinct !{!854, !808, !855}
!855 = !DILocation(line: 817, column: 10, scope: !809)
!856 = !DILocation(line: 820, column: 14, scope: !857)
!857 = distinct !DILexicalBlock(scope: !809, file: !2, line: 820, column: 14)
!858 = !DILocation(line: 820, column: 17, scope: !857)
!859 = !DILocation(line: 820, column: 32, scope: !857)
!860 = !DILocation(line: 820, column: 35, scope: !857)
!861 = !DILocation(line: 820, column: 46, scope: !857)
!862 = !DILocation(line: 820, column: 29, scope: !857)
!863 = !DILocation(line: 820, column: 50, scope: !857)
!864 = !DILocation(line: 823, column: 14, scope: !865)
!865 = distinct !DILexicalBlock(scope: !809, file: !2, line: 823, column: 14)
!866 = !DILocation(line: 823, column: 17, scope: !865)
!867 = !DILocation(line: 823, column: 31, scope: !865)
!868 = !DILocation(line: 823, column: 34, scope: !865)
!869 = !DILocation(line: 823, column: 45, scope: !865)
!870 = !DILocation(line: 823, column: 29, scope: !865)
!871 = !DILocation(line: 824, column: 13, scope: !865)
!872 = !DILocation(line: 826, column: 10, scope: !809)
!873 = !DILocation(line: 826, column: 13, scope: !809)
!874 = !DILocation(line: 826, column: 27, scope: !809)
!875 = !DILocation(line: 827, column: 28, scope: !809)
!876 = !DILocation(line: 827, column: 31, scope: !809)
!877 = !DILocation(line: 827, column: 10, scope: !809)
!878 = !DILocation(line: 827, column: 13, scope: !809)
!879 = !DILocation(line: 827, column: 26, scope: !809)
!880 = !DILocation(line: 828, column: 10, scope: !809)
!881 = !DILocation(line: 828, column: 28, scope: !809)
!882 = !DILocation(line: 828, column: 31, scope: !809)
!883 = !DILocation(line: 828, column: 42, scope: !809)
!884 = !DILocation(line: 829, column: 14, scope: !885)
!885 = distinct !DILexicalBlock(scope: !809, file: !2, line: 829, column: 14)
!886 = !DILocation(line: 829, column: 17, scope: !885)
!887 = !DILocation(line: 829, column: 32, scope: !885)
!888 = !DILocation(line: 829, column: 35, scope: !885)
!889 = !DILocation(line: 829, column: 46, scope: !885)
!890 = !DILocation(line: 829, column: 29, scope: !885)
!891 = !DILocation(line: 829, column: 50, scope: !885)
!892 = distinct !{!892, !806, !893}
!893 = !DILocation(line: 845, column: 7, scope: !807)
!894 = !DILocation(line: 830, column: 14, scope: !895)
!895 = distinct !DILexicalBlock(scope: !809, file: !2, line: 830, column: 14)
!896 = !DILocation(line: 830, column: 20, scope: !895)
!897 = !DILocation(line: 830, column: 23, scope: !895)
!898 = !DILocation(line: 830, column: 17, scope: !895)
!899 = !DILocation(line: 830, column: 37, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !2, line: 830, column: 27)
!901 = !DILocation(line: 830, column: 29, scope: !900)
!902 = !DILocation(line: 830, column: 32, scope: !900)
!903 = !DILocation(line: 830, column: 35, scope: !900)
!904 = !DILocation(line: 830, column: 41, scope: !900)
!905 = !DILocation(line: 832, column: 10, scope: !809)
!906 = !DILocation(line: 832, column: 13, scope: !809)
!907 = !DILocation(line: 832, column: 27, scope: !809)
!908 = !DILocation(line: 833, column: 10, scope: !809)
!909 = !DILocation(line: 833, column: 28, scope: !809)
!910 = !DILocation(line: 833, column: 31, scope: !809)
!911 = !DILocation(line: 833, column: 42, scope: !809)
!912 = !DILocation(line: 834, column: 14, scope: !913)
!913 = distinct !DILexicalBlock(scope: !809, file: !2, line: 834, column: 14)
!914 = !DILocation(line: 834, column: 17, scope: !913)
!915 = !DILocation(line: 834, column: 32, scope: !913)
!916 = !DILocation(line: 834, column: 35, scope: !913)
!917 = !DILocation(line: 834, column: 46, scope: !913)
!918 = !DILocation(line: 834, column: 29, scope: !913)
!919 = !DILocation(line: 834, column: 50, scope: !913)
!920 = !DILocation(line: 835, column: 14, scope: !921)
!921 = distinct !DILexicalBlock(scope: !809, file: !2, line: 835, column: 14)
!922 = !DILocation(line: 835, column: 20, scope: !921)
!923 = !DILocation(line: 835, column: 23, scope: !921)
!924 = !DILocation(line: 835, column: 17, scope: !921)
!925 = !DILocation(line: 835, column: 37, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !2, line: 835, column: 27)
!927 = !DILocation(line: 835, column: 29, scope: !926)
!928 = !DILocation(line: 835, column: 32, scope: !926)
!929 = !DILocation(line: 835, column: 35, scope: !926)
!930 = !DILocation(line: 835, column: 41, scope: !926)
!931 = !DILocation(line: 837, column: 10, scope: !809)
!932 = !DILocation(line: 837, column: 13, scope: !809)
!933 = !DILocation(line: 837, column: 27, scope: !809)
!934 = !DILocation(line: 838, column: 10, scope: !809)
!935 = !DILocation(line: 838, column: 28, scope: !809)
!936 = !DILocation(line: 838, column: 31, scope: !809)
!937 = !DILocation(line: 838, column: 42, scope: !809)
!938 = !DILocation(line: 839, column: 14, scope: !939)
!939 = distinct !DILexicalBlock(scope: !809, file: !2, line: 839, column: 14)
!940 = !DILocation(line: 839, column: 17, scope: !939)
!941 = !DILocation(line: 839, column: 32, scope: !939)
!942 = !DILocation(line: 839, column: 35, scope: !939)
!943 = !DILocation(line: 839, column: 46, scope: !939)
!944 = !DILocation(line: 839, column: 29, scope: !939)
!945 = !DILocation(line: 839, column: 50, scope: !939)
!946 = !DILocation(line: 840, column: 14, scope: !947)
!947 = distinct !DILexicalBlock(scope: !809, file: !2, line: 840, column: 14)
!948 = !DILocation(line: 840, column: 20, scope: !947)
!949 = !DILocation(line: 840, column: 23, scope: !947)
!950 = !DILocation(line: 840, column: 17, scope: !947)
!951 = !DILocation(line: 840, column: 37, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !2, line: 840, column: 27)
!953 = !DILocation(line: 840, column: 29, scope: !952)
!954 = !DILocation(line: 840, column: 32, scope: !952)
!955 = !DILocation(line: 840, column: 35, scope: !952)
!956 = !DILocation(line: 840, column: 41, scope: !952)
!957 = !DILocation(line: 842, column: 10, scope: !809)
!958 = !DILocation(line: 842, column: 28, scope: !809)
!959 = !DILocation(line: 842, column: 31, scope: !809)
!960 = !DILocation(line: 842, column: 42, scope: !809)
!961 = !DILocation(line: 843, column: 37, scope: !809)
!962 = !DILocation(line: 843, column: 30, scope: !809)
!963 = !DILocation(line: 843, column: 41, scope: !809)
!964 = !DILocation(line: 843, column: 10, scope: !809)
!965 = !DILocation(line: 843, column: 13, scope: !809)
!966 = !DILocation(line: 843, column: 27, scope: !809)
!967 = !DILocation(line: 844, column: 10, scope: !809)
!968 = !DILocation(line: 844, column: 31, scope: !809)
!969 = !DILocation(line: 844, column: 34, scope: !809)
!970 = !DILocation(line: 844, column: 45, scope: !809)
!971 = !DILocation(line: 848, column: 1, scope: !504)
!972 = distinct !DISubprogram(name: "unRLE_obuf_to_output_FAST", scope: !2, file: !2, line: 581, type: !505, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!973 = !DILocalVariable(name: "s", arg: 1, scope: !972, file: !2, line: 581, type: !507)
!974 = !DILocation(line: 581, column: 42, scope: !972)
!975 = !DILocalVariable(name: "k1", scope: !972, file: !2, line: 583, type: !55)
!976 = !DILocation(line: 583, column: 10, scope: !972)
!977 = !DILocation(line: 585, column: 8, scope: !978)
!978 = distinct !DILexicalBlock(scope: !972, file: !2, line: 585, column: 8)
!979 = !DILocation(line: 585, column: 11, scope: !978)
!980 = !DILocation(line: 587, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !2, line: 585, column: 28)
!982 = !DILocation(line: 589, column: 10, scope: !983)
!983 = distinct !DILexicalBlock(scope: !981, file: !2, line: 587, column: 20)
!984 = !DILocation(line: 590, column: 17, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !2, line: 590, column: 17)
!986 = distinct !DILexicalBlock(scope: !983, file: !2, line: 589, column: 23)
!987 = !DILocation(line: 590, column: 20, scope: !985)
!988 = !DILocation(line: 590, column: 26, scope: !985)
!989 = !DILocation(line: 590, column: 36, scope: !985)
!990 = !DILocation(line: 590, column: 42, scope: !985)
!991 = !DILocation(line: 591, column: 17, scope: !992)
!992 = distinct !DILexicalBlock(scope: !986, file: !2, line: 591, column: 17)
!993 = !DILocation(line: 591, column: 20, scope: !992)
!994 = !DILocation(line: 591, column: 34, scope: !992)
!995 = !DILocation(line: 591, column: 40, scope: !992)
!996 = !DILocation(line: 592, column: 48, scope: !986)
!997 = !DILocation(line: 592, column: 51, scope: !986)
!998 = !DILocation(line: 592, column: 25, scope: !986)
!999 = !DILocation(line: 592, column: 28, scope: !986)
!1000 = !DILocation(line: 592, column: 34, scope: !986)
!1001 = !DILocation(line: 592, column: 46, scope: !986)
!1002 = !DILocation(line: 593, column: 13, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !986, file: !2, line: 593, column: 13)
!1004 = !DILocation(line: 594, column: 13, scope: !986)
!1005 = !DILocation(line: 594, column: 16, scope: !986)
!1006 = !DILocation(line: 594, column: 29, scope: !986)
!1007 = !DILocation(line: 595, column: 13, scope: !986)
!1008 = !DILocation(line: 595, column: 16, scope: !986)
!1009 = !DILocation(line: 595, column: 22, scope: !986)
!1010 = !DILocation(line: 595, column: 30, scope: !986)
!1011 = !DILocation(line: 596, column: 13, scope: !986)
!1012 = !DILocation(line: 596, column: 16, scope: !986)
!1013 = !DILocation(line: 596, column: 22, scope: !986)
!1014 = !DILocation(line: 596, column: 31, scope: !986)
!1015 = !DILocation(line: 597, column: 13, scope: !986)
!1016 = !DILocation(line: 597, column: 16, scope: !986)
!1017 = !DILocation(line: 597, column: 22, scope: !986)
!1018 = !DILocation(line: 597, column: 36, scope: !986)
!1019 = !DILocation(line: 598, column: 17, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !986, file: !2, line: 598, column: 17)
!1021 = !DILocation(line: 598, column: 20, scope: !1020)
!1022 = !DILocation(line: 598, column: 26, scope: !1020)
!1023 = !DILocation(line: 598, column: 41, scope: !1020)
!1024 = !DILocation(line: 598, column: 47, scope: !1020)
!1025 = !DILocation(line: 598, column: 50, scope: !1020)
!1026 = !DILocation(line: 598, column: 56, scope: !1020)
!1027 = !DILocation(line: 598, column: 70, scope: !1020)
!1028 = distinct !{!1028, !982, !1029}
!1029 = !DILocation(line: 599, column: 10, scope: !983)
!1030 = !DILocation(line: 602, column: 14, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !983, file: !2, line: 602, column: 14)
!1032 = !DILocation(line: 602, column: 17, scope: !1031)
!1033 = !DILocation(line: 602, column: 32, scope: !1031)
!1034 = !DILocation(line: 602, column: 35, scope: !1031)
!1035 = !DILocation(line: 602, column: 46, scope: !1031)
!1036 = !DILocation(line: 602, column: 29, scope: !1031)
!1037 = !DILocation(line: 602, column: 50, scope: !1031)
!1038 = !DILocation(line: 605, column: 14, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !983, file: !2, line: 605, column: 14)
!1040 = !DILocation(line: 605, column: 17, scope: !1039)
!1041 = !DILocation(line: 605, column: 31, scope: !1039)
!1042 = !DILocation(line: 605, column: 34, scope: !1039)
!1043 = !DILocation(line: 605, column: 45, scope: !1039)
!1044 = !DILocation(line: 605, column: 29, scope: !1039)
!1045 = !DILocation(line: 606, column: 13, scope: !1039)
!1046 = !DILocation(line: 608, column: 10, scope: !983)
!1047 = !DILocation(line: 608, column: 13, scope: !983)
!1048 = !DILocation(line: 608, column: 27, scope: !983)
!1049 = !DILocation(line: 609, column: 28, scope: !983)
!1050 = !DILocation(line: 609, column: 31, scope: !983)
!1051 = !DILocation(line: 609, column: 10, scope: !983)
!1052 = !DILocation(line: 609, column: 13, scope: !983)
!1053 = !DILocation(line: 609, column: 26, scope: !983)
!1054 = !DILocation(line: 610, column: 10, scope: !983)
!1055 = !DILocation(line: 610, column: 27, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !983, file: !2, line: 610, column: 27)
!1057 = !DILocation(line: 610, column: 27, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 610, column: 27)
!1059 = !DILocation(line: 610, column: 27, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 610, column: 27)
!1061 = !DILocation(line: 610, column: 27, scope: !983)
!1062 = !DILocation(line: 611, column: 16, scope: !983)
!1063 = !DILocation(line: 611, column: 13, scope: !983)
!1064 = !DILocation(line: 611, column: 30, scope: !983)
!1065 = !DILocation(line: 611, column: 33, scope: !983)
!1066 = !DILocation(line: 611, column: 44, scope: !983)
!1067 = !DILocation(line: 612, column: 14, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !983, file: !2, line: 612, column: 14)
!1069 = !DILocation(line: 612, column: 17, scope: !1068)
!1070 = !DILocation(line: 612, column: 32, scope: !1068)
!1071 = !DILocation(line: 612, column: 35, scope: !1068)
!1072 = !DILocation(line: 612, column: 46, scope: !1068)
!1073 = !DILocation(line: 612, column: 29, scope: !1068)
!1074 = !DILocation(line: 612, column: 50, scope: !1068)
!1075 = distinct !{!1075, !980, !1076}
!1076 = !DILocation(line: 632, column: 7, scope: !981)
!1077 = !DILocation(line: 613, column: 14, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !983, file: !2, line: 613, column: 14)
!1079 = !DILocation(line: 613, column: 20, scope: !1078)
!1080 = !DILocation(line: 613, column: 23, scope: !1078)
!1081 = !DILocation(line: 613, column: 17, scope: !1078)
!1082 = !DILocation(line: 613, column: 37, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 613, column: 27)
!1084 = !DILocation(line: 613, column: 29, scope: !1083)
!1085 = !DILocation(line: 613, column: 32, scope: !1083)
!1086 = !DILocation(line: 613, column: 35, scope: !1083)
!1087 = !DILocation(line: 613, column: 41, scope: !1083)
!1088 = !DILocation(line: 615, column: 10, scope: !983)
!1089 = !DILocation(line: 615, column: 13, scope: !983)
!1090 = !DILocation(line: 615, column: 27, scope: !983)
!1091 = !DILocation(line: 616, column: 10, scope: !983)
!1092 = !DILocation(line: 616, column: 27, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !983, file: !2, line: 616, column: 27)
!1094 = !DILocation(line: 616, column: 27, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 616, column: 27)
!1096 = !DILocation(line: 616, column: 27, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 616, column: 27)
!1098 = !DILocation(line: 616, column: 27, scope: !983)
!1099 = !DILocation(line: 617, column: 16, scope: !983)
!1100 = !DILocation(line: 617, column: 13, scope: !983)
!1101 = !DILocation(line: 617, column: 30, scope: !983)
!1102 = !DILocation(line: 617, column: 33, scope: !983)
!1103 = !DILocation(line: 617, column: 44, scope: !983)
!1104 = !DILocation(line: 618, column: 14, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !983, file: !2, line: 618, column: 14)
!1106 = !DILocation(line: 618, column: 17, scope: !1105)
!1107 = !DILocation(line: 618, column: 32, scope: !1105)
!1108 = !DILocation(line: 618, column: 35, scope: !1105)
!1109 = !DILocation(line: 618, column: 46, scope: !1105)
!1110 = !DILocation(line: 618, column: 29, scope: !1105)
!1111 = !DILocation(line: 618, column: 50, scope: !1105)
!1112 = !DILocation(line: 619, column: 14, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !983, file: !2, line: 619, column: 14)
!1114 = !DILocation(line: 619, column: 20, scope: !1113)
!1115 = !DILocation(line: 619, column: 23, scope: !1113)
!1116 = !DILocation(line: 619, column: 17, scope: !1113)
!1117 = !DILocation(line: 619, column: 37, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 619, column: 27)
!1119 = !DILocation(line: 619, column: 29, scope: !1118)
!1120 = !DILocation(line: 619, column: 32, scope: !1118)
!1121 = !DILocation(line: 619, column: 35, scope: !1118)
!1122 = !DILocation(line: 619, column: 41, scope: !1118)
!1123 = !DILocation(line: 621, column: 10, scope: !983)
!1124 = !DILocation(line: 621, column: 13, scope: !983)
!1125 = !DILocation(line: 621, column: 27, scope: !983)
!1126 = !DILocation(line: 622, column: 10, scope: !983)
!1127 = !DILocation(line: 622, column: 27, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !983, file: !2, line: 622, column: 27)
!1129 = !DILocation(line: 622, column: 27, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 622, column: 27)
!1131 = !DILocation(line: 622, column: 27, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 622, column: 27)
!1133 = !DILocation(line: 622, column: 27, scope: !983)
!1134 = !DILocation(line: 623, column: 16, scope: !983)
!1135 = !DILocation(line: 623, column: 13, scope: !983)
!1136 = !DILocation(line: 623, column: 30, scope: !983)
!1137 = !DILocation(line: 623, column: 33, scope: !983)
!1138 = !DILocation(line: 623, column: 44, scope: !983)
!1139 = !DILocation(line: 624, column: 14, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !983, file: !2, line: 624, column: 14)
!1141 = !DILocation(line: 624, column: 17, scope: !1140)
!1142 = !DILocation(line: 624, column: 32, scope: !1140)
!1143 = !DILocation(line: 624, column: 35, scope: !1140)
!1144 = !DILocation(line: 624, column: 46, scope: !1140)
!1145 = !DILocation(line: 624, column: 29, scope: !1140)
!1146 = !DILocation(line: 624, column: 50, scope: !1140)
!1147 = !DILocation(line: 625, column: 14, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !983, file: !2, line: 625, column: 14)
!1149 = !DILocation(line: 625, column: 20, scope: !1148)
!1150 = !DILocation(line: 625, column: 23, scope: !1148)
!1151 = !DILocation(line: 625, column: 17, scope: !1148)
!1152 = !DILocation(line: 625, column: 37, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 625, column: 27)
!1154 = !DILocation(line: 625, column: 29, scope: !1153)
!1155 = !DILocation(line: 625, column: 32, scope: !1153)
!1156 = !DILocation(line: 625, column: 35, scope: !1153)
!1157 = !DILocation(line: 625, column: 41, scope: !1153)
!1158 = !DILocation(line: 627, column: 10, scope: !983)
!1159 = !DILocation(line: 627, column: 27, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !983, file: !2, line: 627, column: 27)
!1161 = !DILocation(line: 627, column: 27, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 627, column: 27)
!1163 = !DILocation(line: 627, column: 27, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 627, column: 27)
!1165 = !DILocation(line: 627, column: 27, scope: !983)
!1166 = !DILocation(line: 628, column: 16, scope: !983)
!1167 = !DILocation(line: 628, column: 13, scope: !983)
!1168 = !DILocation(line: 628, column: 30, scope: !983)
!1169 = !DILocation(line: 628, column: 33, scope: !983)
!1170 = !DILocation(line: 628, column: 44, scope: !983)
!1171 = !DILocation(line: 629, column: 37, scope: !983)
!1172 = !DILocation(line: 629, column: 30, scope: !983)
!1173 = !DILocation(line: 629, column: 41, scope: !983)
!1174 = !DILocation(line: 629, column: 10, scope: !983)
!1175 = !DILocation(line: 629, column: 13, scope: !983)
!1176 = !DILocation(line: 629, column: 27, scope: !983)
!1177 = !DILocation(line: 630, column: 10, scope: !983)
!1178 = !DILocation(line: 630, column: 30, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !983, file: !2, line: 630, column: 30)
!1180 = !DILocation(line: 630, column: 30, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 630, column: 30)
!1182 = !DILocation(line: 630, column: 30, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 630, column: 30)
!1184 = !DILocation(line: 630, column: 30, scope: !983)
!1185 = !DILocation(line: 631, column: 19, scope: !983)
!1186 = !DILocation(line: 631, column: 10, scope: !983)
!1187 = !DILocation(line: 631, column: 13, scope: !983)
!1188 = !DILocation(line: 631, column: 16, scope: !983)
!1189 = !DILocation(line: 631, column: 33, scope: !983)
!1190 = !DILocation(line: 631, column: 36, scope: !983)
!1191 = !DILocation(line: 631, column: 47, scope: !983)
!1192 = !DILocalVariable(name: "c_calculatedBlockCRC", scope: !1193, file: !2, line: 637, type: !62)
!1193 = distinct !DILexicalBlock(scope: !978, file: !2, line: 634, column: 11)
!1194 = !DILocation(line: 637, column: 21, scope: !1193)
!1195 = !DILocation(line: 637, column: 44, scope: !1193)
!1196 = !DILocation(line: 637, column: 47, scope: !1193)
!1197 = !DILocalVariable(name: "c_state_out_ch", scope: !1193, file: !2, line: 638, type: !55)
!1198 = !DILocation(line: 638, column: 21, scope: !1193)
!1199 = !DILocation(line: 638, column: 44, scope: !1193)
!1200 = !DILocation(line: 638, column: 47, scope: !1193)
!1201 = !DILocalVariable(name: "c_state_out_len", scope: !1193, file: !2, line: 639, type: !135)
!1202 = !DILocation(line: 639, column: 21, scope: !1193)
!1203 = !DILocation(line: 639, column: 44, scope: !1193)
!1204 = !DILocation(line: 639, column: 47, scope: !1193)
!1205 = !DILocalVariable(name: "c_nblock_used", scope: !1193, file: !2, line: 640, type: !135)
!1206 = !DILocation(line: 640, column: 21, scope: !1193)
!1207 = !DILocation(line: 640, column: 44, scope: !1193)
!1208 = !DILocation(line: 640, column: 47, scope: !1193)
!1209 = !DILocalVariable(name: "c_k0", scope: !1193, file: !2, line: 641, type: !135)
!1210 = !DILocation(line: 641, column: 21, scope: !1193)
!1211 = !DILocation(line: 641, column: 44, scope: !1193)
!1212 = !DILocation(line: 641, column: 47, scope: !1193)
!1213 = !DILocalVariable(name: "c_tt", scope: !1193, file: !2, line: 642, type: !61)
!1214 = !DILocation(line: 642, column: 21, scope: !1193)
!1215 = !DILocation(line: 642, column: 44, scope: !1193)
!1216 = !DILocation(line: 642, column: 47, scope: !1193)
!1217 = !DILocalVariable(name: "c_tPos", scope: !1193, file: !2, line: 643, type: !62)
!1218 = !DILocation(line: 643, column: 21, scope: !1193)
!1219 = !DILocation(line: 643, column: 44, scope: !1193)
!1220 = !DILocation(line: 643, column: 47, scope: !1193)
!1221 = !DILocalVariable(name: "cs_next_out", scope: !1193, file: !2, line: 644, type: !78)
!1222 = !DILocation(line: 644, column: 21, scope: !1193)
!1223 = !DILocation(line: 644, column: 44, scope: !1193)
!1224 = !DILocation(line: 644, column: 47, scope: !1193)
!1225 = !DILocation(line: 644, column: 53, scope: !1193)
!1226 = !DILocalVariable(name: "cs_avail_out", scope: !1193, file: !2, line: 645, type: !38)
!1227 = !DILocation(line: 645, column: 21, scope: !1193)
!1228 = !DILocation(line: 645, column: 44, scope: !1193)
!1229 = !DILocation(line: 645, column: 47, scope: !1193)
!1230 = !DILocation(line: 645, column: 53, scope: !1193)
!1231 = !DILocalVariable(name: "avail_out_INIT", scope: !1193, file: !2, line: 648, type: !62)
!1232 = !DILocation(line: 648, column: 20, scope: !1193)
!1233 = !DILocation(line: 648, column: 37, scope: !1193)
!1234 = !DILocalVariable(name: "s_save_nblockPP", scope: !1193, file: !2, line: 649, type: !135)
!1235 = !DILocation(line: 649, column: 20, scope: !1193)
!1236 = !DILocation(line: 649, column: 38, scope: !1193)
!1237 = !DILocation(line: 649, column: 41, scope: !1193)
!1238 = !DILocation(line: 649, column: 52, scope: !1193)
!1239 = !DILocalVariable(name: "total_out_lo32_old", scope: !1193, file: !2, line: 650, type: !38)
!1240 = !DILocation(line: 650, column: 20, scope: !1193)
!1241 = !DILocation(line: 652, column: 7, scope: !1193)
!1242 = !DILocation(line: 655, column: 14, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 655, column: 14)
!1244 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 652, column: 20)
!1245 = !DILocation(line: 655, column: 30, scope: !1243)
!1246 = !DILocation(line: 656, column: 13, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 655, column: 35)
!1248 = !DILocation(line: 657, column: 20, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 657, column: 20)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 656, column: 26)
!1251 = !DILocation(line: 657, column: 33, scope: !1249)
!1252 = !DILocation(line: 657, column: 39, scope: !1249)
!1253 = !DILocation(line: 658, column: 20, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 658, column: 20)
!1255 = !DILocation(line: 658, column: 36, scope: !1254)
!1256 = !DILocation(line: 658, column: 42, scope: !1254)
!1257 = !DILocation(line: 659, column: 45, scope: !1250)
!1258 = !DILocation(line: 659, column: 28, scope: !1250)
!1259 = !DILocation(line: 659, column: 43, scope: !1250)
!1260 = !DILocation(line: 660, column: 16, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 660, column: 16)
!1262 = !DILocation(line: 661, column: 31, scope: !1250)
!1263 = !DILocation(line: 662, column: 27, scope: !1250)
!1264 = !DILocation(line: 663, column: 28, scope: !1250)
!1265 = distinct !{!1265, !1246, !1266}
!1266 = !DILocation(line: 664, column: 13, scope: !1247)
!1267 = !DILabel(scope: !1247, name: "s_state_out_len_eq_one", file: !2, line: 665, column: 13)
!1268 = !DILocation(line: 665, column: 13, scope: !1247)
!1269 = !DILocation(line: 667, column: 20, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 667, column: 20)
!1271 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 666, column: 13)
!1272 = !DILocation(line: 667, column: 33, scope: !1270)
!1273 = !DILocation(line: 668, column: 35, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 667, column: 39)
!1275 = !DILocation(line: 668, column: 40, scope: !1274)
!1276 = !DILocation(line: 670, column: 45, scope: !1271)
!1277 = !DILocation(line: 670, column: 28, scope: !1271)
!1278 = !DILocation(line: 670, column: 43, scope: !1271)
!1279 = !DILocation(line: 671, column: 16, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 671, column: 16)
!1281 = !DILocation(line: 672, column: 27, scope: !1271)
!1282 = !DILocation(line: 673, column: 28, scope: !1271)
!1283 = !DILocation(line: 675, column: 10, scope: !1247)
!1284 = !DILocation(line: 677, column: 14, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 677, column: 14)
!1286 = !DILocation(line: 677, column: 30, scope: !1285)
!1287 = !DILocation(line: 677, column: 28, scope: !1285)
!1288 = !DILocation(line: 678, column: 13, scope: !1285)
!1289 = !DILocation(line: 681, column: 14, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 681, column: 14)
!1291 = !DILocation(line: 681, column: 31, scope: !1290)
!1292 = !DILocation(line: 681, column: 28, scope: !1290)
!1293 = !DILocation(line: 682, column: 29, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 681, column: 48)
!1295 = !DILocation(line: 682, column: 34, scope: !1294)
!1296 = !DILocation(line: 684, column: 27, scope: !1244)
!1297 = !DILocation(line: 684, column: 25, scope: !1244)
!1298 = !DILocation(line: 685, column: 10, scope: !1244)
!1299 = !DILocation(line: 685, column: 42, scope: !1244)
!1300 = !DILocation(line: 686, column: 14, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 686, column: 14)
!1302 = !DILocation(line: 686, column: 20, scope: !1301)
!1303 = !DILocation(line: 686, column: 17, scope: !1301)
!1304 = !DILocation(line: 687, column: 20, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 686, column: 26)
!1306 = !DILocation(line: 687, column: 18, scope: !1305)
!1307 = !DILocation(line: 687, column: 24, scope: !1305)
!1308 = !DILocation(line: 689, column: 14, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 689, column: 14)
!1310 = !DILocation(line: 689, column: 31, scope: !1309)
!1311 = !DILocation(line: 689, column: 28, scope: !1309)
!1312 = !DILocation(line: 690, column: 13, scope: !1309)
!1313 = !DILocation(line: 692, column: 26, scope: !1244)
!1314 = !DILocation(line: 693, column: 10, scope: !1244)
!1315 = !DILocation(line: 693, column: 42, scope: !1244)
!1316 = !DILocation(line: 694, column: 14, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 694, column: 14)
!1318 = !DILocation(line: 694, column: 31, scope: !1317)
!1319 = !DILocation(line: 694, column: 28, scope: !1317)
!1320 = !DILocation(line: 694, column: 48, scope: !1317)
!1321 = distinct !{!1321, !1241, !1322}
!1322 = !DILocation(line: 705, column: 7, scope: !1193)
!1323 = !DILocation(line: 695, column: 14, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 695, column: 14)
!1325 = !DILocation(line: 695, column: 20, scope: !1324)
!1326 = !DILocation(line: 695, column: 17, scope: !1324)
!1327 = !DILocation(line: 695, column: 35, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 695, column: 26)
!1329 = !DILocation(line: 695, column: 33, scope: !1328)
!1330 = !DILocation(line: 695, column: 39, scope: !1328)
!1331 = !DILocation(line: 697, column: 26, scope: !1244)
!1332 = !DILocation(line: 698, column: 10, scope: !1244)
!1333 = !DILocation(line: 698, column: 42, scope: !1244)
!1334 = !DILocation(line: 699, column: 14, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 699, column: 14)
!1336 = !DILocation(line: 699, column: 31, scope: !1335)
!1337 = !DILocation(line: 699, column: 28, scope: !1335)
!1338 = !DILocation(line: 699, column: 48, scope: !1335)
!1339 = !DILocation(line: 700, column: 14, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 700, column: 14)
!1341 = !DILocation(line: 700, column: 20, scope: !1340)
!1342 = !DILocation(line: 700, column: 17, scope: !1340)
!1343 = !DILocation(line: 700, column: 35, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 700, column: 26)
!1345 = !DILocation(line: 700, column: 33, scope: !1344)
!1346 = !DILocation(line: 700, column: 39, scope: !1344)
!1347 = !DILocation(line: 702, column: 10, scope: !1244)
!1348 = !DILocation(line: 702, column: 42, scope: !1244)
!1349 = !DILocation(line: 703, column: 36, scope: !1244)
!1350 = !DILocation(line: 703, column: 29, scope: !1244)
!1351 = !DILocation(line: 703, column: 40, scope: !1244)
!1352 = !DILocation(line: 703, column: 26, scope: !1244)
!1353 = !DILocation(line: 704, column: 10, scope: !1244)
!1354 = !DILocation(line: 704, column: 44, scope: !1244)
!1355 = !DILabel(scope: !1193, name: "return_notr", file: !2, line: 707, column: 7)
!1356 = !DILocation(line: 707, column: 7, scope: !1193)
!1357 = !DILocation(line: 708, column: 28, scope: !1193)
!1358 = !DILocation(line: 708, column: 31, scope: !1193)
!1359 = !DILocation(line: 708, column: 37, scope: !1193)
!1360 = !DILocation(line: 708, column: 26, scope: !1193)
!1361 = !DILocation(line: 709, column: 35, scope: !1193)
!1362 = !DILocation(line: 709, column: 52, scope: !1193)
!1363 = !DILocation(line: 709, column: 50, scope: !1193)
!1364 = !DILocation(line: 709, column: 7, scope: !1193)
!1365 = !DILocation(line: 709, column: 10, scope: !1193)
!1366 = !DILocation(line: 709, column: 16, scope: !1193)
!1367 = !DILocation(line: 709, column: 31, scope: !1193)
!1368 = !DILocation(line: 710, column: 11, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 710, column: 11)
!1370 = !DILocation(line: 710, column: 14, scope: !1369)
!1371 = !DILocation(line: 710, column: 20, scope: !1369)
!1372 = !DILocation(line: 710, column: 37, scope: !1369)
!1373 = !DILocation(line: 710, column: 35, scope: !1369)
!1374 = !DILocation(line: 711, column: 10, scope: !1369)
!1375 = !DILocation(line: 711, column: 13, scope: !1369)
!1376 = !DILocation(line: 711, column: 19, scope: !1369)
!1377 = !DILocation(line: 711, column: 33, scope: !1369)
!1378 = !DILocation(line: 714, column: 31, scope: !1193)
!1379 = !DILocation(line: 714, column: 7, scope: !1193)
!1380 = !DILocation(line: 714, column: 10, scope: !1193)
!1381 = !DILocation(line: 714, column: 29, scope: !1193)
!1382 = !DILocation(line: 715, column: 31, scope: !1193)
!1383 = !DILocation(line: 715, column: 7, scope: !1193)
!1384 = !DILocation(line: 715, column: 10, scope: !1193)
!1385 = !DILocation(line: 715, column: 29, scope: !1193)
!1386 = !DILocation(line: 716, column: 31, scope: !1193)
!1387 = !DILocation(line: 716, column: 7, scope: !1193)
!1388 = !DILocation(line: 716, column: 10, scope: !1193)
!1389 = !DILocation(line: 716, column: 29, scope: !1193)
!1390 = !DILocation(line: 717, column: 31, scope: !1193)
!1391 = !DILocation(line: 717, column: 7, scope: !1193)
!1392 = !DILocation(line: 717, column: 10, scope: !1193)
!1393 = !DILocation(line: 717, column: 29, scope: !1193)
!1394 = !DILocation(line: 718, column: 31, scope: !1193)
!1395 = !DILocation(line: 718, column: 7, scope: !1193)
!1396 = !DILocation(line: 718, column: 10, scope: !1193)
!1397 = !DILocation(line: 718, column: 29, scope: !1193)
!1398 = !DILocation(line: 719, column: 31, scope: !1193)
!1399 = !DILocation(line: 719, column: 7, scope: !1193)
!1400 = !DILocation(line: 719, column: 10, scope: !1193)
!1401 = !DILocation(line: 719, column: 29, scope: !1193)
!1402 = !DILocation(line: 720, column: 31, scope: !1193)
!1403 = !DILocation(line: 720, column: 7, scope: !1193)
!1404 = !DILocation(line: 720, column: 10, scope: !1193)
!1405 = !DILocation(line: 720, column: 29, scope: !1193)
!1406 = !DILocation(line: 721, column: 31, scope: !1193)
!1407 = !DILocation(line: 721, column: 7, scope: !1193)
!1408 = !DILocation(line: 721, column: 10, scope: !1193)
!1409 = !DILocation(line: 721, column: 16, scope: !1193)
!1410 = !DILocation(line: 721, column: 29, scope: !1193)
!1411 = !DILocation(line: 722, column: 31, scope: !1193)
!1412 = !DILocation(line: 722, column: 7, scope: !1193)
!1413 = !DILocation(line: 722, column: 10, scope: !1193)
!1414 = !DILocation(line: 722, column: 16, scope: !1193)
!1415 = !DILocation(line: 722, column: 29, scope: !1193)
!1416 = !DILocation(line: 725, column: 4, scope: !972)
!1417 = !DILocation(line: 726, column: 1, scope: !972)
!1418 = distinct !DISubprogram(name: "myfeof_", scope: !2, file: !2, line: 950, type: !1419, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!63, !69}
!1421 = !DILocalVariable(name: "f", arg: 1, scope: !1418, file: !2, line: 950, type: !69)
!1422 = !DILocation(line: 950, column: 29, scope: !1418)
!1423 = !DILocalVariable(name: "c", scope: !1418, file: !2, line: 952, type: !135)
!1424 = !DILocation(line: 952, column: 10, scope: !1418)
!1425 = !DILocation(line: 952, column: 22, scope: !1418)
!1426 = !DILocation(line: 952, column: 14, scope: !1418)
!1427 = !DILocation(line: 953, column: 8, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 953, column: 8)
!1429 = !DILocation(line: 953, column: 10, scope: !1428)
!1430 = !DILocation(line: 953, column: 18, scope: !1428)
!1431 = !DILocation(line: 954, column: 13, scope: !1418)
!1432 = !DILocation(line: 954, column: 16, scope: !1418)
!1433 = !DILocation(line: 954, column: 4, scope: !1418)
!1434 = !DILocation(line: 955, column: 4, scope: !1418)
!1435 = !DILocation(line: 956, column: 1, scope: !1418)
!1436 = distinct !DISubprogram(name: "bzopen_or_bzdopen", scope: !2, file: !2, line: 1428, type: !1437, scopeLine: 1433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !1441, !76, !1441, !76}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "BZFILE", file: !139, line: 177, baseType: null)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1443 = !DILocalVariable(name: "path", arg: 1, scope: !1436, file: !2, line: 1429, type: !1441)
!1444 = !DILocation(line: 1429, column: 30, scope: !1436)
!1445 = !DILocalVariable(name: "fd", arg: 2, scope: !1436, file: !2, line: 1430, type: !76)
!1446 = !DILocation(line: 1430, column: 22, scope: !1436)
!1447 = !DILocalVariable(name: "mode", arg: 3, scope: !1436, file: !2, line: 1431, type: !1441)
!1448 = !DILocation(line: 1431, column: 30, scope: !1436)
!1449 = !DILocalVariable(name: "open_mode", arg: 4, scope: !1436, file: !2, line: 1432, type: !76)
!1450 = !DILocation(line: 1432, column: 22, scope: !1436)
!1451 = !DILocalVariable(name: "bzerr", scope: !1436, file: !2, line: 1434, type: !76)
!1452 = !DILocation(line: 1434, column: 11, scope: !1436)
!1453 = !DILocalVariable(name: "unused", scope: !1436, file: !2, line: 1435, type: !1454)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40000, elements: !132)
!1455 = !DILocation(line: 1435, column: 11, scope: !1436)
!1456 = !DILocalVariable(name: "blockSize100k", scope: !1436, file: !2, line: 1436, type: !76)
!1457 = !DILocation(line: 1436, column: 11, scope: !1436)
!1458 = !DILocalVariable(name: "writing", scope: !1436, file: !2, line: 1437, type: !76)
!1459 = !DILocation(line: 1437, column: 11, scope: !1436)
!1460 = !DILocalVariable(name: "mode2", scope: !1436, file: !2, line: 1438, type: !188)
!1461 = !DILocation(line: 1438, column: 11, scope: !1436)
!1462 = !DILocalVariable(name: "fp", scope: !1436, file: !2, line: 1439, type: !69)
!1463 = !DILocation(line: 1439, column: 12, scope: !1436)
!1464 = !DILocalVariable(name: "bzfp", scope: !1436, file: !2, line: 1440, type: !1439)
!1465 = !DILocation(line: 1440, column: 12, scope: !1436)
!1466 = !DILocalVariable(name: "verbosity", scope: !1436, file: !2, line: 1441, type: !76)
!1467 = !DILocation(line: 1441, column: 11, scope: !1436)
!1468 = !DILocalVariable(name: "workFactor", scope: !1436, file: !2, line: 1442, type: !76)
!1469 = !DILocation(line: 1442, column: 11, scope: !1436)
!1470 = !DILocalVariable(name: "smallMode", scope: !1436, file: !2, line: 1443, type: !76)
!1471 = !DILocation(line: 1443, column: 11, scope: !1436)
!1472 = !DILocalVariable(name: "nUnused", scope: !1436, file: !2, line: 1444, type: !76)
!1473 = !DILocation(line: 1444, column: 11, scope: !1436)
!1474 = !DILocation(line: 1446, column: 8, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 1446, column: 8)
!1476 = !DILocation(line: 1446, column: 13, scope: !1475)
!1477 = !DILocation(line: 1446, column: 22, scope: !1475)
!1478 = !DILocation(line: 1447, column: 4, scope: !1436)
!1479 = !DILocation(line: 1447, column: 12, scope: !1436)
!1480 = !DILocation(line: 1447, column: 11, scope: !1436)
!1481 = !DILocation(line: 1448, column: 16, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 1447, column: 18)
!1483 = !DILocation(line: 1448, column: 15, scope: !1482)
!1484 = !DILocation(line: 1448, column: 7, scope: !1482)
!1485 = !DILocation(line: 1450, column: 18, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 1448, column: 22)
!1487 = !DILocation(line: 1450, column: 23, scope: !1486)
!1488 = !DILocation(line: 1452, column: 18, scope: !1486)
!1489 = !DILocation(line: 1452, column: 23, scope: !1486)
!1490 = !DILocation(line: 1454, column: 20, scope: !1486)
!1491 = !DILocation(line: 1454, column: 25, scope: !1486)
!1492 = !DILocation(line: 1456, column: 14, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 1456, column: 14)
!1494 = !DILocation(line: 1457, column: 30, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 1456, column: 37)
!1496 = !DILocation(line: 1457, column: 29, scope: !1495)
!1497 = !DILocation(line: 1457, column: 34, scope: !1495)
!1498 = !DILocation(line: 1457, column: 27, scope: !1495)
!1499 = !DILocation(line: 1458, column: 10, scope: !1495)
!1500 = !DILocation(line: 1459, column: 7, scope: !1486)
!1501 = !DILocation(line: 1460, column: 11, scope: !1482)
!1502 = distinct !{!1502, !1478, !1503, !367}
!1503 = !DILocation(line: 1461, column: 4, scope: !1436)
!1504 = !DILocation(line: 1462, column: 11, scope: !1436)
!1505 = !DILocation(line: 1462, column: 18, scope: !1436)
!1506 = !DILocation(line: 1462, column: 4, scope: !1436)
!1507 = !DILocation(line: 1463, column: 11, scope: !1436)
!1508 = !DILocation(line: 1463, column: 4, scope: !1436)
!1509 = !DILocation(line: 1465, column: 8, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 1465, column: 8)
!1511 = !DILocation(line: 1465, column: 17, scope: !1510)
!1512 = !DILocation(line: 1466, column: 11, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 1466, column: 11)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 1465, column: 22)
!1515 = !DILocation(line: 1466, column: 15, scope: !1513)
!1516 = !DILocation(line: 1466, column: 22, scope: !1513)
!1517 = !DILocation(line: 1466, column: 32, scope: !1513)
!1518 = !DILocation(line: 1466, column: 25, scope: !1513)
!1519 = !DILocation(line: 1466, column: 40, scope: !1513)
!1520 = !DILocation(line: 1467, column: 15, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 1466, column: 45)
!1522 = !DILocation(line: 1467, column: 25, scope: !1521)
!1523 = !DILocation(line: 1467, column: 34, scope: !1521)
!1524 = !DILocation(line: 1467, column: 12, scope: !1521)
!1525 = !DILocation(line: 1469, column: 7, scope: !1521)
!1526 = !DILocation(line: 1470, column: 20, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 1469, column: 14)
!1528 = !DILocation(line: 1470, column: 25, scope: !1527)
!1529 = !DILocation(line: 1470, column: 14, scope: !1527)
!1530 = !DILocation(line: 1470, column: 12, scope: !1527)
!1531 = !DILocation(line: 1472, column: 4, scope: !1514)
!1532 = !DILocation(line: 1476, column: 19, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 1472, column: 11)
!1534 = !DILocation(line: 1476, column: 22, scope: !1533)
!1535 = !DILocation(line: 1476, column: 12, scope: !1533)
!1536 = !DILocation(line: 1476, column: 10, scope: !1533)
!1537 = !DILocation(line: 1479, column: 8, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 1479, column: 8)
!1539 = !DILocation(line: 1479, column: 11, scope: !1538)
!1540 = !DILocation(line: 1479, column: 20, scope: !1538)
!1541 = !DILocation(line: 1481, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 1481, column: 8)
!1543 = !DILocation(line: 1483, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 1483, column: 11)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 1481, column: 17)
!1546 = !DILocation(line: 1483, column: 25, scope: !1544)
!1547 = !DILocation(line: 1483, column: 44, scope: !1544)
!1548 = !DILocation(line: 1483, column: 30, scope: !1544)
!1549 = !DILocation(line: 1484, column: 11, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 1484, column: 11)
!1551 = !DILocation(line: 1484, column: 25, scope: !1550)
!1552 = !DILocation(line: 1484, column: 44, scope: !1550)
!1553 = !DILocation(line: 1484, column: 30, scope: !1550)
!1554 = !DILocation(line: 1485, column: 37, scope: !1545)
!1555 = !DILocation(line: 1485, column: 40, scope: !1545)
!1556 = !DILocation(line: 1486, column: 30, scope: !1545)
!1557 = !DILocation(line: 1486, column: 40, scope: !1545)
!1558 = !DILocation(line: 1485, column: 14, scope: !1545)
!1559 = !DILocation(line: 1485, column: 12, scope: !1545)
!1560 = !DILocation(line: 1487, column: 4, scope: !1545)
!1561 = !DILocation(line: 1488, column: 36, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 1487, column: 11)
!1563 = !DILocation(line: 1488, column: 39, scope: !1562)
!1564 = !DILocation(line: 1488, column: 49, scope: !1562)
!1565 = !DILocation(line: 1489, column: 29, scope: !1562)
!1566 = !DILocation(line: 1489, column: 36, scope: !1562)
!1567 = !DILocation(line: 1488, column: 14, scope: !1562)
!1568 = !DILocation(line: 1488, column: 12, scope: !1562)
!1569 = !DILocation(line: 1491, column: 8, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 1491, column: 8)
!1571 = !DILocation(line: 1491, column: 13, scope: !1570)
!1572 = !DILocation(line: 1492, column: 11, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 1492, column: 11)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 1491, column: 22)
!1575 = !DILocation(line: 1492, column: 17, scope: !1573)
!1576 = !DILocation(line: 1492, column: 14, scope: !1573)
!1577 = !DILocation(line: 1492, column: 23, scope: !1573)
!1578 = !DILocation(line: 1492, column: 26, scope: !1573)
!1579 = !DILocation(line: 1492, column: 32, scope: !1573)
!1580 = !DILocation(line: 1492, column: 29, scope: !1573)
!1581 = !DILocation(line: 1492, column: 47, scope: !1573)
!1582 = !DILocation(line: 1492, column: 40, scope: !1573)
!1583 = !DILocation(line: 1493, column: 7, scope: !1574)
!1584 = !DILocation(line: 1495, column: 11, scope: !1436)
!1585 = !DILocation(line: 1495, column: 4, scope: !1436)
!1586 = !DILocation(line: 1496, column: 1, scope: !1436)
!1587 = distinct !DISubprogram(name: "copy_output_until_stop", scope: !2, file: !2, line: 379, type: !489, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!1588 = !DILocalVariable(name: "s", arg: 1, scope: !1587, file: !2, line: 379, type: !267)
!1589 = !DILocation(line: 379, column: 39, scope: !1587)
!1590 = !DILocalVariable(name: "progress_out", scope: !1587, file: !2, line: 381, type: !63)
!1591 = !DILocation(line: 381, column: 9, scope: !1587)
!1592 = !DILocation(line: 383, column: 4, scope: !1587)
!1593 = !DILocation(line: 386, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 386, column: 11)
!1595 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 383, column: 17)
!1596 = !DILocation(line: 386, column: 14, scope: !1594)
!1597 = !DILocation(line: 386, column: 20, scope: !1594)
!1598 = !DILocation(line: 386, column: 30, scope: !1594)
!1599 = !DILocation(line: 386, column: 36, scope: !1594)
!1600 = !DILocation(line: 389, column: 11, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 389, column: 11)
!1602 = !DILocation(line: 389, column: 14, scope: !1601)
!1603 = !DILocation(line: 389, column: 31, scope: !1601)
!1604 = !DILocation(line: 389, column: 34, scope: !1601)
!1605 = !DILocation(line: 389, column: 28, scope: !1601)
!1606 = !DILocation(line: 389, column: 40, scope: !1601)
!1607 = !DILocation(line: 391, column: 20, scope: !1595)
!1608 = !DILocation(line: 392, column: 30, scope: !1595)
!1609 = !DILocation(line: 392, column: 33, scope: !1595)
!1610 = !DILocation(line: 392, column: 39, scope: !1595)
!1611 = !DILocation(line: 392, column: 42, scope: !1595)
!1612 = !DILocation(line: 392, column: 9, scope: !1595)
!1613 = !DILocation(line: 392, column: 12, scope: !1595)
!1614 = !DILocation(line: 392, column: 18, scope: !1595)
!1615 = !DILocation(line: 392, column: 28, scope: !1595)
!1616 = !DILocation(line: 393, column: 7, scope: !1595)
!1617 = !DILocation(line: 393, column: 10, scope: !1595)
!1618 = !DILocation(line: 393, column: 23, scope: !1595)
!1619 = !DILocation(line: 394, column: 7, scope: !1595)
!1620 = !DILocation(line: 394, column: 10, scope: !1595)
!1621 = !DILocation(line: 394, column: 16, scope: !1595)
!1622 = !DILocation(line: 394, column: 25, scope: !1595)
!1623 = !DILocation(line: 395, column: 7, scope: !1595)
!1624 = !DILocation(line: 395, column: 10, scope: !1595)
!1625 = !DILocation(line: 395, column: 16, scope: !1595)
!1626 = !DILocation(line: 395, column: 24, scope: !1595)
!1627 = !DILocation(line: 396, column: 7, scope: !1595)
!1628 = !DILocation(line: 396, column: 10, scope: !1595)
!1629 = !DILocation(line: 396, column: 16, scope: !1595)
!1630 = !DILocation(line: 396, column: 30, scope: !1595)
!1631 = !DILocation(line: 397, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 397, column: 11)
!1633 = !DILocation(line: 397, column: 14, scope: !1632)
!1634 = !DILocation(line: 397, column: 20, scope: !1632)
!1635 = !DILocation(line: 397, column: 35, scope: !1632)
!1636 = !DILocation(line: 397, column: 41, scope: !1632)
!1637 = !DILocation(line: 397, column: 44, scope: !1632)
!1638 = !DILocation(line: 397, column: 50, scope: !1632)
!1639 = !DILocation(line: 397, column: 64, scope: !1632)
!1640 = distinct !{!1640, !1592, !1641}
!1641 = !DILocation(line: 398, column: 4, scope: !1587)
!1642 = !DILocation(line: 400, column: 11, scope: !1587)
!1643 = !DILocation(line: 400, column: 4, scope: !1587)
!1644 = distinct !DISubprogram(name: "copy_input_until_stop", scope: !2, file: !2, line: 334, type: !489, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!1645 = !DILocalVariable(name: "s", arg: 1, scope: !1644, file: !2, line: 334, type: !267)
!1646 = !DILocation(line: 334, column: 38, scope: !1644)
!1647 = !DILocalVariable(name: "progress_in", scope: !1644, file: !2, line: 336, type: !63)
!1648 = !DILocation(line: 336, column: 9, scope: !1644)
!1649 = !DILocation(line: 338, column: 8, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 338, column: 8)
!1651 = !DILocation(line: 338, column: 11, scope: !1650)
!1652 = !DILocation(line: 338, column: 16, scope: !1650)
!1653 = !DILocation(line: 341, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 338, column: 33)
!1655 = !DILocation(line: 343, column: 14, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 343, column: 14)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 341, column: 20)
!1658 = !DILocation(line: 343, column: 17, scope: !1656)
!1659 = !DILocation(line: 343, column: 27, scope: !1656)
!1660 = !DILocation(line: 343, column: 30, scope: !1656)
!1661 = !DILocation(line: 343, column: 24, scope: !1656)
!1662 = !DILocation(line: 343, column: 41, scope: !1656)
!1663 = !DILocation(line: 345, column: 14, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 345, column: 14)
!1665 = !DILocation(line: 345, column: 17, scope: !1664)
!1666 = !DILocation(line: 345, column: 23, scope: !1664)
!1667 = !DILocation(line: 345, column: 32, scope: !1664)
!1668 = !DILocation(line: 345, column: 38, scope: !1664)
!1669 = !DILocation(line: 346, column: 22, scope: !1657)
!1670 = !DILocalVariable(name: "zchh", scope: !1671, file: !2, line: 347, type: !62)
!1671 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 347, column: 10)
!1672 = !DILocation(line: 347, column: 10, scope: !1671)
!1673 = !DILocation(line: 347, column: 10, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 347, column: 10)
!1675 = !DILocalVariable(name: "ch", scope: !1676, file: !2, line: 347, type: !55)
!1676 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 347, column: 10)
!1677 = !DILocation(line: 347, column: 10, scope: !1676)
!1678 = !DILocation(line: 347, column: 10, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 347, column: 10)
!1680 = !DILocation(line: 347, column: 10, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 347, column: 10)
!1682 = !DILocation(line: 347, column: 10, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 347, column: 10)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 347, column: 10)
!1685 = !DILocation(line: 347, column: 10, scope: !1684)
!1686 = !DILocation(line: 347, column: 10, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 347, column: 10)
!1688 = !DILocation(line: 348, column: 10, scope: !1657)
!1689 = !DILocation(line: 348, column: 13, scope: !1657)
!1690 = !DILocation(line: 348, column: 19, scope: !1657)
!1691 = !DILocation(line: 348, column: 26, scope: !1657)
!1692 = !DILocation(line: 349, column: 10, scope: !1657)
!1693 = !DILocation(line: 349, column: 13, scope: !1657)
!1694 = !DILocation(line: 349, column: 19, scope: !1657)
!1695 = !DILocation(line: 349, column: 27, scope: !1657)
!1696 = !DILocation(line: 350, column: 10, scope: !1657)
!1697 = !DILocation(line: 350, column: 13, scope: !1657)
!1698 = !DILocation(line: 350, column: 19, scope: !1657)
!1699 = !DILocation(line: 350, column: 32, scope: !1657)
!1700 = !DILocation(line: 351, column: 14, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 351, column: 14)
!1702 = !DILocation(line: 351, column: 17, scope: !1701)
!1703 = !DILocation(line: 351, column: 23, scope: !1701)
!1704 = !DILocation(line: 351, column: 37, scope: !1701)
!1705 = !DILocation(line: 351, column: 43, scope: !1701)
!1706 = !DILocation(line: 351, column: 46, scope: !1701)
!1707 = !DILocation(line: 351, column: 52, scope: !1701)
!1708 = !DILocation(line: 351, column: 65, scope: !1701)
!1709 = distinct !{!1709, !1653, !1710}
!1710 = !DILocation(line: 352, column: 7, scope: !1654)
!1711 = !DILocation(line: 354, column: 4, scope: !1654)
!1712 = !DILocation(line: 357, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 354, column: 11)
!1714 = !DILocation(line: 359, column: 14, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 359, column: 14)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 357, column: 20)
!1717 = !DILocation(line: 359, column: 17, scope: !1715)
!1718 = !DILocation(line: 359, column: 27, scope: !1715)
!1719 = !DILocation(line: 359, column: 30, scope: !1715)
!1720 = !DILocation(line: 359, column: 24, scope: !1715)
!1721 = !DILocation(line: 359, column: 41, scope: !1715)
!1722 = !DILocation(line: 361, column: 14, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 361, column: 14)
!1724 = !DILocation(line: 361, column: 17, scope: !1723)
!1725 = !DILocation(line: 361, column: 23, scope: !1723)
!1726 = !DILocation(line: 361, column: 32, scope: !1723)
!1727 = !DILocation(line: 361, column: 38, scope: !1723)
!1728 = !DILocation(line: 363, column: 14, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 363, column: 14)
!1730 = !DILocation(line: 363, column: 17, scope: !1729)
!1731 = !DILocation(line: 363, column: 33, scope: !1729)
!1732 = !DILocation(line: 363, column: 39, scope: !1729)
!1733 = !DILocation(line: 364, column: 22, scope: !1716)
!1734 = !DILocalVariable(name: "zchh", scope: !1735, file: !2, line: 365, type: !62)
!1735 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 365, column: 10)
!1736 = !DILocation(line: 365, column: 10, scope: !1735)
!1737 = !DILocation(line: 365, column: 10, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 365, column: 10)
!1739 = !DILocalVariable(name: "ch", scope: !1740, file: !2, line: 365, type: !55)
!1740 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 365, column: 10)
!1741 = !DILocation(line: 365, column: 10, scope: !1740)
!1742 = !DILocation(line: 365, column: 10, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 365, column: 10)
!1744 = !DILocation(line: 365, column: 10, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 365, column: 10)
!1746 = !DILocation(line: 365, column: 10, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 365, column: 10)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 365, column: 10)
!1749 = !DILocation(line: 365, column: 10, scope: !1748)
!1750 = !DILocation(line: 365, column: 10, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 365, column: 10)
!1752 = !DILocation(line: 366, column: 10, scope: !1716)
!1753 = !DILocation(line: 366, column: 13, scope: !1716)
!1754 = !DILocation(line: 366, column: 19, scope: !1716)
!1755 = !DILocation(line: 366, column: 26, scope: !1716)
!1756 = !DILocation(line: 367, column: 10, scope: !1716)
!1757 = !DILocation(line: 367, column: 13, scope: !1716)
!1758 = !DILocation(line: 367, column: 19, scope: !1716)
!1759 = !DILocation(line: 367, column: 27, scope: !1716)
!1760 = !DILocation(line: 368, column: 10, scope: !1716)
!1761 = !DILocation(line: 368, column: 13, scope: !1716)
!1762 = !DILocation(line: 368, column: 19, scope: !1716)
!1763 = !DILocation(line: 368, column: 32, scope: !1716)
!1764 = !DILocation(line: 369, column: 14, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 369, column: 14)
!1766 = !DILocation(line: 369, column: 17, scope: !1765)
!1767 = !DILocation(line: 369, column: 23, scope: !1765)
!1768 = !DILocation(line: 369, column: 37, scope: !1765)
!1769 = !DILocation(line: 369, column: 43, scope: !1765)
!1770 = !DILocation(line: 369, column: 46, scope: !1765)
!1771 = !DILocation(line: 369, column: 52, scope: !1765)
!1772 = !DILocation(line: 369, column: 65, scope: !1765)
!1773 = !DILocation(line: 370, column: 10, scope: !1716)
!1774 = !DILocation(line: 370, column: 13, scope: !1716)
!1775 = !DILocation(line: 370, column: 28, scope: !1716)
!1776 = distinct !{!1776, !1712, !1777}
!1777 = !DILocation(line: 371, column: 7, scope: !1713)
!1778 = !DILocation(line: 373, column: 11, scope: !1644)
!1779 = !DILocation(line: 373, column: 4, scope: !1644)
!1780 = distinct !DISubprogram(name: "flush_RL", scope: !2, file: !2, line: 297, type: !265, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!1781 = !DILocalVariable(name: "s", arg: 1, scope: !1780, file: !2, line: 297, type: !267)
!1782 = !DILocation(line: 297, column: 25, scope: !1780)
!1783 = !DILocation(line: 299, column: 8, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !2, line: 299, column: 8)
!1785 = !DILocation(line: 299, column: 11, scope: !1784)
!1786 = !DILocation(line: 299, column: 23, scope: !1784)
!1787 = !DILocation(line: 299, column: 50, scope: !1784)
!1788 = !DILocation(line: 299, column: 30, scope: !1784)
!1789 = !DILocation(line: 300, column: 14, scope: !1780)
!1790 = !DILocation(line: 300, column: 4, scope: !1780)
!1791 = !DILocation(line: 301, column: 1, scope: !1780)
!1792 = distinct !DISubprogram(name: "add_pair_to_block", scope: !2, file: !2, line: 261, type: !265, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !238)
!1793 = !DILocalVariable(name: "s", arg: 1, scope: !1792, file: !2, line: 261, type: !267)
!1794 = !DILocation(line: 261, column: 34, scope: !1792)
!1795 = !DILocalVariable(name: "i", scope: !1792, file: !2, line: 263, type: !135)
!1796 = !DILocation(line: 263, column: 10, scope: !1792)
!1797 = !DILocalVariable(name: "ch", scope: !1792, file: !2, line: 264, type: !55)
!1798 = !DILocation(line: 264, column: 10, scope: !1792)
!1799 = !DILocation(line: 264, column: 23, scope: !1792)
!1800 = !DILocation(line: 264, column: 26, scope: !1792)
!1801 = !DILocation(line: 264, column: 15, scope: !1792)
!1802 = !DILocation(line: 265, column: 11, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 265, column: 4)
!1804 = !DILocation(line: 265, column: 9, scope: !1803)
!1805 = !DILocation(line: 265, column: 16, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 265, column: 4)
!1807 = !DILocation(line: 265, column: 20, scope: !1806)
!1808 = !DILocation(line: 265, column: 23, scope: !1806)
!1809 = !DILocation(line: 265, column: 18, scope: !1806)
!1810 = !DILocation(line: 265, column: 4, scope: !1803)
!1811 = !DILocation(line: 266, column: 7, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 266, column: 7)
!1813 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 265, column: 42)
!1814 = !DILocation(line: 267, column: 4, scope: !1813)
!1815 = !DILocation(line: 265, column: 38, scope: !1806)
!1816 = !DILocation(line: 265, column: 4, scope: !1806)
!1817 = distinct !{!1817, !1810, !1818, !367}
!1818 = !DILocation(line: 267, column: 4, scope: !1803)
!1819 = !DILocation(line: 268, column: 4, scope: !1792)
!1820 = !DILocation(line: 268, column: 7, scope: !1792)
!1821 = !DILocation(line: 268, column: 13, scope: !1792)
!1822 = !DILocation(line: 268, column: 16, scope: !1792)
!1823 = !DILocation(line: 268, column: 29, scope: !1792)
!1824 = !DILocation(line: 269, column: 12, scope: !1792)
!1825 = !DILocation(line: 269, column: 15, scope: !1792)
!1826 = !DILocation(line: 269, column: 4, scope: !1792)
!1827 = !DILocation(line: 271, column: 39, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 269, column: 29)
!1829 = !DILocation(line: 271, column: 10, scope: !1828)
!1830 = !DILocation(line: 271, column: 13, scope: !1828)
!1831 = !DILocation(line: 271, column: 19, scope: !1828)
!1832 = !DILocation(line: 271, column: 22, scope: !1828)
!1833 = !DILocation(line: 271, column: 30, scope: !1828)
!1834 = !DILocation(line: 271, column: 43, scope: !1828)
!1835 = !DILocation(line: 271, column: 46, scope: !1828)
!1836 = !DILocation(line: 271, column: 52, scope: !1828)
!1837 = !DILocation(line: 272, column: 10, scope: !1828)
!1838 = !DILocation(line: 274, column: 39, scope: !1828)
!1839 = !DILocation(line: 274, column: 10, scope: !1828)
!1840 = !DILocation(line: 274, column: 13, scope: !1828)
!1841 = !DILocation(line: 274, column: 19, scope: !1828)
!1842 = !DILocation(line: 274, column: 22, scope: !1828)
!1843 = !DILocation(line: 274, column: 30, scope: !1828)
!1844 = !DILocation(line: 274, column: 43, scope: !1828)
!1845 = !DILocation(line: 274, column: 46, scope: !1828)
!1846 = !DILocation(line: 274, column: 52, scope: !1828)
!1847 = !DILocation(line: 275, column: 39, scope: !1828)
!1848 = !DILocation(line: 275, column: 10, scope: !1828)
!1849 = !DILocation(line: 275, column: 13, scope: !1828)
!1850 = !DILocation(line: 275, column: 19, scope: !1828)
!1851 = !DILocation(line: 275, column: 22, scope: !1828)
!1852 = !DILocation(line: 275, column: 30, scope: !1828)
!1853 = !DILocation(line: 275, column: 43, scope: !1828)
!1854 = !DILocation(line: 275, column: 46, scope: !1828)
!1855 = !DILocation(line: 275, column: 52, scope: !1828)
!1856 = !DILocation(line: 276, column: 10, scope: !1828)
!1857 = !DILocation(line: 278, column: 39, scope: !1828)
!1858 = !DILocation(line: 278, column: 10, scope: !1828)
!1859 = !DILocation(line: 278, column: 13, scope: !1828)
!1860 = !DILocation(line: 278, column: 19, scope: !1828)
!1861 = !DILocation(line: 278, column: 22, scope: !1828)
!1862 = !DILocation(line: 278, column: 30, scope: !1828)
!1863 = !DILocation(line: 278, column: 43, scope: !1828)
!1864 = !DILocation(line: 278, column: 46, scope: !1828)
!1865 = !DILocation(line: 278, column: 52, scope: !1828)
!1866 = !DILocation(line: 279, column: 39, scope: !1828)
!1867 = !DILocation(line: 279, column: 10, scope: !1828)
!1868 = !DILocation(line: 279, column: 13, scope: !1828)
!1869 = !DILocation(line: 279, column: 19, scope: !1828)
!1870 = !DILocation(line: 279, column: 22, scope: !1828)
!1871 = !DILocation(line: 279, column: 30, scope: !1828)
!1872 = !DILocation(line: 279, column: 43, scope: !1828)
!1873 = !DILocation(line: 279, column: 46, scope: !1828)
!1874 = !DILocation(line: 279, column: 52, scope: !1828)
!1875 = !DILocation(line: 280, column: 39, scope: !1828)
!1876 = !DILocation(line: 280, column: 10, scope: !1828)
!1877 = !DILocation(line: 280, column: 13, scope: !1828)
!1878 = !DILocation(line: 280, column: 19, scope: !1828)
!1879 = !DILocation(line: 280, column: 22, scope: !1828)
!1880 = !DILocation(line: 280, column: 30, scope: !1828)
!1881 = !DILocation(line: 280, column: 43, scope: !1828)
!1882 = !DILocation(line: 280, column: 46, scope: !1828)
!1883 = !DILocation(line: 280, column: 52, scope: !1828)
!1884 = !DILocation(line: 281, column: 10, scope: !1828)
!1885 = !DILocation(line: 283, column: 10, scope: !1828)
!1886 = !DILocation(line: 283, column: 13, scope: !1828)
!1887 = !DILocation(line: 283, column: 19, scope: !1828)
!1888 = !DILocation(line: 283, column: 22, scope: !1828)
!1889 = !DILocation(line: 283, column: 34, scope: !1828)
!1890 = !DILocation(line: 283, column: 38, scope: !1828)
!1891 = !DILocation(line: 284, column: 39, scope: !1828)
!1892 = !DILocation(line: 284, column: 10, scope: !1828)
!1893 = !DILocation(line: 284, column: 13, scope: !1828)
!1894 = !DILocation(line: 284, column: 19, scope: !1828)
!1895 = !DILocation(line: 284, column: 22, scope: !1828)
!1896 = !DILocation(line: 284, column: 30, scope: !1828)
!1897 = !DILocation(line: 284, column: 43, scope: !1828)
!1898 = !DILocation(line: 284, column: 46, scope: !1828)
!1899 = !DILocation(line: 284, column: 52, scope: !1828)
!1900 = !DILocation(line: 285, column: 39, scope: !1828)
!1901 = !DILocation(line: 285, column: 10, scope: !1828)
!1902 = !DILocation(line: 285, column: 13, scope: !1828)
!1903 = !DILocation(line: 285, column: 19, scope: !1828)
!1904 = !DILocation(line: 285, column: 22, scope: !1828)
!1905 = !DILocation(line: 285, column: 30, scope: !1828)
!1906 = !DILocation(line: 285, column: 43, scope: !1828)
!1907 = !DILocation(line: 285, column: 46, scope: !1828)
!1908 = !DILocation(line: 285, column: 52, scope: !1828)
!1909 = !DILocation(line: 286, column: 39, scope: !1828)
!1910 = !DILocation(line: 286, column: 10, scope: !1828)
!1911 = !DILocation(line: 286, column: 13, scope: !1828)
!1912 = !DILocation(line: 286, column: 19, scope: !1828)
!1913 = !DILocation(line: 286, column: 22, scope: !1828)
!1914 = !DILocation(line: 286, column: 30, scope: !1828)
!1915 = !DILocation(line: 286, column: 43, scope: !1828)
!1916 = !DILocation(line: 286, column: 46, scope: !1828)
!1917 = !DILocation(line: 286, column: 52, scope: !1828)
!1918 = !DILocation(line: 287, column: 39, scope: !1828)
!1919 = !DILocation(line: 287, column: 10, scope: !1828)
!1920 = !DILocation(line: 287, column: 13, scope: !1828)
!1921 = !DILocation(line: 287, column: 19, scope: !1828)
!1922 = !DILocation(line: 287, column: 22, scope: !1828)
!1923 = !DILocation(line: 287, column: 30, scope: !1828)
!1924 = !DILocation(line: 287, column: 43, scope: !1828)
!1925 = !DILocation(line: 287, column: 46, scope: !1828)
!1926 = !DILocation(line: 287, column: 52, scope: !1828)
!1927 = !DILocation(line: 288, column: 41, scope: !1828)
!1928 = !DILocation(line: 288, column: 44, scope: !1828)
!1929 = !DILocation(line: 288, column: 56, scope: !1828)
!1930 = !DILocation(line: 288, column: 33, scope: !1828)
!1931 = !DILocation(line: 288, column: 10, scope: !1828)
!1932 = !DILocation(line: 288, column: 13, scope: !1828)
!1933 = !DILocation(line: 288, column: 19, scope: !1828)
!1934 = !DILocation(line: 288, column: 22, scope: !1828)
!1935 = !DILocation(line: 288, column: 30, scope: !1828)
!1936 = !DILocation(line: 289, column: 10, scope: !1828)
!1937 = !DILocation(line: 289, column: 13, scope: !1828)
!1938 = !DILocation(line: 289, column: 19, scope: !1828)
!1939 = !DILocation(line: 290, column: 10, scope: !1828)
!1940 = !DILocation(line: 292, column: 1, scope: !1792)

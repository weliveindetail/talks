; ModuleID = 'bzlib.c'
source_filename = "bzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [443 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis is a bug in bzip2/libbzip2, %s.\0APlease report it to me at: jseward@bzip.org.  If this happened\0Awhen you were using some program which uses libbzip2 as a\0Acomponent, you should also report this bug to the author(s)\0Aof that program.  Please make an effort to report this bug;\0Atimely and accurate bug reports eventually lead to higher\0Aquality software.  Thanks.  Julian Seward, 15 February 2005.\0A\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [19 x i8] c"1.0.3, 15-Feb-2005\00", align 1, !dbg !27
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@bzerrorstrings = internal global [16 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 16, !dbg !32
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bz__AssertH__fail(i32 noundef %0) #0 !dbg !231 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !235, !DIExpression(), !236)
  %3 = load ptr, ptr @stderr, align 8, !dbg !237
  %4 = load i32, ptr %2, align 4, !dbg !238
  %5 = call ptr @BZ2_bzlibVersion(), !dbg !239
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, i32 noundef %4, ptr noundef %5) #8, !dbg !240
  %7 = load i32, ptr %2, align 4, !dbg !241
  %8 = icmp eq i32 %7, 1007, !dbg !243
  br i1 %8, label %9, label %12, !dbg !243

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !dbg !244
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.1) #8, !dbg !246
  br label %12, !dbg !247

12:                                               ; preds = %9, %1
  call void @exit(i32 noundef 3) #9, !dbg !248
  unreachable, !dbg !248
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzlibVersion() #0 !dbg !249 {
  ret ptr @.str.5, !dbg !254
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzCompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !255 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !259, !DIExpression(), !260)
  store i32 %1, ptr %7, align 4
    #dbg_declare(ptr %7, !261, !DIExpression(), !262)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !263, !DIExpression(), !264)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !265, !DIExpression(), !266)
    #dbg_declare(ptr %10, !267, !DIExpression(), !268)
    #dbg_declare(ptr %11, !269, !DIExpression(), !329)
  %12 = call i32 @bz_config_ok(), !dbg !330
  %13 = icmp ne i32 %12, 0, !dbg !330
  br i1 %13, label %15, label %14, !dbg !332

14:                                               ; preds = %4
  store i32 -9, ptr %5, align 4, !dbg !333
  br label %234, !dbg !333

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8, !dbg !334
  %17 = icmp eq ptr %16, null, !dbg !336
  br i1 %17, label %30, label %18, !dbg !337

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 4, !dbg !338
  %20 = icmp slt i32 %19, 1, !dbg !339
  br i1 %20, label %30, label %21, !dbg !340

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4, !dbg !341
  %23 = icmp sgt i32 %22, 9, !dbg !342
  br i1 %23, label %30, label %24, !dbg !343

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 4, !dbg !344
  %26 = icmp slt i32 %25, 0, !dbg !345
  br i1 %26, label %30, label %27, !dbg !346

27:                                               ; preds = %24
  %28 = load i32, ptr %9, align 4, !dbg !347
  %29 = icmp sgt i32 %28, 250, !dbg !348
  br i1 %29, label %30, label %31, !dbg !346

30:                                               ; preds = %27, %24, %21, %18, %15
  store i32 -2, ptr %5, align 4, !dbg !349
  br label %234, !dbg !349

31:                                               ; preds = %27
  %32 = load i32, ptr %9, align 4, !dbg !350
  %33 = icmp eq i32 %32, 0, !dbg !352
  br i1 %33, label %34, label %35, !dbg !352

34:                                               ; preds = %31
  store i32 30, ptr %9, align 4, !dbg !353
  br label %35, !dbg !354

35:                                               ; preds = %34, %31
  %36 = load ptr, ptr %6, align 8, !dbg !355
  %37 = getelementptr inbounds nuw %struct.bz_stream, ptr %36, i32 0, i32 9, !dbg !357
  %38 = load ptr, ptr %37, align 8, !dbg !357
  %39 = icmp eq ptr %38, null, !dbg !358
  br i1 %39, label %40, label %43, !dbg !358

40:                                               ; preds = %35
  %41 = load ptr, ptr %6, align 8, !dbg !359
  %42 = getelementptr inbounds nuw %struct.bz_stream, ptr %41, i32 0, i32 9, !dbg !360
  store ptr @default_bzalloc, ptr %42, align 8, !dbg !361
  br label %43, !dbg !359

43:                                               ; preds = %40, %35
  %44 = load ptr, ptr %6, align 8, !dbg !362
  %45 = getelementptr inbounds nuw %struct.bz_stream, ptr %44, i32 0, i32 10, !dbg !364
  %46 = load ptr, ptr %45, align 8, !dbg !364
  %47 = icmp eq ptr %46, null, !dbg !365
  br i1 %47, label %48, label %51, !dbg !365

48:                                               ; preds = %43
  %49 = load ptr, ptr %6, align 8, !dbg !366
  %50 = getelementptr inbounds nuw %struct.bz_stream, ptr %49, i32 0, i32 10, !dbg !367
  store ptr @default_bzfree, ptr %50, align 8, !dbg !368
  br label %51, !dbg !366

51:                                               ; preds = %48, %43
  %52 = load ptr, ptr %6, align 8, !dbg !369
  %53 = getelementptr inbounds nuw %struct.bz_stream, ptr %52, i32 0, i32 9, !dbg !369
  %54 = load ptr, ptr %53, align 8, !dbg !369
  %55 = load ptr, ptr %6, align 8, !dbg !369
  %56 = getelementptr inbounds nuw %struct.bz_stream, ptr %55, i32 0, i32 11, !dbg !369
  %57 = load ptr, ptr %56, align 8, !dbg !369
  %58 = call ptr %54(ptr noundef %57, i32 noundef 55768, i32 noundef 1), !dbg !369
  store ptr %58, ptr %11, align 8, !dbg !370
  %59 = load ptr, ptr %11, align 8, !dbg !371
  %60 = icmp eq ptr %59, null, !dbg !373
  br i1 %60, label %61, label %62, !dbg !373

61:                                               ; preds = %51
  store i32 -3, ptr %5, align 4, !dbg !374
  br label %234, !dbg !374

62:                                               ; preds = %51
  %63 = load ptr, ptr %6, align 8, !dbg !375
  %64 = load ptr, ptr %11, align 8, !dbg !376
  %65 = getelementptr inbounds nuw %struct.EState, ptr %64, i32 0, i32 0, !dbg !377
  store ptr %63, ptr %65, align 8, !dbg !378
  %66 = load ptr, ptr %11, align 8, !dbg !379
  %67 = getelementptr inbounds nuw %struct.EState, ptr %66, i32 0, i32 4, !dbg !380
  store ptr null, ptr %67, align 8, !dbg !381
  %68 = load ptr, ptr %11, align 8, !dbg !382
  %69 = getelementptr inbounds nuw %struct.EState, ptr %68, i32 0, i32 5, !dbg !383
  store ptr null, ptr %69, align 8, !dbg !384
  %70 = load ptr, ptr %11, align 8, !dbg !385
  %71 = getelementptr inbounds nuw %struct.EState, ptr %70, i32 0, i32 6, !dbg !386
  store ptr null, ptr %71, align 8, !dbg !387
  %72 = load i32, ptr %7, align 4, !dbg !388
  %73 = mul nsw i32 100000, %72, !dbg !389
  store i32 %73, ptr %10, align 4, !dbg !390
  %74 = load ptr, ptr %6, align 8, !dbg !391
  %75 = getelementptr inbounds nuw %struct.bz_stream, ptr %74, i32 0, i32 9, !dbg !391
  %76 = load ptr, ptr %75, align 8, !dbg !391
  %77 = load ptr, ptr %6, align 8, !dbg !391
  %78 = getelementptr inbounds nuw %struct.bz_stream, ptr %77, i32 0, i32 11, !dbg !391
  %79 = load ptr, ptr %78, align 8, !dbg !391
  %80 = load i32, ptr %10, align 4, !dbg !391
  %81 = sext i32 %80 to i64, !dbg !391
  %82 = mul i64 %81, 4, !dbg !391
  %83 = trunc i64 %82 to i32, !dbg !391
  %84 = call ptr %76(ptr noundef %79, i32 noundef %83, i32 noundef 1), !dbg !391
  %85 = load ptr, ptr %11, align 8, !dbg !392
  %86 = getelementptr inbounds nuw %struct.EState, ptr %85, i32 0, i32 4, !dbg !393
  store ptr %84, ptr %86, align 8, !dbg !394
  %87 = load ptr, ptr %6, align 8, !dbg !395
  %88 = getelementptr inbounds nuw %struct.bz_stream, ptr %87, i32 0, i32 9, !dbg !395
  %89 = load ptr, ptr %88, align 8, !dbg !395
  %90 = load ptr, ptr %6, align 8, !dbg !395
  %91 = getelementptr inbounds nuw %struct.bz_stream, ptr %90, i32 0, i32 11, !dbg !395
  %92 = load ptr, ptr %91, align 8, !dbg !395
  %93 = load i32, ptr %10, align 4, !dbg !395
  %94 = add nsw i32 %93, 34, !dbg !395
  %95 = sext i32 %94 to i64, !dbg !395
  %96 = mul i64 %95, 4, !dbg !395
  %97 = trunc i64 %96 to i32, !dbg !395
  %98 = call ptr %89(ptr noundef %92, i32 noundef %97, i32 noundef 1), !dbg !395
  %99 = load ptr, ptr %11, align 8, !dbg !396
  %100 = getelementptr inbounds nuw %struct.EState, ptr %99, i32 0, i32 5, !dbg !397
  store ptr %98, ptr %100, align 8, !dbg !398
  %101 = load ptr, ptr %6, align 8, !dbg !399
  %102 = getelementptr inbounds nuw %struct.bz_stream, ptr %101, i32 0, i32 9, !dbg !399
  %103 = load ptr, ptr %102, align 8, !dbg !399
  %104 = load ptr, ptr %6, align 8, !dbg !399
  %105 = getelementptr inbounds nuw %struct.bz_stream, ptr %104, i32 0, i32 11, !dbg !399
  %106 = load ptr, ptr %105, align 8, !dbg !399
  %107 = call ptr %103(ptr noundef %106, i32 noundef 262148, i32 noundef 1), !dbg !399
  %108 = load ptr, ptr %11, align 8, !dbg !400
  %109 = getelementptr inbounds nuw %struct.EState, ptr %108, i32 0, i32 6, !dbg !401
  store ptr %107, ptr %109, align 8, !dbg !402
  %110 = load ptr, ptr %11, align 8, !dbg !403
  %111 = getelementptr inbounds nuw %struct.EState, ptr %110, i32 0, i32 4, !dbg !405
  %112 = load ptr, ptr %111, align 8, !dbg !405
  %113 = icmp eq ptr %112, null, !dbg !406
  br i1 %113, label %124, label %114, !dbg !407

114:                                              ; preds = %62
  %115 = load ptr, ptr %11, align 8, !dbg !408
  %116 = getelementptr inbounds nuw %struct.EState, ptr %115, i32 0, i32 5, !dbg !409
  %117 = load ptr, ptr %116, align 8, !dbg !409
  %118 = icmp eq ptr %117, null, !dbg !410
  br i1 %118, label %124, label %119, !dbg !411

119:                                              ; preds = %114
  %120 = load ptr, ptr %11, align 8, !dbg !412
  %121 = getelementptr inbounds nuw %struct.EState, ptr %120, i32 0, i32 6, !dbg !413
  %122 = load ptr, ptr %121, align 8, !dbg !413
  %123 = icmp eq ptr %122, null, !dbg !414
  br i1 %123, label %124, label %181, !dbg !411

124:                                              ; preds = %119, %114, %62
  %125 = load ptr, ptr %11, align 8, !dbg !415
  %126 = getelementptr inbounds nuw %struct.EState, ptr %125, i32 0, i32 4, !dbg !418
  %127 = load ptr, ptr %126, align 8, !dbg !418
  %128 = icmp ne ptr %127, null, !dbg !419
  br i1 %128, label %129, label %139, !dbg !419

129:                                              ; preds = %124
  %130 = load ptr, ptr %6, align 8, !dbg !420
  %131 = getelementptr inbounds nuw %struct.bz_stream, ptr %130, i32 0, i32 10, !dbg !420
  %132 = load ptr, ptr %131, align 8, !dbg !420
  %133 = load ptr, ptr %6, align 8, !dbg !420
  %134 = getelementptr inbounds nuw %struct.bz_stream, ptr %133, i32 0, i32 11, !dbg !420
  %135 = load ptr, ptr %134, align 8, !dbg !420
  %136 = load ptr, ptr %11, align 8, !dbg !420
  %137 = getelementptr inbounds nuw %struct.EState, ptr %136, i32 0, i32 4, !dbg !420
  %138 = load ptr, ptr %137, align 8, !dbg !420
  call void %132(ptr noundef %135, ptr noundef %138), !dbg !420
  br label %139, !dbg !420

139:                                              ; preds = %129, %124
  %140 = load ptr, ptr %11, align 8, !dbg !421
  %141 = getelementptr inbounds nuw %struct.EState, ptr %140, i32 0, i32 5, !dbg !423
  %142 = load ptr, ptr %141, align 8, !dbg !423
  %143 = icmp ne ptr %142, null, !dbg !424
  br i1 %143, label %144, label %154, !dbg !424

144:                                              ; preds = %139
  %145 = load ptr, ptr %6, align 8, !dbg !425
  %146 = getelementptr inbounds nuw %struct.bz_stream, ptr %145, i32 0, i32 10, !dbg !425
  %147 = load ptr, ptr %146, align 8, !dbg !425
  %148 = load ptr, ptr %6, align 8, !dbg !425
  %149 = getelementptr inbounds nuw %struct.bz_stream, ptr %148, i32 0, i32 11, !dbg !425
  %150 = load ptr, ptr %149, align 8, !dbg !425
  %151 = load ptr, ptr %11, align 8, !dbg !425
  %152 = getelementptr inbounds nuw %struct.EState, ptr %151, i32 0, i32 5, !dbg !425
  %153 = load ptr, ptr %152, align 8, !dbg !425
  call void %147(ptr noundef %150, ptr noundef %153), !dbg !425
  br label %154, !dbg !425

154:                                              ; preds = %144, %139
  %155 = load ptr, ptr %11, align 8, !dbg !426
  %156 = getelementptr inbounds nuw %struct.EState, ptr %155, i32 0, i32 6, !dbg !428
  %157 = load ptr, ptr %156, align 8, !dbg !428
  %158 = icmp ne ptr %157, null, !dbg !429
  br i1 %158, label %159, label %169, !dbg !429

159:                                              ; preds = %154
  %160 = load ptr, ptr %6, align 8, !dbg !430
  %161 = getelementptr inbounds nuw %struct.bz_stream, ptr %160, i32 0, i32 10, !dbg !430
  %162 = load ptr, ptr %161, align 8, !dbg !430
  %163 = load ptr, ptr %6, align 8, !dbg !430
  %164 = getelementptr inbounds nuw %struct.bz_stream, ptr %163, i32 0, i32 11, !dbg !430
  %165 = load ptr, ptr %164, align 8, !dbg !430
  %166 = load ptr, ptr %11, align 8, !dbg !430
  %167 = getelementptr inbounds nuw %struct.EState, ptr %166, i32 0, i32 6, !dbg !430
  %168 = load ptr, ptr %167, align 8, !dbg !430
  call void %162(ptr noundef %165, ptr noundef %168), !dbg !430
  br label %169, !dbg !430

169:                                              ; preds = %159, %154
  %170 = load ptr, ptr %11, align 8, !dbg !431
  %171 = icmp ne ptr %170, null, !dbg !433
  br i1 %171, label %172, label %180, !dbg !433

172:                                              ; preds = %169
  %173 = load ptr, ptr %6, align 8, !dbg !434
  %174 = getelementptr inbounds nuw %struct.bz_stream, ptr %173, i32 0, i32 10, !dbg !434
  %175 = load ptr, ptr %174, align 8, !dbg !434
  %176 = load ptr, ptr %6, align 8, !dbg !434
  %177 = getelementptr inbounds nuw %struct.bz_stream, ptr %176, i32 0, i32 11, !dbg !434
  %178 = load ptr, ptr %177, align 8, !dbg !434
  %179 = load ptr, ptr %11, align 8, !dbg !434
  call void %175(ptr noundef %178, ptr noundef %179), !dbg !434
  br label %180, !dbg !434

180:                                              ; preds = %172, %169
  store i32 -3, ptr %5, align 4, !dbg !435
  br label %234, !dbg !435

181:                                              ; preds = %119
  %182 = load ptr, ptr %11, align 8, !dbg !436
  %183 = getelementptr inbounds nuw %struct.EState, ptr %182, i32 0, i32 29, !dbg !437
  store i32 0, ptr %183, align 4, !dbg !438
  %184 = load ptr, ptr %11, align 8, !dbg !439
  %185 = getelementptr inbounds nuw %struct.EState, ptr %184, i32 0, i32 2, !dbg !440
  store i32 2, ptr %185, align 4, !dbg !441
  %186 = load ptr, ptr %11, align 8, !dbg !442
  %187 = getelementptr inbounds nuw %struct.EState, ptr %186, i32 0, i32 1, !dbg !443
  store i32 2, ptr %187, align 8, !dbg !444
  %188 = load ptr, ptr %11, align 8, !dbg !445
  %189 = getelementptr inbounds nuw %struct.EState, ptr %188, i32 0, i32 27, !dbg !446
  store i32 0, ptr %189, align 4, !dbg !447
  %190 = load i32, ptr %7, align 4, !dbg !448
  %191 = load ptr, ptr %11, align 8, !dbg !449
  %192 = getelementptr inbounds nuw %struct.EState, ptr %191, i32 0, i32 30, !dbg !450
  store i32 %190, ptr %192, align 8, !dbg !451
  %193 = load i32, ptr %7, align 4, !dbg !452
  %194 = mul nsw i32 100000, %193, !dbg !453
  %195 = sub nsw i32 %194, 19, !dbg !454
  %196 = load ptr, ptr %11, align 8, !dbg !455
  %197 = getelementptr inbounds nuw %struct.EState, ptr %196, i32 0, i32 18, !dbg !456
  store i32 %195, ptr %197, align 8, !dbg !457
  %198 = load i32, ptr %8, align 4, !dbg !458
  %199 = load ptr, ptr %11, align 8, !dbg !459
  %200 = getelementptr inbounds nuw %struct.EState, ptr %199, i32 0, i32 28, !dbg !460
  store i32 %198, ptr %200, align 8, !dbg !461
  %201 = load i32, ptr %9, align 4, !dbg !462
  %202 = load ptr, ptr %11, align 8, !dbg !463
  %203 = getelementptr inbounds nuw %struct.EState, ptr %202, i32 0, i32 12, !dbg !464
  store i32 %201, ptr %203, align 8, !dbg !465
  %204 = load ptr, ptr %11, align 8, !dbg !466
  %205 = getelementptr inbounds nuw %struct.EState, ptr %204, i32 0, i32 5, !dbg !467
  %206 = load ptr, ptr %205, align 8, !dbg !467
  %207 = load ptr, ptr %11, align 8, !dbg !468
  %208 = getelementptr inbounds nuw %struct.EState, ptr %207, i32 0, i32 9, !dbg !469
  store ptr %206, ptr %208, align 8, !dbg !470
  %209 = load ptr, ptr %11, align 8, !dbg !471
  %210 = getelementptr inbounds nuw %struct.EState, ptr %209, i32 0, i32 4, !dbg !472
  %211 = load ptr, ptr %210, align 8, !dbg !472
  %212 = load ptr, ptr %11, align 8, !dbg !473
  %213 = getelementptr inbounds nuw %struct.EState, ptr %212, i32 0, i32 10, !dbg !474
  store ptr %211, ptr %213, align 8, !dbg !475
  %214 = load ptr, ptr %11, align 8, !dbg !476
  %215 = getelementptr inbounds nuw %struct.EState, ptr %214, i32 0, i32 11, !dbg !477
  store ptr null, ptr %215, align 8, !dbg !478
  %216 = load ptr, ptr %11, align 8, !dbg !479
  %217 = getelementptr inbounds nuw %struct.EState, ptr %216, i32 0, i32 4, !dbg !480
  %218 = load ptr, ptr %217, align 8, !dbg !480
  %219 = load ptr, ptr %11, align 8, !dbg !481
  %220 = getelementptr inbounds nuw %struct.EState, ptr %219, i32 0, i32 8, !dbg !482
  store ptr %218, ptr %220, align 8, !dbg !483
  %221 = load ptr, ptr %11, align 8, !dbg !484
  %222 = load ptr, ptr %6, align 8, !dbg !485
  %223 = getelementptr inbounds nuw %struct.bz_stream, ptr %222, i32 0, i32 8, !dbg !486
  store ptr %221, ptr %223, align 8, !dbg !487
  %224 = load ptr, ptr %6, align 8, !dbg !488
  %225 = getelementptr inbounds nuw %struct.bz_stream, ptr %224, i32 0, i32 2, !dbg !489
  store i32 0, ptr %225, align 4, !dbg !490
  %226 = load ptr, ptr %6, align 8, !dbg !491
  %227 = getelementptr inbounds nuw %struct.bz_stream, ptr %226, i32 0, i32 3, !dbg !492
  store i32 0, ptr %227, align 8, !dbg !493
  %228 = load ptr, ptr %6, align 8, !dbg !494
  %229 = getelementptr inbounds nuw %struct.bz_stream, ptr %228, i32 0, i32 6, !dbg !495
  store i32 0, ptr %229, align 4, !dbg !496
  %230 = load ptr, ptr %6, align 8, !dbg !497
  %231 = getelementptr inbounds nuw %struct.bz_stream, ptr %230, i32 0, i32 7, !dbg !498
  store i32 0, ptr %231, align 8, !dbg !499
  %232 = load ptr, ptr %11, align 8, !dbg !500
  call void @init_RL(ptr noundef %232), !dbg !501
  %233 = load ptr, ptr %11, align 8, !dbg !502
  call void @prepare_new_block(ptr noundef %233), !dbg !503
  store i32 0, ptr %5, align 4, !dbg !504
  br label %234, !dbg !504

234:                                              ; preds = %181, %180, %61, %30, %14
  %235 = load i32, ptr %5, align 4, !dbg !505
  ret i32 %235, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bz_config_ok() #0 !dbg !506 {
  ret i32 1, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @default_bzalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !510 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !513, !DIExpression(), !514)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !515, !DIExpression(), !516)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !517, !DIExpression(), !518)
    #dbg_declare(ptr %7, !519, !DIExpression(), !520)
  %8 = load i32, ptr %5, align 4, !dbg !521
  %9 = load i32, ptr %6, align 4, !dbg !522
  %10 = mul nsw i32 %8, %9, !dbg !523
  %11 = sext i32 %10 to i64, !dbg !521
  %12 = call noalias ptr @malloc(i64 noundef %11) #10, !dbg !524
  store ptr %12, ptr %7, align 8, !dbg !520
  %13 = load ptr, ptr %7, align 8, !dbg !525
  ret ptr %13, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_bzfree(ptr noundef %0, ptr noundef %1) #0 !dbg !527 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !528, !DIExpression(), !529)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !530, !DIExpression(), !531)
  %5 = load ptr, ptr %4, align 8, !dbg !532
  %6 = icmp ne ptr %5, null, !dbg !534
  br i1 %6, label %7, label %9, !dbg !534

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !dbg !535
  call void @free(ptr noundef %8) #8, !dbg !536
  br label %9, !dbg !536

9:                                                ; preds = %7, %2
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_RL(ptr noundef %0) #0 !dbg !538 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !541, !DIExpression(), !542)
  %3 = load ptr, ptr %2, align 8, !dbg !543
  %4 = getelementptr inbounds nuw %struct.EState, ptr %3, i32 0, i32 13, !dbg !544
  store i32 256, ptr %4, align 4, !dbg !545
  %5 = load ptr, ptr %2, align 8, !dbg !546
  %6 = getelementptr inbounds nuw %struct.EState, ptr %5, i32 0, i32 14, !dbg !547
  store i32 0, ptr %6, align 8, !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_new_block(ptr noundef %0) #0 !dbg !550 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !551, !DIExpression(), !552)
    #dbg_declare(ptr %3, !553, !DIExpression(), !554)
  %4 = load ptr, ptr %2, align 8, !dbg !555
  %5 = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 17, !dbg !556
  store i32 0, ptr %5, align 4, !dbg !557
  %6 = load ptr, ptr %2, align 8, !dbg !558
  %7 = getelementptr inbounds nuw %struct.EState, ptr %6, i32 0, i32 19, !dbg !559
  store i32 0, ptr %7, align 4, !dbg !560
  %8 = load ptr, ptr %2, align 8, !dbg !561
  %9 = getelementptr inbounds nuw %struct.EState, ptr %8, i32 0, i32 20, !dbg !562
  store i32 0, ptr %9, align 8, !dbg !563
  %10 = load ptr, ptr %2, align 8, !dbg !564
  %11 = getelementptr inbounds nuw %struct.EState, ptr %10, i32 0, i32 26, !dbg !564
  store i32 -1, ptr %11, align 8, !dbg !564
  store i32 0, ptr %3, align 4, !dbg !566
  br label %12, !dbg !568

12:                                               ; preds = %21, %1
  %13 = load i32, ptr %3, align 4, !dbg !569
  %14 = icmp slt i32 %13, 256, !dbg !571
  br i1 %14, label %15, label %24, !dbg !572

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !dbg !573
  %17 = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 22, !dbg !574
  %18 = load i32, ptr %3, align 4, !dbg !575
  %19 = sext i32 %18 to i64, !dbg !573
  %20 = getelementptr inbounds [256 x i8], ptr %17, i64 0, i64 %19, !dbg !573
  store i8 0, ptr %20, align 1, !dbg !576
  br label %21, !dbg !573

21:                                               ; preds = %15
  %22 = load i32, ptr %3, align 4, !dbg !577
  %23 = add nsw i32 %22, 1, !dbg !577
  store i32 %23, ptr %3, align 4, !dbg !577
  br label %12, !dbg !578, !llvm.loop !579

24:                                               ; preds = %12
  %25 = load ptr, ptr %2, align 8, !dbg !582
  %26 = getelementptr inbounds nuw %struct.EState, ptr %25, i32 0, i32 29, !dbg !583
  %27 = load i32, ptr %26, align 4, !dbg !584
  %28 = add nsw i32 %27, 1, !dbg !584
  store i32 %28, ptr %26, align 4, !dbg !584
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzCompress(ptr noundef %0, i32 noundef %1) #0 !dbg !586 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !589, !DIExpression(), !590)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !591, !DIExpression(), !592)
    #dbg_declare(ptr %6, !593, !DIExpression(), !594)
    #dbg_declare(ptr %7, !595, !DIExpression(), !596)
  %8 = load ptr, ptr %4, align 8, !dbg !597
  %9 = icmp eq ptr %8, null, !dbg !599
  br i1 %9, label %10, label %11, !dbg !599

10:                                               ; preds = %2
  store i32 -2, ptr %3, align 4, !dbg !600
  br label %146, !dbg !600

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !601
  %13 = getelementptr inbounds nuw %struct.bz_stream, ptr %12, i32 0, i32 8, !dbg !602
  %14 = load ptr, ptr %13, align 8, !dbg !602
  store ptr %14, ptr %7, align 8, !dbg !603
  %15 = load ptr, ptr %7, align 8, !dbg !604
  %16 = icmp eq ptr %15, null, !dbg !606
  br i1 %16, label %17, label %18, !dbg !606

17:                                               ; preds = %11
  store i32 -2, ptr %3, align 4, !dbg !607
  br label %146, !dbg !607

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 8, !dbg !608
  %20 = getelementptr inbounds nuw %struct.EState, ptr %19, i32 0, i32 0, !dbg !610
  %21 = load ptr, ptr %20, align 8, !dbg !610
  %22 = load ptr, ptr %4, align 8, !dbg !611
  %23 = icmp ne ptr %21, %22, !dbg !612
  br i1 %23, label %24, label %25, !dbg !612

24:                                               ; preds = %18
  store i32 -2, ptr %3, align 4, !dbg !613
  br label %146, !dbg !613

25:                                               ; preds = %18
  br label %26, !dbg !611

26:                                               ; preds = %56, %45, %25
    #dbg_label(!614, !615)
  %27 = load ptr, ptr %7, align 8, !dbg !616
  %28 = getelementptr inbounds nuw %struct.EState, ptr %27, i32 0, i32 1, !dbg !617
  %29 = load i32, ptr %28, align 8, !dbg !617
  switch i32 %29, label %145 [
    i32 1, label %30
    i32 2, label %31
    i32 3, label %65
    i32 4, label %103
  ], !dbg !618

30:                                               ; preds = %26
  store i32 -1, ptr %3, align 4, !dbg !619
  br label %146, !dbg !619

31:                                               ; preds = %26
  %32 = load i32, ptr %5, align 4, !dbg !621
  %33 = icmp eq i32 %32, 0, !dbg !623
  br i1 %33, label %34, label %42, !dbg !623

34:                                               ; preds = %31
  %35 = load ptr, ptr %4, align 8, !dbg !624
  %36 = call zeroext i8 @handle_compress(ptr noundef %35), !dbg !626
  store i8 %36, ptr %6, align 1, !dbg !627
  %37 = load i8, ptr %6, align 1, !dbg !628
  %38 = zext i8 %37 to i32, !dbg !628
  %39 = icmp ne i32 %38, 0, !dbg !628
  %40 = zext i1 %39 to i64, !dbg !628
  %41 = select i1 %39, i32 1, i32 -2, !dbg !628
  store i32 %41, ptr %3, align 4, !dbg !629
  br label %146, !dbg !629

42:                                               ; preds = %31
  %43 = load i32, ptr %5, align 4, !dbg !630
  %44 = icmp eq i32 %43, 1, !dbg !632
  br i1 %44, label %45, label %53, !dbg !632

45:                                               ; preds = %42
  %46 = load ptr, ptr %4, align 8, !dbg !633
  %47 = getelementptr inbounds nuw %struct.bz_stream, ptr %46, i32 0, i32 1, !dbg !635
  %48 = load i32, ptr %47, align 8, !dbg !635
  %49 = load ptr, ptr %7, align 8, !dbg !636
  %50 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 3, !dbg !637
  store i32 %48, ptr %50, align 8, !dbg !638
  %51 = load ptr, ptr %7, align 8, !dbg !639
  %52 = getelementptr inbounds nuw %struct.EState, ptr %51, i32 0, i32 1, !dbg !640
  store i32 3, ptr %52, align 8, !dbg !641
  br label %26, !dbg !642

53:                                               ; preds = %42
  %54 = load i32, ptr %5, align 4, !dbg !643
  %55 = icmp eq i32 %54, 2, !dbg !645
  br i1 %55, label %56, label %64, !dbg !645

56:                                               ; preds = %53
  %57 = load ptr, ptr %4, align 8, !dbg !646
  %58 = getelementptr inbounds nuw %struct.bz_stream, ptr %57, i32 0, i32 1, !dbg !648
  %59 = load i32, ptr %58, align 8, !dbg !648
  %60 = load ptr, ptr %7, align 8, !dbg !649
  %61 = getelementptr inbounds nuw %struct.EState, ptr %60, i32 0, i32 3, !dbg !650
  store i32 %59, ptr %61, align 8, !dbg !651
  %62 = load ptr, ptr %7, align 8, !dbg !652
  %63 = getelementptr inbounds nuw %struct.EState, ptr %62, i32 0, i32 1, !dbg !653
  store i32 4, ptr %63, align 8, !dbg !654
  br label %26, !dbg !655

64:                                               ; preds = %53
  store i32 -2, ptr %3, align 4, !dbg !656
  br label %146, !dbg !656

65:                                               ; preds = %26
  %66 = load i32, ptr %5, align 4, !dbg !657
  %67 = icmp ne i32 %66, 1, !dbg !659
  br i1 %67, label %68, label %69, !dbg !659

68:                                               ; preds = %65
  store i32 -1, ptr %3, align 4, !dbg !660
  br label %146, !dbg !660

69:                                               ; preds = %65
  %70 = load ptr, ptr %7, align 8, !dbg !661
  %71 = getelementptr inbounds nuw %struct.EState, ptr %70, i32 0, i32 3, !dbg !663
  %72 = load i32, ptr %71, align 8, !dbg !663
  %73 = load ptr, ptr %7, align 8, !dbg !664
  %74 = getelementptr inbounds nuw %struct.EState, ptr %73, i32 0, i32 0, !dbg !665
  %75 = load ptr, ptr %74, align 8, !dbg !665
  %76 = getelementptr inbounds nuw %struct.bz_stream, ptr %75, i32 0, i32 1, !dbg !666
  %77 = load i32, ptr %76, align 8, !dbg !666
  %78 = icmp ne i32 %72, %77, !dbg !667
  br i1 %78, label %79, label %80, !dbg !667

79:                                               ; preds = %69
  store i32 -1, ptr %3, align 4, !dbg !668
  br label %146, !dbg !668

80:                                               ; preds = %69
  %81 = load ptr, ptr %4, align 8, !dbg !669
  %82 = call zeroext i8 @handle_compress(ptr noundef %81), !dbg !670
  store i8 %82, ptr %6, align 1, !dbg !671
  %83 = load ptr, ptr %7, align 8, !dbg !672
  %84 = getelementptr inbounds nuw %struct.EState, ptr %83, i32 0, i32 3, !dbg !674
  %85 = load i32, ptr %84, align 8, !dbg !674
  %86 = icmp ugt i32 %85, 0, !dbg !675
  br i1 %86, label %99, label %87, !dbg !676

87:                                               ; preds = %80
  %88 = load ptr, ptr %7, align 8, !dbg !677
  %89 = call zeroext i8 @isempty_RL(ptr noundef %88), !dbg !678
  %90 = icmp ne i8 %89, 0, !dbg !678
  br i1 %90, label %91, label %99, !dbg !679

91:                                               ; preds = %87
  %92 = load ptr, ptr %7, align 8, !dbg !680
  %93 = getelementptr inbounds nuw %struct.EState, ptr %92, i32 0, i32 20, !dbg !681
  %94 = load i32, ptr %93, align 8, !dbg !681
  %95 = load ptr, ptr %7, align 8, !dbg !682
  %96 = getelementptr inbounds nuw %struct.EState, ptr %95, i32 0, i32 19, !dbg !683
  %97 = load i32, ptr %96, align 4, !dbg !683
  %98 = icmp slt i32 %94, %97, !dbg !684
  br i1 %98, label %99, label %100, !dbg !679

99:                                               ; preds = %91, %87, %80
  store i32 2, ptr %3, align 4, !dbg !685
  br label %146, !dbg !685

100:                                              ; preds = %91
  %101 = load ptr, ptr %7, align 8, !dbg !686
  %102 = getelementptr inbounds nuw %struct.EState, ptr %101, i32 0, i32 1, !dbg !687
  store i32 2, ptr %102, align 8, !dbg !688
  store i32 1, ptr %3, align 4, !dbg !689
  br label %146, !dbg !689

103:                                              ; preds = %26
  %104 = load i32, ptr %5, align 4, !dbg !690
  %105 = icmp ne i32 %104, 2, !dbg !692
  br i1 %105, label %106, label %107, !dbg !692

106:                                              ; preds = %103
  store i32 -1, ptr %3, align 4, !dbg !693
  br label %146, !dbg !693

107:                                              ; preds = %103
  %108 = load ptr, ptr %7, align 8, !dbg !694
  %109 = getelementptr inbounds nuw %struct.EState, ptr %108, i32 0, i32 3, !dbg !696
  %110 = load i32, ptr %109, align 8, !dbg !696
  %111 = load ptr, ptr %7, align 8, !dbg !697
  %112 = getelementptr inbounds nuw %struct.EState, ptr %111, i32 0, i32 0, !dbg !698
  %113 = load ptr, ptr %112, align 8, !dbg !698
  %114 = getelementptr inbounds nuw %struct.bz_stream, ptr %113, i32 0, i32 1, !dbg !699
  %115 = load i32, ptr %114, align 8, !dbg !699
  %116 = icmp ne i32 %110, %115, !dbg !700
  br i1 %116, label %117, label %118, !dbg !700

117:                                              ; preds = %107
  store i32 -1, ptr %3, align 4, !dbg !701
  br label %146, !dbg !701

118:                                              ; preds = %107
  %119 = load ptr, ptr %4, align 8, !dbg !702
  %120 = call zeroext i8 @handle_compress(ptr noundef %119), !dbg !703
  store i8 %120, ptr %6, align 1, !dbg !704
  %121 = load i8, ptr %6, align 1, !dbg !705
  %122 = icmp ne i8 %121, 0, !dbg !705
  br i1 %122, label %124, label %123, !dbg !707

123:                                              ; preds = %118
  store i32 -1, ptr %3, align 4, !dbg !708
  br label %146, !dbg !708

124:                                              ; preds = %118
  %125 = load ptr, ptr %7, align 8, !dbg !709
  %126 = getelementptr inbounds nuw %struct.EState, ptr %125, i32 0, i32 3, !dbg !711
  %127 = load i32, ptr %126, align 8, !dbg !711
  %128 = icmp ugt i32 %127, 0, !dbg !712
  br i1 %128, label %141, label %129, !dbg !713

129:                                              ; preds = %124
  %130 = load ptr, ptr %7, align 8, !dbg !714
  %131 = call zeroext i8 @isempty_RL(ptr noundef %130), !dbg !715
  %132 = icmp ne i8 %131, 0, !dbg !715
  br i1 %132, label %133, label %141, !dbg !716

133:                                              ; preds = %129
  %134 = load ptr, ptr %7, align 8, !dbg !717
  %135 = getelementptr inbounds nuw %struct.EState, ptr %134, i32 0, i32 20, !dbg !718
  %136 = load i32, ptr %135, align 8, !dbg !718
  %137 = load ptr, ptr %7, align 8, !dbg !719
  %138 = getelementptr inbounds nuw %struct.EState, ptr %137, i32 0, i32 19, !dbg !720
  %139 = load i32, ptr %138, align 4, !dbg !720
  %140 = icmp slt i32 %136, %139, !dbg !721
  br i1 %140, label %141, label %142, !dbg !716

141:                                              ; preds = %133, %129, %124
  store i32 3, ptr %3, align 4, !dbg !722
  br label %146, !dbg !722

142:                                              ; preds = %133
  %143 = load ptr, ptr %7, align 8, !dbg !723
  %144 = getelementptr inbounds nuw %struct.EState, ptr %143, i32 0, i32 1, !dbg !724
  store i32 1, ptr %144, align 8, !dbg !725
  store i32 4, ptr %3, align 4, !dbg !726
  br label %146, !dbg !726

145:                                              ; preds = %26
  store i32 0, ptr %3, align 4, !dbg !727
  br label %146, !dbg !727

146:                                              ; preds = %145, %142, %141, %123, %117, %106, %100, %99, %79, %68, %64, %34, %30, %24, %17, %10
  %147 = load i32, ptr %3, align 4, !dbg !728
  ret i32 %147, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @handle_compress(ptr noundef %0) #0 !dbg !729 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !732, !DIExpression(), !733)
    #dbg_declare(ptr %3, !734, !DIExpression(), !735)
  store i8 0, ptr %3, align 1, !dbg !735
    #dbg_declare(ptr %4, !736, !DIExpression(), !737)
  store i8 0, ptr %4, align 1, !dbg !737
    #dbg_declare(ptr %5, !738, !DIExpression(), !739)
  %6 = load ptr, ptr %2, align 8, !dbg !740
  %7 = getelementptr inbounds nuw %struct.bz_stream, ptr %6, i32 0, i32 8, !dbg !741
  %8 = load ptr, ptr %7, align 8, !dbg !741
  store ptr %8, ptr %5, align 8, !dbg !739
  br label %9, !dbg !742

9:                                                ; preds = %1, %122
  %10 = load ptr, ptr %5, align 8, !dbg !743
  %11 = getelementptr inbounds nuw %struct.EState, ptr %10, i32 0, i32 2, !dbg !746
  %12 = load i32, ptr %11, align 4, !dbg !746
  %13 = icmp eq i32 %12, 1, !dbg !747
  br i1 %13, label %14, label %66, !dbg !747

14:                                               ; preds = %9
  %15 = load ptr, ptr %5, align 8, !dbg !748
  %16 = call zeroext i8 @copy_output_until_stop(ptr noundef %15), !dbg !750
  %17 = zext i8 %16 to i32, !dbg !750
  %18 = load i8, ptr %4, align 1, !dbg !751
  %19 = zext i8 %18 to i32, !dbg !751
  %20 = or i32 %19, %17, !dbg !751
  %21 = trunc i32 %20 to i8, !dbg !751
  store i8 %21, ptr %4, align 1, !dbg !751
  %22 = load ptr, ptr %5, align 8, !dbg !752
  %23 = getelementptr inbounds nuw %struct.EState, ptr %22, i32 0, i32 20, !dbg !754
  %24 = load i32, ptr %23, align 8, !dbg !754
  %25 = load ptr, ptr %5, align 8, !dbg !755
  %26 = getelementptr inbounds nuw %struct.EState, ptr %25, i32 0, i32 19, !dbg !756
  %27 = load i32, ptr %26, align 4, !dbg !756
  %28 = icmp slt i32 %24, %27, !dbg !757
  br i1 %28, label %29, label %30, !dbg !757

29:                                               ; preds = %14
  br label %123, !dbg !758

30:                                               ; preds = %14
  %31 = load ptr, ptr %5, align 8, !dbg !759
  %32 = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 1, !dbg !761
  %33 = load i32, ptr %32, align 8, !dbg !761
  %34 = icmp eq i32 %33, 4, !dbg !762
  br i1 %34, label %35, label %46, !dbg !763

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8, !dbg !764
  %37 = getelementptr inbounds nuw %struct.EState, ptr %36, i32 0, i32 3, !dbg !765
  %38 = load i32, ptr %37, align 8, !dbg !765
  %39 = icmp eq i32 %38, 0, !dbg !766
  br i1 %39, label %40, label %46, !dbg !767

40:                                               ; preds = %35
  %41 = load ptr, ptr %5, align 8, !dbg !768
  %42 = call zeroext i8 @isempty_RL(ptr noundef %41), !dbg !769
  %43 = zext i8 %42 to i32, !dbg !769
  %44 = icmp ne i32 %43, 0, !dbg !769
  br i1 %44, label %45, label %46, !dbg !767

45:                                               ; preds = %40
  br label %123, !dbg !770

46:                                               ; preds = %40, %35, %30
  %47 = load ptr, ptr %5, align 8, !dbg !771
  call void @prepare_new_block(ptr noundef %47), !dbg !772
  %48 = load ptr, ptr %5, align 8, !dbg !773
  %49 = getelementptr inbounds nuw %struct.EState, ptr %48, i32 0, i32 2, !dbg !774
  store i32 2, ptr %49, align 4, !dbg !775
  %50 = load ptr, ptr %5, align 8, !dbg !776
  %51 = getelementptr inbounds nuw %struct.EState, ptr %50, i32 0, i32 1, !dbg !778
  %52 = load i32, ptr %51, align 8, !dbg !778
  %53 = icmp eq i32 %52, 3, !dbg !779
  br i1 %53, label %54, label %65, !dbg !780

54:                                               ; preds = %46
  %55 = load ptr, ptr %5, align 8, !dbg !781
  %56 = getelementptr inbounds nuw %struct.EState, ptr %55, i32 0, i32 3, !dbg !782
  %57 = load i32, ptr %56, align 8, !dbg !782
  %58 = icmp eq i32 %57, 0, !dbg !783
  br i1 %58, label %59, label %65, !dbg !784

59:                                               ; preds = %54
  %60 = load ptr, ptr %5, align 8, !dbg !785
  %61 = call zeroext i8 @isempty_RL(ptr noundef %60), !dbg !786
  %62 = zext i8 %61 to i32, !dbg !786
  %63 = icmp ne i32 %62, 0, !dbg !786
  br i1 %63, label %64, label %65, !dbg !784

64:                                               ; preds = %59
  br label %123, !dbg !787

65:                                               ; preds = %59, %54, %46
  br label %66, !dbg !788

66:                                               ; preds = %65, %9
  %67 = load ptr, ptr %5, align 8, !dbg !789
  %68 = getelementptr inbounds nuw %struct.EState, ptr %67, i32 0, i32 2, !dbg !791
  %69 = load i32, ptr %68, align 4, !dbg !791
  %70 = icmp eq i32 %69, 2, !dbg !792
  br i1 %70, label %71, label %122, !dbg !792

71:                                               ; preds = %66
  %72 = load ptr, ptr %5, align 8, !dbg !793
  %73 = call zeroext i8 @copy_input_until_stop(ptr noundef %72), !dbg !795
  %74 = zext i8 %73 to i32, !dbg !795
  %75 = load i8, ptr %3, align 1, !dbg !796
  %76 = zext i8 %75 to i32, !dbg !796
  %77 = or i32 %76, %74, !dbg !796
  %78 = trunc i32 %77 to i8, !dbg !796
  store i8 %78, ptr %3, align 1, !dbg !796
  %79 = load ptr, ptr %5, align 8, !dbg !797
  %80 = getelementptr inbounds nuw %struct.EState, ptr %79, i32 0, i32 1, !dbg !799
  %81 = load i32, ptr %80, align 8, !dbg !799
  %82 = icmp ne i32 %81, 2, !dbg !800
  br i1 %82, label %83, label %99, !dbg !801

83:                                               ; preds = %71
  %84 = load ptr, ptr %5, align 8, !dbg !802
  %85 = getelementptr inbounds nuw %struct.EState, ptr %84, i32 0, i32 3, !dbg !803
  %86 = load i32, ptr %85, align 8, !dbg !803
  %87 = icmp eq i32 %86, 0, !dbg !804
  br i1 %87, label %88, label %99, !dbg !801

88:                                               ; preds = %83
  %89 = load ptr, ptr %5, align 8, !dbg !805
  call void @flush_RL(ptr noundef %89), !dbg !807
  %90 = load ptr, ptr %5, align 8, !dbg !808
  %91 = load ptr, ptr %5, align 8, !dbg !809
  %92 = getelementptr inbounds nuw %struct.EState, ptr %91, i32 0, i32 1, !dbg !810
  %93 = load i32, ptr %92, align 8, !dbg !810
  %94 = icmp eq i32 %93, 4, !dbg !811
  %95 = zext i1 %94 to i32, !dbg !811
  %96 = trunc i32 %95 to i8, !dbg !812
  call void @BZ2_compressBlock(ptr noundef %90, i8 noundef zeroext %96), !dbg !813
  %97 = load ptr, ptr %5, align 8, !dbg !814
  %98 = getelementptr inbounds nuw %struct.EState, ptr %97, i32 0, i32 2, !dbg !815
  store i32 1, ptr %98, align 4, !dbg !816
  br label %121, !dbg !817

99:                                               ; preds = %83, %71
  %100 = load ptr, ptr %5, align 8, !dbg !818
  %101 = getelementptr inbounds nuw %struct.EState, ptr %100, i32 0, i32 17, !dbg !820
  %102 = load i32, ptr %101, align 4, !dbg !820
  %103 = load ptr, ptr %5, align 8, !dbg !821
  %104 = getelementptr inbounds nuw %struct.EState, ptr %103, i32 0, i32 18, !dbg !822
  %105 = load i32, ptr %104, align 8, !dbg !822
  %106 = icmp sge i32 %102, %105, !dbg !823
  br i1 %106, label %107, label %111, !dbg !823

107:                                              ; preds = %99
  %108 = load ptr, ptr %5, align 8, !dbg !824
  call void @BZ2_compressBlock(ptr noundef %108, i8 noundef zeroext 0), !dbg !826
  %109 = load ptr, ptr %5, align 8, !dbg !827
  %110 = getelementptr inbounds nuw %struct.EState, ptr %109, i32 0, i32 2, !dbg !828
  store i32 1, ptr %110, align 4, !dbg !829
  br label %120, !dbg !830

111:                                              ; preds = %99
  %112 = load ptr, ptr %5, align 8, !dbg !831
  %113 = getelementptr inbounds nuw %struct.EState, ptr %112, i32 0, i32 0, !dbg !833
  %114 = load ptr, ptr %113, align 8, !dbg !833
  %115 = getelementptr inbounds nuw %struct.bz_stream, ptr %114, i32 0, i32 1, !dbg !834
  %116 = load i32, ptr %115, align 8, !dbg !834
  %117 = icmp eq i32 %116, 0, !dbg !835
  br i1 %117, label %118, label %119, !dbg !835

118:                                              ; preds = %111
  br label %123, !dbg !836

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %107
  br label %121

121:                                              ; preds = %120, %88
  br label %122, !dbg !838

122:                                              ; preds = %121, %66
  br label %9, !dbg !742, !llvm.loop !839

123:                                              ; preds = %118, %64, %45, %29
  %124 = load i8, ptr %3, align 1, !dbg !841
  %125 = zext i8 %124 to i32, !dbg !841
  %126 = icmp ne i32 %125, 0, !dbg !841
  br i1 %126, label %131, label %127, !dbg !842

127:                                              ; preds = %123
  %128 = load i8, ptr %4, align 1, !dbg !843
  %129 = zext i8 %128 to i32, !dbg !843
  %130 = icmp ne i32 %129, 0, !dbg !842
  br label %131, !dbg !842

131:                                              ; preds = %127, %123
  %132 = phi i1 [ true, %123 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32, !dbg !842
  %134 = trunc i32 %133 to i8, !dbg !841
  ret i8 %134, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @isempty_RL(ptr noundef %0) #0 !dbg !845 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !848, !DIExpression(), !849)
  %4 = load ptr, ptr %3, align 8, !dbg !850
  %5 = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 13, !dbg !852
  %6 = load i32, ptr %5, align 4, !dbg !852
  %7 = icmp ult i32 %6, 256, !dbg !853
  br i1 %7, label %8, label %14, !dbg !854

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !855
  %10 = getelementptr inbounds nuw %struct.EState, ptr %9, i32 0, i32 14, !dbg !856
  %11 = load i32, ptr %10, align 8, !dbg !856
  %12 = icmp sgt i32 %11, 0, !dbg !857
  br i1 %12, label %13, label %14, !dbg !854

13:                                               ; preds = %8
  store i8 0, ptr %2, align 1, !dbg !858
  br label %15, !dbg !858

14:                                               ; preds = %8, %1
  store i8 1, ptr %2, align 1, !dbg !859
  br label %15, !dbg !859

15:                                               ; preds = %14, %13
  %16 = load i8, ptr %2, align 1, !dbg !860
  ret i8 %16, !dbg !860
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzCompressEnd(ptr noundef %0) #0 !dbg !861 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !864, !DIExpression(), !865)
    #dbg_declare(ptr %4, !866, !DIExpression(), !867)
  %5 = load ptr, ptr %3, align 8, !dbg !868
  %6 = icmp eq ptr %5, null, !dbg !870
  br i1 %6, label %7, label %8, !dbg !870

7:                                                ; preds = %1
  store i32 -2, ptr %2, align 4, !dbg !871
  br label %79, !dbg !871

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !872
  %10 = getelementptr inbounds nuw %struct.bz_stream, ptr %9, i32 0, i32 8, !dbg !873
  %11 = load ptr, ptr %10, align 8, !dbg !873
  store ptr %11, ptr %4, align 8, !dbg !874
  %12 = load ptr, ptr %4, align 8, !dbg !875
  %13 = icmp eq ptr %12, null, !dbg !877
  br i1 %13, label %14, label %15, !dbg !877

14:                                               ; preds = %8
  store i32 -2, ptr %2, align 4, !dbg !878
  br label %79, !dbg !878

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8, !dbg !879
  %17 = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 0, !dbg !881
  %18 = load ptr, ptr %17, align 8, !dbg !881
  %19 = load ptr, ptr %3, align 8, !dbg !882
  %20 = icmp ne ptr %18, %19, !dbg !883
  br i1 %20, label %21, label %22, !dbg !883

21:                                               ; preds = %15
  store i32 -2, ptr %2, align 4, !dbg !884
  br label %79, !dbg !884

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 8, !dbg !885
  %24 = getelementptr inbounds nuw %struct.EState, ptr %23, i32 0, i32 4, !dbg !887
  %25 = load ptr, ptr %24, align 8, !dbg !887
  %26 = icmp ne ptr %25, null, !dbg !888
  br i1 %26, label %27, label %37, !dbg !888

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 8, !dbg !889
  %29 = getelementptr inbounds nuw %struct.bz_stream, ptr %28, i32 0, i32 10, !dbg !889
  %30 = load ptr, ptr %29, align 8, !dbg !889
  %31 = load ptr, ptr %3, align 8, !dbg !889
  %32 = getelementptr inbounds nuw %struct.bz_stream, ptr %31, i32 0, i32 11, !dbg !889
  %33 = load ptr, ptr %32, align 8, !dbg !889
  %34 = load ptr, ptr %4, align 8, !dbg !889
  %35 = getelementptr inbounds nuw %struct.EState, ptr %34, i32 0, i32 4, !dbg !889
  %36 = load ptr, ptr %35, align 8, !dbg !889
  call void %30(ptr noundef %33, ptr noundef %36), !dbg !889
  br label %37, !dbg !889

37:                                               ; preds = %27, %22
  %38 = load ptr, ptr %4, align 8, !dbg !890
  %39 = getelementptr inbounds nuw %struct.EState, ptr %38, i32 0, i32 5, !dbg !892
  %40 = load ptr, ptr %39, align 8, !dbg !892
  %41 = icmp ne ptr %40, null, !dbg !893
  br i1 %41, label %42, label %52, !dbg !893

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 8, !dbg !894
  %44 = getelementptr inbounds nuw %struct.bz_stream, ptr %43, i32 0, i32 10, !dbg !894
  %45 = load ptr, ptr %44, align 8, !dbg !894
  %46 = load ptr, ptr %3, align 8, !dbg !894
  %47 = getelementptr inbounds nuw %struct.bz_stream, ptr %46, i32 0, i32 11, !dbg !894
  %48 = load ptr, ptr %47, align 8, !dbg !894
  %49 = load ptr, ptr %4, align 8, !dbg !894
  %50 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 5, !dbg !894
  %51 = load ptr, ptr %50, align 8, !dbg !894
  call void %45(ptr noundef %48, ptr noundef %51), !dbg !894
  br label %52, !dbg !894

52:                                               ; preds = %42, %37
  %53 = load ptr, ptr %4, align 8, !dbg !895
  %54 = getelementptr inbounds nuw %struct.EState, ptr %53, i32 0, i32 6, !dbg !897
  %55 = load ptr, ptr %54, align 8, !dbg !897
  %56 = icmp ne ptr %55, null, !dbg !898
  br i1 %56, label %57, label %67, !dbg !898

57:                                               ; preds = %52
  %58 = load ptr, ptr %3, align 8, !dbg !899
  %59 = getelementptr inbounds nuw %struct.bz_stream, ptr %58, i32 0, i32 10, !dbg !899
  %60 = load ptr, ptr %59, align 8, !dbg !899
  %61 = load ptr, ptr %3, align 8, !dbg !899
  %62 = getelementptr inbounds nuw %struct.bz_stream, ptr %61, i32 0, i32 11, !dbg !899
  %63 = load ptr, ptr %62, align 8, !dbg !899
  %64 = load ptr, ptr %4, align 8, !dbg !899
  %65 = getelementptr inbounds nuw %struct.EState, ptr %64, i32 0, i32 6, !dbg !899
  %66 = load ptr, ptr %65, align 8, !dbg !899
  call void %60(ptr noundef %63, ptr noundef %66), !dbg !899
  br label %67, !dbg !899

67:                                               ; preds = %57, %52
  %68 = load ptr, ptr %3, align 8, !dbg !900
  %69 = getelementptr inbounds nuw %struct.bz_stream, ptr %68, i32 0, i32 10, !dbg !900
  %70 = load ptr, ptr %69, align 8, !dbg !900
  %71 = load ptr, ptr %3, align 8, !dbg !900
  %72 = getelementptr inbounds nuw %struct.bz_stream, ptr %71, i32 0, i32 11, !dbg !900
  %73 = load ptr, ptr %72, align 8, !dbg !900
  %74 = load ptr, ptr %3, align 8, !dbg !900
  %75 = getelementptr inbounds nuw %struct.bz_stream, ptr %74, i32 0, i32 8, !dbg !900
  %76 = load ptr, ptr %75, align 8, !dbg !900
  call void %70(ptr noundef %73, ptr noundef %76), !dbg !900
  %77 = load ptr, ptr %3, align 8, !dbg !901
  %78 = getelementptr inbounds nuw %struct.bz_stream, ptr %77, i32 0, i32 8, !dbg !902
  store ptr null, ptr %78, align 8, !dbg !903
  store i32 0, ptr %2, align 4, !dbg !904
  br label %79, !dbg !904

79:                                               ; preds = %67, %21, %14, %7
  %80 = load i32, ptr %2, align 4, !dbg !905
  ret i32 %80, !dbg !905
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzDecompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !906 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !909, !DIExpression(), !910)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !911, !DIExpression(), !912)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !913, !DIExpression(), !914)
    #dbg_declare(ptr %8, !915, !DIExpression(), !996)
  %9 = call i32 @bz_config_ok(), !dbg !997
  %10 = icmp ne i32 %9, 0, !dbg !997
  br i1 %10, label %12, label %11, !dbg !999

11:                                               ; preds = %3
  store i32 -9, ptr %4, align 4, !dbg !1000
  br label %95, !dbg !1000

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !1001
  %14 = icmp eq ptr %13, null, !dbg !1003
  br i1 %14, label %15, label %16, !dbg !1003

15:                                               ; preds = %12
  store i32 -2, ptr %4, align 4, !dbg !1004
  br label %95, !dbg !1004

16:                                               ; preds = %12
  %17 = load i32, ptr %7, align 4, !dbg !1005
  %18 = icmp ne i32 %17, 0, !dbg !1007
  br i1 %18, label %19, label %23, !dbg !1008

19:                                               ; preds = %16
  %20 = load i32, ptr %7, align 4, !dbg !1009
  %21 = icmp ne i32 %20, 1, !dbg !1010
  br i1 %21, label %22, label %23, !dbg !1008

22:                                               ; preds = %19
  store i32 -2, ptr %4, align 4, !dbg !1011
  br label %95, !dbg !1011

23:                                               ; preds = %19, %16
  %24 = load i32, ptr %6, align 4, !dbg !1012
  %25 = icmp slt i32 %24, 0, !dbg !1014
  br i1 %25, label %29, label %26, !dbg !1015

26:                                               ; preds = %23
  %27 = load i32, ptr %6, align 4, !dbg !1016
  %28 = icmp sgt i32 %27, 4, !dbg !1017
  br i1 %28, label %29, label %30, !dbg !1015

29:                                               ; preds = %26, %23
  store i32 -2, ptr %4, align 4, !dbg !1018
  br label %95, !dbg !1018

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 8, !dbg !1019
  %32 = getelementptr inbounds nuw %struct.bz_stream, ptr %31, i32 0, i32 9, !dbg !1021
  %33 = load ptr, ptr %32, align 8, !dbg !1021
  %34 = icmp eq ptr %33, null, !dbg !1022
  br i1 %34, label %35, label %38, !dbg !1022

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8, !dbg !1023
  %37 = getelementptr inbounds nuw %struct.bz_stream, ptr %36, i32 0, i32 9, !dbg !1024
  store ptr @default_bzalloc, ptr %37, align 8, !dbg !1025
  br label %38, !dbg !1023

38:                                               ; preds = %35, %30
  %39 = load ptr, ptr %5, align 8, !dbg !1026
  %40 = getelementptr inbounds nuw %struct.bz_stream, ptr %39, i32 0, i32 10, !dbg !1028
  %41 = load ptr, ptr %40, align 8, !dbg !1028
  %42 = icmp eq ptr %41, null, !dbg !1029
  br i1 %42, label %43, label %46, !dbg !1029

43:                                               ; preds = %38
  %44 = load ptr, ptr %5, align 8, !dbg !1030
  %45 = getelementptr inbounds nuw %struct.bz_stream, ptr %44, i32 0, i32 10, !dbg !1031
  store ptr @default_bzfree, ptr %45, align 8, !dbg !1032
  br label %46, !dbg !1030

46:                                               ; preds = %43, %38
  %47 = load ptr, ptr %5, align 8, !dbg !1033
  %48 = getelementptr inbounds nuw %struct.bz_stream, ptr %47, i32 0, i32 9, !dbg !1033
  %49 = load ptr, ptr %48, align 8, !dbg !1033
  %50 = load ptr, ptr %5, align 8, !dbg !1033
  %51 = getelementptr inbounds nuw %struct.bz_stream, ptr %50, i32 0, i32 11, !dbg !1033
  %52 = load ptr, ptr %51, align 8, !dbg !1033
  %53 = call ptr %49(ptr noundef %52, i32 noundef 64144, i32 noundef 1), !dbg !1033
  store ptr %53, ptr %8, align 8, !dbg !1034
  %54 = load ptr, ptr %8, align 8, !dbg !1035
  %55 = icmp eq ptr %54, null, !dbg !1037
  br i1 %55, label %56, label %57, !dbg !1037

56:                                               ; preds = %46
  store i32 -3, ptr %4, align 4, !dbg !1038
  br label %95, !dbg !1038

57:                                               ; preds = %46
  %58 = load ptr, ptr %5, align 8, !dbg !1039
  %59 = load ptr, ptr %8, align 8, !dbg !1040
  %60 = getelementptr inbounds nuw %struct.DState, ptr %59, i32 0, i32 0, !dbg !1041
  store ptr %58, ptr %60, align 8, !dbg !1042
  %61 = load ptr, ptr %8, align 8, !dbg !1043
  %62 = load ptr, ptr %5, align 8, !dbg !1044
  %63 = getelementptr inbounds nuw %struct.bz_stream, ptr %62, i32 0, i32 8, !dbg !1045
  store ptr %61, ptr %63, align 8, !dbg !1046
  %64 = load ptr, ptr %8, align 8, !dbg !1047
  %65 = getelementptr inbounds nuw %struct.DState, ptr %64, i32 0, i32 1, !dbg !1048
  store i32 10, ptr %65, align 8, !dbg !1049
  %66 = load ptr, ptr %8, align 8, !dbg !1050
  %67 = getelementptr inbounds nuw %struct.DState, ptr %66, i32 0, i32 8, !dbg !1051
  store i32 0, ptr %67, align 4, !dbg !1052
  %68 = load ptr, ptr %8, align 8, !dbg !1053
  %69 = getelementptr inbounds nuw %struct.DState, ptr %68, i32 0, i32 7, !dbg !1054
  store i32 0, ptr %69, align 8, !dbg !1055
  %70 = load ptr, ptr %8, align 8, !dbg !1056
  %71 = getelementptr inbounds nuw %struct.DState, ptr %70, i32 0, i32 26, !dbg !1057
  store i32 0, ptr %71, align 4, !dbg !1058
  %72 = load ptr, ptr %5, align 8, !dbg !1059
  %73 = getelementptr inbounds nuw %struct.bz_stream, ptr %72, i32 0, i32 2, !dbg !1060
  store i32 0, ptr %73, align 4, !dbg !1061
  %74 = load ptr, ptr %5, align 8, !dbg !1062
  %75 = getelementptr inbounds nuw %struct.bz_stream, ptr %74, i32 0, i32 3, !dbg !1063
  store i32 0, ptr %75, align 8, !dbg !1064
  %76 = load ptr, ptr %5, align 8, !dbg !1065
  %77 = getelementptr inbounds nuw %struct.bz_stream, ptr %76, i32 0, i32 6, !dbg !1066
  store i32 0, ptr %77, align 4, !dbg !1067
  %78 = load ptr, ptr %5, align 8, !dbg !1068
  %79 = getelementptr inbounds nuw %struct.bz_stream, ptr %78, i32 0, i32 7, !dbg !1069
  store i32 0, ptr %79, align 8, !dbg !1070
  %80 = load i32, ptr %7, align 4, !dbg !1071
  %81 = trunc i32 %80 to i8, !dbg !1072
  %82 = load ptr, ptr %8, align 8, !dbg !1073
  %83 = getelementptr inbounds nuw %struct.DState, ptr %82, i32 0, i32 10, !dbg !1074
  store i8 %81, ptr %83, align 4, !dbg !1075
  %84 = load ptr, ptr %8, align 8, !dbg !1076
  %85 = getelementptr inbounds nuw %struct.DState, ptr %84, i32 0, i32 22, !dbg !1077
  store ptr null, ptr %85, align 8, !dbg !1078
  %86 = load ptr, ptr %8, align 8, !dbg !1079
  %87 = getelementptr inbounds nuw %struct.DState, ptr %86, i32 0, i32 21, !dbg !1080
  store ptr null, ptr %87, align 8, !dbg !1081
  %88 = load ptr, ptr %8, align 8, !dbg !1082
  %89 = getelementptr inbounds nuw %struct.DState, ptr %88, i32 0, i32 20, !dbg !1083
  store ptr null, ptr %89, align 8, !dbg !1084
  %90 = load ptr, ptr %8, align 8, !dbg !1085
  %91 = getelementptr inbounds nuw %struct.DState, ptr %90, i32 0, i32 11, !dbg !1086
  store i32 0, ptr %91, align 8, !dbg !1087
  %92 = load i32, ptr %6, align 4, !dbg !1088
  %93 = load ptr, ptr %8, align 8, !dbg !1089
  %94 = getelementptr inbounds nuw %struct.DState, ptr %93, i32 0, i32 12, !dbg !1090
  store i32 %92, ptr %94, align 4, !dbg !1091
  store i32 0, ptr %4, align 4, !dbg !1092
  br label %95, !dbg !1092

95:                                               ; preds = %57, %56, %29, %22, %15, %11
  %96 = load i32, ptr %4, align 4, !dbg !1093
  ret i32 %96, !dbg !1093
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_indexIntoF(i32 noundef %0, ptr noundef %1) #0 !dbg !1094 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
    #dbg_declare(ptr %3, !1097, !DIExpression(), !1098)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1099, !DIExpression(), !1100)
    #dbg_declare(ptr %5, !1101, !DIExpression(), !1102)
    #dbg_declare(ptr %6, !1103, !DIExpression(), !1104)
    #dbg_declare(ptr %7, !1105, !DIExpression(), !1106)
  store i32 0, ptr %5, align 4, !dbg !1107
  store i32 256, ptr %6, align 4, !dbg !1108
  br label %8, !dbg !1109

8:                                                ; preds = %25, %2
  %9 = load i32, ptr %5, align 4, !dbg !1110
  %10 = load i32, ptr %6, align 4, !dbg !1112
  %11 = add nsw i32 %9, %10, !dbg !1113
  %12 = ashr i32 %11, 1, !dbg !1114
  store i32 %12, ptr %7, align 4, !dbg !1115
  %13 = load i32, ptr %3, align 4, !dbg !1116
  %14 = load ptr, ptr %4, align 8, !dbg !1118
  %15 = load i32, ptr %7, align 4, !dbg !1119
  %16 = sext i32 %15 to i64, !dbg !1118
  %17 = getelementptr inbounds i32, ptr %14, i64 %16, !dbg !1118
  %18 = load i32, ptr %17, align 4, !dbg !1118
  %19 = icmp sge i32 %13, %18, !dbg !1120
  br i1 %19, label %20, label %22, !dbg !1120

20:                                               ; preds = %8
  %21 = load i32, ptr %7, align 4, !dbg !1121
  store i32 %21, ptr %5, align 4, !dbg !1122
  br label %24, !dbg !1123

22:                                               ; preds = %8
  %23 = load i32, ptr %7, align 4, !dbg !1124
  store i32 %23, ptr %6, align 4, !dbg !1125
  br label %24

24:                                               ; preds = %22, %20
  br label %25, !dbg !1126

25:                                               ; preds = %24
  %26 = load i32, ptr %6, align 4, !dbg !1127
  %27 = load i32, ptr %5, align 4, !dbg !1128
  %28 = sub nsw i32 %26, %27, !dbg !1129
  %29 = icmp ne i32 %28, 1, !dbg !1130
  br i1 %29, label %8, label %30, !dbg !1126, !llvm.loop !1131

30:                                               ; preds = %25
  %31 = load i32, ptr %5, align 4, !dbg !1133
  ret i32 %31, !dbg !1134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzDecompress(ptr noundef %0) #0 !dbg !1135 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1136, !DIExpression(), !1137)
    #dbg_declare(ptr %4, !1138, !DIExpression(), !1139)
    #dbg_declare(ptr %5, !1140, !DIExpression(), !1141)
  %7 = load ptr, ptr %3, align 8, !dbg !1142
  %8 = icmp eq ptr %7, null, !dbg !1144
  br i1 %8, label %9, label %10, !dbg !1144

9:                                                ; preds = %1
  store i32 -2, ptr %2, align 4, !dbg !1145
  br label %169, !dbg !1145

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !1146
  %12 = getelementptr inbounds nuw %struct.bz_stream, ptr %11, i32 0, i32 8, !dbg !1147
  %13 = load ptr, ptr %12, align 8, !dbg !1147
  store ptr %13, ptr %5, align 8, !dbg !1148
  %14 = load ptr, ptr %5, align 8, !dbg !1149
  %15 = icmp eq ptr %14, null, !dbg !1151
  br i1 %15, label %16, label %17, !dbg !1151

16:                                               ; preds = %10
  store i32 -2, ptr %2, align 4, !dbg !1152
  br label %169, !dbg !1152

17:                                               ; preds = %10
  %18 = load ptr, ptr %5, align 8, !dbg !1153
  %19 = getelementptr inbounds nuw %struct.DState, ptr %18, i32 0, i32 0, !dbg !1155
  %20 = load ptr, ptr %19, align 8, !dbg !1155
  %21 = load ptr, ptr %3, align 8, !dbg !1156
  %22 = icmp ne ptr %20, %21, !dbg !1157
  br i1 %22, label %23, label %24, !dbg !1157

23:                                               ; preds = %17
  store i32 -2, ptr %2, align 4, !dbg !1158
  br label %169, !dbg !1158

24:                                               ; preds = %17
  br label %25, !dbg !1159

25:                                               ; preds = %24, %168
  %26 = load ptr, ptr %5, align 8, !dbg !1160
  %27 = getelementptr inbounds nuw %struct.DState, ptr %26, i32 0, i32 1, !dbg !1163
  %28 = load i32, ptr %27, align 8, !dbg !1163
  %29 = icmp eq i32 %28, 1, !dbg !1164
  br i1 %29, label %30, label %31, !dbg !1164

30:                                               ; preds = %25
  store i32 -1, ptr %2, align 4, !dbg !1165
  br label %169, !dbg !1165

31:                                               ; preds = %25
  %32 = load ptr, ptr %5, align 8, !dbg !1166
  %33 = getelementptr inbounds nuw %struct.DState, ptr %32, i32 0, i32 1, !dbg !1168
  %34 = load i32, ptr %33, align 8, !dbg !1168
  %35 = icmp eq i32 %34, 2, !dbg !1169
  br i1 %35, label %36, label %125, !dbg !1169

36:                                               ; preds = %31
  %37 = load ptr, ptr %5, align 8, !dbg !1170
  %38 = getelementptr inbounds nuw %struct.DState, ptr %37, i32 0, i32 10, !dbg !1173
  %39 = load i8, ptr %38, align 4, !dbg !1173
  %40 = icmp ne i8 %39, 0, !dbg !1170
  br i1 %40, label %41, label %44, !dbg !1170

41:                                               ; preds = %36
  %42 = load ptr, ptr %5, align 8, !dbg !1174
  %43 = call zeroext i8 @unRLE_obuf_to_output_SMALL(ptr noundef %42), !dbg !1175
  store i8 %43, ptr %4, align 1, !dbg !1176
  br label %47, !dbg !1177

44:                                               ; preds = %36
  %45 = load ptr, ptr %5, align 8, !dbg !1178
  %46 = call zeroext i8 @unRLE_obuf_to_output_FAST(ptr noundef %45), !dbg !1179
  store i8 %46, ptr %4, align 1, !dbg !1180
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i8, ptr %4, align 1, !dbg !1181
  %49 = icmp ne i8 %48, 0, !dbg !1181
  br i1 %49, label %50, label %51, !dbg !1181

50:                                               ; preds = %47
  store i32 -4, ptr %2, align 4, !dbg !1183
  br label %169, !dbg !1183

51:                                               ; preds = %47
  %52 = load ptr, ptr %5, align 8, !dbg !1184
  %53 = getelementptr inbounds nuw %struct.DState, ptr %52, i32 0, i32 17, !dbg !1186
  %54 = load i32, ptr %53, align 4, !dbg !1186
  %55 = load ptr, ptr %5, align 8, !dbg !1187
  %56 = getelementptr inbounds nuw %struct.DState, ptr %55, i32 0, i32 51, !dbg !1188
  %57 = load i32, ptr %56, align 8, !dbg !1188
  %58 = add nsw i32 %57, 1, !dbg !1189
  %59 = icmp eq i32 %54, %58, !dbg !1190
  br i1 %59, label %60, label %123, !dbg !1191

60:                                               ; preds = %51
  %61 = load ptr, ptr %5, align 8, !dbg !1192
  %62 = getelementptr inbounds nuw %struct.DState, ptr %61, i32 0, i32 3, !dbg !1193
  %63 = load i32, ptr %62, align 8, !dbg !1193
  %64 = icmp eq i32 %63, 0, !dbg !1194
  br i1 %64, label %65, label %123, !dbg !1191

65:                                               ; preds = %60
  %66 = load ptr, ptr %5, align 8, !dbg !1195
  %67 = getelementptr inbounds nuw %struct.DState, ptr %66, i32 0, i32 25, !dbg !1195
  %68 = load i32, ptr %67, align 8, !dbg !1195
  %69 = xor i32 %68, -1, !dbg !1195
  %70 = load ptr, ptr %5, align 8, !dbg !1195
  %71 = getelementptr inbounds nuw %struct.DState, ptr %70, i32 0, i32 25, !dbg !1195
  store i32 %69, ptr %71, align 8, !dbg !1195
  %72 = load ptr, ptr %5, align 8, !dbg !1198
  %73 = getelementptr inbounds nuw %struct.DState, ptr %72, i32 0, i32 12, !dbg !1200
  %74 = load i32, ptr %73, align 4, !dbg !1200
  %75 = icmp sge i32 %74, 3, !dbg !1201
  br i1 %75, label %76, label %85, !dbg !1201

76:                                               ; preds = %65
  %77 = load ptr, ptr @stderr, align 8, !dbg !1202
  %78 = load ptr, ptr %5, align 8, !dbg !1202
  %79 = getelementptr inbounds nuw %struct.DState, ptr %78, i32 0, i32 23, !dbg !1202
  %80 = load i32, ptr %79, align 8, !dbg !1202
  %81 = load ptr, ptr %5, align 8, !dbg !1202
  %82 = getelementptr inbounds nuw %struct.DState, ptr %81, i32 0, i32 25, !dbg !1202
  %83 = load i32, ptr %82, align 8, !dbg !1202
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.2, i32 noundef %80, i32 noundef %83) #8, !dbg !1202
  br label %85, !dbg !1202

85:                                               ; preds = %76, %65
  %86 = load ptr, ptr %5, align 8, !dbg !1203
  %87 = getelementptr inbounds nuw %struct.DState, ptr %86, i32 0, i32 12, !dbg !1205
  %88 = load i32, ptr %87, align 4, !dbg !1205
  %89 = icmp sge i32 %88, 2, !dbg !1206
  br i1 %89, label %90, label %93, !dbg !1206

90:                                               ; preds = %85
  %91 = load ptr, ptr @stderr, align 8, !dbg !1207
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.3) #8, !dbg !1207
  br label %93, !dbg !1207

93:                                               ; preds = %90, %85
  %94 = load ptr, ptr %5, align 8, !dbg !1208
  %95 = getelementptr inbounds nuw %struct.DState, ptr %94, i32 0, i32 25, !dbg !1210
  %96 = load i32, ptr %95, align 8, !dbg !1210
  %97 = load ptr, ptr %5, align 8, !dbg !1211
  %98 = getelementptr inbounds nuw %struct.DState, ptr %97, i32 0, i32 23, !dbg !1212
  %99 = load i32, ptr %98, align 8, !dbg !1212
  %100 = icmp ne i32 %96, %99, !dbg !1213
  br i1 %100, label %101, label %102, !dbg !1213

101:                                              ; preds = %93
  store i32 -4, ptr %2, align 4, !dbg !1214
  br label %169, !dbg !1214

102:                                              ; preds = %93
  %103 = load ptr, ptr %5, align 8, !dbg !1215
  %104 = getelementptr inbounds nuw %struct.DState, ptr %103, i32 0, i32 26, !dbg !1216
  %105 = load i32, ptr %104, align 4, !dbg !1216
  %106 = shl i32 %105, 1, !dbg !1217
  %107 = load ptr, ptr %5, align 8, !dbg !1218
  %108 = getelementptr inbounds nuw %struct.DState, ptr %107, i32 0, i32 26, !dbg !1219
  %109 = load i32, ptr %108, align 4, !dbg !1219
  %110 = lshr i32 %109, 31, !dbg !1220
  %111 = or i32 %106, %110, !dbg !1221
  %112 = load ptr, ptr %5, align 8, !dbg !1222
  %113 = getelementptr inbounds nuw %struct.DState, ptr %112, i32 0, i32 26, !dbg !1223
  store i32 %111, ptr %113, align 4, !dbg !1224
  %114 = load ptr, ptr %5, align 8, !dbg !1225
  %115 = getelementptr inbounds nuw %struct.DState, ptr %114, i32 0, i32 25, !dbg !1226
  %116 = load i32, ptr %115, align 8, !dbg !1226
  %117 = load ptr, ptr %5, align 8, !dbg !1227
  %118 = getelementptr inbounds nuw %struct.DState, ptr %117, i32 0, i32 26, !dbg !1228
  %119 = load i32, ptr %118, align 4, !dbg !1229
  %120 = xor i32 %119, %116, !dbg !1229
  store i32 %120, ptr %118, align 4, !dbg !1229
  %121 = load ptr, ptr %5, align 8, !dbg !1230
  %122 = getelementptr inbounds nuw %struct.DState, ptr %121, i32 0, i32 1, !dbg !1231
  store i32 14, ptr %122, align 8, !dbg !1232
  br label %124, !dbg !1233

123:                                              ; preds = %60, %51
  store i32 0, ptr %2, align 4, !dbg !1234
  br label %169, !dbg !1234

124:                                              ; preds = %102
  br label %125, !dbg !1236

125:                                              ; preds = %124, %31
  %126 = load ptr, ptr %5, align 8, !dbg !1237
  %127 = getelementptr inbounds nuw %struct.DState, ptr %126, i32 0, i32 1, !dbg !1239
  %128 = load i32, ptr %127, align 8, !dbg !1239
  %129 = icmp sge i32 %128, 10, !dbg !1240
  br i1 %129, label %130, label %168, !dbg !1240

130:                                              ; preds = %125
    #dbg_declare(ptr %6, !1241, !DIExpression(), !1243)
  %131 = load ptr, ptr %5, align 8, !dbg !1244
  %132 = call i32 @BZ2_decompress(ptr noundef %131), !dbg !1245
  store i32 %132, ptr %6, align 4, !dbg !1243
  %133 = load i32, ptr %6, align 4, !dbg !1246
  %134 = icmp eq i32 %133, 4, !dbg !1248
  br i1 %134, label %135, label %160, !dbg !1248

135:                                              ; preds = %130
  %136 = load ptr, ptr %5, align 8, !dbg !1249
  %137 = getelementptr inbounds nuw %struct.DState, ptr %136, i32 0, i32 12, !dbg !1252
  %138 = load i32, ptr %137, align 4, !dbg !1252
  %139 = icmp sge i32 %138, 3, !dbg !1253
  br i1 %139, label %140, label %149, !dbg !1253

140:                                              ; preds = %135
  %141 = load ptr, ptr @stderr, align 8, !dbg !1254
  %142 = load ptr, ptr %5, align 8, !dbg !1254
  %143 = getelementptr inbounds nuw %struct.DState, ptr %142, i32 0, i32 24, !dbg !1254
  %144 = load i32, ptr %143, align 4, !dbg !1254
  %145 = load ptr, ptr %5, align 8, !dbg !1254
  %146 = getelementptr inbounds nuw %struct.DState, ptr %145, i32 0, i32 26, !dbg !1254
  %147 = load i32, ptr %146, align 4, !dbg !1254
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.4, i32 noundef %144, i32 noundef %147) #8, !dbg !1254
  br label %149, !dbg !1254

149:                                              ; preds = %140, %135
  %150 = load ptr, ptr %5, align 8, !dbg !1255
  %151 = getelementptr inbounds nuw %struct.DState, ptr %150, i32 0, i32 26, !dbg !1257
  %152 = load i32, ptr %151, align 4, !dbg !1257
  %153 = load ptr, ptr %5, align 8, !dbg !1258
  %154 = getelementptr inbounds nuw %struct.DState, ptr %153, i32 0, i32 24, !dbg !1259
  %155 = load i32, ptr %154, align 4, !dbg !1259
  %156 = icmp ne i32 %152, %155, !dbg !1260
  br i1 %156, label %157, label %158, !dbg !1260

157:                                              ; preds = %149
  store i32 -4, ptr %2, align 4, !dbg !1261
  br label %169, !dbg !1261

158:                                              ; preds = %149
  %159 = load i32, ptr %6, align 4, !dbg !1262
  store i32 %159, ptr %2, align 4, !dbg !1263
  br label %169, !dbg !1263

160:                                              ; preds = %130
  %161 = load ptr, ptr %5, align 8, !dbg !1264
  %162 = getelementptr inbounds nuw %struct.DState, ptr %161, i32 0, i32 1, !dbg !1266
  %163 = load i32, ptr %162, align 8, !dbg !1266
  %164 = icmp ne i32 %163, 2, !dbg !1267
  br i1 %164, label %165, label %167, !dbg !1267

165:                                              ; preds = %160
  %166 = load i32, ptr %6, align 4, !dbg !1268
  store i32 %166, ptr %2, align 4, !dbg !1269
  br label %169, !dbg !1269

167:                                              ; preds = %160
  br label %168, !dbg !1270

168:                                              ; preds = %167, %125
  br label %25, !dbg !1159, !llvm.loop !1271

169:                                              ; preds = %165, %158, %157, %123, %101, %50, %30, %23, %16, %9
  %170 = load i32, ptr %2, align 4, !dbg !1273
  ret i32 %170, !dbg !1273
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(ptr noundef %0) #0 !dbg !1274 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1277, !DIExpression(), !1278)
    #dbg_declare(ptr %4, !1279, !DIExpression(), !1280)
  %5 = load ptr, ptr %3, align 8, !dbg !1281
  %6 = getelementptr inbounds nuw %struct.DState, ptr %5, i32 0, i32 4, !dbg !1283
  %7 = load i8, ptr %6, align 4, !dbg !1283
  %8 = icmp ne i8 %7, 0, !dbg !1281
  br i1 %8, label %9, label %614, !dbg !1281

9:                                                ; preds = %1
  br label %10, !dbg !1284

10:                                               ; preds = %9, %210, %218, %318, %326, %426, %434, %595
  br label %11, !dbg !1286

11:                                               ; preds = %10, %88
  %12 = load ptr, ptr %3, align 8, !dbg !1288
  %13 = getelementptr inbounds nuw %struct.DState, ptr %12, i32 0, i32 0, !dbg !1291
  %14 = load ptr, ptr %13, align 8, !dbg !1291
  %15 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 5, !dbg !1292
  %16 = load i32, ptr %15, align 8, !dbg !1292
  %17 = icmp eq i32 %16, 0, !dbg !1293
  br i1 %17, label %18, label %19, !dbg !1293

18:                                               ; preds = %11
  store i8 0, ptr %2, align 1, !dbg !1294
  br label %1019, !dbg !1294

19:                                               ; preds = %11
  %20 = load ptr, ptr %3, align 8, !dbg !1295
  %21 = getelementptr inbounds nuw %struct.DState, ptr %20, i32 0, i32 3, !dbg !1297
  %22 = load i32, ptr %21, align 8, !dbg !1297
  %23 = icmp eq i32 %22, 0, !dbg !1298
  br i1 %23, label %24, label %25, !dbg !1298

24:                                               ; preds = %19
  br label %89, !dbg !1299

25:                                               ; preds = %19
  %26 = load ptr, ptr %3, align 8, !dbg !1300
  %27 = getelementptr inbounds nuw %struct.DState, ptr %26, i32 0, i32 2, !dbg !1301
  %28 = load i8, ptr %27, align 4, !dbg !1301
  %29 = load ptr, ptr %3, align 8, !dbg !1302
  %30 = getelementptr inbounds nuw %struct.DState, ptr %29, i32 0, i32 0, !dbg !1303
  %31 = load ptr, ptr %30, align 8, !dbg !1303
  %32 = getelementptr inbounds nuw %struct.bz_stream, ptr %31, i32 0, i32 4, !dbg !1304
  %33 = load ptr, ptr %32, align 8, !dbg !1304
  store i8 %28, ptr %33, align 1, !dbg !1305
  %34 = load ptr, ptr %3, align 8, !dbg !1306
  %35 = getelementptr inbounds nuw %struct.DState, ptr %34, i32 0, i32 25, !dbg !1306
  %36 = load i32, ptr %35, align 8, !dbg !1306
  %37 = shl i32 %36, 8, !dbg !1306
  %38 = load ptr, ptr %3, align 8, !dbg !1306
  %39 = getelementptr inbounds nuw %struct.DState, ptr %38, i32 0, i32 25, !dbg !1306
  %40 = load i32, ptr %39, align 8, !dbg !1306
  %41 = lshr i32 %40, 24, !dbg !1306
  %42 = load ptr, ptr %3, align 8, !dbg !1306
  %43 = getelementptr inbounds nuw %struct.DState, ptr %42, i32 0, i32 2, !dbg !1306
  %44 = load i8, ptr %43, align 4, !dbg !1306
  %45 = zext i8 %44 to i32, !dbg !1306
  %46 = xor i32 %41, %45, !dbg !1306
  %47 = zext i32 %46 to i64, !dbg !1306
  %48 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %47, !dbg !1306
  %49 = load i32, ptr %48, align 4, !dbg !1306
  %50 = xor i32 %37, %49, !dbg !1306
  %51 = load ptr, ptr %3, align 8, !dbg !1306
  %52 = getelementptr inbounds nuw %struct.DState, ptr %51, i32 0, i32 25, !dbg !1306
  store i32 %50, ptr %52, align 8, !dbg !1306
  %53 = load ptr, ptr %3, align 8, !dbg !1308
  %54 = getelementptr inbounds nuw %struct.DState, ptr %53, i32 0, i32 3, !dbg !1309
  %55 = load i32, ptr %54, align 8, !dbg !1310
  %56 = add nsw i32 %55, -1, !dbg !1310
  store i32 %56, ptr %54, align 8, !dbg !1310
  %57 = load ptr, ptr %3, align 8, !dbg !1311
  %58 = getelementptr inbounds nuw %struct.DState, ptr %57, i32 0, i32 0, !dbg !1312
  %59 = load ptr, ptr %58, align 8, !dbg !1312
  %60 = getelementptr inbounds nuw %struct.bz_stream, ptr %59, i32 0, i32 4, !dbg !1313
  %61 = load ptr, ptr %60, align 8, !dbg !1314
  %62 = getelementptr inbounds nuw i8, ptr %61, i32 1, !dbg !1314
  store ptr %62, ptr %60, align 8, !dbg !1314
  %63 = load ptr, ptr %3, align 8, !dbg !1315
  %64 = getelementptr inbounds nuw %struct.DState, ptr %63, i32 0, i32 0, !dbg !1316
  %65 = load ptr, ptr %64, align 8, !dbg !1316
  %66 = getelementptr inbounds nuw %struct.bz_stream, ptr %65, i32 0, i32 5, !dbg !1317
  %67 = load i32, ptr %66, align 8, !dbg !1318
  %68 = add i32 %67, -1, !dbg !1318
  store i32 %68, ptr %66, align 8, !dbg !1318
  %69 = load ptr, ptr %3, align 8, !dbg !1319
  %70 = getelementptr inbounds nuw %struct.DState, ptr %69, i32 0, i32 0, !dbg !1320
  %71 = load ptr, ptr %70, align 8, !dbg !1320
  %72 = getelementptr inbounds nuw %struct.bz_stream, ptr %71, i32 0, i32 6, !dbg !1321
  %73 = load i32, ptr %72, align 4, !dbg !1322
  %74 = add i32 %73, 1, !dbg !1322
  store i32 %74, ptr %72, align 4, !dbg !1322
  %75 = load ptr, ptr %3, align 8, !dbg !1323
  %76 = getelementptr inbounds nuw %struct.DState, ptr %75, i32 0, i32 0, !dbg !1325
  %77 = load ptr, ptr %76, align 8, !dbg !1325
  %78 = getelementptr inbounds nuw %struct.bz_stream, ptr %77, i32 0, i32 6, !dbg !1326
  %79 = load i32, ptr %78, align 4, !dbg !1326
  %80 = icmp eq i32 %79, 0, !dbg !1327
  br i1 %80, label %81, label %88, !dbg !1327

81:                                               ; preds = %25
  %82 = load ptr, ptr %3, align 8, !dbg !1328
  %83 = getelementptr inbounds nuw %struct.DState, ptr %82, i32 0, i32 0, !dbg !1329
  %84 = load ptr, ptr %83, align 8, !dbg !1329
  %85 = getelementptr inbounds nuw %struct.bz_stream, ptr %84, i32 0, i32 7, !dbg !1330
  %86 = load i32, ptr %85, align 8, !dbg !1331
  %87 = add i32 %86, 1, !dbg !1331
  store i32 %87, ptr %85, align 8, !dbg !1331
  br label %88, !dbg !1328

88:                                               ; preds = %81, %25
  br label %11, !dbg !1286, !llvm.loop !1332

89:                                               ; preds = %24
  %90 = load ptr, ptr %3, align 8, !dbg !1334
  %91 = getelementptr inbounds nuw %struct.DState, ptr %90, i32 0, i32 17, !dbg !1336
  %92 = load i32, ptr %91, align 4, !dbg !1336
  %93 = load ptr, ptr %3, align 8, !dbg !1337
  %94 = getelementptr inbounds nuw %struct.DState, ptr %93, i32 0, i32 51, !dbg !1338
  %95 = load i32, ptr %94, align 8, !dbg !1338
  %96 = add nsw i32 %95, 1, !dbg !1339
  %97 = icmp eq i32 %92, %96, !dbg !1340
  br i1 %97, label %98, label %99, !dbg !1340

98:                                               ; preds = %89
  store i8 0, ptr %2, align 1, !dbg !1341
  br label %1019, !dbg !1341

99:                                               ; preds = %89
  %100 = load ptr, ptr %3, align 8, !dbg !1342
  %101 = getelementptr inbounds nuw %struct.DState, ptr %100, i32 0, i32 17, !dbg !1344
  %102 = load i32, ptr %101, align 4, !dbg !1344
  %103 = load ptr, ptr %3, align 8, !dbg !1345
  %104 = getelementptr inbounds nuw %struct.DState, ptr %103, i32 0, i32 51, !dbg !1346
  %105 = load i32, ptr %104, align 8, !dbg !1346
  %106 = add nsw i32 %105, 1, !dbg !1347
  %107 = icmp sgt i32 %102, %106, !dbg !1348
  br i1 %107, label %108, label %109, !dbg !1348

108:                                              ; preds = %99
  store i8 1, ptr %2, align 1, !dbg !1349
  br label %1019, !dbg !1349

109:                                              ; preds = %99
  %110 = load ptr, ptr %3, align 8, !dbg !1350
  %111 = getelementptr inbounds nuw %struct.DState, ptr %110, i32 0, i32 3, !dbg !1351
  store i32 1, ptr %111, align 8, !dbg !1352
  %112 = load ptr, ptr %3, align 8, !dbg !1353
  %113 = getelementptr inbounds nuw %struct.DState, ptr %112, i32 0, i32 15, !dbg !1354
  %114 = load i32, ptr %113, align 8, !dbg !1354
  %115 = trunc i32 %114 to i8, !dbg !1353
  %116 = load ptr, ptr %3, align 8, !dbg !1355
  %117 = getelementptr inbounds nuw %struct.DState, ptr %116, i32 0, i32 2, !dbg !1356
  store i8 %115, ptr %117, align 4, !dbg !1357
  %118 = load ptr, ptr %3, align 8, !dbg !1358
  %119 = getelementptr inbounds nuw %struct.DState, ptr %118, i32 0, i32 14, !dbg !1358
  %120 = load i32, ptr %119, align 4, !dbg !1358
  %121 = load ptr, ptr %3, align 8, !dbg !1358
  %122 = getelementptr inbounds nuw %struct.DState, ptr %121, i32 0, i32 18, !dbg !1358
  %123 = getelementptr inbounds [257 x i32], ptr %122, i64 0, i64 0, !dbg !1358
  %124 = call i32 @BZ2_indexIntoF(i32 noundef %120, ptr noundef %123), !dbg !1358
  %125 = trunc i32 %124 to i8, !dbg !1358
  store i8 %125, ptr %4, align 1, !dbg !1358
  %126 = load ptr, ptr %3, align 8, !dbg !1358
  %127 = getelementptr inbounds nuw %struct.DState, ptr %126, i32 0, i32 21, !dbg !1358
  %128 = load ptr, ptr %127, align 8, !dbg !1358
  %129 = load ptr, ptr %3, align 8, !dbg !1358
  %130 = getelementptr inbounds nuw %struct.DState, ptr %129, i32 0, i32 14, !dbg !1358
  %131 = load i32, ptr %130, align 4, !dbg !1358
  %132 = zext i32 %131 to i64, !dbg !1358
  %133 = getelementptr inbounds nuw i16, ptr %128, i64 %132, !dbg !1358
  %134 = load i16, ptr %133, align 2, !dbg !1358
  %135 = zext i16 %134 to i32, !dbg !1358
  %136 = load ptr, ptr %3, align 8, !dbg !1358
  %137 = getelementptr inbounds nuw %struct.DState, ptr %136, i32 0, i32 22, !dbg !1358
  %138 = load ptr, ptr %137, align 8, !dbg !1358
  %139 = load ptr, ptr %3, align 8, !dbg !1358
  %140 = getelementptr inbounds nuw %struct.DState, ptr %139, i32 0, i32 14, !dbg !1358
  %141 = load i32, ptr %140, align 4, !dbg !1358
  %142 = lshr i32 %141, 1, !dbg !1358
  %143 = zext i32 %142 to i64, !dbg !1358
  %144 = getelementptr inbounds nuw i8, ptr %138, i64 %143, !dbg !1358
  %145 = load i8, ptr %144, align 1, !dbg !1358
  %146 = zext i8 %145 to i32, !dbg !1358
  %147 = load ptr, ptr %3, align 8, !dbg !1358
  %148 = getelementptr inbounds nuw %struct.DState, ptr %147, i32 0, i32 14, !dbg !1358
  %149 = load i32, ptr %148, align 4, !dbg !1358
  %150 = shl i32 %149, 2, !dbg !1358
  %151 = and i32 %150, 4, !dbg !1358
  %152 = lshr i32 %146, %151, !dbg !1358
  %153 = and i32 %152, 15, !dbg !1358
  %154 = shl i32 %153, 16, !dbg !1358
  %155 = or i32 %135, %154, !dbg !1358
  %156 = load ptr, ptr %3, align 8, !dbg !1358
  %157 = getelementptr inbounds nuw %struct.DState, ptr %156, i32 0, i32 14, !dbg !1358
  store i32 %155, ptr %157, align 4, !dbg !1358
  %158 = load ptr, ptr %3, align 8, !dbg !1359
  %159 = getelementptr inbounds nuw %struct.DState, ptr %158, i32 0, i32 5, !dbg !1359
  %160 = load i32, ptr %159, align 8, !dbg !1359
  %161 = icmp eq i32 %160, 0, !dbg !1359
  br i1 %161, label %162, label %183, !dbg !1359

162:                                              ; preds = %109
  %163 = load ptr, ptr %3, align 8, !dbg !1361
  %164 = getelementptr inbounds nuw %struct.DState, ptr %163, i32 0, i32 6, !dbg !1361
  %165 = load i32, ptr %164, align 4, !dbg !1361
  %166 = sext i32 %165 to i64, !dbg !1361
  %167 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %166, !dbg !1361
  %168 = load i32, ptr %167, align 4, !dbg !1361
  %169 = load ptr, ptr %3, align 8, !dbg !1361
  %170 = getelementptr inbounds nuw %struct.DState, ptr %169, i32 0, i32 5, !dbg !1361
  store i32 %168, ptr %170, align 8, !dbg !1361
  %171 = load ptr, ptr %3, align 8, !dbg !1361
  %172 = getelementptr inbounds nuw %struct.DState, ptr %171, i32 0, i32 6, !dbg !1361
  %173 = load i32, ptr %172, align 4, !dbg !1361
  %174 = add nsw i32 %173, 1, !dbg !1361
  store i32 %174, ptr %172, align 4, !dbg !1361
  %175 = load ptr, ptr %3, align 8, !dbg !1363
  %176 = getelementptr inbounds nuw %struct.DState, ptr %175, i32 0, i32 6, !dbg !1363
  %177 = load i32, ptr %176, align 4, !dbg !1363
  %178 = icmp eq i32 %177, 512, !dbg !1363
  br i1 %178, label %179, label %182, !dbg !1363

179:                                              ; preds = %162
  %180 = load ptr, ptr %3, align 8, !dbg !1363
  %181 = getelementptr inbounds nuw %struct.DState, ptr %180, i32 0, i32 6, !dbg !1363
  store i32 0, ptr %181, align 4, !dbg !1363
  br label %182, !dbg !1363

182:                                              ; preds = %179, %162
  br label %183, !dbg !1361

183:                                              ; preds = %182, %109
  %184 = load ptr, ptr %3, align 8, !dbg !1365
  %185 = getelementptr inbounds nuw %struct.DState, ptr %184, i32 0, i32 5, !dbg !1365
  %186 = load i32, ptr %185, align 8, !dbg !1365
  %187 = add nsw i32 %186, -1, !dbg !1365
  store i32 %187, ptr %185, align 8, !dbg !1365
  %188 = load ptr, ptr %3, align 8, !dbg !1366
  %189 = getelementptr inbounds nuw %struct.DState, ptr %188, i32 0, i32 5, !dbg !1366
  %190 = load i32, ptr %189, align 8, !dbg !1366
  %191 = icmp eq i32 %190, 1, !dbg !1366
  %192 = zext i1 %191 to i64, !dbg !1366
  %193 = select i1 %191, i32 1, i32 0, !dbg !1366
  %194 = load i8, ptr %4, align 1, !dbg !1367
  %195 = zext i8 %194 to i32, !dbg !1367
  %196 = xor i32 %195, %193, !dbg !1367
  %197 = trunc i32 %196 to i8, !dbg !1367
  store i8 %197, ptr %4, align 1, !dbg !1367
  %198 = load ptr, ptr %3, align 8, !dbg !1368
  %199 = getelementptr inbounds nuw %struct.DState, ptr %198, i32 0, i32 17, !dbg !1369
  %200 = load i32, ptr %199, align 4, !dbg !1370
  %201 = add nsw i32 %200, 1, !dbg !1370
  store i32 %201, ptr %199, align 4, !dbg !1370
  %202 = load ptr, ptr %3, align 8, !dbg !1371
  %203 = getelementptr inbounds nuw %struct.DState, ptr %202, i32 0, i32 17, !dbg !1373
  %204 = load i32, ptr %203, align 4, !dbg !1373
  %205 = load ptr, ptr %3, align 8, !dbg !1374
  %206 = getelementptr inbounds nuw %struct.DState, ptr %205, i32 0, i32 51, !dbg !1375
  %207 = load i32, ptr %206, align 8, !dbg !1375
  %208 = add nsw i32 %207, 1, !dbg !1376
  %209 = icmp eq i32 %204, %208, !dbg !1377
  br i1 %209, label %210, label %211, !dbg !1377

210:                                              ; preds = %183
  br label %10, !dbg !1378, !llvm.loop !1379

211:                                              ; preds = %183
  %212 = load i8, ptr %4, align 1, !dbg !1381
  %213 = zext i8 %212 to i32, !dbg !1381
  %214 = load ptr, ptr %3, align 8, !dbg !1383
  %215 = getelementptr inbounds nuw %struct.DState, ptr %214, i32 0, i32 15, !dbg !1384
  %216 = load i32, ptr %215, align 8, !dbg !1384
  %217 = icmp ne i32 %213, %216, !dbg !1385
  br i1 %217, label %218, label %223, !dbg !1385

218:                                              ; preds = %211
  %219 = load i8, ptr %4, align 1, !dbg !1386
  %220 = zext i8 %219 to i32, !dbg !1386
  %221 = load ptr, ptr %3, align 8, !dbg !1388
  %222 = getelementptr inbounds nuw %struct.DState, ptr %221, i32 0, i32 15, !dbg !1389
  store i32 %220, ptr %222, align 8, !dbg !1390
  br label %10, !dbg !1391, !llvm.loop !1379

223:                                              ; preds = %211
  %224 = load ptr, ptr %3, align 8, !dbg !1392
  %225 = getelementptr inbounds nuw %struct.DState, ptr %224, i32 0, i32 3, !dbg !1393
  store i32 2, ptr %225, align 8, !dbg !1394
  %226 = load ptr, ptr %3, align 8, !dbg !1395
  %227 = getelementptr inbounds nuw %struct.DState, ptr %226, i32 0, i32 14, !dbg !1395
  %228 = load i32, ptr %227, align 4, !dbg !1395
  %229 = load ptr, ptr %3, align 8, !dbg !1395
  %230 = getelementptr inbounds nuw %struct.DState, ptr %229, i32 0, i32 18, !dbg !1395
  %231 = getelementptr inbounds [257 x i32], ptr %230, i64 0, i64 0, !dbg !1395
  %232 = call i32 @BZ2_indexIntoF(i32 noundef %228, ptr noundef %231), !dbg !1395
  %233 = trunc i32 %232 to i8, !dbg !1395
  store i8 %233, ptr %4, align 1, !dbg !1395
  %234 = load ptr, ptr %3, align 8, !dbg !1395
  %235 = getelementptr inbounds nuw %struct.DState, ptr %234, i32 0, i32 21, !dbg !1395
  %236 = load ptr, ptr %235, align 8, !dbg !1395
  %237 = load ptr, ptr %3, align 8, !dbg !1395
  %238 = getelementptr inbounds nuw %struct.DState, ptr %237, i32 0, i32 14, !dbg !1395
  %239 = load i32, ptr %238, align 4, !dbg !1395
  %240 = zext i32 %239 to i64, !dbg !1395
  %241 = getelementptr inbounds nuw i16, ptr %236, i64 %240, !dbg !1395
  %242 = load i16, ptr %241, align 2, !dbg !1395
  %243 = zext i16 %242 to i32, !dbg !1395
  %244 = load ptr, ptr %3, align 8, !dbg !1395
  %245 = getelementptr inbounds nuw %struct.DState, ptr %244, i32 0, i32 22, !dbg !1395
  %246 = load ptr, ptr %245, align 8, !dbg !1395
  %247 = load ptr, ptr %3, align 8, !dbg !1395
  %248 = getelementptr inbounds nuw %struct.DState, ptr %247, i32 0, i32 14, !dbg !1395
  %249 = load i32, ptr %248, align 4, !dbg !1395
  %250 = lshr i32 %249, 1, !dbg !1395
  %251 = zext i32 %250 to i64, !dbg !1395
  %252 = getelementptr inbounds nuw i8, ptr %246, i64 %251, !dbg !1395
  %253 = load i8, ptr %252, align 1, !dbg !1395
  %254 = zext i8 %253 to i32, !dbg !1395
  %255 = load ptr, ptr %3, align 8, !dbg !1395
  %256 = getelementptr inbounds nuw %struct.DState, ptr %255, i32 0, i32 14, !dbg !1395
  %257 = load i32, ptr %256, align 4, !dbg !1395
  %258 = shl i32 %257, 2, !dbg !1395
  %259 = and i32 %258, 4, !dbg !1395
  %260 = lshr i32 %254, %259, !dbg !1395
  %261 = and i32 %260, 15, !dbg !1395
  %262 = shl i32 %261, 16, !dbg !1395
  %263 = or i32 %243, %262, !dbg !1395
  %264 = load ptr, ptr %3, align 8, !dbg !1395
  %265 = getelementptr inbounds nuw %struct.DState, ptr %264, i32 0, i32 14, !dbg !1395
  store i32 %263, ptr %265, align 4, !dbg !1395
  %266 = load ptr, ptr %3, align 8, !dbg !1396
  %267 = getelementptr inbounds nuw %struct.DState, ptr %266, i32 0, i32 5, !dbg !1396
  %268 = load i32, ptr %267, align 8, !dbg !1396
  %269 = icmp eq i32 %268, 0, !dbg !1396
  br i1 %269, label %270, label %291, !dbg !1396

270:                                              ; preds = %223
  %271 = load ptr, ptr %3, align 8, !dbg !1398
  %272 = getelementptr inbounds nuw %struct.DState, ptr %271, i32 0, i32 6, !dbg !1398
  %273 = load i32, ptr %272, align 4, !dbg !1398
  %274 = sext i32 %273 to i64, !dbg !1398
  %275 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %274, !dbg !1398
  %276 = load i32, ptr %275, align 4, !dbg !1398
  %277 = load ptr, ptr %3, align 8, !dbg !1398
  %278 = getelementptr inbounds nuw %struct.DState, ptr %277, i32 0, i32 5, !dbg !1398
  store i32 %276, ptr %278, align 8, !dbg !1398
  %279 = load ptr, ptr %3, align 8, !dbg !1398
  %280 = getelementptr inbounds nuw %struct.DState, ptr %279, i32 0, i32 6, !dbg !1398
  %281 = load i32, ptr %280, align 4, !dbg !1398
  %282 = add nsw i32 %281, 1, !dbg !1398
  store i32 %282, ptr %280, align 4, !dbg !1398
  %283 = load ptr, ptr %3, align 8, !dbg !1400
  %284 = getelementptr inbounds nuw %struct.DState, ptr %283, i32 0, i32 6, !dbg !1400
  %285 = load i32, ptr %284, align 4, !dbg !1400
  %286 = icmp eq i32 %285, 512, !dbg !1400
  br i1 %286, label %287, label %290, !dbg !1400

287:                                              ; preds = %270
  %288 = load ptr, ptr %3, align 8, !dbg !1400
  %289 = getelementptr inbounds nuw %struct.DState, ptr %288, i32 0, i32 6, !dbg !1400
  store i32 0, ptr %289, align 4, !dbg !1400
  br label %290, !dbg !1400

290:                                              ; preds = %287, %270
  br label %291, !dbg !1398

291:                                              ; preds = %290, %223
  %292 = load ptr, ptr %3, align 8, !dbg !1402
  %293 = getelementptr inbounds nuw %struct.DState, ptr %292, i32 0, i32 5, !dbg !1402
  %294 = load i32, ptr %293, align 8, !dbg !1402
  %295 = add nsw i32 %294, -1, !dbg !1402
  store i32 %295, ptr %293, align 8, !dbg !1402
  %296 = load ptr, ptr %3, align 8, !dbg !1403
  %297 = getelementptr inbounds nuw %struct.DState, ptr %296, i32 0, i32 5, !dbg !1403
  %298 = load i32, ptr %297, align 8, !dbg !1403
  %299 = icmp eq i32 %298, 1, !dbg !1403
  %300 = zext i1 %299 to i64, !dbg !1403
  %301 = select i1 %299, i32 1, i32 0, !dbg !1403
  %302 = load i8, ptr %4, align 1, !dbg !1404
  %303 = zext i8 %302 to i32, !dbg !1404
  %304 = xor i32 %303, %301, !dbg !1404
  %305 = trunc i32 %304 to i8, !dbg !1404
  store i8 %305, ptr %4, align 1, !dbg !1404
  %306 = load ptr, ptr %3, align 8, !dbg !1405
  %307 = getelementptr inbounds nuw %struct.DState, ptr %306, i32 0, i32 17, !dbg !1406
  %308 = load i32, ptr %307, align 4, !dbg !1407
  %309 = add nsw i32 %308, 1, !dbg !1407
  store i32 %309, ptr %307, align 4, !dbg !1407
  %310 = load ptr, ptr %3, align 8, !dbg !1408
  %311 = getelementptr inbounds nuw %struct.DState, ptr %310, i32 0, i32 17, !dbg !1410
  %312 = load i32, ptr %311, align 4, !dbg !1410
  %313 = load ptr, ptr %3, align 8, !dbg !1411
  %314 = getelementptr inbounds nuw %struct.DState, ptr %313, i32 0, i32 51, !dbg !1412
  %315 = load i32, ptr %314, align 8, !dbg !1412
  %316 = add nsw i32 %315, 1, !dbg !1413
  %317 = icmp eq i32 %312, %316, !dbg !1414
  br i1 %317, label %318, label %319, !dbg !1414

318:                                              ; preds = %291
  br label %10, !dbg !1415, !llvm.loop !1379

319:                                              ; preds = %291
  %320 = load i8, ptr %4, align 1, !dbg !1416
  %321 = zext i8 %320 to i32, !dbg !1416
  %322 = load ptr, ptr %3, align 8, !dbg !1418
  %323 = getelementptr inbounds nuw %struct.DState, ptr %322, i32 0, i32 15, !dbg !1419
  %324 = load i32, ptr %323, align 8, !dbg !1419
  %325 = icmp ne i32 %321, %324, !dbg !1420
  br i1 %325, label %326, label %331, !dbg !1420

326:                                              ; preds = %319
  %327 = load i8, ptr %4, align 1, !dbg !1421
  %328 = zext i8 %327 to i32, !dbg !1421
  %329 = load ptr, ptr %3, align 8, !dbg !1423
  %330 = getelementptr inbounds nuw %struct.DState, ptr %329, i32 0, i32 15, !dbg !1424
  store i32 %328, ptr %330, align 8, !dbg !1425
  br label %10, !dbg !1426, !llvm.loop !1379

331:                                              ; preds = %319
  %332 = load ptr, ptr %3, align 8, !dbg !1427
  %333 = getelementptr inbounds nuw %struct.DState, ptr %332, i32 0, i32 3, !dbg !1428
  store i32 3, ptr %333, align 8, !dbg !1429
  %334 = load ptr, ptr %3, align 8, !dbg !1430
  %335 = getelementptr inbounds nuw %struct.DState, ptr %334, i32 0, i32 14, !dbg !1430
  %336 = load i32, ptr %335, align 4, !dbg !1430
  %337 = load ptr, ptr %3, align 8, !dbg !1430
  %338 = getelementptr inbounds nuw %struct.DState, ptr %337, i32 0, i32 18, !dbg !1430
  %339 = getelementptr inbounds [257 x i32], ptr %338, i64 0, i64 0, !dbg !1430
  %340 = call i32 @BZ2_indexIntoF(i32 noundef %336, ptr noundef %339), !dbg !1430
  %341 = trunc i32 %340 to i8, !dbg !1430
  store i8 %341, ptr %4, align 1, !dbg !1430
  %342 = load ptr, ptr %3, align 8, !dbg !1430
  %343 = getelementptr inbounds nuw %struct.DState, ptr %342, i32 0, i32 21, !dbg !1430
  %344 = load ptr, ptr %343, align 8, !dbg !1430
  %345 = load ptr, ptr %3, align 8, !dbg !1430
  %346 = getelementptr inbounds nuw %struct.DState, ptr %345, i32 0, i32 14, !dbg !1430
  %347 = load i32, ptr %346, align 4, !dbg !1430
  %348 = zext i32 %347 to i64, !dbg !1430
  %349 = getelementptr inbounds nuw i16, ptr %344, i64 %348, !dbg !1430
  %350 = load i16, ptr %349, align 2, !dbg !1430
  %351 = zext i16 %350 to i32, !dbg !1430
  %352 = load ptr, ptr %3, align 8, !dbg !1430
  %353 = getelementptr inbounds nuw %struct.DState, ptr %352, i32 0, i32 22, !dbg !1430
  %354 = load ptr, ptr %353, align 8, !dbg !1430
  %355 = load ptr, ptr %3, align 8, !dbg !1430
  %356 = getelementptr inbounds nuw %struct.DState, ptr %355, i32 0, i32 14, !dbg !1430
  %357 = load i32, ptr %356, align 4, !dbg !1430
  %358 = lshr i32 %357, 1, !dbg !1430
  %359 = zext i32 %358 to i64, !dbg !1430
  %360 = getelementptr inbounds nuw i8, ptr %354, i64 %359, !dbg !1430
  %361 = load i8, ptr %360, align 1, !dbg !1430
  %362 = zext i8 %361 to i32, !dbg !1430
  %363 = load ptr, ptr %3, align 8, !dbg !1430
  %364 = getelementptr inbounds nuw %struct.DState, ptr %363, i32 0, i32 14, !dbg !1430
  %365 = load i32, ptr %364, align 4, !dbg !1430
  %366 = shl i32 %365, 2, !dbg !1430
  %367 = and i32 %366, 4, !dbg !1430
  %368 = lshr i32 %362, %367, !dbg !1430
  %369 = and i32 %368, 15, !dbg !1430
  %370 = shl i32 %369, 16, !dbg !1430
  %371 = or i32 %351, %370, !dbg !1430
  %372 = load ptr, ptr %3, align 8, !dbg !1430
  %373 = getelementptr inbounds nuw %struct.DState, ptr %372, i32 0, i32 14, !dbg !1430
  store i32 %371, ptr %373, align 4, !dbg !1430
  %374 = load ptr, ptr %3, align 8, !dbg !1431
  %375 = getelementptr inbounds nuw %struct.DState, ptr %374, i32 0, i32 5, !dbg !1431
  %376 = load i32, ptr %375, align 8, !dbg !1431
  %377 = icmp eq i32 %376, 0, !dbg !1431
  br i1 %377, label %378, label %399, !dbg !1431

378:                                              ; preds = %331
  %379 = load ptr, ptr %3, align 8, !dbg !1433
  %380 = getelementptr inbounds nuw %struct.DState, ptr %379, i32 0, i32 6, !dbg !1433
  %381 = load i32, ptr %380, align 4, !dbg !1433
  %382 = sext i32 %381 to i64, !dbg !1433
  %383 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %382, !dbg !1433
  %384 = load i32, ptr %383, align 4, !dbg !1433
  %385 = load ptr, ptr %3, align 8, !dbg !1433
  %386 = getelementptr inbounds nuw %struct.DState, ptr %385, i32 0, i32 5, !dbg !1433
  store i32 %384, ptr %386, align 8, !dbg !1433
  %387 = load ptr, ptr %3, align 8, !dbg !1433
  %388 = getelementptr inbounds nuw %struct.DState, ptr %387, i32 0, i32 6, !dbg !1433
  %389 = load i32, ptr %388, align 4, !dbg !1433
  %390 = add nsw i32 %389, 1, !dbg !1433
  store i32 %390, ptr %388, align 4, !dbg !1433
  %391 = load ptr, ptr %3, align 8, !dbg !1435
  %392 = getelementptr inbounds nuw %struct.DState, ptr %391, i32 0, i32 6, !dbg !1435
  %393 = load i32, ptr %392, align 4, !dbg !1435
  %394 = icmp eq i32 %393, 512, !dbg !1435
  br i1 %394, label %395, label %398, !dbg !1435

395:                                              ; preds = %378
  %396 = load ptr, ptr %3, align 8, !dbg !1435
  %397 = getelementptr inbounds nuw %struct.DState, ptr %396, i32 0, i32 6, !dbg !1435
  store i32 0, ptr %397, align 4, !dbg !1435
  br label %398, !dbg !1435

398:                                              ; preds = %395, %378
  br label %399, !dbg !1433

399:                                              ; preds = %398, %331
  %400 = load ptr, ptr %3, align 8, !dbg !1437
  %401 = getelementptr inbounds nuw %struct.DState, ptr %400, i32 0, i32 5, !dbg !1437
  %402 = load i32, ptr %401, align 8, !dbg !1437
  %403 = add nsw i32 %402, -1, !dbg !1437
  store i32 %403, ptr %401, align 8, !dbg !1437
  %404 = load ptr, ptr %3, align 8, !dbg !1438
  %405 = getelementptr inbounds nuw %struct.DState, ptr %404, i32 0, i32 5, !dbg !1438
  %406 = load i32, ptr %405, align 8, !dbg !1438
  %407 = icmp eq i32 %406, 1, !dbg !1438
  %408 = zext i1 %407 to i64, !dbg !1438
  %409 = select i1 %407, i32 1, i32 0, !dbg !1438
  %410 = load i8, ptr %4, align 1, !dbg !1439
  %411 = zext i8 %410 to i32, !dbg !1439
  %412 = xor i32 %411, %409, !dbg !1439
  %413 = trunc i32 %412 to i8, !dbg !1439
  store i8 %413, ptr %4, align 1, !dbg !1439
  %414 = load ptr, ptr %3, align 8, !dbg !1440
  %415 = getelementptr inbounds nuw %struct.DState, ptr %414, i32 0, i32 17, !dbg !1441
  %416 = load i32, ptr %415, align 4, !dbg !1442
  %417 = add nsw i32 %416, 1, !dbg !1442
  store i32 %417, ptr %415, align 4, !dbg !1442
  %418 = load ptr, ptr %3, align 8, !dbg !1443
  %419 = getelementptr inbounds nuw %struct.DState, ptr %418, i32 0, i32 17, !dbg !1445
  %420 = load i32, ptr %419, align 4, !dbg !1445
  %421 = load ptr, ptr %3, align 8, !dbg !1446
  %422 = getelementptr inbounds nuw %struct.DState, ptr %421, i32 0, i32 51, !dbg !1447
  %423 = load i32, ptr %422, align 8, !dbg !1447
  %424 = add nsw i32 %423, 1, !dbg !1448
  %425 = icmp eq i32 %420, %424, !dbg !1449
  br i1 %425, label %426, label %427, !dbg !1449

426:                                              ; preds = %399
  br label %10, !dbg !1450, !llvm.loop !1379

427:                                              ; preds = %399
  %428 = load i8, ptr %4, align 1, !dbg !1451
  %429 = zext i8 %428 to i32, !dbg !1451
  %430 = load ptr, ptr %3, align 8, !dbg !1453
  %431 = getelementptr inbounds nuw %struct.DState, ptr %430, i32 0, i32 15, !dbg !1454
  %432 = load i32, ptr %431, align 8, !dbg !1454
  %433 = icmp ne i32 %429, %432, !dbg !1455
  br i1 %433, label %434, label %439, !dbg !1455

434:                                              ; preds = %427
  %435 = load i8, ptr %4, align 1, !dbg !1456
  %436 = zext i8 %435 to i32, !dbg !1456
  %437 = load ptr, ptr %3, align 8, !dbg !1458
  %438 = getelementptr inbounds nuw %struct.DState, ptr %437, i32 0, i32 15, !dbg !1459
  store i32 %436, ptr %438, align 8, !dbg !1460
  br label %10, !dbg !1461, !llvm.loop !1379

439:                                              ; preds = %427
  %440 = load ptr, ptr %3, align 8, !dbg !1462
  %441 = getelementptr inbounds nuw %struct.DState, ptr %440, i32 0, i32 14, !dbg !1462
  %442 = load i32, ptr %441, align 4, !dbg !1462
  %443 = load ptr, ptr %3, align 8, !dbg !1462
  %444 = getelementptr inbounds nuw %struct.DState, ptr %443, i32 0, i32 18, !dbg !1462
  %445 = getelementptr inbounds [257 x i32], ptr %444, i64 0, i64 0, !dbg !1462
  %446 = call i32 @BZ2_indexIntoF(i32 noundef %442, ptr noundef %445), !dbg !1462
  %447 = trunc i32 %446 to i8, !dbg !1462
  store i8 %447, ptr %4, align 1, !dbg !1462
  %448 = load ptr, ptr %3, align 8, !dbg !1462
  %449 = getelementptr inbounds nuw %struct.DState, ptr %448, i32 0, i32 21, !dbg !1462
  %450 = load ptr, ptr %449, align 8, !dbg !1462
  %451 = load ptr, ptr %3, align 8, !dbg !1462
  %452 = getelementptr inbounds nuw %struct.DState, ptr %451, i32 0, i32 14, !dbg !1462
  %453 = load i32, ptr %452, align 4, !dbg !1462
  %454 = zext i32 %453 to i64, !dbg !1462
  %455 = getelementptr inbounds nuw i16, ptr %450, i64 %454, !dbg !1462
  %456 = load i16, ptr %455, align 2, !dbg !1462
  %457 = zext i16 %456 to i32, !dbg !1462
  %458 = load ptr, ptr %3, align 8, !dbg !1462
  %459 = getelementptr inbounds nuw %struct.DState, ptr %458, i32 0, i32 22, !dbg !1462
  %460 = load ptr, ptr %459, align 8, !dbg !1462
  %461 = load ptr, ptr %3, align 8, !dbg !1462
  %462 = getelementptr inbounds nuw %struct.DState, ptr %461, i32 0, i32 14, !dbg !1462
  %463 = load i32, ptr %462, align 4, !dbg !1462
  %464 = lshr i32 %463, 1, !dbg !1462
  %465 = zext i32 %464 to i64, !dbg !1462
  %466 = getelementptr inbounds nuw i8, ptr %460, i64 %465, !dbg !1462
  %467 = load i8, ptr %466, align 1, !dbg !1462
  %468 = zext i8 %467 to i32, !dbg !1462
  %469 = load ptr, ptr %3, align 8, !dbg !1462
  %470 = getelementptr inbounds nuw %struct.DState, ptr %469, i32 0, i32 14, !dbg !1462
  %471 = load i32, ptr %470, align 4, !dbg !1462
  %472 = shl i32 %471, 2, !dbg !1462
  %473 = and i32 %472, 4, !dbg !1462
  %474 = lshr i32 %468, %473, !dbg !1462
  %475 = and i32 %474, 15, !dbg !1462
  %476 = shl i32 %475, 16, !dbg !1462
  %477 = or i32 %457, %476, !dbg !1462
  %478 = load ptr, ptr %3, align 8, !dbg !1462
  %479 = getelementptr inbounds nuw %struct.DState, ptr %478, i32 0, i32 14, !dbg !1462
  store i32 %477, ptr %479, align 4, !dbg !1462
  %480 = load ptr, ptr %3, align 8, !dbg !1463
  %481 = getelementptr inbounds nuw %struct.DState, ptr %480, i32 0, i32 5, !dbg !1463
  %482 = load i32, ptr %481, align 8, !dbg !1463
  %483 = icmp eq i32 %482, 0, !dbg !1463
  br i1 %483, label %484, label %505, !dbg !1463

484:                                              ; preds = %439
  %485 = load ptr, ptr %3, align 8, !dbg !1465
  %486 = getelementptr inbounds nuw %struct.DState, ptr %485, i32 0, i32 6, !dbg !1465
  %487 = load i32, ptr %486, align 4, !dbg !1465
  %488 = sext i32 %487 to i64, !dbg !1465
  %489 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %488, !dbg !1465
  %490 = load i32, ptr %489, align 4, !dbg !1465
  %491 = load ptr, ptr %3, align 8, !dbg !1465
  %492 = getelementptr inbounds nuw %struct.DState, ptr %491, i32 0, i32 5, !dbg !1465
  store i32 %490, ptr %492, align 8, !dbg !1465
  %493 = load ptr, ptr %3, align 8, !dbg !1465
  %494 = getelementptr inbounds nuw %struct.DState, ptr %493, i32 0, i32 6, !dbg !1465
  %495 = load i32, ptr %494, align 4, !dbg !1465
  %496 = add nsw i32 %495, 1, !dbg !1465
  store i32 %496, ptr %494, align 4, !dbg !1465
  %497 = load ptr, ptr %3, align 8, !dbg !1467
  %498 = getelementptr inbounds nuw %struct.DState, ptr %497, i32 0, i32 6, !dbg !1467
  %499 = load i32, ptr %498, align 4, !dbg !1467
  %500 = icmp eq i32 %499, 512, !dbg !1467
  br i1 %500, label %501, label %504, !dbg !1467

501:                                              ; preds = %484
  %502 = load ptr, ptr %3, align 8, !dbg !1467
  %503 = getelementptr inbounds nuw %struct.DState, ptr %502, i32 0, i32 6, !dbg !1467
  store i32 0, ptr %503, align 4, !dbg !1467
  br label %504, !dbg !1467

504:                                              ; preds = %501, %484
  br label %505, !dbg !1465

505:                                              ; preds = %504, %439
  %506 = load ptr, ptr %3, align 8, !dbg !1469
  %507 = getelementptr inbounds nuw %struct.DState, ptr %506, i32 0, i32 5, !dbg !1469
  %508 = load i32, ptr %507, align 8, !dbg !1469
  %509 = add nsw i32 %508, -1, !dbg !1469
  store i32 %509, ptr %507, align 8, !dbg !1469
  %510 = load ptr, ptr %3, align 8, !dbg !1470
  %511 = getelementptr inbounds nuw %struct.DState, ptr %510, i32 0, i32 5, !dbg !1470
  %512 = load i32, ptr %511, align 8, !dbg !1470
  %513 = icmp eq i32 %512, 1, !dbg !1470
  %514 = zext i1 %513 to i64, !dbg !1470
  %515 = select i1 %513, i32 1, i32 0, !dbg !1470
  %516 = load i8, ptr %4, align 1, !dbg !1471
  %517 = zext i8 %516 to i32, !dbg !1471
  %518 = xor i32 %517, %515, !dbg !1471
  %519 = trunc i32 %518 to i8, !dbg !1471
  store i8 %519, ptr %4, align 1, !dbg !1471
  %520 = load ptr, ptr %3, align 8, !dbg !1472
  %521 = getelementptr inbounds nuw %struct.DState, ptr %520, i32 0, i32 17, !dbg !1473
  %522 = load i32, ptr %521, align 4, !dbg !1474
  %523 = add nsw i32 %522, 1, !dbg !1474
  store i32 %523, ptr %521, align 4, !dbg !1474
  %524 = load i8, ptr %4, align 1, !dbg !1475
  %525 = zext i8 %524 to i32, !dbg !1476
  %526 = add nsw i32 %525, 4, !dbg !1477
  %527 = load ptr, ptr %3, align 8, !dbg !1478
  %528 = getelementptr inbounds nuw %struct.DState, ptr %527, i32 0, i32 3, !dbg !1479
  store i32 %526, ptr %528, align 8, !dbg !1480
  %529 = load ptr, ptr %3, align 8, !dbg !1481
  %530 = getelementptr inbounds nuw %struct.DState, ptr %529, i32 0, i32 14, !dbg !1481
  %531 = load i32, ptr %530, align 4, !dbg !1481
  %532 = load ptr, ptr %3, align 8, !dbg !1481
  %533 = getelementptr inbounds nuw %struct.DState, ptr %532, i32 0, i32 18, !dbg !1481
  %534 = getelementptr inbounds [257 x i32], ptr %533, i64 0, i64 0, !dbg !1481
  %535 = call i32 @BZ2_indexIntoF(i32 noundef %531, ptr noundef %534), !dbg !1481
  %536 = load ptr, ptr %3, align 8, !dbg !1481
  %537 = getelementptr inbounds nuw %struct.DState, ptr %536, i32 0, i32 15, !dbg !1481
  store i32 %535, ptr %537, align 8, !dbg !1481
  %538 = load ptr, ptr %3, align 8, !dbg !1481
  %539 = getelementptr inbounds nuw %struct.DState, ptr %538, i32 0, i32 21, !dbg !1481
  %540 = load ptr, ptr %539, align 8, !dbg !1481
  %541 = load ptr, ptr %3, align 8, !dbg !1481
  %542 = getelementptr inbounds nuw %struct.DState, ptr %541, i32 0, i32 14, !dbg !1481
  %543 = load i32, ptr %542, align 4, !dbg !1481
  %544 = zext i32 %543 to i64, !dbg !1481
  %545 = getelementptr inbounds nuw i16, ptr %540, i64 %544, !dbg !1481
  %546 = load i16, ptr %545, align 2, !dbg !1481
  %547 = zext i16 %546 to i32, !dbg !1481
  %548 = load ptr, ptr %3, align 8, !dbg !1481
  %549 = getelementptr inbounds nuw %struct.DState, ptr %548, i32 0, i32 22, !dbg !1481
  %550 = load ptr, ptr %549, align 8, !dbg !1481
  %551 = load ptr, ptr %3, align 8, !dbg !1481
  %552 = getelementptr inbounds nuw %struct.DState, ptr %551, i32 0, i32 14, !dbg !1481
  %553 = load i32, ptr %552, align 4, !dbg !1481
  %554 = lshr i32 %553, 1, !dbg !1481
  %555 = zext i32 %554 to i64, !dbg !1481
  %556 = getelementptr inbounds nuw i8, ptr %550, i64 %555, !dbg !1481
  %557 = load i8, ptr %556, align 1, !dbg !1481
  %558 = zext i8 %557 to i32, !dbg !1481
  %559 = load ptr, ptr %3, align 8, !dbg !1481
  %560 = getelementptr inbounds nuw %struct.DState, ptr %559, i32 0, i32 14, !dbg !1481
  %561 = load i32, ptr %560, align 4, !dbg !1481
  %562 = shl i32 %561, 2, !dbg !1481
  %563 = and i32 %562, 4, !dbg !1481
  %564 = lshr i32 %558, %563, !dbg !1481
  %565 = and i32 %564, 15, !dbg !1481
  %566 = shl i32 %565, 16, !dbg !1481
  %567 = or i32 %547, %566, !dbg !1481
  %568 = load ptr, ptr %3, align 8, !dbg !1481
  %569 = getelementptr inbounds nuw %struct.DState, ptr %568, i32 0, i32 14, !dbg !1481
  store i32 %567, ptr %569, align 4, !dbg !1481
  %570 = load ptr, ptr %3, align 8, !dbg !1482
  %571 = getelementptr inbounds nuw %struct.DState, ptr %570, i32 0, i32 5, !dbg !1482
  %572 = load i32, ptr %571, align 8, !dbg !1482
  %573 = icmp eq i32 %572, 0, !dbg !1482
  br i1 %573, label %574, label %595, !dbg !1482

574:                                              ; preds = %505
  %575 = load ptr, ptr %3, align 8, !dbg !1484
  %576 = getelementptr inbounds nuw %struct.DState, ptr %575, i32 0, i32 6, !dbg !1484
  %577 = load i32, ptr %576, align 4, !dbg !1484
  %578 = sext i32 %577 to i64, !dbg !1484
  %579 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %578, !dbg !1484
  %580 = load i32, ptr %579, align 4, !dbg !1484
  %581 = load ptr, ptr %3, align 8, !dbg !1484
  %582 = getelementptr inbounds nuw %struct.DState, ptr %581, i32 0, i32 5, !dbg !1484
  store i32 %580, ptr %582, align 8, !dbg !1484
  %583 = load ptr, ptr %3, align 8, !dbg !1484
  %584 = getelementptr inbounds nuw %struct.DState, ptr %583, i32 0, i32 6, !dbg !1484
  %585 = load i32, ptr %584, align 4, !dbg !1484
  %586 = add nsw i32 %585, 1, !dbg !1484
  store i32 %586, ptr %584, align 4, !dbg !1484
  %587 = load ptr, ptr %3, align 8, !dbg !1486
  %588 = getelementptr inbounds nuw %struct.DState, ptr %587, i32 0, i32 6, !dbg !1486
  %589 = load i32, ptr %588, align 4, !dbg !1486
  %590 = icmp eq i32 %589, 512, !dbg !1486
  br i1 %590, label %591, label %594, !dbg !1486

591:                                              ; preds = %574
  %592 = load ptr, ptr %3, align 8, !dbg !1486
  %593 = getelementptr inbounds nuw %struct.DState, ptr %592, i32 0, i32 6, !dbg !1486
  store i32 0, ptr %593, align 4, !dbg !1486
  br label %594, !dbg !1486

594:                                              ; preds = %591, %574
  br label %595, !dbg !1484

595:                                              ; preds = %594, %505
  %596 = load ptr, ptr %3, align 8, !dbg !1488
  %597 = getelementptr inbounds nuw %struct.DState, ptr %596, i32 0, i32 5, !dbg !1488
  %598 = load i32, ptr %597, align 8, !dbg !1488
  %599 = add nsw i32 %598, -1, !dbg !1488
  store i32 %599, ptr %597, align 8, !dbg !1488
  %600 = load ptr, ptr %3, align 8, !dbg !1489
  %601 = getelementptr inbounds nuw %struct.DState, ptr %600, i32 0, i32 5, !dbg !1489
  %602 = load i32, ptr %601, align 8, !dbg !1489
  %603 = icmp eq i32 %602, 1, !dbg !1489
  %604 = zext i1 %603 to i64, !dbg !1489
  %605 = select i1 %603, i32 1, i32 0, !dbg !1489
  %606 = load ptr, ptr %3, align 8, !dbg !1490
  %607 = getelementptr inbounds nuw %struct.DState, ptr %606, i32 0, i32 15, !dbg !1491
  %608 = load i32, ptr %607, align 8, !dbg !1492
  %609 = xor i32 %608, %605, !dbg !1492
  store i32 %609, ptr %607, align 8, !dbg !1492
  %610 = load ptr, ptr %3, align 8, !dbg !1493
  %611 = getelementptr inbounds nuw %struct.DState, ptr %610, i32 0, i32 17, !dbg !1494
  %612 = load i32, ptr %611, align 4, !dbg !1495
  %613 = add nsw i32 %612, 1, !dbg !1495
  store i32 %613, ptr %611, align 4, !dbg !1495
  br label %10, !dbg !1284, !llvm.loop !1379

614:                                              ; preds = %1
  br label %615, !dbg !1496

615:                                              ; preds = %614, %775, %783, %843, %851, %911, %919, %924
  br label %616, !dbg !1498

616:                                              ; preds = %615, %693
  %617 = load ptr, ptr %3, align 8, !dbg !1500
  %618 = getelementptr inbounds nuw %struct.DState, ptr %617, i32 0, i32 0, !dbg !1503
  %619 = load ptr, ptr %618, align 8, !dbg !1503
  %620 = getelementptr inbounds nuw %struct.bz_stream, ptr %619, i32 0, i32 5, !dbg !1504
  %621 = load i32, ptr %620, align 8, !dbg !1504
  %622 = icmp eq i32 %621, 0, !dbg !1505
  br i1 %622, label %623, label %624, !dbg !1505

623:                                              ; preds = %616
  store i8 0, ptr %2, align 1, !dbg !1506
  br label %1019, !dbg !1506

624:                                              ; preds = %616
  %625 = load ptr, ptr %3, align 8, !dbg !1507
  %626 = getelementptr inbounds nuw %struct.DState, ptr %625, i32 0, i32 3, !dbg !1509
  %627 = load i32, ptr %626, align 8, !dbg !1509
  %628 = icmp eq i32 %627, 0, !dbg !1510
  br i1 %628, label %629, label %630, !dbg !1510

629:                                              ; preds = %624
  br label %694, !dbg !1511

630:                                              ; preds = %624
  %631 = load ptr, ptr %3, align 8, !dbg !1512
  %632 = getelementptr inbounds nuw %struct.DState, ptr %631, i32 0, i32 2, !dbg !1513
  %633 = load i8, ptr %632, align 4, !dbg !1513
  %634 = load ptr, ptr %3, align 8, !dbg !1514
  %635 = getelementptr inbounds nuw %struct.DState, ptr %634, i32 0, i32 0, !dbg !1515
  %636 = load ptr, ptr %635, align 8, !dbg !1515
  %637 = getelementptr inbounds nuw %struct.bz_stream, ptr %636, i32 0, i32 4, !dbg !1516
  %638 = load ptr, ptr %637, align 8, !dbg !1516
  store i8 %633, ptr %638, align 1, !dbg !1517
  %639 = load ptr, ptr %3, align 8, !dbg !1518
  %640 = getelementptr inbounds nuw %struct.DState, ptr %639, i32 0, i32 25, !dbg !1518
  %641 = load i32, ptr %640, align 8, !dbg !1518
  %642 = shl i32 %641, 8, !dbg !1518
  %643 = load ptr, ptr %3, align 8, !dbg !1518
  %644 = getelementptr inbounds nuw %struct.DState, ptr %643, i32 0, i32 25, !dbg !1518
  %645 = load i32, ptr %644, align 8, !dbg !1518
  %646 = lshr i32 %645, 24, !dbg !1518
  %647 = load ptr, ptr %3, align 8, !dbg !1518
  %648 = getelementptr inbounds nuw %struct.DState, ptr %647, i32 0, i32 2, !dbg !1518
  %649 = load i8, ptr %648, align 4, !dbg !1518
  %650 = zext i8 %649 to i32, !dbg !1518
  %651 = xor i32 %646, %650, !dbg !1518
  %652 = zext i32 %651 to i64, !dbg !1518
  %653 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %652, !dbg !1518
  %654 = load i32, ptr %653, align 4, !dbg !1518
  %655 = xor i32 %642, %654, !dbg !1518
  %656 = load ptr, ptr %3, align 8, !dbg !1518
  %657 = getelementptr inbounds nuw %struct.DState, ptr %656, i32 0, i32 25, !dbg !1518
  store i32 %655, ptr %657, align 8, !dbg !1518
  %658 = load ptr, ptr %3, align 8, !dbg !1520
  %659 = getelementptr inbounds nuw %struct.DState, ptr %658, i32 0, i32 3, !dbg !1521
  %660 = load i32, ptr %659, align 8, !dbg !1522
  %661 = add nsw i32 %660, -1, !dbg !1522
  store i32 %661, ptr %659, align 8, !dbg !1522
  %662 = load ptr, ptr %3, align 8, !dbg !1523
  %663 = getelementptr inbounds nuw %struct.DState, ptr %662, i32 0, i32 0, !dbg !1524
  %664 = load ptr, ptr %663, align 8, !dbg !1524
  %665 = getelementptr inbounds nuw %struct.bz_stream, ptr %664, i32 0, i32 4, !dbg !1525
  %666 = load ptr, ptr %665, align 8, !dbg !1526
  %667 = getelementptr inbounds nuw i8, ptr %666, i32 1, !dbg !1526
  store ptr %667, ptr %665, align 8, !dbg !1526
  %668 = load ptr, ptr %3, align 8, !dbg !1527
  %669 = getelementptr inbounds nuw %struct.DState, ptr %668, i32 0, i32 0, !dbg !1528
  %670 = load ptr, ptr %669, align 8, !dbg !1528
  %671 = getelementptr inbounds nuw %struct.bz_stream, ptr %670, i32 0, i32 5, !dbg !1529
  %672 = load i32, ptr %671, align 8, !dbg !1530
  %673 = add i32 %672, -1, !dbg !1530
  store i32 %673, ptr %671, align 8, !dbg !1530
  %674 = load ptr, ptr %3, align 8, !dbg !1531
  %675 = getelementptr inbounds nuw %struct.DState, ptr %674, i32 0, i32 0, !dbg !1532
  %676 = load ptr, ptr %675, align 8, !dbg !1532
  %677 = getelementptr inbounds nuw %struct.bz_stream, ptr %676, i32 0, i32 6, !dbg !1533
  %678 = load i32, ptr %677, align 4, !dbg !1534
  %679 = add i32 %678, 1, !dbg !1534
  store i32 %679, ptr %677, align 4, !dbg !1534
  %680 = load ptr, ptr %3, align 8, !dbg !1535
  %681 = getelementptr inbounds nuw %struct.DState, ptr %680, i32 0, i32 0, !dbg !1537
  %682 = load ptr, ptr %681, align 8, !dbg !1537
  %683 = getelementptr inbounds nuw %struct.bz_stream, ptr %682, i32 0, i32 6, !dbg !1538
  %684 = load i32, ptr %683, align 4, !dbg !1538
  %685 = icmp eq i32 %684, 0, !dbg !1539
  br i1 %685, label %686, label %693, !dbg !1539

686:                                              ; preds = %630
  %687 = load ptr, ptr %3, align 8, !dbg !1540
  %688 = getelementptr inbounds nuw %struct.DState, ptr %687, i32 0, i32 0, !dbg !1541
  %689 = load ptr, ptr %688, align 8, !dbg !1541
  %690 = getelementptr inbounds nuw %struct.bz_stream, ptr %689, i32 0, i32 7, !dbg !1542
  %691 = load i32, ptr %690, align 8, !dbg !1543
  %692 = add i32 %691, 1, !dbg !1543
  store i32 %692, ptr %690, align 8, !dbg !1543
  br label %693, !dbg !1540

693:                                              ; preds = %686, %630
  br label %616, !dbg !1498, !llvm.loop !1544

694:                                              ; preds = %629
  %695 = load ptr, ptr %3, align 8, !dbg !1546
  %696 = getelementptr inbounds nuw %struct.DState, ptr %695, i32 0, i32 17, !dbg !1548
  %697 = load i32, ptr %696, align 4, !dbg !1548
  %698 = load ptr, ptr %3, align 8, !dbg !1549
  %699 = getelementptr inbounds nuw %struct.DState, ptr %698, i32 0, i32 51, !dbg !1550
  %700 = load i32, ptr %699, align 8, !dbg !1550
  %701 = add nsw i32 %700, 1, !dbg !1551
  %702 = icmp eq i32 %697, %701, !dbg !1552
  br i1 %702, label %703, label %704, !dbg !1552

703:                                              ; preds = %694
  store i8 0, ptr %2, align 1, !dbg !1553
  br label %1019, !dbg !1553

704:                                              ; preds = %694
  %705 = load ptr, ptr %3, align 8, !dbg !1554
  %706 = getelementptr inbounds nuw %struct.DState, ptr %705, i32 0, i32 17, !dbg !1556
  %707 = load i32, ptr %706, align 4, !dbg !1556
  %708 = load ptr, ptr %3, align 8, !dbg !1557
  %709 = getelementptr inbounds nuw %struct.DState, ptr %708, i32 0, i32 51, !dbg !1558
  %710 = load i32, ptr %709, align 8, !dbg !1558
  %711 = add nsw i32 %710, 1, !dbg !1559
  %712 = icmp sgt i32 %707, %711, !dbg !1560
  br i1 %712, label %713, label %714, !dbg !1560

713:                                              ; preds = %704
  store i8 1, ptr %2, align 1, !dbg !1561
  br label %1019, !dbg !1561

714:                                              ; preds = %704
  %715 = load ptr, ptr %3, align 8, !dbg !1562
  %716 = getelementptr inbounds nuw %struct.DState, ptr %715, i32 0, i32 3, !dbg !1563
  store i32 1, ptr %716, align 8, !dbg !1564
  %717 = load ptr, ptr %3, align 8, !dbg !1565
  %718 = getelementptr inbounds nuw %struct.DState, ptr %717, i32 0, i32 15, !dbg !1566
  %719 = load i32, ptr %718, align 8, !dbg !1566
  %720 = trunc i32 %719 to i8, !dbg !1565
  %721 = load ptr, ptr %3, align 8, !dbg !1567
  %722 = getelementptr inbounds nuw %struct.DState, ptr %721, i32 0, i32 2, !dbg !1568
  store i8 %720, ptr %722, align 4, !dbg !1569
  %723 = load ptr, ptr %3, align 8, !dbg !1570
  %724 = getelementptr inbounds nuw %struct.DState, ptr %723, i32 0, i32 14, !dbg !1570
  %725 = load i32, ptr %724, align 4, !dbg !1570
  %726 = load ptr, ptr %3, align 8, !dbg !1570
  %727 = getelementptr inbounds nuw %struct.DState, ptr %726, i32 0, i32 18, !dbg !1570
  %728 = getelementptr inbounds [257 x i32], ptr %727, i64 0, i64 0, !dbg !1570
  %729 = call i32 @BZ2_indexIntoF(i32 noundef %725, ptr noundef %728), !dbg !1570
  %730 = trunc i32 %729 to i8, !dbg !1570
  store i8 %730, ptr %4, align 1, !dbg !1570
  %731 = load ptr, ptr %3, align 8, !dbg !1570
  %732 = getelementptr inbounds nuw %struct.DState, ptr %731, i32 0, i32 21, !dbg !1570
  %733 = load ptr, ptr %732, align 8, !dbg !1570
  %734 = load ptr, ptr %3, align 8, !dbg !1570
  %735 = getelementptr inbounds nuw %struct.DState, ptr %734, i32 0, i32 14, !dbg !1570
  %736 = load i32, ptr %735, align 4, !dbg !1570
  %737 = zext i32 %736 to i64, !dbg !1570
  %738 = getelementptr inbounds nuw i16, ptr %733, i64 %737, !dbg !1570
  %739 = load i16, ptr %738, align 2, !dbg !1570
  %740 = zext i16 %739 to i32, !dbg !1570
  %741 = load ptr, ptr %3, align 8, !dbg !1570
  %742 = getelementptr inbounds nuw %struct.DState, ptr %741, i32 0, i32 22, !dbg !1570
  %743 = load ptr, ptr %742, align 8, !dbg !1570
  %744 = load ptr, ptr %3, align 8, !dbg !1570
  %745 = getelementptr inbounds nuw %struct.DState, ptr %744, i32 0, i32 14, !dbg !1570
  %746 = load i32, ptr %745, align 4, !dbg !1570
  %747 = lshr i32 %746, 1, !dbg !1570
  %748 = zext i32 %747 to i64, !dbg !1570
  %749 = getelementptr inbounds nuw i8, ptr %743, i64 %748, !dbg !1570
  %750 = load i8, ptr %749, align 1, !dbg !1570
  %751 = zext i8 %750 to i32, !dbg !1570
  %752 = load ptr, ptr %3, align 8, !dbg !1570
  %753 = getelementptr inbounds nuw %struct.DState, ptr %752, i32 0, i32 14, !dbg !1570
  %754 = load i32, ptr %753, align 4, !dbg !1570
  %755 = shl i32 %754, 2, !dbg !1570
  %756 = and i32 %755, 4, !dbg !1570
  %757 = lshr i32 %751, %756, !dbg !1570
  %758 = and i32 %757, 15, !dbg !1570
  %759 = shl i32 %758, 16, !dbg !1570
  %760 = or i32 %740, %759, !dbg !1570
  %761 = load ptr, ptr %3, align 8, !dbg !1570
  %762 = getelementptr inbounds nuw %struct.DState, ptr %761, i32 0, i32 14, !dbg !1570
  store i32 %760, ptr %762, align 4, !dbg !1570
  %763 = load ptr, ptr %3, align 8, !dbg !1571
  %764 = getelementptr inbounds nuw %struct.DState, ptr %763, i32 0, i32 17, !dbg !1572
  %765 = load i32, ptr %764, align 4, !dbg !1573
  %766 = add nsw i32 %765, 1, !dbg !1573
  store i32 %766, ptr %764, align 4, !dbg !1573
  %767 = load ptr, ptr %3, align 8, !dbg !1574
  %768 = getelementptr inbounds nuw %struct.DState, ptr %767, i32 0, i32 17, !dbg !1576
  %769 = load i32, ptr %768, align 4, !dbg !1576
  %770 = load ptr, ptr %3, align 8, !dbg !1577
  %771 = getelementptr inbounds nuw %struct.DState, ptr %770, i32 0, i32 51, !dbg !1578
  %772 = load i32, ptr %771, align 8, !dbg !1578
  %773 = add nsw i32 %772, 1, !dbg !1579
  %774 = icmp eq i32 %769, %773, !dbg !1580
  br i1 %774, label %775, label %776, !dbg !1580

775:                                              ; preds = %714
  br label %615, !dbg !1581, !llvm.loop !1582

776:                                              ; preds = %714
  %777 = load i8, ptr %4, align 1, !dbg !1584
  %778 = zext i8 %777 to i32, !dbg !1584
  %779 = load ptr, ptr %3, align 8, !dbg !1586
  %780 = getelementptr inbounds nuw %struct.DState, ptr %779, i32 0, i32 15, !dbg !1587
  %781 = load i32, ptr %780, align 8, !dbg !1587
  %782 = icmp ne i32 %778, %781, !dbg !1588
  br i1 %782, label %783, label %788, !dbg !1588

783:                                              ; preds = %776
  %784 = load i8, ptr %4, align 1, !dbg !1589
  %785 = zext i8 %784 to i32, !dbg !1589
  %786 = load ptr, ptr %3, align 8, !dbg !1591
  %787 = getelementptr inbounds nuw %struct.DState, ptr %786, i32 0, i32 15, !dbg !1592
  store i32 %785, ptr %787, align 8, !dbg !1593
  br label %615, !dbg !1594, !llvm.loop !1582

788:                                              ; preds = %776
  %789 = load ptr, ptr %3, align 8, !dbg !1595
  %790 = getelementptr inbounds nuw %struct.DState, ptr %789, i32 0, i32 3, !dbg !1596
  store i32 2, ptr %790, align 8, !dbg !1597
  %791 = load ptr, ptr %3, align 8, !dbg !1598
  %792 = getelementptr inbounds nuw %struct.DState, ptr %791, i32 0, i32 14, !dbg !1598
  %793 = load i32, ptr %792, align 4, !dbg !1598
  %794 = load ptr, ptr %3, align 8, !dbg !1598
  %795 = getelementptr inbounds nuw %struct.DState, ptr %794, i32 0, i32 18, !dbg !1598
  %796 = getelementptr inbounds [257 x i32], ptr %795, i64 0, i64 0, !dbg !1598
  %797 = call i32 @BZ2_indexIntoF(i32 noundef %793, ptr noundef %796), !dbg !1598
  %798 = trunc i32 %797 to i8, !dbg !1598
  store i8 %798, ptr %4, align 1, !dbg !1598
  %799 = load ptr, ptr %3, align 8, !dbg !1598
  %800 = getelementptr inbounds nuw %struct.DState, ptr %799, i32 0, i32 21, !dbg !1598
  %801 = load ptr, ptr %800, align 8, !dbg !1598
  %802 = load ptr, ptr %3, align 8, !dbg !1598
  %803 = getelementptr inbounds nuw %struct.DState, ptr %802, i32 0, i32 14, !dbg !1598
  %804 = load i32, ptr %803, align 4, !dbg !1598
  %805 = zext i32 %804 to i64, !dbg !1598
  %806 = getelementptr inbounds nuw i16, ptr %801, i64 %805, !dbg !1598
  %807 = load i16, ptr %806, align 2, !dbg !1598
  %808 = zext i16 %807 to i32, !dbg !1598
  %809 = load ptr, ptr %3, align 8, !dbg !1598
  %810 = getelementptr inbounds nuw %struct.DState, ptr %809, i32 0, i32 22, !dbg !1598
  %811 = load ptr, ptr %810, align 8, !dbg !1598
  %812 = load ptr, ptr %3, align 8, !dbg !1598
  %813 = getelementptr inbounds nuw %struct.DState, ptr %812, i32 0, i32 14, !dbg !1598
  %814 = load i32, ptr %813, align 4, !dbg !1598
  %815 = lshr i32 %814, 1, !dbg !1598
  %816 = zext i32 %815 to i64, !dbg !1598
  %817 = getelementptr inbounds nuw i8, ptr %811, i64 %816, !dbg !1598
  %818 = load i8, ptr %817, align 1, !dbg !1598
  %819 = zext i8 %818 to i32, !dbg !1598
  %820 = load ptr, ptr %3, align 8, !dbg !1598
  %821 = getelementptr inbounds nuw %struct.DState, ptr %820, i32 0, i32 14, !dbg !1598
  %822 = load i32, ptr %821, align 4, !dbg !1598
  %823 = shl i32 %822, 2, !dbg !1598
  %824 = and i32 %823, 4, !dbg !1598
  %825 = lshr i32 %819, %824, !dbg !1598
  %826 = and i32 %825, 15, !dbg !1598
  %827 = shl i32 %826, 16, !dbg !1598
  %828 = or i32 %808, %827, !dbg !1598
  %829 = load ptr, ptr %3, align 8, !dbg !1598
  %830 = getelementptr inbounds nuw %struct.DState, ptr %829, i32 0, i32 14, !dbg !1598
  store i32 %828, ptr %830, align 4, !dbg !1598
  %831 = load ptr, ptr %3, align 8, !dbg !1599
  %832 = getelementptr inbounds nuw %struct.DState, ptr %831, i32 0, i32 17, !dbg !1600
  %833 = load i32, ptr %832, align 4, !dbg !1601
  %834 = add nsw i32 %833, 1, !dbg !1601
  store i32 %834, ptr %832, align 4, !dbg !1601
  %835 = load ptr, ptr %3, align 8, !dbg !1602
  %836 = getelementptr inbounds nuw %struct.DState, ptr %835, i32 0, i32 17, !dbg !1604
  %837 = load i32, ptr %836, align 4, !dbg !1604
  %838 = load ptr, ptr %3, align 8, !dbg !1605
  %839 = getelementptr inbounds nuw %struct.DState, ptr %838, i32 0, i32 51, !dbg !1606
  %840 = load i32, ptr %839, align 8, !dbg !1606
  %841 = add nsw i32 %840, 1, !dbg !1607
  %842 = icmp eq i32 %837, %841, !dbg !1608
  br i1 %842, label %843, label %844, !dbg !1608

843:                                              ; preds = %788
  br label %615, !dbg !1609, !llvm.loop !1582

844:                                              ; preds = %788
  %845 = load i8, ptr %4, align 1, !dbg !1610
  %846 = zext i8 %845 to i32, !dbg !1610
  %847 = load ptr, ptr %3, align 8, !dbg !1612
  %848 = getelementptr inbounds nuw %struct.DState, ptr %847, i32 0, i32 15, !dbg !1613
  %849 = load i32, ptr %848, align 8, !dbg !1613
  %850 = icmp ne i32 %846, %849, !dbg !1614
  br i1 %850, label %851, label %856, !dbg !1614

851:                                              ; preds = %844
  %852 = load i8, ptr %4, align 1, !dbg !1615
  %853 = zext i8 %852 to i32, !dbg !1615
  %854 = load ptr, ptr %3, align 8, !dbg !1617
  %855 = getelementptr inbounds nuw %struct.DState, ptr %854, i32 0, i32 15, !dbg !1618
  store i32 %853, ptr %855, align 8, !dbg !1619
  br label %615, !dbg !1620, !llvm.loop !1582

856:                                              ; preds = %844
  %857 = load ptr, ptr %3, align 8, !dbg !1621
  %858 = getelementptr inbounds nuw %struct.DState, ptr %857, i32 0, i32 3, !dbg !1622
  store i32 3, ptr %858, align 8, !dbg !1623
  %859 = load ptr, ptr %3, align 8, !dbg !1624
  %860 = getelementptr inbounds nuw %struct.DState, ptr %859, i32 0, i32 14, !dbg !1624
  %861 = load i32, ptr %860, align 4, !dbg !1624
  %862 = load ptr, ptr %3, align 8, !dbg !1624
  %863 = getelementptr inbounds nuw %struct.DState, ptr %862, i32 0, i32 18, !dbg !1624
  %864 = getelementptr inbounds [257 x i32], ptr %863, i64 0, i64 0, !dbg !1624
  %865 = call i32 @BZ2_indexIntoF(i32 noundef %861, ptr noundef %864), !dbg !1624
  %866 = trunc i32 %865 to i8, !dbg !1624
  store i8 %866, ptr %4, align 1, !dbg !1624
  %867 = load ptr, ptr %3, align 8, !dbg !1624
  %868 = getelementptr inbounds nuw %struct.DState, ptr %867, i32 0, i32 21, !dbg !1624
  %869 = load ptr, ptr %868, align 8, !dbg !1624
  %870 = load ptr, ptr %3, align 8, !dbg !1624
  %871 = getelementptr inbounds nuw %struct.DState, ptr %870, i32 0, i32 14, !dbg !1624
  %872 = load i32, ptr %871, align 4, !dbg !1624
  %873 = zext i32 %872 to i64, !dbg !1624
  %874 = getelementptr inbounds nuw i16, ptr %869, i64 %873, !dbg !1624
  %875 = load i16, ptr %874, align 2, !dbg !1624
  %876 = zext i16 %875 to i32, !dbg !1624
  %877 = load ptr, ptr %3, align 8, !dbg !1624
  %878 = getelementptr inbounds nuw %struct.DState, ptr %877, i32 0, i32 22, !dbg !1624
  %879 = load ptr, ptr %878, align 8, !dbg !1624
  %880 = load ptr, ptr %3, align 8, !dbg !1624
  %881 = getelementptr inbounds nuw %struct.DState, ptr %880, i32 0, i32 14, !dbg !1624
  %882 = load i32, ptr %881, align 4, !dbg !1624
  %883 = lshr i32 %882, 1, !dbg !1624
  %884 = zext i32 %883 to i64, !dbg !1624
  %885 = getelementptr inbounds nuw i8, ptr %879, i64 %884, !dbg !1624
  %886 = load i8, ptr %885, align 1, !dbg !1624
  %887 = zext i8 %886 to i32, !dbg !1624
  %888 = load ptr, ptr %3, align 8, !dbg !1624
  %889 = getelementptr inbounds nuw %struct.DState, ptr %888, i32 0, i32 14, !dbg !1624
  %890 = load i32, ptr %889, align 4, !dbg !1624
  %891 = shl i32 %890, 2, !dbg !1624
  %892 = and i32 %891, 4, !dbg !1624
  %893 = lshr i32 %887, %892, !dbg !1624
  %894 = and i32 %893, 15, !dbg !1624
  %895 = shl i32 %894, 16, !dbg !1624
  %896 = or i32 %876, %895, !dbg !1624
  %897 = load ptr, ptr %3, align 8, !dbg !1624
  %898 = getelementptr inbounds nuw %struct.DState, ptr %897, i32 0, i32 14, !dbg !1624
  store i32 %896, ptr %898, align 4, !dbg !1624
  %899 = load ptr, ptr %3, align 8, !dbg !1625
  %900 = getelementptr inbounds nuw %struct.DState, ptr %899, i32 0, i32 17, !dbg !1626
  %901 = load i32, ptr %900, align 4, !dbg !1627
  %902 = add nsw i32 %901, 1, !dbg !1627
  store i32 %902, ptr %900, align 4, !dbg !1627
  %903 = load ptr, ptr %3, align 8, !dbg !1628
  %904 = getelementptr inbounds nuw %struct.DState, ptr %903, i32 0, i32 17, !dbg !1630
  %905 = load i32, ptr %904, align 4, !dbg !1630
  %906 = load ptr, ptr %3, align 8, !dbg !1631
  %907 = getelementptr inbounds nuw %struct.DState, ptr %906, i32 0, i32 51, !dbg !1632
  %908 = load i32, ptr %907, align 8, !dbg !1632
  %909 = add nsw i32 %908, 1, !dbg !1633
  %910 = icmp eq i32 %905, %909, !dbg !1634
  br i1 %910, label %911, label %912, !dbg !1634

911:                                              ; preds = %856
  br label %615, !dbg !1635, !llvm.loop !1582

912:                                              ; preds = %856
  %913 = load i8, ptr %4, align 1, !dbg !1636
  %914 = zext i8 %913 to i32, !dbg !1636
  %915 = load ptr, ptr %3, align 8, !dbg !1638
  %916 = getelementptr inbounds nuw %struct.DState, ptr %915, i32 0, i32 15, !dbg !1639
  %917 = load i32, ptr %916, align 8, !dbg !1639
  %918 = icmp ne i32 %914, %917, !dbg !1640
  br i1 %918, label %919, label %924, !dbg !1640

919:                                              ; preds = %912
  %920 = load i8, ptr %4, align 1, !dbg !1641
  %921 = zext i8 %920 to i32, !dbg !1641
  %922 = load ptr, ptr %3, align 8, !dbg !1643
  %923 = getelementptr inbounds nuw %struct.DState, ptr %922, i32 0, i32 15, !dbg !1644
  store i32 %921, ptr %923, align 8, !dbg !1645
  br label %615, !dbg !1646, !llvm.loop !1582

924:                                              ; preds = %912
  %925 = load ptr, ptr %3, align 8, !dbg !1647
  %926 = getelementptr inbounds nuw %struct.DState, ptr %925, i32 0, i32 14, !dbg !1647
  %927 = load i32, ptr %926, align 4, !dbg !1647
  %928 = load ptr, ptr %3, align 8, !dbg !1647
  %929 = getelementptr inbounds nuw %struct.DState, ptr %928, i32 0, i32 18, !dbg !1647
  %930 = getelementptr inbounds [257 x i32], ptr %929, i64 0, i64 0, !dbg !1647
  %931 = call i32 @BZ2_indexIntoF(i32 noundef %927, ptr noundef %930), !dbg !1647
  %932 = trunc i32 %931 to i8, !dbg !1647
  store i8 %932, ptr %4, align 1, !dbg !1647
  %933 = load ptr, ptr %3, align 8, !dbg !1647
  %934 = getelementptr inbounds nuw %struct.DState, ptr %933, i32 0, i32 21, !dbg !1647
  %935 = load ptr, ptr %934, align 8, !dbg !1647
  %936 = load ptr, ptr %3, align 8, !dbg !1647
  %937 = getelementptr inbounds nuw %struct.DState, ptr %936, i32 0, i32 14, !dbg !1647
  %938 = load i32, ptr %937, align 4, !dbg !1647
  %939 = zext i32 %938 to i64, !dbg !1647
  %940 = getelementptr inbounds nuw i16, ptr %935, i64 %939, !dbg !1647
  %941 = load i16, ptr %940, align 2, !dbg !1647
  %942 = zext i16 %941 to i32, !dbg !1647
  %943 = load ptr, ptr %3, align 8, !dbg !1647
  %944 = getelementptr inbounds nuw %struct.DState, ptr %943, i32 0, i32 22, !dbg !1647
  %945 = load ptr, ptr %944, align 8, !dbg !1647
  %946 = load ptr, ptr %3, align 8, !dbg !1647
  %947 = getelementptr inbounds nuw %struct.DState, ptr %946, i32 0, i32 14, !dbg !1647
  %948 = load i32, ptr %947, align 4, !dbg !1647
  %949 = lshr i32 %948, 1, !dbg !1647
  %950 = zext i32 %949 to i64, !dbg !1647
  %951 = getelementptr inbounds nuw i8, ptr %945, i64 %950, !dbg !1647
  %952 = load i8, ptr %951, align 1, !dbg !1647
  %953 = zext i8 %952 to i32, !dbg !1647
  %954 = load ptr, ptr %3, align 8, !dbg !1647
  %955 = getelementptr inbounds nuw %struct.DState, ptr %954, i32 0, i32 14, !dbg !1647
  %956 = load i32, ptr %955, align 4, !dbg !1647
  %957 = shl i32 %956, 2, !dbg !1647
  %958 = and i32 %957, 4, !dbg !1647
  %959 = lshr i32 %953, %958, !dbg !1647
  %960 = and i32 %959, 15, !dbg !1647
  %961 = shl i32 %960, 16, !dbg !1647
  %962 = or i32 %942, %961, !dbg !1647
  %963 = load ptr, ptr %3, align 8, !dbg !1647
  %964 = getelementptr inbounds nuw %struct.DState, ptr %963, i32 0, i32 14, !dbg !1647
  store i32 %962, ptr %964, align 4, !dbg !1647
  %965 = load ptr, ptr %3, align 8, !dbg !1648
  %966 = getelementptr inbounds nuw %struct.DState, ptr %965, i32 0, i32 17, !dbg !1649
  %967 = load i32, ptr %966, align 4, !dbg !1650
  %968 = add nsw i32 %967, 1, !dbg !1650
  store i32 %968, ptr %966, align 4, !dbg !1650
  %969 = load i8, ptr %4, align 1, !dbg !1651
  %970 = zext i8 %969 to i32, !dbg !1652
  %971 = add nsw i32 %970, 4, !dbg !1653
  %972 = load ptr, ptr %3, align 8, !dbg !1654
  %973 = getelementptr inbounds nuw %struct.DState, ptr %972, i32 0, i32 3, !dbg !1655
  store i32 %971, ptr %973, align 8, !dbg !1656
  %974 = load ptr, ptr %3, align 8, !dbg !1657
  %975 = getelementptr inbounds nuw %struct.DState, ptr %974, i32 0, i32 14, !dbg !1657
  %976 = load i32, ptr %975, align 4, !dbg !1657
  %977 = load ptr, ptr %3, align 8, !dbg !1657
  %978 = getelementptr inbounds nuw %struct.DState, ptr %977, i32 0, i32 18, !dbg !1657
  %979 = getelementptr inbounds [257 x i32], ptr %978, i64 0, i64 0, !dbg !1657
  %980 = call i32 @BZ2_indexIntoF(i32 noundef %976, ptr noundef %979), !dbg !1657
  %981 = load ptr, ptr %3, align 8, !dbg !1657
  %982 = getelementptr inbounds nuw %struct.DState, ptr %981, i32 0, i32 15, !dbg !1657
  store i32 %980, ptr %982, align 8, !dbg !1657
  %983 = load ptr, ptr %3, align 8, !dbg !1657
  %984 = getelementptr inbounds nuw %struct.DState, ptr %983, i32 0, i32 21, !dbg !1657
  %985 = load ptr, ptr %984, align 8, !dbg !1657
  %986 = load ptr, ptr %3, align 8, !dbg !1657
  %987 = getelementptr inbounds nuw %struct.DState, ptr %986, i32 0, i32 14, !dbg !1657
  %988 = load i32, ptr %987, align 4, !dbg !1657
  %989 = zext i32 %988 to i64, !dbg !1657
  %990 = getelementptr inbounds nuw i16, ptr %985, i64 %989, !dbg !1657
  %991 = load i16, ptr %990, align 2, !dbg !1657
  %992 = zext i16 %991 to i32, !dbg !1657
  %993 = load ptr, ptr %3, align 8, !dbg !1657
  %994 = getelementptr inbounds nuw %struct.DState, ptr %993, i32 0, i32 22, !dbg !1657
  %995 = load ptr, ptr %994, align 8, !dbg !1657
  %996 = load ptr, ptr %3, align 8, !dbg !1657
  %997 = getelementptr inbounds nuw %struct.DState, ptr %996, i32 0, i32 14, !dbg !1657
  %998 = load i32, ptr %997, align 4, !dbg !1657
  %999 = lshr i32 %998, 1, !dbg !1657
  %1000 = zext i32 %999 to i64, !dbg !1657
  %1001 = getelementptr inbounds nuw i8, ptr %995, i64 %1000, !dbg !1657
  %1002 = load i8, ptr %1001, align 1, !dbg !1657
  %1003 = zext i8 %1002 to i32, !dbg !1657
  %1004 = load ptr, ptr %3, align 8, !dbg !1657
  %1005 = getelementptr inbounds nuw %struct.DState, ptr %1004, i32 0, i32 14, !dbg !1657
  %1006 = load i32, ptr %1005, align 4, !dbg !1657
  %1007 = shl i32 %1006, 2, !dbg !1657
  %1008 = and i32 %1007, 4, !dbg !1657
  %1009 = lshr i32 %1003, %1008, !dbg !1657
  %1010 = and i32 %1009, 15, !dbg !1657
  %1011 = shl i32 %1010, 16, !dbg !1657
  %1012 = or i32 %992, %1011, !dbg !1657
  %1013 = load ptr, ptr %3, align 8, !dbg !1657
  %1014 = getelementptr inbounds nuw %struct.DState, ptr %1013, i32 0, i32 14, !dbg !1657
  store i32 %1012, ptr %1014, align 4, !dbg !1657
  %1015 = load ptr, ptr %3, align 8, !dbg !1658
  %1016 = getelementptr inbounds nuw %struct.DState, ptr %1015, i32 0, i32 17, !dbg !1659
  %1017 = load i32, ptr %1016, align 4, !dbg !1660
  %1018 = add nsw i32 %1017, 1, !dbg !1660
  store i32 %1018, ptr %1016, align 4, !dbg !1660
  br label %615, !dbg !1496, !llvm.loop !1582

1019:                                             ; preds = %713, %703, %623, %108, %98, %18
  %1020 = load i8, ptr %2, align 1, !dbg !1661
  ret i8 %1020, !dbg !1661
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @unRLE_obuf_to_output_FAST(ptr noundef %0) #0 !dbg !1662 {
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
    #dbg_declare(ptr %3, !1663, !DIExpression(), !1664)
    #dbg_declare(ptr %4, !1665, !DIExpression(), !1666)
  %17 = load ptr, ptr %3, align 8, !dbg !1667
  %18 = getelementptr inbounds nuw %struct.DState, ptr %17, i32 0, i32 4, !dbg !1669
  %19 = load i8, ptr %18, align 4, !dbg !1669
  %20 = icmp ne i8 %19, 0, !dbg !1667
  br i1 %20, label %21, label %528, !dbg !1667

21:                                               ; preds = %1
  br label %22, !dbg !1670

22:                                               ; preds = %21, %202, %210, %290, %298, %378, %386, %509
  br label %23, !dbg !1672

23:                                               ; preds = %22, %100
  %24 = load ptr, ptr %3, align 8, !dbg !1674
  %25 = getelementptr inbounds nuw %struct.DState, ptr %24, i32 0, i32 0, !dbg !1677
  %26 = load ptr, ptr %25, align 8, !dbg !1677
  %27 = getelementptr inbounds nuw %struct.bz_stream, ptr %26, i32 0, i32 5, !dbg !1678
  %28 = load i32, ptr %27, align 8, !dbg !1678
  %29 = icmp eq i32 %28, 0, !dbg !1679
  br i1 %29, label %30, label %31, !dbg !1679

30:                                               ; preds = %23
  store i8 0, ptr %2, align 1, !dbg !1680
  br label %798, !dbg !1680

31:                                               ; preds = %23
  %32 = load ptr, ptr %3, align 8, !dbg !1681
  %33 = getelementptr inbounds nuw %struct.DState, ptr %32, i32 0, i32 3, !dbg !1683
  %34 = load i32, ptr %33, align 8, !dbg !1683
  %35 = icmp eq i32 %34, 0, !dbg !1684
  br i1 %35, label %36, label %37, !dbg !1684

36:                                               ; preds = %31
  br label %101, !dbg !1685

37:                                               ; preds = %31
  %38 = load ptr, ptr %3, align 8, !dbg !1686
  %39 = getelementptr inbounds nuw %struct.DState, ptr %38, i32 0, i32 2, !dbg !1687
  %40 = load i8, ptr %39, align 4, !dbg !1687
  %41 = load ptr, ptr %3, align 8, !dbg !1688
  %42 = getelementptr inbounds nuw %struct.DState, ptr %41, i32 0, i32 0, !dbg !1689
  %43 = load ptr, ptr %42, align 8, !dbg !1689
  %44 = getelementptr inbounds nuw %struct.bz_stream, ptr %43, i32 0, i32 4, !dbg !1690
  %45 = load ptr, ptr %44, align 8, !dbg !1690
  store i8 %40, ptr %45, align 1, !dbg !1691
  %46 = load ptr, ptr %3, align 8, !dbg !1692
  %47 = getelementptr inbounds nuw %struct.DState, ptr %46, i32 0, i32 25, !dbg !1692
  %48 = load i32, ptr %47, align 8, !dbg !1692
  %49 = shl i32 %48, 8, !dbg !1692
  %50 = load ptr, ptr %3, align 8, !dbg !1692
  %51 = getelementptr inbounds nuw %struct.DState, ptr %50, i32 0, i32 25, !dbg !1692
  %52 = load i32, ptr %51, align 8, !dbg !1692
  %53 = lshr i32 %52, 24, !dbg !1692
  %54 = load ptr, ptr %3, align 8, !dbg !1692
  %55 = getelementptr inbounds nuw %struct.DState, ptr %54, i32 0, i32 2, !dbg !1692
  %56 = load i8, ptr %55, align 4, !dbg !1692
  %57 = zext i8 %56 to i32, !dbg !1692
  %58 = xor i32 %53, %57, !dbg !1692
  %59 = zext i32 %58 to i64, !dbg !1692
  %60 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %59, !dbg !1692
  %61 = load i32, ptr %60, align 4, !dbg !1692
  %62 = xor i32 %49, %61, !dbg !1692
  %63 = load ptr, ptr %3, align 8, !dbg !1692
  %64 = getelementptr inbounds nuw %struct.DState, ptr %63, i32 0, i32 25, !dbg !1692
  store i32 %62, ptr %64, align 8, !dbg !1692
  %65 = load ptr, ptr %3, align 8, !dbg !1694
  %66 = getelementptr inbounds nuw %struct.DState, ptr %65, i32 0, i32 3, !dbg !1695
  %67 = load i32, ptr %66, align 8, !dbg !1696
  %68 = add nsw i32 %67, -1, !dbg !1696
  store i32 %68, ptr %66, align 8, !dbg !1696
  %69 = load ptr, ptr %3, align 8, !dbg !1697
  %70 = getelementptr inbounds nuw %struct.DState, ptr %69, i32 0, i32 0, !dbg !1698
  %71 = load ptr, ptr %70, align 8, !dbg !1698
  %72 = getelementptr inbounds nuw %struct.bz_stream, ptr %71, i32 0, i32 4, !dbg !1699
  %73 = load ptr, ptr %72, align 8, !dbg !1700
  %74 = getelementptr inbounds nuw i8, ptr %73, i32 1, !dbg !1700
  store ptr %74, ptr %72, align 8, !dbg !1700
  %75 = load ptr, ptr %3, align 8, !dbg !1701
  %76 = getelementptr inbounds nuw %struct.DState, ptr %75, i32 0, i32 0, !dbg !1702
  %77 = load ptr, ptr %76, align 8, !dbg !1702
  %78 = getelementptr inbounds nuw %struct.bz_stream, ptr %77, i32 0, i32 5, !dbg !1703
  %79 = load i32, ptr %78, align 8, !dbg !1704
  %80 = add i32 %79, -1, !dbg !1704
  store i32 %80, ptr %78, align 8, !dbg !1704
  %81 = load ptr, ptr %3, align 8, !dbg !1705
  %82 = getelementptr inbounds nuw %struct.DState, ptr %81, i32 0, i32 0, !dbg !1706
  %83 = load ptr, ptr %82, align 8, !dbg !1706
  %84 = getelementptr inbounds nuw %struct.bz_stream, ptr %83, i32 0, i32 6, !dbg !1707
  %85 = load i32, ptr %84, align 4, !dbg !1708
  %86 = add i32 %85, 1, !dbg !1708
  store i32 %86, ptr %84, align 4, !dbg !1708
  %87 = load ptr, ptr %3, align 8, !dbg !1709
  %88 = getelementptr inbounds nuw %struct.DState, ptr %87, i32 0, i32 0, !dbg !1711
  %89 = load ptr, ptr %88, align 8, !dbg !1711
  %90 = getelementptr inbounds nuw %struct.bz_stream, ptr %89, i32 0, i32 6, !dbg !1712
  %91 = load i32, ptr %90, align 4, !dbg !1712
  %92 = icmp eq i32 %91, 0, !dbg !1713
  br i1 %92, label %93, label %100, !dbg !1713

93:                                               ; preds = %37
  %94 = load ptr, ptr %3, align 8, !dbg !1714
  %95 = getelementptr inbounds nuw %struct.DState, ptr %94, i32 0, i32 0, !dbg !1715
  %96 = load ptr, ptr %95, align 8, !dbg !1715
  %97 = getelementptr inbounds nuw %struct.bz_stream, ptr %96, i32 0, i32 7, !dbg !1716
  %98 = load i32, ptr %97, align 8, !dbg !1717
  %99 = add i32 %98, 1, !dbg !1717
  store i32 %99, ptr %97, align 8, !dbg !1717
  br label %100, !dbg !1714

100:                                              ; preds = %93, %37
  br label %23, !dbg !1672, !llvm.loop !1718

101:                                              ; preds = %36
  %102 = load ptr, ptr %3, align 8, !dbg !1720
  %103 = getelementptr inbounds nuw %struct.DState, ptr %102, i32 0, i32 17, !dbg !1722
  %104 = load i32, ptr %103, align 4, !dbg !1722
  %105 = load ptr, ptr %3, align 8, !dbg !1723
  %106 = getelementptr inbounds nuw %struct.DState, ptr %105, i32 0, i32 51, !dbg !1724
  %107 = load i32, ptr %106, align 8, !dbg !1724
  %108 = add nsw i32 %107, 1, !dbg !1725
  %109 = icmp eq i32 %104, %108, !dbg !1726
  br i1 %109, label %110, label %111, !dbg !1726

110:                                              ; preds = %101
  store i8 0, ptr %2, align 1, !dbg !1727
  br label %798, !dbg !1727

111:                                              ; preds = %101
  %112 = load ptr, ptr %3, align 8, !dbg !1728
  %113 = getelementptr inbounds nuw %struct.DState, ptr %112, i32 0, i32 17, !dbg !1730
  %114 = load i32, ptr %113, align 4, !dbg !1730
  %115 = load ptr, ptr %3, align 8, !dbg !1731
  %116 = getelementptr inbounds nuw %struct.DState, ptr %115, i32 0, i32 51, !dbg !1732
  %117 = load i32, ptr %116, align 8, !dbg !1732
  %118 = add nsw i32 %117, 1, !dbg !1733
  %119 = icmp sgt i32 %114, %118, !dbg !1734
  br i1 %119, label %120, label %121, !dbg !1734

120:                                              ; preds = %111
  store i8 1, ptr %2, align 1, !dbg !1735
  br label %798, !dbg !1735

121:                                              ; preds = %111
  %122 = load ptr, ptr %3, align 8, !dbg !1736
  %123 = getelementptr inbounds nuw %struct.DState, ptr %122, i32 0, i32 3, !dbg !1737
  store i32 1, ptr %123, align 8, !dbg !1738
  %124 = load ptr, ptr %3, align 8, !dbg !1739
  %125 = getelementptr inbounds nuw %struct.DState, ptr %124, i32 0, i32 15, !dbg !1740
  %126 = load i32, ptr %125, align 8, !dbg !1740
  %127 = trunc i32 %126 to i8, !dbg !1739
  %128 = load ptr, ptr %3, align 8, !dbg !1741
  %129 = getelementptr inbounds nuw %struct.DState, ptr %128, i32 0, i32 2, !dbg !1742
  store i8 %127, ptr %129, align 4, !dbg !1743
  %130 = load ptr, ptr %3, align 8, !dbg !1744
  %131 = getelementptr inbounds nuw %struct.DState, ptr %130, i32 0, i32 20, !dbg !1744
  %132 = load ptr, ptr %131, align 8, !dbg !1744
  %133 = load ptr, ptr %3, align 8, !dbg !1744
  %134 = getelementptr inbounds nuw %struct.DState, ptr %133, i32 0, i32 14, !dbg !1744
  %135 = load i32, ptr %134, align 4, !dbg !1744
  %136 = zext i32 %135 to i64, !dbg !1744
  %137 = getelementptr inbounds nuw i32, ptr %132, i64 %136, !dbg !1744
  %138 = load i32, ptr %137, align 4, !dbg !1744
  %139 = load ptr, ptr %3, align 8, !dbg !1744
  %140 = getelementptr inbounds nuw %struct.DState, ptr %139, i32 0, i32 14, !dbg !1744
  store i32 %138, ptr %140, align 4, !dbg !1744
  %141 = load ptr, ptr %3, align 8, !dbg !1744
  %142 = getelementptr inbounds nuw %struct.DState, ptr %141, i32 0, i32 14, !dbg !1744
  %143 = load i32, ptr %142, align 4, !dbg !1744
  %144 = and i32 %143, 255, !dbg !1744
  %145 = trunc i32 %144 to i8, !dbg !1744
  store i8 %145, ptr %4, align 1, !dbg !1744
  %146 = load ptr, ptr %3, align 8, !dbg !1744
  %147 = getelementptr inbounds nuw %struct.DState, ptr %146, i32 0, i32 14, !dbg !1744
  %148 = load i32, ptr %147, align 4, !dbg !1744
  %149 = lshr i32 %148, 8, !dbg !1744
  store i32 %149, ptr %147, align 4, !dbg !1744
  %150 = load ptr, ptr %3, align 8, !dbg !1745
  %151 = getelementptr inbounds nuw %struct.DState, ptr %150, i32 0, i32 5, !dbg !1745
  %152 = load i32, ptr %151, align 8, !dbg !1745
  %153 = icmp eq i32 %152, 0, !dbg !1745
  br i1 %153, label %154, label %175, !dbg !1745

154:                                              ; preds = %121
  %155 = load ptr, ptr %3, align 8, !dbg !1747
  %156 = getelementptr inbounds nuw %struct.DState, ptr %155, i32 0, i32 6, !dbg !1747
  %157 = load i32, ptr %156, align 4, !dbg !1747
  %158 = sext i32 %157 to i64, !dbg !1747
  %159 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %158, !dbg !1747
  %160 = load i32, ptr %159, align 4, !dbg !1747
  %161 = load ptr, ptr %3, align 8, !dbg !1747
  %162 = getelementptr inbounds nuw %struct.DState, ptr %161, i32 0, i32 5, !dbg !1747
  store i32 %160, ptr %162, align 8, !dbg !1747
  %163 = load ptr, ptr %3, align 8, !dbg !1747
  %164 = getelementptr inbounds nuw %struct.DState, ptr %163, i32 0, i32 6, !dbg !1747
  %165 = load i32, ptr %164, align 4, !dbg !1747
  %166 = add nsw i32 %165, 1, !dbg !1747
  store i32 %166, ptr %164, align 4, !dbg !1747
  %167 = load ptr, ptr %3, align 8, !dbg !1749
  %168 = getelementptr inbounds nuw %struct.DState, ptr %167, i32 0, i32 6, !dbg !1749
  %169 = load i32, ptr %168, align 4, !dbg !1749
  %170 = icmp eq i32 %169, 512, !dbg !1749
  br i1 %170, label %171, label %174, !dbg !1749

171:                                              ; preds = %154
  %172 = load ptr, ptr %3, align 8, !dbg !1749
  %173 = getelementptr inbounds nuw %struct.DState, ptr %172, i32 0, i32 6, !dbg !1749
  store i32 0, ptr %173, align 4, !dbg !1749
  br label %174, !dbg !1749

174:                                              ; preds = %171, %154
  br label %175, !dbg !1747

175:                                              ; preds = %174, %121
  %176 = load ptr, ptr %3, align 8, !dbg !1751
  %177 = getelementptr inbounds nuw %struct.DState, ptr %176, i32 0, i32 5, !dbg !1751
  %178 = load i32, ptr %177, align 8, !dbg !1751
  %179 = add nsw i32 %178, -1, !dbg !1751
  store i32 %179, ptr %177, align 8, !dbg !1751
  %180 = load ptr, ptr %3, align 8, !dbg !1752
  %181 = getelementptr inbounds nuw %struct.DState, ptr %180, i32 0, i32 5, !dbg !1752
  %182 = load i32, ptr %181, align 8, !dbg !1752
  %183 = icmp eq i32 %182, 1, !dbg !1752
  %184 = zext i1 %183 to i64, !dbg !1752
  %185 = select i1 %183, i32 1, i32 0, !dbg !1752
  %186 = load i8, ptr %4, align 1, !dbg !1753
  %187 = zext i8 %186 to i32, !dbg !1753
  %188 = xor i32 %187, %185, !dbg !1753
  %189 = trunc i32 %188 to i8, !dbg !1753
  store i8 %189, ptr %4, align 1, !dbg !1753
  %190 = load ptr, ptr %3, align 8, !dbg !1754
  %191 = getelementptr inbounds nuw %struct.DState, ptr %190, i32 0, i32 17, !dbg !1755
  %192 = load i32, ptr %191, align 4, !dbg !1756
  %193 = add nsw i32 %192, 1, !dbg !1756
  store i32 %193, ptr %191, align 4, !dbg !1756
  %194 = load ptr, ptr %3, align 8, !dbg !1757
  %195 = getelementptr inbounds nuw %struct.DState, ptr %194, i32 0, i32 17, !dbg !1759
  %196 = load i32, ptr %195, align 4, !dbg !1759
  %197 = load ptr, ptr %3, align 8, !dbg !1760
  %198 = getelementptr inbounds nuw %struct.DState, ptr %197, i32 0, i32 51, !dbg !1761
  %199 = load i32, ptr %198, align 8, !dbg !1761
  %200 = add nsw i32 %199, 1, !dbg !1762
  %201 = icmp eq i32 %196, %200, !dbg !1763
  br i1 %201, label %202, label %203, !dbg !1763

202:                                              ; preds = %175
  br label %22, !dbg !1764, !llvm.loop !1765

203:                                              ; preds = %175
  %204 = load i8, ptr %4, align 1, !dbg !1767
  %205 = zext i8 %204 to i32, !dbg !1767
  %206 = load ptr, ptr %3, align 8, !dbg !1769
  %207 = getelementptr inbounds nuw %struct.DState, ptr %206, i32 0, i32 15, !dbg !1770
  %208 = load i32, ptr %207, align 8, !dbg !1770
  %209 = icmp ne i32 %205, %208, !dbg !1771
  br i1 %209, label %210, label %215, !dbg !1771

210:                                              ; preds = %203
  %211 = load i8, ptr %4, align 1, !dbg !1772
  %212 = zext i8 %211 to i32, !dbg !1772
  %213 = load ptr, ptr %3, align 8, !dbg !1774
  %214 = getelementptr inbounds nuw %struct.DState, ptr %213, i32 0, i32 15, !dbg !1775
  store i32 %212, ptr %214, align 8, !dbg !1776
  br label %22, !dbg !1777, !llvm.loop !1765

215:                                              ; preds = %203
  %216 = load ptr, ptr %3, align 8, !dbg !1778
  %217 = getelementptr inbounds nuw %struct.DState, ptr %216, i32 0, i32 3, !dbg !1779
  store i32 2, ptr %217, align 8, !dbg !1780
  %218 = load ptr, ptr %3, align 8, !dbg !1781
  %219 = getelementptr inbounds nuw %struct.DState, ptr %218, i32 0, i32 20, !dbg !1781
  %220 = load ptr, ptr %219, align 8, !dbg !1781
  %221 = load ptr, ptr %3, align 8, !dbg !1781
  %222 = getelementptr inbounds nuw %struct.DState, ptr %221, i32 0, i32 14, !dbg !1781
  %223 = load i32, ptr %222, align 4, !dbg !1781
  %224 = zext i32 %223 to i64, !dbg !1781
  %225 = getelementptr inbounds nuw i32, ptr %220, i64 %224, !dbg !1781
  %226 = load i32, ptr %225, align 4, !dbg !1781
  %227 = load ptr, ptr %3, align 8, !dbg !1781
  %228 = getelementptr inbounds nuw %struct.DState, ptr %227, i32 0, i32 14, !dbg !1781
  store i32 %226, ptr %228, align 4, !dbg !1781
  %229 = load ptr, ptr %3, align 8, !dbg !1781
  %230 = getelementptr inbounds nuw %struct.DState, ptr %229, i32 0, i32 14, !dbg !1781
  %231 = load i32, ptr %230, align 4, !dbg !1781
  %232 = and i32 %231, 255, !dbg !1781
  %233 = trunc i32 %232 to i8, !dbg !1781
  store i8 %233, ptr %4, align 1, !dbg !1781
  %234 = load ptr, ptr %3, align 8, !dbg !1781
  %235 = getelementptr inbounds nuw %struct.DState, ptr %234, i32 0, i32 14, !dbg !1781
  %236 = load i32, ptr %235, align 4, !dbg !1781
  %237 = lshr i32 %236, 8, !dbg !1781
  store i32 %237, ptr %235, align 4, !dbg !1781
  %238 = load ptr, ptr %3, align 8, !dbg !1782
  %239 = getelementptr inbounds nuw %struct.DState, ptr %238, i32 0, i32 5, !dbg !1782
  %240 = load i32, ptr %239, align 8, !dbg !1782
  %241 = icmp eq i32 %240, 0, !dbg !1782
  br i1 %241, label %242, label %263, !dbg !1782

242:                                              ; preds = %215
  %243 = load ptr, ptr %3, align 8, !dbg !1784
  %244 = getelementptr inbounds nuw %struct.DState, ptr %243, i32 0, i32 6, !dbg !1784
  %245 = load i32, ptr %244, align 4, !dbg !1784
  %246 = sext i32 %245 to i64, !dbg !1784
  %247 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %246, !dbg !1784
  %248 = load i32, ptr %247, align 4, !dbg !1784
  %249 = load ptr, ptr %3, align 8, !dbg !1784
  %250 = getelementptr inbounds nuw %struct.DState, ptr %249, i32 0, i32 5, !dbg !1784
  store i32 %248, ptr %250, align 8, !dbg !1784
  %251 = load ptr, ptr %3, align 8, !dbg !1784
  %252 = getelementptr inbounds nuw %struct.DState, ptr %251, i32 0, i32 6, !dbg !1784
  %253 = load i32, ptr %252, align 4, !dbg !1784
  %254 = add nsw i32 %253, 1, !dbg !1784
  store i32 %254, ptr %252, align 4, !dbg !1784
  %255 = load ptr, ptr %3, align 8, !dbg !1786
  %256 = getelementptr inbounds nuw %struct.DState, ptr %255, i32 0, i32 6, !dbg !1786
  %257 = load i32, ptr %256, align 4, !dbg !1786
  %258 = icmp eq i32 %257, 512, !dbg !1786
  br i1 %258, label %259, label %262, !dbg !1786

259:                                              ; preds = %242
  %260 = load ptr, ptr %3, align 8, !dbg !1786
  %261 = getelementptr inbounds nuw %struct.DState, ptr %260, i32 0, i32 6, !dbg !1786
  store i32 0, ptr %261, align 4, !dbg !1786
  br label %262, !dbg !1786

262:                                              ; preds = %259, %242
  br label %263, !dbg !1784

263:                                              ; preds = %262, %215
  %264 = load ptr, ptr %3, align 8, !dbg !1788
  %265 = getelementptr inbounds nuw %struct.DState, ptr %264, i32 0, i32 5, !dbg !1788
  %266 = load i32, ptr %265, align 8, !dbg !1788
  %267 = add nsw i32 %266, -1, !dbg !1788
  store i32 %267, ptr %265, align 8, !dbg !1788
  %268 = load ptr, ptr %3, align 8, !dbg !1789
  %269 = getelementptr inbounds nuw %struct.DState, ptr %268, i32 0, i32 5, !dbg !1789
  %270 = load i32, ptr %269, align 8, !dbg !1789
  %271 = icmp eq i32 %270, 1, !dbg !1789
  %272 = zext i1 %271 to i64, !dbg !1789
  %273 = select i1 %271, i32 1, i32 0, !dbg !1789
  %274 = load i8, ptr %4, align 1, !dbg !1790
  %275 = zext i8 %274 to i32, !dbg !1790
  %276 = xor i32 %275, %273, !dbg !1790
  %277 = trunc i32 %276 to i8, !dbg !1790
  store i8 %277, ptr %4, align 1, !dbg !1790
  %278 = load ptr, ptr %3, align 8, !dbg !1791
  %279 = getelementptr inbounds nuw %struct.DState, ptr %278, i32 0, i32 17, !dbg !1792
  %280 = load i32, ptr %279, align 4, !dbg !1793
  %281 = add nsw i32 %280, 1, !dbg !1793
  store i32 %281, ptr %279, align 4, !dbg !1793
  %282 = load ptr, ptr %3, align 8, !dbg !1794
  %283 = getelementptr inbounds nuw %struct.DState, ptr %282, i32 0, i32 17, !dbg !1796
  %284 = load i32, ptr %283, align 4, !dbg !1796
  %285 = load ptr, ptr %3, align 8, !dbg !1797
  %286 = getelementptr inbounds nuw %struct.DState, ptr %285, i32 0, i32 51, !dbg !1798
  %287 = load i32, ptr %286, align 8, !dbg !1798
  %288 = add nsw i32 %287, 1, !dbg !1799
  %289 = icmp eq i32 %284, %288, !dbg !1800
  br i1 %289, label %290, label %291, !dbg !1800

290:                                              ; preds = %263
  br label %22, !dbg !1801, !llvm.loop !1765

291:                                              ; preds = %263
  %292 = load i8, ptr %4, align 1, !dbg !1802
  %293 = zext i8 %292 to i32, !dbg !1802
  %294 = load ptr, ptr %3, align 8, !dbg !1804
  %295 = getelementptr inbounds nuw %struct.DState, ptr %294, i32 0, i32 15, !dbg !1805
  %296 = load i32, ptr %295, align 8, !dbg !1805
  %297 = icmp ne i32 %293, %296, !dbg !1806
  br i1 %297, label %298, label %303, !dbg !1806

298:                                              ; preds = %291
  %299 = load i8, ptr %4, align 1, !dbg !1807
  %300 = zext i8 %299 to i32, !dbg !1807
  %301 = load ptr, ptr %3, align 8, !dbg !1809
  %302 = getelementptr inbounds nuw %struct.DState, ptr %301, i32 0, i32 15, !dbg !1810
  store i32 %300, ptr %302, align 8, !dbg !1811
  br label %22, !dbg !1812, !llvm.loop !1765

303:                                              ; preds = %291
  %304 = load ptr, ptr %3, align 8, !dbg !1813
  %305 = getelementptr inbounds nuw %struct.DState, ptr %304, i32 0, i32 3, !dbg !1814
  store i32 3, ptr %305, align 8, !dbg !1815
  %306 = load ptr, ptr %3, align 8, !dbg !1816
  %307 = getelementptr inbounds nuw %struct.DState, ptr %306, i32 0, i32 20, !dbg !1816
  %308 = load ptr, ptr %307, align 8, !dbg !1816
  %309 = load ptr, ptr %3, align 8, !dbg !1816
  %310 = getelementptr inbounds nuw %struct.DState, ptr %309, i32 0, i32 14, !dbg !1816
  %311 = load i32, ptr %310, align 4, !dbg !1816
  %312 = zext i32 %311 to i64, !dbg !1816
  %313 = getelementptr inbounds nuw i32, ptr %308, i64 %312, !dbg !1816
  %314 = load i32, ptr %313, align 4, !dbg !1816
  %315 = load ptr, ptr %3, align 8, !dbg !1816
  %316 = getelementptr inbounds nuw %struct.DState, ptr %315, i32 0, i32 14, !dbg !1816
  store i32 %314, ptr %316, align 4, !dbg !1816
  %317 = load ptr, ptr %3, align 8, !dbg !1816
  %318 = getelementptr inbounds nuw %struct.DState, ptr %317, i32 0, i32 14, !dbg !1816
  %319 = load i32, ptr %318, align 4, !dbg !1816
  %320 = and i32 %319, 255, !dbg !1816
  %321 = trunc i32 %320 to i8, !dbg !1816
  store i8 %321, ptr %4, align 1, !dbg !1816
  %322 = load ptr, ptr %3, align 8, !dbg !1816
  %323 = getelementptr inbounds nuw %struct.DState, ptr %322, i32 0, i32 14, !dbg !1816
  %324 = load i32, ptr %323, align 4, !dbg !1816
  %325 = lshr i32 %324, 8, !dbg !1816
  store i32 %325, ptr %323, align 4, !dbg !1816
  %326 = load ptr, ptr %3, align 8, !dbg !1817
  %327 = getelementptr inbounds nuw %struct.DState, ptr %326, i32 0, i32 5, !dbg !1817
  %328 = load i32, ptr %327, align 8, !dbg !1817
  %329 = icmp eq i32 %328, 0, !dbg !1817
  br i1 %329, label %330, label %351, !dbg !1817

330:                                              ; preds = %303
  %331 = load ptr, ptr %3, align 8, !dbg !1819
  %332 = getelementptr inbounds nuw %struct.DState, ptr %331, i32 0, i32 6, !dbg !1819
  %333 = load i32, ptr %332, align 4, !dbg !1819
  %334 = sext i32 %333 to i64, !dbg !1819
  %335 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %334, !dbg !1819
  %336 = load i32, ptr %335, align 4, !dbg !1819
  %337 = load ptr, ptr %3, align 8, !dbg !1819
  %338 = getelementptr inbounds nuw %struct.DState, ptr %337, i32 0, i32 5, !dbg !1819
  store i32 %336, ptr %338, align 8, !dbg !1819
  %339 = load ptr, ptr %3, align 8, !dbg !1819
  %340 = getelementptr inbounds nuw %struct.DState, ptr %339, i32 0, i32 6, !dbg !1819
  %341 = load i32, ptr %340, align 4, !dbg !1819
  %342 = add nsw i32 %341, 1, !dbg !1819
  store i32 %342, ptr %340, align 4, !dbg !1819
  %343 = load ptr, ptr %3, align 8, !dbg !1821
  %344 = getelementptr inbounds nuw %struct.DState, ptr %343, i32 0, i32 6, !dbg !1821
  %345 = load i32, ptr %344, align 4, !dbg !1821
  %346 = icmp eq i32 %345, 512, !dbg !1821
  br i1 %346, label %347, label %350, !dbg !1821

347:                                              ; preds = %330
  %348 = load ptr, ptr %3, align 8, !dbg !1821
  %349 = getelementptr inbounds nuw %struct.DState, ptr %348, i32 0, i32 6, !dbg !1821
  store i32 0, ptr %349, align 4, !dbg !1821
  br label %350, !dbg !1821

350:                                              ; preds = %347, %330
  br label %351, !dbg !1819

351:                                              ; preds = %350, %303
  %352 = load ptr, ptr %3, align 8, !dbg !1823
  %353 = getelementptr inbounds nuw %struct.DState, ptr %352, i32 0, i32 5, !dbg !1823
  %354 = load i32, ptr %353, align 8, !dbg !1823
  %355 = add nsw i32 %354, -1, !dbg !1823
  store i32 %355, ptr %353, align 8, !dbg !1823
  %356 = load ptr, ptr %3, align 8, !dbg !1824
  %357 = getelementptr inbounds nuw %struct.DState, ptr %356, i32 0, i32 5, !dbg !1824
  %358 = load i32, ptr %357, align 8, !dbg !1824
  %359 = icmp eq i32 %358, 1, !dbg !1824
  %360 = zext i1 %359 to i64, !dbg !1824
  %361 = select i1 %359, i32 1, i32 0, !dbg !1824
  %362 = load i8, ptr %4, align 1, !dbg !1825
  %363 = zext i8 %362 to i32, !dbg !1825
  %364 = xor i32 %363, %361, !dbg !1825
  %365 = trunc i32 %364 to i8, !dbg !1825
  store i8 %365, ptr %4, align 1, !dbg !1825
  %366 = load ptr, ptr %3, align 8, !dbg !1826
  %367 = getelementptr inbounds nuw %struct.DState, ptr %366, i32 0, i32 17, !dbg !1827
  %368 = load i32, ptr %367, align 4, !dbg !1828
  %369 = add nsw i32 %368, 1, !dbg !1828
  store i32 %369, ptr %367, align 4, !dbg !1828
  %370 = load ptr, ptr %3, align 8, !dbg !1829
  %371 = getelementptr inbounds nuw %struct.DState, ptr %370, i32 0, i32 17, !dbg !1831
  %372 = load i32, ptr %371, align 4, !dbg !1831
  %373 = load ptr, ptr %3, align 8, !dbg !1832
  %374 = getelementptr inbounds nuw %struct.DState, ptr %373, i32 0, i32 51, !dbg !1833
  %375 = load i32, ptr %374, align 8, !dbg !1833
  %376 = add nsw i32 %375, 1, !dbg !1834
  %377 = icmp eq i32 %372, %376, !dbg !1835
  br i1 %377, label %378, label %379, !dbg !1835

378:                                              ; preds = %351
  br label %22, !dbg !1836, !llvm.loop !1765

379:                                              ; preds = %351
  %380 = load i8, ptr %4, align 1, !dbg !1837
  %381 = zext i8 %380 to i32, !dbg !1837
  %382 = load ptr, ptr %3, align 8, !dbg !1839
  %383 = getelementptr inbounds nuw %struct.DState, ptr %382, i32 0, i32 15, !dbg !1840
  %384 = load i32, ptr %383, align 8, !dbg !1840
  %385 = icmp ne i32 %381, %384, !dbg !1841
  br i1 %385, label %386, label %391, !dbg !1841

386:                                              ; preds = %379
  %387 = load i8, ptr %4, align 1, !dbg !1842
  %388 = zext i8 %387 to i32, !dbg !1842
  %389 = load ptr, ptr %3, align 8, !dbg !1844
  %390 = getelementptr inbounds nuw %struct.DState, ptr %389, i32 0, i32 15, !dbg !1845
  store i32 %388, ptr %390, align 8, !dbg !1846
  br label %22, !dbg !1847, !llvm.loop !1765

391:                                              ; preds = %379
  %392 = load ptr, ptr %3, align 8, !dbg !1848
  %393 = getelementptr inbounds nuw %struct.DState, ptr %392, i32 0, i32 20, !dbg !1848
  %394 = load ptr, ptr %393, align 8, !dbg !1848
  %395 = load ptr, ptr %3, align 8, !dbg !1848
  %396 = getelementptr inbounds nuw %struct.DState, ptr %395, i32 0, i32 14, !dbg !1848
  %397 = load i32, ptr %396, align 4, !dbg !1848
  %398 = zext i32 %397 to i64, !dbg !1848
  %399 = getelementptr inbounds nuw i32, ptr %394, i64 %398, !dbg !1848
  %400 = load i32, ptr %399, align 4, !dbg !1848
  %401 = load ptr, ptr %3, align 8, !dbg !1848
  %402 = getelementptr inbounds nuw %struct.DState, ptr %401, i32 0, i32 14, !dbg !1848
  store i32 %400, ptr %402, align 4, !dbg !1848
  %403 = load ptr, ptr %3, align 8, !dbg !1848
  %404 = getelementptr inbounds nuw %struct.DState, ptr %403, i32 0, i32 14, !dbg !1848
  %405 = load i32, ptr %404, align 4, !dbg !1848
  %406 = and i32 %405, 255, !dbg !1848
  %407 = trunc i32 %406 to i8, !dbg !1848
  store i8 %407, ptr %4, align 1, !dbg !1848
  %408 = load ptr, ptr %3, align 8, !dbg !1848
  %409 = getelementptr inbounds nuw %struct.DState, ptr %408, i32 0, i32 14, !dbg !1848
  %410 = load i32, ptr %409, align 4, !dbg !1848
  %411 = lshr i32 %410, 8, !dbg !1848
  store i32 %411, ptr %409, align 4, !dbg !1848
  %412 = load ptr, ptr %3, align 8, !dbg !1849
  %413 = getelementptr inbounds nuw %struct.DState, ptr %412, i32 0, i32 5, !dbg !1849
  %414 = load i32, ptr %413, align 8, !dbg !1849
  %415 = icmp eq i32 %414, 0, !dbg !1849
  br i1 %415, label %416, label %437, !dbg !1849

416:                                              ; preds = %391
  %417 = load ptr, ptr %3, align 8, !dbg !1851
  %418 = getelementptr inbounds nuw %struct.DState, ptr %417, i32 0, i32 6, !dbg !1851
  %419 = load i32, ptr %418, align 4, !dbg !1851
  %420 = sext i32 %419 to i64, !dbg !1851
  %421 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %420, !dbg !1851
  %422 = load i32, ptr %421, align 4, !dbg !1851
  %423 = load ptr, ptr %3, align 8, !dbg !1851
  %424 = getelementptr inbounds nuw %struct.DState, ptr %423, i32 0, i32 5, !dbg !1851
  store i32 %422, ptr %424, align 8, !dbg !1851
  %425 = load ptr, ptr %3, align 8, !dbg !1851
  %426 = getelementptr inbounds nuw %struct.DState, ptr %425, i32 0, i32 6, !dbg !1851
  %427 = load i32, ptr %426, align 4, !dbg !1851
  %428 = add nsw i32 %427, 1, !dbg !1851
  store i32 %428, ptr %426, align 4, !dbg !1851
  %429 = load ptr, ptr %3, align 8, !dbg !1853
  %430 = getelementptr inbounds nuw %struct.DState, ptr %429, i32 0, i32 6, !dbg !1853
  %431 = load i32, ptr %430, align 4, !dbg !1853
  %432 = icmp eq i32 %431, 512, !dbg !1853
  br i1 %432, label %433, label %436, !dbg !1853

433:                                              ; preds = %416
  %434 = load ptr, ptr %3, align 8, !dbg !1853
  %435 = getelementptr inbounds nuw %struct.DState, ptr %434, i32 0, i32 6, !dbg !1853
  store i32 0, ptr %435, align 4, !dbg !1853
  br label %436, !dbg !1853

436:                                              ; preds = %433, %416
  br label %437, !dbg !1851

437:                                              ; preds = %436, %391
  %438 = load ptr, ptr %3, align 8, !dbg !1855
  %439 = getelementptr inbounds nuw %struct.DState, ptr %438, i32 0, i32 5, !dbg !1855
  %440 = load i32, ptr %439, align 8, !dbg !1855
  %441 = add nsw i32 %440, -1, !dbg !1855
  store i32 %441, ptr %439, align 8, !dbg !1855
  %442 = load ptr, ptr %3, align 8, !dbg !1856
  %443 = getelementptr inbounds nuw %struct.DState, ptr %442, i32 0, i32 5, !dbg !1856
  %444 = load i32, ptr %443, align 8, !dbg !1856
  %445 = icmp eq i32 %444, 1, !dbg !1856
  %446 = zext i1 %445 to i64, !dbg !1856
  %447 = select i1 %445, i32 1, i32 0, !dbg !1856
  %448 = load i8, ptr %4, align 1, !dbg !1857
  %449 = zext i8 %448 to i32, !dbg !1857
  %450 = xor i32 %449, %447, !dbg !1857
  %451 = trunc i32 %450 to i8, !dbg !1857
  store i8 %451, ptr %4, align 1, !dbg !1857
  %452 = load ptr, ptr %3, align 8, !dbg !1858
  %453 = getelementptr inbounds nuw %struct.DState, ptr %452, i32 0, i32 17, !dbg !1859
  %454 = load i32, ptr %453, align 4, !dbg !1860
  %455 = add nsw i32 %454, 1, !dbg !1860
  store i32 %455, ptr %453, align 4, !dbg !1860
  %456 = load i8, ptr %4, align 1, !dbg !1861
  %457 = zext i8 %456 to i32, !dbg !1862
  %458 = add nsw i32 %457, 4, !dbg !1863
  %459 = load ptr, ptr %3, align 8, !dbg !1864
  %460 = getelementptr inbounds nuw %struct.DState, ptr %459, i32 0, i32 3, !dbg !1865
  store i32 %458, ptr %460, align 8, !dbg !1866
  %461 = load ptr, ptr %3, align 8, !dbg !1867
  %462 = getelementptr inbounds nuw %struct.DState, ptr %461, i32 0, i32 20, !dbg !1867
  %463 = load ptr, ptr %462, align 8, !dbg !1867
  %464 = load ptr, ptr %3, align 8, !dbg !1867
  %465 = getelementptr inbounds nuw %struct.DState, ptr %464, i32 0, i32 14, !dbg !1867
  %466 = load i32, ptr %465, align 4, !dbg !1867
  %467 = zext i32 %466 to i64, !dbg !1867
  %468 = getelementptr inbounds nuw i32, ptr %463, i64 %467, !dbg !1867
  %469 = load i32, ptr %468, align 4, !dbg !1867
  %470 = load ptr, ptr %3, align 8, !dbg !1867
  %471 = getelementptr inbounds nuw %struct.DState, ptr %470, i32 0, i32 14, !dbg !1867
  store i32 %469, ptr %471, align 4, !dbg !1867
  %472 = load ptr, ptr %3, align 8, !dbg !1867
  %473 = getelementptr inbounds nuw %struct.DState, ptr %472, i32 0, i32 14, !dbg !1867
  %474 = load i32, ptr %473, align 4, !dbg !1867
  %475 = and i32 %474, 255, !dbg !1867
  %476 = trunc i32 %475 to i8, !dbg !1867
  %477 = zext i8 %476 to i32, !dbg !1867
  %478 = load ptr, ptr %3, align 8, !dbg !1867
  %479 = getelementptr inbounds nuw %struct.DState, ptr %478, i32 0, i32 15, !dbg !1867
  store i32 %477, ptr %479, align 8, !dbg !1867
  %480 = load ptr, ptr %3, align 8, !dbg !1867
  %481 = getelementptr inbounds nuw %struct.DState, ptr %480, i32 0, i32 14, !dbg !1867
  %482 = load i32, ptr %481, align 4, !dbg !1867
  %483 = lshr i32 %482, 8, !dbg !1867
  store i32 %483, ptr %481, align 4, !dbg !1867
  %484 = load ptr, ptr %3, align 8, !dbg !1868
  %485 = getelementptr inbounds nuw %struct.DState, ptr %484, i32 0, i32 5, !dbg !1868
  %486 = load i32, ptr %485, align 8, !dbg !1868
  %487 = icmp eq i32 %486, 0, !dbg !1868
  br i1 %487, label %488, label %509, !dbg !1868

488:                                              ; preds = %437
  %489 = load ptr, ptr %3, align 8, !dbg !1870
  %490 = getelementptr inbounds nuw %struct.DState, ptr %489, i32 0, i32 6, !dbg !1870
  %491 = load i32, ptr %490, align 4, !dbg !1870
  %492 = sext i32 %491 to i64, !dbg !1870
  %493 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %492, !dbg !1870
  %494 = load i32, ptr %493, align 4, !dbg !1870
  %495 = load ptr, ptr %3, align 8, !dbg !1870
  %496 = getelementptr inbounds nuw %struct.DState, ptr %495, i32 0, i32 5, !dbg !1870
  store i32 %494, ptr %496, align 8, !dbg !1870
  %497 = load ptr, ptr %3, align 8, !dbg !1870
  %498 = getelementptr inbounds nuw %struct.DState, ptr %497, i32 0, i32 6, !dbg !1870
  %499 = load i32, ptr %498, align 4, !dbg !1870
  %500 = add nsw i32 %499, 1, !dbg !1870
  store i32 %500, ptr %498, align 4, !dbg !1870
  %501 = load ptr, ptr %3, align 8, !dbg !1872
  %502 = getelementptr inbounds nuw %struct.DState, ptr %501, i32 0, i32 6, !dbg !1872
  %503 = load i32, ptr %502, align 4, !dbg !1872
  %504 = icmp eq i32 %503, 512, !dbg !1872
  br i1 %504, label %505, label %508, !dbg !1872

505:                                              ; preds = %488
  %506 = load ptr, ptr %3, align 8, !dbg !1872
  %507 = getelementptr inbounds nuw %struct.DState, ptr %506, i32 0, i32 6, !dbg !1872
  store i32 0, ptr %507, align 4, !dbg !1872
  br label %508, !dbg !1872

508:                                              ; preds = %505, %488
  br label %509, !dbg !1870

509:                                              ; preds = %508, %437
  %510 = load ptr, ptr %3, align 8, !dbg !1874
  %511 = getelementptr inbounds nuw %struct.DState, ptr %510, i32 0, i32 5, !dbg !1874
  %512 = load i32, ptr %511, align 8, !dbg !1874
  %513 = add nsw i32 %512, -1, !dbg !1874
  store i32 %513, ptr %511, align 8, !dbg !1874
  %514 = load ptr, ptr %3, align 8, !dbg !1875
  %515 = getelementptr inbounds nuw %struct.DState, ptr %514, i32 0, i32 5, !dbg !1875
  %516 = load i32, ptr %515, align 8, !dbg !1875
  %517 = icmp eq i32 %516, 1, !dbg !1875
  %518 = zext i1 %517 to i64, !dbg !1875
  %519 = select i1 %517, i32 1, i32 0, !dbg !1875
  %520 = load ptr, ptr %3, align 8, !dbg !1876
  %521 = getelementptr inbounds nuw %struct.DState, ptr %520, i32 0, i32 15, !dbg !1877
  %522 = load i32, ptr %521, align 8, !dbg !1878
  %523 = xor i32 %522, %519, !dbg !1878
  store i32 %523, ptr %521, align 8, !dbg !1878
  %524 = load ptr, ptr %3, align 8, !dbg !1879
  %525 = getelementptr inbounds nuw %struct.DState, ptr %524, i32 0, i32 17, !dbg !1880
  %526 = load i32, ptr %525, align 4, !dbg !1881
  %527 = add nsw i32 %526, 1, !dbg !1881
  store i32 %527, ptr %525, align 4, !dbg !1881
  br label %22, !dbg !1670, !llvm.loop !1765

528:                                              ; preds = %1
    #dbg_declare(ptr %5, !1882, !DIExpression(), !1884)
  %529 = load ptr, ptr %3, align 8, !dbg !1885
  %530 = getelementptr inbounds nuw %struct.DState, ptr %529, i32 0, i32 25, !dbg !1886
  %531 = load i32, ptr %530, align 8, !dbg !1886
  store i32 %531, ptr %5, align 4, !dbg !1884
    #dbg_declare(ptr %6, !1887, !DIExpression(), !1888)
  %532 = load ptr, ptr %3, align 8, !dbg !1889
  %533 = getelementptr inbounds nuw %struct.DState, ptr %532, i32 0, i32 2, !dbg !1890
  %534 = load i8, ptr %533, align 4, !dbg !1890
  store i8 %534, ptr %6, align 1, !dbg !1888
    #dbg_declare(ptr %7, !1891, !DIExpression(), !1892)
  %535 = load ptr, ptr %3, align 8, !dbg !1893
  %536 = getelementptr inbounds nuw %struct.DState, ptr %535, i32 0, i32 3, !dbg !1894
  %537 = load i32, ptr %536, align 8, !dbg !1894
  store i32 %537, ptr %7, align 4, !dbg !1892
    #dbg_declare(ptr %8, !1895, !DIExpression(), !1896)
  %538 = load ptr, ptr %3, align 8, !dbg !1897
  %539 = getelementptr inbounds nuw %struct.DState, ptr %538, i32 0, i32 17, !dbg !1898
  %540 = load i32, ptr %539, align 4, !dbg !1898
  store i32 %540, ptr %8, align 4, !dbg !1896
    #dbg_declare(ptr %9, !1899, !DIExpression(), !1900)
  %541 = load ptr, ptr %3, align 8, !dbg !1901
  %542 = getelementptr inbounds nuw %struct.DState, ptr %541, i32 0, i32 15, !dbg !1902
  %543 = load i32, ptr %542, align 8, !dbg !1902
  store i32 %543, ptr %9, align 4, !dbg !1900
    #dbg_declare(ptr %10, !1903, !DIExpression(), !1904)
  %544 = load ptr, ptr %3, align 8, !dbg !1905
  %545 = getelementptr inbounds nuw %struct.DState, ptr %544, i32 0, i32 20, !dbg !1906
  %546 = load ptr, ptr %545, align 8, !dbg !1906
  store ptr %546, ptr %10, align 8, !dbg !1904
    #dbg_declare(ptr %11, !1907, !DIExpression(), !1908)
  %547 = load ptr, ptr %3, align 8, !dbg !1909
  %548 = getelementptr inbounds nuw %struct.DState, ptr %547, i32 0, i32 14, !dbg !1910
  %549 = load i32, ptr %548, align 4, !dbg !1910
  store i32 %549, ptr %11, align 4, !dbg !1908
    #dbg_declare(ptr %12, !1911, !DIExpression(), !1912)
  %550 = load ptr, ptr %3, align 8, !dbg !1913
  %551 = getelementptr inbounds nuw %struct.DState, ptr %550, i32 0, i32 0, !dbg !1914
  %552 = load ptr, ptr %551, align 8, !dbg !1914
  %553 = getelementptr inbounds nuw %struct.bz_stream, ptr %552, i32 0, i32 4, !dbg !1915
  %554 = load ptr, ptr %553, align 8, !dbg !1915
  store ptr %554, ptr %12, align 8, !dbg !1912
    #dbg_declare(ptr %13, !1916, !DIExpression(), !1917)
  %555 = load ptr, ptr %3, align 8, !dbg !1918
  %556 = getelementptr inbounds nuw %struct.DState, ptr %555, i32 0, i32 0, !dbg !1919
  %557 = load ptr, ptr %556, align 8, !dbg !1919
  %558 = getelementptr inbounds nuw %struct.bz_stream, ptr %557, i32 0, i32 5, !dbg !1920
  %559 = load i32, ptr %558, align 8, !dbg !1920
  store i32 %559, ptr %13, align 4, !dbg !1917
    #dbg_declare(ptr %14, !1921, !DIExpression(), !1922)
  %560 = load i32, ptr %13, align 4, !dbg !1923
  store i32 %560, ptr %14, align 4, !dbg !1922
    #dbg_declare(ptr %15, !1924, !DIExpression(), !1925)
  %561 = load ptr, ptr %3, align 8, !dbg !1926
  %562 = getelementptr inbounds nuw %struct.DState, ptr %561, i32 0, i32 51, !dbg !1927
  %563 = load i32, ptr %562, align 8, !dbg !1927
  %564 = add nsw i32 %563, 1, !dbg !1928
  store i32 %564, ptr %15, align 4, !dbg !1925
    #dbg_declare(ptr %16, !1929, !DIExpression(), !1930)
  br label %565, !dbg !1931

565:                                              ; preds = %528, %673, %679, %698, %704, %707
  %566 = load i32, ptr %7, align 4, !dbg !1932
  %567 = icmp sgt i32 %566, 0, !dbg !1935
  br i1 %567, label %568, label %620, !dbg !1935

568:                                              ; preds = %565
  br label %569, !dbg !1936

569:                                              ; preds = %568, %577
  %570 = load i32, ptr %13, align 4, !dbg !1938
  %571 = icmp eq i32 %570, 0, !dbg !1941
  br i1 %571, label %572, label %573, !dbg !1941

572:                                              ; preds = %569
  br label %736, !dbg !1942

573:                                              ; preds = %569
  %574 = load i32, ptr %7, align 4, !dbg !1943
  %575 = icmp eq i32 %574, 1, !dbg !1945
  br i1 %575, label %576, label %577, !dbg !1945

576:                                              ; preds = %573
  br label %597, !dbg !1946

577:                                              ; preds = %573
  %578 = load i8, ptr %6, align 1, !dbg !1947
  %579 = load ptr, ptr %12, align 8, !dbg !1948
  store i8 %578, ptr %579, align 1, !dbg !1949
  %580 = load i32, ptr %5, align 4, !dbg !1950
  %581 = shl i32 %580, 8, !dbg !1950
  %582 = load i32, ptr %5, align 4, !dbg !1950
  %583 = lshr i32 %582, 24, !dbg !1950
  %584 = load i8, ptr %6, align 1, !dbg !1950
  %585 = zext i8 %584 to i32, !dbg !1950
  %586 = xor i32 %583, %585, !dbg !1950
  %587 = zext i32 %586 to i64, !dbg !1950
  %588 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %587, !dbg !1950
  %589 = load i32, ptr %588, align 4, !dbg !1950
  %590 = xor i32 %581, %589, !dbg !1950
  store i32 %590, ptr %5, align 4, !dbg !1950
  %591 = load i32, ptr %7, align 4, !dbg !1952
  %592 = add nsw i32 %591, -1, !dbg !1952
  store i32 %592, ptr %7, align 4, !dbg !1952
  %593 = load ptr, ptr %12, align 8, !dbg !1953
  %594 = getelementptr inbounds nuw i8, ptr %593, i32 1, !dbg !1953
  store ptr %594, ptr %12, align 8, !dbg !1953
  %595 = load i32, ptr %13, align 4, !dbg !1954
  %596 = add i32 %595, -1, !dbg !1954
  store i32 %596, ptr %13, align 4, !dbg !1954
  br label %569, !dbg !1936, !llvm.loop !1955

597:                                              ; preds = %576
  br label %598, !dbg !1936

598:                                              ; preds = %656, %649, %597
    #dbg_label(!1957, !1958)
  %599 = load i32, ptr %13, align 4, !dbg !1959
  %600 = icmp eq i32 %599, 0, !dbg !1962
  br i1 %600, label %601, label %602, !dbg !1962

601:                                              ; preds = %598
  store i32 1, ptr %7, align 4, !dbg !1963
  br label %736, !dbg !1965

602:                                              ; preds = %598
  %603 = load i8, ptr %6, align 1, !dbg !1966
  %604 = load ptr, ptr %12, align 8, !dbg !1967
  store i8 %603, ptr %604, align 1, !dbg !1968
  %605 = load i32, ptr %5, align 4, !dbg !1969
  %606 = shl i32 %605, 8, !dbg !1969
  %607 = load i32, ptr %5, align 4, !dbg !1969
  %608 = lshr i32 %607, 24, !dbg !1969
  %609 = load i8, ptr %6, align 1, !dbg !1969
  %610 = zext i8 %609 to i32, !dbg !1969
  %611 = xor i32 %608, %610, !dbg !1969
  %612 = zext i32 %611 to i64, !dbg !1969
  %613 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %612, !dbg !1969
  %614 = load i32, ptr %613, align 4, !dbg !1969
  %615 = xor i32 %606, %614, !dbg !1969
  store i32 %615, ptr %5, align 4, !dbg !1969
  %616 = load ptr, ptr %12, align 8, !dbg !1971
  %617 = getelementptr inbounds nuw i8, ptr %616, i32 1, !dbg !1971
  store ptr %617, ptr %12, align 8, !dbg !1971
  %618 = load i32, ptr %13, align 4, !dbg !1972
  %619 = add i32 %618, -1, !dbg !1972
  store i32 %619, ptr %13, align 4, !dbg !1972
  br label %620, !dbg !1973

620:                                              ; preds = %602, %565
  %621 = load i32, ptr %8, align 4, !dbg !1974
  %622 = load i32, ptr %15, align 4, !dbg !1976
  %623 = icmp sgt i32 %621, %622, !dbg !1977
  br i1 %623, label %624, label %625, !dbg !1977

624:                                              ; preds = %620
  store i8 1, ptr %2, align 1, !dbg !1978
  br label %798, !dbg !1978

625:                                              ; preds = %620
  %626 = load i32, ptr %8, align 4, !dbg !1979
  %627 = load i32, ptr %15, align 4, !dbg !1981
  %628 = icmp eq i32 %626, %627, !dbg !1982
  br i1 %628, label %629, label %630, !dbg !1982

629:                                              ; preds = %625
  store i32 0, ptr %7, align 4, !dbg !1983
  br label %736, !dbg !1985

630:                                              ; preds = %625
  %631 = load i32, ptr %9, align 4, !dbg !1986
  %632 = trunc i32 %631 to i8, !dbg !1986
  store i8 %632, ptr %6, align 1, !dbg !1987
  %633 = load ptr, ptr %10, align 8, !dbg !1988
  %634 = load i32, ptr %11, align 4, !dbg !1988
  %635 = zext i32 %634 to i64, !dbg !1988
  %636 = getelementptr inbounds nuw i32, ptr %633, i64 %635, !dbg !1988
  %637 = load i32, ptr %636, align 4, !dbg !1988
  store i32 %637, ptr %11, align 4, !dbg !1988
  %638 = load i32, ptr %11, align 4, !dbg !1988
  %639 = and i32 %638, 255, !dbg !1988
  %640 = trunc i32 %639 to i8, !dbg !1988
  store i8 %640, ptr %4, align 1, !dbg !1988
  %641 = load i32, ptr %11, align 4, !dbg !1988
  %642 = lshr i32 %641, 8, !dbg !1988
  store i32 %642, ptr %11, align 4, !dbg !1988
  %643 = load i32, ptr %8, align 4, !dbg !1989
  %644 = add nsw i32 %643, 1, !dbg !1989
  store i32 %644, ptr %8, align 4, !dbg !1989
  %645 = load i8, ptr %4, align 1, !dbg !1990
  %646 = zext i8 %645 to i32, !dbg !1990
  %647 = load i32, ptr %9, align 4, !dbg !1992
  %648 = icmp ne i32 %646, %647, !dbg !1993
  br i1 %648, label %649, label %652, !dbg !1993

649:                                              ; preds = %630
  %650 = load i8, ptr %4, align 1, !dbg !1994
  %651 = zext i8 %650 to i32, !dbg !1994
  store i32 %651, ptr %9, align 4, !dbg !1996
  br label %598, !dbg !1997

652:                                              ; preds = %630
  %653 = load i32, ptr %8, align 4, !dbg !1998
  %654 = load i32, ptr %15, align 4, !dbg !2000
  %655 = icmp eq i32 %653, %654, !dbg !2001
  br i1 %655, label %656, label %657, !dbg !2001

656:                                              ; preds = %652
  br label %598, !dbg !2002

657:                                              ; preds = %652
  store i32 2, ptr %7, align 4, !dbg !2003
  %658 = load ptr, ptr %10, align 8, !dbg !2004
  %659 = load i32, ptr %11, align 4, !dbg !2004
  %660 = zext i32 %659 to i64, !dbg !2004
  %661 = getelementptr inbounds nuw i32, ptr %658, i64 %660, !dbg !2004
  %662 = load i32, ptr %661, align 4, !dbg !2004
  store i32 %662, ptr %11, align 4, !dbg !2004
  %663 = load i32, ptr %11, align 4, !dbg !2004
  %664 = and i32 %663, 255, !dbg !2004
  %665 = trunc i32 %664 to i8, !dbg !2004
  store i8 %665, ptr %4, align 1, !dbg !2004
  %666 = load i32, ptr %11, align 4, !dbg !2004
  %667 = lshr i32 %666, 8, !dbg !2004
  store i32 %667, ptr %11, align 4, !dbg !2004
  %668 = load i32, ptr %8, align 4, !dbg !2005
  %669 = add nsw i32 %668, 1, !dbg !2005
  store i32 %669, ptr %8, align 4, !dbg !2005
  %670 = load i32, ptr %8, align 4, !dbg !2006
  %671 = load i32, ptr %15, align 4, !dbg !2008
  %672 = icmp eq i32 %670, %671, !dbg !2009
  br i1 %672, label %673, label %674, !dbg !2009

673:                                              ; preds = %657
  br label %565, !dbg !2010, !llvm.loop !2011

674:                                              ; preds = %657
  %675 = load i8, ptr %4, align 1, !dbg !2013
  %676 = zext i8 %675 to i32, !dbg !2013
  %677 = load i32, ptr %9, align 4, !dbg !2015
  %678 = icmp ne i32 %676, %677, !dbg !2016
  br i1 %678, label %679, label %682, !dbg !2016

679:                                              ; preds = %674
  %680 = load i8, ptr %4, align 1, !dbg !2017
  %681 = zext i8 %680 to i32, !dbg !2017
  store i32 %681, ptr %9, align 4, !dbg !2019
  br label %565, !dbg !2020, !llvm.loop !2011

682:                                              ; preds = %674
  store i32 3, ptr %7, align 4, !dbg !2021
  %683 = load ptr, ptr %10, align 8, !dbg !2022
  %684 = load i32, ptr %11, align 4, !dbg !2022
  %685 = zext i32 %684 to i64, !dbg !2022
  %686 = getelementptr inbounds nuw i32, ptr %683, i64 %685, !dbg !2022
  %687 = load i32, ptr %686, align 4, !dbg !2022
  store i32 %687, ptr %11, align 4, !dbg !2022
  %688 = load i32, ptr %11, align 4, !dbg !2022
  %689 = and i32 %688, 255, !dbg !2022
  %690 = trunc i32 %689 to i8, !dbg !2022
  store i8 %690, ptr %4, align 1, !dbg !2022
  %691 = load i32, ptr %11, align 4, !dbg !2022
  %692 = lshr i32 %691, 8, !dbg !2022
  store i32 %692, ptr %11, align 4, !dbg !2022
  %693 = load i32, ptr %8, align 4, !dbg !2023
  %694 = add nsw i32 %693, 1, !dbg !2023
  store i32 %694, ptr %8, align 4, !dbg !2023
  %695 = load i32, ptr %8, align 4, !dbg !2024
  %696 = load i32, ptr %15, align 4, !dbg !2026
  %697 = icmp eq i32 %695, %696, !dbg !2027
  br i1 %697, label %698, label %699, !dbg !2027

698:                                              ; preds = %682
  br label %565, !dbg !2028, !llvm.loop !2011

699:                                              ; preds = %682
  %700 = load i8, ptr %4, align 1, !dbg !2029
  %701 = zext i8 %700 to i32, !dbg !2029
  %702 = load i32, ptr %9, align 4, !dbg !2031
  %703 = icmp ne i32 %701, %702, !dbg !2032
  br i1 %703, label %704, label %707, !dbg !2032

704:                                              ; preds = %699
  %705 = load i8, ptr %4, align 1, !dbg !2033
  %706 = zext i8 %705 to i32, !dbg !2033
  store i32 %706, ptr %9, align 4, !dbg !2035
  br label %565, !dbg !2036, !llvm.loop !2011

707:                                              ; preds = %699
  %708 = load ptr, ptr %10, align 8, !dbg !2037
  %709 = load i32, ptr %11, align 4, !dbg !2037
  %710 = zext i32 %709 to i64, !dbg !2037
  %711 = getelementptr inbounds nuw i32, ptr %708, i64 %710, !dbg !2037
  %712 = load i32, ptr %711, align 4, !dbg !2037
  store i32 %712, ptr %11, align 4, !dbg !2037
  %713 = load i32, ptr %11, align 4, !dbg !2037
  %714 = and i32 %713, 255, !dbg !2037
  %715 = trunc i32 %714 to i8, !dbg !2037
  store i8 %715, ptr %4, align 1, !dbg !2037
  %716 = load i32, ptr %11, align 4, !dbg !2037
  %717 = lshr i32 %716, 8, !dbg !2037
  store i32 %717, ptr %11, align 4, !dbg !2037
  %718 = load i32, ptr %8, align 4, !dbg !2038
  %719 = add nsw i32 %718, 1, !dbg !2038
  store i32 %719, ptr %8, align 4, !dbg !2038
  %720 = load i8, ptr %4, align 1, !dbg !2039
  %721 = zext i8 %720 to i32, !dbg !2040
  %722 = add nsw i32 %721, 4, !dbg !2041
  store i32 %722, ptr %7, align 4, !dbg !2042
  %723 = load ptr, ptr %10, align 8, !dbg !2043
  %724 = load i32, ptr %11, align 4, !dbg !2043
  %725 = zext i32 %724 to i64, !dbg !2043
  %726 = getelementptr inbounds nuw i32, ptr %723, i64 %725, !dbg !2043
  %727 = load i32, ptr %726, align 4, !dbg !2043
  store i32 %727, ptr %11, align 4, !dbg !2043
  %728 = load i32, ptr %11, align 4, !dbg !2043
  %729 = and i32 %728, 255, !dbg !2043
  %730 = trunc i32 %729 to i8, !dbg !2043
  %731 = zext i8 %730 to i32, !dbg !2043
  store i32 %731, ptr %9, align 4, !dbg !2043
  %732 = load i32, ptr %11, align 4, !dbg !2043
  %733 = lshr i32 %732, 8, !dbg !2043
  store i32 %733, ptr %11, align 4, !dbg !2043
  %734 = load i32, ptr %8, align 4, !dbg !2044
  %735 = add nsw i32 %734, 1, !dbg !2044
  store i32 %735, ptr %8, align 4, !dbg !2044
  br label %565, !dbg !1931, !llvm.loop !2011

736:                                              ; preds = %629, %601, %572
    #dbg_label(!2045, !2046)
  %737 = load ptr, ptr %3, align 8, !dbg !2047
  %738 = getelementptr inbounds nuw %struct.DState, ptr %737, i32 0, i32 0, !dbg !2048
  %739 = load ptr, ptr %738, align 8, !dbg !2048
  %740 = getelementptr inbounds nuw %struct.bz_stream, ptr %739, i32 0, i32 6, !dbg !2049
  %741 = load i32, ptr %740, align 4, !dbg !2049
  store i32 %741, ptr %16, align 4, !dbg !2050
  %742 = load i32, ptr %14, align 4, !dbg !2051
  %743 = load i32, ptr %13, align 4, !dbg !2052
  %744 = sub i32 %742, %743, !dbg !2053
  %745 = load ptr, ptr %3, align 8, !dbg !2054
  %746 = getelementptr inbounds nuw %struct.DState, ptr %745, i32 0, i32 0, !dbg !2055
  %747 = load ptr, ptr %746, align 8, !dbg !2055
  %748 = getelementptr inbounds nuw %struct.bz_stream, ptr %747, i32 0, i32 6, !dbg !2056
  %749 = load i32, ptr %748, align 4, !dbg !2057
  %750 = add i32 %749, %744, !dbg !2057
  store i32 %750, ptr %748, align 4, !dbg !2057
  %751 = load ptr, ptr %3, align 8, !dbg !2058
  %752 = getelementptr inbounds nuw %struct.DState, ptr %751, i32 0, i32 0, !dbg !2060
  %753 = load ptr, ptr %752, align 8, !dbg !2060
  %754 = getelementptr inbounds nuw %struct.bz_stream, ptr %753, i32 0, i32 6, !dbg !2061
  %755 = load i32, ptr %754, align 4, !dbg !2061
  %756 = load i32, ptr %16, align 4, !dbg !2062
  %757 = icmp ult i32 %755, %756, !dbg !2063
  br i1 %757, label %758, label %765, !dbg !2063

758:                                              ; preds = %736
  %759 = load ptr, ptr %3, align 8, !dbg !2064
  %760 = getelementptr inbounds nuw %struct.DState, ptr %759, i32 0, i32 0, !dbg !2065
  %761 = load ptr, ptr %760, align 8, !dbg !2065
  %762 = getelementptr inbounds nuw %struct.bz_stream, ptr %761, i32 0, i32 7, !dbg !2066
  %763 = load i32, ptr %762, align 8, !dbg !2067
  %764 = add i32 %763, 1, !dbg !2067
  store i32 %764, ptr %762, align 8, !dbg !2067
  br label %765, !dbg !2064

765:                                              ; preds = %758, %736
  %766 = load i32, ptr %5, align 4, !dbg !2068
  %767 = load ptr, ptr %3, align 8, !dbg !2069
  %768 = getelementptr inbounds nuw %struct.DState, ptr %767, i32 0, i32 25, !dbg !2070
  store i32 %766, ptr %768, align 8, !dbg !2071
  %769 = load i8, ptr %6, align 1, !dbg !2072
  %770 = load ptr, ptr %3, align 8, !dbg !2073
  %771 = getelementptr inbounds nuw %struct.DState, ptr %770, i32 0, i32 2, !dbg !2074
  store i8 %769, ptr %771, align 4, !dbg !2075
  %772 = load i32, ptr %7, align 4, !dbg !2076
  %773 = load ptr, ptr %3, align 8, !dbg !2077
  %774 = getelementptr inbounds nuw %struct.DState, ptr %773, i32 0, i32 3, !dbg !2078
  store i32 %772, ptr %774, align 8, !dbg !2079
  %775 = load i32, ptr %8, align 4, !dbg !2080
  %776 = load ptr, ptr %3, align 8, !dbg !2081
  %777 = getelementptr inbounds nuw %struct.DState, ptr %776, i32 0, i32 17, !dbg !2082
  store i32 %775, ptr %777, align 4, !dbg !2083
  %778 = load i32, ptr %9, align 4, !dbg !2084
  %779 = load ptr, ptr %3, align 8, !dbg !2085
  %780 = getelementptr inbounds nuw %struct.DState, ptr %779, i32 0, i32 15, !dbg !2086
  store i32 %778, ptr %780, align 8, !dbg !2087
  %781 = load ptr, ptr %10, align 8, !dbg !2088
  %782 = load ptr, ptr %3, align 8, !dbg !2089
  %783 = getelementptr inbounds nuw %struct.DState, ptr %782, i32 0, i32 20, !dbg !2090
  store ptr %781, ptr %783, align 8, !dbg !2091
  %784 = load i32, ptr %11, align 4, !dbg !2092
  %785 = load ptr, ptr %3, align 8, !dbg !2093
  %786 = getelementptr inbounds nuw %struct.DState, ptr %785, i32 0, i32 14, !dbg !2094
  store i32 %784, ptr %786, align 4, !dbg !2095
  %787 = load ptr, ptr %12, align 8, !dbg !2096
  %788 = load ptr, ptr %3, align 8, !dbg !2097
  %789 = getelementptr inbounds nuw %struct.DState, ptr %788, i32 0, i32 0, !dbg !2098
  %790 = load ptr, ptr %789, align 8, !dbg !2098
  %791 = getelementptr inbounds nuw %struct.bz_stream, ptr %790, i32 0, i32 4, !dbg !2099
  store ptr %787, ptr %791, align 8, !dbg !2100
  %792 = load i32, ptr %13, align 4, !dbg !2101
  %793 = load ptr, ptr %3, align 8, !dbg !2102
  %794 = getelementptr inbounds nuw %struct.DState, ptr %793, i32 0, i32 0, !dbg !2103
  %795 = load ptr, ptr %794, align 8, !dbg !2103
  %796 = getelementptr inbounds nuw %struct.bz_stream, ptr %795, i32 0, i32 5, !dbg !2104
  store i32 %792, ptr %796, align 8, !dbg !2105
  br label %797

797:                                              ; preds = %765
  store i8 0, ptr %2, align 1, !dbg !2106
  br label %798, !dbg !2106

798:                                              ; preds = %797, %624, %120, %110, %30
  %799 = load i8, ptr %2, align 1, !dbg !2107
  ret i8 %799, !dbg !2107
}

declare i32 @BZ2_decompress(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzDecompressEnd(ptr noundef %0) #0 !dbg !2108 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2109, !DIExpression(), !2110)
    #dbg_declare(ptr %4, !2111, !DIExpression(), !2112)
  %5 = load ptr, ptr %3, align 8, !dbg !2113
  %6 = icmp eq ptr %5, null, !dbg !2115
  br i1 %6, label %7, label %8, !dbg !2115

7:                                                ; preds = %1
  store i32 -2, ptr %2, align 4, !dbg !2116
  br label %79, !dbg !2116

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !2117
  %10 = getelementptr inbounds nuw %struct.bz_stream, ptr %9, i32 0, i32 8, !dbg !2118
  %11 = load ptr, ptr %10, align 8, !dbg !2118
  store ptr %11, ptr %4, align 8, !dbg !2119
  %12 = load ptr, ptr %4, align 8, !dbg !2120
  %13 = icmp eq ptr %12, null, !dbg !2122
  br i1 %13, label %14, label %15, !dbg !2122

14:                                               ; preds = %8
  store i32 -2, ptr %2, align 4, !dbg !2123
  br label %79, !dbg !2123

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8, !dbg !2124
  %17 = getelementptr inbounds nuw %struct.DState, ptr %16, i32 0, i32 0, !dbg !2126
  %18 = load ptr, ptr %17, align 8, !dbg !2126
  %19 = load ptr, ptr %3, align 8, !dbg !2127
  %20 = icmp ne ptr %18, %19, !dbg !2128
  br i1 %20, label %21, label %22, !dbg !2128

21:                                               ; preds = %15
  store i32 -2, ptr %2, align 4, !dbg !2129
  br label %79, !dbg !2129

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 8, !dbg !2130
  %24 = getelementptr inbounds nuw %struct.DState, ptr %23, i32 0, i32 20, !dbg !2132
  %25 = load ptr, ptr %24, align 8, !dbg !2132
  %26 = icmp ne ptr %25, null, !dbg !2133
  br i1 %26, label %27, label %37, !dbg !2133

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 8, !dbg !2134
  %29 = getelementptr inbounds nuw %struct.bz_stream, ptr %28, i32 0, i32 10, !dbg !2134
  %30 = load ptr, ptr %29, align 8, !dbg !2134
  %31 = load ptr, ptr %3, align 8, !dbg !2134
  %32 = getelementptr inbounds nuw %struct.bz_stream, ptr %31, i32 0, i32 11, !dbg !2134
  %33 = load ptr, ptr %32, align 8, !dbg !2134
  %34 = load ptr, ptr %4, align 8, !dbg !2134
  %35 = getelementptr inbounds nuw %struct.DState, ptr %34, i32 0, i32 20, !dbg !2134
  %36 = load ptr, ptr %35, align 8, !dbg !2134
  call void %30(ptr noundef %33, ptr noundef %36), !dbg !2134
  br label %37, !dbg !2134

37:                                               ; preds = %27, %22
  %38 = load ptr, ptr %4, align 8, !dbg !2135
  %39 = getelementptr inbounds nuw %struct.DState, ptr %38, i32 0, i32 21, !dbg !2137
  %40 = load ptr, ptr %39, align 8, !dbg !2137
  %41 = icmp ne ptr %40, null, !dbg !2138
  br i1 %41, label %42, label %52, !dbg !2138

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 8, !dbg !2139
  %44 = getelementptr inbounds nuw %struct.bz_stream, ptr %43, i32 0, i32 10, !dbg !2139
  %45 = load ptr, ptr %44, align 8, !dbg !2139
  %46 = load ptr, ptr %3, align 8, !dbg !2139
  %47 = getelementptr inbounds nuw %struct.bz_stream, ptr %46, i32 0, i32 11, !dbg !2139
  %48 = load ptr, ptr %47, align 8, !dbg !2139
  %49 = load ptr, ptr %4, align 8, !dbg !2139
  %50 = getelementptr inbounds nuw %struct.DState, ptr %49, i32 0, i32 21, !dbg !2139
  %51 = load ptr, ptr %50, align 8, !dbg !2139
  call void %45(ptr noundef %48, ptr noundef %51), !dbg !2139
  br label %52, !dbg !2139

52:                                               ; preds = %42, %37
  %53 = load ptr, ptr %4, align 8, !dbg !2140
  %54 = getelementptr inbounds nuw %struct.DState, ptr %53, i32 0, i32 22, !dbg !2142
  %55 = load ptr, ptr %54, align 8, !dbg !2142
  %56 = icmp ne ptr %55, null, !dbg !2143
  br i1 %56, label %57, label %67, !dbg !2143

57:                                               ; preds = %52
  %58 = load ptr, ptr %3, align 8, !dbg !2144
  %59 = getelementptr inbounds nuw %struct.bz_stream, ptr %58, i32 0, i32 10, !dbg !2144
  %60 = load ptr, ptr %59, align 8, !dbg !2144
  %61 = load ptr, ptr %3, align 8, !dbg !2144
  %62 = getelementptr inbounds nuw %struct.bz_stream, ptr %61, i32 0, i32 11, !dbg !2144
  %63 = load ptr, ptr %62, align 8, !dbg !2144
  %64 = load ptr, ptr %4, align 8, !dbg !2144
  %65 = getelementptr inbounds nuw %struct.DState, ptr %64, i32 0, i32 22, !dbg !2144
  %66 = load ptr, ptr %65, align 8, !dbg !2144
  call void %60(ptr noundef %63, ptr noundef %66), !dbg !2144
  br label %67, !dbg !2144

67:                                               ; preds = %57, %52
  %68 = load ptr, ptr %3, align 8, !dbg !2145
  %69 = getelementptr inbounds nuw %struct.bz_stream, ptr %68, i32 0, i32 10, !dbg !2145
  %70 = load ptr, ptr %69, align 8, !dbg !2145
  %71 = load ptr, ptr %3, align 8, !dbg !2145
  %72 = getelementptr inbounds nuw %struct.bz_stream, ptr %71, i32 0, i32 11, !dbg !2145
  %73 = load ptr, ptr %72, align 8, !dbg !2145
  %74 = load ptr, ptr %3, align 8, !dbg !2145
  %75 = getelementptr inbounds nuw %struct.bz_stream, ptr %74, i32 0, i32 8, !dbg !2145
  %76 = load ptr, ptr %75, align 8, !dbg !2145
  call void %70(ptr noundef %73, ptr noundef %76), !dbg !2145
  %77 = load ptr, ptr %3, align 8, !dbg !2146
  %78 = getelementptr inbounds nuw %struct.bz_stream, ptr %77, i32 0, i32 8, !dbg !2147
  store ptr null, ptr %78, align 8, !dbg !2148
  store i32 0, ptr %2, align 4, !dbg !2149
  br label %79, !dbg !2149

79:                                               ; preds = %67, %21, %14, %7
  %80 = load i32, ptr %2, align 4, !dbg !2150
  ret i32 %80, !dbg !2150
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzWriteOpen(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !2151 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !2157, !DIExpression(), !2158)
  store ptr %1, ptr %8, align 8
    #dbg_declare(ptr %8, !2159, !DIExpression(), !2160)
  store i32 %2, ptr %9, align 4
    #dbg_declare(ptr %9, !2161, !DIExpression(), !2162)
  store i32 %3, ptr %10, align 4
    #dbg_declare(ptr %10, !2163, !DIExpression(), !2164)
  store i32 %4, ptr %11, align 4
    #dbg_declare(ptr %11, !2165, !DIExpression(), !2166)
    #dbg_declare(ptr %12, !2167, !DIExpression(), !2168)
    #dbg_declare(ptr %13, !2169, !DIExpression(), !2170)
  store ptr null, ptr %13, align 8, !dbg !2170
  %14 = load ptr, ptr %7, align 8, !dbg !2171
  %15 = icmp ne ptr %14, null, !dbg !2171
  br i1 %15, label %16, label %18, !dbg !2171

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2171
  store i32 0, ptr %17, align 4, !dbg !2171
  br label %18, !dbg !2171

18:                                               ; preds = %16, %5
  %19 = load ptr, ptr %13, align 8, !dbg !2174
  %20 = icmp ne ptr %19, null, !dbg !2174
  br i1 %20, label %21, label %24, !dbg !2174

21:                                               ; preds = %18
  %22 = load ptr, ptr %13, align 8, !dbg !2174
  %23 = getelementptr inbounds nuw %struct.bzFile, ptr %22, i32 0, i32 5, !dbg !2174
  store i32 0, ptr %23, align 8, !dbg !2174
  br label %24, !dbg !2174

24:                                               ; preds = %21, %18
  %25 = load ptr, ptr %8, align 8, !dbg !2176
  %26 = icmp eq ptr %25, null, !dbg !2178
  br i1 %26, label %45, label %27, !dbg !2179

27:                                               ; preds = %24
  %28 = load i32, ptr %9, align 4, !dbg !2180
  %29 = icmp slt i32 %28, 1, !dbg !2181
  br i1 %29, label %45, label %30, !dbg !2182

30:                                               ; preds = %27
  %31 = load i32, ptr %9, align 4, !dbg !2183
  %32 = icmp sgt i32 %31, 9, !dbg !2184
  br i1 %32, label %45, label %33, !dbg !2185

33:                                               ; preds = %30
  %34 = load i32, ptr %11, align 4, !dbg !2186
  %35 = icmp slt i32 %34, 0, !dbg !2187
  br i1 %35, label %45, label %36, !dbg !2188

36:                                               ; preds = %33
  %37 = load i32, ptr %11, align 4, !dbg !2189
  %38 = icmp sgt i32 %37, 250, !dbg !2190
  br i1 %38, label %45, label %39, !dbg !2191

39:                                               ; preds = %36
  %40 = load i32, ptr %10, align 4, !dbg !2192
  %41 = icmp slt i32 %40, 0, !dbg !2193
  br i1 %41, label %45, label %42, !dbg !2194

42:                                               ; preds = %39
  %43 = load i32, ptr %10, align 4, !dbg !2195
  %44 = icmp sgt i32 %43, 4, !dbg !2196
  br i1 %44, label %45, label %57, !dbg !2191

45:                                               ; preds = %42, %39, %36, %33, %30, %27, %24
  %46 = load ptr, ptr %7, align 8, !dbg !2197
  %47 = icmp ne ptr %46, null, !dbg !2197
  br i1 %47, label %48, label %50, !dbg !2197

48:                                               ; preds = %45
  %49 = load ptr, ptr %7, align 8, !dbg !2197
  store i32 -2, ptr %49, align 4, !dbg !2197
  br label %50, !dbg !2197

50:                                               ; preds = %48, %45
  %51 = load ptr, ptr %13, align 8, !dbg !2201
  %52 = icmp ne ptr %51, null, !dbg !2201
  br i1 %52, label %53, label %56, !dbg !2201

53:                                               ; preds = %50
  %54 = load ptr, ptr %13, align 8, !dbg !2201
  %55 = getelementptr inbounds nuw %struct.bzFile, ptr %54, i32 0, i32 5, !dbg !2201
  store i32 -2, ptr %55, align 8, !dbg !2201
  br label %56, !dbg !2201

56:                                               ; preds = %53, %50
  store ptr null, ptr %6, align 8, !dbg !2203
  br label %153, !dbg !2203

57:                                               ; preds = %42
  %58 = load ptr, ptr %8, align 8, !dbg !2204
  %59 = call i32 @ferror(ptr noundef %58) #8, !dbg !2206
  %60 = icmp ne i32 %59, 0, !dbg !2206
  br i1 %60, label %61, label %73, !dbg !2206

61:                                               ; preds = %57
  %62 = load ptr, ptr %7, align 8, !dbg !2207
  %63 = icmp ne ptr %62, null, !dbg !2207
  br i1 %63, label %64, label %66, !dbg !2207

64:                                               ; preds = %61
  %65 = load ptr, ptr %7, align 8, !dbg !2207
  store i32 -6, ptr %65, align 4, !dbg !2207
  br label %66, !dbg !2207

66:                                               ; preds = %64, %61
  %67 = load ptr, ptr %13, align 8, !dbg !2211
  %68 = icmp ne ptr %67, null, !dbg !2211
  br i1 %68, label %69, label %72, !dbg !2211

69:                                               ; preds = %66
  %70 = load ptr, ptr %13, align 8, !dbg !2211
  %71 = getelementptr inbounds nuw %struct.bzFile, ptr %70, i32 0, i32 5, !dbg !2211
  store i32 -6, ptr %71, align 8, !dbg !2211
  br label %72, !dbg !2211

72:                                               ; preds = %69, %66
  store ptr null, ptr %6, align 8, !dbg !2213
  br label %153, !dbg !2213

73:                                               ; preds = %57
  %74 = call noalias ptr @malloc(i64 noundef 5104) #10, !dbg !2214
  store ptr %74, ptr %13, align 8, !dbg !2215
  %75 = load ptr, ptr %13, align 8, !dbg !2216
  %76 = icmp eq ptr %75, null, !dbg !2218
  br i1 %76, label %77, label %89, !dbg !2218

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 8, !dbg !2219
  %79 = icmp ne ptr %78, null, !dbg !2219
  br i1 %79, label %80, label %82, !dbg !2219

80:                                               ; preds = %77
  %81 = load ptr, ptr %7, align 8, !dbg !2219
  store i32 -3, ptr %81, align 4, !dbg !2219
  br label %82, !dbg !2219

82:                                               ; preds = %80, %77
  %83 = load ptr, ptr %13, align 8, !dbg !2223
  %84 = icmp ne ptr %83, null, !dbg !2223
  br i1 %84, label %85, label %88, !dbg !2223

85:                                               ; preds = %82
  %86 = load ptr, ptr %13, align 8, !dbg !2223
  %87 = getelementptr inbounds nuw %struct.bzFile, ptr %86, i32 0, i32 5, !dbg !2223
  store i32 -3, ptr %87, align 8, !dbg !2223
  br label %88, !dbg !2223

88:                                               ; preds = %85, %82
  store ptr null, ptr %6, align 8, !dbg !2225
  br label %153, !dbg !2225

89:                                               ; preds = %73
  %90 = load ptr, ptr %7, align 8, !dbg !2226
  %91 = icmp ne ptr %90, null, !dbg !2226
  br i1 %91, label %92, label %94, !dbg !2226

92:                                               ; preds = %89
  %93 = load ptr, ptr %7, align 8, !dbg !2226
  store i32 0, ptr %93, align 4, !dbg !2226
  br label %94, !dbg !2226

94:                                               ; preds = %92, %89
  %95 = load ptr, ptr %13, align 8, !dbg !2229
  %96 = icmp ne ptr %95, null, !dbg !2229
  br i1 %96, label %97, label %100, !dbg !2229

97:                                               ; preds = %94
  %98 = load ptr, ptr %13, align 8, !dbg !2229
  %99 = getelementptr inbounds nuw %struct.bzFile, ptr %98, i32 0, i32 5, !dbg !2229
  store i32 0, ptr %99, align 8, !dbg !2229
  br label %100, !dbg !2229

100:                                              ; preds = %97, %94
  %101 = load ptr, ptr %13, align 8, !dbg !2231
  %102 = getelementptr inbounds nuw %struct.bzFile, ptr %101, i32 0, i32 6, !dbg !2232
  store i8 0, ptr %102, align 4, !dbg !2233
  %103 = load ptr, ptr %13, align 8, !dbg !2234
  %104 = getelementptr inbounds nuw %struct.bzFile, ptr %103, i32 0, i32 2, !dbg !2235
  store i32 0, ptr %104, align 8, !dbg !2236
  %105 = load ptr, ptr %8, align 8, !dbg !2237
  %106 = load ptr, ptr %13, align 8, !dbg !2238
  %107 = getelementptr inbounds nuw %struct.bzFile, ptr %106, i32 0, i32 0, !dbg !2239
  store ptr %105, ptr %107, align 8, !dbg !2240
  %108 = load ptr, ptr %13, align 8, !dbg !2241
  %109 = getelementptr inbounds nuw %struct.bzFile, ptr %108, i32 0, i32 3, !dbg !2242
  store i8 1, ptr %109, align 4, !dbg !2243
  %110 = load ptr, ptr %13, align 8, !dbg !2244
  %111 = getelementptr inbounds nuw %struct.bzFile, ptr %110, i32 0, i32 4, !dbg !2245
  %112 = getelementptr inbounds nuw %struct.bz_stream, ptr %111, i32 0, i32 9, !dbg !2246
  store ptr null, ptr %112, align 8, !dbg !2247
  %113 = load ptr, ptr %13, align 8, !dbg !2248
  %114 = getelementptr inbounds nuw %struct.bzFile, ptr %113, i32 0, i32 4, !dbg !2249
  %115 = getelementptr inbounds nuw %struct.bz_stream, ptr %114, i32 0, i32 10, !dbg !2250
  store ptr null, ptr %115, align 8, !dbg !2251
  %116 = load ptr, ptr %13, align 8, !dbg !2252
  %117 = getelementptr inbounds nuw %struct.bzFile, ptr %116, i32 0, i32 4, !dbg !2253
  %118 = getelementptr inbounds nuw %struct.bz_stream, ptr %117, i32 0, i32 11, !dbg !2254
  store ptr null, ptr %118, align 8, !dbg !2255
  %119 = load i32, ptr %11, align 4, !dbg !2256
  %120 = icmp eq i32 %119, 0, !dbg !2258
  br i1 %120, label %121, label %122, !dbg !2258

121:                                              ; preds = %100
  store i32 30, ptr %11, align 4, !dbg !2259
  br label %122, !dbg !2260

122:                                              ; preds = %121, %100
  %123 = load ptr, ptr %13, align 8, !dbg !2261
  %124 = getelementptr inbounds nuw %struct.bzFile, ptr %123, i32 0, i32 4, !dbg !2262
  %125 = load i32, ptr %9, align 4, !dbg !2263
  %126 = load i32, ptr %10, align 4, !dbg !2264
  %127 = load i32, ptr %11, align 4, !dbg !2265
  %128 = call i32 @BZ2_bzCompressInit(ptr noundef %124, i32 noundef %125, i32 noundef %126, i32 noundef %127), !dbg !2266
  store i32 %128, ptr %12, align 4, !dbg !2267
  %129 = load i32, ptr %12, align 4, !dbg !2268
  %130 = icmp ne i32 %129, 0, !dbg !2270
  br i1 %130, label %131, label %146, !dbg !2270

131:                                              ; preds = %122
  %132 = load ptr, ptr %7, align 8, !dbg !2271
  %133 = icmp ne ptr %132, null, !dbg !2271
  br i1 %133, label %134, label %137, !dbg !2271

134:                                              ; preds = %131
  %135 = load i32, ptr %12, align 4, !dbg !2271
  %136 = load ptr, ptr %7, align 8, !dbg !2271
  store i32 %135, ptr %136, align 4, !dbg !2271
  br label %137, !dbg !2271

137:                                              ; preds = %134, %131
  %138 = load ptr, ptr %13, align 8, !dbg !2275
  %139 = icmp ne ptr %138, null, !dbg !2275
  br i1 %139, label %140, label %144, !dbg !2275

140:                                              ; preds = %137
  %141 = load i32, ptr %12, align 4, !dbg !2275
  %142 = load ptr, ptr %13, align 8, !dbg !2275
  %143 = getelementptr inbounds nuw %struct.bzFile, ptr %142, i32 0, i32 5, !dbg !2275
  store i32 %141, ptr %143, align 8, !dbg !2275
  br label %144, !dbg !2275

144:                                              ; preds = %140, %137
  %145 = load ptr, ptr %13, align 8, !dbg !2277
  call void @free(ptr noundef %145) #8, !dbg !2278
  store ptr null, ptr %6, align 8, !dbg !2279
  br label %153, !dbg !2279

146:                                              ; preds = %122
  %147 = load ptr, ptr %13, align 8, !dbg !2280
  %148 = getelementptr inbounds nuw %struct.bzFile, ptr %147, i32 0, i32 4, !dbg !2281
  %149 = getelementptr inbounds nuw %struct.bz_stream, ptr %148, i32 0, i32 1, !dbg !2282
  store i32 0, ptr %149, align 8, !dbg !2283
  %150 = load ptr, ptr %13, align 8, !dbg !2284
  %151 = getelementptr inbounds nuw %struct.bzFile, ptr %150, i32 0, i32 6, !dbg !2285
  store i8 1, ptr %151, align 4, !dbg !2286
  %152 = load ptr, ptr %13, align 8, !dbg !2287
  store ptr %152, ptr %6, align 8, !dbg !2288
  br label %153, !dbg !2288

153:                                              ; preds = %146, %144, %88, %72, %56
  %154 = load ptr, ptr %6, align 8, !dbg !2289
  ret ptr %154, !dbg !2289
}

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzWrite(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2290 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2293, !DIExpression(), !2294)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !2295, !DIExpression(), !2296)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !2297, !DIExpression(), !2298)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !2299, !DIExpression(), !2300)
    #dbg_declare(ptr %9, !2301, !DIExpression(), !2302)
    #dbg_declare(ptr %10, !2303, !DIExpression(), !2304)
    #dbg_declare(ptr %11, !2305, !DIExpression(), !2306)
    #dbg_declare(ptr %12, !2307, !DIExpression(), !2308)
  %13 = load ptr, ptr %6, align 8, !dbg !2309
  store ptr %13, ptr %12, align 8, !dbg !2308
  %14 = load ptr, ptr %5, align 8, !dbg !2310
  %15 = icmp ne ptr %14, null, !dbg !2310
  br i1 %15, label %16, label %18, !dbg !2310

16:                                               ; preds = %4
  %17 = load ptr, ptr %5, align 8, !dbg !2310
  store i32 0, ptr %17, align 4, !dbg !2310
  br label %18, !dbg !2310

18:                                               ; preds = %16, %4
  %19 = load ptr, ptr %12, align 8, !dbg !2313
  %20 = icmp ne ptr %19, null, !dbg !2313
  br i1 %20, label %21, label %24, !dbg !2313

21:                                               ; preds = %18
  %22 = load ptr, ptr %12, align 8, !dbg !2313
  %23 = getelementptr inbounds nuw %struct.bzFile, ptr %22, i32 0, i32 5, !dbg !2313
  store i32 0, ptr %23, align 8, !dbg !2313
  br label %24, !dbg !2313

24:                                               ; preds = %21, %18
  %25 = load ptr, ptr %12, align 8, !dbg !2315
  %26 = icmp eq ptr %25, null, !dbg !2317
  br i1 %26, label %33, label %27, !dbg !2318

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 8, !dbg !2319
  %29 = icmp eq ptr %28, null, !dbg !2320
  br i1 %29, label %33, label %30, !dbg !2321

30:                                               ; preds = %27
  %31 = load i32, ptr %8, align 4, !dbg !2322
  %32 = icmp slt i32 %31, 0, !dbg !2323
  br i1 %32, label %33, label %45, !dbg !2321

33:                                               ; preds = %30, %27, %24
  %34 = load ptr, ptr %5, align 8, !dbg !2324
  %35 = icmp ne ptr %34, null, !dbg !2324
  br i1 %35, label %36, label %38, !dbg !2324

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 8, !dbg !2324
  store i32 -2, ptr %37, align 4, !dbg !2324
  br label %38, !dbg !2324

38:                                               ; preds = %36, %33
  %39 = load ptr, ptr %12, align 8, !dbg !2328
  %40 = icmp ne ptr %39, null, !dbg !2328
  br i1 %40, label %41, label %44, !dbg !2328

41:                                               ; preds = %38
  %42 = load ptr, ptr %12, align 8, !dbg !2328
  %43 = getelementptr inbounds nuw %struct.bzFile, ptr %42, i32 0, i32 5, !dbg !2328
  store i32 -2, ptr %43, align 8, !dbg !2328
  br label %44, !dbg !2328

44:                                               ; preds = %41, %38
  br label %196, !dbg !2330

45:                                               ; preds = %30
  %46 = load ptr, ptr %12, align 8, !dbg !2331
  %47 = getelementptr inbounds nuw %struct.bzFile, ptr %46, i32 0, i32 3, !dbg !2333
  %48 = load i8, ptr %47, align 4, !dbg !2333
  %49 = icmp ne i8 %48, 0, !dbg !2334
  br i1 %49, label %62, label %50, !dbg !2335

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8, !dbg !2336
  %52 = icmp ne ptr %51, null, !dbg !2336
  br i1 %52, label %53, label %55, !dbg !2336

53:                                               ; preds = %50
  %54 = load ptr, ptr %5, align 8, !dbg !2336
  store i32 -1, ptr %54, align 4, !dbg !2336
  br label %55, !dbg !2336

55:                                               ; preds = %53, %50
  %56 = load ptr, ptr %12, align 8, !dbg !2340
  %57 = icmp ne ptr %56, null, !dbg !2340
  br i1 %57, label %58, label %61, !dbg !2340

58:                                               ; preds = %55
  %59 = load ptr, ptr %12, align 8, !dbg !2340
  %60 = getelementptr inbounds nuw %struct.bzFile, ptr %59, i32 0, i32 5, !dbg !2340
  store i32 -1, ptr %60, align 8, !dbg !2340
  br label %61, !dbg !2340

61:                                               ; preds = %58, %55
  br label %196, !dbg !2342

62:                                               ; preds = %45
  %63 = load ptr, ptr %12, align 8, !dbg !2343
  %64 = getelementptr inbounds nuw %struct.bzFile, ptr %63, i32 0, i32 0, !dbg !2345
  %65 = load ptr, ptr %64, align 8, !dbg !2345
  %66 = call i32 @ferror(ptr noundef %65) #8, !dbg !2346
  %67 = icmp ne i32 %66, 0, !dbg !2346
  br i1 %67, label %68, label %80, !dbg !2346

68:                                               ; preds = %62
  %69 = load ptr, ptr %5, align 8, !dbg !2347
  %70 = icmp ne ptr %69, null, !dbg !2347
  br i1 %70, label %71, label %73, !dbg !2347

71:                                               ; preds = %68
  %72 = load ptr, ptr %5, align 8, !dbg !2347
  store i32 -6, ptr %72, align 4, !dbg !2347
  br label %73, !dbg !2347

73:                                               ; preds = %71, %68
  %74 = load ptr, ptr %12, align 8, !dbg !2351
  %75 = icmp ne ptr %74, null, !dbg !2351
  br i1 %75, label %76, label %79, !dbg !2351

76:                                               ; preds = %73
  %77 = load ptr, ptr %12, align 8, !dbg !2351
  %78 = getelementptr inbounds nuw %struct.bzFile, ptr %77, i32 0, i32 5, !dbg !2351
  store i32 -6, ptr %78, align 8, !dbg !2351
  br label %79, !dbg !2351

79:                                               ; preds = %76, %73
  br label %196, !dbg !2353

80:                                               ; preds = %62
  %81 = load i32, ptr %8, align 4, !dbg !2354
  %82 = icmp eq i32 %81, 0, !dbg !2356
  br i1 %82, label %83, label %95, !dbg !2356

83:                                               ; preds = %80
  %84 = load ptr, ptr %5, align 8, !dbg !2357
  %85 = icmp ne ptr %84, null, !dbg !2357
  br i1 %85, label %86, label %88, !dbg !2357

86:                                               ; preds = %83
  %87 = load ptr, ptr %5, align 8, !dbg !2357
  store i32 0, ptr %87, align 4, !dbg !2357
  br label %88, !dbg !2357

88:                                               ; preds = %86, %83
  %89 = load ptr, ptr %12, align 8, !dbg !2361
  %90 = icmp ne ptr %89, null, !dbg !2361
  br i1 %90, label %91, label %94, !dbg !2361

91:                                               ; preds = %88
  %92 = load ptr, ptr %12, align 8, !dbg !2361
  %93 = getelementptr inbounds nuw %struct.bzFile, ptr %92, i32 0, i32 5, !dbg !2361
  store i32 0, ptr %93, align 8, !dbg !2361
  br label %94, !dbg !2361

94:                                               ; preds = %91, %88
  br label %196, !dbg !2363

95:                                               ; preds = %80
  %96 = load i32, ptr %8, align 4, !dbg !2364
  %97 = load ptr, ptr %12, align 8, !dbg !2365
  %98 = getelementptr inbounds nuw %struct.bzFile, ptr %97, i32 0, i32 4, !dbg !2366
  %99 = getelementptr inbounds nuw %struct.bz_stream, ptr %98, i32 0, i32 1, !dbg !2367
  store i32 %96, ptr %99, align 8, !dbg !2368
  %100 = load ptr, ptr %7, align 8, !dbg !2369
  %101 = load ptr, ptr %12, align 8, !dbg !2370
  %102 = getelementptr inbounds nuw %struct.bzFile, ptr %101, i32 0, i32 4, !dbg !2371
  %103 = getelementptr inbounds nuw %struct.bz_stream, ptr %102, i32 0, i32 0, !dbg !2372
  store ptr %100, ptr %103, align 8, !dbg !2373
  br label %104, !dbg !2374

104:                                              ; preds = %95, %195
  %105 = load ptr, ptr %12, align 8, !dbg !2375
  %106 = getelementptr inbounds nuw %struct.bzFile, ptr %105, i32 0, i32 4, !dbg !2377
  %107 = getelementptr inbounds nuw %struct.bz_stream, ptr %106, i32 0, i32 5, !dbg !2378
  store i32 5000, ptr %107, align 8, !dbg !2379
  %108 = load ptr, ptr %12, align 8, !dbg !2380
  %109 = getelementptr inbounds nuw %struct.bzFile, ptr %108, i32 0, i32 1, !dbg !2381
  %110 = getelementptr inbounds [5000 x i8], ptr %109, i64 0, i64 0, !dbg !2380
  %111 = load ptr, ptr %12, align 8, !dbg !2382
  %112 = getelementptr inbounds nuw %struct.bzFile, ptr %111, i32 0, i32 4, !dbg !2383
  %113 = getelementptr inbounds nuw %struct.bz_stream, ptr %112, i32 0, i32 4, !dbg !2384
  store ptr %110, ptr %113, align 8, !dbg !2385
  %114 = load ptr, ptr %12, align 8, !dbg !2386
  %115 = getelementptr inbounds nuw %struct.bzFile, ptr %114, i32 0, i32 4, !dbg !2387
  %116 = call i32 @BZ2_bzCompress(ptr noundef %115, i32 noundef 0), !dbg !2388
  store i32 %116, ptr %11, align 4, !dbg !2389
  %117 = load i32, ptr %11, align 4, !dbg !2390
  %118 = icmp ne i32 %117, 1, !dbg !2392
  br i1 %118, label %119, label %133, !dbg !2392

119:                                              ; preds = %104
  %120 = load ptr, ptr %5, align 8, !dbg !2393
  %121 = icmp ne ptr %120, null, !dbg !2393
  br i1 %121, label %122, label %125, !dbg !2393

122:                                              ; preds = %119
  %123 = load i32, ptr %11, align 4, !dbg !2393
  %124 = load ptr, ptr %5, align 8, !dbg !2393
  store i32 %123, ptr %124, align 4, !dbg !2393
  br label %125, !dbg !2393

125:                                              ; preds = %122, %119
  %126 = load ptr, ptr %12, align 8, !dbg !2397
  %127 = icmp ne ptr %126, null, !dbg !2397
  br i1 %127, label %128, label %132, !dbg !2397

128:                                              ; preds = %125
  %129 = load i32, ptr %11, align 4, !dbg !2397
  %130 = load ptr, ptr %12, align 8, !dbg !2397
  %131 = getelementptr inbounds nuw %struct.bzFile, ptr %130, i32 0, i32 5, !dbg !2397
  store i32 %129, ptr %131, align 8, !dbg !2397
  br label %132, !dbg !2397

132:                                              ; preds = %128, %125
  br label %196, !dbg !2399

133:                                              ; preds = %104
  %134 = load ptr, ptr %12, align 8, !dbg !2400
  %135 = getelementptr inbounds nuw %struct.bzFile, ptr %134, i32 0, i32 4, !dbg !2402
  %136 = getelementptr inbounds nuw %struct.bz_stream, ptr %135, i32 0, i32 5, !dbg !2403
  %137 = load i32, ptr %136, align 8, !dbg !2403
  %138 = icmp ult i32 %137, 5000, !dbg !2404
  br i1 %138, label %139, label %177, !dbg !2404

139:                                              ; preds = %133
  %140 = load ptr, ptr %12, align 8, !dbg !2405
  %141 = getelementptr inbounds nuw %struct.bzFile, ptr %140, i32 0, i32 4, !dbg !2407
  %142 = getelementptr inbounds nuw %struct.bz_stream, ptr %141, i32 0, i32 5, !dbg !2408
  %143 = load i32, ptr %142, align 8, !dbg !2408
  %144 = sub i32 5000, %143, !dbg !2409
  store i32 %144, ptr %9, align 4, !dbg !2410
  %145 = load ptr, ptr %12, align 8, !dbg !2411
  %146 = getelementptr inbounds nuw %struct.bzFile, ptr %145, i32 0, i32 1, !dbg !2412
  %147 = getelementptr inbounds [5000 x i8], ptr %146, i64 0, i64 0, !dbg !2413
  %148 = load i32, ptr %9, align 4, !dbg !2414
  %149 = sext i32 %148 to i64, !dbg !2414
  %150 = load ptr, ptr %12, align 8, !dbg !2415
  %151 = getelementptr inbounds nuw %struct.bzFile, ptr %150, i32 0, i32 0, !dbg !2416
  %152 = load ptr, ptr %151, align 8, !dbg !2416
  %153 = call i64 @fwrite(ptr noundef %147, i64 noundef 1, i64 noundef %149, ptr noundef %152), !dbg !2417
  %154 = trunc i64 %153 to i32, !dbg !2417
  store i32 %154, ptr %10, align 4, !dbg !2418
  %155 = load i32, ptr %9, align 4, !dbg !2419
  %156 = load i32, ptr %10, align 4, !dbg !2421
  %157 = icmp ne i32 %155, %156, !dbg !2422
  br i1 %157, label %164, label %158, !dbg !2423

158:                                              ; preds = %139
  %159 = load ptr, ptr %12, align 8, !dbg !2424
  %160 = getelementptr inbounds nuw %struct.bzFile, ptr %159, i32 0, i32 0, !dbg !2425
  %161 = load ptr, ptr %160, align 8, !dbg !2425
  %162 = call i32 @ferror(ptr noundef %161) #8, !dbg !2426
  %163 = icmp ne i32 %162, 0, !dbg !2426
  br i1 %163, label %164, label %176, !dbg !2423

164:                                              ; preds = %158, %139
  %165 = load ptr, ptr %5, align 8, !dbg !2427
  %166 = icmp ne ptr %165, null, !dbg !2427
  br i1 %166, label %167, label %169, !dbg !2427

167:                                              ; preds = %164
  %168 = load ptr, ptr %5, align 8, !dbg !2427
  store i32 -6, ptr %168, align 4, !dbg !2427
  br label %169, !dbg !2427

169:                                              ; preds = %167, %164
  %170 = load ptr, ptr %12, align 8, !dbg !2431
  %171 = icmp ne ptr %170, null, !dbg !2431
  br i1 %171, label %172, label %175, !dbg !2431

172:                                              ; preds = %169
  %173 = load ptr, ptr %12, align 8, !dbg !2431
  %174 = getelementptr inbounds nuw %struct.bzFile, ptr %173, i32 0, i32 5, !dbg !2431
  store i32 -6, ptr %174, align 8, !dbg !2431
  br label %175, !dbg !2431

175:                                              ; preds = %172, %169
  br label %196, !dbg !2433

176:                                              ; preds = %158
  br label %177, !dbg !2434

177:                                              ; preds = %176, %133
  %178 = load ptr, ptr %12, align 8, !dbg !2435
  %179 = getelementptr inbounds nuw %struct.bzFile, ptr %178, i32 0, i32 4, !dbg !2437
  %180 = getelementptr inbounds nuw %struct.bz_stream, ptr %179, i32 0, i32 1, !dbg !2438
  %181 = load i32, ptr %180, align 8, !dbg !2438
  %182 = icmp eq i32 %181, 0, !dbg !2439
  br i1 %182, label %183, label %195, !dbg !2439

183:                                              ; preds = %177
  %184 = load ptr, ptr %5, align 8, !dbg !2440
  %185 = icmp ne ptr %184, null, !dbg !2440
  br i1 %185, label %186, label %188, !dbg !2440

186:                                              ; preds = %183
  %187 = load ptr, ptr %5, align 8, !dbg !2440
  store i32 0, ptr %187, align 4, !dbg !2440
  br label %188, !dbg !2440

188:                                              ; preds = %186, %183
  %189 = load ptr, ptr %12, align 8, !dbg !2444
  %190 = icmp ne ptr %189, null, !dbg !2444
  br i1 %190, label %191, label %194, !dbg !2444

191:                                              ; preds = %188
  %192 = load ptr, ptr %12, align 8, !dbg !2444
  %193 = getelementptr inbounds nuw %struct.bzFile, ptr %192, i32 0, i32 5, !dbg !2444
  store i32 0, ptr %193, align 8, !dbg !2444
  br label %194, !dbg !2444

194:                                              ; preds = %191, %188
  br label %196, !dbg !2446

195:                                              ; preds = %177
  br label %104, !dbg !2374, !llvm.loop !2447

196:                                              ; preds = %194, %175, %132, %94, %79, %61, %44
  ret void, !dbg !2449
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzWriteClose(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !2450 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !2454, !DIExpression(), !2455)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !2456, !DIExpression(), !2457)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !2458, !DIExpression(), !2459)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !2460, !DIExpression(), !2461)
  store ptr %4, ptr %10, align 8
    #dbg_declare(ptr %10, !2462, !DIExpression(), !2463)
  %11 = load ptr, ptr %6, align 8, !dbg !2464
  %12 = load ptr, ptr %7, align 8, !dbg !2465
  %13 = load i32, ptr %8, align 4, !dbg !2466
  %14 = load ptr, ptr %9, align 8, !dbg !2467
  %15 = load ptr, ptr %10, align 8, !dbg !2468
  call void @BZ2_bzWriteClose64(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef null, ptr noundef %15, ptr noundef null), !dbg !2469
  ret void, !dbg !2470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzWriteClose64(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !dbg !2471 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !2474, !DIExpression(), !2475)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !2476, !DIExpression(), !2477)
  store i32 %2, ptr %10, align 4
    #dbg_declare(ptr %10, !2478, !DIExpression(), !2479)
  store ptr %3, ptr %11, align 8
    #dbg_declare(ptr %11, !2480, !DIExpression(), !2481)
  store ptr %4, ptr %12, align 8
    #dbg_declare(ptr %12, !2482, !DIExpression(), !2483)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !2484, !DIExpression(), !2485)
  store ptr %6, ptr %14, align 8
    #dbg_declare(ptr %14, !2486, !DIExpression(), !2487)
    #dbg_declare(ptr %15, !2488, !DIExpression(), !2489)
    #dbg_declare(ptr %16, !2490, !DIExpression(), !2491)
    #dbg_declare(ptr %17, !2492, !DIExpression(), !2493)
    #dbg_declare(ptr %18, !2494, !DIExpression(), !2495)
  %19 = load ptr, ptr %9, align 8, !dbg !2496
  store ptr %19, ptr %18, align 8, !dbg !2495
  %20 = load ptr, ptr %18, align 8, !dbg !2497
  %21 = icmp eq ptr %20, null, !dbg !2499
  br i1 %21, label %22, label %34, !dbg !2499

22:                                               ; preds = %7
  %23 = load ptr, ptr %8, align 8, !dbg !2500
  %24 = icmp ne ptr %23, null, !dbg !2500
  br i1 %24, label %25, label %27, !dbg !2500

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8, !dbg !2500
  store i32 0, ptr %26, align 4, !dbg !2500
  br label %27, !dbg !2500

27:                                               ; preds = %25, %22
  %28 = load ptr, ptr %18, align 8, !dbg !2504
  %29 = icmp ne ptr %28, null, !dbg !2504
  br i1 %29, label %30, label %33, !dbg !2504

30:                                               ; preds = %27
  %31 = load ptr, ptr %18, align 8, !dbg !2504
  %32 = getelementptr inbounds nuw %struct.bzFile, ptr %31, i32 0, i32 5, !dbg !2504
  store i32 0, ptr %32, align 8, !dbg !2504
  br label %33, !dbg !2504

33:                                               ; preds = %30, %27
  br label %264, !dbg !2506

34:                                               ; preds = %7
  %35 = load ptr, ptr %18, align 8, !dbg !2507
  %36 = getelementptr inbounds nuw %struct.bzFile, ptr %35, i32 0, i32 3, !dbg !2509
  %37 = load i8, ptr %36, align 4, !dbg !2509
  %38 = icmp ne i8 %37, 0, !dbg !2510
  br i1 %38, label %51, label %39, !dbg !2511

39:                                               ; preds = %34
  %40 = load ptr, ptr %8, align 8, !dbg !2512
  %41 = icmp ne ptr %40, null, !dbg !2512
  br i1 %41, label %42, label %44, !dbg !2512

42:                                               ; preds = %39
  %43 = load ptr, ptr %8, align 8, !dbg !2512
  store i32 -1, ptr %43, align 4, !dbg !2512
  br label %44, !dbg !2512

44:                                               ; preds = %42, %39
  %45 = load ptr, ptr %18, align 8, !dbg !2516
  %46 = icmp ne ptr %45, null, !dbg !2516
  br i1 %46, label %47, label %50, !dbg !2516

47:                                               ; preds = %44
  %48 = load ptr, ptr %18, align 8, !dbg !2516
  %49 = getelementptr inbounds nuw %struct.bzFile, ptr %48, i32 0, i32 5, !dbg !2516
  store i32 -1, ptr %49, align 8, !dbg !2516
  br label %50, !dbg !2516

50:                                               ; preds = %47, %44
  br label %264, !dbg !2518

51:                                               ; preds = %34
  %52 = load ptr, ptr %18, align 8, !dbg !2519
  %53 = getelementptr inbounds nuw %struct.bzFile, ptr %52, i32 0, i32 0, !dbg !2521
  %54 = load ptr, ptr %53, align 8, !dbg !2521
  %55 = call i32 @ferror(ptr noundef %54) #8, !dbg !2522
  %56 = icmp ne i32 %55, 0, !dbg !2522
  br i1 %56, label %57, label %69, !dbg !2522

57:                                               ; preds = %51
  %58 = load ptr, ptr %8, align 8, !dbg !2523
  %59 = icmp ne ptr %58, null, !dbg !2523
  br i1 %59, label %60, label %62, !dbg !2523

60:                                               ; preds = %57
  %61 = load ptr, ptr %8, align 8, !dbg !2523
  store i32 -6, ptr %61, align 4, !dbg !2523
  br label %62, !dbg !2523

62:                                               ; preds = %60, %57
  %63 = load ptr, ptr %18, align 8, !dbg !2527
  %64 = icmp ne ptr %63, null, !dbg !2527
  br i1 %64, label %65, label %68, !dbg !2527

65:                                               ; preds = %62
  %66 = load ptr, ptr %18, align 8, !dbg !2527
  %67 = getelementptr inbounds nuw %struct.bzFile, ptr %66, i32 0, i32 5, !dbg !2527
  store i32 -6, ptr %67, align 8, !dbg !2527
  br label %68, !dbg !2527

68:                                               ; preds = %65, %62
  br label %264, !dbg !2529

69:                                               ; preds = %51
  %70 = load ptr, ptr %11, align 8, !dbg !2530
  %71 = icmp ne ptr %70, null, !dbg !2532
  br i1 %71, label %72, label %74, !dbg !2532

72:                                               ; preds = %69
  %73 = load ptr, ptr %11, align 8, !dbg !2533
  store i32 0, ptr %73, align 4, !dbg !2534
  br label %74, !dbg !2535

74:                                               ; preds = %72, %69
  %75 = load ptr, ptr %12, align 8, !dbg !2536
  %76 = icmp ne ptr %75, null, !dbg !2538
  br i1 %76, label %77, label %79, !dbg !2538

77:                                               ; preds = %74
  %78 = load ptr, ptr %12, align 8, !dbg !2539
  store i32 0, ptr %78, align 4, !dbg !2540
  br label %79, !dbg !2541

79:                                               ; preds = %77, %74
  %80 = load ptr, ptr %13, align 8, !dbg !2542
  %81 = icmp ne ptr %80, null, !dbg !2544
  br i1 %81, label %82, label %84, !dbg !2544

82:                                               ; preds = %79
  %83 = load ptr, ptr %13, align 8, !dbg !2545
  store i32 0, ptr %83, align 4, !dbg !2546
  br label %84, !dbg !2547

84:                                               ; preds = %82, %79
  %85 = load ptr, ptr %14, align 8, !dbg !2548
  %86 = icmp ne ptr %85, null, !dbg !2550
  br i1 %86, label %87, label %89, !dbg !2550

87:                                               ; preds = %84
  %88 = load ptr, ptr %14, align 8, !dbg !2551
  store i32 0, ptr %88, align 4, !dbg !2552
  br label %89, !dbg !2553

89:                                               ; preds = %87, %84
  %90 = load i32, ptr %10, align 4, !dbg !2554
  %91 = icmp ne i32 %90, 0, !dbg !2554
  br i1 %91, label %180, label %92, !dbg !2556

92:                                               ; preds = %89
  %93 = load ptr, ptr %18, align 8, !dbg !2557
  %94 = getelementptr inbounds nuw %struct.bzFile, ptr %93, i32 0, i32 5, !dbg !2558
  %95 = load i32, ptr %94, align 8, !dbg !2558
  %96 = icmp eq i32 %95, 0, !dbg !2559
  br i1 %96, label %97, label %180, !dbg !2556

97:                                               ; preds = %92
  br label %98, !dbg !2560

98:                                               ; preds = %97, %178
  %99 = load ptr, ptr %18, align 8, !dbg !2562
  %100 = getelementptr inbounds nuw %struct.bzFile, ptr %99, i32 0, i32 4, !dbg !2564
  %101 = getelementptr inbounds nuw %struct.bz_stream, ptr %100, i32 0, i32 5, !dbg !2565
  store i32 5000, ptr %101, align 8, !dbg !2566
  %102 = load ptr, ptr %18, align 8, !dbg !2567
  %103 = getelementptr inbounds nuw %struct.bzFile, ptr %102, i32 0, i32 1, !dbg !2568
  %104 = getelementptr inbounds [5000 x i8], ptr %103, i64 0, i64 0, !dbg !2567
  %105 = load ptr, ptr %18, align 8, !dbg !2569
  %106 = getelementptr inbounds nuw %struct.bzFile, ptr %105, i32 0, i32 4, !dbg !2570
  %107 = getelementptr inbounds nuw %struct.bz_stream, ptr %106, i32 0, i32 4, !dbg !2571
  store ptr %104, ptr %107, align 8, !dbg !2572
  %108 = load ptr, ptr %18, align 8, !dbg !2573
  %109 = getelementptr inbounds nuw %struct.bzFile, ptr %108, i32 0, i32 4, !dbg !2574
  %110 = call i32 @BZ2_bzCompress(ptr noundef %109, i32 noundef 2), !dbg !2575
  store i32 %110, ptr %17, align 4, !dbg !2576
  %111 = load i32, ptr %17, align 4, !dbg !2577
  %112 = icmp ne i32 %111, 3, !dbg !2579
  br i1 %112, label %113, label %130, !dbg !2580

113:                                              ; preds = %98
  %114 = load i32, ptr %17, align 4, !dbg !2581
  %115 = icmp ne i32 %114, 4, !dbg !2582
  br i1 %115, label %116, label %130, !dbg !2580

116:                                              ; preds = %113
  %117 = load ptr, ptr %8, align 8, !dbg !2583
  %118 = icmp ne ptr %117, null, !dbg !2583
  br i1 %118, label %119, label %122, !dbg !2583

119:                                              ; preds = %116
  %120 = load i32, ptr %17, align 4, !dbg !2583
  %121 = load ptr, ptr %8, align 8, !dbg !2583
  store i32 %120, ptr %121, align 4, !dbg !2583
  br label %122, !dbg !2583

122:                                              ; preds = %119, %116
  %123 = load ptr, ptr %18, align 8, !dbg !2587
  %124 = icmp ne ptr %123, null, !dbg !2587
  br i1 %124, label %125, label %129, !dbg !2587

125:                                              ; preds = %122
  %126 = load i32, ptr %17, align 4, !dbg !2587
  %127 = load ptr, ptr %18, align 8, !dbg !2587
  %128 = getelementptr inbounds nuw %struct.bzFile, ptr %127, i32 0, i32 5, !dbg !2587
  store i32 %126, ptr %128, align 8, !dbg !2587
  br label %129, !dbg !2587

129:                                              ; preds = %125, %122
  br label %264, !dbg !2589

130:                                              ; preds = %113, %98
  %131 = load ptr, ptr %18, align 8, !dbg !2590
  %132 = getelementptr inbounds nuw %struct.bzFile, ptr %131, i32 0, i32 4, !dbg !2592
  %133 = getelementptr inbounds nuw %struct.bz_stream, ptr %132, i32 0, i32 5, !dbg !2593
  %134 = load i32, ptr %133, align 8, !dbg !2593
  %135 = icmp ult i32 %134, 5000, !dbg !2594
  br i1 %135, label %136, label %174, !dbg !2594

136:                                              ; preds = %130
  %137 = load ptr, ptr %18, align 8, !dbg !2595
  %138 = getelementptr inbounds nuw %struct.bzFile, ptr %137, i32 0, i32 4, !dbg !2597
  %139 = getelementptr inbounds nuw %struct.bz_stream, ptr %138, i32 0, i32 5, !dbg !2598
  %140 = load i32, ptr %139, align 8, !dbg !2598
  %141 = sub i32 5000, %140, !dbg !2599
  store i32 %141, ptr %15, align 4, !dbg !2600
  %142 = load ptr, ptr %18, align 8, !dbg !2601
  %143 = getelementptr inbounds nuw %struct.bzFile, ptr %142, i32 0, i32 1, !dbg !2602
  %144 = getelementptr inbounds [5000 x i8], ptr %143, i64 0, i64 0, !dbg !2603
  %145 = load i32, ptr %15, align 4, !dbg !2604
  %146 = sext i32 %145 to i64, !dbg !2604
  %147 = load ptr, ptr %18, align 8, !dbg !2605
  %148 = getelementptr inbounds nuw %struct.bzFile, ptr %147, i32 0, i32 0, !dbg !2606
  %149 = load ptr, ptr %148, align 8, !dbg !2606
  %150 = call i64 @fwrite(ptr noundef %144, i64 noundef 1, i64 noundef %146, ptr noundef %149), !dbg !2607
  %151 = trunc i64 %150 to i32, !dbg !2607
  store i32 %151, ptr %16, align 4, !dbg !2608
  %152 = load i32, ptr %15, align 4, !dbg !2609
  %153 = load i32, ptr %16, align 4, !dbg !2611
  %154 = icmp ne i32 %152, %153, !dbg !2612
  br i1 %154, label %161, label %155, !dbg !2613

155:                                              ; preds = %136
  %156 = load ptr, ptr %18, align 8, !dbg !2614
  %157 = getelementptr inbounds nuw %struct.bzFile, ptr %156, i32 0, i32 0, !dbg !2615
  %158 = load ptr, ptr %157, align 8, !dbg !2615
  %159 = call i32 @ferror(ptr noundef %158) #8, !dbg !2616
  %160 = icmp ne i32 %159, 0, !dbg !2616
  br i1 %160, label %161, label %173, !dbg !2613

161:                                              ; preds = %155, %136
  %162 = load ptr, ptr %8, align 8, !dbg !2617
  %163 = icmp ne ptr %162, null, !dbg !2617
  br i1 %163, label %164, label %166, !dbg !2617

164:                                              ; preds = %161
  %165 = load ptr, ptr %8, align 8, !dbg !2617
  store i32 -6, ptr %165, align 4, !dbg !2617
  br label %166, !dbg !2617

166:                                              ; preds = %164, %161
  %167 = load ptr, ptr %18, align 8, !dbg !2621
  %168 = icmp ne ptr %167, null, !dbg !2621
  br i1 %168, label %169, label %172, !dbg !2621

169:                                              ; preds = %166
  %170 = load ptr, ptr %18, align 8, !dbg !2621
  %171 = getelementptr inbounds nuw %struct.bzFile, ptr %170, i32 0, i32 5, !dbg !2621
  store i32 -6, ptr %171, align 8, !dbg !2621
  br label %172, !dbg !2621

172:                                              ; preds = %169, %166
  br label %264, !dbg !2623

173:                                              ; preds = %155
  br label %174, !dbg !2624

174:                                              ; preds = %173, %130
  %175 = load i32, ptr %17, align 4, !dbg !2625
  %176 = icmp eq i32 %175, 4, !dbg !2627
  br i1 %176, label %177, label %178, !dbg !2627

177:                                              ; preds = %174
  br label %179, !dbg !2628

178:                                              ; preds = %174
  br label %98, !dbg !2560, !llvm.loop !2629

179:                                              ; preds = %177
  br label %180, !dbg !2631

180:                                              ; preds = %179, %92, %89
  %181 = load i32, ptr %10, align 4, !dbg !2632
  %182 = icmp ne i32 %181, 0, !dbg !2632
  br i1 %182, label %212, label %183, !dbg !2634

183:                                              ; preds = %180
  %184 = load ptr, ptr %18, align 8, !dbg !2635
  %185 = getelementptr inbounds nuw %struct.bzFile, ptr %184, i32 0, i32 0, !dbg !2636
  %186 = load ptr, ptr %185, align 8, !dbg !2636
  %187 = call i32 @ferror(ptr noundef %186) #8, !dbg !2637
  %188 = icmp ne i32 %187, 0, !dbg !2637
  br i1 %188, label %212, label %189, !dbg !2634

189:                                              ; preds = %183
  %190 = load ptr, ptr %18, align 8, !dbg !2638
  %191 = getelementptr inbounds nuw %struct.bzFile, ptr %190, i32 0, i32 0, !dbg !2640
  %192 = load ptr, ptr %191, align 8, !dbg !2640
  %193 = call i32 @fflush(ptr noundef %192), !dbg !2641
  %194 = load ptr, ptr %18, align 8, !dbg !2642
  %195 = getelementptr inbounds nuw %struct.bzFile, ptr %194, i32 0, i32 0, !dbg !2644
  %196 = load ptr, ptr %195, align 8, !dbg !2644
  %197 = call i32 @ferror(ptr noundef %196) #8, !dbg !2645
  %198 = icmp ne i32 %197, 0, !dbg !2645
  br i1 %198, label %199, label %211, !dbg !2645

199:                                              ; preds = %189
  %200 = load ptr, ptr %8, align 8, !dbg !2646
  %201 = icmp ne ptr %200, null, !dbg !2646
  br i1 %201, label %202, label %204, !dbg !2646

202:                                              ; preds = %199
  %203 = load ptr, ptr %8, align 8, !dbg !2646
  store i32 -6, ptr %203, align 4, !dbg !2646
  br label %204, !dbg !2646

204:                                              ; preds = %202, %199
  %205 = load ptr, ptr %18, align 8, !dbg !2650
  %206 = icmp ne ptr %205, null, !dbg !2650
  br i1 %206, label %207, label %210, !dbg !2650

207:                                              ; preds = %204
  %208 = load ptr, ptr %18, align 8, !dbg !2650
  %209 = getelementptr inbounds nuw %struct.bzFile, ptr %208, i32 0, i32 5, !dbg !2650
  store i32 -6, ptr %209, align 8, !dbg !2650
  br label %210, !dbg !2650

210:                                              ; preds = %207, %204
  br label %264, !dbg !2652

211:                                              ; preds = %189
  br label %212, !dbg !2653

212:                                              ; preds = %211, %183, %180
  %213 = load ptr, ptr %11, align 8, !dbg !2654
  %214 = icmp ne ptr %213, null, !dbg !2656
  br i1 %214, label %215, label %221, !dbg !2656

215:                                              ; preds = %212
  %216 = load ptr, ptr %18, align 8, !dbg !2657
  %217 = getelementptr inbounds nuw %struct.bzFile, ptr %216, i32 0, i32 4, !dbg !2658
  %218 = getelementptr inbounds nuw %struct.bz_stream, ptr %217, i32 0, i32 2, !dbg !2659
  %219 = load i32, ptr %218, align 4, !dbg !2659
  %220 = load ptr, ptr %11, align 8, !dbg !2660
  store i32 %219, ptr %220, align 4, !dbg !2661
  br label %221, !dbg !2662

221:                                              ; preds = %215, %212
  %222 = load ptr, ptr %12, align 8, !dbg !2663
  %223 = icmp ne ptr %222, null, !dbg !2665
  br i1 %223, label %224, label %230, !dbg !2665

224:                                              ; preds = %221
  %225 = load ptr, ptr %18, align 8, !dbg !2666
  %226 = getelementptr inbounds nuw %struct.bzFile, ptr %225, i32 0, i32 4, !dbg !2667
  %227 = getelementptr inbounds nuw %struct.bz_stream, ptr %226, i32 0, i32 3, !dbg !2668
  %228 = load i32, ptr %227, align 8, !dbg !2668
  %229 = load ptr, ptr %12, align 8, !dbg !2669
  store i32 %228, ptr %229, align 4, !dbg !2670
  br label %230, !dbg !2671

230:                                              ; preds = %224, %221
  %231 = load ptr, ptr %13, align 8, !dbg !2672
  %232 = icmp ne ptr %231, null, !dbg !2674
  br i1 %232, label %233, label %239, !dbg !2674

233:                                              ; preds = %230
  %234 = load ptr, ptr %18, align 8, !dbg !2675
  %235 = getelementptr inbounds nuw %struct.bzFile, ptr %234, i32 0, i32 4, !dbg !2676
  %236 = getelementptr inbounds nuw %struct.bz_stream, ptr %235, i32 0, i32 6, !dbg !2677
  %237 = load i32, ptr %236, align 4, !dbg !2677
  %238 = load ptr, ptr %13, align 8, !dbg !2678
  store i32 %237, ptr %238, align 4, !dbg !2679
  br label %239, !dbg !2680

239:                                              ; preds = %233, %230
  %240 = load ptr, ptr %14, align 8, !dbg !2681
  %241 = icmp ne ptr %240, null, !dbg !2683
  br i1 %241, label %242, label %248, !dbg !2683

242:                                              ; preds = %239
  %243 = load ptr, ptr %18, align 8, !dbg !2684
  %244 = getelementptr inbounds nuw %struct.bzFile, ptr %243, i32 0, i32 4, !dbg !2685
  %245 = getelementptr inbounds nuw %struct.bz_stream, ptr %244, i32 0, i32 7, !dbg !2686
  %246 = load i32, ptr %245, align 8, !dbg !2686
  %247 = load ptr, ptr %14, align 8, !dbg !2687
  store i32 %246, ptr %247, align 4, !dbg !2688
  br label %248, !dbg !2689

248:                                              ; preds = %242, %239
  %249 = load ptr, ptr %8, align 8, !dbg !2690
  %250 = icmp ne ptr %249, null, !dbg !2690
  br i1 %250, label %251, label %253, !dbg !2690

251:                                              ; preds = %248
  %252 = load ptr, ptr %8, align 8, !dbg !2690
  store i32 0, ptr %252, align 4, !dbg !2690
  br label %253, !dbg !2690

253:                                              ; preds = %251, %248
  %254 = load ptr, ptr %18, align 8, !dbg !2693
  %255 = icmp ne ptr %254, null, !dbg !2693
  br i1 %255, label %256, label %259, !dbg !2693

256:                                              ; preds = %253
  %257 = load ptr, ptr %18, align 8, !dbg !2693
  %258 = getelementptr inbounds nuw %struct.bzFile, ptr %257, i32 0, i32 5, !dbg !2693
  store i32 0, ptr %258, align 8, !dbg !2693
  br label %259, !dbg !2693

259:                                              ; preds = %256, %253
  %260 = load ptr, ptr %18, align 8, !dbg !2695
  %261 = getelementptr inbounds nuw %struct.bzFile, ptr %260, i32 0, i32 4, !dbg !2696
  %262 = call i32 @BZ2_bzCompressEnd(ptr noundef %261), !dbg !2697
  %263 = load ptr, ptr %18, align 8, !dbg !2698
  call void @free(ptr noundef %263) #8, !dbg !2699
  br label %264, !dbg !2700

264:                                              ; preds = %259, %210, %172, %129, %68, %50, %33
  ret void, !dbg !2700
}

declare i32 @fflush(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzReadOpen(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 !dbg !2701 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !2704, !DIExpression(), !2705)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !2706, !DIExpression(), !2707)
  store i32 %2, ptr %10, align 4
    #dbg_declare(ptr %10, !2708, !DIExpression(), !2709)
  store i32 %3, ptr %11, align 4
    #dbg_declare(ptr %11, !2710, !DIExpression(), !2711)
  store ptr %4, ptr %12, align 8
    #dbg_declare(ptr %12, !2712, !DIExpression(), !2713)
  store i32 %5, ptr %13, align 4
    #dbg_declare(ptr %13, !2714, !DIExpression(), !2715)
    #dbg_declare(ptr %14, !2716, !DIExpression(), !2717)
  store ptr null, ptr %14, align 8, !dbg !2717
    #dbg_declare(ptr %15, !2718, !DIExpression(), !2719)
  %16 = load ptr, ptr %8, align 8, !dbg !2720
  %17 = icmp ne ptr %16, null, !dbg !2720
  br i1 %17, label %18, label %20, !dbg !2720

18:                                               ; preds = %6
  %19 = load ptr, ptr %8, align 8, !dbg !2720
  store i32 0, ptr %19, align 4, !dbg !2720
  br label %20, !dbg !2720

20:                                               ; preds = %18, %6
  %21 = load ptr, ptr %14, align 8, !dbg !2723
  %22 = icmp ne ptr %21, null, !dbg !2723
  br i1 %22, label %23, label %26, !dbg !2723

23:                                               ; preds = %20
  %24 = load ptr, ptr %14, align 8, !dbg !2723
  %25 = getelementptr inbounds nuw %struct.bzFile, ptr %24, i32 0, i32 5, !dbg !2723
  store i32 0, ptr %25, align 8, !dbg !2723
  br label %26, !dbg !2723

26:                                               ; preds = %23, %20
  %27 = load ptr, ptr %9, align 8, !dbg !2725
  %28 = icmp eq ptr %27, null, !dbg !2727
  br i1 %28, label %56, label %29, !dbg !2728

29:                                               ; preds = %26
  %30 = load i32, ptr %11, align 4, !dbg !2729
  %31 = icmp ne i32 %30, 0, !dbg !2730
  br i1 %31, label %32, label %35, !dbg !2731

32:                                               ; preds = %29
  %33 = load i32, ptr %11, align 4, !dbg !2732
  %34 = icmp ne i32 %33, 1, !dbg !2733
  br i1 %34, label %56, label %35, !dbg !2734

35:                                               ; preds = %32, %29
  %36 = load i32, ptr %10, align 4, !dbg !2735
  %37 = icmp slt i32 %36, 0, !dbg !2736
  br i1 %37, label %56, label %38, !dbg !2737

38:                                               ; preds = %35
  %39 = load i32, ptr %10, align 4, !dbg !2738
  %40 = icmp sgt i32 %39, 4, !dbg !2739
  br i1 %40, label %56, label %41, !dbg !2740

41:                                               ; preds = %38
  %42 = load ptr, ptr %12, align 8, !dbg !2741
  %43 = icmp eq ptr %42, null, !dbg !2742
  br i1 %43, label %44, label %47, !dbg !2743

44:                                               ; preds = %41
  %45 = load i32, ptr %13, align 4, !dbg !2744
  %46 = icmp ne i32 %45, 0, !dbg !2745
  br i1 %46, label %56, label %47, !dbg !2746

47:                                               ; preds = %44, %41
  %48 = load ptr, ptr %12, align 8, !dbg !2747
  %49 = icmp ne ptr %48, null, !dbg !2748
  br i1 %49, label %50, label %68, !dbg !2749

50:                                               ; preds = %47
  %51 = load i32, ptr %13, align 4, !dbg !2750
  %52 = icmp slt i32 %51, 0, !dbg !2751
  br i1 %52, label %56, label %53, !dbg !2752

53:                                               ; preds = %50
  %54 = load i32, ptr %13, align 4, !dbg !2753
  %55 = icmp sgt i32 %54, 5000, !dbg !2754
  br i1 %55, label %56, label %68, !dbg !2746

56:                                               ; preds = %53, %50, %44, %38, %35, %32, %26
  %57 = load ptr, ptr %8, align 8, !dbg !2755
  %58 = icmp ne ptr %57, null, !dbg !2755
  br i1 %58, label %59, label %61, !dbg !2755

59:                                               ; preds = %56
  %60 = load ptr, ptr %8, align 8, !dbg !2755
  store i32 -2, ptr %60, align 4, !dbg !2755
  br label %61, !dbg !2755

61:                                               ; preds = %59, %56
  %62 = load ptr, ptr %14, align 8, !dbg !2759
  %63 = icmp ne ptr %62, null, !dbg !2759
  br i1 %63, label %64, label %67, !dbg !2759

64:                                               ; preds = %61
  %65 = load ptr, ptr %14, align 8, !dbg !2759
  %66 = getelementptr inbounds nuw %struct.bzFile, ptr %65, i32 0, i32 5, !dbg !2759
  store i32 -2, ptr %66, align 8, !dbg !2759
  br label %67, !dbg !2759

67:                                               ; preds = %64, %61
  store ptr null, ptr %7, align 8, !dbg !2761
  br label %190, !dbg !2761

68:                                               ; preds = %53, %47
  %69 = load ptr, ptr %9, align 8, !dbg !2762
  %70 = call i32 @ferror(ptr noundef %69) #8, !dbg !2764
  %71 = icmp ne i32 %70, 0, !dbg !2764
  br i1 %71, label %72, label %84, !dbg !2764

72:                                               ; preds = %68
  %73 = load ptr, ptr %8, align 8, !dbg !2765
  %74 = icmp ne ptr %73, null, !dbg !2765
  br i1 %74, label %75, label %77, !dbg !2765

75:                                               ; preds = %72
  %76 = load ptr, ptr %8, align 8, !dbg !2765
  store i32 -6, ptr %76, align 4, !dbg !2765
  br label %77, !dbg !2765

77:                                               ; preds = %75, %72
  %78 = load ptr, ptr %14, align 8, !dbg !2769
  %79 = icmp ne ptr %78, null, !dbg !2769
  br i1 %79, label %80, label %83, !dbg !2769

80:                                               ; preds = %77
  %81 = load ptr, ptr %14, align 8, !dbg !2769
  %82 = getelementptr inbounds nuw %struct.bzFile, ptr %81, i32 0, i32 5, !dbg !2769
  store i32 -6, ptr %82, align 8, !dbg !2769
  br label %83, !dbg !2769

83:                                               ; preds = %80, %77
  store ptr null, ptr %7, align 8, !dbg !2771
  br label %190, !dbg !2771

84:                                               ; preds = %68
  %85 = call noalias ptr @malloc(i64 noundef 5104) #10, !dbg !2772
  store ptr %85, ptr %14, align 8, !dbg !2773
  %86 = load ptr, ptr %14, align 8, !dbg !2774
  %87 = icmp eq ptr %86, null, !dbg !2776
  br i1 %87, label %88, label %100, !dbg !2776

88:                                               ; preds = %84
  %89 = load ptr, ptr %8, align 8, !dbg !2777
  %90 = icmp ne ptr %89, null, !dbg !2777
  br i1 %90, label %91, label %93, !dbg !2777

91:                                               ; preds = %88
  %92 = load ptr, ptr %8, align 8, !dbg !2777
  store i32 -3, ptr %92, align 4, !dbg !2777
  br label %93, !dbg !2777

93:                                               ; preds = %91, %88
  %94 = load ptr, ptr %14, align 8, !dbg !2781
  %95 = icmp ne ptr %94, null, !dbg !2781
  br i1 %95, label %96, label %99, !dbg !2781

96:                                               ; preds = %93
  %97 = load ptr, ptr %14, align 8, !dbg !2781
  %98 = getelementptr inbounds nuw %struct.bzFile, ptr %97, i32 0, i32 5, !dbg !2781
  store i32 -3, ptr %98, align 8, !dbg !2781
  br label %99, !dbg !2781

99:                                               ; preds = %96, %93
  store ptr null, ptr %7, align 8, !dbg !2783
  br label %190, !dbg !2783

100:                                              ; preds = %84
  %101 = load ptr, ptr %8, align 8, !dbg !2784
  %102 = icmp ne ptr %101, null, !dbg !2784
  br i1 %102, label %103, label %105, !dbg !2784

103:                                              ; preds = %100
  %104 = load ptr, ptr %8, align 8, !dbg !2784
  store i32 0, ptr %104, align 4, !dbg !2784
  br label %105, !dbg !2784

105:                                              ; preds = %103, %100
  %106 = load ptr, ptr %14, align 8, !dbg !2787
  %107 = icmp ne ptr %106, null, !dbg !2787
  br i1 %107, label %108, label %111, !dbg !2787

108:                                              ; preds = %105
  %109 = load ptr, ptr %14, align 8, !dbg !2787
  %110 = getelementptr inbounds nuw %struct.bzFile, ptr %109, i32 0, i32 5, !dbg !2787
  store i32 0, ptr %110, align 8, !dbg !2787
  br label %111, !dbg !2787

111:                                              ; preds = %108, %105
  %112 = load ptr, ptr %14, align 8, !dbg !2789
  %113 = getelementptr inbounds nuw %struct.bzFile, ptr %112, i32 0, i32 6, !dbg !2790
  store i8 0, ptr %113, align 4, !dbg !2791
  %114 = load ptr, ptr %9, align 8, !dbg !2792
  %115 = load ptr, ptr %14, align 8, !dbg !2793
  %116 = getelementptr inbounds nuw %struct.bzFile, ptr %115, i32 0, i32 0, !dbg !2794
  store ptr %114, ptr %116, align 8, !dbg !2795
  %117 = load ptr, ptr %14, align 8, !dbg !2796
  %118 = getelementptr inbounds nuw %struct.bzFile, ptr %117, i32 0, i32 2, !dbg !2797
  store i32 0, ptr %118, align 8, !dbg !2798
  %119 = load ptr, ptr %14, align 8, !dbg !2799
  %120 = getelementptr inbounds nuw %struct.bzFile, ptr %119, i32 0, i32 3, !dbg !2800
  store i8 0, ptr %120, align 4, !dbg !2801
  %121 = load ptr, ptr %14, align 8, !dbg !2802
  %122 = getelementptr inbounds nuw %struct.bzFile, ptr %121, i32 0, i32 4, !dbg !2803
  %123 = getelementptr inbounds nuw %struct.bz_stream, ptr %122, i32 0, i32 9, !dbg !2804
  store ptr null, ptr %123, align 8, !dbg !2805
  %124 = load ptr, ptr %14, align 8, !dbg !2806
  %125 = getelementptr inbounds nuw %struct.bzFile, ptr %124, i32 0, i32 4, !dbg !2807
  %126 = getelementptr inbounds nuw %struct.bz_stream, ptr %125, i32 0, i32 10, !dbg !2808
  store ptr null, ptr %126, align 8, !dbg !2809
  %127 = load ptr, ptr %14, align 8, !dbg !2810
  %128 = getelementptr inbounds nuw %struct.bzFile, ptr %127, i32 0, i32 4, !dbg !2811
  %129 = getelementptr inbounds nuw %struct.bz_stream, ptr %128, i32 0, i32 11, !dbg !2812
  store ptr null, ptr %129, align 8, !dbg !2813
  br label %130, !dbg !2814

130:                                              ; preds = %133, %111
  %131 = load i32, ptr %13, align 4, !dbg !2815
  %132 = icmp sgt i32 %131, 0, !dbg !2816
  br i1 %132, label %133, label %151, !dbg !2814

133:                                              ; preds = %130
  %134 = load ptr, ptr %12, align 8, !dbg !2817
  %135 = load i8, ptr %134, align 1, !dbg !2819
  %136 = load ptr, ptr %14, align 8, !dbg !2820
  %137 = getelementptr inbounds nuw %struct.bzFile, ptr %136, i32 0, i32 1, !dbg !2821
  %138 = load ptr, ptr %14, align 8, !dbg !2822
  %139 = getelementptr inbounds nuw %struct.bzFile, ptr %138, i32 0, i32 2, !dbg !2823
  %140 = load i32, ptr %139, align 8, !dbg !2823
  %141 = sext i32 %140 to i64, !dbg !2820
  %142 = getelementptr inbounds [5000 x i8], ptr %137, i64 0, i64 %141, !dbg !2820
  store i8 %135, ptr %142, align 1, !dbg !2824
  %143 = load ptr, ptr %14, align 8, !dbg !2825
  %144 = getelementptr inbounds nuw %struct.bzFile, ptr %143, i32 0, i32 2, !dbg !2826
  %145 = load i32, ptr %144, align 8, !dbg !2827
  %146 = add nsw i32 %145, 1, !dbg !2827
  store i32 %146, ptr %144, align 8, !dbg !2827
  %147 = load ptr, ptr %12, align 8, !dbg !2828
  %148 = getelementptr inbounds i8, ptr %147, i64 1, !dbg !2829
  store ptr %148, ptr %12, align 8, !dbg !2830
  %149 = load i32, ptr %13, align 4, !dbg !2831
  %150 = add nsw i32 %149, -1, !dbg !2831
  store i32 %150, ptr %13, align 4, !dbg !2831
  br label %130, !dbg !2814, !llvm.loop !2832

151:                                              ; preds = %130
  %152 = load ptr, ptr %14, align 8, !dbg !2834
  %153 = getelementptr inbounds nuw %struct.bzFile, ptr %152, i32 0, i32 4, !dbg !2835
  %154 = load i32, ptr %10, align 4, !dbg !2836
  %155 = load i32, ptr %11, align 4, !dbg !2837
  %156 = call i32 @BZ2_bzDecompressInit(ptr noundef %153, i32 noundef %154, i32 noundef %155), !dbg !2838
  store i32 %156, ptr %15, align 4, !dbg !2839
  %157 = load i32, ptr %15, align 4, !dbg !2840
  %158 = icmp ne i32 %157, 0, !dbg !2842
  br i1 %158, label %159, label %174, !dbg !2842

159:                                              ; preds = %151
  %160 = load ptr, ptr %8, align 8, !dbg !2843
  %161 = icmp ne ptr %160, null, !dbg !2843
  br i1 %161, label %162, label %165, !dbg !2843

162:                                              ; preds = %159
  %163 = load i32, ptr %15, align 4, !dbg !2843
  %164 = load ptr, ptr %8, align 8, !dbg !2843
  store i32 %163, ptr %164, align 4, !dbg !2843
  br label %165, !dbg !2843

165:                                              ; preds = %162, %159
  %166 = load ptr, ptr %14, align 8, !dbg !2847
  %167 = icmp ne ptr %166, null, !dbg !2847
  br i1 %167, label %168, label %172, !dbg !2847

168:                                              ; preds = %165
  %169 = load i32, ptr %15, align 4, !dbg !2847
  %170 = load ptr, ptr %14, align 8, !dbg !2847
  %171 = getelementptr inbounds nuw %struct.bzFile, ptr %170, i32 0, i32 5, !dbg !2847
  store i32 %169, ptr %171, align 8, !dbg !2847
  br label %172, !dbg !2847

172:                                              ; preds = %168, %165
  %173 = load ptr, ptr %14, align 8, !dbg !2849
  call void @free(ptr noundef %173) #8, !dbg !2850
  store ptr null, ptr %7, align 8, !dbg !2851
  br label %190, !dbg !2851

174:                                              ; preds = %151
  %175 = load ptr, ptr %14, align 8, !dbg !2852
  %176 = getelementptr inbounds nuw %struct.bzFile, ptr %175, i32 0, i32 2, !dbg !2853
  %177 = load i32, ptr %176, align 8, !dbg !2853
  %178 = load ptr, ptr %14, align 8, !dbg !2854
  %179 = getelementptr inbounds nuw %struct.bzFile, ptr %178, i32 0, i32 4, !dbg !2855
  %180 = getelementptr inbounds nuw %struct.bz_stream, ptr %179, i32 0, i32 1, !dbg !2856
  store i32 %177, ptr %180, align 8, !dbg !2857
  %181 = load ptr, ptr %14, align 8, !dbg !2858
  %182 = getelementptr inbounds nuw %struct.bzFile, ptr %181, i32 0, i32 1, !dbg !2859
  %183 = getelementptr inbounds [5000 x i8], ptr %182, i64 0, i64 0, !dbg !2858
  %184 = load ptr, ptr %14, align 8, !dbg !2860
  %185 = getelementptr inbounds nuw %struct.bzFile, ptr %184, i32 0, i32 4, !dbg !2861
  %186 = getelementptr inbounds nuw %struct.bz_stream, ptr %185, i32 0, i32 0, !dbg !2862
  store ptr %183, ptr %186, align 8, !dbg !2863
  %187 = load ptr, ptr %14, align 8, !dbg !2864
  %188 = getelementptr inbounds nuw %struct.bzFile, ptr %187, i32 0, i32 6, !dbg !2865
  store i8 1, ptr %188, align 4, !dbg !2866
  %189 = load ptr, ptr %14, align 8, !dbg !2867
  store ptr %189, ptr %7, align 8, !dbg !2868
  br label %190, !dbg !2868

190:                                              ; preds = %174, %172, %99, %83, %67
  %191 = load ptr, ptr %7, align 8, !dbg !2869
  ret ptr %191, !dbg !2869
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzReadClose(ptr noundef %0, ptr noundef %1) #0 !dbg !2870 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2873, !DIExpression(), !2874)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !2875, !DIExpression(), !2876)
    #dbg_declare(ptr %5, !2877, !DIExpression(), !2878)
  %6 = load ptr, ptr %4, align 8, !dbg !2879
  store ptr %6, ptr %5, align 8, !dbg !2878
  %7 = load ptr, ptr %3, align 8, !dbg !2880
  %8 = icmp ne ptr %7, null, !dbg !2880
  br i1 %8, label %9, label %11, !dbg !2880

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !2880
  store i32 0, ptr %10, align 4, !dbg !2880
  br label %11, !dbg !2880

11:                                               ; preds = %9, %2
  %12 = load ptr, ptr %5, align 8, !dbg !2883
  %13 = icmp ne ptr %12, null, !dbg !2883
  br i1 %13, label %14, label %17, !dbg !2883

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !dbg !2883
  %16 = getelementptr inbounds nuw %struct.bzFile, ptr %15, i32 0, i32 5, !dbg !2883
  store i32 0, ptr %16, align 8, !dbg !2883
  br label %17, !dbg !2883

17:                                               ; preds = %14, %11
  %18 = load ptr, ptr %5, align 8, !dbg !2885
  %19 = icmp eq ptr %18, null, !dbg !2887
  br i1 %19, label %20, label %32, !dbg !2887

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 8, !dbg !2888
  %22 = icmp ne ptr %21, null, !dbg !2888
  br i1 %22, label %23, label %25, !dbg !2888

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8, !dbg !2888
  store i32 0, ptr %24, align 4, !dbg !2888
  br label %25, !dbg !2888

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr %5, align 8, !dbg !2892
  %27 = icmp ne ptr %26, null, !dbg !2892
  br i1 %27, label %28, label %31, !dbg !2892

28:                                               ; preds = %25
  %29 = load ptr, ptr %5, align 8, !dbg !2892
  %30 = getelementptr inbounds nuw %struct.bzFile, ptr %29, i32 0, i32 5, !dbg !2892
  store i32 0, ptr %30, align 8, !dbg !2892
  br label %31, !dbg !2892

31:                                               ; preds = %28, %25
  br label %60, !dbg !2894

32:                                               ; preds = %17
  %33 = load ptr, ptr %5, align 8, !dbg !2895
  %34 = getelementptr inbounds nuw %struct.bzFile, ptr %33, i32 0, i32 3, !dbg !2897
  %35 = load i8, ptr %34, align 4, !dbg !2897
  %36 = icmp ne i8 %35, 0, !dbg !2895
  br i1 %36, label %37, label %49, !dbg !2895

37:                                               ; preds = %32
  %38 = load ptr, ptr %3, align 8, !dbg !2898
  %39 = icmp ne ptr %38, null, !dbg !2898
  br i1 %39, label %40, label %42, !dbg !2898

40:                                               ; preds = %37
  %41 = load ptr, ptr %3, align 8, !dbg !2898
  store i32 -1, ptr %41, align 4, !dbg !2898
  br label %42, !dbg !2898

42:                                               ; preds = %40, %37
  %43 = load ptr, ptr %5, align 8, !dbg !2902
  %44 = icmp ne ptr %43, null, !dbg !2902
  br i1 %44, label %45, label %48, !dbg !2902

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 8, !dbg !2902
  %47 = getelementptr inbounds nuw %struct.bzFile, ptr %46, i32 0, i32 5, !dbg !2902
  store i32 -1, ptr %47, align 8, !dbg !2902
  br label %48, !dbg !2902

48:                                               ; preds = %45, %42
  br label %60, !dbg !2904

49:                                               ; preds = %32
  %50 = load ptr, ptr %5, align 8, !dbg !2905
  %51 = getelementptr inbounds nuw %struct.bzFile, ptr %50, i32 0, i32 6, !dbg !2907
  %52 = load i8, ptr %51, align 4, !dbg !2907
  %53 = icmp ne i8 %52, 0, !dbg !2905
  br i1 %53, label %54, label %58, !dbg !2905

54:                                               ; preds = %49
  %55 = load ptr, ptr %5, align 8, !dbg !2908
  %56 = getelementptr inbounds nuw %struct.bzFile, ptr %55, i32 0, i32 4, !dbg !2909
  %57 = call i32 @BZ2_bzDecompressEnd(ptr noundef %56), !dbg !2910
  br label %58, !dbg !2911

58:                                               ; preds = %54, %49
  %59 = load ptr, ptr %5, align 8, !dbg !2912
  call void @free(ptr noundef %59) #8, !dbg !2913
  br label %60, !dbg !2914

60:                                               ; preds = %58, %48, %31
  ret void, !dbg !2914
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzRead(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2915 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !2918, !DIExpression(), !2919)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !2920, !DIExpression(), !2921)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !2922, !DIExpression(), !2923)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !2924, !DIExpression(), !2925)
    #dbg_declare(ptr %10, !2926, !DIExpression(), !2927)
    #dbg_declare(ptr %11, !2928, !DIExpression(), !2929)
    #dbg_declare(ptr %12, !2930, !DIExpression(), !2931)
  %13 = load ptr, ptr %7, align 8, !dbg !2932
  store ptr %13, ptr %12, align 8, !dbg !2931
  %14 = load ptr, ptr %6, align 8, !dbg !2933
  %15 = icmp ne ptr %14, null, !dbg !2933
  br i1 %15, label %16, label %18, !dbg !2933

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 8, !dbg !2933
  store i32 0, ptr %17, align 4, !dbg !2933
  br label %18, !dbg !2933

18:                                               ; preds = %16, %4
  %19 = load ptr, ptr %12, align 8, !dbg !2936
  %20 = icmp ne ptr %19, null, !dbg !2936
  br i1 %20, label %21, label %24, !dbg !2936

21:                                               ; preds = %18
  %22 = load ptr, ptr %12, align 8, !dbg !2936
  %23 = getelementptr inbounds nuw %struct.bzFile, ptr %22, i32 0, i32 5, !dbg !2936
  store i32 0, ptr %23, align 8, !dbg !2936
  br label %24, !dbg !2936

24:                                               ; preds = %21, %18
  %25 = load ptr, ptr %12, align 8, !dbg !2938
  %26 = icmp eq ptr %25, null, !dbg !2940
  br i1 %26, label %33, label %27, !dbg !2941

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 8, !dbg !2942
  %29 = icmp eq ptr %28, null, !dbg !2943
  br i1 %29, label %33, label %30, !dbg !2944

30:                                               ; preds = %27
  %31 = load i32, ptr %9, align 4, !dbg !2945
  %32 = icmp slt i32 %31, 0, !dbg !2946
  br i1 %32, label %33, label %45, !dbg !2944

33:                                               ; preds = %30, %27, %24
  %34 = load ptr, ptr %6, align 8, !dbg !2947
  %35 = icmp ne ptr %34, null, !dbg !2947
  br i1 %35, label %36, label %38, !dbg !2947

36:                                               ; preds = %33
  %37 = load ptr, ptr %6, align 8, !dbg !2947
  store i32 -2, ptr %37, align 4, !dbg !2947
  br label %38, !dbg !2947

38:                                               ; preds = %36, %33
  %39 = load ptr, ptr %12, align 8, !dbg !2951
  %40 = icmp ne ptr %39, null, !dbg !2951
  br i1 %40, label %41, label %44, !dbg !2951

41:                                               ; preds = %38
  %42 = load ptr, ptr %12, align 8, !dbg !2951
  %43 = getelementptr inbounds nuw %struct.bzFile, ptr %42, i32 0, i32 5, !dbg !2951
  store i32 -2, ptr %43, align 8, !dbg !2951
  br label %44, !dbg !2951

44:                                               ; preds = %41, %38
  store i32 0, ptr %5, align 4, !dbg !2953
  br label %256, !dbg !2953

45:                                               ; preds = %30
  %46 = load ptr, ptr %12, align 8, !dbg !2954
  %47 = getelementptr inbounds nuw %struct.bzFile, ptr %46, i32 0, i32 3, !dbg !2956
  %48 = load i8, ptr %47, align 4, !dbg !2956
  %49 = icmp ne i8 %48, 0, !dbg !2954
  br i1 %49, label %50, label %62, !dbg !2954

50:                                               ; preds = %45
  %51 = load ptr, ptr %6, align 8, !dbg !2957
  %52 = icmp ne ptr %51, null, !dbg !2957
  br i1 %52, label %53, label %55, !dbg !2957

53:                                               ; preds = %50
  %54 = load ptr, ptr %6, align 8, !dbg !2957
  store i32 -1, ptr %54, align 4, !dbg !2957
  br label %55, !dbg !2957

55:                                               ; preds = %53, %50
  %56 = load ptr, ptr %12, align 8, !dbg !2961
  %57 = icmp ne ptr %56, null, !dbg !2961
  br i1 %57, label %58, label %61, !dbg !2961

58:                                               ; preds = %55
  %59 = load ptr, ptr %12, align 8, !dbg !2961
  %60 = getelementptr inbounds nuw %struct.bzFile, ptr %59, i32 0, i32 5, !dbg !2961
  store i32 -1, ptr %60, align 8, !dbg !2961
  br label %61, !dbg !2961

61:                                               ; preds = %58, %55
  store i32 0, ptr %5, align 4, !dbg !2963
  br label %256, !dbg !2963

62:                                               ; preds = %45
  %63 = load i32, ptr %9, align 4, !dbg !2964
  %64 = icmp eq i32 %63, 0, !dbg !2966
  br i1 %64, label %65, label %77, !dbg !2966

65:                                               ; preds = %62
  %66 = load ptr, ptr %6, align 8, !dbg !2967
  %67 = icmp ne ptr %66, null, !dbg !2967
  br i1 %67, label %68, label %70, !dbg !2967

68:                                               ; preds = %65
  %69 = load ptr, ptr %6, align 8, !dbg !2967
  store i32 0, ptr %69, align 4, !dbg !2967
  br label %70, !dbg !2967

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr %12, align 8, !dbg !2971
  %72 = icmp ne ptr %71, null, !dbg !2971
  br i1 %72, label %73, label %76, !dbg !2971

73:                                               ; preds = %70
  %74 = load ptr, ptr %12, align 8, !dbg !2971
  %75 = getelementptr inbounds nuw %struct.bzFile, ptr %74, i32 0, i32 5, !dbg !2971
  store i32 0, ptr %75, align 8, !dbg !2971
  br label %76, !dbg !2971

76:                                               ; preds = %73, %70
  store i32 0, ptr %5, align 4, !dbg !2973
  br label %256, !dbg !2973

77:                                               ; preds = %62
  %78 = load i32, ptr %9, align 4, !dbg !2974
  %79 = load ptr, ptr %12, align 8, !dbg !2975
  %80 = getelementptr inbounds nuw %struct.bzFile, ptr %79, i32 0, i32 4, !dbg !2976
  %81 = getelementptr inbounds nuw %struct.bz_stream, ptr %80, i32 0, i32 5, !dbg !2977
  store i32 %78, ptr %81, align 8, !dbg !2978
  %82 = load ptr, ptr %8, align 8, !dbg !2979
  %83 = load ptr, ptr %12, align 8, !dbg !2980
  %84 = getelementptr inbounds nuw %struct.bzFile, ptr %83, i32 0, i32 4, !dbg !2981
  %85 = getelementptr inbounds nuw %struct.bz_stream, ptr %84, i32 0, i32 4, !dbg !2982
  store ptr %82, ptr %85, align 8, !dbg !2983
  br label %86, !dbg !2984

86:                                               ; preds = %77, %255
  %87 = load ptr, ptr %12, align 8, !dbg !2985
  %88 = getelementptr inbounds nuw %struct.bzFile, ptr %87, i32 0, i32 0, !dbg !2988
  %89 = load ptr, ptr %88, align 8, !dbg !2988
  %90 = call i32 @ferror(ptr noundef %89) #8, !dbg !2989
  %91 = icmp ne i32 %90, 0, !dbg !2989
  br i1 %91, label %92, label %104, !dbg !2989

92:                                               ; preds = %86
  %93 = load ptr, ptr %6, align 8, !dbg !2990
  %94 = icmp ne ptr %93, null, !dbg !2990
  br i1 %94, label %95, label %97, !dbg !2990

95:                                               ; preds = %92
  %96 = load ptr, ptr %6, align 8, !dbg !2990
  store i32 -6, ptr %96, align 4, !dbg !2990
  br label %97, !dbg !2990

97:                                               ; preds = %95, %92
  %98 = load ptr, ptr %12, align 8, !dbg !2994
  %99 = icmp ne ptr %98, null, !dbg !2994
  br i1 %99, label %100, label %103, !dbg !2994

100:                                              ; preds = %97
  %101 = load ptr, ptr %12, align 8, !dbg !2994
  %102 = getelementptr inbounds nuw %struct.bzFile, ptr %101, i32 0, i32 5, !dbg !2994
  store i32 -6, ptr %102, align 8, !dbg !2994
  br label %103, !dbg !2994

103:                                              ; preds = %100, %97
  store i32 0, ptr %5, align 4, !dbg !2996
  br label %256, !dbg !2996

104:                                              ; preds = %86
  %105 = load ptr, ptr %12, align 8, !dbg !2997
  %106 = getelementptr inbounds nuw %struct.bzFile, ptr %105, i32 0, i32 4, !dbg !2999
  %107 = getelementptr inbounds nuw %struct.bz_stream, ptr %106, i32 0, i32 1, !dbg !3000
  %108 = load i32, ptr %107, align 8, !dbg !3000
  %109 = icmp eq i32 %108, 0, !dbg !3001
  br i1 %109, label %110, label %158, !dbg !3002

110:                                              ; preds = %104
  %111 = load ptr, ptr %12, align 8, !dbg !3003
  %112 = getelementptr inbounds nuw %struct.bzFile, ptr %111, i32 0, i32 0, !dbg !3004
  %113 = load ptr, ptr %112, align 8, !dbg !3004
  %114 = call zeroext i8 @myfeof_(ptr noundef %113), !dbg !3005
  %115 = icmp ne i8 %114, 0, !dbg !3005
  br i1 %115, label %158, label %116, !dbg !3002

116:                                              ; preds = %110
  %117 = load ptr, ptr %12, align 8, !dbg !3006
  %118 = getelementptr inbounds nuw %struct.bzFile, ptr %117, i32 0, i32 1, !dbg !3008
  %119 = getelementptr inbounds [5000 x i8], ptr %118, i64 0, i64 0, !dbg !3006
  %120 = load ptr, ptr %12, align 8, !dbg !3009
  %121 = getelementptr inbounds nuw %struct.bzFile, ptr %120, i32 0, i32 0, !dbg !3010
  %122 = load ptr, ptr %121, align 8, !dbg !3010
  %123 = call i64 @fread(ptr noundef %119, i64 noundef 1, i64 noundef 5000, ptr noundef %122), !dbg !3011
  %124 = trunc i64 %123 to i32, !dbg !3011
  store i32 %124, ptr %10, align 4, !dbg !3012
  %125 = load ptr, ptr %12, align 8, !dbg !3013
  %126 = getelementptr inbounds nuw %struct.bzFile, ptr %125, i32 0, i32 0, !dbg !3015
  %127 = load ptr, ptr %126, align 8, !dbg !3015
  %128 = call i32 @ferror(ptr noundef %127) #8, !dbg !3016
  %129 = icmp ne i32 %128, 0, !dbg !3016
  br i1 %129, label %130, label %142, !dbg !3016

130:                                              ; preds = %116
  %131 = load ptr, ptr %6, align 8, !dbg !3017
  %132 = icmp ne ptr %131, null, !dbg !3017
  br i1 %132, label %133, label %135, !dbg !3017

133:                                              ; preds = %130
  %134 = load ptr, ptr %6, align 8, !dbg !3017
  store i32 -6, ptr %134, align 4, !dbg !3017
  br label %135, !dbg !3017

135:                                              ; preds = %133, %130
  %136 = load ptr, ptr %12, align 8, !dbg !3021
  %137 = icmp ne ptr %136, null, !dbg !3021
  br i1 %137, label %138, label %141, !dbg !3021

138:                                              ; preds = %135
  %139 = load ptr, ptr %12, align 8, !dbg !3021
  %140 = getelementptr inbounds nuw %struct.bzFile, ptr %139, i32 0, i32 5, !dbg !3021
  store i32 -6, ptr %140, align 8, !dbg !3021
  br label %141, !dbg !3021

141:                                              ; preds = %138, %135
  store i32 0, ptr %5, align 4, !dbg !3023
  br label %256, !dbg !3023

142:                                              ; preds = %116
  %143 = load i32, ptr %10, align 4, !dbg !3024
  %144 = load ptr, ptr %12, align 8, !dbg !3025
  %145 = getelementptr inbounds nuw %struct.bzFile, ptr %144, i32 0, i32 2, !dbg !3026
  store i32 %143, ptr %145, align 8, !dbg !3027
  %146 = load ptr, ptr %12, align 8, !dbg !3028
  %147 = getelementptr inbounds nuw %struct.bzFile, ptr %146, i32 0, i32 2, !dbg !3029
  %148 = load i32, ptr %147, align 8, !dbg !3029
  %149 = load ptr, ptr %12, align 8, !dbg !3030
  %150 = getelementptr inbounds nuw %struct.bzFile, ptr %149, i32 0, i32 4, !dbg !3031
  %151 = getelementptr inbounds nuw %struct.bz_stream, ptr %150, i32 0, i32 1, !dbg !3032
  store i32 %148, ptr %151, align 8, !dbg !3033
  %152 = load ptr, ptr %12, align 8, !dbg !3034
  %153 = getelementptr inbounds nuw %struct.bzFile, ptr %152, i32 0, i32 1, !dbg !3035
  %154 = getelementptr inbounds [5000 x i8], ptr %153, i64 0, i64 0, !dbg !3034
  %155 = load ptr, ptr %12, align 8, !dbg !3036
  %156 = getelementptr inbounds nuw %struct.bzFile, ptr %155, i32 0, i32 4, !dbg !3037
  %157 = getelementptr inbounds nuw %struct.bz_stream, ptr %156, i32 0, i32 0, !dbg !3038
  store ptr %154, ptr %157, align 8, !dbg !3039
  br label %158, !dbg !3040

158:                                              ; preds = %142, %110, %104
  %159 = load ptr, ptr %12, align 8, !dbg !3041
  %160 = getelementptr inbounds nuw %struct.bzFile, ptr %159, i32 0, i32 4, !dbg !3042
  %161 = call i32 @BZ2_bzDecompress(ptr noundef %160), !dbg !3043
  store i32 %161, ptr %11, align 4, !dbg !3044
  %162 = load i32, ptr %11, align 4, !dbg !3045
  %163 = icmp ne i32 %162, 0, !dbg !3047
  br i1 %163, label %164, label %181, !dbg !3048

164:                                              ; preds = %158
  %165 = load i32, ptr %11, align 4, !dbg !3049
  %166 = icmp ne i32 %165, 4, !dbg !3050
  br i1 %166, label %167, label %181, !dbg !3048

167:                                              ; preds = %164
  %168 = load ptr, ptr %6, align 8, !dbg !3051
  %169 = icmp ne ptr %168, null, !dbg !3051
  br i1 %169, label %170, label %173, !dbg !3051

170:                                              ; preds = %167
  %171 = load i32, ptr %11, align 4, !dbg !3051
  %172 = load ptr, ptr %6, align 8, !dbg !3051
  store i32 %171, ptr %172, align 4, !dbg !3051
  br label %173, !dbg !3051

173:                                              ; preds = %170, %167
  %174 = load ptr, ptr %12, align 8, !dbg !3055
  %175 = icmp ne ptr %174, null, !dbg !3055
  br i1 %175, label %176, label %180, !dbg !3055

176:                                              ; preds = %173
  %177 = load i32, ptr %11, align 4, !dbg !3055
  %178 = load ptr, ptr %12, align 8, !dbg !3055
  %179 = getelementptr inbounds nuw %struct.bzFile, ptr %178, i32 0, i32 5, !dbg !3055
  store i32 %177, ptr %179, align 8, !dbg !3055
  br label %180, !dbg !3055

180:                                              ; preds = %176, %173
  store i32 0, ptr %5, align 4, !dbg !3057
  br label %256, !dbg !3057

181:                                              ; preds = %164, %158
  %182 = load i32, ptr %11, align 4, !dbg !3058
  %183 = icmp eq i32 %182, 0, !dbg !3060
  br i1 %183, label %184, label %215, !dbg !3061

184:                                              ; preds = %181
  %185 = load ptr, ptr %12, align 8, !dbg !3062
  %186 = getelementptr inbounds nuw %struct.bzFile, ptr %185, i32 0, i32 0, !dbg !3063
  %187 = load ptr, ptr %186, align 8, !dbg !3063
  %188 = call zeroext i8 @myfeof_(ptr noundef %187), !dbg !3064
  %189 = zext i8 %188 to i32, !dbg !3064
  %190 = icmp ne i32 %189, 0, !dbg !3064
  br i1 %190, label %191, label %215, !dbg !3065

191:                                              ; preds = %184
  %192 = load ptr, ptr %12, align 8, !dbg !3066
  %193 = getelementptr inbounds nuw %struct.bzFile, ptr %192, i32 0, i32 4, !dbg !3067
  %194 = getelementptr inbounds nuw %struct.bz_stream, ptr %193, i32 0, i32 1, !dbg !3068
  %195 = load i32, ptr %194, align 8, !dbg !3068
  %196 = icmp eq i32 %195, 0, !dbg !3069
  br i1 %196, label %197, label %215, !dbg !3070

197:                                              ; preds = %191
  %198 = load ptr, ptr %12, align 8, !dbg !3071
  %199 = getelementptr inbounds nuw %struct.bzFile, ptr %198, i32 0, i32 4, !dbg !3072
  %200 = getelementptr inbounds nuw %struct.bz_stream, ptr %199, i32 0, i32 5, !dbg !3073
  %201 = load i32, ptr %200, align 8, !dbg !3073
  %202 = icmp ugt i32 %201, 0, !dbg !3074
  br i1 %202, label %203, label %215, !dbg !3070

203:                                              ; preds = %197
  %204 = load ptr, ptr %6, align 8, !dbg !3075
  %205 = icmp ne ptr %204, null, !dbg !3075
  br i1 %205, label %206, label %208, !dbg !3075

206:                                              ; preds = %203
  %207 = load ptr, ptr %6, align 8, !dbg !3075
  store i32 -7, ptr %207, align 4, !dbg !3075
  br label %208, !dbg !3075

208:                                              ; preds = %206, %203
  %209 = load ptr, ptr %12, align 8, !dbg !3079
  %210 = icmp ne ptr %209, null, !dbg !3079
  br i1 %210, label %211, label %214, !dbg !3079

211:                                              ; preds = %208
  %212 = load ptr, ptr %12, align 8, !dbg !3079
  %213 = getelementptr inbounds nuw %struct.bzFile, ptr %212, i32 0, i32 5, !dbg !3079
  store i32 -7, ptr %213, align 8, !dbg !3079
  br label %214, !dbg !3079

214:                                              ; preds = %211, %208
  store i32 0, ptr %5, align 4, !dbg !3081
  br label %256, !dbg !3081

215:                                              ; preds = %197, %191, %184, %181
  %216 = load i32, ptr %11, align 4, !dbg !3082
  %217 = icmp eq i32 %216, 4, !dbg !3084
  br i1 %217, label %218, label %236, !dbg !3084

218:                                              ; preds = %215
  %219 = load ptr, ptr %6, align 8, !dbg !3085
  %220 = icmp ne ptr %219, null, !dbg !3085
  br i1 %220, label %221, label %223, !dbg !3085

221:                                              ; preds = %218
  %222 = load ptr, ptr %6, align 8, !dbg !3085
  store i32 4, ptr %222, align 4, !dbg !3085
  br label %223, !dbg !3085

223:                                              ; preds = %221, %218
  %224 = load ptr, ptr %12, align 8, !dbg !3089
  %225 = icmp ne ptr %224, null, !dbg !3089
  br i1 %225, label %226, label %229, !dbg !3089

226:                                              ; preds = %223
  %227 = load ptr, ptr %12, align 8, !dbg !3089
  %228 = getelementptr inbounds nuw %struct.bzFile, ptr %227, i32 0, i32 5, !dbg !3089
  store i32 4, ptr %228, align 8, !dbg !3089
  br label %229, !dbg !3089

229:                                              ; preds = %226, %223
  %230 = load i32, ptr %9, align 4, !dbg !3091
  %231 = load ptr, ptr %12, align 8, !dbg !3092
  %232 = getelementptr inbounds nuw %struct.bzFile, ptr %231, i32 0, i32 4, !dbg !3093
  %233 = getelementptr inbounds nuw %struct.bz_stream, ptr %232, i32 0, i32 5, !dbg !3094
  %234 = load i32, ptr %233, align 8, !dbg !3094
  %235 = sub i32 %230, %234, !dbg !3095
  store i32 %235, ptr %5, align 4, !dbg !3096
  br label %256, !dbg !3096

236:                                              ; preds = %215
  %237 = load ptr, ptr %12, align 8, !dbg !3097
  %238 = getelementptr inbounds nuw %struct.bzFile, ptr %237, i32 0, i32 4, !dbg !3099
  %239 = getelementptr inbounds nuw %struct.bz_stream, ptr %238, i32 0, i32 5, !dbg !3100
  %240 = load i32, ptr %239, align 8, !dbg !3100
  %241 = icmp eq i32 %240, 0, !dbg !3101
  br i1 %241, label %242, label %255, !dbg !3101

242:                                              ; preds = %236
  %243 = load ptr, ptr %6, align 8, !dbg !3102
  %244 = icmp ne ptr %243, null, !dbg !3102
  br i1 %244, label %245, label %247, !dbg !3102

245:                                              ; preds = %242
  %246 = load ptr, ptr %6, align 8, !dbg !3102
  store i32 0, ptr %246, align 4, !dbg !3102
  br label %247, !dbg !3102

247:                                              ; preds = %245, %242
  %248 = load ptr, ptr %12, align 8, !dbg !3106
  %249 = icmp ne ptr %248, null, !dbg !3106
  br i1 %249, label %250, label %253, !dbg !3106

250:                                              ; preds = %247
  %251 = load ptr, ptr %12, align 8, !dbg !3106
  %252 = getelementptr inbounds nuw %struct.bzFile, ptr %251, i32 0, i32 5, !dbg !3106
  store i32 0, ptr %252, align 8, !dbg !3106
  br label %253, !dbg !3106

253:                                              ; preds = %250, %247
  %254 = load i32, ptr %9, align 4, !dbg !3108
  store i32 %254, ptr %5, align 4, !dbg !3109
  br label %256, !dbg !3109

255:                                              ; preds = %236
  br label %86, !dbg !2984, !llvm.loop !3110

256:                                              ; preds = %253, %229, %214, %180, %141, %103, %76, %61, %44
  %257 = load i32, ptr %5, align 4, !dbg !3112
  ret i32 %257, !dbg !3112
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myfeof_(ptr noundef %0) #0 !dbg !3113 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !3116, !DIExpression(), !3117)
    #dbg_declare(ptr %4, !3118, !DIExpression(), !3119)
  %5 = load ptr, ptr %3, align 8, !dbg !3120
  %6 = call i32 @fgetc(ptr noundef %5), !dbg !3121
  store i32 %6, ptr %4, align 4, !dbg !3119
  %7 = load i32, ptr %4, align 4, !dbg !3122
  %8 = icmp eq i32 %7, -1, !dbg !3124
  br i1 %8, label %9, label %10, !dbg !3124

9:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !3125
  br label %14, !dbg !3125

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4, !dbg !3126
  %12 = load ptr, ptr %3, align 8, !dbg !3127
  %13 = call i32 @ungetc(i32 noundef %11, ptr noundef %12), !dbg !3128
  store i8 0, ptr %2, align 1, !dbg !3129
  br label %14, !dbg !3129

14:                                               ; preds = %10, %9
  %15 = load i8, ptr %2, align 1, !dbg !3130
  ret i8 %15, !dbg !3130
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzReadGetUnused(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !3131 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !3135, !DIExpression(), !3136)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !3137, !DIExpression(), !3138)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !3139, !DIExpression(), !3140)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !3141, !DIExpression(), !3142)
    #dbg_declare(ptr %9, !3143, !DIExpression(), !3144)
  %10 = load ptr, ptr %6, align 8, !dbg !3145
  store ptr %10, ptr %9, align 8, !dbg !3144
  %11 = load ptr, ptr %9, align 8, !dbg !3146
  %12 = icmp eq ptr %11, null, !dbg !3148
  br i1 %12, label %13, label %25, !dbg !3148

13:                                               ; preds = %4
  %14 = load ptr, ptr %5, align 8, !dbg !3149
  %15 = icmp ne ptr %14, null, !dbg !3149
  br i1 %15, label %16, label %18, !dbg !3149

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 8, !dbg !3149
  store i32 -2, ptr %17, align 4, !dbg !3149
  br label %18, !dbg !3149

18:                                               ; preds = %16, %13
  %19 = load ptr, ptr %9, align 8, !dbg !3153
  %20 = icmp ne ptr %19, null, !dbg !3153
  br i1 %20, label %21, label %24, !dbg !3153

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8, !dbg !3153
  %23 = getelementptr inbounds nuw %struct.bzFile, ptr %22, i32 0, i32 5, !dbg !3153
  store i32 -2, ptr %23, align 8, !dbg !3153
  br label %24, !dbg !3153

24:                                               ; preds = %21, %18
  br label %82, !dbg !3155

25:                                               ; preds = %4
  %26 = load ptr, ptr %9, align 8, !dbg !3156
  %27 = getelementptr inbounds nuw %struct.bzFile, ptr %26, i32 0, i32 5, !dbg !3158
  %28 = load i32, ptr %27, align 8, !dbg !3158
  %29 = icmp ne i32 %28, 4, !dbg !3159
  br i1 %29, label %30, label %42, !dbg !3159

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8, !dbg !3160
  %32 = icmp ne ptr %31, null, !dbg !3160
  br i1 %32, label %33, label %35, !dbg !3160

33:                                               ; preds = %30
  %34 = load ptr, ptr %5, align 8, !dbg !3160
  store i32 -1, ptr %34, align 4, !dbg !3160
  br label %35, !dbg !3160

35:                                               ; preds = %33, %30
  %36 = load ptr, ptr %9, align 8, !dbg !3164
  %37 = icmp ne ptr %36, null, !dbg !3164
  br i1 %37, label %38, label %41, !dbg !3164

38:                                               ; preds = %35
  %39 = load ptr, ptr %9, align 8, !dbg !3164
  %40 = getelementptr inbounds nuw %struct.bzFile, ptr %39, i32 0, i32 5, !dbg !3164
  store i32 -1, ptr %40, align 8, !dbg !3164
  br label %41, !dbg !3164

41:                                               ; preds = %38, %35
  br label %82, !dbg !3166

42:                                               ; preds = %25
  %43 = load ptr, ptr %7, align 8, !dbg !3167
  %44 = icmp eq ptr %43, null, !dbg !3169
  br i1 %44, label %48, label %45, !dbg !3170

45:                                               ; preds = %42
  %46 = load ptr, ptr %8, align 8, !dbg !3171
  %47 = icmp eq ptr %46, null, !dbg !3172
  br i1 %47, label %48, label %60, !dbg !3170

48:                                               ; preds = %45, %42
  %49 = load ptr, ptr %5, align 8, !dbg !3173
  %50 = icmp ne ptr %49, null, !dbg !3173
  br i1 %50, label %51, label %53, !dbg !3173

51:                                               ; preds = %48
  %52 = load ptr, ptr %5, align 8, !dbg !3173
  store i32 -2, ptr %52, align 4, !dbg !3173
  br label %53, !dbg !3173

53:                                               ; preds = %51, %48
  %54 = load ptr, ptr %9, align 8, !dbg !3177
  %55 = icmp ne ptr %54, null, !dbg !3177
  br i1 %55, label %56, label %59, !dbg !3177

56:                                               ; preds = %53
  %57 = load ptr, ptr %9, align 8, !dbg !3177
  %58 = getelementptr inbounds nuw %struct.bzFile, ptr %57, i32 0, i32 5, !dbg !3177
  store i32 -2, ptr %58, align 8, !dbg !3177
  br label %59, !dbg !3177

59:                                               ; preds = %56, %53
  br label %82, !dbg !3179

60:                                               ; preds = %45
  %61 = load ptr, ptr %5, align 8, !dbg !3180
  %62 = icmp ne ptr %61, null, !dbg !3180
  br i1 %62, label %63, label %65, !dbg !3180

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8, !dbg !3180
  store i32 0, ptr %64, align 4, !dbg !3180
  br label %65, !dbg !3180

65:                                               ; preds = %63, %60
  %66 = load ptr, ptr %9, align 8, !dbg !3183
  %67 = icmp ne ptr %66, null, !dbg !3183
  br i1 %67, label %68, label %71, !dbg !3183

68:                                               ; preds = %65
  %69 = load ptr, ptr %9, align 8, !dbg !3183
  %70 = getelementptr inbounds nuw %struct.bzFile, ptr %69, i32 0, i32 5, !dbg !3183
  store i32 0, ptr %70, align 8, !dbg !3183
  br label %71, !dbg !3183

71:                                               ; preds = %68, %65
  %72 = load ptr, ptr %9, align 8, !dbg !3185
  %73 = getelementptr inbounds nuw %struct.bzFile, ptr %72, i32 0, i32 4, !dbg !3186
  %74 = getelementptr inbounds nuw %struct.bz_stream, ptr %73, i32 0, i32 1, !dbg !3187
  %75 = load i32, ptr %74, align 8, !dbg !3187
  %76 = load ptr, ptr %8, align 8, !dbg !3188
  store i32 %75, ptr %76, align 4, !dbg !3189
  %77 = load ptr, ptr %9, align 8, !dbg !3190
  %78 = getelementptr inbounds nuw %struct.bzFile, ptr %77, i32 0, i32 4, !dbg !3191
  %79 = getelementptr inbounds nuw %struct.bz_stream, ptr %78, i32 0, i32 0, !dbg !3192
  %80 = load ptr, ptr %79, align 8, !dbg !3192
  %81 = load ptr, ptr %7, align 8, !dbg !3193
  store ptr %80, ptr %81, align 8, !dbg !3194
  br label %82, !dbg !3195

82:                                               ; preds = %71, %59, %41, %24
  ret void, !dbg !3195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzBuffToBuffCompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !dbg !3196 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bz_stream, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
    #dbg_declare(ptr %9, !3199, !DIExpression(), !3200)
  store ptr %1, ptr %10, align 8
    #dbg_declare(ptr %10, !3201, !DIExpression(), !3202)
  store ptr %2, ptr %11, align 8
    #dbg_declare(ptr %11, !3203, !DIExpression(), !3204)
  store i32 %3, ptr %12, align 4
    #dbg_declare(ptr %12, !3205, !DIExpression(), !3206)
  store i32 %4, ptr %13, align 4
    #dbg_declare(ptr %13, !3207, !DIExpression(), !3208)
  store i32 %5, ptr %14, align 4
    #dbg_declare(ptr %14, !3209, !DIExpression(), !3210)
  store i32 %6, ptr %15, align 4
    #dbg_declare(ptr %15, !3211, !DIExpression(), !3212)
    #dbg_declare(ptr %16, !3213, !DIExpression(), !3214)
    #dbg_declare(ptr %17, !3215, !DIExpression(), !3216)
  %18 = load ptr, ptr %9, align 8, !dbg !3217
  %19 = icmp eq ptr %18, null, !dbg !3219
  br i1 %19, label %44, label %20, !dbg !3220

20:                                               ; preds = %7
  %21 = load ptr, ptr %10, align 8, !dbg !3221
  %22 = icmp eq ptr %21, null, !dbg !3222
  br i1 %22, label %44, label %23, !dbg !3223

23:                                               ; preds = %20
  %24 = load ptr, ptr %11, align 8, !dbg !3224
  %25 = icmp eq ptr %24, null, !dbg !3225
  br i1 %25, label %44, label %26, !dbg !3226

26:                                               ; preds = %23
  %27 = load i32, ptr %13, align 4, !dbg !3227
  %28 = icmp slt i32 %27, 1, !dbg !3228
  br i1 %28, label %44, label %29, !dbg !3229

29:                                               ; preds = %26
  %30 = load i32, ptr %13, align 4, !dbg !3230
  %31 = icmp sgt i32 %30, 9, !dbg !3231
  br i1 %31, label %44, label %32, !dbg !3232

32:                                               ; preds = %29
  %33 = load i32, ptr %14, align 4, !dbg !3233
  %34 = icmp slt i32 %33, 0, !dbg !3234
  br i1 %34, label %44, label %35, !dbg !3235

35:                                               ; preds = %32
  %36 = load i32, ptr %14, align 4, !dbg !3236
  %37 = icmp sgt i32 %36, 4, !dbg !3237
  br i1 %37, label %44, label %38, !dbg !3238

38:                                               ; preds = %35
  %39 = load i32, ptr %15, align 4, !dbg !3239
  %40 = icmp slt i32 %39, 0, !dbg !3240
  br i1 %40, label %44, label %41, !dbg !3241

41:                                               ; preds = %38
  %42 = load i32, ptr %15, align 4, !dbg !3242
  %43 = icmp sgt i32 %42, 250, !dbg !3243
  br i1 %43, label %44, label %45, !dbg !3241

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %20, %7
  store i32 -2, ptr %8, align 4, !dbg !3244
  br label %91, !dbg !3244

45:                                               ; preds = %41
  %46 = load i32, ptr %15, align 4, !dbg !3245
  %47 = icmp eq i32 %46, 0, !dbg !3247
  br i1 %47, label %48, label %49, !dbg !3247

48:                                               ; preds = %45
  store i32 30, ptr %15, align 4, !dbg !3248
  br label %49, !dbg !3249

49:                                               ; preds = %48, %45
  %50 = getelementptr inbounds nuw %struct.bz_stream, ptr %16, i32 0, i32 9, !dbg !3250
  store ptr null, ptr %50, align 8, !dbg !3251
  %51 = getelementptr inbounds nuw %struct.bz_stream, ptr %16, i32 0, i32 10, !dbg !3252
  store ptr null, ptr %51, align 8, !dbg !3253
  %52 = getelementptr inbounds nuw %struct.bz_stream, ptr %16, i32 0, i32 11, !dbg !3254
  store ptr null, ptr %52, align 8, !dbg !3255
  %53 = load i32, ptr %13, align 4, !dbg !3256
  %54 = load i32, ptr %14, align 4, !dbg !3257
  %55 = load i32, ptr %15, align 4, !dbg !3258
  %56 = call i32 @BZ2_bzCompressInit(ptr noundef %16, i32 noundef %53, i32 noundef %54, i32 noundef %55), !dbg !3259
  store i32 %56, ptr %17, align 4, !dbg !3260
  %57 = load i32, ptr %17, align 4, !dbg !3261
  %58 = icmp ne i32 %57, 0, !dbg !3263
  br i1 %58, label %59, label %61, !dbg !3263

59:                                               ; preds = %49
  %60 = load i32, ptr %17, align 4, !dbg !3264
  store i32 %60, ptr %8, align 4, !dbg !3265
  br label %91, !dbg !3265

61:                                               ; preds = %49
  %62 = load ptr, ptr %11, align 8, !dbg !3266
  %63 = getelementptr inbounds nuw %struct.bz_stream, ptr %16, i32 0, i32 0, !dbg !3267
  store ptr %62, ptr %63, align 8, !dbg !3268
  %64 = load ptr, ptr %9, align 8, !dbg !3269
  %65 = getelementptr inbounds nuw %struct.bz_stream, ptr %16, i32 0, i32 4, !dbg !3270
  store ptr %64, ptr %65, align 8, !dbg !3271
  %66 = load i32, ptr %12, align 4, !dbg !3272
  %67 = getelementptr inbounds nuw %struct.bz_stream, ptr %16, i32 0, i32 1, !dbg !3273
  store i32 %66, ptr %67, align 8, !dbg !3274
  %68 = load ptr, ptr %10, align 8, !dbg !3275
  %69 = load i32, ptr %68, align 4, !dbg !3276
  %70 = getelementptr inbounds nuw %struct.bz_stream, ptr %16, i32 0, i32 5, !dbg !3277
  store i32 %69, ptr %70, align 8, !dbg !3278
  %71 = call i32 @BZ2_bzCompress(ptr noundef %16, i32 noundef 2), !dbg !3279
  store i32 %71, ptr %17, align 4, !dbg !3280
  %72 = load i32, ptr %17, align 4, !dbg !3281
  %73 = icmp eq i32 %72, 3, !dbg !3283
  br i1 %73, label %74, label %75, !dbg !3283

74:                                               ; preds = %61
  br label %86, !dbg !3284

75:                                               ; preds = %61
  %76 = load i32, ptr %17, align 4, !dbg !3285
  %77 = icmp ne i32 %76, 4, !dbg !3287
  br i1 %77, label %78, label %79, !dbg !3287

78:                                               ; preds = %75
  br label %88, !dbg !3288

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw %struct.bz_stream, ptr %16, i32 0, i32 5, !dbg !3289
  %81 = load i32, ptr %80, align 8, !dbg !3289
  %82 = load ptr, ptr %10, align 8, !dbg !3290
  %83 = load i32, ptr %82, align 4, !dbg !3291
  %84 = sub i32 %83, %81, !dbg !3291
  store i32 %84, ptr %82, align 4, !dbg !3291
  %85 = call i32 @BZ2_bzCompressEnd(ptr noundef %16), !dbg !3292
  store i32 0, ptr %8, align 4, !dbg !3293
  br label %91, !dbg !3293

86:                                               ; preds = %74
    #dbg_label(!3294, !3295)
  %87 = call i32 @BZ2_bzCompressEnd(ptr noundef %16), !dbg !3296
  store i32 -8, ptr %8, align 4, !dbg !3297
  br label %91, !dbg !3297

88:                                               ; preds = %78
    #dbg_label(!3298, !3299)
  %89 = call i32 @BZ2_bzCompressEnd(ptr noundef %16), !dbg !3300
  %90 = load i32, ptr %17, align 4, !dbg !3301
  store i32 %90, ptr %8, align 4, !dbg !3302
  br label %91, !dbg !3302

91:                                               ; preds = %88, %86, %79, %59, %44
  %92 = load i32, ptr %8, align 4, !dbg !3303
  ret i32 %92, !dbg !3303
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzBuffToBuffDecompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !3304 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bz_stream, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !3307, !DIExpression(), !3308)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !3309, !DIExpression(), !3310)
  store ptr %2, ptr %10, align 8
    #dbg_declare(ptr %10, !3311, !DIExpression(), !3312)
  store i32 %3, ptr %11, align 4
    #dbg_declare(ptr %11, !3313, !DIExpression(), !3314)
  store i32 %4, ptr %12, align 4
    #dbg_declare(ptr %12, !3315, !DIExpression(), !3316)
  store i32 %5, ptr %13, align 4
    #dbg_declare(ptr %13, !3317, !DIExpression(), !3318)
    #dbg_declare(ptr %14, !3319, !DIExpression(), !3320)
    #dbg_declare(ptr %15, !3321, !DIExpression(), !3322)
  %16 = load ptr, ptr %8, align 8, !dbg !3323
  %17 = icmp eq ptr %16, null, !dbg !3325
  br i1 %17, label %36, label %18, !dbg !3326

18:                                               ; preds = %6
  %19 = load ptr, ptr %9, align 8, !dbg !3327
  %20 = icmp eq ptr %19, null, !dbg !3328
  br i1 %20, label %36, label %21, !dbg !3329

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8, !dbg !3330
  %23 = icmp eq ptr %22, null, !dbg !3331
  br i1 %23, label %36, label %24, !dbg !3332

24:                                               ; preds = %21
  %25 = load i32, ptr %12, align 4, !dbg !3333
  %26 = icmp ne i32 %25, 0, !dbg !3334
  br i1 %26, label %27, label %30, !dbg !3335

27:                                               ; preds = %24
  %28 = load i32, ptr %12, align 4, !dbg !3336
  %29 = icmp ne i32 %28, 1, !dbg !3337
  br i1 %29, label %36, label %30, !dbg !3338

30:                                               ; preds = %27, %24
  %31 = load i32, ptr %13, align 4, !dbg !3339
  %32 = icmp slt i32 %31, 0, !dbg !3340
  br i1 %32, label %36, label %33, !dbg !3341

33:                                               ; preds = %30
  %34 = load i32, ptr %13, align 4, !dbg !3342
  %35 = icmp sgt i32 %34, 4, !dbg !3343
  br i1 %35, label %36, label %37, !dbg !3341

36:                                               ; preds = %33, %30, %27, %21, %18, %6
  store i32 -2, ptr %7, align 4, !dbg !3344
  br label %84, !dbg !3344

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 9, !dbg !3345
  store ptr null, ptr %38, align 8, !dbg !3346
  %39 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 10, !dbg !3347
  store ptr null, ptr %39, align 8, !dbg !3348
  %40 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 11, !dbg !3349
  store ptr null, ptr %40, align 8, !dbg !3350
  %41 = load i32, ptr %13, align 4, !dbg !3351
  %42 = load i32, ptr %12, align 4, !dbg !3352
  %43 = call i32 @BZ2_bzDecompressInit(ptr noundef %14, i32 noundef %41, i32 noundef %42), !dbg !3353
  store i32 %43, ptr %15, align 4, !dbg !3354
  %44 = load i32, ptr %15, align 4, !dbg !3355
  %45 = icmp ne i32 %44, 0, !dbg !3357
  br i1 %45, label %46, label %48, !dbg !3357

46:                                               ; preds = %37
  %47 = load i32, ptr %15, align 4, !dbg !3358
  store i32 %47, ptr %7, align 4, !dbg !3359
  br label %84, !dbg !3359

48:                                               ; preds = %37
  %49 = load ptr, ptr %10, align 8, !dbg !3360
  %50 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 0, !dbg !3361
  store ptr %49, ptr %50, align 8, !dbg !3362
  %51 = load ptr, ptr %8, align 8, !dbg !3363
  %52 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 4, !dbg !3364
  store ptr %51, ptr %52, align 8, !dbg !3365
  %53 = load i32, ptr %11, align 4, !dbg !3366
  %54 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 1, !dbg !3367
  store i32 %53, ptr %54, align 8, !dbg !3368
  %55 = load ptr, ptr %9, align 8, !dbg !3369
  %56 = load i32, ptr %55, align 4, !dbg !3370
  %57 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 5, !dbg !3371
  store i32 %56, ptr %57, align 8, !dbg !3372
  %58 = call i32 @BZ2_bzDecompress(ptr noundef %14), !dbg !3373
  store i32 %58, ptr %15, align 4, !dbg !3374
  %59 = load i32, ptr %15, align 4, !dbg !3375
  %60 = icmp eq i32 %59, 0, !dbg !3377
  br i1 %60, label %61, label %62, !dbg !3377

61:                                               ; preds = %48
  br label %73, !dbg !3378

62:                                               ; preds = %48
  %63 = load i32, ptr %15, align 4, !dbg !3379
  %64 = icmp ne i32 %63, 4, !dbg !3381
  br i1 %64, label %65, label %66, !dbg !3381

65:                                               ; preds = %62
  br label %81, !dbg !3382

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 5, !dbg !3383
  %68 = load i32, ptr %67, align 8, !dbg !3383
  %69 = load ptr, ptr %9, align 8, !dbg !3384
  %70 = load i32, ptr %69, align 4, !dbg !3385
  %71 = sub i32 %70, %68, !dbg !3385
  store i32 %71, ptr %69, align 4, !dbg !3385
  %72 = call i32 @BZ2_bzDecompressEnd(ptr noundef %14), !dbg !3386
  store i32 0, ptr %7, align 4, !dbg !3387
  br label %84, !dbg !3387

73:                                               ; preds = %61
    #dbg_label(!3388, !3389)
  %74 = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 5, !dbg !3390
  %75 = load i32, ptr %74, align 8, !dbg !3390
  %76 = icmp ugt i32 %75, 0, !dbg !3392
  br i1 %76, label %77, label %79, !dbg !3392

77:                                               ; preds = %73
  %78 = call i32 @BZ2_bzDecompressEnd(ptr noundef %14), !dbg !3393
  store i32 -7, ptr %7, align 4, !dbg !3395
  br label %84, !dbg !3395

79:                                               ; preds = %73
  %80 = call i32 @BZ2_bzDecompressEnd(ptr noundef %14), !dbg !3396
  store i32 -8, ptr %7, align 4, !dbg !3398
  br label %84, !dbg !3398

81:                                               ; preds = %65
    #dbg_label(!3399, !3400)
  %82 = call i32 @BZ2_bzDecompressEnd(ptr noundef %14), !dbg !3401
  %83 = load i32, ptr %15, align 4, !dbg !3402
  store i32 %83, ptr %7, align 4, !dbg !3403
  br label %84, !dbg !3403

84:                                               ; preds = %81, %79, %77, %66, %46, %36
  %85 = load i32, ptr %7, align 4, !dbg !3404
  ret i32 %85, !dbg !3404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzopen(ptr noundef %0, ptr noundef %1) #0 !dbg !3405 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !3408, !DIExpression(), !3409)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !3410, !DIExpression(), !3411)
  %5 = load ptr, ptr %3, align 8, !dbg !3412
  %6 = load ptr, ptr %4, align 8, !dbg !3413
  %7 = call ptr @bzopen_or_bzdopen(ptr noundef %5, i32 noundef -1, ptr noundef %6, i32 noundef 0), !dbg !3414
  ret ptr %7, !dbg !3415
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @bzopen_or_bzdopen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !3416 {
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
    #dbg_declare(ptr %6, !3419, !DIExpression(), !3420)
  store i32 %1, ptr %7, align 4
    #dbg_declare(ptr %7, !3421, !DIExpression(), !3422)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !3423, !DIExpression(), !3424)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !3425, !DIExpression(), !3426)
    #dbg_declare(ptr %10, !3427, !DIExpression(), !3428)
    #dbg_declare(ptr %11, !3429, !DIExpression(), !3431)
    #dbg_declare(ptr %12, !3432, !DIExpression(), !3433)
  store i32 9, ptr %12, align 4, !dbg !3433
    #dbg_declare(ptr %13, !3434, !DIExpression(), !3435)
  store i32 0, ptr %13, align 4, !dbg !3435
    #dbg_declare(ptr %14, !3436, !DIExpression(), !3437)
  call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 10, i1 false), !dbg !3437
    #dbg_declare(ptr %15, !3438, !DIExpression(), !3439)
  store ptr null, ptr %15, align 8, !dbg !3439
    #dbg_declare(ptr %16, !3440, !DIExpression(), !3441)
  store ptr null, ptr %16, align 8, !dbg !3441
    #dbg_declare(ptr %17, !3442, !DIExpression(), !3443)
  store i32 0, ptr %17, align 4, !dbg !3443
    #dbg_declare(ptr %18, !3444, !DIExpression(), !3445)
  store i32 30, ptr %18, align 4, !dbg !3445
    #dbg_declare(ptr %19, !3446, !DIExpression(), !3447)
  store i32 0, ptr %19, align 4, !dbg !3447
    #dbg_declare(ptr %20, !3448, !DIExpression(), !3449)
  store i32 0, ptr %20, align 4, !dbg !3449
  %21 = load ptr, ptr %8, align 8, !dbg !3450
  %22 = icmp eq ptr %21, null, !dbg !3452
  br i1 %22, label %23, label %24, !dbg !3452

23:                                               ; preds = %4
  store ptr null, ptr %5, align 8, !dbg !3453
  br label %138, !dbg !3453

24:                                               ; preds = %4
  br label %25, !dbg !3454

25:                                               ; preds = %54, %24
  %26 = load ptr, ptr %8, align 8, !dbg !3455
  %27 = load i8, ptr %26, align 1, !dbg !3456
  %28 = icmp ne i8 %27, 0, !dbg !3454
  br i1 %28, label %29, label %57, !dbg !3454

29:                                               ; preds = %25
  %30 = load ptr, ptr %8, align 8, !dbg !3457
  %31 = load i8, ptr %30, align 1, !dbg !3459
  %32 = sext i8 %31 to i32, !dbg !3459
  switch i32 %32, label %36 [
    i32 114, label %33
    i32 119, label %34
    i32 115, label %35
  ], !dbg !3460

33:                                               ; preds = %29
  store i32 0, ptr %13, align 4, !dbg !3461
  br label %54, !dbg !3463

34:                                               ; preds = %29
  store i32 1, ptr %13, align 4, !dbg !3464
  br label %54, !dbg !3465

35:                                               ; preds = %29
  store i32 1, ptr %19, align 4, !dbg !3466
  br label %54, !dbg !3467

36:                                               ; preds = %29
  %37 = call ptr @__ctype_b_loc() #11, !dbg !3468
  %38 = load ptr, ptr %37, align 8, !dbg !3468
  %39 = load ptr, ptr %8, align 8, !dbg !3468
  %40 = load i8, ptr %39, align 1, !dbg !3468
  %41 = sext i8 %40 to i32, !dbg !3468
  %42 = sext i32 %41 to i64, !dbg !3468
  %43 = getelementptr inbounds i16, ptr %38, i64 %42, !dbg !3468
  %44 = load i16, ptr %43, align 2, !dbg !3468
  %45 = zext i16 %44 to i32, !dbg !3468
  %46 = and i32 %45, 2048, !dbg !3468
  %47 = icmp ne i32 %46, 0, !dbg !3468
  br i1 %47, label %48, label %53, !dbg !3468

48:                                               ; preds = %36
  %49 = load ptr, ptr %8, align 8, !dbg !3470
  %50 = load i8, ptr %49, align 1, !dbg !3472
  %51 = sext i8 %50 to i32, !dbg !3472
  %52 = sub nsw i32 %51, 48, !dbg !3473
  store i32 %52, ptr %12, align 4, !dbg !3474
  br label %53, !dbg !3475

53:                                               ; preds = %48, %36
  br label %54, !dbg !3476

54:                                               ; preds = %53, %35, %34, %33
  %55 = load ptr, ptr %8, align 8, !dbg !3477
  %56 = getelementptr inbounds nuw i8, ptr %55, i32 1, !dbg !3477
  store ptr %56, ptr %8, align 8, !dbg !3477
  br label %25, !dbg !3454, !llvm.loop !3478

57:                                               ; preds = %25
  %58 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0, !dbg !3480
  %59 = load i32, ptr %13, align 4, !dbg !3481
  %60 = icmp ne i32 %59, 0, !dbg !3481
  %61 = zext i1 %60 to i64, !dbg !3481
  %62 = select i1 %60, ptr @.str.6, ptr @.str.7, !dbg !3481
  %63 = call ptr @strcat(ptr noundef %58, ptr noundef %62) #8, !dbg !3482
  %64 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0, !dbg !3483
  %65 = call ptr @strcat(ptr noundef %64, ptr noundef @.str.8) #8, !dbg !3484
  %66 = load i32, ptr %9, align 4, !dbg !3485
  %67 = icmp eq i32 %66, 0, !dbg !3487
  br i1 %67, label %68, label %89, !dbg !3487

68:                                               ; preds = %57
  %69 = load ptr, ptr %6, align 8, !dbg !3488
  %70 = icmp eq ptr %69, null, !dbg !3491
  br i1 %70, label %75, label %71, !dbg !3492

71:                                               ; preds = %68
  %72 = load ptr, ptr %6, align 8, !dbg !3493
  %73 = call i32 @strcmp(ptr noundef %72, ptr noundef @.str.9) #12, !dbg !3494
  %74 = icmp eq i32 %73, 0, !dbg !3495
  br i1 %74, label %75, label %84, !dbg !3492

75:                                               ; preds = %71, %68
  %76 = load i32, ptr %13, align 4, !dbg !3496
  %77 = icmp ne i32 %76, 0, !dbg !3496
  br i1 %77, label %78, label %80, !dbg !3496

78:                                               ; preds = %75
  %79 = load ptr, ptr @stdout, align 8, !dbg !3498
  br label %82, !dbg !3496

80:                                               ; preds = %75
  %81 = load ptr, ptr @stdin, align 8, !dbg !3499
  br label %82, !dbg !3496

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %79, %78 ], [ %81, %80 ], !dbg !3496
  store ptr %83, ptr %15, align 8, !dbg !3500
  br label %88, !dbg !3501

84:                                               ; preds = %71
  %85 = load ptr, ptr %6, align 8, !dbg !3502
  %86 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0, !dbg !3504
  %87 = call noalias ptr @fopen(ptr noundef %85, ptr noundef %86), !dbg !3505
  store ptr %87, ptr %15, align 8, !dbg !3506
  br label %88

88:                                               ; preds = %84, %82
  br label %93, !dbg !3507

89:                                               ; preds = %57
  %90 = load i32, ptr %7, align 4, !dbg !3508
  %91 = getelementptr inbounds [10 x i8], ptr %14, i64 0, i64 0, !dbg !3510
  %92 = call noalias ptr @fdopen(i32 noundef %90, ptr noundef %91) #8, !dbg !3511
  store ptr %92, ptr %15, align 8, !dbg !3512
  br label %93

93:                                               ; preds = %89, %88
  %94 = load ptr, ptr %15, align 8, !dbg !3513
  %95 = icmp eq ptr %94, null, !dbg !3515
  br i1 %95, label %96, label %97, !dbg !3515

96:                                               ; preds = %93
  store ptr null, ptr %5, align 8, !dbg !3516
  br label %138, !dbg !3516

97:                                               ; preds = %93
  %98 = load i32, ptr %13, align 4, !dbg !3517
  %99 = icmp ne i32 %98, 0, !dbg !3517
  br i1 %99, label %100, label %114, !dbg !3517

100:                                              ; preds = %97
  %101 = load i32, ptr %12, align 4, !dbg !3519
  %102 = icmp slt i32 %101, 1, !dbg !3522
  br i1 %102, label %103, label %104, !dbg !3522

103:                                              ; preds = %100
  store i32 1, ptr %12, align 4, !dbg !3523
  br label %104, !dbg !3524

104:                                              ; preds = %103, %100
  %105 = load i32, ptr %12, align 4, !dbg !3525
  %106 = icmp sgt i32 %105, 9, !dbg !3527
  br i1 %106, label %107, label %108, !dbg !3527

107:                                              ; preds = %104
  store i32 9, ptr %12, align 4, !dbg !3528
  br label %108, !dbg !3529

108:                                              ; preds = %107, %104
  %109 = load ptr, ptr %15, align 8, !dbg !3530
  %110 = load i32, ptr %12, align 4, !dbg !3531
  %111 = load i32, ptr %17, align 4, !dbg !3532
  %112 = load i32, ptr %18, align 4, !dbg !3533
  %113 = call ptr @BZ2_bzWriteOpen(ptr noundef %10, ptr noundef %109, i32 noundef %110, i32 noundef %111, i32 noundef %112), !dbg !3534
  store ptr %113, ptr %16, align 8, !dbg !3535
  br label %121, !dbg !3536

114:                                              ; preds = %97
  %115 = load ptr, ptr %15, align 8, !dbg !3537
  %116 = load i32, ptr %17, align 4, !dbg !3539
  %117 = load i32, ptr %19, align 4, !dbg !3540
  %118 = getelementptr inbounds [5000 x i8], ptr %11, i64 0, i64 0, !dbg !3541
  %119 = load i32, ptr %20, align 4, !dbg !3542
  %120 = call ptr @BZ2_bzReadOpen(ptr noundef %10, ptr noundef %115, i32 noundef %116, i32 noundef %117, ptr noundef %118, i32 noundef %119), !dbg !3543
  store ptr %120, ptr %16, align 8, !dbg !3544
  br label %121

121:                                              ; preds = %114, %108
  %122 = load ptr, ptr %16, align 8, !dbg !3545
  %123 = icmp eq ptr %122, null, !dbg !3547
  br i1 %123, label %124, label %136, !dbg !3547

124:                                              ; preds = %121
  %125 = load ptr, ptr %15, align 8, !dbg !3548
  %126 = load ptr, ptr @stdin, align 8, !dbg !3551
  %127 = icmp ne ptr %125, %126, !dbg !3552
  br i1 %127, label %128, label %135, !dbg !3553

128:                                              ; preds = %124
  %129 = load ptr, ptr %15, align 8, !dbg !3554
  %130 = load ptr, ptr @stdout, align 8, !dbg !3555
  %131 = icmp ne ptr %129, %130, !dbg !3556
  br i1 %131, label %132, label %135, !dbg !3553

132:                                              ; preds = %128
  %133 = load ptr, ptr %15, align 8, !dbg !3557
  %134 = call i32 @fclose(ptr noundef %133), !dbg !3558
  br label %135, !dbg !3558

135:                                              ; preds = %132, %128, %124
  store ptr null, ptr %5, align 8, !dbg !3559
  br label %138, !dbg !3559

136:                                              ; preds = %121
  %137 = load ptr, ptr %16, align 8, !dbg !3560
  store ptr %137, ptr %5, align 8, !dbg !3561
  br label %138, !dbg !3561

138:                                              ; preds = %136, %135, %96, %23
  %139 = load ptr, ptr %5, align 8, !dbg !3562
  ret ptr %139, !dbg !3562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzdopen(i32 noundef %0, ptr noundef %1) #0 !dbg !3563 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
    #dbg_declare(ptr %3, !3566, !DIExpression(), !3567)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !3568, !DIExpression(), !3569)
  %5 = load i32, ptr %3, align 4, !dbg !3570
  %6 = load ptr, ptr %4, align 8, !dbg !3571
  %7 = call ptr @bzopen_or_bzdopen(ptr noundef null, i32 noundef %5, ptr noundef %6, i32 noundef 1), !dbg !3572
  ret ptr %7, !dbg !3573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzread(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !3574 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !3577, !DIExpression(), !3578)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !3579, !DIExpression(), !3580)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !3581, !DIExpression(), !3582)
    #dbg_declare(ptr %8, !3583, !DIExpression(), !3584)
    #dbg_declare(ptr %9, !3585, !DIExpression(), !3586)
  %10 = load ptr, ptr %5, align 8, !dbg !3587
  %11 = getelementptr inbounds nuw %struct.bzFile, ptr %10, i32 0, i32 5, !dbg !3589
  %12 = load i32, ptr %11, align 8, !dbg !3589
  %13 = icmp eq i32 %12, 4, !dbg !3590
  br i1 %13, label %14, label %15, !dbg !3590

14:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !3591
  br label %28, !dbg !3591

15:                                               ; preds = %3
  %16 = load ptr, ptr %5, align 8, !dbg !3592
  %17 = load ptr, ptr %6, align 8, !dbg !3593
  %18 = load i32, ptr %7, align 4, !dbg !3594
  %19 = call i32 @BZ2_bzRead(ptr noundef %8, ptr noundef %16, ptr noundef %17, i32 noundef %18), !dbg !3595
  store i32 %19, ptr %9, align 4, !dbg !3596
  %20 = load i32, ptr %8, align 4, !dbg !3597
  %21 = icmp eq i32 %20, 0, !dbg !3599
  br i1 %21, label %25, label %22, !dbg !3600

22:                                               ; preds = %15
  %23 = load i32, ptr %8, align 4, !dbg !3601
  %24 = icmp eq i32 %23, 4, !dbg !3602
  br i1 %24, label %25, label %27, !dbg !3600

25:                                               ; preds = %22, %15
  %26 = load i32, ptr %9, align 4, !dbg !3603
  store i32 %26, ptr %4, align 4, !dbg !3605
  br label %28, !dbg !3605

27:                                               ; preds = %22
  store i32 -1, ptr %4, align 4, !dbg !3606
  br label %28, !dbg !3606

28:                                               ; preds = %27, %25, %14
  %29 = load i32, ptr %4, align 4, !dbg !3608
  ret i32 %29, !dbg !3608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !3609 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !3610, !DIExpression(), !3611)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !3612, !DIExpression(), !3613)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !3614, !DIExpression(), !3615)
    #dbg_declare(ptr %8, !3616, !DIExpression(), !3617)
  %9 = load ptr, ptr %5, align 8, !dbg !3618
  %10 = load ptr, ptr %6, align 8, !dbg !3619
  %11 = load i32, ptr %7, align 4, !dbg !3620
  call void @BZ2_bzWrite(ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11), !dbg !3621
  %12 = load i32, ptr %8, align 4, !dbg !3622
  %13 = icmp eq i32 %12, 0, !dbg !3624
  br i1 %13, label %14, label %16, !dbg !3624

14:                                               ; preds = %3
  %15 = load i32, ptr %7, align 4, !dbg !3625
  store i32 %15, ptr %4, align 4, !dbg !3627
  br label %17, !dbg !3627

16:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !3628
  br label %17, !dbg !3628

17:                                               ; preds = %16, %14
  %18 = load i32, ptr %4, align 4, !dbg !3630
  ret i32 %18, !dbg !3630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzflush(ptr noundef %0) #0 !dbg !3631 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !3634, !DIExpression(), !3635)
  ret i32 0, !dbg !3636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzclose(ptr noundef %0) #0 !dbg !3637 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !3640, !DIExpression(), !3641)
    #dbg_declare(ptr %3, !3642, !DIExpression(), !3643)
    #dbg_declare(ptr %4, !3644, !DIExpression(), !3645)
  %5 = load ptr, ptr %2, align 8, !dbg !3646
  %6 = getelementptr inbounds nuw %struct.bzFile, ptr %5, i32 0, i32 0, !dbg !3647
  %7 = load ptr, ptr %6, align 8, !dbg !3647
  store ptr %7, ptr %4, align 8, !dbg !3645
  %8 = load ptr, ptr %2, align 8, !dbg !3648
  %9 = icmp eq ptr %8, null, !dbg !3650
  br i1 %9, label %10, label %11, !dbg !3650

10:                                               ; preds = %1
  br label %36, !dbg !3651

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !dbg !3653
  %13 = getelementptr inbounds nuw %struct.bzFile, ptr %12, i32 0, i32 3, !dbg !3655
  %14 = load i8, ptr %13, align 4, !dbg !3655
  %15 = icmp ne i8 %14, 0, !dbg !3656
  br i1 %15, label %16, label %23, !dbg !3656

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !dbg !3657
  call void @BZ2_bzWriteClose(ptr noundef %3, ptr noundef %17, i32 noundef 0, ptr noundef null, ptr noundef null), !dbg !3659
  %18 = load i32, ptr %3, align 4, !dbg !3660
  %19 = icmp ne i32 %18, 0, !dbg !3662
  br i1 %19, label %20, label %22, !dbg !3662

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8, !dbg !3663
  call void @BZ2_bzWriteClose(ptr noundef null, ptr noundef %21, i32 noundef 1, ptr noundef null, ptr noundef null), !dbg !3665
  br label %22, !dbg !3666

22:                                               ; preds = %20, %16
  br label %25, !dbg !3667

23:                                               ; preds = %11
  %24 = load ptr, ptr %2, align 8, !dbg !3668
  call void @BZ2_bzReadClose(ptr noundef %3, ptr noundef %24), !dbg !3670
  br label %25

25:                                               ; preds = %23, %22
  %26 = load ptr, ptr %4, align 8, !dbg !3671
  %27 = load ptr, ptr @stdin, align 8, !dbg !3673
  %28 = icmp ne ptr %26, %27, !dbg !3674
  br i1 %28, label %29, label %36, !dbg !3675

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 8, !dbg !3676
  %31 = load ptr, ptr @stdout, align 8, !dbg !3677
  %32 = icmp ne ptr %30, %31, !dbg !3678
  br i1 %32, label %33, label %36, !dbg !3675

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !dbg !3679
  %35 = call i32 @fclose(ptr noundef %34), !dbg !3681
  br label %36, !dbg !3682

36:                                               ; preds = %10, %33, %29, %25
  ret void, !dbg !3683
}

declare i32 @fclose(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BZ2_bzerror(ptr noundef %0, ptr noundef %1) #0 !dbg !3684 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !3687, !DIExpression(), !3688)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !3689, !DIExpression(), !3690)
    #dbg_declare(ptr %5, !3691, !DIExpression(), !3692)
  %6 = load ptr, ptr %3, align 8, !dbg !3693
  %7 = getelementptr inbounds nuw %struct.bzFile, ptr %6, i32 0, i32 5, !dbg !3694
  %8 = load i32, ptr %7, align 8, !dbg !3694
  store i32 %8, ptr %5, align 4, !dbg !3692
  %9 = load i32, ptr %5, align 4, !dbg !3695
  %10 = icmp sgt i32 %9, 0, !dbg !3697
  br i1 %10, label %11, label %12, !dbg !3697

11:                                               ; preds = %2
  store i32 0, ptr %5, align 4, !dbg !3698
  br label %12, !dbg !3699

12:                                               ; preds = %11, %2
  %13 = load i32, ptr %5, align 4, !dbg !3700
  %14 = load ptr, ptr %4, align 8, !dbg !3701
  store i32 %13, ptr %14, align 4, !dbg !3702
  %15 = load i32, ptr %5, align 4, !dbg !3703
  %16 = mul nsw i32 %15, -1, !dbg !3704
  %17 = sext i32 %16 to i64, !dbg !3705
  %18 = getelementptr inbounds [16 x ptr], ptr @bzerrorstrings, i64 0, i64 %17, !dbg !3705
  %19 = load ptr, ptr %18, align 8, !dbg !3705
  ret ptr %19, !dbg !3706
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @copy_output_until_stop(ptr noundef %0) #0 !dbg !3707 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !3708, !DIExpression(), !3709)
    #dbg_declare(ptr %3, !3710, !DIExpression(), !3711)
  store i8 0, ptr %3, align 1, !dbg !3711
  br label %4, !dbg !3712

4:                                                ; preds = %1, %71
  %5 = load ptr, ptr %2, align 8, !dbg !3713
  %6 = getelementptr inbounds nuw %struct.EState, ptr %5, i32 0, i32 0, !dbg !3716
  %7 = load ptr, ptr %6, align 8, !dbg !3716
  %8 = getelementptr inbounds nuw %struct.bz_stream, ptr %7, i32 0, i32 5, !dbg !3717
  %9 = load i32, ptr %8, align 8, !dbg !3717
  %10 = icmp eq i32 %9, 0, !dbg !3718
  br i1 %10, label %11, label %12, !dbg !3718

11:                                               ; preds = %4
  br label %72, !dbg !3719

12:                                               ; preds = %4
  %13 = load ptr, ptr %2, align 8, !dbg !3720
  %14 = getelementptr inbounds nuw %struct.EState, ptr %13, i32 0, i32 20, !dbg !3722
  %15 = load i32, ptr %14, align 8, !dbg !3722
  %16 = load ptr, ptr %2, align 8, !dbg !3723
  %17 = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 19, !dbg !3724
  %18 = load i32, ptr %17, align 4, !dbg !3724
  %19 = icmp sge i32 %15, %18, !dbg !3725
  br i1 %19, label %20, label %21, !dbg !3725

20:                                               ; preds = %12
  br label %72, !dbg !3726

21:                                               ; preds = %12
  store i8 1, ptr %3, align 1, !dbg !3727
  %22 = load ptr, ptr %2, align 8, !dbg !3728
  %23 = getelementptr inbounds nuw %struct.EState, ptr %22, i32 0, i32 11, !dbg !3729
  %24 = load ptr, ptr %23, align 8, !dbg !3729
  %25 = load ptr, ptr %2, align 8, !dbg !3730
  %26 = getelementptr inbounds nuw %struct.EState, ptr %25, i32 0, i32 20, !dbg !3731
  %27 = load i32, ptr %26, align 8, !dbg !3731
  %28 = sext i32 %27 to i64, !dbg !3728
  %29 = getelementptr inbounds i8, ptr %24, i64 %28, !dbg !3728
  %30 = load i8, ptr %29, align 1, !dbg !3728
  %31 = load ptr, ptr %2, align 8, !dbg !3732
  %32 = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 0, !dbg !3733
  %33 = load ptr, ptr %32, align 8, !dbg !3733
  %34 = getelementptr inbounds nuw %struct.bz_stream, ptr %33, i32 0, i32 4, !dbg !3734
  %35 = load ptr, ptr %34, align 8, !dbg !3734
  store i8 %30, ptr %35, align 1, !dbg !3735
  %36 = load ptr, ptr %2, align 8, !dbg !3736
  %37 = getelementptr inbounds nuw %struct.EState, ptr %36, i32 0, i32 20, !dbg !3737
  %38 = load i32, ptr %37, align 8, !dbg !3738
  %39 = add nsw i32 %38, 1, !dbg !3738
  store i32 %39, ptr %37, align 8, !dbg !3738
  %40 = load ptr, ptr %2, align 8, !dbg !3739
  %41 = getelementptr inbounds nuw %struct.EState, ptr %40, i32 0, i32 0, !dbg !3740
  %42 = load ptr, ptr %41, align 8, !dbg !3740
  %43 = getelementptr inbounds nuw %struct.bz_stream, ptr %42, i32 0, i32 5, !dbg !3741
  %44 = load i32, ptr %43, align 8, !dbg !3742
  %45 = add i32 %44, -1, !dbg !3742
  store i32 %45, ptr %43, align 8, !dbg !3742
  %46 = load ptr, ptr %2, align 8, !dbg !3743
  %47 = getelementptr inbounds nuw %struct.EState, ptr %46, i32 0, i32 0, !dbg !3744
  %48 = load ptr, ptr %47, align 8, !dbg !3744
  %49 = getelementptr inbounds nuw %struct.bz_stream, ptr %48, i32 0, i32 4, !dbg !3745
  %50 = load ptr, ptr %49, align 8, !dbg !3746
  %51 = getelementptr inbounds nuw i8, ptr %50, i32 1, !dbg !3746
  store ptr %51, ptr %49, align 8, !dbg !3746
  %52 = load ptr, ptr %2, align 8, !dbg !3747
  %53 = getelementptr inbounds nuw %struct.EState, ptr %52, i32 0, i32 0, !dbg !3748
  %54 = load ptr, ptr %53, align 8, !dbg !3748
  %55 = getelementptr inbounds nuw %struct.bz_stream, ptr %54, i32 0, i32 6, !dbg !3749
  %56 = load i32, ptr %55, align 4, !dbg !3750
  %57 = add i32 %56, 1, !dbg !3750
  store i32 %57, ptr %55, align 4, !dbg !3750
  %58 = load ptr, ptr %2, align 8, !dbg !3751
  %59 = getelementptr inbounds nuw %struct.EState, ptr %58, i32 0, i32 0, !dbg !3753
  %60 = load ptr, ptr %59, align 8, !dbg !3753
  %61 = getelementptr inbounds nuw %struct.bz_stream, ptr %60, i32 0, i32 6, !dbg !3754
  %62 = load i32, ptr %61, align 4, !dbg !3754
  %63 = icmp eq i32 %62, 0, !dbg !3755
  br i1 %63, label %64, label %71, !dbg !3755

64:                                               ; preds = %21
  %65 = load ptr, ptr %2, align 8, !dbg !3756
  %66 = getelementptr inbounds nuw %struct.EState, ptr %65, i32 0, i32 0, !dbg !3757
  %67 = load ptr, ptr %66, align 8, !dbg !3757
  %68 = getelementptr inbounds nuw %struct.bz_stream, ptr %67, i32 0, i32 7, !dbg !3758
  %69 = load i32, ptr %68, align 8, !dbg !3759
  %70 = add i32 %69, 1, !dbg !3759
  store i32 %70, ptr %68, align 8, !dbg !3759
  br label %71, !dbg !3756

71:                                               ; preds = %64, %21
  br label %4, !dbg !3712, !llvm.loop !3760

72:                                               ; preds = %20, %11
  %73 = load i8, ptr %3, align 1, !dbg !3762
  ret i8 %73, !dbg !3763
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @copy_input_until_stop(ptr noundef %0) #0 !dbg !3764 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !3765, !DIExpression(), !3766)
    #dbg_declare(ptr %3, !3767, !DIExpression(), !3768)
  store i8 0, ptr %3, align 1, !dbg !3768
  %8 = load ptr, ptr %2, align 8, !dbg !3769
  %9 = getelementptr inbounds nuw %struct.EState, ptr %8, i32 0, i32 1, !dbg !3771
  %10 = load i32, ptr %9, align 8, !dbg !3771
  %11 = icmp eq i32 %10, 2, !dbg !3772
  br i1 %11, label %12, label %157, !dbg !3772

12:                                               ; preds = %1
  br label %13, !dbg !3773

13:                                               ; preds = %12, %155
  %14 = load ptr, ptr %2, align 8, !dbg !3775
  %15 = getelementptr inbounds nuw %struct.EState, ptr %14, i32 0, i32 17, !dbg !3778
  %16 = load i32, ptr %15, align 4, !dbg !3778
  %17 = load ptr, ptr %2, align 8, !dbg !3779
  %18 = getelementptr inbounds nuw %struct.EState, ptr %17, i32 0, i32 18, !dbg !3780
  %19 = load i32, ptr %18, align 8, !dbg !3780
  %20 = icmp sge i32 %16, %19, !dbg !3781
  br i1 %20, label %21, label %22, !dbg !3781

21:                                               ; preds = %13
  br label %156, !dbg !3782

22:                                               ; preds = %13
  %23 = load ptr, ptr %2, align 8, !dbg !3783
  %24 = getelementptr inbounds nuw %struct.EState, ptr %23, i32 0, i32 0, !dbg !3785
  %25 = load ptr, ptr %24, align 8, !dbg !3785
  %26 = getelementptr inbounds nuw %struct.bz_stream, ptr %25, i32 0, i32 1, !dbg !3786
  %27 = load i32, ptr %26, align 8, !dbg !3786
  %28 = icmp eq i32 %27, 0, !dbg !3787
  br i1 %28, label %29, label %30, !dbg !3787

29:                                               ; preds = %22
  br label %156, !dbg !3788

30:                                               ; preds = %22
  store i8 1, ptr %3, align 1, !dbg !3789
    #dbg_declare(ptr %4, !3790, !DIExpression(), !3792)
  %31 = load ptr, ptr %2, align 8, !dbg !3792
  %32 = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 0, !dbg !3792
  %33 = load ptr, ptr %32, align 8, !dbg !3792
  %34 = getelementptr inbounds nuw %struct.bz_stream, ptr %33, i32 0, i32 0, !dbg !3792
  %35 = load ptr, ptr %34, align 8, !dbg !3792
  %36 = load i8, ptr %35, align 1, !dbg !3792
  %37 = zext i8 %36 to i32, !dbg !3792
  store i32 %37, ptr %4, align 4, !dbg !3792
  %38 = load i32, ptr %4, align 4, !dbg !3793
  %39 = load ptr, ptr %2, align 8, !dbg !3793
  %40 = getelementptr inbounds nuw %struct.EState, ptr %39, i32 0, i32 13, !dbg !3793
  %41 = load i32, ptr %40, align 4, !dbg !3793
  %42 = icmp ne i32 %38, %41, !dbg !3793
  br i1 %42, label %43, label %93, !dbg !3793

43:                                               ; preds = %30
  %44 = load ptr, ptr %2, align 8, !dbg !3793
  %45 = getelementptr inbounds nuw %struct.EState, ptr %44, i32 0, i32 14, !dbg !3793
  %46 = load i32, ptr %45, align 8, !dbg !3793
  %47 = icmp eq i32 %46, 1, !dbg !3793
  br i1 %47, label %48, label %93, !dbg !3793

48:                                               ; preds = %43
    #dbg_declare(ptr %5, !3795, !DIExpression(), !3797)
  %49 = load ptr, ptr %2, align 8, !dbg !3797
  %50 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 13, !dbg !3797
  %51 = load i32, ptr %50, align 4, !dbg !3797
  %52 = trunc i32 %51 to i8, !dbg !3797
  store i8 %52, ptr %5, align 1, !dbg !3797
  %53 = load ptr, ptr %2, align 8, !dbg !3798
  %54 = getelementptr inbounds nuw %struct.EState, ptr %53, i32 0, i32 26, !dbg !3798
  %55 = load i32, ptr %54, align 8, !dbg !3798
  %56 = shl i32 %55, 8, !dbg !3798
  %57 = load ptr, ptr %2, align 8, !dbg !3798
  %58 = getelementptr inbounds nuw %struct.EState, ptr %57, i32 0, i32 26, !dbg !3798
  %59 = load i32, ptr %58, align 8, !dbg !3798
  %60 = lshr i32 %59, 24, !dbg !3798
  %61 = load i8, ptr %5, align 1, !dbg !3798
  %62 = zext i8 %61 to i32, !dbg !3798
  %63 = xor i32 %60, %62, !dbg !3798
  %64 = zext i32 %63 to i64, !dbg !3798
  %65 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %64, !dbg !3798
  %66 = load i32, ptr %65, align 4, !dbg !3798
  %67 = xor i32 %56, %66, !dbg !3798
  %68 = load ptr, ptr %2, align 8, !dbg !3798
  %69 = getelementptr inbounds nuw %struct.EState, ptr %68, i32 0, i32 26, !dbg !3798
  store i32 %67, ptr %69, align 8, !dbg !3798
  %70 = load ptr, ptr %2, align 8, !dbg !3797
  %71 = getelementptr inbounds nuw %struct.EState, ptr %70, i32 0, i32 22, !dbg !3797
  %72 = load ptr, ptr %2, align 8, !dbg !3797
  %73 = getelementptr inbounds nuw %struct.EState, ptr %72, i32 0, i32 13, !dbg !3797
  %74 = load i32, ptr %73, align 4, !dbg !3797
  %75 = zext i32 %74 to i64, !dbg !3797
  %76 = getelementptr inbounds nuw [256 x i8], ptr %71, i64 0, i64 %75, !dbg !3797
  store i8 1, ptr %76, align 1, !dbg !3797
  %77 = load i8, ptr %5, align 1, !dbg !3797
  %78 = load ptr, ptr %2, align 8, !dbg !3797
  %79 = getelementptr inbounds nuw %struct.EState, ptr %78, i32 0, i32 9, !dbg !3797
  %80 = load ptr, ptr %79, align 8, !dbg !3797
  %81 = load ptr, ptr %2, align 8, !dbg !3797
  %82 = getelementptr inbounds nuw %struct.EState, ptr %81, i32 0, i32 17, !dbg !3797
  %83 = load i32, ptr %82, align 4, !dbg !3797
  %84 = sext i32 %83 to i64, !dbg !3797
  %85 = getelementptr inbounds i8, ptr %80, i64 %84, !dbg !3797
  store i8 %77, ptr %85, align 1, !dbg !3797
  %86 = load ptr, ptr %2, align 8, !dbg !3797
  %87 = getelementptr inbounds nuw %struct.EState, ptr %86, i32 0, i32 17, !dbg !3797
  %88 = load i32, ptr %87, align 4, !dbg !3797
  %89 = add nsw i32 %88, 1, !dbg !3797
  store i32 %89, ptr %87, align 4, !dbg !3797
  %90 = load i32, ptr %4, align 4, !dbg !3797
  %91 = load ptr, ptr %2, align 8, !dbg !3797
  %92 = getelementptr inbounds nuw %struct.EState, ptr %91, i32 0, i32 13, !dbg !3797
  store i32 %90, ptr %92, align 4, !dbg !3797
  br label %123, !dbg !3797

93:                                               ; preds = %43, %30
  %94 = load i32, ptr %4, align 4, !dbg !3800
  %95 = load ptr, ptr %2, align 8, !dbg !3800
  %96 = getelementptr inbounds nuw %struct.EState, ptr %95, i32 0, i32 13, !dbg !3800
  %97 = load i32, ptr %96, align 4, !dbg !3800
  %98 = icmp ne i32 %94, %97, !dbg !3800
  br i1 %98, label %104, label %99, !dbg !3800

99:                                               ; preds = %93
  %100 = load ptr, ptr %2, align 8, !dbg !3800
  %101 = getelementptr inbounds nuw %struct.EState, ptr %100, i32 0, i32 14, !dbg !3800
  %102 = load i32, ptr %101, align 8, !dbg !3800
  %103 = icmp eq i32 %102, 255, !dbg !3800
  br i1 %103, label %104, label %117, !dbg !3800

104:                                              ; preds = %99, %93
  %105 = load ptr, ptr %2, align 8, !dbg !3802
  %106 = getelementptr inbounds nuw %struct.EState, ptr %105, i32 0, i32 13, !dbg !3802
  %107 = load i32, ptr %106, align 4, !dbg !3802
  %108 = icmp ult i32 %107, 256, !dbg !3802
  br i1 %108, label %109, label %111, !dbg !3802

109:                                              ; preds = %104
  %110 = load ptr, ptr %2, align 8, !dbg !3802
  call void @add_pair_to_block(ptr noundef %110), !dbg !3802
  br label %111, !dbg !3802

111:                                              ; preds = %109, %104
  %112 = load i32, ptr %4, align 4, !dbg !3805
  %113 = load ptr, ptr %2, align 8, !dbg !3805
  %114 = getelementptr inbounds nuw %struct.EState, ptr %113, i32 0, i32 13, !dbg !3805
  store i32 %112, ptr %114, align 4, !dbg !3805
  %115 = load ptr, ptr %2, align 8, !dbg !3805
  %116 = getelementptr inbounds nuw %struct.EState, ptr %115, i32 0, i32 14, !dbg !3805
  store i32 1, ptr %116, align 8, !dbg !3805
  br label %122, !dbg !3805

117:                                              ; preds = %99
  %118 = load ptr, ptr %2, align 8, !dbg !3806
  %119 = getelementptr inbounds nuw %struct.EState, ptr %118, i32 0, i32 14, !dbg !3806
  %120 = load i32, ptr %119, align 8, !dbg !3806
  %121 = add nsw i32 %120, 1, !dbg !3806
  store i32 %121, ptr %119, align 8, !dbg !3806
  br label %122

122:                                              ; preds = %117, %111
  br label %123

123:                                              ; preds = %122, %48
  %124 = load ptr, ptr %2, align 8, !dbg !3808
  %125 = getelementptr inbounds nuw %struct.EState, ptr %124, i32 0, i32 0, !dbg !3809
  %126 = load ptr, ptr %125, align 8, !dbg !3809
  %127 = getelementptr inbounds nuw %struct.bz_stream, ptr %126, i32 0, i32 0, !dbg !3810
  %128 = load ptr, ptr %127, align 8, !dbg !3811
  %129 = getelementptr inbounds nuw i8, ptr %128, i32 1, !dbg !3811
  store ptr %129, ptr %127, align 8, !dbg !3811
  %130 = load ptr, ptr %2, align 8, !dbg !3812
  %131 = getelementptr inbounds nuw %struct.EState, ptr %130, i32 0, i32 0, !dbg !3813
  %132 = load ptr, ptr %131, align 8, !dbg !3813
  %133 = getelementptr inbounds nuw %struct.bz_stream, ptr %132, i32 0, i32 1, !dbg !3814
  %134 = load i32, ptr %133, align 8, !dbg !3815
  %135 = add i32 %134, -1, !dbg !3815
  store i32 %135, ptr %133, align 8, !dbg !3815
  %136 = load ptr, ptr %2, align 8, !dbg !3816
  %137 = getelementptr inbounds nuw %struct.EState, ptr %136, i32 0, i32 0, !dbg !3817
  %138 = load ptr, ptr %137, align 8, !dbg !3817
  %139 = getelementptr inbounds nuw %struct.bz_stream, ptr %138, i32 0, i32 2, !dbg !3818
  %140 = load i32, ptr %139, align 4, !dbg !3819
  %141 = add i32 %140, 1, !dbg !3819
  store i32 %141, ptr %139, align 4, !dbg !3819
  %142 = load ptr, ptr %2, align 8, !dbg !3820
  %143 = getelementptr inbounds nuw %struct.EState, ptr %142, i32 0, i32 0, !dbg !3822
  %144 = load ptr, ptr %143, align 8, !dbg !3822
  %145 = getelementptr inbounds nuw %struct.bz_stream, ptr %144, i32 0, i32 2, !dbg !3823
  %146 = load i32, ptr %145, align 4, !dbg !3823
  %147 = icmp eq i32 %146, 0, !dbg !3824
  br i1 %147, label %148, label %155, !dbg !3824

148:                                              ; preds = %123
  %149 = load ptr, ptr %2, align 8, !dbg !3825
  %150 = getelementptr inbounds nuw %struct.EState, ptr %149, i32 0, i32 0, !dbg !3826
  %151 = load ptr, ptr %150, align 8, !dbg !3826
  %152 = getelementptr inbounds nuw %struct.bz_stream, ptr %151, i32 0, i32 3, !dbg !3827
  %153 = load i32, ptr %152, align 8, !dbg !3828
  %154 = add i32 %153, 1, !dbg !3828
  store i32 %154, ptr %152, align 8, !dbg !3828
  br label %155, !dbg !3825

155:                                              ; preds = %148, %123
  br label %13, !dbg !3773, !llvm.loop !3829

156:                                              ; preds = %29, %21
  br label %312, !dbg !3831

157:                                              ; preds = %1
  br label %158, !dbg !3832

158:                                              ; preds = %157, %306
  %159 = load ptr, ptr %2, align 8, !dbg !3834
  %160 = getelementptr inbounds nuw %struct.EState, ptr %159, i32 0, i32 17, !dbg !3837
  %161 = load i32, ptr %160, align 4, !dbg !3837
  %162 = load ptr, ptr %2, align 8, !dbg !3838
  %163 = getelementptr inbounds nuw %struct.EState, ptr %162, i32 0, i32 18, !dbg !3839
  %164 = load i32, ptr %163, align 8, !dbg !3839
  %165 = icmp sge i32 %161, %164, !dbg !3840
  br i1 %165, label %166, label %167, !dbg !3840

166:                                              ; preds = %158
  br label %311, !dbg !3841

167:                                              ; preds = %158
  %168 = load ptr, ptr %2, align 8, !dbg !3842
  %169 = getelementptr inbounds nuw %struct.EState, ptr %168, i32 0, i32 0, !dbg !3844
  %170 = load ptr, ptr %169, align 8, !dbg !3844
  %171 = getelementptr inbounds nuw %struct.bz_stream, ptr %170, i32 0, i32 1, !dbg !3845
  %172 = load i32, ptr %171, align 8, !dbg !3845
  %173 = icmp eq i32 %172, 0, !dbg !3846
  br i1 %173, label %174, label %175, !dbg !3846

174:                                              ; preds = %167
  br label %311, !dbg !3847

175:                                              ; preds = %167
  %176 = load ptr, ptr %2, align 8, !dbg !3848
  %177 = getelementptr inbounds nuw %struct.EState, ptr %176, i32 0, i32 3, !dbg !3850
  %178 = load i32, ptr %177, align 8, !dbg !3850
  %179 = icmp eq i32 %178, 0, !dbg !3851
  br i1 %179, label %180, label %181, !dbg !3851

180:                                              ; preds = %175
  br label %311, !dbg !3852

181:                                              ; preds = %175
  store i8 1, ptr %3, align 1, !dbg !3853
    #dbg_declare(ptr %6, !3854, !DIExpression(), !3856)
  %182 = load ptr, ptr %2, align 8, !dbg !3856
  %183 = getelementptr inbounds nuw %struct.EState, ptr %182, i32 0, i32 0, !dbg !3856
  %184 = load ptr, ptr %183, align 8, !dbg !3856
  %185 = getelementptr inbounds nuw %struct.bz_stream, ptr %184, i32 0, i32 0, !dbg !3856
  %186 = load ptr, ptr %185, align 8, !dbg !3856
  %187 = load i8, ptr %186, align 1, !dbg !3856
  %188 = zext i8 %187 to i32, !dbg !3856
  store i32 %188, ptr %6, align 4, !dbg !3856
  %189 = load i32, ptr %6, align 4, !dbg !3857
  %190 = load ptr, ptr %2, align 8, !dbg !3857
  %191 = getelementptr inbounds nuw %struct.EState, ptr %190, i32 0, i32 13, !dbg !3857
  %192 = load i32, ptr %191, align 4, !dbg !3857
  %193 = icmp ne i32 %189, %192, !dbg !3857
  br i1 %193, label %194, label %244, !dbg !3857

194:                                              ; preds = %181
  %195 = load ptr, ptr %2, align 8, !dbg !3857
  %196 = getelementptr inbounds nuw %struct.EState, ptr %195, i32 0, i32 14, !dbg !3857
  %197 = load i32, ptr %196, align 8, !dbg !3857
  %198 = icmp eq i32 %197, 1, !dbg !3857
  br i1 %198, label %199, label %244, !dbg !3857

199:                                              ; preds = %194
    #dbg_declare(ptr %7, !3859, !DIExpression(), !3861)
  %200 = load ptr, ptr %2, align 8, !dbg !3861
  %201 = getelementptr inbounds nuw %struct.EState, ptr %200, i32 0, i32 13, !dbg !3861
  %202 = load i32, ptr %201, align 4, !dbg !3861
  %203 = trunc i32 %202 to i8, !dbg !3861
  store i8 %203, ptr %7, align 1, !dbg !3861
  %204 = load ptr, ptr %2, align 8, !dbg !3862
  %205 = getelementptr inbounds nuw %struct.EState, ptr %204, i32 0, i32 26, !dbg !3862
  %206 = load i32, ptr %205, align 8, !dbg !3862
  %207 = shl i32 %206, 8, !dbg !3862
  %208 = load ptr, ptr %2, align 8, !dbg !3862
  %209 = getelementptr inbounds nuw %struct.EState, ptr %208, i32 0, i32 26, !dbg !3862
  %210 = load i32, ptr %209, align 8, !dbg !3862
  %211 = lshr i32 %210, 24, !dbg !3862
  %212 = load i8, ptr %7, align 1, !dbg !3862
  %213 = zext i8 %212 to i32, !dbg !3862
  %214 = xor i32 %211, %213, !dbg !3862
  %215 = zext i32 %214 to i64, !dbg !3862
  %216 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %215, !dbg !3862
  %217 = load i32, ptr %216, align 4, !dbg !3862
  %218 = xor i32 %207, %217, !dbg !3862
  %219 = load ptr, ptr %2, align 8, !dbg !3862
  %220 = getelementptr inbounds nuw %struct.EState, ptr %219, i32 0, i32 26, !dbg !3862
  store i32 %218, ptr %220, align 8, !dbg !3862
  %221 = load ptr, ptr %2, align 8, !dbg !3861
  %222 = getelementptr inbounds nuw %struct.EState, ptr %221, i32 0, i32 22, !dbg !3861
  %223 = load ptr, ptr %2, align 8, !dbg !3861
  %224 = getelementptr inbounds nuw %struct.EState, ptr %223, i32 0, i32 13, !dbg !3861
  %225 = load i32, ptr %224, align 4, !dbg !3861
  %226 = zext i32 %225 to i64, !dbg !3861
  %227 = getelementptr inbounds nuw [256 x i8], ptr %222, i64 0, i64 %226, !dbg !3861
  store i8 1, ptr %227, align 1, !dbg !3861
  %228 = load i8, ptr %7, align 1, !dbg !3861
  %229 = load ptr, ptr %2, align 8, !dbg !3861
  %230 = getelementptr inbounds nuw %struct.EState, ptr %229, i32 0, i32 9, !dbg !3861
  %231 = load ptr, ptr %230, align 8, !dbg !3861
  %232 = load ptr, ptr %2, align 8, !dbg !3861
  %233 = getelementptr inbounds nuw %struct.EState, ptr %232, i32 0, i32 17, !dbg !3861
  %234 = load i32, ptr %233, align 4, !dbg !3861
  %235 = sext i32 %234 to i64, !dbg !3861
  %236 = getelementptr inbounds i8, ptr %231, i64 %235, !dbg !3861
  store i8 %228, ptr %236, align 1, !dbg !3861
  %237 = load ptr, ptr %2, align 8, !dbg !3861
  %238 = getelementptr inbounds nuw %struct.EState, ptr %237, i32 0, i32 17, !dbg !3861
  %239 = load i32, ptr %238, align 4, !dbg !3861
  %240 = add nsw i32 %239, 1, !dbg !3861
  store i32 %240, ptr %238, align 4, !dbg !3861
  %241 = load i32, ptr %6, align 4, !dbg !3861
  %242 = load ptr, ptr %2, align 8, !dbg !3861
  %243 = getelementptr inbounds nuw %struct.EState, ptr %242, i32 0, i32 13, !dbg !3861
  store i32 %241, ptr %243, align 4, !dbg !3861
  br label %274, !dbg !3861

244:                                              ; preds = %194, %181
  %245 = load i32, ptr %6, align 4, !dbg !3864
  %246 = load ptr, ptr %2, align 8, !dbg !3864
  %247 = getelementptr inbounds nuw %struct.EState, ptr %246, i32 0, i32 13, !dbg !3864
  %248 = load i32, ptr %247, align 4, !dbg !3864
  %249 = icmp ne i32 %245, %248, !dbg !3864
  br i1 %249, label %255, label %250, !dbg !3864

250:                                              ; preds = %244
  %251 = load ptr, ptr %2, align 8, !dbg !3864
  %252 = getelementptr inbounds nuw %struct.EState, ptr %251, i32 0, i32 14, !dbg !3864
  %253 = load i32, ptr %252, align 8, !dbg !3864
  %254 = icmp eq i32 %253, 255, !dbg !3864
  br i1 %254, label %255, label %268, !dbg !3864

255:                                              ; preds = %250, %244
  %256 = load ptr, ptr %2, align 8, !dbg !3866
  %257 = getelementptr inbounds nuw %struct.EState, ptr %256, i32 0, i32 13, !dbg !3866
  %258 = load i32, ptr %257, align 4, !dbg !3866
  %259 = icmp ult i32 %258, 256, !dbg !3866
  br i1 %259, label %260, label %262, !dbg !3866

260:                                              ; preds = %255
  %261 = load ptr, ptr %2, align 8, !dbg !3866
  call void @add_pair_to_block(ptr noundef %261), !dbg !3866
  br label %262, !dbg !3866

262:                                              ; preds = %260, %255
  %263 = load i32, ptr %6, align 4, !dbg !3869
  %264 = load ptr, ptr %2, align 8, !dbg !3869
  %265 = getelementptr inbounds nuw %struct.EState, ptr %264, i32 0, i32 13, !dbg !3869
  store i32 %263, ptr %265, align 4, !dbg !3869
  %266 = load ptr, ptr %2, align 8, !dbg !3869
  %267 = getelementptr inbounds nuw %struct.EState, ptr %266, i32 0, i32 14, !dbg !3869
  store i32 1, ptr %267, align 8, !dbg !3869
  br label %273, !dbg !3869

268:                                              ; preds = %250
  %269 = load ptr, ptr %2, align 8, !dbg !3870
  %270 = getelementptr inbounds nuw %struct.EState, ptr %269, i32 0, i32 14, !dbg !3870
  %271 = load i32, ptr %270, align 8, !dbg !3870
  %272 = add nsw i32 %271, 1, !dbg !3870
  store i32 %272, ptr %270, align 8, !dbg !3870
  br label %273

273:                                              ; preds = %268, %262
  br label %274

274:                                              ; preds = %273, %199
  %275 = load ptr, ptr %2, align 8, !dbg !3872
  %276 = getelementptr inbounds nuw %struct.EState, ptr %275, i32 0, i32 0, !dbg !3873
  %277 = load ptr, ptr %276, align 8, !dbg !3873
  %278 = getelementptr inbounds nuw %struct.bz_stream, ptr %277, i32 0, i32 0, !dbg !3874
  %279 = load ptr, ptr %278, align 8, !dbg !3875
  %280 = getelementptr inbounds nuw i8, ptr %279, i32 1, !dbg !3875
  store ptr %280, ptr %278, align 8, !dbg !3875
  %281 = load ptr, ptr %2, align 8, !dbg !3876
  %282 = getelementptr inbounds nuw %struct.EState, ptr %281, i32 0, i32 0, !dbg !3877
  %283 = load ptr, ptr %282, align 8, !dbg !3877
  %284 = getelementptr inbounds nuw %struct.bz_stream, ptr %283, i32 0, i32 1, !dbg !3878
  %285 = load i32, ptr %284, align 8, !dbg !3879
  %286 = add i32 %285, -1, !dbg !3879
  store i32 %286, ptr %284, align 8, !dbg !3879
  %287 = load ptr, ptr %2, align 8, !dbg !3880
  %288 = getelementptr inbounds nuw %struct.EState, ptr %287, i32 0, i32 0, !dbg !3881
  %289 = load ptr, ptr %288, align 8, !dbg !3881
  %290 = getelementptr inbounds nuw %struct.bz_stream, ptr %289, i32 0, i32 2, !dbg !3882
  %291 = load i32, ptr %290, align 4, !dbg !3883
  %292 = add i32 %291, 1, !dbg !3883
  store i32 %292, ptr %290, align 4, !dbg !3883
  %293 = load ptr, ptr %2, align 8, !dbg !3884
  %294 = getelementptr inbounds nuw %struct.EState, ptr %293, i32 0, i32 0, !dbg !3886
  %295 = load ptr, ptr %294, align 8, !dbg !3886
  %296 = getelementptr inbounds nuw %struct.bz_stream, ptr %295, i32 0, i32 2, !dbg !3887
  %297 = load i32, ptr %296, align 4, !dbg !3887
  %298 = icmp eq i32 %297, 0, !dbg !3888
  br i1 %298, label %299, label %306, !dbg !3888

299:                                              ; preds = %274
  %300 = load ptr, ptr %2, align 8, !dbg !3889
  %301 = getelementptr inbounds nuw %struct.EState, ptr %300, i32 0, i32 0, !dbg !3890
  %302 = load ptr, ptr %301, align 8, !dbg !3890
  %303 = getelementptr inbounds nuw %struct.bz_stream, ptr %302, i32 0, i32 3, !dbg !3891
  %304 = load i32, ptr %303, align 8, !dbg !3892
  %305 = add i32 %304, 1, !dbg !3892
  store i32 %305, ptr %303, align 8, !dbg !3892
  br label %306, !dbg !3889

306:                                              ; preds = %299, %274
  %307 = load ptr, ptr %2, align 8, !dbg !3893
  %308 = getelementptr inbounds nuw %struct.EState, ptr %307, i32 0, i32 3, !dbg !3894
  %309 = load i32, ptr %308, align 8, !dbg !3895
  %310 = add i32 %309, -1, !dbg !3895
  store i32 %310, ptr %308, align 8, !dbg !3895
  br label %158, !dbg !3832, !llvm.loop !3896

311:                                              ; preds = %180, %174, %166
  br label %312

312:                                              ; preds = %311, %156
  %313 = load i8, ptr %3, align 1, !dbg !3898
  ret i8 %313, !dbg !3899
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_RL(ptr noundef %0) #0 !dbg !3900 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !3901, !DIExpression(), !3902)
  %3 = load ptr, ptr %2, align 8, !dbg !3903
  %4 = getelementptr inbounds nuw %struct.EState, ptr %3, i32 0, i32 13, !dbg !3905
  %5 = load i32, ptr %4, align 4, !dbg !3905
  %6 = icmp ult i32 %5, 256, !dbg !3906
  br i1 %6, label %7, label %9, !dbg !3906

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !3907
  call void @add_pair_to_block(ptr noundef %8), !dbg !3908
  br label %9, !dbg !3908

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr %2, align 8, !dbg !3909
  call void @init_RL(ptr noundef %10), !dbg !3910
  ret void, !dbg !3911
}

declare void @BZ2_compressBlock(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pair_to_block(ptr noundef %0) #0 !dbg !3912 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !3913, !DIExpression(), !3914)
    #dbg_declare(ptr %3, !3915, !DIExpression(), !3916)
    #dbg_declare(ptr %4, !3917, !DIExpression(), !3918)
  %5 = load ptr, ptr %2, align 8, !dbg !3919
  %6 = getelementptr inbounds nuw %struct.EState, ptr %5, i32 0, i32 13, !dbg !3920
  %7 = load i32, ptr %6, align 4, !dbg !3920
  %8 = trunc i32 %7 to i8, !dbg !3921
  store i8 %8, ptr %4, align 1, !dbg !3918
  store i32 0, ptr %3, align 4, !dbg !3922
  br label %9, !dbg !3924

9:                                                ; preds = %33, %1
  %10 = load i32, ptr %3, align 4, !dbg !3925
  %11 = load ptr, ptr %2, align 8, !dbg !3927
  %12 = getelementptr inbounds nuw %struct.EState, ptr %11, i32 0, i32 14, !dbg !3928
  %13 = load i32, ptr %12, align 8, !dbg !3928
  %14 = icmp slt i32 %10, %13, !dbg !3929
  br i1 %14, label %15, label %36, !dbg !3930

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !dbg !3931
  %17 = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 26, !dbg !3931
  %18 = load i32, ptr %17, align 8, !dbg !3931
  %19 = shl i32 %18, 8, !dbg !3931
  %20 = load ptr, ptr %2, align 8, !dbg !3931
  %21 = getelementptr inbounds nuw %struct.EState, ptr %20, i32 0, i32 26, !dbg !3931
  %22 = load i32, ptr %21, align 8, !dbg !3931
  %23 = lshr i32 %22, 24, !dbg !3931
  %24 = load i8, ptr %4, align 1, !dbg !3931
  %25 = zext i8 %24 to i32, !dbg !3931
  %26 = xor i32 %23, %25, !dbg !3931
  %27 = zext i32 %26 to i64, !dbg !3931
  %28 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %27, !dbg !3931
  %29 = load i32, ptr %28, align 4, !dbg !3931
  %30 = xor i32 %19, %29, !dbg !3931
  %31 = load ptr, ptr %2, align 8, !dbg !3931
  %32 = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 26, !dbg !3931
  store i32 %30, ptr %32, align 8, !dbg !3931
  br label %33, !dbg !3934

33:                                               ; preds = %15
  %34 = load i32, ptr %3, align 4, !dbg !3935
  %35 = add nsw i32 %34, 1, !dbg !3935
  store i32 %35, ptr %3, align 4, !dbg !3935
  br label %9, !dbg !3936, !llvm.loop !3937

36:                                               ; preds = %9
  %37 = load ptr, ptr %2, align 8, !dbg !3939
  %38 = getelementptr inbounds nuw %struct.EState, ptr %37, i32 0, i32 22, !dbg !3940
  %39 = load ptr, ptr %2, align 8, !dbg !3941
  %40 = getelementptr inbounds nuw %struct.EState, ptr %39, i32 0, i32 13, !dbg !3942
  %41 = load i32, ptr %40, align 4, !dbg !3942
  %42 = zext i32 %41 to i64, !dbg !3939
  %43 = getelementptr inbounds nuw [256 x i8], ptr %38, i64 0, i64 %42, !dbg !3939
  store i8 1, ptr %43, align 1, !dbg !3943
  %44 = load ptr, ptr %2, align 8, !dbg !3944
  %45 = getelementptr inbounds nuw %struct.EState, ptr %44, i32 0, i32 14, !dbg !3945
  %46 = load i32, ptr %45, align 8, !dbg !3945
  switch i32 %46, label %128 [
    i32 1, label %47
    i32 2, label %61
    i32 3, label %88
  ], !dbg !3946

47:                                               ; preds = %36
  %48 = load i8, ptr %4, align 1, !dbg !3947
  %49 = load ptr, ptr %2, align 8, !dbg !3949
  %50 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 9, !dbg !3950
  %51 = load ptr, ptr %50, align 8, !dbg !3950
  %52 = load ptr, ptr %2, align 8, !dbg !3951
  %53 = getelementptr inbounds nuw %struct.EState, ptr %52, i32 0, i32 17, !dbg !3952
  %54 = load i32, ptr %53, align 4, !dbg !3952
  %55 = sext i32 %54 to i64, !dbg !3949
  %56 = getelementptr inbounds i8, ptr %51, i64 %55, !dbg !3949
  store i8 %48, ptr %56, align 1, !dbg !3953
  %57 = load ptr, ptr %2, align 8, !dbg !3954
  %58 = getelementptr inbounds nuw %struct.EState, ptr %57, i32 0, i32 17, !dbg !3955
  %59 = load i32, ptr %58, align 4, !dbg !3956
  %60 = add nsw i32 %59, 1, !dbg !3956
  store i32 %60, ptr %58, align 4, !dbg !3956
  br label %206, !dbg !3957

61:                                               ; preds = %36
  %62 = load i8, ptr %4, align 1, !dbg !3958
  %63 = load ptr, ptr %2, align 8, !dbg !3959
  %64 = getelementptr inbounds nuw %struct.EState, ptr %63, i32 0, i32 9, !dbg !3960
  %65 = load ptr, ptr %64, align 8, !dbg !3960
  %66 = load ptr, ptr %2, align 8, !dbg !3961
  %67 = getelementptr inbounds nuw %struct.EState, ptr %66, i32 0, i32 17, !dbg !3962
  %68 = load i32, ptr %67, align 4, !dbg !3962
  %69 = sext i32 %68 to i64, !dbg !3959
  %70 = getelementptr inbounds i8, ptr %65, i64 %69, !dbg !3959
  store i8 %62, ptr %70, align 1, !dbg !3963
  %71 = load ptr, ptr %2, align 8, !dbg !3964
  %72 = getelementptr inbounds nuw %struct.EState, ptr %71, i32 0, i32 17, !dbg !3965
  %73 = load i32, ptr %72, align 4, !dbg !3966
  %74 = add nsw i32 %73, 1, !dbg !3966
  store i32 %74, ptr %72, align 4, !dbg !3966
  %75 = load i8, ptr %4, align 1, !dbg !3967
  %76 = load ptr, ptr %2, align 8, !dbg !3968
  %77 = getelementptr inbounds nuw %struct.EState, ptr %76, i32 0, i32 9, !dbg !3969
  %78 = load ptr, ptr %77, align 8, !dbg !3969
  %79 = load ptr, ptr %2, align 8, !dbg !3970
  %80 = getelementptr inbounds nuw %struct.EState, ptr %79, i32 0, i32 17, !dbg !3971
  %81 = load i32, ptr %80, align 4, !dbg !3971
  %82 = sext i32 %81 to i64, !dbg !3968
  %83 = getelementptr inbounds i8, ptr %78, i64 %82, !dbg !3968
  store i8 %75, ptr %83, align 1, !dbg !3972
  %84 = load ptr, ptr %2, align 8, !dbg !3973
  %85 = getelementptr inbounds nuw %struct.EState, ptr %84, i32 0, i32 17, !dbg !3974
  %86 = load i32, ptr %85, align 4, !dbg !3975
  %87 = add nsw i32 %86, 1, !dbg !3975
  store i32 %87, ptr %85, align 4, !dbg !3975
  br label %206, !dbg !3976

88:                                               ; preds = %36
  %89 = load i8, ptr %4, align 1, !dbg !3977
  %90 = load ptr, ptr %2, align 8, !dbg !3978
  %91 = getelementptr inbounds nuw %struct.EState, ptr %90, i32 0, i32 9, !dbg !3979
  %92 = load ptr, ptr %91, align 8, !dbg !3979
  %93 = load ptr, ptr %2, align 8, !dbg !3980
  %94 = getelementptr inbounds nuw %struct.EState, ptr %93, i32 0, i32 17, !dbg !3981
  %95 = load i32, ptr %94, align 4, !dbg !3981
  %96 = sext i32 %95 to i64, !dbg !3978
  %97 = getelementptr inbounds i8, ptr %92, i64 %96, !dbg !3978
  store i8 %89, ptr %97, align 1, !dbg !3982
  %98 = load ptr, ptr %2, align 8, !dbg !3983
  %99 = getelementptr inbounds nuw %struct.EState, ptr %98, i32 0, i32 17, !dbg !3984
  %100 = load i32, ptr %99, align 4, !dbg !3985
  %101 = add nsw i32 %100, 1, !dbg !3985
  store i32 %101, ptr %99, align 4, !dbg !3985
  %102 = load i8, ptr %4, align 1, !dbg !3986
  %103 = load ptr, ptr %2, align 8, !dbg !3987
  %104 = getelementptr inbounds nuw %struct.EState, ptr %103, i32 0, i32 9, !dbg !3988
  %105 = load ptr, ptr %104, align 8, !dbg !3988
  %106 = load ptr, ptr %2, align 8, !dbg !3989
  %107 = getelementptr inbounds nuw %struct.EState, ptr %106, i32 0, i32 17, !dbg !3990
  %108 = load i32, ptr %107, align 4, !dbg !3990
  %109 = sext i32 %108 to i64, !dbg !3987
  %110 = getelementptr inbounds i8, ptr %105, i64 %109, !dbg !3987
  store i8 %102, ptr %110, align 1, !dbg !3991
  %111 = load ptr, ptr %2, align 8, !dbg !3992
  %112 = getelementptr inbounds nuw %struct.EState, ptr %111, i32 0, i32 17, !dbg !3993
  %113 = load i32, ptr %112, align 4, !dbg !3994
  %114 = add nsw i32 %113, 1, !dbg !3994
  store i32 %114, ptr %112, align 4, !dbg !3994
  %115 = load i8, ptr %4, align 1, !dbg !3995
  %116 = load ptr, ptr %2, align 8, !dbg !3996
  %117 = getelementptr inbounds nuw %struct.EState, ptr %116, i32 0, i32 9, !dbg !3997
  %118 = load ptr, ptr %117, align 8, !dbg !3997
  %119 = load ptr, ptr %2, align 8, !dbg !3998
  %120 = getelementptr inbounds nuw %struct.EState, ptr %119, i32 0, i32 17, !dbg !3999
  %121 = load i32, ptr %120, align 4, !dbg !3999
  %122 = sext i32 %121 to i64, !dbg !3996
  %123 = getelementptr inbounds i8, ptr %118, i64 %122, !dbg !3996
  store i8 %115, ptr %123, align 1, !dbg !4000
  %124 = load ptr, ptr %2, align 8, !dbg !4001
  %125 = getelementptr inbounds nuw %struct.EState, ptr %124, i32 0, i32 17, !dbg !4002
  %126 = load i32, ptr %125, align 4, !dbg !4003
  %127 = add nsw i32 %126, 1, !dbg !4003
  store i32 %127, ptr %125, align 4, !dbg !4003
  br label %206, !dbg !4004

128:                                              ; preds = %36
  %129 = load ptr, ptr %2, align 8, !dbg !4005
  %130 = getelementptr inbounds nuw %struct.EState, ptr %129, i32 0, i32 22, !dbg !4006
  %131 = load ptr, ptr %2, align 8, !dbg !4007
  %132 = getelementptr inbounds nuw %struct.EState, ptr %131, i32 0, i32 14, !dbg !4008
  %133 = load i32, ptr %132, align 8, !dbg !4008
  %134 = sub nsw i32 %133, 4, !dbg !4009
  %135 = sext i32 %134 to i64, !dbg !4005
  %136 = getelementptr inbounds [256 x i8], ptr %130, i64 0, i64 %135, !dbg !4005
  store i8 1, ptr %136, align 1, !dbg !4010
  %137 = load i8, ptr %4, align 1, !dbg !4011
  %138 = load ptr, ptr %2, align 8, !dbg !4012
  %139 = getelementptr inbounds nuw %struct.EState, ptr %138, i32 0, i32 9, !dbg !4013
  %140 = load ptr, ptr %139, align 8, !dbg !4013
  %141 = load ptr, ptr %2, align 8, !dbg !4014
  %142 = getelementptr inbounds nuw %struct.EState, ptr %141, i32 0, i32 17, !dbg !4015
  %143 = load i32, ptr %142, align 4, !dbg !4015
  %144 = sext i32 %143 to i64, !dbg !4012
  %145 = getelementptr inbounds i8, ptr %140, i64 %144, !dbg !4012
  store i8 %137, ptr %145, align 1, !dbg !4016
  %146 = load ptr, ptr %2, align 8, !dbg !4017
  %147 = getelementptr inbounds nuw %struct.EState, ptr %146, i32 0, i32 17, !dbg !4018
  %148 = load i32, ptr %147, align 4, !dbg !4019
  %149 = add nsw i32 %148, 1, !dbg !4019
  store i32 %149, ptr %147, align 4, !dbg !4019
  %150 = load i8, ptr %4, align 1, !dbg !4020
  %151 = load ptr, ptr %2, align 8, !dbg !4021
  %152 = getelementptr inbounds nuw %struct.EState, ptr %151, i32 0, i32 9, !dbg !4022
  %153 = load ptr, ptr %152, align 8, !dbg !4022
  %154 = load ptr, ptr %2, align 8, !dbg !4023
  %155 = getelementptr inbounds nuw %struct.EState, ptr %154, i32 0, i32 17, !dbg !4024
  %156 = load i32, ptr %155, align 4, !dbg !4024
  %157 = sext i32 %156 to i64, !dbg !4021
  %158 = getelementptr inbounds i8, ptr %153, i64 %157, !dbg !4021
  store i8 %150, ptr %158, align 1, !dbg !4025
  %159 = load ptr, ptr %2, align 8, !dbg !4026
  %160 = getelementptr inbounds nuw %struct.EState, ptr %159, i32 0, i32 17, !dbg !4027
  %161 = load i32, ptr %160, align 4, !dbg !4028
  %162 = add nsw i32 %161, 1, !dbg !4028
  store i32 %162, ptr %160, align 4, !dbg !4028
  %163 = load i8, ptr %4, align 1, !dbg !4029
  %164 = load ptr, ptr %2, align 8, !dbg !4030
  %165 = getelementptr inbounds nuw %struct.EState, ptr %164, i32 0, i32 9, !dbg !4031
  %166 = load ptr, ptr %165, align 8, !dbg !4031
  %167 = load ptr, ptr %2, align 8, !dbg !4032
  %168 = getelementptr inbounds nuw %struct.EState, ptr %167, i32 0, i32 17, !dbg !4033
  %169 = load i32, ptr %168, align 4, !dbg !4033
  %170 = sext i32 %169 to i64, !dbg !4030
  %171 = getelementptr inbounds i8, ptr %166, i64 %170, !dbg !4030
  store i8 %163, ptr %171, align 1, !dbg !4034
  %172 = load ptr, ptr %2, align 8, !dbg !4035
  %173 = getelementptr inbounds nuw %struct.EState, ptr %172, i32 0, i32 17, !dbg !4036
  %174 = load i32, ptr %173, align 4, !dbg !4037
  %175 = add nsw i32 %174, 1, !dbg !4037
  store i32 %175, ptr %173, align 4, !dbg !4037
  %176 = load i8, ptr %4, align 1, !dbg !4038
  %177 = load ptr, ptr %2, align 8, !dbg !4039
  %178 = getelementptr inbounds nuw %struct.EState, ptr %177, i32 0, i32 9, !dbg !4040
  %179 = load ptr, ptr %178, align 8, !dbg !4040
  %180 = load ptr, ptr %2, align 8, !dbg !4041
  %181 = getelementptr inbounds nuw %struct.EState, ptr %180, i32 0, i32 17, !dbg !4042
  %182 = load i32, ptr %181, align 4, !dbg !4042
  %183 = sext i32 %182 to i64, !dbg !4039
  %184 = getelementptr inbounds i8, ptr %179, i64 %183, !dbg !4039
  store i8 %176, ptr %184, align 1, !dbg !4043
  %185 = load ptr, ptr %2, align 8, !dbg !4044
  %186 = getelementptr inbounds nuw %struct.EState, ptr %185, i32 0, i32 17, !dbg !4045
  %187 = load i32, ptr %186, align 4, !dbg !4046
  %188 = add nsw i32 %187, 1, !dbg !4046
  store i32 %188, ptr %186, align 4, !dbg !4046
  %189 = load ptr, ptr %2, align 8, !dbg !4047
  %190 = getelementptr inbounds nuw %struct.EState, ptr %189, i32 0, i32 14, !dbg !4048
  %191 = load i32, ptr %190, align 8, !dbg !4048
  %192 = sub nsw i32 %191, 4, !dbg !4049
  %193 = trunc i32 %192 to i8, !dbg !4050
  %194 = load ptr, ptr %2, align 8, !dbg !4051
  %195 = getelementptr inbounds nuw %struct.EState, ptr %194, i32 0, i32 9, !dbg !4052
  %196 = load ptr, ptr %195, align 8, !dbg !4052
  %197 = load ptr, ptr %2, align 8, !dbg !4053
  %198 = getelementptr inbounds nuw %struct.EState, ptr %197, i32 0, i32 17, !dbg !4054
  %199 = load i32, ptr %198, align 4, !dbg !4054
  %200 = sext i32 %199 to i64, !dbg !4051
  %201 = getelementptr inbounds i8, ptr %196, i64 %200, !dbg !4051
  store i8 %193, ptr %201, align 1, !dbg !4055
  %202 = load ptr, ptr %2, align 8, !dbg !4056
  %203 = getelementptr inbounds nuw %struct.EState, ptr %202, i32 0, i32 17, !dbg !4057
  %204 = load i32, ptr %203, align 4, !dbg !4058
  %205 = add nsw i32 %204, 1, !dbg !4058
  store i32 %205, ptr %203, align 4, !dbg !4058
  br label %206, !dbg !4059

206:                                              ; preds = %128, %88, %61, %47
  ret void, !dbg !4060
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

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

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
!231 = distinct !DISubprogram(name: "BZ2_bz__AssertH__fail", scope: !2, file: !2, line: 86, type: !232, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !76}
!234 = !{}
!235 = !DILocalVariable(name: "errcode", arg: 1, scope: !231, file: !2, line: 86, type: !76)
!236 = !DILocation(line: 86, column: 34, scope: !231)
!237 = !DILocation(line: 88, column: 12, scope: !231)
!238 = !DILocation(line: 97, column: 7, scope: !231)
!239 = !DILocation(line: 98, column: 7, scope: !231)
!240 = !DILocation(line: 88, column: 4, scope: !231)
!241 = !DILocation(line: 101, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !231, file: !2, line: 101, column: 8)
!243 = !DILocation(line: 101, column: 16, scope: !242)
!244 = !DILocation(line: 102, column: 12, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !2, line: 101, column: 25)
!246 = !DILocation(line: 102, column: 4, scope: !245)
!247 = !DILocation(line: 127, column: 4, scope: !245)
!248 = !DILocation(line: 129, column: 4, scope: !231)
!249 = distinct !DISubprogram(name: "BZ2_bzlibVersion", scope: !2, file: !2, line: 1411, type: !250, scopeLine: 1412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34)
!250 = !DISubroutineType(types: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!254 = !DILocation(line: 1413, column: 4, scope: !249)
!255 = distinct !DISubprogram(name: "BZ2_bzCompressInit", scope: !2, file: !2, line: 193, type: !256, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!256 = !DISubroutineType(types: !257)
!257 = !{!76, !258, !76, !76, !76}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!259 = !DILocalVariable(name: "strm", arg: 1, scope: !255, file: !2, line: 194, type: !258)
!260 = !DILocation(line: 194, column: 34, scope: !255)
!261 = !DILocalVariable(name: "blockSize100k", arg: 2, scope: !255, file: !2, line: 195, type: !76)
!262 = !DILocation(line: 195, column: 33, scope: !255)
!263 = !DILocalVariable(name: "verbosity", arg: 3, scope: !255, file: !2, line: 196, type: !76)
!264 = !DILocation(line: 196, column: 33, scope: !255)
!265 = !DILocalVariable(name: "workFactor", arg: 4, scope: !255, file: !2, line: 197, type: !76)
!266 = !DILocation(line: 197, column: 33, scope: !255)
!267 = !DILocalVariable(name: "n", scope: !255, file: !2, line: 199, type: !135)
!268 = !DILocation(line: 199, column: 12, scope: !255)
!269 = !DILocalVariable(name: "s", scope: !255, file: !2, line: 200, type: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "EState", file: !56, line: 300, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 231, size: 446144, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !300, !302, !303, !304, !305, !306, !307, !308, !309, !310, !314, !318, !319, !323, !325, !326}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !272, file: !56, line: 233, baseType: !258, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !272, file: !56, line: 237, baseType: !135, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !272, file: !56, line: 238, baseType: !135, size: 32, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in_expect", scope: !272, file: !56, line: 241, baseType: !62, size: 32, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "arr1", scope: !272, file: !56, line: 244, baseType: !61, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "arr2", scope: !272, file: !56, line: 245, baseType: !61, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ftab", scope: !272, file: !56, line: 246, baseType: !61, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "origPtr", scope: !272, file: !56, line: 247, baseType: !135, size: 32, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !272, file: !56, line: 250, baseType: !61, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !272, file: !56, line: 251, baseType: !54, size: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mtfv", scope: !272, file: !56, line: 252, baseType: !58, size: 64, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "zbits", scope: !272, file: !56, line: 253, baseType: !54, size: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "workFactor", scope: !272, file: !56, line: 256, baseType: !135, size: 32, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_ch", scope: !272, file: !56, line: 259, baseType: !62, size: 32, offset: 736)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_len", scope: !272, file: !56, line: 260, baseType: !135, size: 32, offset: 768)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rNToGo", scope: !272, file: !56, line: 261, baseType: !135, size: 32, offset: 800)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rTPos", scope: !272, file: !56, line: 261, baseType: !135, size: 32, offset: 832)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "nblock", scope: !272, file: !56, line: 264, baseType: !135, size: 32, offset: 864)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "nblockMAX", scope: !272, file: !56, line: 265, baseType: !135, size: 32, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "numZ", scope: !272, file: !56, line: 266, baseType: !135, size: 32, offset: 928)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state_out_pos", scope: !272, file: !56, line: 267, baseType: !135, size: 32, offset: 960)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "nInUse", scope: !272, file: !56, line: 270, baseType: !135, size: 32, offset: 992)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "inUse", scope: !272, file: !56, line: 271, baseType: !297, size: 2048, offset: 1024)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2048, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "unseqToSeq", scope: !272, file: !56, line: 272, baseType: !301, size: 2048, offset: 3072)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, elements: !298)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "bsBuff", scope: !272, file: !56, line: 275, baseType: !62, size: 32, offset: 5120)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "bsLive", scope: !272, file: !56, line: 276, baseType: !135, size: 32, offset: 5152)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "blockCRC", scope: !272, file: !56, line: 279, baseType: !62, size: 32, offset: 5184)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "combinedCRC", scope: !272, file: !56, line: 280, baseType: !62, size: 32, offset: 5216)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "verbosity", scope: !272, file: !56, line: 283, baseType: !135, size: 32, offset: 5248)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "blockNo", scope: !272, file: !56, line: 284, baseType: !135, size: 32, offset: 5280)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "blockSize100k", scope: !272, file: !56, line: 285, baseType: !135, size: 32, offset: 5312)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nMTF", scope: !272, file: !56, line: 288, baseType: !135, size: 32, offset: 5344)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mtfFreq", scope: !272, file: !56, line: 289, baseType: !311, size: 8256, offset: 5376)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8256, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 258)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !272, file: !56, line: 290, baseType: !315, size: 144016, offset: 13632)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 144016, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 18002)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "selectorMtf", scope: !272, file: !56, line: 291, baseType: !315, size: 144016, offset: 157648)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !272, file: !56, line: 293, baseType: !320, size: 12384, offset: 301664)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 12384, elements: !321)
!321 = !{!322, !313}
!322 = !DISubrange(count: 6)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !272, file: !56, line: 294, baseType: !324, size: 49536, offset: 314048)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 49536, elements: !321)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "rfreq", scope: !272, file: !56, line: 295, baseType: !324, size: 49536, offset: 363584)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "len_pack", scope: !272, file: !56, line: 297, baseType: !327, size: 33024, offset: 413120)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 33024, elements: !328)
!328 = !{!313, !219}
!329 = !DILocation(line: 200, column: 12, scope: !255)
!330 = !DILocation(line: 202, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !255, file: !2, line: 202, column: 8)
!332 = !DILocation(line: 202, column: 8, scope: !331)
!333 = !DILocation(line: 202, column: 25, scope: !331)
!334 = !DILocation(line: 204, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !255, file: !2, line: 204, column: 8)
!336 = !DILocation(line: 204, column: 13, scope: !335)
!337 = !DILocation(line: 204, column: 21, scope: !335)
!338 = !DILocation(line: 205, column: 8, scope: !335)
!339 = !DILocation(line: 205, column: 22, scope: !335)
!340 = !DILocation(line: 205, column: 26, scope: !335)
!341 = !DILocation(line: 205, column: 29, scope: !335)
!342 = !DILocation(line: 205, column: 43, scope: !335)
!343 = !DILocation(line: 205, column: 47, scope: !335)
!344 = !DILocation(line: 206, column: 8, scope: !335)
!345 = !DILocation(line: 206, column: 19, scope: !335)
!346 = !DILocation(line: 206, column: 23, scope: !335)
!347 = !DILocation(line: 206, column: 26, scope: !335)
!348 = !DILocation(line: 206, column: 37, scope: !335)
!349 = !DILocation(line: 207, column: 6, scope: !335)
!350 = !DILocation(line: 209, column: 8, scope: !351)
!351 = distinct !DILexicalBlock(scope: !255, file: !2, line: 209, column: 8)
!352 = !DILocation(line: 209, column: 19, scope: !351)
!353 = !DILocation(line: 209, column: 36, scope: !351)
!354 = !DILocation(line: 209, column: 25, scope: !351)
!355 = !DILocation(line: 210, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !255, file: !2, line: 210, column: 8)
!357 = !DILocation(line: 210, column: 14, scope: !356)
!358 = !DILocation(line: 210, column: 22, scope: !356)
!359 = !DILocation(line: 210, column: 31, scope: !356)
!360 = !DILocation(line: 210, column: 37, scope: !356)
!361 = !DILocation(line: 210, column: 45, scope: !356)
!362 = !DILocation(line: 211, column: 8, scope: !363)
!363 = distinct !DILexicalBlock(scope: !255, file: !2, line: 211, column: 8)
!364 = !DILocation(line: 211, column: 14, scope: !363)
!365 = !DILocation(line: 211, column: 21, scope: !363)
!366 = !DILocation(line: 211, column: 30, scope: !363)
!367 = !DILocation(line: 211, column: 36, scope: !363)
!368 = !DILocation(line: 211, column: 43, scope: !363)
!369 = !DILocation(line: 213, column: 8, scope: !255)
!370 = !DILocation(line: 213, column: 6, scope: !255)
!371 = !DILocation(line: 214, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !255, file: !2, line: 214, column: 8)
!373 = !DILocation(line: 214, column: 10, scope: !372)
!374 = !DILocation(line: 214, column: 19, scope: !372)
!375 = !DILocation(line: 215, column: 14, scope: !255)
!376 = !DILocation(line: 215, column: 4, scope: !255)
!377 = !DILocation(line: 215, column: 7, scope: !255)
!378 = !DILocation(line: 215, column: 12, scope: !255)
!379 = !DILocation(line: 217, column: 4, scope: !255)
!380 = !DILocation(line: 217, column: 7, scope: !255)
!381 = !DILocation(line: 217, column: 12, scope: !255)
!382 = !DILocation(line: 218, column: 4, scope: !255)
!383 = !DILocation(line: 218, column: 7, scope: !255)
!384 = !DILocation(line: 218, column: 12, scope: !255)
!385 = !DILocation(line: 219, column: 4, scope: !255)
!386 = !DILocation(line: 219, column: 7, scope: !255)
!387 = !DILocation(line: 219, column: 12, scope: !255)
!388 = !DILocation(line: 221, column: 23, scope: !255)
!389 = !DILocation(line: 221, column: 21, scope: !255)
!390 = !DILocation(line: 221, column: 12, scope: !255)
!391 = !DILocation(line: 222, column: 14, scope: !255)
!392 = !DILocation(line: 222, column: 4, scope: !255)
!393 = !DILocation(line: 222, column: 7, scope: !255)
!394 = !DILocation(line: 222, column: 12, scope: !255)
!395 = !DILocation(line: 223, column: 14, scope: !255)
!396 = !DILocation(line: 223, column: 4, scope: !255)
!397 = !DILocation(line: 223, column: 7, scope: !255)
!398 = !DILocation(line: 223, column: 12, scope: !255)
!399 = !DILocation(line: 224, column: 14, scope: !255)
!400 = !DILocation(line: 224, column: 4, scope: !255)
!401 = !DILocation(line: 224, column: 7, scope: !255)
!402 = !DILocation(line: 224, column: 12, scope: !255)
!403 = !DILocation(line: 226, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !255, file: !2, line: 226, column: 8)
!405 = !DILocation(line: 226, column: 11, scope: !404)
!406 = !DILocation(line: 226, column: 16, scope: !404)
!407 = !DILocation(line: 226, column: 24, scope: !404)
!408 = !DILocation(line: 226, column: 27, scope: !404)
!409 = !DILocation(line: 226, column: 30, scope: !404)
!410 = !DILocation(line: 226, column: 35, scope: !404)
!411 = !DILocation(line: 226, column: 43, scope: !404)
!412 = !DILocation(line: 226, column: 46, scope: !404)
!413 = !DILocation(line: 226, column: 49, scope: !404)
!414 = !DILocation(line: 226, column: 54, scope: !404)
!415 = !DILocation(line: 227, column: 11, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 227, column: 11)
!417 = distinct !DILexicalBlock(scope: !404, file: !2, line: 226, column: 63)
!418 = !DILocation(line: 227, column: 14, scope: !416)
!419 = !DILocation(line: 227, column: 19, scope: !416)
!420 = !DILocation(line: 227, column: 28, scope: !416)
!421 = !DILocation(line: 228, column: 11, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !2, line: 228, column: 11)
!423 = !DILocation(line: 228, column: 14, scope: !422)
!424 = !DILocation(line: 228, column: 19, scope: !422)
!425 = !DILocation(line: 228, column: 28, scope: !422)
!426 = !DILocation(line: 229, column: 11, scope: !427)
!427 = distinct !DILexicalBlock(scope: !417, file: !2, line: 229, column: 11)
!428 = !DILocation(line: 229, column: 14, scope: !427)
!429 = !DILocation(line: 229, column: 19, scope: !427)
!430 = !DILocation(line: 229, column: 28, scope: !427)
!431 = !DILocation(line: 230, column: 11, scope: !432)
!432 = distinct !DILexicalBlock(scope: !417, file: !2, line: 230, column: 11)
!433 = !DILocation(line: 230, column: 19, scope: !432)
!434 = !DILocation(line: 230, column: 28, scope: !432)
!435 = !DILocation(line: 231, column: 7, scope: !417)
!436 = !DILocation(line: 234, column: 4, scope: !255)
!437 = !DILocation(line: 234, column: 7, scope: !255)
!438 = !DILocation(line: 234, column: 25, scope: !255)
!439 = !DILocation(line: 235, column: 4, scope: !255)
!440 = !DILocation(line: 235, column: 7, scope: !255)
!441 = !DILocation(line: 235, column: 25, scope: !255)
!442 = !DILocation(line: 236, column: 4, scope: !255)
!443 = !DILocation(line: 236, column: 7, scope: !255)
!444 = !DILocation(line: 236, column: 25, scope: !255)
!445 = !DILocation(line: 237, column: 4, scope: !255)
!446 = !DILocation(line: 237, column: 7, scope: !255)
!447 = !DILocation(line: 237, column: 25, scope: !255)
!448 = !DILocation(line: 238, column: 27, scope: !255)
!449 = !DILocation(line: 238, column: 4, scope: !255)
!450 = !DILocation(line: 238, column: 7, scope: !255)
!451 = !DILocation(line: 238, column: 25, scope: !255)
!452 = !DILocation(line: 239, column: 36, scope: !255)
!453 = !DILocation(line: 239, column: 34, scope: !255)
!454 = !DILocation(line: 239, column: 50, scope: !255)
!455 = !DILocation(line: 239, column: 4, scope: !255)
!456 = !DILocation(line: 239, column: 7, scope: !255)
!457 = !DILocation(line: 239, column: 25, scope: !255)
!458 = !DILocation(line: 240, column: 27, scope: !255)
!459 = !DILocation(line: 240, column: 4, scope: !255)
!460 = !DILocation(line: 240, column: 7, scope: !255)
!461 = !DILocation(line: 240, column: 25, scope: !255)
!462 = !DILocation(line: 241, column: 27, scope: !255)
!463 = !DILocation(line: 241, column: 4, scope: !255)
!464 = !DILocation(line: 241, column: 7, scope: !255)
!465 = !DILocation(line: 241, column: 25, scope: !255)
!466 = !DILocation(line: 243, column: 35, scope: !255)
!467 = !DILocation(line: 243, column: 38, scope: !255)
!468 = !DILocation(line: 243, column: 4, scope: !255)
!469 = !DILocation(line: 243, column: 7, scope: !255)
!470 = !DILocation(line: 243, column: 25, scope: !255)
!471 = !DILocation(line: 244, column: 36, scope: !255)
!472 = !DILocation(line: 244, column: 39, scope: !255)
!473 = !DILocation(line: 244, column: 4, scope: !255)
!474 = !DILocation(line: 244, column: 7, scope: !255)
!475 = !DILocation(line: 244, column: 25, scope: !255)
!476 = !DILocation(line: 245, column: 4, scope: !255)
!477 = !DILocation(line: 245, column: 7, scope: !255)
!478 = !DILocation(line: 245, column: 25, scope: !255)
!479 = !DILocation(line: 246, column: 36, scope: !255)
!480 = !DILocation(line: 246, column: 39, scope: !255)
!481 = !DILocation(line: 246, column: 4, scope: !255)
!482 = !DILocation(line: 246, column: 7, scope: !255)
!483 = !DILocation(line: 246, column: 25, scope: !255)
!484 = !DILocation(line: 248, column: 27, scope: !255)
!485 = !DILocation(line: 248, column: 4, scope: !255)
!486 = !DILocation(line: 248, column: 10, scope: !255)
!487 = !DILocation(line: 248, column: 25, scope: !255)
!488 = !DILocation(line: 249, column: 4, scope: !255)
!489 = !DILocation(line: 249, column: 10, scope: !255)
!490 = !DILocation(line: 249, column: 25, scope: !255)
!491 = !DILocation(line: 250, column: 4, scope: !255)
!492 = !DILocation(line: 250, column: 10, scope: !255)
!493 = !DILocation(line: 250, column: 25, scope: !255)
!494 = !DILocation(line: 251, column: 4, scope: !255)
!495 = !DILocation(line: 251, column: 10, scope: !255)
!496 = !DILocation(line: 251, column: 25, scope: !255)
!497 = !DILocation(line: 252, column: 4, scope: !255)
!498 = !DILocation(line: 252, column: 10, scope: !255)
!499 = !DILocation(line: 252, column: 25, scope: !255)
!500 = !DILocation(line: 253, column: 14, scope: !255)
!501 = !DILocation(line: 253, column: 4, scope: !255)
!502 = !DILocation(line: 254, column: 24, scope: !255)
!503 = !DILocation(line: 254, column: 4, scope: !255)
!504 = !DILocation(line: 255, column: 4, scope: !255)
!505 = !DILocation(line: 256, column: 1, scope: !255)
!506 = distinct !DISubprogram(name: "bz_config_ok", scope: !2, file: !2, line: 136, type: !507, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34)
!507 = !DISubroutineType(types: !508)
!508 = !{!76}
!509 = !DILocation(line: 141, column: 4, scope: !506)
!510 = distinct !DISubprogram(name: "default_bzalloc", scope: !2, file: !2, line: 147, type: !511, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!511 = !DISubroutineType(types: !512)
!512 = !{!53, !53, !135, !135}
!513 = !DILocalVariable(name: "opaque", arg: 1, scope: !510, file: !2, line: 147, type: !53)
!514 = !DILocation(line: 147, column: 31, scope: !510)
!515 = !DILocalVariable(name: "items", arg: 2, scope: !510, file: !2, line: 147, type: !135)
!516 = !DILocation(line: 147, column: 45, scope: !510)
!517 = !DILocalVariable(name: "size", arg: 3, scope: !510, file: !2, line: 147, type: !135)
!518 = !DILocation(line: 147, column: 58, scope: !510)
!519 = !DILocalVariable(name: "v", scope: !510, file: !2, line: 149, type: !53)
!520 = !DILocation(line: 149, column: 10, scope: !510)
!521 = !DILocation(line: 149, column: 23, scope: !510)
!522 = !DILocation(line: 149, column: 31, scope: !510)
!523 = !DILocation(line: 149, column: 29, scope: !510)
!524 = !DILocation(line: 149, column: 14, scope: !510)
!525 = !DILocation(line: 150, column: 11, scope: !510)
!526 = !DILocation(line: 150, column: 4, scope: !510)
!527 = distinct !DISubprogram(name: "default_bzfree", scope: !2, file: !2, line: 154, type: !157, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!528 = !DILocalVariable(name: "opaque", arg: 1, scope: !527, file: !2, line: 154, type: !53)
!529 = !DILocation(line: 154, column: 29, scope: !527)
!530 = !DILocalVariable(name: "addr", arg: 2, scope: !527, file: !2, line: 154, type: !53)
!531 = !DILocation(line: 154, column: 43, scope: !527)
!532 = !DILocation(line: 156, column: 8, scope: !533)
!533 = distinct !DILexicalBlock(scope: !527, file: !2, line: 156, column: 8)
!534 = !DILocation(line: 156, column: 13, scope: !533)
!535 = !DILocation(line: 156, column: 29, scope: !533)
!536 = !DILocation(line: 156, column: 22, scope: !533)
!537 = !DILocation(line: 157, column: 1, scope: !527)
!538 = distinct !DISubprogram(name: "init_RL", scope: !2, file: !2, line: 176, type: !539, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !270}
!541 = !DILocalVariable(name: "s", arg: 1, scope: !538, file: !2, line: 176, type: !270)
!542 = !DILocation(line: 176, column: 24, scope: !538)
!543 = !DILocation(line: 178, column: 4, scope: !538)
!544 = !DILocation(line: 178, column: 7, scope: !538)
!545 = !DILocation(line: 178, column: 20, scope: !538)
!546 = !DILocation(line: 179, column: 4, scope: !538)
!547 = !DILocation(line: 179, column: 7, scope: !538)
!548 = !DILocation(line: 179, column: 20, scope: !538)
!549 = !DILocation(line: 180, column: 1, scope: !538)
!550 = distinct !DISubprogram(name: "prepare_new_block", scope: !2, file: !2, line: 162, type: !539, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!551 = !DILocalVariable(name: "s", arg: 1, scope: !550, file: !2, line: 162, type: !270)
!552 = !DILocation(line: 162, column: 34, scope: !550)
!553 = !DILocalVariable(name: "i", scope: !550, file: !2, line: 164, type: !135)
!554 = !DILocation(line: 164, column: 10, scope: !550)
!555 = !DILocation(line: 165, column: 4, scope: !550)
!556 = !DILocation(line: 165, column: 7, scope: !550)
!557 = !DILocation(line: 165, column: 14, scope: !550)
!558 = !DILocation(line: 166, column: 4, scope: !550)
!559 = !DILocation(line: 166, column: 7, scope: !550)
!560 = !DILocation(line: 166, column: 12, scope: !550)
!561 = !DILocation(line: 167, column: 4, scope: !550)
!562 = !DILocation(line: 167, column: 7, scope: !550)
!563 = !DILocation(line: 167, column: 21, scope: !550)
!564 = !DILocation(line: 168, column: 4, scope: !565)
!565 = distinct !DILexicalBlock(scope: !550, file: !2, line: 168, column: 4)
!566 = !DILocation(line: 169, column: 11, scope: !567)
!567 = distinct !DILexicalBlock(scope: !550, file: !2, line: 169, column: 4)
!568 = !DILocation(line: 169, column: 9, scope: !567)
!569 = !DILocation(line: 169, column: 16, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !2, line: 169, column: 4)
!571 = !DILocation(line: 169, column: 18, scope: !570)
!572 = !DILocation(line: 169, column: 4, scope: !567)
!573 = !DILocation(line: 169, column: 30, scope: !570)
!574 = !DILocation(line: 169, column: 33, scope: !570)
!575 = !DILocation(line: 169, column: 39, scope: !570)
!576 = !DILocation(line: 169, column: 42, scope: !570)
!577 = !DILocation(line: 169, column: 26, scope: !570)
!578 = !DILocation(line: 169, column: 4, scope: !570)
!579 = distinct !{!579, !572, !580, !581}
!580 = !DILocation(line: 169, column: 44, scope: !567)
!581 = !{!"llvm.loop.mustprogress"}
!582 = !DILocation(line: 170, column: 4, scope: !550)
!583 = !DILocation(line: 170, column: 7, scope: !550)
!584 = !DILocation(line: 170, column: 14, scope: !550)
!585 = !DILocation(line: 171, column: 1, scope: !550)
!586 = distinct !DISubprogram(name: "BZ2_bzCompress", scope: !2, file: !2, line: 452, type: !587, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!587 = !DISubroutineType(types: !588)
!588 = !{!76, !258, !76}
!589 = !DILocalVariable(name: "strm", arg: 1, scope: !586, file: !2, line: 452, type: !258)
!590 = !DILocation(line: 452, column: 41, scope: !586)
!591 = !DILocalVariable(name: "action", arg: 2, scope: !586, file: !2, line: 452, type: !76)
!592 = !DILocation(line: 452, column: 51, scope: !586)
!593 = !DILocalVariable(name: "progress", scope: !586, file: !2, line: 454, type: !63)
!594 = !DILocation(line: 454, column: 9, scope: !586)
!595 = !DILocalVariable(name: "s", scope: !586, file: !2, line: 455, type: !270)
!596 = !DILocation(line: 455, column: 12, scope: !586)
!597 = !DILocation(line: 456, column: 8, scope: !598)
!598 = distinct !DILexicalBlock(scope: !586, file: !2, line: 456, column: 8)
!599 = !DILocation(line: 456, column: 13, scope: !598)
!600 = !DILocation(line: 456, column: 22, scope: !598)
!601 = !DILocation(line: 457, column: 8, scope: !586)
!602 = !DILocation(line: 457, column: 14, scope: !586)
!603 = !DILocation(line: 457, column: 6, scope: !586)
!604 = !DILocation(line: 458, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !586, file: !2, line: 458, column: 8)
!606 = !DILocation(line: 458, column: 10, scope: !605)
!607 = !DILocation(line: 458, column: 19, scope: !605)
!608 = !DILocation(line: 459, column: 8, scope: !609)
!609 = distinct !DILexicalBlock(scope: !586, file: !2, line: 459, column: 8)
!610 = !DILocation(line: 459, column: 11, scope: !609)
!611 = !DILocation(line: 459, column: 19, scope: !609)
!612 = !DILocation(line: 459, column: 16, scope: !609)
!613 = !DILocation(line: 459, column: 25, scope: !609)
!614 = !DILabel(scope: !586, name: "preswitch", file: !2, line: 461, column: 4)
!615 = !DILocation(line: 461, column: 4, scope: !586)
!616 = !DILocation(line: 462, column: 12, scope: !586)
!617 = !DILocation(line: 462, column: 15, scope: !586)
!618 = !DILocation(line: 462, column: 4, scope: !586)
!619 = !DILocation(line: 465, column: 10, scope: !620)
!620 = distinct !DILexicalBlock(scope: !586, file: !2, line: 462, column: 21)
!621 = !DILocation(line: 468, column: 14, scope: !622)
!622 = distinct !DILexicalBlock(scope: !620, file: !2, line: 468, column: 14)
!623 = !DILocation(line: 468, column: 21, scope: !622)
!624 = !DILocation(line: 469, column: 42, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !2, line: 468, column: 32)
!626 = !DILocation(line: 469, column: 24, scope: !625)
!627 = !DILocation(line: 469, column: 22, scope: !625)
!628 = !DILocation(line: 470, column: 20, scope: !625)
!629 = !DILocation(line: 470, column: 13, scope: !625)
!630 = !DILocation(line: 473, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !622, file: !2, line: 473, column: 7)
!632 = !DILocation(line: 473, column: 14, scope: !631)
!633 = !DILocation(line: 474, column: 34, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !2, line: 473, column: 27)
!635 = !DILocation(line: 474, column: 40, scope: !634)
!636 = !DILocation(line: 474, column: 13, scope: !634)
!637 = !DILocation(line: 474, column: 16, scope: !634)
!638 = !DILocation(line: 474, column: 32, scope: !634)
!639 = !DILocation(line: 475, column: 13, scope: !634)
!640 = !DILocation(line: 475, column: 16, scope: !634)
!641 = !DILocation(line: 475, column: 21, scope: !634)
!642 = !DILocation(line: 476, column: 13, scope: !634)
!643 = !DILocation(line: 479, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !631, file: !2, line: 479, column: 14)
!645 = !DILocation(line: 479, column: 21, scope: !644)
!646 = !DILocation(line: 480, column: 34, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !2, line: 479, column: 35)
!648 = !DILocation(line: 480, column: 40, scope: !647)
!649 = !DILocation(line: 480, column: 13, scope: !647)
!650 = !DILocation(line: 480, column: 16, scope: !647)
!651 = !DILocation(line: 480, column: 32, scope: !647)
!652 = !DILocation(line: 481, column: 13, scope: !647)
!653 = !DILocation(line: 481, column: 16, scope: !647)
!654 = !DILocation(line: 481, column: 21, scope: !647)
!655 = !DILocation(line: 482, column: 13, scope: !647)
!656 = !DILocation(line: 485, column: 13, scope: !644)
!657 = !DILocation(line: 488, column: 14, scope: !658)
!658 = distinct !DILexicalBlock(scope: !620, file: !2, line: 488, column: 14)
!659 = !DILocation(line: 488, column: 21, scope: !658)
!660 = !DILocation(line: 488, column: 34, scope: !658)
!661 = !DILocation(line: 489, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !620, file: !2, line: 489, column: 14)
!663 = !DILocation(line: 489, column: 17, scope: !662)
!664 = !DILocation(line: 489, column: 36, scope: !662)
!665 = !DILocation(line: 489, column: 39, scope: !662)
!666 = !DILocation(line: 489, column: 45, scope: !662)
!667 = !DILocation(line: 489, column: 33, scope: !662)
!668 = !DILocation(line: 490, column: 13, scope: !662)
!669 = !DILocation(line: 491, column: 39, scope: !620)
!670 = !DILocation(line: 491, column: 21, scope: !620)
!671 = !DILocation(line: 491, column: 19, scope: !620)
!672 = !DILocation(line: 492, column: 14, scope: !673)
!673 = distinct !DILexicalBlock(scope: !620, file: !2, line: 492, column: 14)
!674 = !DILocation(line: 492, column: 17, scope: !673)
!675 = !DILocation(line: 492, column: 33, scope: !673)
!676 = !DILocation(line: 492, column: 37, scope: !673)
!677 = !DILocation(line: 492, column: 52, scope: !673)
!678 = !DILocation(line: 492, column: 41, scope: !673)
!679 = !DILocation(line: 492, column: 55, scope: !673)
!680 = !DILocation(line: 493, column: 14, scope: !673)
!681 = !DILocation(line: 493, column: 17, scope: !673)
!682 = !DILocation(line: 493, column: 33, scope: !673)
!683 = !DILocation(line: 493, column: 36, scope: !673)
!684 = !DILocation(line: 493, column: 31, scope: !673)
!685 = !DILocation(line: 493, column: 42, scope: !673)
!686 = !DILocation(line: 494, column: 10, scope: !620)
!687 = !DILocation(line: 494, column: 13, scope: !620)
!688 = !DILocation(line: 494, column: 18, scope: !620)
!689 = !DILocation(line: 495, column: 10, scope: !620)
!690 = !DILocation(line: 498, column: 14, scope: !691)
!691 = distinct !DILexicalBlock(scope: !620, file: !2, line: 498, column: 14)
!692 = !DILocation(line: 498, column: 21, scope: !691)
!693 = !DILocation(line: 498, column: 35, scope: !691)
!694 = !DILocation(line: 499, column: 14, scope: !695)
!695 = distinct !DILexicalBlock(scope: !620, file: !2, line: 499, column: 14)
!696 = !DILocation(line: 499, column: 17, scope: !695)
!697 = !DILocation(line: 499, column: 36, scope: !695)
!698 = !DILocation(line: 499, column: 39, scope: !695)
!699 = !DILocation(line: 499, column: 45, scope: !695)
!700 = !DILocation(line: 499, column: 33, scope: !695)
!701 = !DILocation(line: 500, column: 13, scope: !695)
!702 = !DILocation(line: 501, column: 39, scope: !620)
!703 = !DILocation(line: 501, column: 21, scope: !620)
!704 = !DILocation(line: 501, column: 19, scope: !620)
!705 = !DILocation(line: 502, column: 15, scope: !706)
!706 = distinct !DILexicalBlock(scope: !620, file: !2, line: 502, column: 14)
!707 = !DILocation(line: 502, column: 14, scope: !706)
!708 = !DILocation(line: 502, column: 25, scope: !706)
!709 = !DILocation(line: 503, column: 14, scope: !710)
!710 = distinct !DILexicalBlock(scope: !620, file: !2, line: 503, column: 14)
!711 = !DILocation(line: 503, column: 17, scope: !710)
!712 = !DILocation(line: 503, column: 33, scope: !710)
!713 = !DILocation(line: 503, column: 37, scope: !710)
!714 = !DILocation(line: 503, column: 52, scope: !710)
!715 = !DILocation(line: 503, column: 41, scope: !710)
!716 = !DILocation(line: 503, column: 55, scope: !710)
!717 = !DILocation(line: 504, column: 14, scope: !710)
!718 = !DILocation(line: 504, column: 17, scope: !710)
!719 = !DILocation(line: 504, column: 33, scope: !710)
!720 = !DILocation(line: 504, column: 36, scope: !710)
!721 = !DILocation(line: 504, column: 31, scope: !710)
!722 = !DILocation(line: 504, column: 42, scope: !710)
!723 = !DILocation(line: 505, column: 10, scope: !620)
!724 = !DILocation(line: 505, column: 13, scope: !620)
!725 = !DILocation(line: 505, column: 18, scope: !620)
!726 = !DILocation(line: 506, column: 10, scope: !620)
!727 = !DILocation(line: 508, column: 4, scope: !586)
!728 = !DILocation(line: 509, column: 1, scope: !586)
!729 = distinct !DISubprogram(name: "handle_compress", scope: !2, file: !2, line: 406, type: !730, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!730 = !DISubroutineType(types: !731)
!731 = !{!63, !258}
!732 = !DILocalVariable(name: "strm", arg: 1, scope: !729, file: !2, line: 406, type: !258)
!733 = !DILocation(line: 406, column: 35, scope: !729)
!734 = !DILocalVariable(name: "progress_in", scope: !729, file: !2, line: 408, type: !63)
!735 = !DILocation(line: 408, column: 9, scope: !729)
!736 = !DILocalVariable(name: "progress_out", scope: !729, file: !2, line: 409, type: !63)
!737 = !DILocation(line: 409, column: 9, scope: !729)
!738 = !DILocalVariable(name: "s", scope: !729, file: !2, line: 410, type: !270)
!739 = !DILocation(line: 410, column: 12, scope: !729)
!740 = !DILocation(line: 410, column: 16, scope: !729)
!741 = !DILocation(line: 410, column: 22, scope: !729)
!742 = !DILocation(line: 412, column: 4, scope: !729)
!743 = !DILocation(line: 414, column: 11, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !2, line: 414, column: 11)
!745 = distinct !DILexicalBlock(scope: !729, file: !2, line: 412, column: 17)
!746 = !DILocation(line: 414, column: 14, scope: !744)
!747 = !DILocation(line: 414, column: 20, scope: !744)
!748 = !DILocation(line: 415, column: 51, scope: !749)
!749 = distinct !DILexicalBlock(scope: !744, file: !2, line: 414, column: 36)
!750 = !DILocation(line: 415, column: 26, scope: !749)
!751 = !DILocation(line: 415, column: 23, scope: !749)
!752 = !DILocation(line: 416, column: 14, scope: !753)
!753 = distinct !DILexicalBlock(scope: !749, file: !2, line: 416, column: 14)
!754 = !DILocation(line: 416, column: 17, scope: !753)
!755 = !DILocation(line: 416, column: 33, scope: !753)
!756 = !DILocation(line: 416, column: 36, scope: !753)
!757 = !DILocation(line: 416, column: 31, scope: !753)
!758 = !DILocation(line: 416, column: 42, scope: !753)
!759 = !DILocation(line: 417, column: 14, scope: !760)
!760 = distinct !DILexicalBlock(scope: !749, file: !2, line: 417, column: 14)
!761 = !DILocation(line: 417, column: 17, scope: !760)
!762 = !DILocation(line: 417, column: 22, scope: !760)
!763 = !DILocation(line: 417, column: 40, scope: !760)
!764 = !DILocation(line: 418, column: 14, scope: !760)
!765 = !DILocation(line: 418, column: 17, scope: !760)
!766 = !DILocation(line: 418, column: 33, scope: !760)
!767 = !DILocation(line: 418, column: 38, scope: !760)
!768 = !DILocation(line: 419, column: 25, scope: !760)
!769 = !DILocation(line: 419, column: 14, scope: !760)
!770 = !DILocation(line: 419, column: 29, scope: !760)
!771 = !DILocation(line: 420, column: 30, scope: !749)
!772 = !DILocation(line: 420, column: 10, scope: !749)
!773 = !DILocation(line: 421, column: 10, scope: !749)
!774 = !DILocation(line: 421, column: 13, scope: !749)
!775 = !DILocation(line: 421, column: 19, scope: !749)
!776 = !DILocation(line: 422, column: 14, scope: !777)
!777 = distinct !DILexicalBlock(scope: !749, file: !2, line: 422, column: 14)
!778 = !DILocation(line: 422, column: 17, scope: !777)
!779 = !DILocation(line: 422, column: 22, scope: !777)
!780 = !DILocation(line: 422, column: 39, scope: !777)
!781 = !DILocation(line: 423, column: 14, scope: !777)
!782 = !DILocation(line: 423, column: 17, scope: !777)
!783 = !DILocation(line: 423, column: 33, scope: !777)
!784 = !DILocation(line: 423, column: 38, scope: !777)
!785 = !DILocation(line: 424, column: 25, scope: !777)
!786 = !DILocation(line: 424, column: 14, scope: !777)
!787 = !DILocation(line: 424, column: 29, scope: !777)
!788 = !DILocation(line: 425, column: 7, scope: !749)
!789 = !DILocation(line: 427, column: 11, scope: !790)
!790 = distinct !DILexicalBlock(scope: !745, file: !2, line: 427, column: 11)
!791 = !DILocation(line: 427, column: 14, scope: !790)
!792 = !DILocation(line: 427, column: 20, scope: !790)
!793 = !DILocation(line: 428, column: 49, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !2, line: 427, column: 35)
!795 = !DILocation(line: 428, column: 25, scope: !794)
!796 = !DILocation(line: 428, column: 22, scope: !794)
!797 = !DILocation(line: 429, column: 14, scope: !798)
!798 = distinct !DILexicalBlock(scope: !794, file: !2, line: 429, column: 14)
!799 = !DILocation(line: 429, column: 17, scope: !798)
!800 = !DILocation(line: 429, column: 22, scope: !798)
!801 = !DILocation(line: 429, column: 38, scope: !798)
!802 = !DILocation(line: 429, column: 41, scope: !798)
!803 = !DILocation(line: 429, column: 44, scope: !798)
!804 = !DILocation(line: 429, column: 60, scope: !798)
!805 = !DILocation(line: 430, column: 24, scope: !806)
!806 = distinct !DILexicalBlock(scope: !798, file: !2, line: 429, column: 66)
!807 = !DILocation(line: 430, column: 13, scope: !806)
!808 = !DILocation(line: 431, column: 33, scope: !806)
!809 = !DILocation(line: 431, column: 43, scope: !806)
!810 = !DILocation(line: 431, column: 46, scope: !806)
!811 = !DILocation(line: 431, column: 51, scope: !806)
!812 = !DILocation(line: 431, column: 36, scope: !806)
!813 = !DILocation(line: 431, column: 13, scope: !806)
!814 = !DILocation(line: 432, column: 13, scope: !806)
!815 = !DILocation(line: 432, column: 16, scope: !806)
!816 = !DILocation(line: 432, column: 22, scope: !806)
!817 = !DILocation(line: 433, column: 10, scope: !806)
!818 = !DILocation(line: 435, column: 14, scope: !819)
!819 = distinct !DILexicalBlock(scope: !798, file: !2, line: 435, column: 14)
!820 = !DILocation(line: 435, column: 17, scope: !819)
!821 = !DILocation(line: 435, column: 27, scope: !819)
!822 = !DILocation(line: 435, column: 30, scope: !819)
!823 = !DILocation(line: 435, column: 24, scope: !819)
!824 = !DILocation(line: 436, column: 33, scope: !825)
!825 = distinct !DILexicalBlock(scope: !819, file: !2, line: 435, column: 41)
!826 = !DILocation(line: 436, column: 13, scope: !825)
!827 = !DILocation(line: 437, column: 13, scope: !825)
!828 = !DILocation(line: 437, column: 16, scope: !825)
!829 = !DILocation(line: 437, column: 22, scope: !825)
!830 = !DILocation(line: 438, column: 10, scope: !825)
!831 = !DILocation(line: 440, column: 14, scope: !832)
!832 = distinct !DILexicalBlock(scope: !819, file: !2, line: 440, column: 14)
!833 = !DILocation(line: 440, column: 17, scope: !832)
!834 = !DILocation(line: 440, column: 23, scope: !832)
!835 = !DILocation(line: 440, column: 32, scope: !832)
!836 = !DILocation(line: 441, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !2, line: 440, column: 38)
!838 = !DILocation(line: 443, column: 7, scope: !794)
!839 = distinct !{!839, !742, !840}
!840 = !DILocation(line: 445, column: 4, scope: !729)
!841 = !DILocation(line: 447, column: 11, scope: !729)
!842 = !DILocation(line: 447, column: 23, scope: !729)
!843 = !DILocation(line: 447, column: 26, scope: !729)
!844 = !DILocation(line: 447, column: 4, scope: !729)
!845 = distinct !DISubprogram(name: "isempty_RL", scope: !2, file: !2, line: 184, type: !846, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!846 = !DISubroutineType(types: !847)
!847 = !{!63, !270}
!848 = !DILocalVariable(name: "s", arg: 1, scope: !845, file: !2, line: 184, type: !270)
!849 = !DILocation(line: 184, column: 27, scope: !845)
!850 = !DILocation(line: 186, column: 8, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !2, line: 186, column: 8)
!852 = !DILocation(line: 186, column: 11, scope: !851)
!853 = !DILocation(line: 186, column: 23, scope: !851)
!854 = !DILocation(line: 186, column: 29, scope: !851)
!855 = !DILocation(line: 186, column: 32, scope: !851)
!856 = !DILocation(line: 186, column: 35, scope: !851)
!857 = !DILocation(line: 186, column: 48, scope: !851)
!858 = !DILocation(line: 187, column: 7, scope: !851)
!859 = !DILocation(line: 188, column: 7, scope: !851)
!860 = !DILocation(line: 189, column: 1, scope: !845)
!861 = distinct !DISubprogram(name: "BZ2_bzCompressEnd", scope: !2, file: !2, line: 513, type: !862, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!862 = !DISubroutineType(types: !863)
!863 = !{!76, !258}
!864 = !DILocalVariable(name: "strm", arg: 1, scope: !861, file: !2, line: 513, type: !258)
!865 = !DILocation(line: 513, column: 45, scope: !861)
!866 = !DILocalVariable(name: "s", scope: !861, file: !2, line: 515, type: !270)
!867 = !DILocation(line: 515, column: 12, scope: !861)
!868 = !DILocation(line: 516, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !861, file: !2, line: 516, column: 8)
!870 = !DILocation(line: 516, column: 13, scope: !869)
!871 = !DILocation(line: 516, column: 22, scope: !869)
!872 = !DILocation(line: 517, column: 8, scope: !861)
!873 = !DILocation(line: 517, column: 14, scope: !861)
!874 = !DILocation(line: 517, column: 6, scope: !861)
!875 = !DILocation(line: 518, column: 8, scope: !876)
!876 = distinct !DILexicalBlock(scope: !861, file: !2, line: 518, column: 8)
!877 = !DILocation(line: 518, column: 10, scope: !876)
!878 = !DILocation(line: 518, column: 19, scope: !876)
!879 = !DILocation(line: 519, column: 8, scope: !880)
!880 = distinct !DILexicalBlock(scope: !861, file: !2, line: 519, column: 8)
!881 = !DILocation(line: 519, column: 11, scope: !880)
!882 = !DILocation(line: 519, column: 19, scope: !880)
!883 = !DILocation(line: 519, column: 16, scope: !880)
!884 = !DILocation(line: 519, column: 25, scope: !880)
!885 = !DILocation(line: 521, column: 8, scope: !886)
!886 = distinct !DILexicalBlock(scope: !861, file: !2, line: 521, column: 8)
!887 = !DILocation(line: 521, column: 11, scope: !886)
!888 = !DILocation(line: 521, column: 16, scope: !886)
!889 = !DILocation(line: 521, column: 25, scope: !886)
!890 = !DILocation(line: 522, column: 8, scope: !891)
!891 = distinct !DILexicalBlock(scope: !861, file: !2, line: 522, column: 8)
!892 = !DILocation(line: 522, column: 11, scope: !891)
!893 = !DILocation(line: 522, column: 16, scope: !891)
!894 = !DILocation(line: 522, column: 25, scope: !891)
!895 = !DILocation(line: 523, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !861, file: !2, line: 523, column: 8)
!897 = !DILocation(line: 523, column: 11, scope: !896)
!898 = !DILocation(line: 523, column: 16, scope: !896)
!899 = !DILocation(line: 523, column: 25, scope: !896)
!900 = !DILocation(line: 524, column: 4, scope: !861)
!901 = !DILocation(line: 526, column: 4, scope: !861)
!902 = !DILocation(line: 526, column: 10, scope: !861)
!903 = !DILocation(line: 526, column: 16, scope: !861)
!904 = !DILocation(line: 528, column: 4, scope: !861)
!905 = !DILocation(line: 529, column: 1, scope: !861)
!906 = distinct !DISubprogram(name: "BZ2_bzDecompressInit", scope: !2, file: !2, line: 537, type: !907, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!907 = !DISubroutineType(types: !908)
!908 = !{!76, !258, !76, !76}
!909 = !DILocalVariable(name: "strm", arg: 1, scope: !906, file: !2, line: 538, type: !258)
!910 = !DILocation(line: 538, column: 35, scope: !906)
!911 = !DILocalVariable(name: "verbosity", arg: 2, scope: !906, file: !2, line: 539, type: !76)
!912 = !DILocation(line: 539, column: 35, scope: !906)
!913 = !DILocalVariable(name: "small", arg: 3, scope: !906, file: !2, line: 540, type: !76)
!914 = !DILocation(line: 540, column: 35, scope: !906)
!915 = !DILocalVariable(name: "s", scope: !906, file: !2, line: 542, type: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "DState", file: !56, line: 472, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 382, size: 513152, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !938, !939, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !955, !956, !960, !962, !963, !964, !965, !966, !967, !968, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !994, !995}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !918, file: !56, line: 384, baseType: !258, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !918, file: !56, line: 387, baseType: !135, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "state_out_ch", scope: !918, file: !56, line: 390, baseType: !55, size: 8, offset: 96)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "state_out_len", scope: !918, file: !56, line: 391, baseType: !135, size: 32, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "blockRandomised", scope: !918, file: !56, line: 392, baseType: !63, size: 8, offset: 160)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rNToGo", scope: !918, file: !56, line: 393, baseType: !135, size: 32, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rTPos", scope: !918, file: !56, line: 393, baseType: !135, size: 32, offset: 224)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "bsBuff", scope: !918, file: !56, line: 396, baseType: !62, size: 32, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bsLive", scope: !918, file: !56, line: 397, baseType: !135, size: 32, offset: 288)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "blockSize100k", scope: !918, file: !56, line: 400, baseType: !135, size: 32, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "smallDecompress", scope: !918, file: !56, line: 401, baseType: !63, size: 8, offset: 352)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "currBlockNo", scope: !918, file: !56, line: 402, baseType: !135, size: 32, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "verbosity", scope: !918, file: !56, line: 403, baseType: !135, size: 32, offset: 416)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "origPtr", scope: !918, file: !56, line: 406, baseType: !135, size: 32, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "tPos", scope: !918, file: !56, line: 407, baseType: !62, size: 32, offset: 480)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "k0", scope: !918, file: !56, line: 408, baseType: !135, size: 32, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "unzftab", scope: !918, file: !56, line: 409, baseType: !937, size: 8192, offset: 544)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8192, elements: !298)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nblock_used", scope: !918, file: !56, line: 410, baseType: !135, size: 32, offset: 8736)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cftab", scope: !918, file: !56, line: 411, baseType: !940, size: 8224, offset: 8768)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8224, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 257)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "cftabCopy", scope: !918, file: !56, line: 412, baseType: !940, size: 8224, offset: 16992)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !918, file: !56, line: 415, baseType: !61, size: 64, offset: 25216)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ll16", scope: !918, file: !56, line: 418, baseType: !58, size: 64, offset: 25280)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ll4", scope: !918, file: !56, line: 419, baseType: !54, size: 64, offset: 25344)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "storedBlockCRC", scope: !918, file: !56, line: 422, baseType: !62, size: 32, offset: 25408)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "storedCombinedCRC", scope: !918, file: !56, line: 423, baseType: !62, size: 32, offset: 25440)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "calculatedBlockCRC", scope: !918, file: !56, line: 424, baseType: !62, size: 32, offset: 25472)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "calculatedCombinedCRC", scope: !918, file: !56, line: 425, baseType: !62, size: 32, offset: 25504)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nInUse", scope: !918, file: !56, line: 428, baseType: !135, size: 32, offset: 25536)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "inUse", scope: !918, file: !56, line: 429, baseType: !297, size: 2048, offset: 25568)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "inUse16", scope: !918, file: !56, line: 430, baseType: !954, size: 128, offset: 27616)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !221)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "seqToUnseq", scope: !918, file: !56, line: 431, baseType: !301, size: 2048, offset: 27744)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mtfa", scope: !918, file: !56, line: 434, baseType: !957, size: 32768, offset: 29792)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32768, elements: !958)
!958 = !{!959}
!959 = !DISubrange(count: 4096)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mtfbase", scope: !918, file: !56, line: 435, baseType: !961, size: 512, offset: 62560)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 512, elements: !221)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !918, file: !56, line: 436, baseType: !315, size: 144016, offset: 63072)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "selectorMtf", scope: !918, file: !56, line: 437, baseType: !315, size: 144016, offset: 207088)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !918, file: !56, line: 438, baseType: !320, size: 12384, offset: 351104)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !918, file: !56, line: 440, baseType: !324, size: 49536, offset: 363488)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !918, file: !56, line: 441, baseType: !324, size: 49536, offset: 413024)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !918, file: !56, line: 442, baseType: !324, size: 49536, offset: 462560)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "minLens", scope: !918, file: !56, line: 443, baseType: !969, size: 192, offset: 512096)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 192, elements: !970)
!970 = !{!322}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "save_i", scope: !918, file: !56, line: 446, baseType: !135, size: 32, offset: 512288)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "save_j", scope: !918, file: !56, line: 447, baseType: !135, size: 32, offset: 512320)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "save_t", scope: !918, file: !56, line: 448, baseType: !135, size: 32, offset: 512352)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "save_alphaSize", scope: !918, file: !56, line: 449, baseType: !135, size: 32, offset: 512384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "save_nGroups", scope: !918, file: !56, line: 450, baseType: !135, size: 32, offset: 512416)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "save_nSelectors", scope: !918, file: !56, line: 451, baseType: !135, size: 32, offset: 512448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "save_EOB", scope: !918, file: !56, line: 452, baseType: !135, size: 32, offset: 512480)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "save_groupNo", scope: !918, file: !56, line: 453, baseType: !135, size: 32, offset: 512512)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "save_groupPos", scope: !918, file: !56, line: 454, baseType: !135, size: 32, offset: 512544)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "save_nextSym", scope: !918, file: !56, line: 455, baseType: !135, size: 32, offset: 512576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "save_nblockMAX", scope: !918, file: !56, line: 456, baseType: !135, size: 32, offset: 512608)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "save_nblock", scope: !918, file: !56, line: 457, baseType: !135, size: 32, offset: 512640)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "save_es", scope: !918, file: !56, line: 458, baseType: !135, size: 32, offset: 512672)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "save_N", scope: !918, file: !56, line: 459, baseType: !135, size: 32, offset: 512704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "save_curr", scope: !918, file: !56, line: 460, baseType: !135, size: 32, offset: 512736)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "save_zt", scope: !918, file: !56, line: 461, baseType: !135, size: 32, offset: 512768)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "save_zn", scope: !918, file: !56, line: 462, baseType: !135, size: 32, offset: 512800)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "save_zvec", scope: !918, file: !56, line: 463, baseType: !135, size: 32, offset: 512832)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "save_zj", scope: !918, file: !56, line: 464, baseType: !135, size: 32, offset: 512864)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "save_gSel", scope: !918, file: !56, line: 465, baseType: !135, size: 32, offset: 512896)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "save_gMinlen", scope: !918, file: !56, line: 466, baseType: !135, size: 32, offset: 512928)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "save_gLimit", scope: !918, file: !56, line: 467, baseType: !993, size: 64, offset: 512960)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "save_gBase", scope: !918, file: !56, line: 468, baseType: !993, size: 64, offset: 513024)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "save_gPerm", scope: !918, file: !56, line: 469, baseType: !993, size: 64, offset: 513088)
!996 = !DILocation(line: 542, column: 12, scope: !906)
!997 = !DILocation(line: 544, column: 9, scope: !998)
!998 = distinct !DILexicalBlock(scope: !906, file: !2, line: 544, column: 8)
!999 = !DILocation(line: 544, column: 8, scope: !998)
!1000 = !DILocation(line: 544, column: 25, scope: !998)
!1001 = !DILocation(line: 546, column: 8, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !906, file: !2, line: 546, column: 8)
!1003 = !DILocation(line: 546, column: 13, scope: !1002)
!1004 = !DILocation(line: 546, column: 22, scope: !1002)
!1005 = !DILocation(line: 547, column: 8, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !906, file: !2, line: 547, column: 8)
!1007 = !DILocation(line: 547, column: 14, scope: !1006)
!1008 = !DILocation(line: 547, column: 19, scope: !1006)
!1009 = !DILocation(line: 547, column: 22, scope: !1006)
!1010 = !DILocation(line: 547, column: 28, scope: !1006)
!1011 = !DILocation(line: 547, column: 34, scope: !1006)
!1012 = !DILocation(line: 548, column: 8, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !906, file: !2, line: 548, column: 8)
!1014 = !DILocation(line: 548, column: 18, scope: !1013)
!1015 = !DILocation(line: 548, column: 22, scope: !1013)
!1016 = !DILocation(line: 548, column: 25, scope: !1013)
!1017 = !DILocation(line: 548, column: 35, scope: !1013)
!1018 = !DILocation(line: 548, column: 40, scope: !1013)
!1019 = !DILocation(line: 550, column: 8, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !906, file: !2, line: 550, column: 8)
!1021 = !DILocation(line: 550, column: 14, scope: !1020)
!1022 = !DILocation(line: 550, column: 22, scope: !1020)
!1023 = !DILocation(line: 550, column: 31, scope: !1020)
!1024 = !DILocation(line: 550, column: 37, scope: !1020)
!1025 = !DILocation(line: 550, column: 45, scope: !1020)
!1026 = !DILocation(line: 551, column: 8, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !906, file: !2, line: 551, column: 8)
!1028 = !DILocation(line: 551, column: 14, scope: !1027)
!1029 = !DILocation(line: 551, column: 21, scope: !1027)
!1030 = !DILocation(line: 551, column: 30, scope: !1027)
!1031 = !DILocation(line: 551, column: 36, scope: !1027)
!1032 = !DILocation(line: 551, column: 43, scope: !1027)
!1033 = !DILocation(line: 553, column: 8, scope: !906)
!1034 = !DILocation(line: 553, column: 6, scope: !906)
!1035 = !DILocation(line: 554, column: 8, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !906, file: !2, line: 554, column: 8)
!1037 = !DILocation(line: 554, column: 10, scope: !1036)
!1038 = !DILocation(line: 554, column: 19, scope: !1036)
!1039 = !DILocation(line: 555, column: 31, scope: !906)
!1040 = !DILocation(line: 555, column: 4, scope: !906)
!1041 = !DILocation(line: 555, column: 7, scope: !906)
!1042 = !DILocation(line: 555, column: 29, scope: !906)
!1043 = !DILocation(line: 556, column: 31, scope: !906)
!1044 = !DILocation(line: 556, column: 4, scope: !906)
!1045 = !DILocation(line: 556, column: 10, scope: !906)
!1046 = !DILocation(line: 556, column: 29, scope: !906)
!1047 = !DILocation(line: 557, column: 4, scope: !906)
!1048 = !DILocation(line: 557, column: 7, scope: !906)
!1049 = !DILocation(line: 557, column: 29, scope: !906)
!1050 = !DILocation(line: 558, column: 4, scope: !906)
!1051 = !DILocation(line: 558, column: 7, scope: !906)
!1052 = !DILocation(line: 558, column: 29, scope: !906)
!1053 = !DILocation(line: 559, column: 4, scope: !906)
!1054 = !DILocation(line: 559, column: 7, scope: !906)
!1055 = !DILocation(line: 559, column: 29, scope: !906)
!1056 = !DILocation(line: 560, column: 4, scope: !906)
!1057 = !DILocation(line: 560, column: 7, scope: !906)
!1058 = !DILocation(line: 560, column: 29, scope: !906)
!1059 = !DILocation(line: 561, column: 4, scope: !906)
!1060 = !DILocation(line: 561, column: 10, scope: !906)
!1061 = !DILocation(line: 561, column: 29, scope: !906)
!1062 = !DILocation(line: 562, column: 4, scope: !906)
!1063 = !DILocation(line: 562, column: 10, scope: !906)
!1064 = !DILocation(line: 562, column: 29, scope: !906)
!1065 = !DILocation(line: 563, column: 4, scope: !906)
!1066 = !DILocation(line: 563, column: 10, scope: !906)
!1067 = !DILocation(line: 563, column: 29, scope: !906)
!1068 = !DILocation(line: 564, column: 4, scope: !906)
!1069 = !DILocation(line: 564, column: 10, scope: !906)
!1070 = !DILocation(line: 564, column: 29, scope: !906)
!1071 = !DILocation(line: 565, column: 37, scope: !906)
!1072 = !DILocation(line: 565, column: 31, scope: !906)
!1073 = !DILocation(line: 565, column: 4, scope: !906)
!1074 = !DILocation(line: 565, column: 7, scope: !906)
!1075 = !DILocation(line: 565, column: 29, scope: !906)
!1076 = !DILocation(line: 566, column: 4, scope: !906)
!1077 = !DILocation(line: 566, column: 7, scope: !906)
!1078 = !DILocation(line: 566, column: 29, scope: !906)
!1079 = !DILocation(line: 567, column: 4, scope: !906)
!1080 = !DILocation(line: 567, column: 7, scope: !906)
!1081 = !DILocation(line: 567, column: 29, scope: !906)
!1082 = !DILocation(line: 568, column: 4, scope: !906)
!1083 = !DILocation(line: 568, column: 7, scope: !906)
!1084 = !DILocation(line: 568, column: 29, scope: !906)
!1085 = !DILocation(line: 569, column: 4, scope: !906)
!1086 = !DILocation(line: 569, column: 7, scope: !906)
!1087 = !DILocation(line: 569, column: 29, scope: !906)
!1088 = !DILocation(line: 570, column: 31, scope: !906)
!1089 = !DILocation(line: 570, column: 4, scope: !906)
!1090 = !DILocation(line: 570, column: 7, scope: !906)
!1091 = !DILocation(line: 570, column: 29, scope: !906)
!1092 = !DILocation(line: 572, column: 4, scope: !906)
!1093 = !DILocation(line: 573, column: 1, scope: !906)
!1094 = distinct !DISubprogram(name: "BZ2_indexIntoF", scope: !2, file: !2, line: 731, type: !1095, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!135, !135, !993}
!1097 = !DILocalVariable(name: "indx", arg: 1, scope: !1094, file: !2, line: 731, type: !135)
!1098 = !DILocation(line: 731, column: 41, scope: !1094)
!1099 = !DILocalVariable(name: "cftab", arg: 2, scope: !1094, file: !2, line: 731, type: !993)
!1100 = !DILocation(line: 731, column: 54, scope: !1094)
!1101 = !DILocalVariable(name: "nb", scope: !1094, file: !2, line: 733, type: !135)
!1102 = !DILocation(line: 733, column: 10, scope: !1094)
!1103 = !DILocalVariable(name: "na", scope: !1094, file: !2, line: 733, type: !135)
!1104 = !DILocation(line: 733, column: 14, scope: !1094)
!1105 = !DILocalVariable(name: "mid", scope: !1094, file: !2, line: 733, type: !135)
!1106 = !DILocation(line: 733, column: 18, scope: !1094)
!1107 = !DILocation(line: 734, column: 7, scope: !1094)
!1108 = !DILocation(line: 735, column: 7, scope: !1094)
!1109 = !DILocation(line: 736, column: 4, scope: !1094)
!1110 = !DILocation(line: 737, column: 14, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 736, column: 7)
!1112 = !DILocation(line: 737, column: 19, scope: !1111)
!1113 = !DILocation(line: 737, column: 17, scope: !1111)
!1114 = !DILocation(line: 737, column: 23, scope: !1111)
!1115 = !DILocation(line: 737, column: 11, scope: !1111)
!1116 = !DILocation(line: 738, column: 11, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 738, column: 11)
!1118 = !DILocation(line: 738, column: 19, scope: !1117)
!1119 = !DILocation(line: 738, column: 25, scope: !1117)
!1120 = !DILocation(line: 738, column: 16, scope: !1117)
!1121 = !DILocation(line: 738, column: 36, scope: !1117)
!1122 = !DILocation(line: 738, column: 34, scope: !1117)
!1123 = !DILocation(line: 738, column: 31, scope: !1117)
!1124 = !DILocation(line: 738, column: 51, scope: !1117)
!1125 = !DILocation(line: 738, column: 49, scope: !1117)
!1126 = !DILocation(line: 739, column: 4, scope: !1111)
!1127 = !DILocation(line: 740, column: 11, scope: !1094)
!1128 = !DILocation(line: 740, column: 16, scope: !1094)
!1129 = !DILocation(line: 740, column: 14, scope: !1094)
!1130 = !DILocation(line: 740, column: 19, scope: !1094)
!1131 = distinct !{!1131, !1109, !1132, !581}
!1132 = !DILocation(line: 740, column: 23, scope: !1094)
!1133 = !DILocation(line: 741, column: 11, scope: !1094)
!1134 = !DILocation(line: 741, column: 4, scope: !1094)
!1135 = distinct !DISubprogram(name: "BZ2_bzDecompress", scope: !2, file: !2, line: 852, type: !862, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!1136 = !DILocalVariable(name: "strm", arg: 1, scope: !1135, file: !2, line: 852, type: !258)
!1137 = !DILocation(line: 852, column: 43, scope: !1135)
!1138 = !DILocalVariable(name: "corrupt", scope: !1135, file: !2, line: 854, type: !63)
!1139 = !DILocation(line: 854, column: 12, scope: !1135)
!1140 = !DILocalVariable(name: "s", scope: !1135, file: !2, line: 855, type: !916)
!1141 = !DILocation(line: 855, column: 12, scope: !1135)
!1142 = !DILocation(line: 856, column: 8, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 856, column: 8)
!1144 = !DILocation(line: 856, column: 13, scope: !1143)
!1145 = !DILocation(line: 856, column: 22, scope: !1143)
!1146 = !DILocation(line: 857, column: 8, scope: !1135)
!1147 = !DILocation(line: 857, column: 14, scope: !1135)
!1148 = !DILocation(line: 857, column: 6, scope: !1135)
!1149 = !DILocation(line: 858, column: 8, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 858, column: 8)
!1151 = !DILocation(line: 858, column: 10, scope: !1150)
!1152 = !DILocation(line: 858, column: 19, scope: !1150)
!1153 = !DILocation(line: 859, column: 8, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 859, column: 8)
!1155 = !DILocation(line: 859, column: 11, scope: !1154)
!1156 = !DILocation(line: 859, column: 19, scope: !1154)
!1157 = !DILocation(line: 859, column: 16, scope: !1154)
!1158 = !DILocation(line: 859, column: 25, scope: !1154)
!1159 = !DILocation(line: 861, column: 4, scope: !1135)
!1160 = !DILocation(line: 862, column: 11, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 862, column: 11)
!1162 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 861, column: 17)
!1163 = !DILocation(line: 862, column: 14, scope: !1161)
!1164 = !DILocation(line: 862, column: 20, scope: !1161)
!1165 = !DILocation(line: 862, column: 34, scope: !1161)
!1166 = !DILocation(line: 863, column: 11, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 863, column: 11)
!1168 = !DILocation(line: 863, column: 14, scope: !1167)
!1169 = !DILocation(line: 863, column: 20, scope: !1167)
!1170 = !DILocation(line: 864, column: 14, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 864, column: 14)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 863, column: 36)
!1173 = !DILocation(line: 864, column: 17, scope: !1171)
!1174 = !DILocation(line: 865, column: 52, scope: !1171)
!1175 = !DILocation(line: 865, column: 23, scope: !1171)
!1176 = !DILocation(line: 865, column: 21, scope: !1171)
!1177 = !DILocation(line: 865, column: 13, scope: !1171)
!1178 = !DILocation(line: 866, column: 52, scope: !1171)
!1179 = !DILocation(line: 866, column: 23, scope: !1171)
!1180 = !DILocation(line: 866, column: 21, scope: !1171)
!1181 = !DILocation(line: 867, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 867, column: 14)
!1183 = !DILocation(line: 867, column: 23, scope: !1182)
!1184 = !DILocation(line: 868, column: 14, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 868, column: 14)
!1186 = !DILocation(line: 868, column: 17, scope: !1185)
!1187 = !DILocation(line: 868, column: 32, scope: !1185)
!1188 = !DILocation(line: 868, column: 35, scope: !1185)
!1189 = !DILocation(line: 868, column: 46, scope: !1185)
!1190 = !DILocation(line: 868, column: 29, scope: !1185)
!1191 = !DILocation(line: 868, column: 49, scope: !1185)
!1192 = !DILocation(line: 868, column: 52, scope: !1185)
!1193 = !DILocation(line: 868, column: 55, scope: !1185)
!1194 = !DILocation(line: 868, column: 69, scope: !1185)
!1195 = !DILocation(line: 869, column: 13, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 869, column: 13)
!1197 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 868, column: 75)
!1198 = !DILocation(line: 870, column: 17, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 870, column: 17)
!1200 = !DILocation(line: 870, column: 20, scope: !1199)
!1201 = !DILocation(line: 870, column: 30, scope: !1199)
!1202 = !DILocation(line: 871, column: 16, scope: !1199)
!1203 = !DILocation(line: 873, column: 17, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 873, column: 17)
!1205 = !DILocation(line: 873, column: 20, scope: !1204)
!1206 = !DILocation(line: 873, column: 30, scope: !1204)
!1207 = !DILocation(line: 873, column: 36, scope: !1204)
!1208 = !DILocation(line: 874, column: 17, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 874, column: 17)
!1210 = !DILocation(line: 874, column: 20, scope: !1209)
!1211 = !DILocation(line: 874, column: 42, scope: !1209)
!1212 = !DILocation(line: 874, column: 45, scope: !1209)
!1213 = !DILocation(line: 874, column: 39, scope: !1209)
!1214 = !DILocation(line: 875, column: 16, scope: !1209)
!1215 = !DILocation(line: 877, column: 19, scope: !1197)
!1216 = !DILocation(line: 877, column: 22, scope: !1197)
!1217 = !DILocation(line: 877, column: 44, scope: !1197)
!1218 = !DILocation(line: 878, column: 22, scope: !1197)
!1219 = !DILocation(line: 878, column: 25, scope: !1197)
!1220 = !DILocation(line: 878, column: 47, scope: !1197)
!1221 = !DILocation(line: 877, column: 50, scope: !1197)
!1222 = !DILocation(line: 876, column: 13, scope: !1197)
!1223 = !DILocation(line: 876, column: 16, scope: !1197)
!1224 = !DILocation(line: 877, column: 16, scope: !1197)
!1225 = !DILocation(line: 879, column: 41, scope: !1197)
!1226 = !DILocation(line: 879, column: 44, scope: !1197)
!1227 = !DILocation(line: 879, column: 13, scope: !1197)
!1228 = !DILocation(line: 879, column: 16, scope: !1197)
!1229 = !DILocation(line: 879, column: 38, scope: !1197)
!1230 = !DILocation(line: 880, column: 13, scope: !1197)
!1231 = !DILocation(line: 880, column: 16, scope: !1197)
!1232 = !DILocation(line: 880, column: 22, scope: !1197)
!1233 = !DILocation(line: 881, column: 10, scope: !1197)
!1234 = !DILocation(line: 882, column: 13, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 881, column: 17)
!1236 = !DILocation(line: 884, column: 7, scope: !1172)
!1237 = !DILocation(line: 885, column: 11, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 885, column: 11)
!1239 = !DILocation(line: 885, column: 14, scope: !1238)
!1240 = !DILocation(line: 885, column: 20, scope: !1238)
!1241 = !DILocalVariable(name: "r", scope: !1242, file: !2, line: 886, type: !135)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 885, column: 37)
!1243 = !DILocation(line: 886, column: 16, scope: !1242)
!1244 = !DILocation(line: 886, column: 37, scope: !1242)
!1245 = !DILocation(line: 886, column: 20, scope: !1242)
!1246 = !DILocation(line: 887, column: 14, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 887, column: 14)
!1248 = !DILocation(line: 887, column: 16, scope: !1247)
!1249 = !DILocation(line: 888, column: 17, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 888, column: 17)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 887, column: 34)
!1252 = !DILocation(line: 888, column: 20, scope: !1250)
!1253 = !DILocation(line: 888, column: 30, scope: !1250)
!1254 = !DILocation(line: 889, column: 16, scope: !1250)
!1255 = !DILocation(line: 891, column: 17, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 891, column: 17)
!1257 = !DILocation(line: 891, column: 20, scope: !1256)
!1258 = !DILocation(line: 891, column: 45, scope: !1256)
!1259 = !DILocation(line: 891, column: 48, scope: !1256)
!1260 = !DILocation(line: 891, column: 42, scope: !1256)
!1261 = !DILocation(line: 892, column: 16, scope: !1256)
!1262 = !DILocation(line: 893, column: 20, scope: !1251)
!1263 = !DILocation(line: 893, column: 13, scope: !1251)
!1264 = !DILocation(line: 895, column: 14, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 895, column: 14)
!1266 = !DILocation(line: 895, column: 17, scope: !1265)
!1267 = !DILocation(line: 895, column: 23, scope: !1265)
!1268 = !DILocation(line: 895, column: 46, scope: !1265)
!1269 = !DILocation(line: 895, column: 39, scope: !1265)
!1270 = !DILocation(line: 896, column: 7, scope: !1242)
!1271 = distinct !{!1271, !1159, !1272}
!1272 = !DILocation(line: 897, column: 4, scope: !1135)
!1273 = !DILocation(line: 902, column: 1, scope: !1135)
!1274 = distinct !DISubprogram(name: "unRLE_obuf_to_output_SMALL", scope: !2, file: !2, line: 750, type: !1275, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!63, !916}
!1277 = !DILocalVariable(name: "s", arg: 1, scope: !1274, file: !2, line: 750, type: !916)
!1278 = !DILocation(line: 750, column: 43, scope: !1274)
!1279 = !DILocalVariable(name: "k1", scope: !1274, file: !2, line: 752, type: !55)
!1280 = !DILocation(line: 752, column: 10, scope: !1274)
!1281 = !DILocation(line: 754, column: 8, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 754, column: 8)
!1283 = !DILocation(line: 754, column: 11, scope: !1282)
!1284 = !DILocation(line: 756, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 754, column: 28)
!1286 = !DILocation(line: 758, column: 10, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 756, column: 20)
!1288 = !DILocation(line: 759, column: 17, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 759, column: 17)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 758, column: 23)
!1291 = !DILocation(line: 759, column: 20, scope: !1289)
!1292 = !DILocation(line: 759, column: 26, scope: !1289)
!1293 = !DILocation(line: 759, column: 36, scope: !1289)
!1294 = !DILocation(line: 759, column: 42, scope: !1289)
!1295 = !DILocation(line: 760, column: 17, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 760, column: 17)
!1297 = !DILocation(line: 760, column: 20, scope: !1296)
!1298 = !DILocation(line: 760, column: 34, scope: !1296)
!1299 = !DILocation(line: 760, column: 40, scope: !1296)
!1300 = !DILocation(line: 761, column: 48, scope: !1290)
!1301 = !DILocation(line: 761, column: 51, scope: !1290)
!1302 = !DILocation(line: 761, column: 25, scope: !1290)
!1303 = !DILocation(line: 761, column: 28, scope: !1290)
!1304 = !DILocation(line: 761, column: 34, scope: !1290)
!1305 = !DILocation(line: 761, column: 46, scope: !1290)
!1306 = !DILocation(line: 762, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 762, column: 13)
!1308 = !DILocation(line: 763, column: 13, scope: !1290)
!1309 = !DILocation(line: 763, column: 16, scope: !1290)
!1310 = !DILocation(line: 763, column: 29, scope: !1290)
!1311 = !DILocation(line: 764, column: 13, scope: !1290)
!1312 = !DILocation(line: 764, column: 16, scope: !1290)
!1313 = !DILocation(line: 764, column: 22, scope: !1290)
!1314 = !DILocation(line: 764, column: 30, scope: !1290)
!1315 = !DILocation(line: 765, column: 13, scope: !1290)
!1316 = !DILocation(line: 765, column: 16, scope: !1290)
!1317 = !DILocation(line: 765, column: 22, scope: !1290)
!1318 = !DILocation(line: 765, column: 31, scope: !1290)
!1319 = !DILocation(line: 766, column: 13, scope: !1290)
!1320 = !DILocation(line: 766, column: 16, scope: !1290)
!1321 = !DILocation(line: 766, column: 22, scope: !1290)
!1322 = !DILocation(line: 766, column: 36, scope: !1290)
!1323 = !DILocation(line: 767, column: 17, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 767, column: 17)
!1325 = !DILocation(line: 767, column: 20, scope: !1324)
!1326 = !DILocation(line: 767, column: 26, scope: !1324)
!1327 = !DILocation(line: 767, column: 41, scope: !1324)
!1328 = !DILocation(line: 767, column: 47, scope: !1324)
!1329 = !DILocation(line: 767, column: 50, scope: !1324)
!1330 = !DILocation(line: 767, column: 56, scope: !1324)
!1331 = !DILocation(line: 767, column: 70, scope: !1324)
!1332 = distinct !{!1332, !1286, !1333}
!1333 = !DILocation(line: 768, column: 10, scope: !1287)
!1334 = !DILocation(line: 771, column: 14, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 771, column: 14)
!1336 = !DILocation(line: 771, column: 17, scope: !1335)
!1337 = !DILocation(line: 771, column: 32, scope: !1335)
!1338 = !DILocation(line: 771, column: 35, scope: !1335)
!1339 = !DILocation(line: 771, column: 46, scope: !1335)
!1340 = !DILocation(line: 771, column: 29, scope: !1335)
!1341 = !DILocation(line: 771, column: 50, scope: !1335)
!1342 = !DILocation(line: 774, column: 14, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 774, column: 14)
!1344 = !DILocation(line: 774, column: 17, scope: !1343)
!1345 = !DILocation(line: 774, column: 31, scope: !1343)
!1346 = !DILocation(line: 774, column: 34, scope: !1343)
!1347 = !DILocation(line: 774, column: 45, scope: !1343)
!1348 = !DILocation(line: 774, column: 29, scope: !1343)
!1349 = !DILocation(line: 775, column: 13, scope: !1343)
!1350 = !DILocation(line: 777, column: 10, scope: !1287)
!1351 = !DILocation(line: 777, column: 13, scope: !1287)
!1352 = !DILocation(line: 777, column: 27, scope: !1287)
!1353 = !DILocation(line: 778, column: 28, scope: !1287)
!1354 = !DILocation(line: 778, column: 31, scope: !1287)
!1355 = !DILocation(line: 778, column: 10, scope: !1287)
!1356 = !DILocation(line: 778, column: 13, scope: !1287)
!1357 = !DILocation(line: 778, column: 26, scope: !1287)
!1358 = !DILocation(line: 779, column: 10, scope: !1287)
!1359 = !DILocation(line: 779, column: 28, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 779, column: 28)
!1361 = !DILocation(line: 779, column: 28, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 779, column: 28)
!1363 = !DILocation(line: 779, column: 28, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 779, column: 28)
!1365 = !DILocation(line: 779, column: 28, scope: !1287)
!1366 = !DILocation(line: 780, column: 16, scope: !1287)
!1367 = !DILocation(line: 780, column: 13, scope: !1287)
!1368 = !DILocation(line: 780, column: 30, scope: !1287)
!1369 = !DILocation(line: 780, column: 33, scope: !1287)
!1370 = !DILocation(line: 780, column: 44, scope: !1287)
!1371 = !DILocation(line: 781, column: 14, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 781, column: 14)
!1373 = !DILocation(line: 781, column: 17, scope: !1372)
!1374 = !DILocation(line: 781, column: 32, scope: !1372)
!1375 = !DILocation(line: 781, column: 35, scope: !1372)
!1376 = !DILocation(line: 781, column: 46, scope: !1372)
!1377 = !DILocation(line: 781, column: 29, scope: !1372)
!1378 = !DILocation(line: 781, column: 50, scope: !1372)
!1379 = distinct !{!1379, !1284, !1380}
!1380 = !DILocation(line: 801, column: 7, scope: !1285)
!1381 = !DILocation(line: 782, column: 14, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 782, column: 14)
!1383 = !DILocation(line: 782, column: 20, scope: !1382)
!1384 = !DILocation(line: 782, column: 23, scope: !1382)
!1385 = !DILocation(line: 782, column: 17, scope: !1382)
!1386 = !DILocation(line: 782, column: 37, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 782, column: 27)
!1388 = !DILocation(line: 782, column: 29, scope: !1387)
!1389 = !DILocation(line: 782, column: 32, scope: !1387)
!1390 = !DILocation(line: 782, column: 35, scope: !1387)
!1391 = !DILocation(line: 782, column: 41, scope: !1387)
!1392 = !DILocation(line: 784, column: 10, scope: !1287)
!1393 = !DILocation(line: 784, column: 13, scope: !1287)
!1394 = !DILocation(line: 784, column: 27, scope: !1287)
!1395 = !DILocation(line: 785, column: 10, scope: !1287)
!1396 = !DILocation(line: 785, column: 28, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 785, column: 28)
!1398 = !DILocation(line: 785, column: 28, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 785, column: 28)
!1400 = !DILocation(line: 785, column: 28, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 785, column: 28)
!1402 = !DILocation(line: 785, column: 28, scope: !1287)
!1403 = !DILocation(line: 786, column: 16, scope: !1287)
!1404 = !DILocation(line: 786, column: 13, scope: !1287)
!1405 = !DILocation(line: 786, column: 30, scope: !1287)
!1406 = !DILocation(line: 786, column: 33, scope: !1287)
!1407 = !DILocation(line: 786, column: 44, scope: !1287)
!1408 = !DILocation(line: 787, column: 14, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 787, column: 14)
!1410 = !DILocation(line: 787, column: 17, scope: !1409)
!1411 = !DILocation(line: 787, column: 32, scope: !1409)
!1412 = !DILocation(line: 787, column: 35, scope: !1409)
!1413 = !DILocation(line: 787, column: 46, scope: !1409)
!1414 = !DILocation(line: 787, column: 29, scope: !1409)
!1415 = !DILocation(line: 787, column: 50, scope: !1409)
!1416 = !DILocation(line: 788, column: 14, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 788, column: 14)
!1418 = !DILocation(line: 788, column: 20, scope: !1417)
!1419 = !DILocation(line: 788, column: 23, scope: !1417)
!1420 = !DILocation(line: 788, column: 17, scope: !1417)
!1421 = !DILocation(line: 788, column: 37, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 788, column: 27)
!1423 = !DILocation(line: 788, column: 29, scope: !1422)
!1424 = !DILocation(line: 788, column: 32, scope: !1422)
!1425 = !DILocation(line: 788, column: 35, scope: !1422)
!1426 = !DILocation(line: 788, column: 41, scope: !1422)
!1427 = !DILocation(line: 790, column: 10, scope: !1287)
!1428 = !DILocation(line: 790, column: 13, scope: !1287)
!1429 = !DILocation(line: 790, column: 27, scope: !1287)
!1430 = !DILocation(line: 791, column: 10, scope: !1287)
!1431 = !DILocation(line: 791, column: 28, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 791, column: 28)
!1433 = !DILocation(line: 791, column: 28, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 791, column: 28)
!1435 = !DILocation(line: 791, column: 28, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 791, column: 28)
!1437 = !DILocation(line: 791, column: 28, scope: !1287)
!1438 = !DILocation(line: 792, column: 16, scope: !1287)
!1439 = !DILocation(line: 792, column: 13, scope: !1287)
!1440 = !DILocation(line: 792, column: 30, scope: !1287)
!1441 = !DILocation(line: 792, column: 33, scope: !1287)
!1442 = !DILocation(line: 792, column: 44, scope: !1287)
!1443 = !DILocation(line: 793, column: 14, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 793, column: 14)
!1445 = !DILocation(line: 793, column: 17, scope: !1444)
!1446 = !DILocation(line: 793, column: 32, scope: !1444)
!1447 = !DILocation(line: 793, column: 35, scope: !1444)
!1448 = !DILocation(line: 793, column: 46, scope: !1444)
!1449 = !DILocation(line: 793, column: 29, scope: !1444)
!1450 = !DILocation(line: 793, column: 50, scope: !1444)
!1451 = !DILocation(line: 794, column: 14, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 794, column: 14)
!1453 = !DILocation(line: 794, column: 20, scope: !1452)
!1454 = !DILocation(line: 794, column: 23, scope: !1452)
!1455 = !DILocation(line: 794, column: 17, scope: !1452)
!1456 = !DILocation(line: 794, column: 37, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 794, column: 27)
!1458 = !DILocation(line: 794, column: 29, scope: !1457)
!1459 = !DILocation(line: 794, column: 32, scope: !1457)
!1460 = !DILocation(line: 794, column: 35, scope: !1457)
!1461 = !DILocation(line: 794, column: 41, scope: !1457)
!1462 = !DILocation(line: 796, column: 10, scope: !1287)
!1463 = !DILocation(line: 796, column: 28, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 796, column: 28)
!1465 = !DILocation(line: 796, column: 28, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 796, column: 28)
!1467 = !DILocation(line: 796, column: 28, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 796, column: 28)
!1469 = !DILocation(line: 796, column: 28, scope: !1287)
!1470 = !DILocation(line: 797, column: 16, scope: !1287)
!1471 = !DILocation(line: 797, column: 13, scope: !1287)
!1472 = !DILocation(line: 797, column: 30, scope: !1287)
!1473 = !DILocation(line: 797, column: 33, scope: !1287)
!1474 = !DILocation(line: 797, column: 44, scope: !1287)
!1475 = !DILocation(line: 798, column: 37, scope: !1287)
!1476 = !DILocation(line: 798, column: 30, scope: !1287)
!1477 = !DILocation(line: 798, column: 41, scope: !1287)
!1478 = !DILocation(line: 798, column: 10, scope: !1287)
!1479 = !DILocation(line: 798, column: 13, scope: !1287)
!1480 = !DILocation(line: 798, column: 27, scope: !1287)
!1481 = !DILocation(line: 799, column: 10, scope: !1287)
!1482 = !DILocation(line: 799, column: 31, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 799, column: 31)
!1484 = !DILocation(line: 799, column: 31, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 799, column: 31)
!1486 = !DILocation(line: 799, column: 31, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 799, column: 31)
!1488 = !DILocation(line: 799, column: 31, scope: !1287)
!1489 = !DILocation(line: 800, column: 19, scope: !1287)
!1490 = !DILocation(line: 800, column: 10, scope: !1287)
!1491 = !DILocation(line: 800, column: 13, scope: !1287)
!1492 = !DILocation(line: 800, column: 16, scope: !1287)
!1493 = !DILocation(line: 800, column: 33, scope: !1287)
!1494 = !DILocation(line: 800, column: 36, scope: !1287)
!1495 = !DILocation(line: 800, column: 47, scope: !1287)
!1496 = !DILocation(line: 805, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 803, column: 11)
!1498 = !DILocation(line: 807, column: 10, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 805, column: 20)
!1500 = !DILocation(line: 808, column: 17, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 808, column: 17)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 807, column: 23)
!1503 = !DILocation(line: 808, column: 20, scope: !1501)
!1504 = !DILocation(line: 808, column: 26, scope: !1501)
!1505 = !DILocation(line: 808, column: 36, scope: !1501)
!1506 = !DILocation(line: 808, column: 42, scope: !1501)
!1507 = !DILocation(line: 809, column: 17, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 809, column: 17)
!1509 = !DILocation(line: 809, column: 20, scope: !1508)
!1510 = !DILocation(line: 809, column: 34, scope: !1508)
!1511 = !DILocation(line: 809, column: 40, scope: !1508)
!1512 = !DILocation(line: 810, column: 48, scope: !1502)
!1513 = !DILocation(line: 810, column: 51, scope: !1502)
!1514 = !DILocation(line: 810, column: 25, scope: !1502)
!1515 = !DILocation(line: 810, column: 28, scope: !1502)
!1516 = !DILocation(line: 810, column: 34, scope: !1502)
!1517 = !DILocation(line: 810, column: 46, scope: !1502)
!1518 = !DILocation(line: 811, column: 13, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 811, column: 13)
!1520 = !DILocation(line: 812, column: 13, scope: !1502)
!1521 = !DILocation(line: 812, column: 16, scope: !1502)
!1522 = !DILocation(line: 812, column: 29, scope: !1502)
!1523 = !DILocation(line: 813, column: 13, scope: !1502)
!1524 = !DILocation(line: 813, column: 16, scope: !1502)
!1525 = !DILocation(line: 813, column: 22, scope: !1502)
!1526 = !DILocation(line: 813, column: 30, scope: !1502)
!1527 = !DILocation(line: 814, column: 13, scope: !1502)
!1528 = !DILocation(line: 814, column: 16, scope: !1502)
!1529 = !DILocation(line: 814, column: 22, scope: !1502)
!1530 = !DILocation(line: 814, column: 31, scope: !1502)
!1531 = !DILocation(line: 815, column: 13, scope: !1502)
!1532 = !DILocation(line: 815, column: 16, scope: !1502)
!1533 = !DILocation(line: 815, column: 22, scope: !1502)
!1534 = !DILocation(line: 815, column: 36, scope: !1502)
!1535 = !DILocation(line: 816, column: 17, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 816, column: 17)
!1537 = !DILocation(line: 816, column: 20, scope: !1536)
!1538 = !DILocation(line: 816, column: 26, scope: !1536)
!1539 = !DILocation(line: 816, column: 41, scope: !1536)
!1540 = !DILocation(line: 816, column: 47, scope: !1536)
!1541 = !DILocation(line: 816, column: 50, scope: !1536)
!1542 = !DILocation(line: 816, column: 56, scope: !1536)
!1543 = !DILocation(line: 816, column: 70, scope: !1536)
!1544 = distinct !{!1544, !1498, !1545}
!1545 = !DILocation(line: 817, column: 10, scope: !1499)
!1546 = !DILocation(line: 820, column: 14, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 820, column: 14)
!1548 = !DILocation(line: 820, column: 17, scope: !1547)
!1549 = !DILocation(line: 820, column: 32, scope: !1547)
!1550 = !DILocation(line: 820, column: 35, scope: !1547)
!1551 = !DILocation(line: 820, column: 46, scope: !1547)
!1552 = !DILocation(line: 820, column: 29, scope: !1547)
!1553 = !DILocation(line: 820, column: 50, scope: !1547)
!1554 = !DILocation(line: 823, column: 14, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 823, column: 14)
!1556 = !DILocation(line: 823, column: 17, scope: !1555)
!1557 = !DILocation(line: 823, column: 31, scope: !1555)
!1558 = !DILocation(line: 823, column: 34, scope: !1555)
!1559 = !DILocation(line: 823, column: 45, scope: !1555)
!1560 = !DILocation(line: 823, column: 29, scope: !1555)
!1561 = !DILocation(line: 824, column: 13, scope: !1555)
!1562 = !DILocation(line: 826, column: 10, scope: !1499)
!1563 = !DILocation(line: 826, column: 13, scope: !1499)
!1564 = !DILocation(line: 826, column: 27, scope: !1499)
!1565 = !DILocation(line: 827, column: 28, scope: !1499)
!1566 = !DILocation(line: 827, column: 31, scope: !1499)
!1567 = !DILocation(line: 827, column: 10, scope: !1499)
!1568 = !DILocation(line: 827, column: 13, scope: !1499)
!1569 = !DILocation(line: 827, column: 26, scope: !1499)
!1570 = !DILocation(line: 828, column: 10, scope: !1499)
!1571 = !DILocation(line: 828, column: 28, scope: !1499)
!1572 = !DILocation(line: 828, column: 31, scope: !1499)
!1573 = !DILocation(line: 828, column: 42, scope: !1499)
!1574 = !DILocation(line: 829, column: 14, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 829, column: 14)
!1576 = !DILocation(line: 829, column: 17, scope: !1575)
!1577 = !DILocation(line: 829, column: 32, scope: !1575)
!1578 = !DILocation(line: 829, column: 35, scope: !1575)
!1579 = !DILocation(line: 829, column: 46, scope: !1575)
!1580 = !DILocation(line: 829, column: 29, scope: !1575)
!1581 = !DILocation(line: 829, column: 50, scope: !1575)
!1582 = distinct !{!1582, !1496, !1583}
!1583 = !DILocation(line: 845, column: 7, scope: !1497)
!1584 = !DILocation(line: 830, column: 14, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 830, column: 14)
!1586 = !DILocation(line: 830, column: 20, scope: !1585)
!1587 = !DILocation(line: 830, column: 23, scope: !1585)
!1588 = !DILocation(line: 830, column: 17, scope: !1585)
!1589 = !DILocation(line: 830, column: 37, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 830, column: 27)
!1591 = !DILocation(line: 830, column: 29, scope: !1590)
!1592 = !DILocation(line: 830, column: 32, scope: !1590)
!1593 = !DILocation(line: 830, column: 35, scope: !1590)
!1594 = !DILocation(line: 830, column: 41, scope: !1590)
!1595 = !DILocation(line: 832, column: 10, scope: !1499)
!1596 = !DILocation(line: 832, column: 13, scope: !1499)
!1597 = !DILocation(line: 832, column: 27, scope: !1499)
!1598 = !DILocation(line: 833, column: 10, scope: !1499)
!1599 = !DILocation(line: 833, column: 28, scope: !1499)
!1600 = !DILocation(line: 833, column: 31, scope: !1499)
!1601 = !DILocation(line: 833, column: 42, scope: !1499)
!1602 = !DILocation(line: 834, column: 14, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 834, column: 14)
!1604 = !DILocation(line: 834, column: 17, scope: !1603)
!1605 = !DILocation(line: 834, column: 32, scope: !1603)
!1606 = !DILocation(line: 834, column: 35, scope: !1603)
!1607 = !DILocation(line: 834, column: 46, scope: !1603)
!1608 = !DILocation(line: 834, column: 29, scope: !1603)
!1609 = !DILocation(line: 834, column: 50, scope: !1603)
!1610 = !DILocation(line: 835, column: 14, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 835, column: 14)
!1612 = !DILocation(line: 835, column: 20, scope: !1611)
!1613 = !DILocation(line: 835, column: 23, scope: !1611)
!1614 = !DILocation(line: 835, column: 17, scope: !1611)
!1615 = !DILocation(line: 835, column: 37, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 835, column: 27)
!1617 = !DILocation(line: 835, column: 29, scope: !1616)
!1618 = !DILocation(line: 835, column: 32, scope: !1616)
!1619 = !DILocation(line: 835, column: 35, scope: !1616)
!1620 = !DILocation(line: 835, column: 41, scope: !1616)
!1621 = !DILocation(line: 837, column: 10, scope: !1499)
!1622 = !DILocation(line: 837, column: 13, scope: !1499)
!1623 = !DILocation(line: 837, column: 27, scope: !1499)
!1624 = !DILocation(line: 838, column: 10, scope: !1499)
!1625 = !DILocation(line: 838, column: 28, scope: !1499)
!1626 = !DILocation(line: 838, column: 31, scope: !1499)
!1627 = !DILocation(line: 838, column: 42, scope: !1499)
!1628 = !DILocation(line: 839, column: 14, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 839, column: 14)
!1630 = !DILocation(line: 839, column: 17, scope: !1629)
!1631 = !DILocation(line: 839, column: 32, scope: !1629)
!1632 = !DILocation(line: 839, column: 35, scope: !1629)
!1633 = !DILocation(line: 839, column: 46, scope: !1629)
!1634 = !DILocation(line: 839, column: 29, scope: !1629)
!1635 = !DILocation(line: 839, column: 50, scope: !1629)
!1636 = !DILocation(line: 840, column: 14, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 840, column: 14)
!1638 = !DILocation(line: 840, column: 20, scope: !1637)
!1639 = !DILocation(line: 840, column: 23, scope: !1637)
!1640 = !DILocation(line: 840, column: 17, scope: !1637)
!1641 = !DILocation(line: 840, column: 37, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 840, column: 27)
!1643 = !DILocation(line: 840, column: 29, scope: !1642)
!1644 = !DILocation(line: 840, column: 32, scope: !1642)
!1645 = !DILocation(line: 840, column: 35, scope: !1642)
!1646 = !DILocation(line: 840, column: 41, scope: !1642)
!1647 = !DILocation(line: 842, column: 10, scope: !1499)
!1648 = !DILocation(line: 842, column: 28, scope: !1499)
!1649 = !DILocation(line: 842, column: 31, scope: !1499)
!1650 = !DILocation(line: 842, column: 42, scope: !1499)
!1651 = !DILocation(line: 843, column: 37, scope: !1499)
!1652 = !DILocation(line: 843, column: 30, scope: !1499)
!1653 = !DILocation(line: 843, column: 41, scope: !1499)
!1654 = !DILocation(line: 843, column: 10, scope: !1499)
!1655 = !DILocation(line: 843, column: 13, scope: !1499)
!1656 = !DILocation(line: 843, column: 27, scope: !1499)
!1657 = !DILocation(line: 844, column: 10, scope: !1499)
!1658 = !DILocation(line: 844, column: 31, scope: !1499)
!1659 = !DILocation(line: 844, column: 34, scope: !1499)
!1660 = !DILocation(line: 844, column: 45, scope: !1499)
!1661 = !DILocation(line: 848, column: 1, scope: !1274)
!1662 = distinct !DISubprogram(name: "unRLE_obuf_to_output_FAST", scope: !2, file: !2, line: 581, type: !1275, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!1663 = !DILocalVariable(name: "s", arg: 1, scope: !1662, file: !2, line: 581, type: !916)
!1664 = !DILocation(line: 581, column: 42, scope: !1662)
!1665 = !DILocalVariable(name: "k1", scope: !1662, file: !2, line: 583, type: !55)
!1666 = !DILocation(line: 583, column: 10, scope: !1662)
!1667 = !DILocation(line: 585, column: 8, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1662, file: !2, line: 585, column: 8)
!1669 = !DILocation(line: 585, column: 11, scope: !1668)
!1670 = !DILocation(line: 587, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 585, column: 28)
!1672 = !DILocation(line: 589, column: 10, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 587, column: 20)
!1674 = !DILocation(line: 590, column: 17, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 590, column: 17)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 589, column: 23)
!1677 = !DILocation(line: 590, column: 20, scope: !1675)
!1678 = !DILocation(line: 590, column: 26, scope: !1675)
!1679 = !DILocation(line: 590, column: 36, scope: !1675)
!1680 = !DILocation(line: 590, column: 42, scope: !1675)
!1681 = !DILocation(line: 591, column: 17, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 591, column: 17)
!1683 = !DILocation(line: 591, column: 20, scope: !1682)
!1684 = !DILocation(line: 591, column: 34, scope: !1682)
!1685 = !DILocation(line: 591, column: 40, scope: !1682)
!1686 = !DILocation(line: 592, column: 48, scope: !1676)
!1687 = !DILocation(line: 592, column: 51, scope: !1676)
!1688 = !DILocation(line: 592, column: 25, scope: !1676)
!1689 = !DILocation(line: 592, column: 28, scope: !1676)
!1690 = !DILocation(line: 592, column: 34, scope: !1676)
!1691 = !DILocation(line: 592, column: 46, scope: !1676)
!1692 = !DILocation(line: 593, column: 13, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 593, column: 13)
!1694 = !DILocation(line: 594, column: 13, scope: !1676)
!1695 = !DILocation(line: 594, column: 16, scope: !1676)
!1696 = !DILocation(line: 594, column: 29, scope: !1676)
!1697 = !DILocation(line: 595, column: 13, scope: !1676)
!1698 = !DILocation(line: 595, column: 16, scope: !1676)
!1699 = !DILocation(line: 595, column: 22, scope: !1676)
!1700 = !DILocation(line: 595, column: 30, scope: !1676)
!1701 = !DILocation(line: 596, column: 13, scope: !1676)
!1702 = !DILocation(line: 596, column: 16, scope: !1676)
!1703 = !DILocation(line: 596, column: 22, scope: !1676)
!1704 = !DILocation(line: 596, column: 31, scope: !1676)
!1705 = !DILocation(line: 597, column: 13, scope: !1676)
!1706 = !DILocation(line: 597, column: 16, scope: !1676)
!1707 = !DILocation(line: 597, column: 22, scope: !1676)
!1708 = !DILocation(line: 597, column: 36, scope: !1676)
!1709 = !DILocation(line: 598, column: 17, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 598, column: 17)
!1711 = !DILocation(line: 598, column: 20, scope: !1710)
!1712 = !DILocation(line: 598, column: 26, scope: !1710)
!1713 = !DILocation(line: 598, column: 41, scope: !1710)
!1714 = !DILocation(line: 598, column: 47, scope: !1710)
!1715 = !DILocation(line: 598, column: 50, scope: !1710)
!1716 = !DILocation(line: 598, column: 56, scope: !1710)
!1717 = !DILocation(line: 598, column: 70, scope: !1710)
!1718 = distinct !{!1718, !1672, !1719}
!1719 = !DILocation(line: 599, column: 10, scope: !1673)
!1720 = !DILocation(line: 602, column: 14, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 602, column: 14)
!1722 = !DILocation(line: 602, column: 17, scope: !1721)
!1723 = !DILocation(line: 602, column: 32, scope: !1721)
!1724 = !DILocation(line: 602, column: 35, scope: !1721)
!1725 = !DILocation(line: 602, column: 46, scope: !1721)
!1726 = !DILocation(line: 602, column: 29, scope: !1721)
!1727 = !DILocation(line: 602, column: 50, scope: !1721)
!1728 = !DILocation(line: 605, column: 14, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 605, column: 14)
!1730 = !DILocation(line: 605, column: 17, scope: !1729)
!1731 = !DILocation(line: 605, column: 31, scope: !1729)
!1732 = !DILocation(line: 605, column: 34, scope: !1729)
!1733 = !DILocation(line: 605, column: 45, scope: !1729)
!1734 = !DILocation(line: 605, column: 29, scope: !1729)
!1735 = !DILocation(line: 606, column: 13, scope: !1729)
!1736 = !DILocation(line: 608, column: 10, scope: !1673)
!1737 = !DILocation(line: 608, column: 13, scope: !1673)
!1738 = !DILocation(line: 608, column: 27, scope: !1673)
!1739 = !DILocation(line: 609, column: 28, scope: !1673)
!1740 = !DILocation(line: 609, column: 31, scope: !1673)
!1741 = !DILocation(line: 609, column: 10, scope: !1673)
!1742 = !DILocation(line: 609, column: 13, scope: !1673)
!1743 = !DILocation(line: 609, column: 26, scope: !1673)
!1744 = !DILocation(line: 610, column: 10, scope: !1673)
!1745 = !DILocation(line: 610, column: 27, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 610, column: 27)
!1747 = !DILocation(line: 610, column: 27, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 610, column: 27)
!1749 = !DILocation(line: 610, column: 27, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 610, column: 27)
!1751 = !DILocation(line: 610, column: 27, scope: !1673)
!1752 = !DILocation(line: 611, column: 16, scope: !1673)
!1753 = !DILocation(line: 611, column: 13, scope: !1673)
!1754 = !DILocation(line: 611, column: 30, scope: !1673)
!1755 = !DILocation(line: 611, column: 33, scope: !1673)
!1756 = !DILocation(line: 611, column: 44, scope: !1673)
!1757 = !DILocation(line: 612, column: 14, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 612, column: 14)
!1759 = !DILocation(line: 612, column: 17, scope: !1758)
!1760 = !DILocation(line: 612, column: 32, scope: !1758)
!1761 = !DILocation(line: 612, column: 35, scope: !1758)
!1762 = !DILocation(line: 612, column: 46, scope: !1758)
!1763 = !DILocation(line: 612, column: 29, scope: !1758)
!1764 = !DILocation(line: 612, column: 50, scope: !1758)
!1765 = distinct !{!1765, !1670, !1766}
!1766 = !DILocation(line: 632, column: 7, scope: !1671)
!1767 = !DILocation(line: 613, column: 14, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 613, column: 14)
!1769 = !DILocation(line: 613, column: 20, scope: !1768)
!1770 = !DILocation(line: 613, column: 23, scope: !1768)
!1771 = !DILocation(line: 613, column: 17, scope: !1768)
!1772 = !DILocation(line: 613, column: 37, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 613, column: 27)
!1774 = !DILocation(line: 613, column: 29, scope: !1773)
!1775 = !DILocation(line: 613, column: 32, scope: !1773)
!1776 = !DILocation(line: 613, column: 35, scope: !1773)
!1777 = !DILocation(line: 613, column: 41, scope: !1773)
!1778 = !DILocation(line: 615, column: 10, scope: !1673)
!1779 = !DILocation(line: 615, column: 13, scope: !1673)
!1780 = !DILocation(line: 615, column: 27, scope: !1673)
!1781 = !DILocation(line: 616, column: 10, scope: !1673)
!1782 = !DILocation(line: 616, column: 27, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 616, column: 27)
!1784 = !DILocation(line: 616, column: 27, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 616, column: 27)
!1786 = !DILocation(line: 616, column: 27, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 616, column: 27)
!1788 = !DILocation(line: 616, column: 27, scope: !1673)
!1789 = !DILocation(line: 617, column: 16, scope: !1673)
!1790 = !DILocation(line: 617, column: 13, scope: !1673)
!1791 = !DILocation(line: 617, column: 30, scope: !1673)
!1792 = !DILocation(line: 617, column: 33, scope: !1673)
!1793 = !DILocation(line: 617, column: 44, scope: !1673)
!1794 = !DILocation(line: 618, column: 14, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 618, column: 14)
!1796 = !DILocation(line: 618, column: 17, scope: !1795)
!1797 = !DILocation(line: 618, column: 32, scope: !1795)
!1798 = !DILocation(line: 618, column: 35, scope: !1795)
!1799 = !DILocation(line: 618, column: 46, scope: !1795)
!1800 = !DILocation(line: 618, column: 29, scope: !1795)
!1801 = !DILocation(line: 618, column: 50, scope: !1795)
!1802 = !DILocation(line: 619, column: 14, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 619, column: 14)
!1804 = !DILocation(line: 619, column: 20, scope: !1803)
!1805 = !DILocation(line: 619, column: 23, scope: !1803)
!1806 = !DILocation(line: 619, column: 17, scope: !1803)
!1807 = !DILocation(line: 619, column: 37, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 619, column: 27)
!1809 = !DILocation(line: 619, column: 29, scope: !1808)
!1810 = !DILocation(line: 619, column: 32, scope: !1808)
!1811 = !DILocation(line: 619, column: 35, scope: !1808)
!1812 = !DILocation(line: 619, column: 41, scope: !1808)
!1813 = !DILocation(line: 621, column: 10, scope: !1673)
!1814 = !DILocation(line: 621, column: 13, scope: !1673)
!1815 = !DILocation(line: 621, column: 27, scope: !1673)
!1816 = !DILocation(line: 622, column: 10, scope: !1673)
!1817 = !DILocation(line: 622, column: 27, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 622, column: 27)
!1819 = !DILocation(line: 622, column: 27, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 622, column: 27)
!1821 = !DILocation(line: 622, column: 27, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 622, column: 27)
!1823 = !DILocation(line: 622, column: 27, scope: !1673)
!1824 = !DILocation(line: 623, column: 16, scope: !1673)
!1825 = !DILocation(line: 623, column: 13, scope: !1673)
!1826 = !DILocation(line: 623, column: 30, scope: !1673)
!1827 = !DILocation(line: 623, column: 33, scope: !1673)
!1828 = !DILocation(line: 623, column: 44, scope: !1673)
!1829 = !DILocation(line: 624, column: 14, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 624, column: 14)
!1831 = !DILocation(line: 624, column: 17, scope: !1830)
!1832 = !DILocation(line: 624, column: 32, scope: !1830)
!1833 = !DILocation(line: 624, column: 35, scope: !1830)
!1834 = !DILocation(line: 624, column: 46, scope: !1830)
!1835 = !DILocation(line: 624, column: 29, scope: !1830)
!1836 = !DILocation(line: 624, column: 50, scope: !1830)
!1837 = !DILocation(line: 625, column: 14, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 625, column: 14)
!1839 = !DILocation(line: 625, column: 20, scope: !1838)
!1840 = !DILocation(line: 625, column: 23, scope: !1838)
!1841 = !DILocation(line: 625, column: 17, scope: !1838)
!1842 = !DILocation(line: 625, column: 37, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 625, column: 27)
!1844 = !DILocation(line: 625, column: 29, scope: !1843)
!1845 = !DILocation(line: 625, column: 32, scope: !1843)
!1846 = !DILocation(line: 625, column: 35, scope: !1843)
!1847 = !DILocation(line: 625, column: 41, scope: !1843)
!1848 = !DILocation(line: 627, column: 10, scope: !1673)
!1849 = !DILocation(line: 627, column: 27, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 627, column: 27)
!1851 = !DILocation(line: 627, column: 27, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 627, column: 27)
!1853 = !DILocation(line: 627, column: 27, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1852, file: !2, line: 627, column: 27)
!1855 = !DILocation(line: 627, column: 27, scope: !1673)
!1856 = !DILocation(line: 628, column: 16, scope: !1673)
!1857 = !DILocation(line: 628, column: 13, scope: !1673)
!1858 = !DILocation(line: 628, column: 30, scope: !1673)
!1859 = !DILocation(line: 628, column: 33, scope: !1673)
!1860 = !DILocation(line: 628, column: 44, scope: !1673)
!1861 = !DILocation(line: 629, column: 37, scope: !1673)
!1862 = !DILocation(line: 629, column: 30, scope: !1673)
!1863 = !DILocation(line: 629, column: 41, scope: !1673)
!1864 = !DILocation(line: 629, column: 10, scope: !1673)
!1865 = !DILocation(line: 629, column: 13, scope: !1673)
!1866 = !DILocation(line: 629, column: 27, scope: !1673)
!1867 = !DILocation(line: 630, column: 10, scope: !1673)
!1868 = !DILocation(line: 630, column: 30, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 630, column: 30)
!1870 = !DILocation(line: 630, column: 30, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 630, column: 30)
!1872 = !DILocation(line: 630, column: 30, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 630, column: 30)
!1874 = !DILocation(line: 630, column: 30, scope: !1673)
!1875 = !DILocation(line: 631, column: 19, scope: !1673)
!1876 = !DILocation(line: 631, column: 10, scope: !1673)
!1877 = !DILocation(line: 631, column: 13, scope: !1673)
!1878 = !DILocation(line: 631, column: 16, scope: !1673)
!1879 = !DILocation(line: 631, column: 33, scope: !1673)
!1880 = !DILocation(line: 631, column: 36, scope: !1673)
!1881 = !DILocation(line: 631, column: 47, scope: !1673)
!1882 = !DILocalVariable(name: "c_calculatedBlockCRC", scope: !1883, file: !2, line: 637, type: !62)
!1883 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 634, column: 11)
!1884 = !DILocation(line: 637, column: 21, scope: !1883)
!1885 = !DILocation(line: 637, column: 44, scope: !1883)
!1886 = !DILocation(line: 637, column: 47, scope: !1883)
!1887 = !DILocalVariable(name: "c_state_out_ch", scope: !1883, file: !2, line: 638, type: !55)
!1888 = !DILocation(line: 638, column: 21, scope: !1883)
!1889 = !DILocation(line: 638, column: 44, scope: !1883)
!1890 = !DILocation(line: 638, column: 47, scope: !1883)
!1891 = !DILocalVariable(name: "c_state_out_len", scope: !1883, file: !2, line: 639, type: !135)
!1892 = !DILocation(line: 639, column: 21, scope: !1883)
!1893 = !DILocation(line: 639, column: 44, scope: !1883)
!1894 = !DILocation(line: 639, column: 47, scope: !1883)
!1895 = !DILocalVariable(name: "c_nblock_used", scope: !1883, file: !2, line: 640, type: !135)
!1896 = !DILocation(line: 640, column: 21, scope: !1883)
!1897 = !DILocation(line: 640, column: 44, scope: !1883)
!1898 = !DILocation(line: 640, column: 47, scope: !1883)
!1899 = !DILocalVariable(name: "c_k0", scope: !1883, file: !2, line: 641, type: !135)
!1900 = !DILocation(line: 641, column: 21, scope: !1883)
!1901 = !DILocation(line: 641, column: 44, scope: !1883)
!1902 = !DILocation(line: 641, column: 47, scope: !1883)
!1903 = !DILocalVariable(name: "c_tt", scope: !1883, file: !2, line: 642, type: !61)
!1904 = !DILocation(line: 642, column: 21, scope: !1883)
!1905 = !DILocation(line: 642, column: 44, scope: !1883)
!1906 = !DILocation(line: 642, column: 47, scope: !1883)
!1907 = !DILocalVariable(name: "c_tPos", scope: !1883, file: !2, line: 643, type: !62)
!1908 = !DILocation(line: 643, column: 21, scope: !1883)
!1909 = !DILocation(line: 643, column: 44, scope: !1883)
!1910 = !DILocation(line: 643, column: 47, scope: !1883)
!1911 = !DILocalVariable(name: "cs_next_out", scope: !1883, file: !2, line: 644, type: !78)
!1912 = !DILocation(line: 644, column: 21, scope: !1883)
!1913 = !DILocation(line: 644, column: 44, scope: !1883)
!1914 = !DILocation(line: 644, column: 47, scope: !1883)
!1915 = !DILocation(line: 644, column: 53, scope: !1883)
!1916 = !DILocalVariable(name: "cs_avail_out", scope: !1883, file: !2, line: 645, type: !38)
!1917 = !DILocation(line: 645, column: 21, scope: !1883)
!1918 = !DILocation(line: 645, column: 44, scope: !1883)
!1919 = !DILocation(line: 645, column: 47, scope: !1883)
!1920 = !DILocation(line: 645, column: 53, scope: !1883)
!1921 = !DILocalVariable(name: "avail_out_INIT", scope: !1883, file: !2, line: 648, type: !62)
!1922 = !DILocation(line: 648, column: 20, scope: !1883)
!1923 = !DILocation(line: 648, column: 37, scope: !1883)
!1924 = !DILocalVariable(name: "s_save_nblockPP", scope: !1883, file: !2, line: 649, type: !135)
!1925 = !DILocation(line: 649, column: 20, scope: !1883)
!1926 = !DILocation(line: 649, column: 38, scope: !1883)
!1927 = !DILocation(line: 649, column: 41, scope: !1883)
!1928 = !DILocation(line: 649, column: 52, scope: !1883)
!1929 = !DILocalVariable(name: "total_out_lo32_old", scope: !1883, file: !2, line: 650, type: !38)
!1930 = !DILocation(line: 650, column: 20, scope: !1883)
!1931 = !DILocation(line: 652, column: 7, scope: !1883)
!1932 = !DILocation(line: 655, column: 14, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 655, column: 14)
!1934 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 652, column: 20)
!1935 = !DILocation(line: 655, column: 30, scope: !1933)
!1936 = !DILocation(line: 656, column: 13, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 655, column: 35)
!1938 = !DILocation(line: 657, column: 20, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !2, line: 657, column: 20)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !2, line: 656, column: 26)
!1941 = !DILocation(line: 657, column: 33, scope: !1939)
!1942 = !DILocation(line: 657, column: 39, scope: !1939)
!1943 = !DILocation(line: 658, column: 20, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !2, line: 658, column: 20)
!1945 = !DILocation(line: 658, column: 36, scope: !1944)
!1946 = !DILocation(line: 658, column: 42, scope: !1944)
!1947 = !DILocation(line: 659, column: 45, scope: !1940)
!1948 = !DILocation(line: 659, column: 28, scope: !1940)
!1949 = !DILocation(line: 659, column: 43, scope: !1940)
!1950 = !DILocation(line: 660, column: 16, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1940, file: !2, line: 660, column: 16)
!1952 = !DILocation(line: 661, column: 31, scope: !1940)
!1953 = !DILocation(line: 662, column: 27, scope: !1940)
!1954 = !DILocation(line: 663, column: 28, scope: !1940)
!1955 = distinct !{!1955, !1936, !1956}
!1956 = !DILocation(line: 664, column: 13, scope: !1937)
!1957 = !DILabel(scope: !1937, name: "s_state_out_len_eq_one", file: !2, line: 665, column: 13)
!1958 = !DILocation(line: 665, column: 13, scope: !1937)
!1959 = !DILocation(line: 667, column: 20, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 667, column: 20)
!1961 = distinct !DILexicalBlock(scope: !1937, file: !2, line: 666, column: 13)
!1962 = !DILocation(line: 667, column: 33, scope: !1960)
!1963 = !DILocation(line: 668, column: 35, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !2, line: 667, column: 39)
!1965 = !DILocation(line: 668, column: 40, scope: !1964)
!1966 = !DILocation(line: 670, column: 45, scope: !1961)
!1967 = !DILocation(line: 670, column: 28, scope: !1961)
!1968 = !DILocation(line: 670, column: 43, scope: !1961)
!1969 = !DILocation(line: 671, column: 16, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 671, column: 16)
!1971 = !DILocation(line: 672, column: 27, scope: !1961)
!1972 = !DILocation(line: 673, column: 28, scope: !1961)
!1973 = !DILocation(line: 675, column: 10, scope: !1937)
!1974 = !DILocation(line: 677, column: 14, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 677, column: 14)
!1976 = !DILocation(line: 677, column: 30, scope: !1975)
!1977 = !DILocation(line: 677, column: 28, scope: !1975)
!1978 = !DILocation(line: 678, column: 13, scope: !1975)
!1979 = !DILocation(line: 681, column: 14, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 681, column: 14)
!1981 = !DILocation(line: 681, column: 31, scope: !1980)
!1982 = !DILocation(line: 681, column: 28, scope: !1980)
!1983 = !DILocation(line: 682, column: 29, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 681, column: 48)
!1985 = !DILocation(line: 682, column: 34, scope: !1984)
!1986 = !DILocation(line: 684, column: 27, scope: !1934)
!1987 = !DILocation(line: 684, column: 25, scope: !1934)
!1988 = !DILocation(line: 685, column: 10, scope: !1934)
!1989 = !DILocation(line: 685, column: 42, scope: !1934)
!1990 = !DILocation(line: 686, column: 14, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 686, column: 14)
!1992 = !DILocation(line: 686, column: 20, scope: !1991)
!1993 = !DILocation(line: 686, column: 17, scope: !1991)
!1994 = !DILocation(line: 687, column: 20, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 686, column: 26)
!1996 = !DILocation(line: 687, column: 18, scope: !1995)
!1997 = !DILocation(line: 687, column: 24, scope: !1995)
!1998 = !DILocation(line: 689, column: 14, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 689, column: 14)
!2000 = !DILocation(line: 689, column: 31, scope: !1999)
!2001 = !DILocation(line: 689, column: 28, scope: !1999)
!2002 = !DILocation(line: 690, column: 13, scope: !1999)
!2003 = !DILocation(line: 692, column: 26, scope: !1934)
!2004 = !DILocation(line: 693, column: 10, scope: !1934)
!2005 = !DILocation(line: 693, column: 42, scope: !1934)
!2006 = !DILocation(line: 694, column: 14, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 694, column: 14)
!2008 = !DILocation(line: 694, column: 31, scope: !2007)
!2009 = !DILocation(line: 694, column: 28, scope: !2007)
!2010 = !DILocation(line: 694, column: 48, scope: !2007)
!2011 = distinct !{!2011, !1931, !2012}
!2012 = !DILocation(line: 705, column: 7, scope: !1883)
!2013 = !DILocation(line: 695, column: 14, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 695, column: 14)
!2015 = !DILocation(line: 695, column: 20, scope: !2014)
!2016 = !DILocation(line: 695, column: 17, scope: !2014)
!2017 = !DILocation(line: 695, column: 35, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 695, column: 26)
!2019 = !DILocation(line: 695, column: 33, scope: !2018)
!2020 = !DILocation(line: 695, column: 39, scope: !2018)
!2021 = !DILocation(line: 697, column: 26, scope: !1934)
!2022 = !DILocation(line: 698, column: 10, scope: !1934)
!2023 = !DILocation(line: 698, column: 42, scope: !1934)
!2024 = !DILocation(line: 699, column: 14, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 699, column: 14)
!2026 = !DILocation(line: 699, column: 31, scope: !2025)
!2027 = !DILocation(line: 699, column: 28, scope: !2025)
!2028 = !DILocation(line: 699, column: 48, scope: !2025)
!2029 = !DILocation(line: 700, column: 14, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 700, column: 14)
!2031 = !DILocation(line: 700, column: 20, scope: !2030)
!2032 = !DILocation(line: 700, column: 17, scope: !2030)
!2033 = !DILocation(line: 700, column: 35, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !2, line: 700, column: 26)
!2035 = !DILocation(line: 700, column: 33, scope: !2034)
!2036 = !DILocation(line: 700, column: 39, scope: !2034)
!2037 = !DILocation(line: 702, column: 10, scope: !1934)
!2038 = !DILocation(line: 702, column: 42, scope: !1934)
!2039 = !DILocation(line: 703, column: 36, scope: !1934)
!2040 = !DILocation(line: 703, column: 29, scope: !1934)
!2041 = !DILocation(line: 703, column: 40, scope: !1934)
!2042 = !DILocation(line: 703, column: 26, scope: !1934)
!2043 = !DILocation(line: 704, column: 10, scope: !1934)
!2044 = !DILocation(line: 704, column: 44, scope: !1934)
!2045 = !DILabel(scope: !1883, name: "return_notr", file: !2, line: 707, column: 7)
!2046 = !DILocation(line: 707, column: 7, scope: !1883)
!2047 = !DILocation(line: 708, column: 28, scope: !1883)
!2048 = !DILocation(line: 708, column: 31, scope: !1883)
!2049 = !DILocation(line: 708, column: 37, scope: !1883)
!2050 = !DILocation(line: 708, column: 26, scope: !1883)
!2051 = !DILocation(line: 709, column: 35, scope: !1883)
!2052 = !DILocation(line: 709, column: 52, scope: !1883)
!2053 = !DILocation(line: 709, column: 50, scope: !1883)
!2054 = !DILocation(line: 709, column: 7, scope: !1883)
!2055 = !DILocation(line: 709, column: 10, scope: !1883)
!2056 = !DILocation(line: 709, column: 16, scope: !1883)
!2057 = !DILocation(line: 709, column: 31, scope: !1883)
!2058 = !DILocation(line: 710, column: 11, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 710, column: 11)
!2060 = !DILocation(line: 710, column: 14, scope: !2059)
!2061 = !DILocation(line: 710, column: 20, scope: !2059)
!2062 = !DILocation(line: 710, column: 37, scope: !2059)
!2063 = !DILocation(line: 710, column: 35, scope: !2059)
!2064 = !DILocation(line: 711, column: 10, scope: !2059)
!2065 = !DILocation(line: 711, column: 13, scope: !2059)
!2066 = !DILocation(line: 711, column: 19, scope: !2059)
!2067 = !DILocation(line: 711, column: 33, scope: !2059)
!2068 = !DILocation(line: 714, column: 31, scope: !1883)
!2069 = !DILocation(line: 714, column: 7, scope: !1883)
!2070 = !DILocation(line: 714, column: 10, scope: !1883)
!2071 = !DILocation(line: 714, column: 29, scope: !1883)
!2072 = !DILocation(line: 715, column: 31, scope: !1883)
!2073 = !DILocation(line: 715, column: 7, scope: !1883)
!2074 = !DILocation(line: 715, column: 10, scope: !1883)
!2075 = !DILocation(line: 715, column: 29, scope: !1883)
!2076 = !DILocation(line: 716, column: 31, scope: !1883)
!2077 = !DILocation(line: 716, column: 7, scope: !1883)
!2078 = !DILocation(line: 716, column: 10, scope: !1883)
!2079 = !DILocation(line: 716, column: 29, scope: !1883)
!2080 = !DILocation(line: 717, column: 31, scope: !1883)
!2081 = !DILocation(line: 717, column: 7, scope: !1883)
!2082 = !DILocation(line: 717, column: 10, scope: !1883)
!2083 = !DILocation(line: 717, column: 29, scope: !1883)
!2084 = !DILocation(line: 718, column: 31, scope: !1883)
!2085 = !DILocation(line: 718, column: 7, scope: !1883)
!2086 = !DILocation(line: 718, column: 10, scope: !1883)
!2087 = !DILocation(line: 718, column: 29, scope: !1883)
!2088 = !DILocation(line: 719, column: 31, scope: !1883)
!2089 = !DILocation(line: 719, column: 7, scope: !1883)
!2090 = !DILocation(line: 719, column: 10, scope: !1883)
!2091 = !DILocation(line: 719, column: 29, scope: !1883)
!2092 = !DILocation(line: 720, column: 31, scope: !1883)
!2093 = !DILocation(line: 720, column: 7, scope: !1883)
!2094 = !DILocation(line: 720, column: 10, scope: !1883)
!2095 = !DILocation(line: 720, column: 29, scope: !1883)
!2096 = !DILocation(line: 721, column: 31, scope: !1883)
!2097 = !DILocation(line: 721, column: 7, scope: !1883)
!2098 = !DILocation(line: 721, column: 10, scope: !1883)
!2099 = !DILocation(line: 721, column: 16, scope: !1883)
!2100 = !DILocation(line: 721, column: 29, scope: !1883)
!2101 = !DILocation(line: 722, column: 31, scope: !1883)
!2102 = !DILocation(line: 722, column: 7, scope: !1883)
!2103 = !DILocation(line: 722, column: 10, scope: !1883)
!2104 = !DILocation(line: 722, column: 16, scope: !1883)
!2105 = !DILocation(line: 722, column: 29, scope: !1883)
!2106 = !DILocation(line: 725, column: 4, scope: !1662)
!2107 = !DILocation(line: 726, column: 1, scope: !1662)
!2108 = distinct !DISubprogram(name: "BZ2_bzDecompressEnd", scope: !2, file: !2, line: 906, type: !862, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!2109 = !DILocalVariable(name: "strm", arg: 1, scope: !2108, file: !2, line: 906, type: !258)
!2110 = !DILocation(line: 906, column: 47, scope: !2108)
!2111 = !DILocalVariable(name: "s", scope: !2108, file: !2, line: 908, type: !916)
!2112 = !DILocation(line: 908, column: 12, scope: !2108)
!2113 = !DILocation(line: 909, column: 8, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 909, column: 8)
!2115 = !DILocation(line: 909, column: 13, scope: !2114)
!2116 = !DILocation(line: 909, column: 22, scope: !2114)
!2117 = !DILocation(line: 910, column: 8, scope: !2108)
!2118 = !DILocation(line: 910, column: 14, scope: !2108)
!2119 = !DILocation(line: 910, column: 6, scope: !2108)
!2120 = !DILocation(line: 911, column: 8, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 911, column: 8)
!2122 = !DILocation(line: 911, column: 10, scope: !2121)
!2123 = !DILocation(line: 911, column: 19, scope: !2121)
!2124 = !DILocation(line: 912, column: 8, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 912, column: 8)
!2126 = !DILocation(line: 912, column: 11, scope: !2125)
!2127 = !DILocation(line: 912, column: 19, scope: !2125)
!2128 = !DILocation(line: 912, column: 16, scope: !2125)
!2129 = !DILocation(line: 912, column: 25, scope: !2125)
!2130 = !DILocation(line: 914, column: 8, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 914, column: 8)
!2132 = !DILocation(line: 914, column: 11, scope: !2131)
!2133 = !DILocation(line: 914, column: 16, scope: !2131)
!2134 = !DILocation(line: 914, column: 25, scope: !2131)
!2135 = !DILocation(line: 915, column: 8, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 915, column: 8)
!2137 = !DILocation(line: 915, column: 11, scope: !2136)
!2138 = !DILocation(line: 915, column: 16, scope: !2136)
!2139 = !DILocation(line: 915, column: 25, scope: !2136)
!2140 = !DILocation(line: 916, column: 8, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 916, column: 8)
!2142 = !DILocation(line: 916, column: 11, scope: !2141)
!2143 = !DILocation(line: 916, column: 16, scope: !2141)
!2144 = !DILocation(line: 916, column: 25, scope: !2141)
!2145 = !DILocation(line: 918, column: 4, scope: !2108)
!2146 = !DILocation(line: 919, column: 4, scope: !2108)
!2147 = !DILocation(line: 919, column: 10, scope: !2108)
!2148 = !DILocation(line: 919, column: 16, scope: !2108)
!2149 = !DILocation(line: 921, column: 4, scope: !2108)
!2150 = !DILocation(line: 922, column: 1, scope: !2108)
!2151 = distinct !DISubprogram(name: "BZ2_bzWriteOpen", scope: !2, file: !2, line: 960, type: !2152, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!2154, !2156, !69, !76, !76, !76}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "BZFILE", file: !139, line: 177, baseType: null)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2157 = !DILocalVariable(name: "bzerror", arg: 1, scope: !2151, file: !2, line: 961, type: !2156)
!2158 = !DILocation(line: 961, column: 29, scope: !2151)
!2159 = !DILocalVariable(name: "f", arg: 2, scope: !2151, file: !2, line: 962, type: !69)
!2160 = !DILocation(line: 962, column: 29, scope: !2151)
!2161 = !DILocalVariable(name: "blockSize100k", arg: 3, scope: !2151, file: !2, line: 963, type: !76)
!2162 = !DILocation(line: 963, column: 29, scope: !2151)
!2163 = !DILocalVariable(name: "verbosity", arg: 4, scope: !2151, file: !2, line: 964, type: !76)
!2164 = !DILocation(line: 964, column: 29, scope: !2151)
!2165 = !DILocalVariable(name: "workFactor", arg: 5, scope: !2151, file: !2, line: 965, type: !76)
!2166 = !DILocation(line: 965, column: 29, scope: !2151)
!2167 = !DILocalVariable(name: "ret", scope: !2151, file: !2, line: 967, type: !135)
!2168 = !DILocation(line: 967, column: 12, scope: !2151)
!2169 = !DILocalVariable(name: "bzf", scope: !2151, file: !2, line: 968, type: !64)
!2170 = !DILocation(line: 968, column: 12, scope: !2151)
!2171 = !DILocation(line: 970, column: 4, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !2, line: 970, column: 4)
!2173 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 970, column: 4)
!2174 = !DILocation(line: 970, column: 4, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2173, file: !2, line: 970, column: 4)
!2176 = !DILocation(line: 972, column: 8, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 972, column: 8)
!2178 = !DILocation(line: 972, column: 10, scope: !2177)
!2179 = !DILocation(line: 972, column: 18, scope: !2177)
!2180 = !DILocation(line: 973, column: 9, scope: !2177)
!2181 = !DILocation(line: 973, column: 23, scope: !2177)
!2182 = !DILocation(line: 973, column: 27, scope: !2177)
!2183 = !DILocation(line: 973, column: 30, scope: !2177)
!2184 = !DILocation(line: 973, column: 44, scope: !2177)
!2185 = !DILocation(line: 973, column: 49, scope: !2177)
!2186 = !DILocation(line: 974, column: 9, scope: !2177)
!2187 = !DILocation(line: 974, column: 20, scope: !2177)
!2188 = !DILocation(line: 974, column: 24, scope: !2177)
!2189 = !DILocation(line: 974, column: 27, scope: !2177)
!2190 = !DILocation(line: 974, column: 38, scope: !2177)
!2191 = !DILocation(line: 974, column: 45, scope: !2177)
!2192 = !DILocation(line: 975, column: 9, scope: !2177)
!2193 = !DILocation(line: 975, column: 19, scope: !2177)
!2194 = !DILocation(line: 975, column: 23, scope: !2177)
!2195 = !DILocation(line: 975, column: 26, scope: !2177)
!2196 = !DILocation(line: 975, column: 36, scope: !2177)
!2197 = !DILocation(line: 976, column: 9, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !2, line: 976, column: 9)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 976, column: 9)
!2200 = distinct !DILexicalBlock(scope: !2177, file: !2, line: 976, column: 7)
!2201 = !DILocation(line: 976, column: 9, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !2, line: 976, column: 9)
!2203 = !DILocation(line: 976, column: 36, scope: !2200)
!2204 = !DILocation(line: 978, column: 15, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 978, column: 8)
!2206 = !DILocation(line: 978, column: 8, scope: !2205)
!2207 = !DILocation(line: 979, column: 9, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 979, column: 9)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !2, line: 979, column: 9)
!2210 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 979, column: 7)
!2211 = !DILocation(line: 979, column: 9, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 979, column: 9)
!2213 = !DILocation(line: 979, column: 33, scope: !2210)
!2214 = !DILocation(line: 981, column: 10, scope: !2151)
!2215 = !DILocation(line: 981, column: 8, scope: !2151)
!2216 = !DILocation(line: 982, column: 8, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 982, column: 8)
!2218 = !DILocation(line: 982, column: 12, scope: !2217)
!2219 = !DILocation(line: 983, column: 9, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 983, column: 9)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !2, line: 983, column: 9)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 983, column: 7)
!2223 = !DILocation(line: 983, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 983, column: 9)
!2225 = !DILocation(line: 983, column: 34, scope: !2222)
!2226 = !DILocation(line: 985, column: 4, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 985, column: 4)
!2228 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 985, column: 4)
!2229 = !DILocation(line: 985, column: 4, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 985, column: 4)
!2231 = !DILocation(line: 986, column: 4, scope: !2151)
!2232 = !DILocation(line: 986, column: 9, scope: !2151)
!2233 = !DILocation(line: 986, column: 23, scope: !2151)
!2234 = !DILocation(line: 987, column: 4, scope: !2151)
!2235 = !DILocation(line: 987, column: 9, scope: !2151)
!2236 = !DILocation(line: 987, column: 23, scope: !2151)
!2237 = !DILocation(line: 988, column: 25, scope: !2151)
!2238 = !DILocation(line: 988, column: 4, scope: !2151)
!2239 = !DILocation(line: 988, column: 9, scope: !2151)
!2240 = !DILocation(line: 988, column: 23, scope: !2151)
!2241 = !DILocation(line: 989, column: 4, scope: !2151)
!2242 = !DILocation(line: 989, column: 9, scope: !2151)
!2243 = !DILocation(line: 989, column: 23, scope: !2151)
!2244 = !DILocation(line: 990, column: 4, scope: !2151)
!2245 = !DILocation(line: 990, column: 9, scope: !2151)
!2246 = !DILocation(line: 990, column: 14, scope: !2151)
!2247 = !DILocation(line: 990, column: 23, scope: !2151)
!2248 = !DILocation(line: 991, column: 4, scope: !2151)
!2249 = !DILocation(line: 991, column: 9, scope: !2151)
!2250 = !DILocation(line: 991, column: 14, scope: !2151)
!2251 = !DILocation(line: 991, column: 23, scope: !2151)
!2252 = !DILocation(line: 992, column: 4, scope: !2151)
!2253 = !DILocation(line: 992, column: 9, scope: !2151)
!2254 = !DILocation(line: 992, column: 14, scope: !2151)
!2255 = !DILocation(line: 992, column: 23, scope: !2151)
!2256 = !DILocation(line: 994, column: 8, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 994, column: 8)
!2258 = !DILocation(line: 994, column: 19, scope: !2257)
!2259 = !DILocation(line: 994, column: 36, scope: !2257)
!2260 = !DILocation(line: 994, column: 25, scope: !2257)
!2261 = !DILocation(line: 995, column: 33, scope: !2151)
!2262 = !DILocation(line: 995, column: 38, scope: !2151)
!2263 = !DILocation(line: 995, column: 45, scope: !2151)
!2264 = !DILocation(line: 996, column: 31, scope: !2151)
!2265 = !DILocation(line: 996, column: 42, scope: !2151)
!2266 = !DILocation(line: 995, column: 10, scope: !2151)
!2267 = !DILocation(line: 995, column: 8, scope: !2151)
!2268 = !DILocation(line: 997, column: 8, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 997, column: 8)
!2270 = !DILocation(line: 997, column: 12, scope: !2269)
!2271 = !DILocation(line: 998, column: 9, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 998, column: 9)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 998, column: 9)
!2274 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 998, column: 7)
!2275 = !DILocation(line: 998, column: 9, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 998, column: 9)
!2277 = !DILocation(line: 998, column: 30, scope: !2274)
!2278 = !DILocation(line: 998, column: 25, scope: !2274)
!2279 = !DILocation(line: 998, column: 36, scope: !2274)
!2280 = !DILocation(line: 1000, column: 4, scope: !2151)
!2281 = !DILocation(line: 1000, column: 9, scope: !2151)
!2282 = !DILocation(line: 1000, column: 14, scope: !2151)
!2283 = !DILocation(line: 1000, column: 23, scope: !2151)
!2284 = !DILocation(line: 1001, column: 4, scope: !2151)
!2285 = !DILocation(line: 1001, column: 9, scope: !2151)
!2286 = !DILocation(line: 1001, column: 23, scope: !2151)
!2287 = !DILocation(line: 1002, column: 11, scope: !2151)
!2288 = !DILocation(line: 1002, column: 4, scope: !2151)
!2289 = !DILocation(line: 1003, column: 1, scope: !2151)
!2290 = distinct !DISubprogram(name: "BZ2_bzWrite", scope: !2, file: !2, line: 1008, type: !2291, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{null, !2156, !2154, !53, !76}
!2293 = !DILocalVariable(name: "bzerror", arg: 1, scope: !2290, file: !2, line: 1009, type: !2156)
!2294 = !DILocation(line: 1009, column: 24, scope: !2290)
!2295 = !DILocalVariable(name: "b", arg: 2, scope: !2290, file: !2, line: 1010, type: !2154)
!2296 = !DILocation(line: 1010, column: 24, scope: !2290)
!2297 = !DILocalVariable(name: "buf", arg: 3, scope: !2290, file: !2, line: 1011, type: !53)
!2298 = !DILocation(line: 1011, column: 24, scope: !2290)
!2299 = !DILocalVariable(name: "len", arg: 4, scope: !2290, file: !2, line: 1012, type: !76)
!2300 = !DILocation(line: 1012, column: 24, scope: !2290)
!2301 = !DILocalVariable(name: "n", scope: !2290, file: !2, line: 1014, type: !135)
!2302 = !DILocation(line: 1014, column: 10, scope: !2290)
!2303 = !DILocalVariable(name: "n2", scope: !2290, file: !2, line: 1014, type: !135)
!2304 = !DILocation(line: 1014, column: 13, scope: !2290)
!2305 = !DILocalVariable(name: "ret", scope: !2290, file: !2, line: 1014, type: !135)
!2306 = !DILocation(line: 1014, column: 17, scope: !2290)
!2307 = !DILocalVariable(name: "bzf", scope: !2290, file: !2, line: 1015, type: !64)
!2308 = !DILocation(line: 1015, column: 12, scope: !2290)
!2309 = !DILocation(line: 1015, column: 27, scope: !2290)
!2310 = !DILocation(line: 1017, column: 4, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !2, line: 1017, column: 4)
!2312 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 1017, column: 4)
!2313 = !DILocation(line: 1017, column: 4, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2312, file: !2, line: 1017, column: 4)
!2315 = !DILocation(line: 1018, column: 8, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 1018, column: 8)
!2317 = !DILocation(line: 1018, column: 12, scope: !2316)
!2318 = !DILocation(line: 1018, column: 20, scope: !2316)
!2319 = !DILocation(line: 1018, column: 23, scope: !2316)
!2320 = !DILocation(line: 1018, column: 27, scope: !2316)
!2321 = !DILocation(line: 1018, column: 35, scope: !2316)
!2322 = !DILocation(line: 1018, column: 38, scope: !2316)
!2323 = !DILocation(line: 1018, column: 42, scope: !2316)
!2324 = !DILocation(line: 1019, column: 9, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1019, column: 9)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !2, line: 1019, column: 9)
!2327 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 1019, column: 7)
!2328 = !DILocation(line: 1019, column: 9, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1019, column: 9)
!2330 = !DILocation(line: 1019, column: 36, scope: !2327)
!2331 = !DILocation(line: 1020, column: 10, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 1020, column: 8)
!2333 = !DILocation(line: 1020, column: 15, scope: !2332)
!2334 = !DILocation(line: 1020, column: 9, scope: !2332)
!2335 = !DILocation(line: 1020, column: 8, scope: !2332)
!2336 = !DILocation(line: 1021, column: 9, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 1021, column: 9)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !2, line: 1021, column: 9)
!2339 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 1021, column: 7)
!2340 = !DILocation(line: 1021, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 1021, column: 9)
!2342 = !DILocation(line: 1021, column: 39, scope: !2339)
!2343 = !DILocation(line: 1022, column: 15, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 1022, column: 8)
!2345 = !DILocation(line: 1022, column: 20, scope: !2344)
!2346 = !DILocation(line: 1022, column: 8, scope: !2344)
!2347 = !DILocation(line: 1023, column: 9, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !2, line: 1023, column: 9)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !2, line: 1023, column: 9)
!2350 = distinct !DILexicalBlock(scope: !2344, file: !2, line: 1023, column: 7)
!2351 = !DILocation(line: 1023, column: 9, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !2, line: 1023, column: 9)
!2353 = !DILocation(line: 1023, column: 33, scope: !2350)
!2354 = !DILocation(line: 1025, column: 8, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 1025, column: 8)
!2356 = !DILocation(line: 1025, column: 12, scope: !2355)
!2357 = !DILocation(line: 1026, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 1026, column: 9)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 1026, column: 9)
!2360 = distinct !DILexicalBlock(scope: !2355, file: !2, line: 1026, column: 7)
!2361 = !DILocation(line: 1026, column: 9, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 1026, column: 9)
!2363 = !DILocation(line: 1026, column: 27, scope: !2360)
!2364 = !DILocation(line: 1028, column: 25, scope: !2290)
!2365 = !DILocation(line: 1028, column: 4, scope: !2290)
!2366 = !DILocation(line: 1028, column: 9, scope: !2290)
!2367 = !DILocation(line: 1028, column: 14, scope: !2290)
!2368 = !DILocation(line: 1028, column: 23, scope: !2290)
!2369 = !DILocation(line: 1029, column: 25, scope: !2290)
!2370 = !DILocation(line: 1029, column: 4, scope: !2290)
!2371 = !DILocation(line: 1029, column: 9, scope: !2290)
!2372 = !DILocation(line: 1029, column: 14, scope: !2290)
!2373 = !DILocation(line: 1029, column: 23, scope: !2290)
!2374 = !DILocation(line: 1031, column: 4, scope: !2290)
!2375 = !DILocation(line: 1032, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 1031, column: 17)
!2377 = !DILocation(line: 1032, column: 12, scope: !2376)
!2378 = !DILocation(line: 1032, column: 17, scope: !2376)
!2379 = !DILocation(line: 1032, column: 27, scope: !2376)
!2380 = !DILocation(line: 1033, column: 28, scope: !2376)
!2381 = !DILocation(line: 1033, column: 33, scope: !2376)
!2382 = !DILocation(line: 1033, column: 7, scope: !2376)
!2383 = !DILocation(line: 1033, column: 12, scope: !2376)
!2384 = !DILocation(line: 1033, column: 17, scope: !2376)
!2385 = !DILocation(line: 1033, column: 26, scope: !2376)
!2386 = !DILocation(line: 1034, column: 32, scope: !2376)
!2387 = !DILocation(line: 1034, column: 37, scope: !2376)
!2388 = !DILocation(line: 1034, column: 13, scope: !2376)
!2389 = !DILocation(line: 1034, column: 11, scope: !2376)
!2390 = !DILocation(line: 1035, column: 11, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 1035, column: 11)
!2392 = !DILocation(line: 1035, column: 15, scope: !2391)
!2393 = !DILocation(line: 1036, column: 12, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 1036, column: 12)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 1036, column: 12)
!2396 = distinct !DILexicalBlock(scope: !2391, file: !2, line: 1036, column: 10)
!2397 = !DILocation(line: 1036, column: 12, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 1036, column: 12)
!2399 = !DILocation(line: 1036, column: 28, scope: !2396)
!2400 = !DILocation(line: 1038, column: 11, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 1038, column: 11)
!2402 = !DILocation(line: 1038, column: 16, scope: !2401)
!2403 = !DILocation(line: 1038, column: 21, scope: !2401)
!2404 = !DILocation(line: 1038, column: 31, scope: !2401)
!2405 = !DILocation(line: 1039, column: 30, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 1038, column: 48)
!2407 = !DILocation(line: 1039, column: 35, scope: !2406)
!2408 = !DILocation(line: 1039, column: 40, scope: !2406)
!2409 = !DILocation(line: 1039, column: 28, scope: !2406)
!2410 = !DILocation(line: 1039, column: 12, scope: !2406)
!2411 = !DILocation(line: 1040, column: 32, scope: !2406)
!2412 = !DILocation(line: 1040, column: 37, scope: !2406)
!2413 = !DILocation(line: 1040, column: 31, scope: !2406)
!2414 = !DILocation(line: 1041, column: 24, scope: !2406)
!2415 = !DILocation(line: 1041, column: 27, scope: !2406)
!2416 = !DILocation(line: 1041, column: 32, scope: !2406)
!2417 = !DILocation(line: 1040, column: 15, scope: !2406)
!2418 = !DILocation(line: 1040, column: 13, scope: !2406)
!2419 = !DILocation(line: 1042, column: 14, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2406, file: !2, line: 1042, column: 14)
!2421 = !DILocation(line: 1042, column: 19, scope: !2420)
!2422 = !DILocation(line: 1042, column: 16, scope: !2420)
!2423 = !DILocation(line: 1042, column: 22, scope: !2420)
!2424 = !DILocation(line: 1042, column: 32, scope: !2420)
!2425 = !DILocation(line: 1042, column: 37, scope: !2420)
!2426 = !DILocation(line: 1042, column: 25, scope: !2420)
!2427 = !DILocation(line: 1043, column: 15, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 1043, column: 15)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !2, line: 1043, column: 15)
!2430 = distinct !DILexicalBlock(scope: !2420, file: !2, line: 1043, column: 13)
!2431 = !DILocation(line: 1043, column: 15, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 1043, column: 15)
!2433 = !DILocation(line: 1043, column: 39, scope: !2430)
!2434 = !DILocation(line: 1044, column: 7, scope: !2406)
!2435 = !DILocation(line: 1046, column: 11, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 1046, column: 11)
!2437 = !DILocation(line: 1046, column: 16, scope: !2436)
!2438 = !DILocation(line: 1046, column: 21, scope: !2436)
!2439 = !DILocation(line: 1046, column: 30, scope: !2436)
!2440 = !DILocation(line: 1047, column: 12, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 1047, column: 12)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 1047, column: 12)
!2443 = distinct !DILexicalBlock(scope: !2436, file: !2, line: 1047, column: 10)
!2444 = !DILocation(line: 1047, column: 12, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 1047, column: 12)
!2446 = !DILocation(line: 1047, column: 30, scope: !2443)
!2447 = distinct !{!2447, !2374, !2448}
!2448 = !DILocation(line: 1048, column: 4, scope: !2290)
!2449 = !DILocation(line: 1049, column: 1, scope: !2290)
!2450 = distinct !DISubprogram(name: "BZ2_bzWriteClose", scope: !2, file: !2, line: 1053, type: !2451, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !2156, !2154, !76, !2453, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!2454 = !DILocalVariable(name: "bzerror", arg: 1, scope: !2450, file: !2, line: 1054, type: !2156)
!2455 = !DILocation(line: 1054, column: 35, scope: !2450)
!2456 = !DILocalVariable(name: "b", arg: 2, scope: !2450, file: !2, line: 1055, type: !2154)
!2457 = !DILocation(line: 1055, column: 35, scope: !2450)
!2458 = !DILocalVariable(name: "abandon", arg: 3, scope: !2450, file: !2, line: 1056, type: !76)
!2459 = !DILocation(line: 1056, column: 35, scope: !2450)
!2460 = !DILocalVariable(name: "nbytes_in", arg: 4, scope: !2450, file: !2, line: 1057, type: !2453)
!2461 = !DILocation(line: 1057, column: 35, scope: !2450)
!2462 = !DILocalVariable(name: "nbytes_out", arg: 5, scope: !2450, file: !2, line: 1058, type: !2453)
!2463 = !DILocation(line: 1058, column: 35, scope: !2450)
!2464 = !DILocation(line: 1060, column: 25, scope: !2450)
!2465 = !DILocation(line: 1060, column: 34, scope: !2450)
!2466 = !DILocation(line: 1060, column: 37, scope: !2450)
!2467 = !DILocation(line: 1061, column: 25, scope: !2450)
!2468 = !DILocation(line: 1061, column: 42, scope: !2450)
!2469 = !DILocation(line: 1060, column: 4, scope: !2450)
!2470 = !DILocation(line: 1062, column: 1, scope: !2450)
!2471 = distinct !DISubprogram(name: "BZ2_bzWriteClose64", scope: !2, file: !2, line: 1065, type: !2472, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !2156, !2154, !76, !2453, !2453, !2453, !2453}
!2474 = !DILocalVariable(name: "bzerror", arg: 1, scope: !2471, file: !2, line: 1066, type: !2156)
!2475 = !DILocation(line: 1066, column: 35, scope: !2471)
!2476 = !DILocalVariable(name: "b", arg: 2, scope: !2471, file: !2, line: 1067, type: !2154)
!2477 = !DILocation(line: 1067, column: 35, scope: !2471)
!2478 = !DILocalVariable(name: "abandon", arg: 3, scope: !2471, file: !2, line: 1068, type: !76)
!2479 = !DILocation(line: 1068, column: 35, scope: !2471)
!2480 = !DILocalVariable(name: "nbytes_in_lo32", arg: 4, scope: !2471, file: !2, line: 1069, type: !2453)
!2481 = !DILocation(line: 1069, column: 35, scope: !2471)
!2482 = !DILocalVariable(name: "nbytes_in_hi32", arg: 5, scope: !2471, file: !2, line: 1070, type: !2453)
!2483 = !DILocation(line: 1070, column: 35, scope: !2471)
!2484 = !DILocalVariable(name: "nbytes_out_lo32", arg: 6, scope: !2471, file: !2, line: 1071, type: !2453)
!2485 = !DILocation(line: 1071, column: 35, scope: !2471)
!2486 = !DILocalVariable(name: "nbytes_out_hi32", arg: 7, scope: !2471, file: !2, line: 1072, type: !2453)
!2487 = !DILocation(line: 1072, column: 35, scope: !2471)
!2488 = !DILocalVariable(name: "n", scope: !2471, file: !2, line: 1074, type: !135)
!2489 = !DILocation(line: 1074, column: 12, scope: !2471)
!2490 = !DILocalVariable(name: "n2", scope: !2471, file: !2, line: 1074, type: !135)
!2491 = !DILocation(line: 1074, column: 15, scope: !2471)
!2492 = !DILocalVariable(name: "ret", scope: !2471, file: !2, line: 1074, type: !135)
!2493 = !DILocation(line: 1074, column: 19, scope: !2471)
!2494 = !DILocalVariable(name: "bzf", scope: !2471, file: !2, line: 1075, type: !64)
!2495 = !DILocation(line: 1075, column: 12, scope: !2471)
!2496 = !DILocation(line: 1075, column: 27, scope: !2471)
!2497 = !DILocation(line: 1077, column: 8, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1077, column: 8)
!2499 = !DILocation(line: 1077, column: 12, scope: !2498)
!2500 = !DILocation(line: 1078, column: 9, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 1078, column: 9)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !2, line: 1078, column: 9)
!2503 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 1078, column: 7)
!2504 = !DILocation(line: 1078, column: 9, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 1078, column: 9)
!2506 = !DILocation(line: 1078, column: 27, scope: !2503)
!2507 = !DILocation(line: 1079, column: 10, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1079, column: 8)
!2509 = !DILocation(line: 1079, column: 15, scope: !2508)
!2510 = !DILocation(line: 1079, column: 9, scope: !2508)
!2511 = !DILocation(line: 1079, column: 8, scope: !2508)
!2512 = !DILocation(line: 1080, column: 9, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 1080, column: 9)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 1080, column: 9)
!2515 = distinct !DILexicalBlock(scope: !2508, file: !2, line: 1080, column: 7)
!2516 = !DILocation(line: 1080, column: 9, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 1080, column: 9)
!2518 = !DILocation(line: 1080, column: 39, scope: !2515)
!2519 = !DILocation(line: 1081, column: 15, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1081, column: 8)
!2521 = !DILocation(line: 1081, column: 20, scope: !2520)
!2522 = !DILocation(line: 1081, column: 8, scope: !2520)
!2523 = !DILocation(line: 1082, column: 9, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 1082, column: 9)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 1082, column: 9)
!2526 = distinct !DILexicalBlock(scope: !2520, file: !2, line: 1082, column: 7)
!2527 = !DILocation(line: 1082, column: 9, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 1082, column: 9)
!2529 = !DILocation(line: 1082, column: 33, scope: !2526)
!2530 = !DILocation(line: 1084, column: 8, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1084, column: 8)
!2532 = !DILocation(line: 1084, column: 23, scope: !2531)
!2533 = !DILocation(line: 1084, column: 33, scope: !2531)
!2534 = !DILocation(line: 1084, column: 48, scope: !2531)
!2535 = !DILocation(line: 1084, column: 32, scope: !2531)
!2536 = !DILocation(line: 1085, column: 8, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1085, column: 8)
!2538 = !DILocation(line: 1085, column: 23, scope: !2537)
!2539 = !DILocation(line: 1085, column: 33, scope: !2537)
!2540 = !DILocation(line: 1085, column: 48, scope: !2537)
!2541 = !DILocation(line: 1085, column: 32, scope: !2537)
!2542 = !DILocation(line: 1086, column: 8, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1086, column: 8)
!2544 = !DILocation(line: 1086, column: 24, scope: !2543)
!2545 = !DILocation(line: 1086, column: 34, scope: !2543)
!2546 = !DILocation(line: 1086, column: 50, scope: !2543)
!2547 = !DILocation(line: 1086, column: 33, scope: !2543)
!2548 = !DILocation(line: 1087, column: 8, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1087, column: 8)
!2550 = !DILocation(line: 1087, column: 24, scope: !2549)
!2551 = !DILocation(line: 1087, column: 34, scope: !2549)
!2552 = !DILocation(line: 1087, column: 50, scope: !2549)
!2553 = !DILocation(line: 1087, column: 33, scope: !2549)
!2554 = !DILocation(line: 1089, column: 10, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1089, column: 8)
!2556 = !DILocation(line: 1089, column: 19, scope: !2555)
!2557 = !DILocation(line: 1089, column: 22, scope: !2555)
!2558 = !DILocation(line: 1089, column: 27, scope: !2555)
!2559 = !DILocation(line: 1089, column: 35, scope: !2555)
!2560 = !DILocation(line: 1090, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 1089, column: 45)
!2562 = !DILocation(line: 1091, column: 10, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2561, file: !2, line: 1090, column: 20)
!2564 = !DILocation(line: 1091, column: 15, scope: !2563)
!2565 = !DILocation(line: 1091, column: 20, scope: !2563)
!2566 = !DILocation(line: 1091, column: 30, scope: !2563)
!2567 = !DILocation(line: 1092, column: 31, scope: !2563)
!2568 = !DILocation(line: 1092, column: 36, scope: !2563)
!2569 = !DILocation(line: 1092, column: 10, scope: !2563)
!2570 = !DILocation(line: 1092, column: 15, scope: !2563)
!2571 = !DILocation(line: 1092, column: 20, scope: !2563)
!2572 = !DILocation(line: 1092, column: 29, scope: !2563)
!2573 = !DILocation(line: 1093, column: 35, scope: !2563)
!2574 = !DILocation(line: 1093, column: 40, scope: !2563)
!2575 = !DILocation(line: 1093, column: 16, scope: !2563)
!2576 = !DILocation(line: 1093, column: 14, scope: !2563)
!2577 = !DILocation(line: 1094, column: 14, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 1094, column: 14)
!2579 = !DILocation(line: 1094, column: 18, scope: !2578)
!2580 = !DILocation(line: 1094, column: 34, scope: !2578)
!2581 = !DILocation(line: 1094, column: 37, scope: !2578)
!2582 = !DILocation(line: 1094, column: 41, scope: !2578)
!2583 = !DILocation(line: 1095, column: 15, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !2, line: 1095, column: 15)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 1095, column: 15)
!2586 = distinct !DILexicalBlock(scope: !2578, file: !2, line: 1095, column: 13)
!2587 = !DILocation(line: 1095, column: 15, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !2, line: 1095, column: 15)
!2589 = !DILocation(line: 1095, column: 31, scope: !2586)
!2590 = !DILocation(line: 1097, column: 14, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 1097, column: 14)
!2592 = !DILocation(line: 1097, column: 19, scope: !2591)
!2593 = !DILocation(line: 1097, column: 24, scope: !2591)
!2594 = !DILocation(line: 1097, column: 34, scope: !2591)
!2595 = !DILocation(line: 1098, column: 33, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2591, file: !2, line: 1097, column: 51)
!2597 = !DILocation(line: 1098, column: 38, scope: !2596)
!2598 = !DILocation(line: 1098, column: 43, scope: !2596)
!2599 = !DILocation(line: 1098, column: 31, scope: !2596)
!2600 = !DILocation(line: 1098, column: 15, scope: !2596)
!2601 = !DILocation(line: 1099, column: 35, scope: !2596)
!2602 = !DILocation(line: 1099, column: 40, scope: !2596)
!2603 = !DILocation(line: 1099, column: 34, scope: !2596)
!2604 = !DILocation(line: 1100, column: 27, scope: !2596)
!2605 = !DILocation(line: 1100, column: 30, scope: !2596)
!2606 = !DILocation(line: 1100, column: 35, scope: !2596)
!2607 = !DILocation(line: 1099, column: 18, scope: !2596)
!2608 = !DILocation(line: 1099, column: 16, scope: !2596)
!2609 = !DILocation(line: 1101, column: 17, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2596, file: !2, line: 1101, column: 17)
!2611 = !DILocation(line: 1101, column: 22, scope: !2610)
!2612 = !DILocation(line: 1101, column: 19, scope: !2610)
!2613 = !DILocation(line: 1101, column: 25, scope: !2610)
!2614 = !DILocation(line: 1101, column: 35, scope: !2610)
!2615 = !DILocation(line: 1101, column: 40, scope: !2610)
!2616 = !DILocation(line: 1101, column: 28, scope: !2610)
!2617 = !DILocation(line: 1102, column: 18, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 1102, column: 18)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 1102, column: 18)
!2620 = distinct !DILexicalBlock(scope: !2610, file: !2, line: 1102, column: 16)
!2621 = !DILocation(line: 1102, column: 18, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 1102, column: 18)
!2623 = !DILocation(line: 1102, column: 42, scope: !2620)
!2624 = !DILocation(line: 1103, column: 10, scope: !2596)
!2625 = !DILocation(line: 1105, column: 14, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 1105, column: 14)
!2627 = !DILocation(line: 1105, column: 18, scope: !2626)
!2628 = !DILocation(line: 1105, column: 36, scope: !2626)
!2629 = distinct !{!2629, !2560, !2630}
!2630 = !DILocation(line: 1106, column: 7, scope: !2561)
!2631 = !DILocation(line: 1107, column: 4, scope: !2561)
!2632 = !DILocation(line: 1109, column: 10, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1109, column: 9)
!2634 = !DILocation(line: 1109, column: 18, scope: !2633)
!2635 = !DILocation(line: 1109, column: 31, scope: !2633)
!2636 = !DILocation(line: 1109, column: 36, scope: !2633)
!2637 = !DILocation(line: 1109, column: 22, scope: !2633)
!2638 = !DILocation(line: 1110, column: 16, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 1109, column: 47)
!2640 = !DILocation(line: 1110, column: 21, scope: !2639)
!2641 = !DILocation(line: 1110, column: 7, scope: !2639)
!2642 = !DILocation(line: 1111, column: 18, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 1111, column: 11)
!2644 = !DILocation(line: 1111, column: 23, scope: !2643)
!2645 = !DILocation(line: 1111, column: 11, scope: !2643)
!2646 = !DILocation(line: 1112, column: 12, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !2, line: 1112, column: 12)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 1112, column: 12)
!2649 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1112, column: 10)
!2650 = !DILocation(line: 1112, column: 12, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !2, line: 1112, column: 12)
!2652 = !DILocation(line: 1112, column: 36, scope: !2649)
!2653 = !DILocation(line: 1113, column: 4, scope: !2639)
!2654 = !DILocation(line: 1115, column: 8, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1115, column: 8)
!2656 = !DILocation(line: 1115, column: 23, scope: !2655)
!2657 = !DILocation(line: 1116, column: 25, scope: !2655)
!2658 = !DILocation(line: 1116, column: 30, scope: !2655)
!2659 = !DILocation(line: 1116, column: 35, scope: !2655)
!2660 = !DILocation(line: 1116, column: 8, scope: !2655)
!2661 = !DILocation(line: 1116, column: 23, scope: !2655)
!2662 = !DILocation(line: 1116, column: 7, scope: !2655)
!2663 = !DILocation(line: 1117, column: 8, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1117, column: 8)
!2665 = !DILocation(line: 1117, column: 23, scope: !2664)
!2666 = !DILocation(line: 1118, column: 25, scope: !2664)
!2667 = !DILocation(line: 1118, column: 30, scope: !2664)
!2668 = !DILocation(line: 1118, column: 35, scope: !2664)
!2669 = !DILocation(line: 1118, column: 8, scope: !2664)
!2670 = !DILocation(line: 1118, column: 23, scope: !2664)
!2671 = !DILocation(line: 1118, column: 7, scope: !2664)
!2672 = !DILocation(line: 1119, column: 8, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1119, column: 8)
!2674 = !DILocation(line: 1119, column: 24, scope: !2673)
!2675 = !DILocation(line: 1120, column: 26, scope: !2673)
!2676 = !DILocation(line: 1120, column: 31, scope: !2673)
!2677 = !DILocation(line: 1120, column: 36, scope: !2673)
!2678 = !DILocation(line: 1120, column: 8, scope: !2673)
!2679 = !DILocation(line: 1120, column: 24, scope: !2673)
!2680 = !DILocation(line: 1120, column: 7, scope: !2673)
!2681 = !DILocation(line: 1121, column: 8, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1121, column: 8)
!2683 = !DILocation(line: 1121, column: 24, scope: !2682)
!2684 = !DILocation(line: 1122, column: 26, scope: !2682)
!2685 = !DILocation(line: 1122, column: 31, scope: !2682)
!2686 = !DILocation(line: 1122, column: 36, scope: !2682)
!2687 = !DILocation(line: 1122, column: 8, scope: !2682)
!2688 = !DILocation(line: 1122, column: 24, scope: !2682)
!2689 = !DILocation(line: 1122, column: 7, scope: !2682)
!2690 = !DILocation(line: 1124, column: 4, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 1124, column: 4)
!2692 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 1124, column: 4)
!2693 = !DILocation(line: 1124, column: 4, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 1124, column: 4)
!2695 = !DILocation(line: 1125, column: 26, scope: !2471)
!2696 = !DILocation(line: 1125, column: 31, scope: !2471)
!2697 = !DILocation(line: 1125, column: 4, scope: !2471)
!2698 = !DILocation(line: 1126, column: 11, scope: !2471)
!2699 = !DILocation(line: 1126, column: 4, scope: !2471)
!2700 = !DILocation(line: 1127, column: 1, scope: !2471)
!2701 = distinct !DISubprogram(name: "BZ2_bzReadOpen", scope: !2, file: !2, line: 1131, type: !2702, scopeLine: 1138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!2154, !2156, !69, !76, !76, !53, !76}
!2704 = !DILocalVariable(name: "bzerror", arg: 1, scope: !2701, file: !2, line: 1132, type: !2156)
!2705 = !DILocation(line: 1132, column: 28, scope: !2701)
!2706 = !DILocalVariable(name: "f", arg: 2, scope: !2701, file: !2, line: 1133, type: !69)
!2707 = !DILocation(line: 1133, column: 28, scope: !2701)
!2708 = !DILocalVariable(name: "verbosity", arg: 3, scope: !2701, file: !2, line: 1134, type: !76)
!2709 = !DILocation(line: 1134, column: 28, scope: !2701)
!2710 = !DILocalVariable(name: "small", arg: 4, scope: !2701, file: !2, line: 1135, type: !76)
!2711 = !DILocation(line: 1135, column: 28, scope: !2701)
!2712 = !DILocalVariable(name: "unused", arg: 5, scope: !2701, file: !2, line: 1136, type: !53)
!2713 = !DILocation(line: 1136, column: 28, scope: !2701)
!2714 = !DILocalVariable(name: "nUnused", arg: 6, scope: !2701, file: !2, line: 1137, type: !76)
!2715 = !DILocation(line: 1137, column: 28, scope: !2701)
!2716 = !DILocalVariable(name: "bzf", scope: !2701, file: !2, line: 1139, type: !64)
!2717 = !DILocation(line: 1139, column: 12, scope: !2701)
!2718 = !DILocalVariable(name: "ret", scope: !2701, file: !2, line: 1140, type: !76)
!2719 = !DILocation(line: 1140, column: 12, scope: !2701)
!2720 = !DILocation(line: 1142, column: 4, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !2, line: 1142, column: 4)
!2722 = distinct !DILexicalBlock(scope: !2701, file: !2, line: 1142, column: 4)
!2723 = !DILocation(line: 1142, column: 4, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2722, file: !2, line: 1142, column: 4)
!2725 = !DILocation(line: 1144, column: 8, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2701, file: !2, line: 1144, column: 8)
!2727 = !DILocation(line: 1144, column: 10, scope: !2726)
!2728 = !DILocation(line: 1144, column: 18, scope: !2726)
!2729 = !DILocation(line: 1145, column: 9, scope: !2726)
!2730 = !DILocation(line: 1145, column: 15, scope: !2726)
!2731 = !DILocation(line: 1145, column: 20, scope: !2726)
!2732 = !DILocation(line: 1145, column: 23, scope: !2726)
!2733 = !DILocation(line: 1145, column: 29, scope: !2726)
!2734 = !DILocation(line: 1145, column: 35, scope: !2726)
!2735 = !DILocation(line: 1146, column: 9, scope: !2726)
!2736 = !DILocation(line: 1146, column: 19, scope: !2726)
!2737 = !DILocation(line: 1146, column: 23, scope: !2726)
!2738 = !DILocation(line: 1146, column: 26, scope: !2726)
!2739 = !DILocation(line: 1146, column: 36, scope: !2726)
!2740 = !DILocation(line: 1146, column: 41, scope: !2726)
!2741 = !DILocation(line: 1147, column: 9, scope: !2726)
!2742 = !DILocation(line: 1147, column: 16, scope: !2726)
!2743 = !DILocation(line: 1147, column: 24, scope: !2726)
!2744 = !DILocation(line: 1147, column: 27, scope: !2726)
!2745 = !DILocation(line: 1147, column: 35, scope: !2726)
!2746 = !DILocation(line: 1147, column: 41, scope: !2726)
!2747 = !DILocation(line: 1148, column: 9, scope: !2726)
!2748 = !DILocation(line: 1148, column: 16, scope: !2726)
!2749 = !DILocation(line: 1148, column: 24, scope: !2726)
!2750 = !DILocation(line: 1148, column: 28, scope: !2726)
!2751 = !DILocation(line: 1148, column: 36, scope: !2726)
!2752 = !DILocation(line: 1148, column: 40, scope: !2726)
!2753 = !DILocation(line: 1148, column: 43, scope: !2726)
!2754 = !DILocation(line: 1148, column: 51, scope: !2726)
!2755 = !DILocation(line: 1149, column: 9, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !2, line: 1149, column: 9)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !2, line: 1149, column: 9)
!2758 = distinct !DILexicalBlock(scope: !2726, file: !2, line: 1149, column: 7)
!2759 = !DILocation(line: 1149, column: 9, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2757, file: !2, line: 1149, column: 9)
!2761 = !DILocation(line: 1149, column: 36, scope: !2758)
!2762 = !DILocation(line: 1151, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2701, file: !2, line: 1151, column: 8)
!2764 = !DILocation(line: 1151, column: 8, scope: !2763)
!2765 = !DILocation(line: 1152, column: 9, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !2, line: 1152, column: 9)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !2, line: 1152, column: 9)
!2768 = distinct !DILexicalBlock(scope: !2763, file: !2, line: 1152, column: 7)
!2769 = !DILocation(line: 1152, column: 9, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2767, file: !2, line: 1152, column: 9)
!2771 = !DILocation(line: 1152, column: 33, scope: !2768)
!2772 = !DILocation(line: 1154, column: 10, scope: !2701)
!2773 = !DILocation(line: 1154, column: 8, scope: !2701)
!2774 = !DILocation(line: 1155, column: 8, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2701, file: !2, line: 1155, column: 8)
!2776 = !DILocation(line: 1155, column: 12, scope: !2775)
!2777 = !DILocation(line: 1156, column: 9, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 1156, column: 9)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 1156, column: 9)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !2, line: 1156, column: 7)
!2781 = !DILocation(line: 1156, column: 9, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 1156, column: 9)
!2783 = !DILocation(line: 1156, column: 34, scope: !2780)
!2784 = !DILocation(line: 1158, column: 4, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !2, line: 1158, column: 4)
!2786 = distinct !DILexicalBlock(scope: !2701, file: !2, line: 1158, column: 4)
!2787 = !DILocation(line: 1158, column: 4, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2786, file: !2, line: 1158, column: 4)
!2789 = !DILocation(line: 1160, column: 4, scope: !2701)
!2790 = !DILocation(line: 1160, column: 9, scope: !2701)
!2791 = !DILocation(line: 1160, column: 23, scope: !2701)
!2792 = !DILocation(line: 1161, column: 25, scope: !2701)
!2793 = !DILocation(line: 1161, column: 4, scope: !2701)
!2794 = !DILocation(line: 1161, column: 9, scope: !2701)
!2795 = !DILocation(line: 1161, column: 23, scope: !2701)
!2796 = !DILocation(line: 1162, column: 4, scope: !2701)
!2797 = !DILocation(line: 1162, column: 9, scope: !2701)
!2798 = !DILocation(line: 1162, column: 23, scope: !2701)
!2799 = !DILocation(line: 1163, column: 4, scope: !2701)
!2800 = !DILocation(line: 1163, column: 9, scope: !2701)
!2801 = !DILocation(line: 1163, column: 23, scope: !2701)
!2802 = !DILocation(line: 1164, column: 4, scope: !2701)
!2803 = !DILocation(line: 1164, column: 9, scope: !2701)
!2804 = !DILocation(line: 1164, column: 14, scope: !2701)
!2805 = !DILocation(line: 1164, column: 23, scope: !2701)
!2806 = !DILocation(line: 1165, column: 4, scope: !2701)
!2807 = !DILocation(line: 1165, column: 9, scope: !2701)
!2808 = !DILocation(line: 1165, column: 14, scope: !2701)
!2809 = !DILocation(line: 1165, column: 23, scope: !2701)
!2810 = !DILocation(line: 1166, column: 4, scope: !2701)
!2811 = !DILocation(line: 1166, column: 9, scope: !2701)
!2812 = !DILocation(line: 1166, column: 14, scope: !2701)
!2813 = !DILocation(line: 1166, column: 23, scope: !2701)
!2814 = !DILocation(line: 1168, column: 4, scope: !2701)
!2815 = !DILocation(line: 1168, column: 11, scope: !2701)
!2816 = !DILocation(line: 1168, column: 19, scope: !2701)
!2817 = !DILocation(line: 1169, column: 40, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2701, file: !2, line: 1168, column: 24)
!2819 = !DILocation(line: 1169, column: 29, scope: !2818)
!2820 = !DILocation(line: 1169, column: 7, scope: !2818)
!2821 = !DILocation(line: 1169, column: 12, scope: !2818)
!2822 = !DILocation(line: 1169, column: 16, scope: !2818)
!2823 = !DILocation(line: 1169, column: 21, scope: !2818)
!2824 = !DILocation(line: 1169, column: 27, scope: !2818)
!2825 = !DILocation(line: 1169, column: 50, scope: !2818)
!2826 = !DILocation(line: 1169, column: 55, scope: !2818)
!2827 = !DILocation(line: 1169, column: 59, scope: !2818)
!2828 = !DILocation(line: 1170, column: 40, scope: !2818)
!2829 = !DILocation(line: 1170, column: 28, scope: !2818)
!2830 = !DILocation(line: 1170, column: 14, scope: !2818)
!2831 = !DILocation(line: 1171, column: 14, scope: !2818)
!2832 = distinct !{!2832, !2814, !2833, !581}
!2833 = !DILocation(line: 1172, column: 4, scope: !2701)
!2834 = !DILocation(line: 1174, column: 35, scope: !2701)
!2835 = !DILocation(line: 1174, column: 40, scope: !2701)
!2836 = !DILocation(line: 1174, column: 47, scope: !2701)
!2837 = !DILocation(line: 1174, column: 58, scope: !2701)
!2838 = !DILocation(line: 1174, column: 10, scope: !2701)
!2839 = !DILocation(line: 1174, column: 8, scope: !2701)
!2840 = !DILocation(line: 1175, column: 8, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2701, file: !2, line: 1175, column: 8)
!2842 = !DILocation(line: 1175, column: 12, scope: !2841)
!2843 = !DILocation(line: 1176, column: 9, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !2, line: 1176, column: 9)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !2, line: 1176, column: 9)
!2846 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 1176, column: 7)
!2847 = !DILocation(line: 1176, column: 9, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2845, file: !2, line: 1176, column: 9)
!2849 = !DILocation(line: 1176, column: 30, scope: !2846)
!2850 = !DILocation(line: 1176, column: 25, scope: !2846)
!2851 = !DILocation(line: 1176, column: 36, scope: !2846)
!2852 = !DILocation(line: 1178, column: 25, scope: !2701)
!2853 = !DILocation(line: 1178, column: 30, scope: !2701)
!2854 = !DILocation(line: 1178, column: 4, scope: !2701)
!2855 = !DILocation(line: 1178, column: 9, scope: !2701)
!2856 = !DILocation(line: 1178, column: 14, scope: !2701)
!2857 = !DILocation(line: 1178, column: 23, scope: !2701)
!2858 = !DILocation(line: 1179, column: 25, scope: !2701)
!2859 = !DILocation(line: 1179, column: 30, scope: !2701)
!2860 = !DILocation(line: 1179, column: 4, scope: !2701)
!2861 = !DILocation(line: 1179, column: 9, scope: !2701)
!2862 = !DILocation(line: 1179, column: 14, scope: !2701)
!2863 = !DILocation(line: 1179, column: 23, scope: !2701)
!2864 = !DILocation(line: 1181, column: 4, scope: !2701)
!2865 = !DILocation(line: 1181, column: 9, scope: !2701)
!2866 = !DILocation(line: 1181, column: 23, scope: !2701)
!2867 = !DILocation(line: 1182, column: 11, scope: !2701)
!2868 = !DILocation(line: 1182, column: 4, scope: !2701)
!2869 = !DILocation(line: 1183, column: 1, scope: !2701)
!2870 = distinct !DISubprogram(name: "BZ2_bzReadClose", scope: !2, file: !2, line: 1187, type: !2871, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{null, !2156, !2154}
!2873 = !DILocalVariable(name: "bzerror", arg: 1, scope: !2870, file: !2, line: 1187, type: !2156)
!2874 = !DILocation(line: 1187, column: 37, scope: !2870)
!2875 = !DILocalVariable(name: "b", arg: 2, scope: !2870, file: !2, line: 1187, type: !2154)
!2876 = !DILocation(line: 1187, column: 54, scope: !2870)
!2877 = !DILocalVariable(name: "bzf", scope: !2870, file: !2, line: 1189, type: !64)
!2878 = !DILocation(line: 1189, column: 12, scope: !2870)
!2879 = !DILocation(line: 1189, column: 27, scope: !2870)
!2880 = !DILocation(line: 1191, column: 4, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !2, line: 1191, column: 4)
!2882 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1191, column: 4)
!2883 = !DILocation(line: 1191, column: 4, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2882, file: !2, line: 1191, column: 4)
!2885 = !DILocation(line: 1192, column: 8, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1192, column: 8)
!2887 = !DILocation(line: 1192, column: 12, scope: !2886)
!2888 = !DILocation(line: 1193, column: 9, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 1193, column: 9)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 1193, column: 9)
!2891 = distinct !DILexicalBlock(scope: !2886, file: !2, line: 1193, column: 7)
!2892 = !DILocation(line: 1193, column: 9, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 1193, column: 9)
!2894 = !DILocation(line: 1193, column: 27, scope: !2891)
!2895 = !DILocation(line: 1195, column: 8, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1195, column: 8)
!2897 = !DILocation(line: 1195, column: 13, scope: !2896)
!2898 = !DILocation(line: 1196, column: 9, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !2, line: 1196, column: 9)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 1196, column: 9)
!2901 = distinct !DILexicalBlock(scope: !2896, file: !2, line: 1196, column: 7)
!2902 = !DILocation(line: 1196, column: 9, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2900, file: !2, line: 1196, column: 9)
!2904 = !DILocation(line: 1196, column: 39, scope: !2901)
!2905 = !DILocation(line: 1198, column: 8, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1198, column: 8)
!2907 = !DILocation(line: 1198, column: 13, scope: !2906)
!2908 = !DILocation(line: 1199, column: 37, scope: !2906)
!2909 = !DILocation(line: 1199, column: 42, scope: !2906)
!2910 = !DILocation(line: 1199, column: 13, scope: !2906)
!2911 = !DILocation(line: 1199, column: 7, scope: !2906)
!2912 = !DILocation(line: 1200, column: 11, scope: !2870)
!2913 = !DILocation(line: 1200, column: 4, scope: !2870)
!2914 = !DILocation(line: 1201, column: 1, scope: !2870)
!2915 = distinct !DISubprogram(name: "BZ2_bzRead", scope: !2, file: !2, line: 1205, type: !2916, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!76, !2156, !2154, !53, !76}
!2918 = !DILocalVariable(name: "bzerror", arg: 1, scope: !2915, file: !2, line: 1206, type: !2156)
!2919 = !DILocation(line: 1206, column: 22, scope: !2915)
!2920 = !DILocalVariable(name: "b", arg: 2, scope: !2915, file: !2, line: 1207, type: !2154)
!2921 = !DILocation(line: 1207, column: 22, scope: !2915)
!2922 = !DILocalVariable(name: "buf", arg: 3, scope: !2915, file: !2, line: 1208, type: !53)
!2923 = !DILocation(line: 1208, column: 22, scope: !2915)
!2924 = !DILocalVariable(name: "len", arg: 4, scope: !2915, file: !2, line: 1209, type: !76)
!2925 = !DILocation(line: 1209, column: 22, scope: !2915)
!2926 = !DILocalVariable(name: "n", scope: !2915, file: !2, line: 1211, type: !135)
!2927 = !DILocation(line: 1211, column: 12, scope: !2915)
!2928 = !DILocalVariable(name: "ret", scope: !2915, file: !2, line: 1211, type: !135)
!2929 = !DILocation(line: 1211, column: 15, scope: !2915)
!2930 = !DILocalVariable(name: "bzf", scope: !2915, file: !2, line: 1212, type: !64)
!2931 = !DILocation(line: 1212, column: 12, scope: !2915)
!2932 = !DILocation(line: 1212, column: 27, scope: !2915)
!2933 = !DILocation(line: 1214, column: 4, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !2, line: 1214, column: 4)
!2935 = distinct !DILexicalBlock(scope: !2915, file: !2, line: 1214, column: 4)
!2936 = !DILocation(line: 1214, column: 4, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2935, file: !2, line: 1214, column: 4)
!2938 = !DILocation(line: 1216, column: 8, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2915, file: !2, line: 1216, column: 8)
!2940 = !DILocation(line: 1216, column: 12, scope: !2939)
!2941 = !DILocation(line: 1216, column: 20, scope: !2939)
!2942 = !DILocation(line: 1216, column: 23, scope: !2939)
!2943 = !DILocation(line: 1216, column: 27, scope: !2939)
!2944 = !DILocation(line: 1216, column: 35, scope: !2939)
!2945 = !DILocation(line: 1216, column: 38, scope: !2939)
!2946 = !DILocation(line: 1216, column: 42, scope: !2939)
!2947 = !DILocation(line: 1217, column: 9, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !2, line: 1217, column: 9)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 1217, column: 9)
!2950 = distinct !DILexicalBlock(scope: !2939, file: !2, line: 1217, column: 7)
!2951 = !DILocation(line: 1217, column: 9, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !2, line: 1217, column: 9)
!2953 = !DILocation(line: 1217, column: 36, scope: !2950)
!2954 = !DILocation(line: 1219, column: 8, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2915, file: !2, line: 1219, column: 8)
!2956 = !DILocation(line: 1219, column: 13, scope: !2955)
!2957 = !DILocation(line: 1220, column: 9, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !2, line: 1220, column: 9)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !2, line: 1220, column: 9)
!2960 = distinct !DILexicalBlock(scope: !2955, file: !2, line: 1220, column: 7)
!2961 = !DILocation(line: 1220, column: 9, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2959, file: !2, line: 1220, column: 9)
!2963 = !DILocation(line: 1220, column: 39, scope: !2960)
!2964 = !DILocation(line: 1222, column: 8, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2915, file: !2, line: 1222, column: 8)
!2966 = !DILocation(line: 1222, column: 12, scope: !2965)
!2967 = !DILocation(line: 1223, column: 9, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !2, line: 1223, column: 9)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !2, line: 1223, column: 9)
!2970 = distinct !DILexicalBlock(scope: !2965, file: !2, line: 1223, column: 7)
!2971 = !DILocation(line: 1223, column: 9, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !2, line: 1223, column: 9)
!2973 = !DILocation(line: 1223, column: 27, scope: !2970)
!2974 = !DILocation(line: 1225, column: 26, scope: !2915)
!2975 = !DILocation(line: 1225, column: 4, scope: !2915)
!2976 = !DILocation(line: 1225, column: 9, scope: !2915)
!2977 = !DILocation(line: 1225, column: 14, scope: !2915)
!2978 = !DILocation(line: 1225, column: 24, scope: !2915)
!2979 = !DILocation(line: 1226, column: 25, scope: !2915)
!2980 = !DILocation(line: 1226, column: 4, scope: !2915)
!2981 = !DILocation(line: 1226, column: 9, scope: !2915)
!2982 = !DILocation(line: 1226, column: 14, scope: !2915)
!2983 = !DILocation(line: 1226, column: 23, scope: !2915)
!2984 = !DILocation(line: 1228, column: 4, scope: !2915)
!2985 = !DILocation(line: 1230, column: 18, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1230, column: 11)
!2987 = distinct !DILexicalBlock(scope: !2915, file: !2, line: 1228, column: 17)
!2988 = !DILocation(line: 1230, column: 23, scope: !2986)
!2989 = !DILocation(line: 1230, column: 11, scope: !2986)
!2990 = !DILocation(line: 1231, column: 12, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !2, line: 1231, column: 12)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !2, line: 1231, column: 12)
!2993 = distinct !DILexicalBlock(scope: !2986, file: !2, line: 1231, column: 10)
!2994 = !DILocation(line: 1231, column: 12, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2992, file: !2, line: 1231, column: 12)
!2996 = !DILocation(line: 1231, column: 36, scope: !2993)
!2997 = !DILocation(line: 1233, column: 11, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1233, column: 11)
!2999 = !DILocation(line: 1233, column: 16, scope: !2998)
!3000 = !DILocation(line: 1233, column: 21, scope: !2998)
!3001 = !DILocation(line: 1233, column: 30, scope: !2998)
!3002 = !DILocation(line: 1233, column: 35, scope: !2998)
!3003 = !DILocation(line: 1233, column: 47, scope: !2998)
!3004 = !DILocation(line: 1233, column: 52, scope: !2998)
!3005 = !DILocation(line: 1233, column: 39, scope: !2998)
!3006 = !DILocation(line: 1234, column: 22, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2998, file: !2, line: 1233, column: 61)
!3008 = !DILocation(line: 1234, column: 27, scope: !3007)
!3009 = !DILocation(line: 1235, column: 37, scope: !3007)
!3010 = !DILocation(line: 1235, column: 42, scope: !3007)
!3011 = !DILocation(line: 1234, column: 14, scope: !3007)
!3012 = !DILocation(line: 1234, column: 12, scope: !3007)
!3013 = !DILocation(line: 1236, column: 21, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3007, file: !2, line: 1236, column: 14)
!3015 = !DILocation(line: 1236, column: 26, scope: !3014)
!3016 = !DILocation(line: 1236, column: 14, scope: !3014)
!3017 = !DILocation(line: 1237, column: 15, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !2, line: 1237, column: 15)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !2, line: 1237, column: 15)
!3020 = distinct !DILexicalBlock(scope: !3014, file: !2, line: 1237, column: 13)
!3021 = !DILocation(line: 1237, column: 15, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !2, line: 1237, column: 15)
!3023 = !DILocation(line: 1237, column: 39, scope: !3020)
!3024 = !DILocation(line: 1238, column: 22, scope: !3007)
!3025 = !DILocation(line: 1238, column: 10, scope: !3007)
!3026 = !DILocation(line: 1238, column: 15, scope: !3007)
!3027 = !DILocation(line: 1238, column: 20, scope: !3007)
!3028 = !DILocation(line: 1239, column: 31, scope: !3007)
!3029 = !DILocation(line: 1239, column: 36, scope: !3007)
!3030 = !DILocation(line: 1239, column: 10, scope: !3007)
!3031 = !DILocation(line: 1239, column: 15, scope: !3007)
!3032 = !DILocation(line: 1239, column: 20, scope: !3007)
!3033 = !DILocation(line: 1239, column: 29, scope: !3007)
!3034 = !DILocation(line: 1240, column: 30, scope: !3007)
!3035 = !DILocation(line: 1240, column: 35, scope: !3007)
!3036 = !DILocation(line: 1240, column: 10, scope: !3007)
!3037 = !DILocation(line: 1240, column: 15, scope: !3007)
!3038 = !DILocation(line: 1240, column: 20, scope: !3007)
!3039 = !DILocation(line: 1240, column: 28, scope: !3007)
!3040 = !DILocation(line: 1241, column: 7, scope: !3007)
!3041 = !DILocation(line: 1243, column: 34, scope: !2987)
!3042 = !DILocation(line: 1243, column: 39, scope: !2987)
!3043 = !DILocation(line: 1243, column: 13, scope: !2987)
!3044 = !DILocation(line: 1243, column: 11, scope: !2987)
!3045 = !DILocation(line: 1245, column: 11, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1245, column: 11)
!3047 = !DILocation(line: 1245, column: 15, scope: !3046)
!3048 = !DILocation(line: 1245, column: 24, scope: !3046)
!3049 = !DILocation(line: 1245, column: 27, scope: !3046)
!3050 = !DILocation(line: 1245, column: 31, scope: !3046)
!3051 = !DILocation(line: 1246, column: 12, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 1246, column: 12)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !2, line: 1246, column: 12)
!3054 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 1246, column: 10)
!3055 = !DILocation(line: 1246, column: 12, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 1246, column: 12)
!3057 = !DILocation(line: 1246, column: 28, scope: !3054)
!3058 = !DILocation(line: 1248, column: 11, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1248, column: 11)
!3060 = !DILocation(line: 1248, column: 15, scope: !3059)
!3061 = !DILocation(line: 1248, column: 24, scope: !3059)
!3062 = !DILocation(line: 1248, column: 35, scope: !3059)
!3063 = !DILocation(line: 1248, column: 40, scope: !3059)
!3064 = !DILocation(line: 1248, column: 27, scope: !3059)
!3065 = !DILocation(line: 1248, column: 48, scope: !3059)
!3066 = !DILocation(line: 1249, column: 11, scope: !3059)
!3067 = !DILocation(line: 1249, column: 16, scope: !3059)
!3068 = !DILocation(line: 1249, column: 21, scope: !3059)
!3069 = !DILocation(line: 1249, column: 30, scope: !3059)
!3070 = !DILocation(line: 1249, column: 35, scope: !3059)
!3071 = !DILocation(line: 1249, column: 38, scope: !3059)
!3072 = !DILocation(line: 1249, column: 43, scope: !3059)
!3073 = !DILocation(line: 1249, column: 48, scope: !3059)
!3074 = !DILocation(line: 1249, column: 58, scope: !3059)
!3075 = !DILocation(line: 1250, column: 12, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !2, line: 1250, column: 12)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 1250, column: 12)
!3078 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 1250, column: 10)
!3079 = !DILocation(line: 1250, column: 12, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3077, file: !2, line: 1250, column: 12)
!3081 = !DILocation(line: 1250, column: 42, scope: !3078)
!3082 = !DILocation(line: 1252, column: 11, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1252, column: 11)
!3084 = !DILocation(line: 1252, column: 15, scope: !3083)
!3085 = !DILocation(line: 1253, column: 12, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !2, line: 1253, column: 12)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !2, line: 1253, column: 12)
!3088 = distinct !DILexicalBlock(scope: !3083, file: !2, line: 1253, column: 10)
!3089 = !DILocation(line: 1253, column: 12, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !2, line: 1253, column: 12)
!3091 = !DILocation(line: 1254, column: 19, scope: !3088)
!3092 = !DILocation(line: 1254, column: 25, scope: !3088)
!3093 = !DILocation(line: 1254, column: 30, scope: !3088)
!3094 = !DILocation(line: 1254, column: 35, scope: !3088)
!3095 = !DILocation(line: 1254, column: 23, scope: !3088)
!3096 = !DILocation(line: 1254, column: 12, scope: !3088)
!3097 = !DILocation(line: 1255, column: 11, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1255, column: 11)
!3099 = !DILocation(line: 1255, column: 16, scope: !3098)
!3100 = !DILocation(line: 1255, column: 21, scope: !3098)
!3101 = !DILocation(line: 1255, column: 31, scope: !3098)
!3102 = !DILocation(line: 1256, column: 12, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !2, line: 1256, column: 12)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !2, line: 1256, column: 12)
!3105 = distinct !DILexicalBlock(scope: !3098, file: !2, line: 1256, column: 10)
!3106 = !DILocation(line: 1256, column: 12, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3104, file: !2, line: 1256, column: 12)
!3108 = !DILocation(line: 1256, column: 37, scope: !3105)
!3109 = !DILocation(line: 1256, column: 30, scope: !3105)
!3110 = distinct !{!3110, !2984, !3111}
!3111 = !DILocation(line: 1258, column: 4, scope: !2915)
!3112 = !DILocation(line: 1261, column: 1, scope: !2915)
!3113 = distinct !DISubprogram(name: "myfeof_", scope: !2, file: !2, line: 950, type: !3114, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!63, !69}
!3116 = !DILocalVariable(name: "f", arg: 1, scope: !3113, file: !2, line: 950, type: !69)
!3117 = !DILocation(line: 950, column: 29, scope: !3113)
!3118 = !DILocalVariable(name: "c", scope: !3113, file: !2, line: 952, type: !135)
!3119 = !DILocation(line: 952, column: 10, scope: !3113)
!3120 = !DILocation(line: 952, column: 22, scope: !3113)
!3121 = !DILocation(line: 952, column: 14, scope: !3113)
!3122 = !DILocation(line: 953, column: 8, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 953, column: 8)
!3124 = !DILocation(line: 953, column: 10, scope: !3123)
!3125 = !DILocation(line: 953, column: 18, scope: !3123)
!3126 = !DILocation(line: 954, column: 13, scope: !3113)
!3127 = !DILocation(line: 954, column: 16, scope: !3113)
!3128 = !DILocation(line: 954, column: 4, scope: !3113)
!3129 = !DILocation(line: 955, column: 4, scope: !3113)
!3130 = !DILocation(line: 956, column: 1, scope: !3113)
!3131 = distinct !DISubprogram(name: "BZ2_bzReadGetUnused", scope: !2, file: !2, line: 1265, type: !3132, scopeLine: 1270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !2156, !2154, !3134, !2156}
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!3135 = !DILocalVariable(name: "bzerror", arg: 1, scope: !3131, file: !2, line: 1266, type: !2156)
!3136 = !DILocation(line: 1266, column: 32, scope: !3131)
!3137 = !DILocalVariable(name: "b", arg: 2, scope: !3131, file: !2, line: 1267, type: !2154)
!3138 = !DILocation(line: 1267, column: 32, scope: !3131)
!3139 = !DILocalVariable(name: "unused", arg: 3, scope: !3131, file: !2, line: 1268, type: !3134)
!3140 = !DILocation(line: 1268, column: 32, scope: !3131)
!3141 = !DILocalVariable(name: "nUnused", arg: 4, scope: !3131, file: !2, line: 1269, type: !2156)
!3142 = !DILocation(line: 1269, column: 32, scope: !3131)
!3143 = !DILocalVariable(name: "bzf", scope: !3131, file: !2, line: 1271, type: !64)
!3144 = !DILocation(line: 1271, column: 12, scope: !3131)
!3145 = !DILocation(line: 1271, column: 27, scope: !3131)
!3146 = !DILocation(line: 1272, column: 8, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1272, column: 8)
!3148 = !DILocation(line: 1272, column: 12, scope: !3147)
!3149 = !DILocation(line: 1273, column: 9, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !2, line: 1273, column: 9)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !2, line: 1273, column: 9)
!3152 = distinct !DILexicalBlock(scope: !3147, file: !2, line: 1273, column: 7)
!3153 = !DILocation(line: 1273, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3151, file: !2, line: 1273, column: 9)
!3155 = !DILocation(line: 1273, column: 36, scope: !3152)
!3156 = !DILocation(line: 1274, column: 8, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1274, column: 8)
!3158 = !DILocation(line: 1274, column: 13, scope: !3157)
!3159 = !DILocation(line: 1274, column: 21, scope: !3157)
!3160 = !DILocation(line: 1275, column: 9, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !2, line: 1275, column: 9)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !2, line: 1275, column: 9)
!3163 = distinct !DILexicalBlock(scope: !3157, file: !2, line: 1275, column: 7)
!3164 = !DILocation(line: 1275, column: 9, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3162, file: !2, line: 1275, column: 9)
!3166 = !DILocation(line: 1275, column: 39, scope: !3163)
!3167 = !DILocation(line: 1276, column: 8, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1276, column: 8)
!3169 = !DILocation(line: 1276, column: 15, scope: !3168)
!3170 = !DILocation(line: 1276, column: 23, scope: !3168)
!3171 = !DILocation(line: 1276, column: 26, scope: !3168)
!3172 = !DILocation(line: 1276, column: 34, scope: !3168)
!3173 = !DILocation(line: 1277, column: 9, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !2, line: 1277, column: 9)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !2, line: 1277, column: 9)
!3176 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 1277, column: 7)
!3177 = !DILocation(line: 1277, column: 9, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3175, file: !2, line: 1277, column: 9)
!3179 = !DILocation(line: 1277, column: 36, scope: !3176)
!3180 = !DILocation(line: 1279, column: 4, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !2, line: 1279, column: 4)
!3182 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1279, column: 4)
!3183 = !DILocation(line: 1279, column: 4, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3182, file: !2, line: 1279, column: 4)
!3185 = !DILocation(line: 1280, column: 15, scope: !3131)
!3186 = !DILocation(line: 1280, column: 20, scope: !3131)
!3187 = !DILocation(line: 1280, column: 25, scope: !3131)
!3188 = !DILocation(line: 1280, column: 5, scope: !3131)
!3189 = !DILocation(line: 1280, column: 13, scope: !3131)
!3190 = !DILocation(line: 1281, column: 14, scope: !3131)
!3191 = !DILocation(line: 1281, column: 19, scope: !3131)
!3192 = !DILocation(line: 1281, column: 24, scope: !3131)
!3193 = !DILocation(line: 1281, column: 5, scope: !3131)
!3194 = !DILocation(line: 1281, column: 12, scope: !3131)
!3195 = !DILocation(line: 1282, column: 1, scope: !3131)
!3196 = distinct !DISubprogram(name: "BZ2_bzBuffToBuffCompress", scope: !2, file: !2, line: 1291, type: !3197, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!76, !78, !2453, !78, !38, !76, !76, !76}
!3199 = !DILocalVariable(name: "dest", arg: 1, scope: !3196, file: !2, line: 1292, type: !78)
!3200 = !DILocation(line: 1292, column: 42, scope: !3196)
!3201 = !DILocalVariable(name: "destLen", arg: 2, scope: !3196, file: !2, line: 1293, type: !2453)
!3202 = !DILocation(line: 1293, column: 42, scope: !3196)
!3203 = !DILocalVariable(name: "source", arg: 3, scope: !3196, file: !2, line: 1294, type: !78)
!3204 = !DILocation(line: 1294, column: 42, scope: !3196)
!3205 = !DILocalVariable(name: "sourceLen", arg: 4, scope: !3196, file: !2, line: 1295, type: !38)
!3206 = !DILocation(line: 1295, column: 42, scope: !3196)
!3207 = !DILocalVariable(name: "blockSize100k", arg: 5, scope: !3196, file: !2, line: 1296, type: !76)
!3208 = !DILocation(line: 1296, column: 42, scope: !3196)
!3209 = !DILocalVariable(name: "verbosity", arg: 6, scope: !3196, file: !2, line: 1297, type: !76)
!3210 = !DILocation(line: 1297, column: 42, scope: !3196)
!3211 = !DILocalVariable(name: "workFactor", arg: 7, scope: !3196, file: !2, line: 1298, type: !76)
!3212 = !DILocation(line: 1298, column: 42, scope: !3196)
!3213 = !DILocalVariable(name: "strm", scope: !3196, file: !2, line: 1300, type: !138)
!3214 = !DILocation(line: 1300, column: 14, scope: !3196)
!3215 = !DILocalVariable(name: "ret", scope: !3196, file: !2, line: 1301, type: !76)
!3216 = !DILocation(line: 1301, column: 8, scope: !3196)
!3217 = !DILocation(line: 1303, column: 8, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3196, file: !2, line: 1303, column: 8)
!3219 = !DILocation(line: 1303, column: 13, scope: !3218)
!3220 = !DILocation(line: 1303, column: 21, scope: !3218)
!3221 = !DILocation(line: 1303, column: 24, scope: !3218)
!3222 = !DILocation(line: 1303, column: 32, scope: !3218)
!3223 = !DILocation(line: 1303, column: 40, scope: !3218)
!3224 = !DILocation(line: 1304, column: 8, scope: !3218)
!3225 = !DILocation(line: 1304, column: 15, scope: !3218)
!3226 = !DILocation(line: 1304, column: 23, scope: !3218)
!3227 = !DILocation(line: 1305, column: 8, scope: !3218)
!3228 = !DILocation(line: 1305, column: 22, scope: !3218)
!3229 = !DILocation(line: 1305, column: 26, scope: !3218)
!3230 = !DILocation(line: 1305, column: 29, scope: !3218)
!3231 = !DILocation(line: 1305, column: 43, scope: !3218)
!3232 = !DILocation(line: 1305, column: 47, scope: !3218)
!3233 = !DILocation(line: 1306, column: 8, scope: !3218)
!3234 = !DILocation(line: 1306, column: 18, scope: !3218)
!3235 = !DILocation(line: 1306, column: 22, scope: !3218)
!3236 = !DILocation(line: 1306, column: 25, scope: !3218)
!3237 = !DILocation(line: 1306, column: 35, scope: !3218)
!3238 = !DILocation(line: 1306, column: 39, scope: !3218)
!3239 = !DILocation(line: 1307, column: 8, scope: !3218)
!3240 = !DILocation(line: 1307, column: 19, scope: !3218)
!3241 = !DILocation(line: 1307, column: 23, scope: !3218)
!3242 = !DILocation(line: 1307, column: 26, scope: !3218)
!3243 = !DILocation(line: 1307, column: 37, scope: !3218)
!3244 = !DILocation(line: 1308, column: 7, scope: !3218)
!3245 = !DILocation(line: 1310, column: 8, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3196, file: !2, line: 1310, column: 8)
!3247 = !DILocation(line: 1310, column: 19, scope: !3246)
!3248 = !DILocation(line: 1310, column: 36, scope: !3246)
!3249 = !DILocation(line: 1310, column: 25, scope: !3246)
!3250 = !DILocation(line: 1311, column: 9, scope: !3196)
!3251 = !DILocation(line: 1311, column: 17, scope: !3196)
!3252 = !DILocation(line: 1312, column: 9, scope: !3196)
!3253 = !DILocation(line: 1312, column: 16, scope: !3196)
!3254 = !DILocation(line: 1313, column: 9, scope: !3196)
!3255 = !DILocation(line: 1313, column: 16, scope: !3196)
!3256 = !DILocation(line: 1314, column: 38, scope: !3196)
!3257 = !DILocation(line: 1315, column: 31, scope: !3196)
!3258 = !DILocation(line: 1315, column: 42, scope: !3196)
!3259 = !DILocation(line: 1314, column: 10, scope: !3196)
!3260 = !DILocation(line: 1314, column: 8, scope: !3196)
!3261 = !DILocation(line: 1316, column: 8, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3196, file: !2, line: 1316, column: 8)
!3263 = !DILocation(line: 1316, column: 12, scope: !3262)
!3264 = !DILocation(line: 1316, column: 29, scope: !3262)
!3265 = !DILocation(line: 1316, column: 22, scope: !3262)
!3266 = !DILocation(line: 1318, column: 19, scope: !3196)
!3267 = !DILocation(line: 1318, column: 9, scope: !3196)
!3268 = !DILocation(line: 1318, column: 17, scope: !3196)
!3269 = !DILocation(line: 1319, column: 20, scope: !3196)
!3270 = !DILocation(line: 1319, column: 9, scope: !3196)
!3271 = !DILocation(line: 1319, column: 18, scope: !3196)
!3272 = !DILocation(line: 1320, column: 20, scope: !3196)
!3273 = !DILocation(line: 1320, column: 9, scope: !3196)
!3274 = !DILocation(line: 1320, column: 18, scope: !3196)
!3275 = !DILocation(line: 1321, column: 22, scope: !3196)
!3276 = !DILocation(line: 1321, column: 21, scope: !3196)
!3277 = !DILocation(line: 1321, column: 9, scope: !3196)
!3278 = !DILocation(line: 1321, column: 19, scope: !3196)
!3279 = !DILocation(line: 1323, column: 10, scope: !3196)
!3280 = !DILocation(line: 1323, column: 8, scope: !3196)
!3281 = !DILocation(line: 1324, column: 8, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3196, file: !2, line: 1324, column: 8)
!3283 = !DILocation(line: 1324, column: 12, scope: !3282)
!3284 = !DILocation(line: 1324, column: 29, scope: !3282)
!3285 = !DILocation(line: 1325, column: 8, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3196, file: !2, line: 1325, column: 8)
!3287 = !DILocation(line: 1325, column: 12, scope: !3286)
!3288 = !DILocation(line: 1325, column: 30, scope: !3286)
!3289 = !DILocation(line: 1328, column: 21, scope: !3196)
!3290 = !DILocation(line: 1328, column: 5, scope: !3196)
!3291 = !DILocation(line: 1328, column: 13, scope: !3196)
!3292 = !DILocation(line: 1329, column: 4, scope: !3196)
!3293 = !DILocation(line: 1330, column: 4, scope: !3196)
!3294 = !DILabel(scope: !3196, name: "output_overflow", file: !2, line: 1332, column: 4)
!3295 = !DILocation(line: 1332, column: 4, scope: !3196)
!3296 = !DILocation(line: 1333, column: 4, scope: !3196)
!3297 = !DILocation(line: 1334, column: 4, scope: !3196)
!3298 = !DILabel(scope: !3196, name: "errhandler", file: !2, line: 1336, column: 4)
!3299 = !DILocation(line: 1336, column: 4, scope: !3196)
!3300 = !DILocation(line: 1337, column: 4, scope: !3196)
!3301 = !DILocation(line: 1338, column: 11, scope: !3196)
!3302 = !DILocation(line: 1338, column: 4, scope: !3196)
!3303 = !DILocation(line: 1339, column: 1, scope: !3196)
!3304 = distinct !DISubprogram(name: "BZ2_bzBuffToBuffDecompress", scope: !2, file: !2, line: 1343, type: !3305, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!76, !78, !2453, !78, !38, !76, !76}
!3307 = !DILocalVariable(name: "dest", arg: 1, scope: !3304, file: !2, line: 1344, type: !78)
!3308 = !DILocation(line: 1344, column: 44, scope: !3304)
!3309 = !DILocalVariable(name: "destLen", arg: 2, scope: !3304, file: !2, line: 1345, type: !2453)
!3310 = !DILocation(line: 1345, column: 44, scope: !3304)
!3311 = !DILocalVariable(name: "source", arg: 3, scope: !3304, file: !2, line: 1346, type: !78)
!3312 = !DILocation(line: 1346, column: 44, scope: !3304)
!3313 = !DILocalVariable(name: "sourceLen", arg: 4, scope: !3304, file: !2, line: 1347, type: !38)
!3314 = !DILocation(line: 1347, column: 44, scope: !3304)
!3315 = !DILocalVariable(name: "small", arg: 5, scope: !3304, file: !2, line: 1348, type: !76)
!3316 = !DILocation(line: 1348, column: 44, scope: !3304)
!3317 = !DILocalVariable(name: "verbosity", arg: 6, scope: !3304, file: !2, line: 1349, type: !76)
!3318 = !DILocation(line: 1349, column: 44, scope: !3304)
!3319 = !DILocalVariable(name: "strm", scope: !3304, file: !2, line: 1351, type: !138)
!3320 = !DILocation(line: 1351, column: 14, scope: !3304)
!3321 = !DILocalVariable(name: "ret", scope: !3304, file: !2, line: 1352, type: !76)
!3322 = !DILocation(line: 1352, column: 8, scope: !3304)
!3323 = !DILocation(line: 1354, column: 8, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 1354, column: 8)
!3325 = !DILocation(line: 1354, column: 13, scope: !3324)
!3326 = !DILocation(line: 1354, column: 21, scope: !3324)
!3327 = !DILocation(line: 1354, column: 24, scope: !3324)
!3328 = !DILocation(line: 1354, column: 32, scope: !3324)
!3329 = !DILocation(line: 1354, column: 40, scope: !3324)
!3330 = !DILocation(line: 1355, column: 8, scope: !3324)
!3331 = !DILocation(line: 1355, column: 15, scope: !3324)
!3332 = !DILocation(line: 1355, column: 23, scope: !3324)
!3333 = !DILocation(line: 1356, column: 9, scope: !3324)
!3334 = !DILocation(line: 1356, column: 15, scope: !3324)
!3335 = !DILocation(line: 1356, column: 20, scope: !3324)
!3336 = !DILocation(line: 1356, column: 23, scope: !3324)
!3337 = !DILocation(line: 1356, column: 29, scope: !3324)
!3338 = !DILocation(line: 1356, column: 35, scope: !3324)
!3339 = !DILocation(line: 1357, column: 8, scope: !3324)
!3340 = !DILocation(line: 1357, column: 18, scope: !3324)
!3341 = !DILocation(line: 1357, column: 22, scope: !3324)
!3342 = !DILocation(line: 1357, column: 25, scope: !3324)
!3343 = !DILocation(line: 1357, column: 35, scope: !3324)
!3344 = !DILocation(line: 1358, column: 11, scope: !3324)
!3345 = !DILocation(line: 1360, column: 9, scope: !3304)
!3346 = !DILocation(line: 1360, column: 17, scope: !3304)
!3347 = !DILocation(line: 1361, column: 9, scope: !3304)
!3348 = !DILocation(line: 1361, column: 16, scope: !3304)
!3349 = !DILocation(line: 1362, column: 9, scope: !3304)
!3350 = !DILocation(line: 1362, column: 16, scope: !3304)
!3351 = !DILocation(line: 1363, column: 40, scope: !3304)
!3352 = !DILocation(line: 1363, column: 51, scope: !3304)
!3353 = !DILocation(line: 1363, column: 10, scope: !3304)
!3354 = !DILocation(line: 1363, column: 8, scope: !3304)
!3355 = !DILocation(line: 1364, column: 8, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 1364, column: 8)
!3357 = !DILocation(line: 1364, column: 12, scope: !3356)
!3358 = !DILocation(line: 1364, column: 29, scope: !3356)
!3359 = !DILocation(line: 1364, column: 22, scope: !3356)
!3360 = !DILocation(line: 1366, column: 19, scope: !3304)
!3361 = !DILocation(line: 1366, column: 9, scope: !3304)
!3362 = !DILocation(line: 1366, column: 17, scope: !3304)
!3363 = !DILocation(line: 1367, column: 20, scope: !3304)
!3364 = !DILocation(line: 1367, column: 9, scope: !3304)
!3365 = !DILocation(line: 1367, column: 18, scope: !3304)
!3366 = !DILocation(line: 1368, column: 20, scope: !3304)
!3367 = !DILocation(line: 1368, column: 9, scope: !3304)
!3368 = !DILocation(line: 1368, column: 18, scope: !3304)
!3369 = !DILocation(line: 1369, column: 22, scope: !3304)
!3370 = !DILocation(line: 1369, column: 21, scope: !3304)
!3371 = !DILocation(line: 1369, column: 9, scope: !3304)
!3372 = !DILocation(line: 1369, column: 19, scope: !3304)
!3373 = !DILocation(line: 1371, column: 10, scope: !3304)
!3374 = !DILocation(line: 1371, column: 8, scope: !3304)
!3375 = !DILocation(line: 1372, column: 8, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 1372, column: 8)
!3377 = !DILocation(line: 1372, column: 12, scope: !3376)
!3378 = !DILocation(line: 1372, column: 22, scope: !3376)
!3379 = !DILocation(line: 1373, column: 8, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 1373, column: 8)
!3381 = !DILocation(line: 1373, column: 12, scope: !3380)
!3382 = !DILocation(line: 1373, column: 30, scope: !3380)
!3383 = !DILocation(line: 1376, column: 21, scope: !3304)
!3384 = !DILocation(line: 1376, column: 5, scope: !3304)
!3385 = !DILocation(line: 1376, column: 13, scope: !3304)
!3386 = !DILocation(line: 1377, column: 4, scope: !3304)
!3387 = !DILocation(line: 1378, column: 4, scope: !3304)
!3388 = !DILabel(scope: !3304, name: "output_overflow_or_eof", file: !2, line: 1380, column: 4)
!3389 = !DILocation(line: 1380, column: 4, scope: !3304)
!3390 = !DILocation(line: 1381, column: 13, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 1381, column: 8)
!3392 = !DILocation(line: 1381, column: 23, scope: !3391)
!3393 = !DILocation(line: 1382, column: 7, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3391, file: !2, line: 1381, column: 28)
!3395 = !DILocation(line: 1383, column: 7, scope: !3394)
!3396 = !DILocation(line: 1385, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3391, file: !2, line: 1384, column: 11)
!3398 = !DILocation(line: 1386, column: 7, scope: !3397)
!3399 = !DILabel(scope: !3304, name: "errhandler", file: !2, line: 1389, column: 4)
!3400 = !DILocation(line: 1389, column: 4, scope: !3304)
!3401 = !DILocation(line: 1390, column: 4, scope: !3304)
!3402 = !DILocation(line: 1391, column: 11, scope: !3304)
!3403 = !DILocation(line: 1391, column: 4, scope: !3304)
!3404 = !DILocation(line: 1392, column: 1, scope: !3304)
!3405 = distinct !DISubprogram(name: "BZ2_bzopen", scope: !2, file: !2, line: 1505, type: !3406, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!2154, !252, !252}
!3408 = !DILocalVariable(name: "path", arg: 1, scope: !3405, file: !2, line: 1506, type: !252)
!3409 = !DILocation(line: 1506, column: 30, scope: !3405)
!3410 = !DILocalVariable(name: "mode", arg: 2, scope: !3405, file: !2, line: 1507, type: !252)
!3411 = !DILocation(line: 1507, column: 30, scope: !3405)
!3412 = !DILocation(line: 1509, column: 29, scope: !3405)
!3413 = !DILocation(line: 1509, column: 37, scope: !3405)
!3414 = !DILocation(line: 1509, column: 11, scope: !3405)
!3415 = !DILocation(line: 1509, column: 4, scope: !3405)
!3416 = distinct !DISubprogram(name: "bzopen_or_bzdopen", scope: !2, file: !2, line: 1428, type: !3417, scopeLine: 1433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!2154, !252, !76, !252, !76}
!3419 = !DILocalVariable(name: "path", arg: 1, scope: !3416, file: !2, line: 1429, type: !252)
!3420 = !DILocation(line: 1429, column: 30, scope: !3416)
!3421 = !DILocalVariable(name: "fd", arg: 2, scope: !3416, file: !2, line: 1430, type: !76)
!3422 = !DILocation(line: 1430, column: 22, scope: !3416)
!3423 = !DILocalVariable(name: "mode", arg: 3, scope: !3416, file: !2, line: 1431, type: !252)
!3424 = !DILocation(line: 1431, column: 30, scope: !3416)
!3425 = !DILocalVariable(name: "open_mode", arg: 4, scope: !3416, file: !2, line: 1432, type: !76)
!3426 = !DILocation(line: 1432, column: 22, scope: !3416)
!3427 = !DILocalVariable(name: "bzerr", scope: !3416, file: !2, line: 1434, type: !76)
!3428 = !DILocation(line: 1434, column: 11, scope: !3416)
!3429 = !DILocalVariable(name: "unused", scope: !3416, file: !2, line: 1435, type: !3430)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40000, elements: !132)
!3431 = !DILocation(line: 1435, column: 11, scope: !3416)
!3432 = !DILocalVariable(name: "blockSize100k", scope: !3416, file: !2, line: 1436, type: !76)
!3433 = !DILocation(line: 1436, column: 11, scope: !3416)
!3434 = !DILocalVariable(name: "writing", scope: !3416, file: !2, line: 1437, type: !76)
!3435 = !DILocation(line: 1437, column: 11, scope: !3416)
!3436 = !DILocalVariable(name: "mode2", scope: !3416, file: !2, line: 1438, type: !188)
!3437 = !DILocation(line: 1438, column: 11, scope: !3416)
!3438 = !DILocalVariable(name: "fp", scope: !3416, file: !2, line: 1439, type: !69)
!3439 = !DILocation(line: 1439, column: 12, scope: !3416)
!3440 = !DILocalVariable(name: "bzfp", scope: !3416, file: !2, line: 1440, type: !2154)
!3441 = !DILocation(line: 1440, column: 12, scope: !3416)
!3442 = !DILocalVariable(name: "verbosity", scope: !3416, file: !2, line: 1441, type: !76)
!3443 = !DILocation(line: 1441, column: 11, scope: !3416)
!3444 = !DILocalVariable(name: "workFactor", scope: !3416, file: !2, line: 1442, type: !76)
!3445 = !DILocation(line: 1442, column: 11, scope: !3416)
!3446 = !DILocalVariable(name: "smallMode", scope: !3416, file: !2, line: 1443, type: !76)
!3447 = !DILocation(line: 1443, column: 11, scope: !3416)
!3448 = !DILocalVariable(name: "nUnused", scope: !3416, file: !2, line: 1444, type: !76)
!3449 = !DILocation(line: 1444, column: 11, scope: !3416)
!3450 = !DILocation(line: 1446, column: 8, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1446, column: 8)
!3452 = !DILocation(line: 1446, column: 13, scope: !3451)
!3453 = !DILocation(line: 1446, column: 22, scope: !3451)
!3454 = !DILocation(line: 1447, column: 4, scope: !3416)
!3455 = !DILocation(line: 1447, column: 12, scope: !3416)
!3456 = !DILocation(line: 1447, column: 11, scope: !3416)
!3457 = !DILocation(line: 1448, column: 16, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1447, column: 18)
!3459 = !DILocation(line: 1448, column: 15, scope: !3458)
!3460 = !DILocation(line: 1448, column: 7, scope: !3458)
!3461 = !DILocation(line: 1450, column: 18, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !2, line: 1448, column: 22)
!3463 = !DILocation(line: 1450, column: 23, scope: !3462)
!3464 = !DILocation(line: 1452, column: 18, scope: !3462)
!3465 = !DILocation(line: 1452, column: 23, scope: !3462)
!3466 = !DILocation(line: 1454, column: 20, scope: !3462)
!3467 = !DILocation(line: 1454, column: 25, scope: !3462)
!3468 = !DILocation(line: 1456, column: 14, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3462, file: !2, line: 1456, column: 14)
!3470 = !DILocation(line: 1457, column: 30, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3469, file: !2, line: 1456, column: 37)
!3472 = !DILocation(line: 1457, column: 29, scope: !3471)
!3473 = !DILocation(line: 1457, column: 34, scope: !3471)
!3474 = !DILocation(line: 1457, column: 27, scope: !3471)
!3475 = !DILocation(line: 1458, column: 10, scope: !3471)
!3476 = !DILocation(line: 1459, column: 7, scope: !3462)
!3477 = !DILocation(line: 1460, column: 11, scope: !3458)
!3478 = distinct !{!3478, !3454, !3479, !581}
!3479 = !DILocation(line: 1461, column: 4, scope: !3416)
!3480 = !DILocation(line: 1462, column: 11, scope: !3416)
!3481 = !DILocation(line: 1462, column: 18, scope: !3416)
!3482 = !DILocation(line: 1462, column: 4, scope: !3416)
!3483 = !DILocation(line: 1463, column: 11, scope: !3416)
!3484 = !DILocation(line: 1463, column: 4, scope: !3416)
!3485 = !DILocation(line: 1465, column: 8, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1465, column: 8)
!3487 = !DILocation(line: 1465, column: 17, scope: !3486)
!3488 = !DILocation(line: 1466, column: 11, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !2, line: 1466, column: 11)
!3490 = distinct !DILexicalBlock(scope: !3486, file: !2, line: 1465, column: 22)
!3491 = !DILocation(line: 1466, column: 15, scope: !3489)
!3492 = !DILocation(line: 1466, column: 22, scope: !3489)
!3493 = !DILocation(line: 1466, column: 32, scope: !3489)
!3494 = !DILocation(line: 1466, column: 25, scope: !3489)
!3495 = !DILocation(line: 1466, column: 40, scope: !3489)
!3496 = !DILocation(line: 1467, column: 15, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 1466, column: 45)
!3498 = !DILocation(line: 1467, column: 25, scope: !3497)
!3499 = !DILocation(line: 1467, column: 34, scope: !3497)
!3500 = !DILocation(line: 1467, column: 12, scope: !3497)
!3501 = !DILocation(line: 1469, column: 7, scope: !3497)
!3502 = !DILocation(line: 1470, column: 20, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 1469, column: 14)
!3504 = !DILocation(line: 1470, column: 25, scope: !3503)
!3505 = !DILocation(line: 1470, column: 14, scope: !3503)
!3506 = !DILocation(line: 1470, column: 12, scope: !3503)
!3507 = !DILocation(line: 1472, column: 4, scope: !3490)
!3508 = !DILocation(line: 1476, column: 19, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3486, file: !2, line: 1472, column: 11)
!3510 = !DILocation(line: 1476, column: 22, scope: !3509)
!3511 = !DILocation(line: 1476, column: 12, scope: !3509)
!3512 = !DILocation(line: 1476, column: 10, scope: !3509)
!3513 = !DILocation(line: 1479, column: 8, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1479, column: 8)
!3515 = !DILocation(line: 1479, column: 11, scope: !3514)
!3516 = !DILocation(line: 1479, column: 20, scope: !3514)
!3517 = !DILocation(line: 1481, column: 8, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1481, column: 8)
!3519 = !DILocation(line: 1483, column: 11, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !2, line: 1483, column: 11)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !2, line: 1481, column: 17)
!3522 = !DILocation(line: 1483, column: 25, scope: !3520)
!3523 = !DILocation(line: 1483, column: 44, scope: !3520)
!3524 = !DILocation(line: 1483, column: 30, scope: !3520)
!3525 = !DILocation(line: 1484, column: 11, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3521, file: !2, line: 1484, column: 11)
!3527 = !DILocation(line: 1484, column: 25, scope: !3526)
!3528 = !DILocation(line: 1484, column: 44, scope: !3526)
!3529 = !DILocation(line: 1484, column: 30, scope: !3526)
!3530 = !DILocation(line: 1485, column: 37, scope: !3521)
!3531 = !DILocation(line: 1485, column: 40, scope: !3521)
!3532 = !DILocation(line: 1486, column: 30, scope: !3521)
!3533 = !DILocation(line: 1486, column: 40, scope: !3521)
!3534 = !DILocation(line: 1485, column: 14, scope: !3521)
!3535 = !DILocation(line: 1485, column: 12, scope: !3521)
!3536 = !DILocation(line: 1487, column: 4, scope: !3521)
!3537 = !DILocation(line: 1488, column: 36, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3518, file: !2, line: 1487, column: 11)
!3539 = !DILocation(line: 1488, column: 39, scope: !3538)
!3540 = !DILocation(line: 1488, column: 49, scope: !3538)
!3541 = !DILocation(line: 1489, column: 29, scope: !3538)
!3542 = !DILocation(line: 1489, column: 36, scope: !3538)
!3543 = !DILocation(line: 1488, column: 14, scope: !3538)
!3544 = !DILocation(line: 1488, column: 12, scope: !3538)
!3545 = !DILocation(line: 1491, column: 8, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1491, column: 8)
!3547 = !DILocation(line: 1491, column: 13, scope: !3546)
!3548 = !DILocation(line: 1492, column: 11, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !2, line: 1492, column: 11)
!3550 = distinct !DILexicalBlock(scope: !3546, file: !2, line: 1491, column: 22)
!3551 = !DILocation(line: 1492, column: 17, scope: !3549)
!3552 = !DILocation(line: 1492, column: 14, scope: !3549)
!3553 = !DILocation(line: 1492, column: 23, scope: !3549)
!3554 = !DILocation(line: 1492, column: 26, scope: !3549)
!3555 = !DILocation(line: 1492, column: 32, scope: !3549)
!3556 = !DILocation(line: 1492, column: 29, scope: !3549)
!3557 = !DILocation(line: 1492, column: 47, scope: !3549)
!3558 = !DILocation(line: 1492, column: 40, scope: !3549)
!3559 = !DILocation(line: 1493, column: 7, scope: !3550)
!3560 = !DILocation(line: 1495, column: 11, scope: !3416)
!3561 = !DILocation(line: 1495, column: 4, scope: !3416)
!3562 = !DILocation(line: 1496, column: 1, scope: !3416)
!3563 = distinct !DISubprogram(name: "BZ2_bzdopen", scope: !2, file: !2, line: 1514, type: !3564, scopeLine: 1517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!2154, !76, !252}
!3566 = !DILocalVariable(name: "fd", arg: 1, scope: !3563, file: !2, line: 1515, type: !76)
!3567 = !DILocation(line: 1515, column: 22, scope: !3563)
!3568 = !DILocalVariable(name: "mode", arg: 2, scope: !3563, file: !2, line: 1516, type: !252)
!3569 = !DILocation(line: 1516, column: 30, scope: !3563)
!3570 = !DILocation(line: 1518, column: 34, scope: !3563)
!3571 = !DILocation(line: 1518, column: 37, scope: !3563)
!3572 = !DILocation(line: 1518, column: 11, scope: !3563)
!3573 = !DILocation(line: 1518, column: 4, scope: !3563)
!3574 = distinct !DISubprogram(name: "BZ2_bzread", scope: !2, file: !2, line: 1523, type: !3575, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!76, !2154, !53, !76}
!3577 = !DILocalVariable(name: "b", arg: 1, scope: !3574, file: !2, line: 1523, type: !2154)
!3578 = !DILocation(line: 1523, column: 33, scope: !3574)
!3579 = !DILocalVariable(name: "buf", arg: 2, scope: !3574, file: !2, line: 1523, type: !53)
!3580 = !DILocation(line: 1523, column: 42, scope: !3574)
!3581 = !DILocalVariable(name: "len", arg: 3, scope: !3574, file: !2, line: 1523, type: !76)
!3582 = !DILocation(line: 1523, column: 51, scope: !3574)
!3583 = !DILocalVariable(name: "bzerr", scope: !3574, file: !2, line: 1525, type: !76)
!3584 = !DILocation(line: 1525, column: 8, scope: !3574)
!3585 = !DILocalVariable(name: "nread", scope: !3574, file: !2, line: 1525, type: !76)
!3586 = !DILocation(line: 1525, column: 15, scope: !3574)
!3587 = !DILocation(line: 1526, column: 18, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3574, file: !2, line: 1526, column: 8)
!3589 = !DILocation(line: 1526, column: 22, scope: !3588)
!3590 = !DILocation(line: 1526, column: 30, scope: !3588)
!3591 = !DILocation(line: 1526, column: 48, scope: !3588)
!3592 = !DILocation(line: 1527, column: 30, scope: !3574)
!3593 = !DILocation(line: 1527, column: 32, scope: !3574)
!3594 = !DILocation(line: 1527, column: 36, scope: !3574)
!3595 = !DILocation(line: 1527, column: 12, scope: !3574)
!3596 = !DILocation(line: 1527, column: 10, scope: !3574)
!3597 = !DILocation(line: 1528, column: 8, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3574, file: !2, line: 1528, column: 8)
!3599 = !DILocation(line: 1528, column: 14, scope: !3598)
!3600 = !DILocation(line: 1528, column: 23, scope: !3598)
!3601 = !DILocation(line: 1528, column: 26, scope: !3598)
!3602 = !DILocation(line: 1528, column: 32, scope: !3598)
!3603 = !DILocation(line: 1529, column: 14, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3598, file: !2, line: 1528, column: 50)
!3605 = !DILocation(line: 1529, column: 7, scope: !3604)
!3606 = !DILocation(line: 1531, column: 7, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3598, file: !2, line: 1530, column: 11)
!3608 = !DILocation(line: 1533, column: 1, scope: !3574)
!3609 = distinct !DISubprogram(name: "BZ2_bzwrite", scope: !2, file: !2, line: 1537, type: !3575, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3610 = !DILocalVariable(name: "b", arg: 1, scope: !3609, file: !2, line: 1537, type: !2154)
!3611 = !DILocation(line: 1537, column: 34, scope: !3609)
!3612 = !DILocalVariable(name: "buf", arg: 2, scope: !3609, file: !2, line: 1537, type: !53)
!3613 = !DILocation(line: 1537, column: 43, scope: !3609)
!3614 = !DILocalVariable(name: "len", arg: 3, scope: !3609, file: !2, line: 1537, type: !76)
!3615 = !DILocation(line: 1537, column: 52, scope: !3609)
!3616 = !DILocalVariable(name: "bzerr", scope: !3609, file: !2, line: 1539, type: !76)
!3617 = !DILocation(line: 1539, column: 8, scope: !3609)
!3618 = !DILocation(line: 1541, column: 23, scope: !3609)
!3619 = !DILocation(line: 1541, column: 25, scope: !3609)
!3620 = !DILocation(line: 1541, column: 29, scope: !3609)
!3621 = !DILocation(line: 1541, column: 4, scope: !3609)
!3622 = !DILocation(line: 1542, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3609, file: !2, line: 1542, column: 7)
!3624 = !DILocation(line: 1542, column: 13, scope: !3623)
!3625 = !DILocation(line: 1543, column: 14, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3623, file: !2, line: 1542, column: 22)
!3627 = !DILocation(line: 1543, column: 7, scope: !3626)
!3628 = !DILocation(line: 1545, column: 7, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3623, file: !2, line: 1544, column: 9)
!3630 = !DILocation(line: 1547, column: 1, scope: !3609)
!3631 = distinct !DISubprogram(name: "BZ2_bzflush", scope: !2, file: !2, line: 1551, type: !3632, scopeLine: 1552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!76, !2154}
!3634 = !DILocalVariable(name: "b", arg: 1, scope: !3631, file: !2, line: 1551, type: !2154)
!3635 = !DILocation(line: 1551, column: 34, scope: !3631)
!3636 = !DILocation(line: 1554, column: 4, scope: !3631)
!3637 = distinct !DISubprogram(name: "BZ2_bzclose", scope: !2, file: !2, line: 1559, type: !3638, scopeLine: 1560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !2154}
!3640 = !DILocalVariable(name: "b", arg: 1, scope: !3637, file: !2, line: 1559, type: !2154)
!3641 = !DILocation(line: 1559, column: 35, scope: !3637)
!3642 = !DILocalVariable(name: "bzerr", scope: !3637, file: !2, line: 1561, type: !76)
!3643 = !DILocation(line: 1561, column: 8, scope: !3637)
!3644 = !DILocalVariable(name: "fp", scope: !3637, file: !2, line: 1562, type: !69)
!3645 = !DILocation(line: 1562, column: 10, scope: !3637)
!3646 = !DILocation(line: 1562, column: 26, scope: !3637)
!3647 = !DILocation(line: 1562, column: 30, scope: !3637)
!3648 = !DILocation(line: 1564, column: 8, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3637, file: !2, line: 1564, column: 8)
!3650 = !DILocation(line: 1564, column: 9, scope: !3649)
!3651 = !DILocation(line: 1564, column: 18, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3649, file: !2, line: 1564, column: 17)
!3653 = !DILocation(line: 1565, column: 17, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3637, file: !2, line: 1565, column: 7)
!3655 = !DILocation(line: 1565, column: 21, scope: !3654)
!3656 = !DILocation(line: 1565, column: 7, scope: !3654)
!3657 = !DILocation(line: 1566, column: 31, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !2, line: 1565, column: 29)
!3659 = !DILocation(line: 1566, column: 7, scope: !3658)
!3660 = !DILocation(line: 1567, column: 10, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3658, file: !2, line: 1567, column: 10)
!3662 = !DILocation(line: 1567, column: 16, scope: !3661)
!3663 = !DILocation(line: 1568, column: 32, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3661, file: !2, line: 1567, column: 25)
!3665 = !DILocation(line: 1568, column: 10, scope: !3664)
!3666 = !DILocation(line: 1569, column: 7, scope: !3664)
!3667 = !DILocation(line: 1570, column: 4, scope: !3658)
!3668 = !DILocation(line: 1571, column: 30, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3654, file: !2, line: 1570, column: 9)
!3670 = !DILocation(line: 1571, column: 7, scope: !3669)
!3671 = !DILocation(line: 1573, column: 7, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3637, file: !2, line: 1573, column: 7)
!3673 = !DILocation(line: 1573, column: 11, scope: !3672)
!3674 = !DILocation(line: 1573, column: 9, scope: !3672)
!3675 = !DILocation(line: 1573, column: 17, scope: !3672)
!3676 = !DILocation(line: 1573, column: 20, scope: !3672)
!3677 = !DILocation(line: 1573, column: 24, scope: !3672)
!3678 = !DILocation(line: 1573, column: 22, scope: !3672)
!3679 = !DILocation(line: 1574, column: 14, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3672, file: !2, line: 1573, column: 31)
!3681 = !DILocation(line: 1574, column: 7, scope: !3680)
!3682 = !DILocation(line: 1575, column: 4, scope: !3680)
!3683 = !DILocation(line: 1576, column: 1, scope: !3637)
!3684 = distinct !DISubprogram(name: "BZ2_bzerror", scope: !2, file: !2, line: 1603, type: !3685, scopeLine: 1604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!252, !2154, !2156}
!3687 = !DILocalVariable(name: "b", arg: 1, scope: !3684, file: !2, line: 1603, type: !2154)
!3688 = !DILocation(line: 1603, column: 43, scope: !3684)
!3689 = !DILocalVariable(name: "errnum", arg: 2, scope: !3684, file: !2, line: 1603, type: !2156)
!3690 = !DILocation(line: 1603, column: 51, scope: !3684)
!3691 = !DILocalVariable(name: "err", scope: !3684, file: !2, line: 1605, type: !76)
!3692 = !DILocation(line: 1605, column: 8, scope: !3684)
!3693 = !DILocation(line: 1605, column: 25, scope: !3684)
!3694 = !DILocation(line: 1605, column: 29, scope: !3684)
!3695 = !DILocation(line: 1607, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3684, file: !2, line: 1607, column: 7)
!3697 = !DILocation(line: 1607, column: 10, scope: !3696)
!3698 = !DILocation(line: 1607, column: 18, scope: !3696)
!3699 = !DILocation(line: 1607, column: 14, scope: !3696)
!3700 = !DILocation(line: 1608, column: 14, scope: !3684)
!3701 = !DILocation(line: 1608, column: 5, scope: !3684)
!3702 = !DILocation(line: 1608, column: 12, scope: !3684)
!3703 = !DILocation(line: 1609, column: 26, scope: !3684)
!3704 = !DILocation(line: 1609, column: 29, scope: !3684)
!3705 = !DILocation(line: 1609, column: 11, scope: !3684)
!3706 = !DILocation(line: 1609, column: 4, scope: !3684)
!3707 = distinct !DISubprogram(name: "copy_output_until_stop", scope: !2, file: !2, line: 379, type: !846, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3708 = !DILocalVariable(name: "s", arg: 1, scope: !3707, file: !2, line: 379, type: !270)
!3709 = !DILocation(line: 379, column: 39, scope: !3707)
!3710 = !DILocalVariable(name: "progress_out", scope: !3707, file: !2, line: 381, type: !63)
!3711 = !DILocation(line: 381, column: 9, scope: !3707)
!3712 = !DILocation(line: 383, column: 4, scope: !3707)
!3713 = !DILocation(line: 386, column: 11, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !2, line: 386, column: 11)
!3715 = distinct !DILexicalBlock(scope: !3707, file: !2, line: 383, column: 17)
!3716 = !DILocation(line: 386, column: 14, scope: !3714)
!3717 = !DILocation(line: 386, column: 20, scope: !3714)
!3718 = !DILocation(line: 386, column: 30, scope: !3714)
!3719 = !DILocation(line: 386, column: 36, scope: !3714)
!3720 = !DILocation(line: 389, column: 11, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3715, file: !2, line: 389, column: 11)
!3722 = !DILocation(line: 389, column: 14, scope: !3721)
!3723 = !DILocation(line: 389, column: 31, scope: !3721)
!3724 = !DILocation(line: 389, column: 34, scope: !3721)
!3725 = !DILocation(line: 389, column: 28, scope: !3721)
!3726 = !DILocation(line: 389, column: 40, scope: !3721)
!3727 = !DILocation(line: 391, column: 20, scope: !3715)
!3728 = !DILocation(line: 392, column: 30, scope: !3715)
!3729 = !DILocation(line: 392, column: 33, scope: !3715)
!3730 = !DILocation(line: 392, column: 39, scope: !3715)
!3731 = !DILocation(line: 392, column: 42, scope: !3715)
!3732 = !DILocation(line: 392, column: 9, scope: !3715)
!3733 = !DILocation(line: 392, column: 12, scope: !3715)
!3734 = !DILocation(line: 392, column: 18, scope: !3715)
!3735 = !DILocation(line: 392, column: 28, scope: !3715)
!3736 = !DILocation(line: 393, column: 7, scope: !3715)
!3737 = !DILocation(line: 393, column: 10, scope: !3715)
!3738 = !DILocation(line: 393, column: 23, scope: !3715)
!3739 = !DILocation(line: 394, column: 7, scope: !3715)
!3740 = !DILocation(line: 394, column: 10, scope: !3715)
!3741 = !DILocation(line: 394, column: 16, scope: !3715)
!3742 = !DILocation(line: 394, column: 25, scope: !3715)
!3743 = !DILocation(line: 395, column: 7, scope: !3715)
!3744 = !DILocation(line: 395, column: 10, scope: !3715)
!3745 = !DILocation(line: 395, column: 16, scope: !3715)
!3746 = !DILocation(line: 395, column: 24, scope: !3715)
!3747 = !DILocation(line: 396, column: 7, scope: !3715)
!3748 = !DILocation(line: 396, column: 10, scope: !3715)
!3749 = !DILocation(line: 396, column: 16, scope: !3715)
!3750 = !DILocation(line: 396, column: 30, scope: !3715)
!3751 = !DILocation(line: 397, column: 11, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3715, file: !2, line: 397, column: 11)
!3753 = !DILocation(line: 397, column: 14, scope: !3752)
!3754 = !DILocation(line: 397, column: 20, scope: !3752)
!3755 = !DILocation(line: 397, column: 35, scope: !3752)
!3756 = !DILocation(line: 397, column: 41, scope: !3752)
!3757 = !DILocation(line: 397, column: 44, scope: !3752)
!3758 = !DILocation(line: 397, column: 50, scope: !3752)
!3759 = !DILocation(line: 397, column: 64, scope: !3752)
!3760 = distinct !{!3760, !3712, !3761}
!3761 = !DILocation(line: 398, column: 4, scope: !3707)
!3762 = !DILocation(line: 400, column: 11, scope: !3707)
!3763 = !DILocation(line: 400, column: 4, scope: !3707)
!3764 = distinct !DISubprogram(name: "copy_input_until_stop", scope: !2, file: !2, line: 334, type: !846, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3765 = !DILocalVariable(name: "s", arg: 1, scope: !3764, file: !2, line: 334, type: !270)
!3766 = !DILocation(line: 334, column: 38, scope: !3764)
!3767 = !DILocalVariable(name: "progress_in", scope: !3764, file: !2, line: 336, type: !63)
!3768 = !DILocation(line: 336, column: 9, scope: !3764)
!3769 = !DILocation(line: 338, column: 8, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3764, file: !2, line: 338, column: 8)
!3771 = !DILocation(line: 338, column: 11, scope: !3770)
!3772 = !DILocation(line: 338, column: 16, scope: !3770)
!3773 = !DILocation(line: 341, column: 7, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3770, file: !2, line: 338, column: 33)
!3775 = !DILocation(line: 343, column: 14, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !2, line: 343, column: 14)
!3777 = distinct !DILexicalBlock(scope: !3774, file: !2, line: 341, column: 20)
!3778 = !DILocation(line: 343, column: 17, scope: !3776)
!3779 = !DILocation(line: 343, column: 27, scope: !3776)
!3780 = !DILocation(line: 343, column: 30, scope: !3776)
!3781 = !DILocation(line: 343, column: 24, scope: !3776)
!3782 = !DILocation(line: 343, column: 41, scope: !3776)
!3783 = !DILocation(line: 345, column: 14, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3777, file: !2, line: 345, column: 14)
!3785 = !DILocation(line: 345, column: 17, scope: !3784)
!3786 = !DILocation(line: 345, column: 23, scope: !3784)
!3787 = !DILocation(line: 345, column: 32, scope: !3784)
!3788 = !DILocation(line: 345, column: 38, scope: !3784)
!3789 = !DILocation(line: 346, column: 22, scope: !3777)
!3790 = !DILocalVariable(name: "zchh", scope: !3791, file: !2, line: 347, type: !62)
!3791 = distinct !DILexicalBlock(scope: !3777, file: !2, line: 347, column: 10)
!3792 = !DILocation(line: 347, column: 10, scope: !3791)
!3793 = !DILocation(line: 347, column: 10, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3791, file: !2, line: 347, column: 10)
!3795 = !DILocalVariable(name: "ch", scope: !3796, file: !2, line: 347, type: !55)
!3796 = distinct !DILexicalBlock(scope: !3794, file: !2, line: 347, column: 10)
!3797 = !DILocation(line: 347, column: 10, scope: !3796)
!3798 = !DILocation(line: 347, column: 10, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3796, file: !2, line: 347, column: 10)
!3800 = !DILocation(line: 347, column: 10, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3794, file: !2, line: 347, column: 10)
!3802 = !DILocation(line: 347, column: 10, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !2, line: 347, column: 10)
!3804 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 347, column: 10)
!3805 = !DILocation(line: 347, column: 10, scope: !3804)
!3806 = !DILocation(line: 347, column: 10, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 347, column: 10)
!3808 = !DILocation(line: 348, column: 10, scope: !3777)
!3809 = !DILocation(line: 348, column: 13, scope: !3777)
!3810 = !DILocation(line: 348, column: 19, scope: !3777)
!3811 = !DILocation(line: 348, column: 26, scope: !3777)
!3812 = !DILocation(line: 349, column: 10, scope: !3777)
!3813 = !DILocation(line: 349, column: 13, scope: !3777)
!3814 = !DILocation(line: 349, column: 19, scope: !3777)
!3815 = !DILocation(line: 349, column: 27, scope: !3777)
!3816 = !DILocation(line: 350, column: 10, scope: !3777)
!3817 = !DILocation(line: 350, column: 13, scope: !3777)
!3818 = !DILocation(line: 350, column: 19, scope: !3777)
!3819 = !DILocation(line: 350, column: 32, scope: !3777)
!3820 = !DILocation(line: 351, column: 14, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3777, file: !2, line: 351, column: 14)
!3822 = !DILocation(line: 351, column: 17, scope: !3821)
!3823 = !DILocation(line: 351, column: 23, scope: !3821)
!3824 = !DILocation(line: 351, column: 37, scope: !3821)
!3825 = !DILocation(line: 351, column: 43, scope: !3821)
!3826 = !DILocation(line: 351, column: 46, scope: !3821)
!3827 = !DILocation(line: 351, column: 52, scope: !3821)
!3828 = !DILocation(line: 351, column: 65, scope: !3821)
!3829 = distinct !{!3829, !3773, !3830}
!3830 = !DILocation(line: 352, column: 7, scope: !3774)
!3831 = !DILocation(line: 354, column: 4, scope: !3774)
!3832 = !DILocation(line: 357, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3770, file: !2, line: 354, column: 11)
!3834 = !DILocation(line: 359, column: 14, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !2, line: 359, column: 14)
!3836 = distinct !DILexicalBlock(scope: !3833, file: !2, line: 357, column: 20)
!3837 = !DILocation(line: 359, column: 17, scope: !3835)
!3838 = !DILocation(line: 359, column: 27, scope: !3835)
!3839 = !DILocation(line: 359, column: 30, scope: !3835)
!3840 = !DILocation(line: 359, column: 24, scope: !3835)
!3841 = !DILocation(line: 359, column: 41, scope: !3835)
!3842 = !DILocation(line: 361, column: 14, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3836, file: !2, line: 361, column: 14)
!3844 = !DILocation(line: 361, column: 17, scope: !3843)
!3845 = !DILocation(line: 361, column: 23, scope: !3843)
!3846 = !DILocation(line: 361, column: 32, scope: !3843)
!3847 = !DILocation(line: 361, column: 38, scope: !3843)
!3848 = !DILocation(line: 363, column: 14, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3836, file: !2, line: 363, column: 14)
!3850 = !DILocation(line: 363, column: 17, scope: !3849)
!3851 = !DILocation(line: 363, column: 33, scope: !3849)
!3852 = !DILocation(line: 363, column: 39, scope: !3849)
!3853 = !DILocation(line: 364, column: 22, scope: !3836)
!3854 = !DILocalVariable(name: "zchh", scope: !3855, file: !2, line: 365, type: !62)
!3855 = distinct !DILexicalBlock(scope: !3836, file: !2, line: 365, column: 10)
!3856 = !DILocation(line: 365, column: 10, scope: !3855)
!3857 = !DILocation(line: 365, column: 10, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3855, file: !2, line: 365, column: 10)
!3859 = !DILocalVariable(name: "ch", scope: !3860, file: !2, line: 365, type: !55)
!3860 = distinct !DILexicalBlock(scope: !3858, file: !2, line: 365, column: 10)
!3861 = !DILocation(line: 365, column: 10, scope: !3860)
!3862 = !DILocation(line: 365, column: 10, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3860, file: !2, line: 365, column: 10)
!3864 = !DILocation(line: 365, column: 10, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3858, file: !2, line: 365, column: 10)
!3866 = !DILocation(line: 365, column: 10, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !2, line: 365, column: 10)
!3868 = distinct !DILexicalBlock(scope: !3865, file: !2, line: 365, column: 10)
!3869 = !DILocation(line: 365, column: 10, scope: !3868)
!3870 = !DILocation(line: 365, column: 10, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3865, file: !2, line: 365, column: 10)
!3872 = !DILocation(line: 366, column: 10, scope: !3836)
!3873 = !DILocation(line: 366, column: 13, scope: !3836)
!3874 = !DILocation(line: 366, column: 19, scope: !3836)
!3875 = !DILocation(line: 366, column: 26, scope: !3836)
!3876 = !DILocation(line: 367, column: 10, scope: !3836)
!3877 = !DILocation(line: 367, column: 13, scope: !3836)
!3878 = !DILocation(line: 367, column: 19, scope: !3836)
!3879 = !DILocation(line: 367, column: 27, scope: !3836)
!3880 = !DILocation(line: 368, column: 10, scope: !3836)
!3881 = !DILocation(line: 368, column: 13, scope: !3836)
!3882 = !DILocation(line: 368, column: 19, scope: !3836)
!3883 = !DILocation(line: 368, column: 32, scope: !3836)
!3884 = !DILocation(line: 369, column: 14, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3836, file: !2, line: 369, column: 14)
!3886 = !DILocation(line: 369, column: 17, scope: !3885)
!3887 = !DILocation(line: 369, column: 23, scope: !3885)
!3888 = !DILocation(line: 369, column: 37, scope: !3885)
!3889 = !DILocation(line: 369, column: 43, scope: !3885)
!3890 = !DILocation(line: 369, column: 46, scope: !3885)
!3891 = !DILocation(line: 369, column: 52, scope: !3885)
!3892 = !DILocation(line: 369, column: 65, scope: !3885)
!3893 = !DILocation(line: 370, column: 10, scope: !3836)
!3894 = !DILocation(line: 370, column: 13, scope: !3836)
!3895 = !DILocation(line: 370, column: 28, scope: !3836)
!3896 = distinct !{!3896, !3832, !3897}
!3897 = !DILocation(line: 371, column: 7, scope: !3833)
!3898 = !DILocation(line: 373, column: 11, scope: !3764)
!3899 = !DILocation(line: 373, column: 4, scope: !3764)
!3900 = distinct !DISubprogram(name: "flush_RL", scope: !2, file: !2, line: 297, type: !539, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3901 = !DILocalVariable(name: "s", arg: 1, scope: !3900, file: !2, line: 297, type: !270)
!3902 = !DILocation(line: 297, column: 25, scope: !3900)
!3903 = !DILocation(line: 299, column: 8, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3900, file: !2, line: 299, column: 8)
!3905 = !DILocation(line: 299, column: 11, scope: !3904)
!3906 = !DILocation(line: 299, column: 23, scope: !3904)
!3907 = !DILocation(line: 299, column: 50, scope: !3904)
!3908 = !DILocation(line: 299, column: 30, scope: !3904)
!3909 = !DILocation(line: 300, column: 14, scope: !3900)
!3910 = !DILocation(line: 300, column: 4, scope: !3900)
!3911 = !DILocation(line: 301, column: 1, scope: !3900)
!3912 = distinct !DISubprogram(name: "add_pair_to_block", scope: !2, file: !2, line: 261, type: !539, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !234)
!3913 = !DILocalVariable(name: "s", arg: 1, scope: !3912, file: !2, line: 261, type: !270)
!3914 = !DILocation(line: 261, column: 34, scope: !3912)
!3915 = !DILocalVariable(name: "i", scope: !3912, file: !2, line: 263, type: !135)
!3916 = !DILocation(line: 263, column: 10, scope: !3912)
!3917 = !DILocalVariable(name: "ch", scope: !3912, file: !2, line: 264, type: !55)
!3918 = !DILocation(line: 264, column: 10, scope: !3912)
!3919 = !DILocation(line: 264, column: 23, scope: !3912)
!3920 = !DILocation(line: 264, column: 26, scope: !3912)
!3921 = !DILocation(line: 264, column: 15, scope: !3912)
!3922 = !DILocation(line: 265, column: 11, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 265, column: 4)
!3924 = !DILocation(line: 265, column: 9, scope: !3923)
!3925 = !DILocation(line: 265, column: 16, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3923, file: !2, line: 265, column: 4)
!3927 = !DILocation(line: 265, column: 20, scope: !3926)
!3928 = !DILocation(line: 265, column: 23, scope: !3926)
!3929 = !DILocation(line: 265, column: 18, scope: !3926)
!3930 = !DILocation(line: 265, column: 4, scope: !3923)
!3931 = !DILocation(line: 266, column: 7, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3933, file: !2, line: 266, column: 7)
!3933 = distinct !DILexicalBlock(scope: !3926, file: !2, line: 265, column: 42)
!3934 = !DILocation(line: 267, column: 4, scope: !3933)
!3935 = !DILocation(line: 265, column: 38, scope: !3926)
!3936 = !DILocation(line: 265, column: 4, scope: !3926)
!3937 = distinct !{!3937, !3930, !3938, !581}
!3938 = !DILocation(line: 267, column: 4, scope: !3923)
!3939 = !DILocation(line: 268, column: 4, scope: !3912)
!3940 = !DILocation(line: 268, column: 7, scope: !3912)
!3941 = !DILocation(line: 268, column: 13, scope: !3912)
!3942 = !DILocation(line: 268, column: 16, scope: !3912)
!3943 = !DILocation(line: 268, column: 29, scope: !3912)
!3944 = !DILocation(line: 269, column: 12, scope: !3912)
!3945 = !DILocation(line: 269, column: 15, scope: !3912)
!3946 = !DILocation(line: 269, column: 4, scope: !3912)
!3947 = !DILocation(line: 271, column: 39, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 269, column: 29)
!3949 = !DILocation(line: 271, column: 10, scope: !3948)
!3950 = !DILocation(line: 271, column: 13, scope: !3948)
!3951 = !DILocation(line: 271, column: 19, scope: !3948)
!3952 = !DILocation(line: 271, column: 22, scope: !3948)
!3953 = !DILocation(line: 271, column: 30, scope: !3948)
!3954 = !DILocation(line: 271, column: 43, scope: !3948)
!3955 = !DILocation(line: 271, column: 46, scope: !3948)
!3956 = !DILocation(line: 271, column: 52, scope: !3948)
!3957 = !DILocation(line: 272, column: 10, scope: !3948)
!3958 = !DILocation(line: 274, column: 39, scope: !3948)
!3959 = !DILocation(line: 274, column: 10, scope: !3948)
!3960 = !DILocation(line: 274, column: 13, scope: !3948)
!3961 = !DILocation(line: 274, column: 19, scope: !3948)
!3962 = !DILocation(line: 274, column: 22, scope: !3948)
!3963 = !DILocation(line: 274, column: 30, scope: !3948)
!3964 = !DILocation(line: 274, column: 43, scope: !3948)
!3965 = !DILocation(line: 274, column: 46, scope: !3948)
!3966 = !DILocation(line: 274, column: 52, scope: !3948)
!3967 = !DILocation(line: 275, column: 39, scope: !3948)
!3968 = !DILocation(line: 275, column: 10, scope: !3948)
!3969 = !DILocation(line: 275, column: 13, scope: !3948)
!3970 = !DILocation(line: 275, column: 19, scope: !3948)
!3971 = !DILocation(line: 275, column: 22, scope: !3948)
!3972 = !DILocation(line: 275, column: 30, scope: !3948)
!3973 = !DILocation(line: 275, column: 43, scope: !3948)
!3974 = !DILocation(line: 275, column: 46, scope: !3948)
!3975 = !DILocation(line: 275, column: 52, scope: !3948)
!3976 = !DILocation(line: 276, column: 10, scope: !3948)
!3977 = !DILocation(line: 278, column: 39, scope: !3948)
!3978 = !DILocation(line: 278, column: 10, scope: !3948)
!3979 = !DILocation(line: 278, column: 13, scope: !3948)
!3980 = !DILocation(line: 278, column: 19, scope: !3948)
!3981 = !DILocation(line: 278, column: 22, scope: !3948)
!3982 = !DILocation(line: 278, column: 30, scope: !3948)
!3983 = !DILocation(line: 278, column: 43, scope: !3948)
!3984 = !DILocation(line: 278, column: 46, scope: !3948)
!3985 = !DILocation(line: 278, column: 52, scope: !3948)
!3986 = !DILocation(line: 279, column: 39, scope: !3948)
!3987 = !DILocation(line: 279, column: 10, scope: !3948)
!3988 = !DILocation(line: 279, column: 13, scope: !3948)
!3989 = !DILocation(line: 279, column: 19, scope: !3948)
!3990 = !DILocation(line: 279, column: 22, scope: !3948)
!3991 = !DILocation(line: 279, column: 30, scope: !3948)
!3992 = !DILocation(line: 279, column: 43, scope: !3948)
!3993 = !DILocation(line: 279, column: 46, scope: !3948)
!3994 = !DILocation(line: 279, column: 52, scope: !3948)
!3995 = !DILocation(line: 280, column: 39, scope: !3948)
!3996 = !DILocation(line: 280, column: 10, scope: !3948)
!3997 = !DILocation(line: 280, column: 13, scope: !3948)
!3998 = !DILocation(line: 280, column: 19, scope: !3948)
!3999 = !DILocation(line: 280, column: 22, scope: !3948)
!4000 = !DILocation(line: 280, column: 30, scope: !3948)
!4001 = !DILocation(line: 280, column: 43, scope: !3948)
!4002 = !DILocation(line: 280, column: 46, scope: !3948)
!4003 = !DILocation(line: 280, column: 52, scope: !3948)
!4004 = !DILocation(line: 281, column: 10, scope: !3948)
!4005 = !DILocation(line: 283, column: 10, scope: !3948)
!4006 = !DILocation(line: 283, column: 13, scope: !3948)
!4007 = !DILocation(line: 283, column: 19, scope: !3948)
!4008 = !DILocation(line: 283, column: 22, scope: !3948)
!4009 = !DILocation(line: 283, column: 34, scope: !3948)
!4010 = !DILocation(line: 283, column: 38, scope: !3948)
!4011 = !DILocation(line: 284, column: 39, scope: !3948)
!4012 = !DILocation(line: 284, column: 10, scope: !3948)
!4013 = !DILocation(line: 284, column: 13, scope: !3948)
!4014 = !DILocation(line: 284, column: 19, scope: !3948)
!4015 = !DILocation(line: 284, column: 22, scope: !3948)
!4016 = !DILocation(line: 284, column: 30, scope: !3948)
!4017 = !DILocation(line: 284, column: 43, scope: !3948)
!4018 = !DILocation(line: 284, column: 46, scope: !3948)
!4019 = !DILocation(line: 284, column: 52, scope: !3948)
!4020 = !DILocation(line: 285, column: 39, scope: !3948)
!4021 = !DILocation(line: 285, column: 10, scope: !3948)
!4022 = !DILocation(line: 285, column: 13, scope: !3948)
!4023 = !DILocation(line: 285, column: 19, scope: !3948)
!4024 = !DILocation(line: 285, column: 22, scope: !3948)
!4025 = !DILocation(line: 285, column: 30, scope: !3948)
!4026 = !DILocation(line: 285, column: 43, scope: !3948)
!4027 = !DILocation(line: 285, column: 46, scope: !3948)
!4028 = !DILocation(line: 285, column: 52, scope: !3948)
!4029 = !DILocation(line: 286, column: 39, scope: !3948)
!4030 = !DILocation(line: 286, column: 10, scope: !3948)
!4031 = !DILocation(line: 286, column: 13, scope: !3948)
!4032 = !DILocation(line: 286, column: 19, scope: !3948)
!4033 = !DILocation(line: 286, column: 22, scope: !3948)
!4034 = !DILocation(line: 286, column: 30, scope: !3948)
!4035 = !DILocation(line: 286, column: 43, scope: !3948)
!4036 = !DILocation(line: 286, column: 46, scope: !3948)
!4037 = !DILocation(line: 286, column: 52, scope: !3948)
!4038 = !DILocation(line: 287, column: 39, scope: !3948)
!4039 = !DILocation(line: 287, column: 10, scope: !3948)
!4040 = !DILocation(line: 287, column: 13, scope: !3948)
!4041 = !DILocation(line: 287, column: 19, scope: !3948)
!4042 = !DILocation(line: 287, column: 22, scope: !3948)
!4043 = !DILocation(line: 287, column: 30, scope: !3948)
!4044 = !DILocation(line: 287, column: 43, scope: !3948)
!4045 = !DILocation(line: 287, column: 46, scope: !3948)
!4046 = !DILocation(line: 287, column: 52, scope: !3948)
!4047 = !DILocation(line: 288, column: 41, scope: !3948)
!4048 = !DILocation(line: 288, column: 44, scope: !3948)
!4049 = !DILocation(line: 288, column: 56, scope: !3948)
!4050 = !DILocation(line: 288, column: 33, scope: !3948)
!4051 = !DILocation(line: 288, column: 10, scope: !3948)
!4052 = !DILocation(line: 288, column: 13, scope: !3948)
!4053 = !DILocation(line: 288, column: 19, scope: !3948)
!4054 = !DILocation(line: 288, column: 22, scope: !3948)
!4055 = !DILocation(line: 288, column: 30, scope: !3948)
!4056 = !DILocation(line: 289, column: 10, scope: !3948)
!4057 = !DILocation(line: 289, column: 13, scope: !3948)
!4058 = !DILocation(line: 289, column: 19, scope: !3948)
!4059 = !DILocation(line: 290, column: 10, scope: !3948)
!4060 = !DILocation(line: 292, column: 1, scope: !3912)

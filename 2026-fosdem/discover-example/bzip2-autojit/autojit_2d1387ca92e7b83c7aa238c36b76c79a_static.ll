; ModuleID = '/tmp/autojit_2d1387ca92e7b83c7aa238c36b76c79a'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.zzzz = type { ptr, ptr }
%struct.UInt64 = type { [8 x i8] }
%struct.utimbuf = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c".bz2\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c".bz\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c".tbz2\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c".tbz\00", align 1, !dbg !17
@zSuffix = global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 16, !dbg !19
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !62
@.str.5 = private unnamed_addr constant [5 x i8] c".tar\00", align 1, !dbg !67
@unzSuffix = global [4 x ptr] [ptr @.str.4, ptr @.str.4, ptr @.str.5, ptr @.str.5], align 16, !dbg !69
@outputHandleJustInCase = global ptr null, align 8, !dbg !211
@smallMode = global i8 0, align 1, !dbg !172
@keepInputFiles = global i8 0, align 1, !dbg !170
@forceOverwrite = global i8 0, align 1, !dbg !176
@noisy = global i8 0, align 1, !dbg !182
@verbosity = global i32 0, align 4, !dbg !168
@blockSize100k = global i32 0, align 4, !dbg !188
@testFailsExist = global i8 0, align 1, !dbg !178
@unzFailsExist = global i8 0, align 1, !dbg !180
@numFileNames = global i32 0, align 4, !dbg !184
@numFilesProcessed = global i32 0, align 4, !dbg !186
@workFactor = global i32 0, align 4, !dbg !266
@deleteOutputOnInterrupt = global i8 0, align 1, !dbg !174
@exitValue = global i32 0, align 4, !dbg !190
@inName = global [1034 x i8] zeroinitializer, align 16, !dbg !198
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1, !dbg !72
@outName = global [1034 x i8] zeroinitializer, align 16, !dbg !203
@progNameReally = global [1034 x i8] zeroinitializer, align 16, !dbg !209
@progName = global ptr null, align 8, !dbg !207
@.str.7 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1, !dbg !77
@.str.8 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1, !dbg !79
@longestFileName = global i32 0, align 4, !dbg !196
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !81
@srcMode = global i32 0, align 4, !dbg !194
@opMode = global i32 0, align 4, !dbg !192
@.str.10 = private unnamed_addr constant [6 x i8] c"unzip\00", align 1, !dbg !86
@.str.11 = private unnamed_addr constant [6 x i8] c"UNZIP\00", align 1, !dbg !88
@.str.12 = private unnamed_addr constant [6 x i8] c"z2cat\00", align 1, !dbg !90
@.str.13 = private unnamed_addr constant [6 x i8] c"Z2CAT\00", align 1, !dbg !92
@.str.14 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1, !dbg !94
@.str.15 = private unnamed_addr constant [5 x i8] c"ZCAT\00", align 1, !dbg !96
@stderr = external global ptr, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"%s: Bad flag `%s'\0A\00", align 1, !dbg !98
@.str.17 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1, !dbg !103
@.str.18 = private unnamed_addr constant [13 x i8] c"--decompress\00", align 1, !dbg !108
@.str.19 = private unnamed_addr constant [11 x i8] c"--compress\00", align 1, !dbg !113
@.str.20 = private unnamed_addr constant [8 x i8] c"--force\00", align 1, !dbg !118
@.str.21 = private unnamed_addr constant [7 x i8] c"--test\00", align 1, !dbg !123
@.str.22 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1, !dbg !125
@.str.23 = private unnamed_addr constant [8 x i8] c"--small\00", align 1, !dbg !127
@.str.24 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1, !dbg !129
@.str.25 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !131
@.str.26 = private unnamed_addr constant [10 x i8] c"--license\00", align 1, !dbg !136
@.str.27 = private unnamed_addr constant [14 x i8] c"--exponential\00", align 1, !dbg !138
@.str.28 = private unnamed_addr constant [18 x i8] c"--repetitive-best\00", align 1, !dbg !143
@.str.29 = private unnamed_addr constant [18 x i8] c"--repetitive-fast\00", align 1, !dbg !148
@.str.30 = private unnamed_addr constant [7 x i8] c"--fast\00", align 1, !dbg !150
@.str.31 = private unnamed_addr constant [7 x i8] c"--best\00", align 1, !dbg !152
@.str.32 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1, !dbg !154
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !156
@.str.34 = private unnamed_addr constant [40 x i8] c"%s: -c and -t cannot be used together.\0A\00", align 1, !dbg !158
@.str.35 = private unnamed_addr constant [113 x i8] c"\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1, !dbg !163
@tmpName = global [1034 x i8] zeroinitializer, align 16, !dbg !205
@.str.36 = private unnamed_addr constant [869 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1, !dbg !268
@.str.37 = private unnamed_addr constant [996 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1, !dbg !273
@.str.38 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1, !dbg !278
@.str.39 = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1, !dbg !283
@.str.40 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1, !dbg !288
@.str.41 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1, !dbg !293
@.str.42 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1, !dbg !298
@.str.43 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1, !dbg !303
@.str.44 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1, !dbg !308
@.str.45 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1, !dbg !313
@.str.46 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1, !dbg !318
@.str.47 = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1, !dbg !323
@.str.48 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1, !dbg !328
@.str.49 = private unnamed_addr constant [529 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A   \0A   Copyright (C) 1996-2005 by Julian Seward.\0A   \0A   This program is free software; you can redistribute it and/or modify\0A   it under the terms set out in the LICENSE file, which is included\0A   in the bzip2-1.0 source distribution.\0A   \0A   This program is distributed in the hope that it will be useful,\0A   but WITHOUT ANY WARRANTY; without even the implied warranty of\0A   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A   LICENSE file for more details.\0A   \0A\00", align 1, !dbg !333
@.str.50 = private unnamed_addr constant [1230 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A\0A   usage: %s [flags and input files in any order]\0A\0A   -h --help           print this message\0A   -d --decompress     force decompression\0A   -z --compress       force compression\0A   -k --keep           keep (don't delete) input files\0A   -f --force          overwrite existing output files\0A   -t --test           test compressed file integrity\0A   -c --stdout         output to standard out\0A   -q --quiet          suppress noncritical error messages\0A   -v --verbose        be verbose (a 2nd -v gives more)\0A   -L --license        display software version & license\0A   -V --version        display software version & license\0A   -s --small          use less memory (at most 2500k)\0A   -1 .. -9            set block size to 100k .. 900k\0A   --fast              alias for -1\0A   --best              alias for -9\0A\0A   If invoked as `bzip2', default action is to compress.\0A              as `bunzip2',  default action is to decompress.\0A              as `bzcat', default action is to decompress to stdout.\0A\0A   If no file names are given, bzip2 compresses or decompresses\0A   from standard input to standard output.  You can combine\0A   short flags, so `-v -4' means the same as -v4 or -4v, &c.\0A\0A\00", align 1, !dbg !338
@.str.51 = private unnamed_addr constant [49 x i8] c"%s: %s is redundant in versions 0.9.5 and above\0A\00", align 1, !dbg !343
@.str.52 = private unnamed_addr constant [45 x i8] c"\0A%s: Control-C or similar caught, quitting.\0A\00", align 1, !dbg !345
@.str.53 = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1, !dbg !350
@.str.54 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1, !dbg !355
@.str.55 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1, !dbg !357
@.str.56 = private unnamed_addr constant [39 x i8] c"%s: There are no files matching `%s'.\0A\00", align 1, !dbg !359
@.str.57 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1, !dbg !364
@.str.58 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1, !dbg !369
@.str.59 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1, !dbg !374
@.str.60 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1, !dbg !376
@.str.61 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1, !dbg !381
@.str.62 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1, !dbg !383
@.str.63 = private unnamed_addr constant [2 x i8] c"s\00", align 1, !dbg !385
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.64 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1, !dbg !390
@.str.65 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1, !dbg !395
@.str.66 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !400
@.str.67 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !402
@.str.68 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1, !dbg !404
@.str.69 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1, !dbg !406
@.str.70 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1, !dbg !411
@.str.71 = private unnamed_addr constant [109 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to me at:\0A\09jseward@bzip.org\0A\00", align 1, !dbg !413
@fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a = global %struct.stat zeroinitializer, align 8, !dbg !418
@.str.72 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !454
@.str.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !456
@.str.74 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1, !dbg !458
@.str.75 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1, !dbg !460
@.str.76 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1, !dbg !465
@.str.77 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1, !dbg !470
@.str.78 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1, !dbg !475
@.str.79 = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1, !dbg !480
@.str.80 = private unnamed_addr constant [5 x i8] c".out\00", align 1, !dbg !485
@.str.81 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1, !dbg !487
@.str.82 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1, !dbg !489
@.str.83 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1, !dbg !494
@.str.84 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1, !dbg !496
@.str.85 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1, !dbg !501
@.str.86 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1, !dbg !503
@.str.87 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1, !dbg !505
@.str.88 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1, !dbg !510
@.str.89 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1, !dbg !515
@.str.90 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1, !dbg !517
@.str.91 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1, !dbg !519
@.str.92 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1, !dbg !524
@.str.93 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1, !dbg !529
@.str.94 = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1, !dbg !534
@.str.95 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1, !dbg !536
@.str.96 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1, !dbg !541
@.str.97 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1, !dbg !543
@.str.98 = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1, !dbg !545
@.str.99 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1, !dbg !547
@.str.100 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1, !dbg !549
@.str.101 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1, !dbg !551
@.str.102 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1, !dbg !553
@.str.103 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1, !dbg !558
@.str.104 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1, !dbg !560
@__llvm_autojit_ptr_fopen_output_safely = internal global ptr null
@__llvm_autojit_ptr_main = internal global ptr null
@__llvm_autojit_lazy_file = private unnamed_addr constant [49 x i8] c"/tmp/autojit_2d1387ca92e7b83c7aa238c36b76c79a.ll\00"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 100, ptr @_GLOBAL__sub_I_bzip2.c_llvm_autojit_init, ptr null }]
@llvm.used = appending global [3 x ptr] [ptr @fopen_output_safely, ptr @main, ptr @_GLOBAL__sub_I_bzip2.c_llvm_autojit_init], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @fopen_output_safely(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @__llvm_autojit_ptr_fopen_output_safely, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store ptr inttoptr (i64 4347410223156403214 to ptr), ptr @__llvm_autojit_ptr_fopen_output_safely, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_fopen_output_safely)
  %6 = load ptr, ptr @__llvm_autojit_ptr_fopen_output_safely, align 8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  %9 = tail call ptr %8(ptr %0, ptr %1)
  ret ptr %9
}

declare i32 @open(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare noalias ptr @fdopen(i32 noundef, ptr noundef) #2

declare i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @__llvm_autojit_ptr_main, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store ptr inttoptr (i64 -2728647540370771703 to ptr), ptr @__llvm_autojit_ptr_main, align 8
  call void @__llvm_autojit_materialize(ptr @__llvm_autojit_ptr_main)
  %6 = load ptr, ptr @__llvm_autojit_ptr_main, align 8
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  %9 = tail call i32 %8(i32 %0, ptr %1)
  ret i32 %9
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32 noundef %0) #0 !dbg !570 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !575, !DIExpression(), !576)
  %3 = load i32, ptr @opMode, align 4, !dbg !577
  %4 = icmp eq i32 %3, 1, !dbg !579
  br i1 %4, label %5, label %9, !dbg !579

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !dbg !580
  %7 = load ptr, ptr @progName, align 8, !dbg !581
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.36, ptr noundef %7) #10, !dbg !582
  br label %13, !dbg !582

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !dbg !583
  %11 = load ptr, ptr @progName, align 8, !dbg !584
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.37, ptr noundef %11) #10, !dbg !585
  br label %13

13:                                               ; preds = %9, %5
  call void @showFileNames(), !dbg !586
  %14 = load i32, ptr @opMode, align 4, !dbg !587
  %15 = icmp eq i32 %14, 1, !dbg !589
  br i1 %15, label %16, label %17, !dbg !589

16:                                               ; preds = %13
  call void @cleanUpAndFail(i32 noundef 3) #11, !dbg !590
  unreachable, !dbg !590

17:                                               ; preds = %13
  call void @cadvise(), !dbg !591
  call void @cleanUpAndFail(i32 noundef 2) #11, !dbg !593
  unreachable, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copyFileName(ptr noundef %0, ptr noundef %1) #0 !dbg !594 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !597, !DIExpression(), !598)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !599, !DIExpression(), !600)
  %5 = load ptr, ptr %4, align 8, !dbg !601
  %6 = call i64 @strlen(ptr noundef %5) #12, !dbg !603
  %7 = icmp ugt i64 %6, 1024, !dbg !604
  br i1 %7, label %8, label %13, !dbg !604

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !dbg !605
  %10 = load ptr, ptr %4, align 8, !dbg !607
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.47, ptr noundef %10, i32 noundef 1024) #10, !dbg !608
  call void @setExit(i32 noundef 1), !dbg !609
  %12 = load i32, ptr @exitValue, align 4, !dbg !610
  call void @exit(i32 noundef %12) #13, !dbg !611
  unreachable, !dbg !611

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8, !dbg !612
  %15 = load ptr, ptr %4, align 8, !dbg !613
  %16 = call ptr @strncpy(ptr noundef %14, ptr noundef %15, i64 noundef 1024) #10, !dbg !614
  %17 = load ptr, ptr %3, align 8, !dbg !615
  %18 = getelementptr inbounds i8, ptr %17, i64 1024, !dbg !615
  store i8 0, ptr %18, align 1, !dbg !616
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addFlagsFromEnvVar(ptr noundef %0, ptr noundef %1) #0 !dbg !618 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !622, !DIExpression(), !623)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !624, !DIExpression(), !625)
    #dbg_declare(ptr %5, !626, !DIExpression(), !627)
    #dbg_declare(ptr %6, !628, !DIExpression(), !629)
    #dbg_declare(ptr %7, !630, !DIExpression(), !631)
    #dbg_declare(ptr %8, !632, !DIExpression(), !633)
    #dbg_declare(ptr %9, !634, !DIExpression(), !635)
  %10 = load ptr, ptr %4, align 8, !dbg !636
  %11 = call ptr @getenv(ptr noundef %10) #10, !dbg !637
  store ptr %11, ptr %8, align 8, !dbg !638
  %12 = load ptr, ptr %8, align 8, !dbg !639
  %13 = icmp ne ptr %12, null, !dbg !641
  br i1 %13, label %14, label %111, !dbg !641

14:                                               ; preds = %2
  %15 = load ptr, ptr %8, align 8, !dbg !642
  store ptr %15, ptr %9, align 8, !dbg !644
  store i32 0, ptr %5, align 4, !dbg !645
  br label %16, !dbg !646

16:                                               ; preds = %14, %109
  %17 = load ptr, ptr %9, align 8, !dbg !647
  %18 = load i32, ptr %5, align 4, !dbg !650
  %19 = sext i32 %18 to i64, !dbg !647
  %20 = getelementptr inbounds i8, ptr %17, i64 %19, !dbg !647
  %21 = load i8, ptr %20, align 1, !dbg !647
  %22 = sext i8 %21 to i32, !dbg !647
  %23 = icmp eq i32 %22, 0, !dbg !651
  br i1 %23, label %24, label %25, !dbg !651

24:                                               ; preds = %16
  br label %110, !dbg !652

25:                                               ; preds = %16
  %26 = load i32, ptr %5, align 4, !dbg !653
  %27 = load ptr, ptr %9, align 8, !dbg !654
  %28 = sext i32 %26 to i64, !dbg !654
  %29 = getelementptr inbounds i8, ptr %27, i64 %28, !dbg !654
  store ptr %29, ptr %9, align 8, !dbg !654
  store i32 0, ptr %5, align 4, !dbg !655
  br label %30, !dbg !656

30:                                               ; preds = %43, %25
  %31 = call ptr @__ctype_b_loc() #14, !dbg !657
  %32 = load ptr, ptr %31, align 8, !dbg !657
  %33 = load ptr, ptr %9, align 8, !dbg !657
  %34 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !657
  %35 = load i8, ptr %34, align 1, !dbg !657
  %36 = sext i8 %35 to i32, !dbg !657
  %37 = sext i32 %36 to i64, !dbg !657
  %38 = getelementptr inbounds i16, ptr %32, i64 %37, !dbg !657
  %39 = load i16, ptr %38, align 2, !dbg !657
  %40 = zext i16 %39 to i32, !dbg !657
  %41 = and i32 %40, 8192, !dbg !657
  %42 = icmp ne i32 %41, 0, !dbg !656
  br i1 %42, label %43, label %46, !dbg !656

43:                                               ; preds = %30
  %44 = load ptr, ptr %9, align 8, !dbg !658
  %45 = getelementptr inbounds nuw i8, ptr %44, i32 1, !dbg !658
  store ptr %45, ptr %9, align 8, !dbg !658
  br label %30, !dbg !656, !llvm.loop !659

46:                                               ; preds = %30
  br label %47, !dbg !661

47:                                               ; preds = %73, %46
  %48 = load ptr, ptr %9, align 8, !dbg !662
  %49 = load i32, ptr %5, align 4, !dbg !663
  %50 = sext i32 %49 to i64, !dbg !662
  %51 = getelementptr inbounds i8, ptr %48, i64 %50, !dbg !662
  %52 = load i8, ptr %51, align 1, !dbg !662
  %53 = sext i8 %52 to i32, !dbg !662
  %54 = icmp ne i32 %53, 0, !dbg !664
  br i1 %54, label %55, label %71, !dbg !665

55:                                               ; preds = %47
  %56 = call ptr @__ctype_b_loc() #14, !dbg !666
  %57 = load ptr, ptr %56, align 8, !dbg !666
  %58 = load ptr, ptr %9, align 8, !dbg !666
  %59 = load i32, ptr %5, align 4, !dbg !666
  %60 = sext i32 %59 to i64, !dbg !666
  %61 = getelementptr inbounds i8, ptr %58, i64 %60, !dbg !666
  %62 = load i8, ptr %61, align 1, !dbg !666
  %63 = sext i8 %62 to i32, !dbg !666
  %64 = sext i32 %63 to i64, !dbg !666
  %65 = getelementptr inbounds i16, ptr %57, i64 %64, !dbg !666
  %66 = load i16, ptr %65, align 2, !dbg !666
  %67 = zext i16 %66 to i32, !dbg !666
  %68 = and i32 %67, 8192, !dbg !666
  %69 = icmp ne i32 %68, 0, !dbg !667
  %70 = xor i1 %69, true, !dbg !667
  br label %71

71:                                               ; preds = %55, %47
  %72 = phi i1 [ false, %47 ], [ %70, %55 ], !dbg !668
  br i1 %72, label %73, label %76, !dbg !661

73:                                               ; preds = %71
  %74 = load i32, ptr %5, align 4, !dbg !669
  %75 = add nsw i32 %74, 1, !dbg !669
  store i32 %75, ptr %5, align 4, !dbg !669
  br label %47, !dbg !661, !llvm.loop !670

76:                                               ; preds = %71
  %77 = load i32, ptr %5, align 4, !dbg !671
  %78 = icmp sgt i32 %77, 0, !dbg !673
  br i1 %78, label %79, label %109, !dbg !673

79:                                               ; preds = %76
  %80 = load i32, ptr %5, align 4, !dbg !674
  store i32 %80, ptr %7, align 4, !dbg !676
  %81 = load i32, ptr %7, align 4, !dbg !677
  %82 = icmp sgt i32 %81, 1024, !dbg !679
  br i1 %82, label %83, label %84, !dbg !679

83:                                               ; preds = %79
  store i32 1024, ptr %7, align 4, !dbg !680
  br label %84, !dbg !681

84:                                               ; preds = %83, %79
  store i32 0, ptr %6, align 4, !dbg !682
  br label %85, !dbg !684

85:                                               ; preds = %98, %84
  %86 = load i32, ptr %6, align 4, !dbg !685
  %87 = load i32, ptr %7, align 4, !dbg !687
  %88 = icmp slt i32 %86, %87, !dbg !688
  br i1 %88, label %89, label %101, !dbg !689

89:                                               ; preds = %85
  %90 = load ptr, ptr %9, align 8, !dbg !690
  %91 = load i32, ptr %6, align 4, !dbg !691
  %92 = sext i32 %91 to i64, !dbg !690
  %93 = getelementptr inbounds i8, ptr %90, i64 %92, !dbg !690
  %94 = load i8, ptr %93, align 1, !dbg !690
  %95 = load i32, ptr %6, align 4, !dbg !692
  %96 = sext i32 %95 to i64, !dbg !693
  %97 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %96, !dbg !693
  store i8 %94, ptr %97, align 1, !dbg !694
  br label %98, !dbg !693

98:                                               ; preds = %89
  %99 = load i32, ptr %6, align 4, !dbg !695
  %100 = add nsw i32 %99, 1, !dbg !695
  store i32 %100, ptr %6, align 4, !dbg !695
  br label %85, !dbg !696, !llvm.loop !697

101:                                              ; preds = %85
  %102 = load i32, ptr %7, align 4, !dbg !699
  %103 = sext i32 %102 to i64, !dbg !700
  %104 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %103, !dbg !700
  store i8 0, ptr %104, align 1, !dbg !701
  %105 = load ptr, ptr %3, align 8, !dbg !702
  %106 = load ptr, ptr %105, align 8, !dbg !702
  %107 = call ptr @snocString(ptr noundef %106, ptr noundef @tmpName), !dbg !702
  %108 = load ptr, ptr %3, align 8, !dbg !702
  store ptr %107, ptr %108, align 8, !dbg !702
  br label %109, !dbg !703

109:                                              ; preds = %101, %76
  br label %16, !dbg !646, !llvm.loop !704

110:                                              ; preds = %24
  br label %111, !dbg !706

111:                                              ; preds = %110, %2
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @snocString(ptr noundef %0, ptr noundef %1) #0 !dbg !708 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !711, !DIExpression(), !712)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !713, !DIExpression(), !714)
  %8 = load ptr, ptr %4, align 8, !dbg !715
  %9 = icmp eq ptr %8, null, !dbg !717
  br i1 %9, label %10, label %25, !dbg !717

10:                                               ; preds = %2
    #dbg_declare(ptr %6, !718, !DIExpression(), !720)
  %11 = call ptr @mkCell(), !dbg !721
  store ptr %11, ptr %6, align 8, !dbg !720
  %12 = load ptr, ptr %5, align 8, !dbg !722
  %13 = call i64 @strlen(ptr noundef %12) #12, !dbg !723
  %14 = add i64 5, %13, !dbg !724
  %15 = trunc i64 %14 to i32, !dbg !725
  %16 = call ptr @myMalloc(i32 noundef %15), !dbg !726
  %17 = load ptr, ptr %6, align 8, !dbg !727
  %18 = getelementptr inbounds nuw %struct.zzzz, ptr %17, i32 0, i32 0, !dbg !728
  store ptr %16, ptr %18, align 8, !dbg !729
  %19 = load ptr, ptr %6, align 8, !dbg !730
  %20 = getelementptr inbounds nuw %struct.zzzz, ptr %19, i32 0, i32 0, !dbg !731
  %21 = load ptr, ptr %20, align 8, !dbg !731
  %22 = load ptr, ptr %5, align 8, !dbg !732
  %23 = call ptr @strcpy(ptr noundef %21, ptr noundef %22) #10, !dbg !733
  %24 = load ptr, ptr %6, align 8, !dbg !734
  store ptr %24, ptr %3, align 8, !dbg !735
  br label %45, !dbg !735

25:                                               ; preds = %2
    #dbg_declare(ptr %7, !736, !DIExpression(), !738)
  %26 = load ptr, ptr %4, align 8, !dbg !739
  store ptr %26, ptr %7, align 8, !dbg !738
  br label %27, !dbg !740

27:                                               ; preds = %32, %25
  %28 = load ptr, ptr %7, align 8, !dbg !741
  %29 = getelementptr inbounds nuw %struct.zzzz, ptr %28, i32 0, i32 1, !dbg !742
  %30 = load ptr, ptr %29, align 8, !dbg !742
  %31 = icmp ne ptr %30, null, !dbg !743
  br i1 %31, label %32, label %36, !dbg !740

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !dbg !744
  %34 = getelementptr inbounds nuw %struct.zzzz, ptr %33, i32 0, i32 1, !dbg !745
  %35 = load ptr, ptr %34, align 8, !dbg !745
  store ptr %35, ptr %7, align 8, !dbg !746
  br label %27, !dbg !740, !llvm.loop !747

36:                                               ; preds = %27
  %37 = load ptr, ptr %7, align 8, !dbg !748
  %38 = getelementptr inbounds nuw %struct.zzzz, ptr %37, i32 0, i32 1, !dbg !749
  %39 = load ptr, ptr %38, align 8, !dbg !749
  %40 = load ptr, ptr %5, align 8, !dbg !750
  %41 = call ptr @snocString(ptr noundef %39, ptr noundef %40), !dbg !751
  %42 = load ptr, ptr %7, align 8, !dbg !752
  %43 = getelementptr inbounds nuw %struct.zzzz, ptr %42, i32 0, i32 1, !dbg !753
  store ptr %41, ptr %43, align 8, !dbg !754
  %44 = load ptr, ptr %4, align 8, !dbg !755
  store ptr %44, ptr %3, align 8, !dbg !756
  br label %45, !dbg !756

45:                                               ; preds = %36, %10
  %46 = load ptr, ptr %3, align 8, !dbg !757
  ret ptr %46, !dbg !757
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @license() #0 !dbg !758 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !761
  %2 = call ptr @BZ2_bzlibVersion(), !dbg !762
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.49, ptr noundef %2) #10, !dbg !763
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(ptr noundef %0) #0 !dbg !765 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !768, !DIExpression(), !769)
  %3 = load ptr, ptr @stderr, align 8, !dbg !770
  %4 = call ptr @BZ2_bzlibVersion(), !dbg !771
  %5 = load ptr, ptr %2, align 8, !dbg !772
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.50, ptr noundef %4, ptr noundef %5) #10, !dbg !773
  ret void, !dbg !774
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redundant(ptr noundef %0) #0 !dbg !775 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !776, !DIExpression(), !777)
  %3 = load ptr, ptr @stderr, align 8, !dbg !778
  %4 = load ptr, ptr @progName, align 8, !dbg !779
  %5 = load ptr, ptr %2, align 8, !dbg !780
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.51, ptr noundef %4, ptr noundef %5) #10, !dbg !781
  ret void, !dbg !782
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mySignalCatcher(i32 noundef %0) #0 !dbg !783 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !784, !DIExpression(), !785)
  %3 = load ptr, ptr @stderr, align 8, !dbg !786
  %4 = load ptr, ptr @progName, align 8, !dbg !787
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.52, ptr noundef %4) #10, !dbg !788
  call void @cleanUpAndFail(i32 noundef 1) #11, !dbg !789
  unreachable, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress(ptr noundef %0) #0 !dbg !790 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !791, !DIExpression(), !792)
    #dbg_declare(ptr %3, !793, !DIExpression(), !794)
    #dbg_declare(ptr %4, !795, !DIExpression(), !796)
    #dbg_declare(ptr %5, !797, !DIExpression(), !798)
    #dbg_declare(ptr %6, !799, !DIExpression(), !800)
    #dbg_declare(ptr %7, !801, !DIExpression(), !802)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !803
  %9 = load ptr, ptr %2, align 8, !dbg !804
  %10 = icmp eq ptr %9, null, !dbg !806
  br i1 %10, label %11, label %15, !dbg !807

11:                                               ; preds = %1
  %12 = load i32, ptr @srcMode, align 4, !dbg !808
  %13 = icmp ne i32 %12, 1, !dbg !809
  br i1 %13, label %14, label %15, !dbg !807

14:                                               ; preds = %11
  call void @panic(ptr noundef @.str.53) #11, !dbg !810
  unreachable, !dbg !810

15:                                               ; preds = %11, %1
  %16 = load i32, ptr @srcMode, align 4, !dbg !811
  switch i32 %16, label %24 [
    i32 1, label %17
    i32 3, label %18
    i32 2, label %22
  ], !dbg !812

17:                                               ; preds = %15
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54), !dbg !813
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !815
  br label %24, !dbg !816

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !dbg !817
  call void @copyFileName(ptr noundef @inName, ptr noundef %19), !dbg !818
  %20 = load ptr, ptr %2, align 8, !dbg !819
  call void @copyFileName(ptr noundef @outName, ptr noundef %20), !dbg !820
  %21 = call ptr @strcat(ptr noundef @outName, ptr noundef @.str) #10, !dbg !821
  br label %24, !dbg !822

22:                                               ; preds = %15
  %23 = load ptr, ptr %2, align 8, !dbg !823
  call void @copyFileName(ptr noundef @inName, ptr noundef %23), !dbg !824
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !825
  br label %24, !dbg !826

24:                                               ; preds = %15, %22, %18, %17
  %25 = load i32, ptr @srcMode, align 4, !dbg !827
  %26 = icmp ne i32 %25, 1, !dbg !829
  br i1 %26, label %27, label %39, !dbg !830

27:                                               ; preds = %24
  %28 = call zeroext i8 @containsDubiousChars(ptr noundef @inName), !dbg !831
  %29 = zext i8 %28 to i32, !dbg !831
  %30 = icmp ne i32 %29, 0, !dbg !831
  br i1 %30, label %31, label %39, !dbg !830

31:                                               ; preds = %27
  %32 = load i8, ptr @noisy, align 1, !dbg !832
  %33 = icmp ne i8 %32, 0, !dbg !832
  br i1 %33, label %34, label %38, !dbg !832

34:                                               ; preds = %31
  %35 = load ptr, ptr @stderr, align 8, !dbg !835
  %36 = load ptr, ptr @progName, align 8, !dbg !836
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.56, ptr noundef %36, ptr noundef @inName) #10, !dbg !837
  br label %38, !dbg !837

38:                                               ; preds = %34, %31
  call void @setExit(i32 noundef 1), !dbg !838
  br label %264, !dbg !839

39:                                               ; preds = %27, %24
  %40 = load i32, ptr @srcMode, align 4, !dbg !840
  %41 = icmp ne i32 %40, 1, !dbg !842
  br i1 %41, label %42, label %52, !dbg !843

42:                                               ; preds = %39
  %43 = call zeroext i8 @fileExists(ptr noundef @inName), !dbg !844
  %44 = icmp ne i8 %43, 0, !dbg !844
  br i1 %44, label %52, label %45, !dbg !843

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8, !dbg !845
  %47 = load ptr, ptr @progName, align 8, !dbg !847
  %48 = call ptr @__errno_location() #14, !dbg !848
  %49 = load i32, ptr %48, align 4, !dbg !848
  %50 = call ptr @strerror(i32 noundef %49) #10, !dbg !849
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.57, ptr noundef %47, ptr noundef @inName, ptr noundef %50) #10, !dbg !850
  call void @setExit(i32 noundef 1), !dbg !851
  br label %264, !dbg !852

52:                                               ; preds = %42, %39
  store i32 0, ptr %6, align 4, !dbg !853
  br label %53, !dbg !855

53:                                               ; preds = %76, %52
  %54 = load i32, ptr %6, align 4, !dbg !856
  %55 = icmp slt i32 %54, 4, !dbg !858
  br i1 %55, label %56, label %79, !dbg !859

56:                                               ; preds = %53
  %57 = load i32, ptr %6, align 4, !dbg !860
  %58 = sext i32 %57 to i64, !dbg !863
  %59 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %58, !dbg !863
  %60 = load ptr, ptr %59, align 8, !dbg !863
  %61 = call zeroext i8 @hasSuffix(ptr noundef @inName, ptr noundef %60), !dbg !864
  %62 = icmp ne i8 %61, 0, !dbg !864
  br i1 %62, label %63, label %75, !dbg !864

63:                                               ; preds = %56
  %64 = load i8, ptr @noisy, align 1, !dbg !865
  %65 = icmp ne i8 %64, 0, !dbg !865
  br i1 %65, label %66, label %74, !dbg !865

66:                                               ; preds = %63
  %67 = load ptr, ptr @stderr, align 8, !dbg !868
  %68 = load ptr, ptr @progName, align 8, !dbg !869
  %69 = load i32, ptr %6, align 4, !dbg !870
  %70 = sext i32 %69 to i64, !dbg !871
  %71 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %70, !dbg !871
  %72 = load ptr, ptr %71, align 8, !dbg !871
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.58, ptr noundef %68, ptr noundef @inName, ptr noundef %72) #10, !dbg !872
  br label %74, !dbg !872

74:                                               ; preds = %66, %63
  call void @setExit(i32 noundef 1), !dbg !873
  br label %264, !dbg !874

75:                                               ; preds = %56
  br label %76, !dbg !875

76:                                               ; preds = %75
  %77 = load i32, ptr %6, align 4, !dbg !876
  %78 = add nsw i32 %77, 1, !dbg !876
  store i32 %78, ptr %6, align 4, !dbg !876
  br label %53, !dbg !877, !llvm.loop !878

79:                                               ; preds = %53
  %80 = load i32, ptr @srcMode, align 4, !dbg !880
  %81 = icmp eq i32 %80, 3, !dbg !882
  br i1 %81, label %85, label %82, !dbg !883

82:                                               ; preds = %79
  %83 = load i32, ptr @srcMode, align 4, !dbg !884
  %84 = icmp eq i32 %83, 2, !dbg !885
  br i1 %84, label %85, label %96, !dbg !883

85:                                               ; preds = %82, %79
  %86 = call i32 @stat(ptr noundef @inName, ptr noundef %7) #10, !dbg !886
  %87 = getelementptr inbounds nuw %struct.stat, ptr %7, i32 0, i32 3, !dbg !888
  %88 = load i32, ptr %87, align 8, !dbg !888
  %89 = and i32 %88, 61440, !dbg !888
  %90 = icmp eq i32 %89, 16384, !dbg !888
  br i1 %90, label %91, label %95, !dbg !888

91:                                               ; preds = %85
  %92 = load ptr, ptr @stderr, align 8, !dbg !890
  %93 = load ptr, ptr @progName, align 8, !dbg !892
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.59, ptr noundef %93, ptr noundef @inName) #10, !dbg !893
  call void @setExit(i32 noundef 1), !dbg !894
  br label %264, !dbg !895

95:                                               ; preds = %85
  br label %96, !dbg !896

96:                                               ; preds = %95, %82
  %97 = load i32, ptr @srcMode, align 4, !dbg !897
  %98 = icmp eq i32 %97, 3, !dbg !899
  br i1 %98, label %99, label %114, !dbg !900

99:                                               ; preds = %96
  %100 = load i8, ptr @forceOverwrite, align 1, !dbg !901
  %101 = icmp ne i8 %100, 0, !dbg !901
  br i1 %101, label %114, label %102, !dbg !902

102:                                              ; preds = %99
  %103 = call zeroext i8 @notAStandardFile(ptr noundef @inName), !dbg !903
  %104 = zext i8 %103 to i32, !dbg !903
  %105 = icmp ne i32 %104, 0, !dbg !903
  br i1 %105, label %106, label %114, !dbg !902

106:                                              ; preds = %102
  %107 = load i8, ptr @noisy, align 1, !dbg !904
  %108 = icmp ne i8 %107, 0, !dbg !904
  br i1 %108, label %109, label %113, !dbg !904

109:                                              ; preds = %106
  %110 = load ptr, ptr @stderr, align 8, !dbg !907
  %111 = load ptr, ptr @progName, align 8, !dbg !908
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str.60, ptr noundef %111, ptr noundef @inName) #10, !dbg !909
  br label %113, !dbg !909

113:                                              ; preds = %109, %106
  call void @setExit(i32 noundef 1), !dbg !910
  br label %264, !dbg !911

114:                                              ; preds = %102, %99, %96
  %115 = load i32, ptr @srcMode, align 4, !dbg !912
  %116 = icmp eq i32 %115, 3, !dbg !914
  br i1 %116, label %117, label %131, !dbg !915

117:                                              ; preds = %114
  %118 = call zeroext i8 @fileExists(ptr noundef @outName), !dbg !916
  %119 = zext i8 %118 to i32, !dbg !916
  %120 = icmp ne i32 %119, 0, !dbg !916
  br i1 %120, label %121, label %131, !dbg !915

121:                                              ; preds = %117
  %122 = load i8, ptr @forceOverwrite, align 1, !dbg !917
  %123 = icmp ne i8 %122, 0, !dbg !917
  br i1 %123, label %124, label %126, !dbg !917

124:                                              ; preds = %121
  %125 = call i32 @remove(ptr noundef @outName) #10, !dbg !920
  br label %130, !dbg !922

126:                                              ; preds = %121
  %127 = load ptr, ptr @stderr, align 8, !dbg !923
  %128 = load ptr, ptr @progName, align 8, !dbg !925
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.61, ptr noundef %128, ptr noundef @outName) #10, !dbg !926
  call void @setExit(i32 noundef 1), !dbg !927
  br label %264, !dbg !928

130:                                              ; preds = %124
  br label %131, !dbg !929

131:                                              ; preds = %130, %117, %114
  %132 = load i32, ptr @srcMode, align 4, !dbg !930
  %133 = icmp eq i32 %132, 3, !dbg !932
  br i1 %133, label %134, label %149, !dbg !933

134:                                              ; preds = %131
  %135 = load i8, ptr @forceOverwrite, align 1, !dbg !934
  %136 = icmp ne i8 %135, 0, !dbg !934
  br i1 %136, label %149, label %137, !dbg !935

137:                                              ; preds = %134
  %138 = call i32 @countHardLinks(ptr noundef @inName), !dbg !936
  store i32 %138, ptr %5, align 4, !dbg !937
  %139 = icmp sgt i32 %138, 0, !dbg !938
  br i1 %139, label %140, label %149, !dbg !935

140:                                              ; preds = %137
  %141 = load ptr, ptr @stderr, align 8, !dbg !939
  %142 = load ptr, ptr @progName, align 8, !dbg !941
  %143 = load i32, ptr %5, align 4, !dbg !942
  %144 = load i32, ptr %5, align 4, !dbg !943
  %145 = icmp sgt i32 %144, 1, !dbg !944
  %146 = zext i1 %145 to i64, !dbg !943
  %147 = select i1 %145, ptr @.str.63, ptr @.str.4, !dbg !943
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.62, ptr noundef %142, ptr noundef @inName, i32 noundef %143, ptr noundef %147) #10, !dbg !945
  call void @setExit(i32 noundef 1), !dbg !946
  br label %264, !dbg !947

149:                                              ; preds = %137, %134, %131
  %150 = load i32, ptr @srcMode, align 4, !dbg !948
  %151 = icmp eq i32 %150, 3, !dbg !950
  br i1 %151, label %152, label %153, !dbg !950

152:                                              ; preds = %149
  call void @saveInputFileMetaInfo(ptr noundef @inName), !dbg !951
  br label %153, !dbg !953

153:                                              ; preds = %152, %149
  %154 = load i32, ptr @srcMode, align 4, !dbg !954
  switch i32 %154, label %238 [
    i32 1, label %155
    i32 2, label %171
    i32 3, label %203
  ], !dbg !955

155:                                              ; preds = %153
  %156 = load ptr, ptr @stdin, align 8, !dbg !956
  store ptr %156, ptr %3, align 8, !dbg !958
  %157 = load ptr, ptr @stdout, align 8, !dbg !959
  store ptr %157, ptr %4, align 8, !dbg !960
  %158 = load ptr, ptr @stdout, align 8, !dbg !961
  %159 = call i32 @fileno(ptr noundef %158) #10, !dbg !963
  %160 = call i32 @isatty(i32 noundef %159) #10, !dbg !964
  %161 = icmp ne i32 %160, 0, !dbg !964
  br i1 %161, label %162, label %170, !dbg !964

162:                                              ; preds = %155
  %163 = load ptr, ptr @stderr, align 8, !dbg !965
  %164 = load ptr, ptr @progName, align 8, !dbg !967
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.64, ptr noundef %164) #10, !dbg !968
  %166 = load ptr, ptr @stderr, align 8, !dbg !969
  %167 = load ptr, ptr @progName, align 8, !dbg !970
  %168 = load ptr, ptr @progName, align 8, !dbg !971
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.65, ptr noundef %167, ptr noundef %168) #10, !dbg !972
  call void @setExit(i32 noundef 1), !dbg !973
  br label %264, !dbg !974

170:                                              ; preds = %155
  br label %239, !dbg !975

171:                                              ; preds = %153
  %172 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !976
  store ptr %172, ptr %3, align 8, !dbg !977
  %173 = load ptr, ptr @stdout, align 8, !dbg !978
  store ptr %173, ptr %4, align 8, !dbg !979
  %174 = load ptr, ptr @stdout, align 8, !dbg !980
  %175 = call i32 @fileno(ptr noundef %174) #10, !dbg !982
  %176 = call i32 @isatty(i32 noundef %175) #10, !dbg !983
  %177 = icmp ne i32 %176, 0, !dbg !983
  br i1 %177, label %178, label %192, !dbg !983

178:                                              ; preds = %171
  %179 = load ptr, ptr @stderr, align 8, !dbg !984
  %180 = load ptr, ptr @progName, align 8, !dbg !986
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef @.str.64, ptr noundef %180) #10, !dbg !987
  %182 = load ptr, ptr @stderr, align 8, !dbg !988
  %183 = load ptr, ptr @progName, align 8, !dbg !989
  %184 = load ptr, ptr @progName, align 8, !dbg !990
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef @.str.65, ptr noundef %183, ptr noundef %184) #10, !dbg !991
  %186 = load ptr, ptr %3, align 8, !dbg !992
  %187 = icmp ne ptr %186, null, !dbg !994
  br i1 %187, label %188, label %191, !dbg !994

188:                                              ; preds = %178
  %189 = load ptr, ptr %3, align 8, !dbg !995
  %190 = call i32 @fclose(ptr noundef %189), !dbg !996
  br label %191, !dbg !996

191:                                              ; preds = %188, %178
  call void @setExit(i32 noundef 1), !dbg !997
  br label %264, !dbg !998

192:                                              ; preds = %171
  %193 = load ptr, ptr %3, align 8, !dbg !999
  %194 = icmp eq ptr %193, null, !dbg !1001
  br i1 %194, label %195, label %202, !dbg !1001

195:                                              ; preds = %192
  %196 = load ptr, ptr @stderr, align 8, !dbg !1002
  %197 = load ptr, ptr @progName, align 8, !dbg !1004
  %198 = call ptr @__errno_location() #14, !dbg !1005
  %199 = load i32, ptr %198, align 4, !dbg !1005
  %200 = call ptr @strerror(i32 noundef %199) #10, !dbg !1006
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef @.str.57, ptr noundef %197, ptr noundef @inName, ptr noundef %200) #10, !dbg !1007
  call void @setExit(i32 noundef 1), !dbg !1008
  br label %264, !dbg !1009

202:                                              ; preds = %192
  br label %239, !dbg !1010

203:                                              ; preds = %153
  %204 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1011
  store ptr %204, ptr %3, align 8, !dbg !1012
  %205 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.67), !dbg !1013
  store ptr %205, ptr %4, align 8, !dbg !1014
  %206 = load ptr, ptr %4, align 8, !dbg !1015
  %207 = icmp eq ptr %206, null, !dbg !1017
  br i1 %207, label %208, label %221, !dbg !1017

208:                                              ; preds = %203
  %209 = load ptr, ptr @stderr, align 8, !dbg !1018
  %210 = load ptr, ptr @progName, align 8, !dbg !1020
  %211 = call ptr @__errno_location() #14, !dbg !1021
  %212 = load i32, ptr %211, align 4, !dbg !1021
  %213 = call ptr @strerror(i32 noundef %212) #10, !dbg !1022
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef @.str.68, ptr noundef %210, ptr noundef @outName, ptr noundef %213) #10, !dbg !1023
  %215 = load ptr, ptr %3, align 8, !dbg !1024
  %216 = icmp ne ptr %215, null, !dbg !1026
  br i1 %216, label %217, label %220, !dbg !1026

217:                                              ; preds = %208
  %218 = load ptr, ptr %3, align 8, !dbg !1027
  %219 = call i32 @fclose(ptr noundef %218), !dbg !1028
  br label %220, !dbg !1028

220:                                              ; preds = %217, %208
  call void @setExit(i32 noundef 1), !dbg !1029
  br label %264, !dbg !1030

221:                                              ; preds = %203
  %222 = load ptr, ptr %3, align 8, !dbg !1031
  %223 = icmp eq ptr %222, null, !dbg !1033
  br i1 %223, label %224, label %237, !dbg !1033

224:                                              ; preds = %221
  %225 = load ptr, ptr @stderr, align 8, !dbg !1034
  %226 = load ptr, ptr @progName, align 8, !dbg !1036
  %227 = call ptr @__errno_location() #14, !dbg !1037
  %228 = load i32, ptr %227, align 4, !dbg !1037
  %229 = call ptr @strerror(i32 noundef %228) #10, !dbg !1038
  %230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef @.str.57, ptr noundef %226, ptr noundef @inName, ptr noundef %229) #10, !dbg !1039
  %231 = load ptr, ptr %4, align 8, !dbg !1040
  %232 = icmp ne ptr %231, null, !dbg !1042
  br i1 %232, label %233, label %236, !dbg !1042

233:                                              ; preds = %224
  %234 = load ptr, ptr %4, align 8, !dbg !1043
  %235 = call i32 @fclose(ptr noundef %234), !dbg !1044
  br label %236, !dbg !1044

236:                                              ; preds = %233, %224
  call void @setExit(i32 noundef 1), !dbg !1045
  br label %264, !dbg !1046

237:                                              ; preds = %221
  br label %239, !dbg !1047

238:                                              ; preds = %153
  call void @panic(ptr noundef @.str.69) #11, !dbg !1048
  unreachable, !dbg !1048

239:                                              ; preds = %237, %202, %170
  %240 = load i32, ptr @verbosity, align 4, !dbg !1049
  %241 = icmp sge i32 %240, 1, !dbg !1051
  br i1 %241, label %242, label %247, !dbg !1051

242:                                              ; preds = %239
  %243 = load ptr, ptr @stderr, align 8, !dbg !1052
  %244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef @.str.70, ptr noundef @inName) #10, !dbg !1054
  call void @pad(ptr noundef @inName), !dbg !1055
  %245 = load ptr, ptr @stderr, align 8, !dbg !1056
  %246 = call i32 @fflush(ptr noundef %245), !dbg !1057
  br label %247, !dbg !1058

247:                                              ; preds = %242, %239
  %248 = load ptr, ptr %4, align 8, !dbg !1059
  store ptr %248, ptr @outputHandleJustInCase, align 8, !dbg !1060
  store i8 1, ptr @deleteOutputOnInterrupt, align 1, !dbg !1061
  %249 = load ptr, ptr %3, align 8, !dbg !1062
  %250 = load ptr, ptr %4, align 8, !dbg !1063
  call void @compressStream(ptr noundef %249, ptr noundef %250), !dbg !1064
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !1065
  %251 = load i32, ptr @srcMode, align 4, !dbg !1066
  %252 = icmp eq i32 %251, 3, !dbg !1068
  br i1 %252, label %253, label %263, !dbg !1068

253:                                              ; preds = %247
  call void @applySavedMetaInfoToOutputFile(ptr noundef @outName), !dbg !1069
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1071
  %254 = load i8, ptr @keepInputFiles, align 1, !dbg !1072
  %255 = icmp ne i8 %254, 0, !dbg !1072
  br i1 %255, label %262, label %256, !dbg !1074

256:                                              ; preds = %253
    #dbg_declare(ptr %8, !1075, !DIExpression(), !1077)
  %257 = call i32 @remove(ptr noundef @inName) #10, !dbg !1078
  store i32 %257, ptr %8, align 4, !dbg !1077
  %258 = load i32, ptr %8, align 4, !dbg !1079
  %259 = icmp ne i32 %258, 0, !dbg !1079
  br i1 %259, label %260, label %261, !dbg !1079

260:                                              ; preds = %256
  call void @ioError() #11, !dbg !1079
  unreachable, !dbg !1079

261:                                              ; preds = %256
  br label %262, !dbg !1082

262:                                              ; preds = %261, %253
  br label %263, !dbg !1083

263:                                              ; preds = %262, %247
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1084
  br label %264, !dbg !1085

264:                                              ; preds = %263, %236, %220, %195, %191, %162, %140, %126, %113, %91, %74, %45, %38
  ret void, !dbg !1085
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncompress(ptr noundef %0) #0 !dbg !1086 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1087, !DIExpression(), !1088)
    #dbg_declare(ptr %3, !1089, !DIExpression(), !1090)
    #dbg_declare(ptr %4, !1091, !DIExpression(), !1092)
    #dbg_declare(ptr %5, !1093, !DIExpression(), !1094)
    #dbg_declare(ptr %6, !1095, !DIExpression(), !1096)
    #dbg_declare(ptr %7, !1097, !DIExpression(), !1098)
    #dbg_declare(ptr %8, !1099, !DIExpression(), !1100)
    #dbg_declare(ptr %9, !1101, !DIExpression(), !1102)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1103
  %12 = load ptr, ptr %2, align 8, !dbg !1104
  %13 = icmp eq ptr %12, null, !dbg !1106
  br i1 %13, label %14, label %18, !dbg !1107

14:                                               ; preds = %1
  %15 = load i32, ptr @srcMode, align 4, !dbg !1108
  %16 = icmp ne i32 %15, 1, !dbg !1109
  br i1 %16, label %17, label %18, !dbg !1107

17:                                               ; preds = %14
  call void @panic(ptr noundef @.str.79) #11, !dbg !1110
  unreachable, !dbg !1110

18:                                               ; preds = %14, %1
  store i8 0, ptr %8, align 1, !dbg !1111
  %19 = load i32, ptr @srcMode, align 4, !dbg !1112
  switch i32 %19, label %47 [
    i32 1, label %20
    i32 3, label %21
    i32 2, label %45
  ], !dbg !1113

20:                                               ; preds = %18
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54), !dbg !1114
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1116
  br label %47, !dbg !1117

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 8, !dbg !1118
  call void @copyFileName(ptr noundef @inName, ptr noundef %22), !dbg !1119
  %23 = load ptr, ptr %2, align 8, !dbg !1120
  call void @copyFileName(ptr noundef @outName, ptr noundef %23), !dbg !1121
  store i32 0, ptr %6, align 4, !dbg !1122
  br label %24, !dbg !1124

24:                                               ; preds = %40, %21
  %25 = load i32, ptr %6, align 4, !dbg !1125
  %26 = icmp slt i32 %25, 4, !dbg !1127
  br i1 %26, label %27, label %43, !dbg !1128

27:                                               ; preds = %24
  %28 = load i32, ptr %6, align 4, !dbg !1129
  %29 = sext i32 %28 to i64, !dbg !1131
  %30 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %29, !dbg !1131
  %31 = load ptr, ptr %30, align 8, !dbg !1131
  %32 = load i32, ptr %6, align 4, !dbg !1132
  %33 = sext i32 %32 to i64, !dbg !1133
  %34 = getelementptr inbounds [4 x ptr], ptr @unzSuffix, i64 0, i64 %33, !dbg !1133
  %35 = load ptr, ptr %34, align 8, !dbg !1133
  %36 = call zeroext i8 @mapSuffix(ptr noundef @outName, ptr noundef %31, ptr noundef %35), !dbg !1134
  %37 = icmp ne i8 %36, 0, !dbg !1134
  br i1 %37, label %38, label %39, !dbg !1134

38:                                               ; preds = %27
  br label %48, !dbg !1135

39:                                               ; preds = %27
  br label %40, !dbg !1136

40:                                               ; preds = %39
  %41 = load i32, ptr %6, align 4, !dbg !1137
  %42 = add nsw i32 %41, 1, !dbg !1137
  store i32 %42, ptr %6, align 4, !dbg !1137
  br label %24, !dbg !1138, !llvm.loop !1139

43:                                               ; preds = %24
  store i8 1, ptr %8, align 1, !dbg !1141
  %44 = call ptr @strcat(ptr noundef @outName, ptr noundef @.str.80) #10, !dbg !1142
  br label %47, !dbg !1143

45:                                               ; preds = %18
  %46 = load ptr, ptr %2, align 8, !dbg !1144
  call void @copyFileName(ptr noundef @inName, ptr noundef %46), !dbg !1145
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1146
  br label %47, !dbg !1147

47:                                               ; preds = %18, %45, %43, %20
  br label %48, !dbg !1148

48:                                               ; preds = %47, %38
    #dbg_label(!1149, !1150)
  %49 = load i32, ptr @srcMode, align 4, !dbg !1151
  %50 = icmp ne i32 %49, 1, !dbg !1153
  br i1 %50, label %51, label %63, !dbg !1154

51:                                               ; preds = %48
  %52 = call zeroext i8 @containsDubiousChars(ptr noundef @inName), !dbg !1155
  %53 = zext i8 %52 to i32, !dbg !1155
  %54 = icmp ne i32 %53, 0, !dbg !1155
  br i1 %54, label %55, label %63, !dbg !1154

55:                                               ; preds = %51
  %56 = load i8, ptr @noisy, align 1, !dbg !1156
  %57 = icmp ne i8 %56, 0, !dbg !1156
  br i1 %57, label %58, label %62, !dbg !1156

58:                                               ; preds = %55
  %59 = load ptr, ptr @stderr, align 8, !dbg !1159
  %60 = load ptr, ptr @progName, align 8, !dbg !1160
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.56, ptr noundef %60, ptr noundef @inName) #10, !dbg !1161
  br label %62, !dbg !1161

62:                                               ; preds = %58, %55
  call void @setExit(i32 noundef 1), !dbg !1162
  br label %294, !dbg !1163

63:                                               ; preds = %51, %48
  %64 = load i32, ptr @srcMode, align 4, !dbg !1164
  %65 = icmp ne i32 %64, 1, !dbg !1166
  br i1 %65, label %66, label %76, !dbg !1167

66:                                               ; preds = %63
  %67 = call zeroext i8 @fileExists(ptr noundef @inName), !dbg !1168
  %68 = icmp ne i8 %67, 0, !dbg !1168
  br i1 %68, label %76, label %69, !dbg !1167

69:                                               ; preds = %66
  %70 = load ptr, ptr @stderr, align 8, !dbg !1169
  %71 = load ptr, ptr @progName, align 8, !dbg !1171
  %72 = call ptr @__errno_location() #14, !dbg !1172
  %73 = load i32, ptr %72, align 4, !dbg !1172
  %74 = call ptr @strerror(i32 noundef %73) #10, !dbg !1173
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.57, ptr noundef %71, ptr noundef @inName, ptr noundef %74) #10, !dbg !1174
  call void @setExit(i32 noundef 1), !dbg !1175
  br label %294, !dbg !1176

76:                                               ; preds = %66, %63
  %77 = load i32, ptr @srcMode, align 4, !dbg !1177
  %78 = icmp eq i32 %77, 3, !dbg !1179
  br i1 %78, label %82, label %79, !dbg !1180

79:                                               ; preds = %76
  %80 = load i32, ptr @srcMode, align 4, !dbg !1181
  %81 = icmp eq i32 %80, 2, !dbg !1182
  br i1 %81, label %82, label %93, !dbg !1180

82:                                               ; preds = %79, %76
  %83 = call i32 @stat(ptr noundef @inName, ptr noundef %9) #10, !dbg !1183
  %84 = getelementptr inbounds nuw %struct.stat, ptr %9, i32 0, i32 3, !dbg !1185
  %85 = load i32, ptr %84, align 8, !dbg !1185
  %86 = and i32 %85, 61440, !dbg !1185
  %87 = icmp eq i32 %86, 16384, !dbg !1185
  br i1 %87, label %88, label %92, !dbg !1185

88:                                               ; preds = %82
  %89 = load ptr, ptr @stderr, align 8, !dbg !1187
  %90 = load ptr, ptr @progName, align 8, !dbg !1189
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @.str.59, ptr noundef %90, ptr noundef @inName) #10, !dbg !1190
  call void @setExit(i32 noundef 1), !dbg !1191
  br label %294, !dbg !1192

92:                                               ; preds = %82
  br label %93, !dbg !1193

93:                                               ; preds = %92, %79
  %94 = load i32, ptr @srcMode, align 4, !dbg !1194
  %95 = icmp eq i32 %94, 3, !dbg !1196
  br i1 %95, label %96, label %111, !dbg !1197

96:                                               ; preds = %93
  %97 = load i8, ptr @forceOverwrite, align 1, !dbg !1198
  %98 = icmp ne i8 %97, 0, !dbg !1198
  br i1 %98, label %111, label %99, !dbg !1199

99:                                               ; preds = %96
  %100 = call zeroext i8 @notAStandardFile(ptr noundef @inName), !dbg !1200
  %101 = zext i8 %100 to i32, !dbg !1200
  %102 = icmp ne i32 %101, 0, !dbg !1200
  br i1 %102, label %103, label %111, !dbg !1199

103:                                              ; preds = %99
  %104 = load i8, ptr @noisy, align 1, !dbg !1201
  %105 = icmp ne i8 %104, 0, !dbg !1201
  br i1 %105, label %106, label %110, !dbg !1201

106:                                              ; preds = %103
  %107 = load ptr, ptr @stderr, align 8, !dbg !1204
  %108 = load ptr, ptr @progName, align 8, !dbg !1205
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef @.str.60, ptr noundef %108, ptr noundef @inName) #10, !dbg !1206
  br label %110, !dbg !1206

110:                                              ; preds = %106, %103
  call void @setExit(i32 noundef 1), !dbg !1207
  br label %294, !dbg !1208

111:                                              ; preds = %99, %96, %93
  %112 = load i8, ptr %8, align 1, !dbg !1209
  %113 = icmp ne i8 %112, 0, !dbg !1209
  br i1 %113, label %114, label %122, !dbg !1209

114:                                              ; preds = %111
  %115 = load i8, ptr @noisy, align 1, !dbg !1211
  %116 = icmp ne i8 %115, 0, !dbg !1211
  br i1 %116, label %117, label %121, !dbg !1211

117:                                              ; preds = %114
  %118 = load ptr, ptr @stderr, align 8, !dbg !1214
  %119 = load ptr, ptr @progName, align 8, !dbg !1215
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef @.str.81, ptr noundef %119, ptr noundef @inName, ptr noundef @outName) #10, !dbg !1216
  br label %121, !dbg !1216

121:                                              ; preds = %117, %114
  br label %122, !dbg !1217

122:                                              ; preds = %121, %111
  %123 = load i32, ptr @srcMode, align 4, !dbg !1218
  %124 = icmp eq i32 %123, 3, !dbg !1220
  br i1 %124, label %125, label %139, !dbg !1221

125:                                              ; preds = %122
  %126 = call zeroext i8 @fileExists(ptr noundef @outName), !dbg !1222
  %127 = zext i8 %126 to i32, !dbg !1222
  %128 = icmp ne i32 %127, 0, !dbg !1222
  br i1 %128, label %129, label %139, !dbg !1221

129:                                              ; preds = %125
  %130 = load i8, ptr @forceOverwrite, align 1, !dbg !1223
  %131 = icmp ne i8 %130, 0, !dbg !1223
  br i1 %131, label %132, label %134, !dbg !1223

132:                                              ; preds = %129
  %133 = call i32 @remove(ptr noundef @outName) #10, !dbg !1226
  br label %138, !dbg !1228

134:                                              ; preds = %129
  %135 = load ptr, ptr @stderr, align 8, !dbg !1229
  %136 = load ptr, ptr @progName, align 8, !dbg !1231
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.61, ptr noundef %136, ptr noundef @outName) #10, !dbg !1232
  call void @setExit(i32 noundef 1), !dbg !1233
  br label %294, !dbg !1234

138:                                              ; preds = %132
  br label %139, !dbg !1235

139:                                              ; preds = %138, %125, %122
  %140 = load i32, ptr @srcMode, align 4, !dbg !1236
  %141 = icmp eq i32 %140, 3, !dbg !1238
  br i1 %141, label %142, label %157, !dbg !1239

142:                                              ; preds = %139
  %143 = load i8, ptr @forceOverwrite, align 1, !dbg !1240
  %144 = icmp ne i8 %143, 0, !dbg !1240
  br i1 %144, label %157, label %145, !dbg !1241

145:                                              ; preds = %142
  %146 = call i32 @countHardLinks(ptr noundef @inName), !dbg !1242
  store i32 %146, ptr %5, align 4, !dbg !1243
  %147 = icmp sgt i32 %146, 0, !dbg !1244
  br i1 %147, label %148, label %157, !dbg !1241

148:                                              ; preds = %145
  %149 = load ptr, ptr @stderr, align 8, !dbg !1245
  %150 = load ptr, ptr @progName, align 8, !dbg !1247
  %151 = load i32, ptr %5, align 4, !dbg !1248
  %152 = load i32, ptr %5, align 4, !dbg !1249
  %153 = icmp sgt i32 %152, 1, !dbg !1250
  %154 = zext i1 %153 to i64, !dbg !1249
  %155 = select i1 %153, ptr @.str.63, ptr @.str.4, !dbg !1249
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef @.str.62, ptr noundef %150, ptr noundef @inName, i32 noundef %151, ptr noundef %155) #10, !dbg !1251
  call void @setExit(i32 noundef 1), !dbg !1252
  br label %294, !dbg !1253

157:                                              ; preds = %145, %142, %139
  %158 = load i32, ptr @srcMode, align 4, !dbg !1254
  %159 = icmp eq i32 %158, 3, !dbg !1256
  br i1 %159, label %160, label %161, !dbg !1256

160:                                              ; preds = %157
  call void @saveInputFileMetaInfo(ptr noundef @inName), !dbg !1257
  br label %161, !dbg !1259

161:                                              ; preds = %160, %157
  %162 = load i32, ptr @srcMode, align 4, !dbg !1260
  switch i32 %162, label %233 [
    i32 1, label %163
    i32 2, label %179
    i32 3, label %198
  ], !dbg !1261

163:                                              ; preds = %161
  %164 = load ptr, ptr @stdin, align 8, !dbg !1262
  store ptr %164, ptr %3, align 8, !dbg !1264
  %165 = load ptr, ptr @stdout, align 8, !dbg !1265
  store ptr %165, ptr %4, align 8, !dbg !1266
  %166 = load ptr, ptr @stdin, align 8, !dbg !1267
  %167 = call i32 @fileno(ptr noundef %166) #10, !dbg !1269
  %168 = call i32 @isatty(i32 noundef %167) #10, !dbg !1270
  %169 = icmp ne i32 %168, 0, !dbg !1270
  br i1 %169, label %170, label %178, !dbg !1270

170:                                              ; preds = %163
  %171 = load ptr, ptr @stderr, align 8, !dbg !1271
  %172 = load ptr, ptr @progName, align 8, !dbg !1273
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str.82, ptr noundef %172) #10, !dbg !1274
  %174 = load ptr, ptr @stderr, align 8, !dbg !1275
  %175 = load ptr, ptr @progName, align 8, !dbg !1276
  %176 = load ptr, ptr @progName, align 8, !dbg !1277
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef @.str.65, ptr noundef %175, ptr noundef %176) #10, !dbg !1278
  call void @setExit(i32 noundef 1), !dbg !1279
  br label %294, !dbg !1280

178:                                              ; preds = %163
  br label %234, !dbg !1281

179:                                              ; preds = %161
  %180 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1282
  store ptr %180, ptr %3, align 8, !dbg !1283
  %181 = load ptr, ptr @stdout, align 8, !dbg !1284
  store ptr %181, ptr %4, align 8, !dbg !1285
  %182 = load ptr, ptr %3, align 8, !dbg !1286
  %183 = icmp eq ptr %182, null, !dbg !1288
  br i1 %183, label %184, label %197, !dbg !1288

184:                                              ; preds = %179
  %185 = load ptr, ptr @stderr, align 8, !dbg !1289
  %186 = load ptr, ptr @progName, align 8, !dbg !1291
  %187 = call ptr @__errno_location() #14, !dbg !1292
  %188 = load i32, ptr %187, align 4, !dbg !1292
  %189 = call ptr @strerror(i32 noundef %188) #10, !dbg !1293
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.83, ptr noundef %186, ptr noundef @inName, ptr noundef %189) #10, !dbg !1294
  %191 = load ptr, ptr %3, align 8, !dbg !1295
  %192 = icmp ne ptr %191, null, !dbg !1297
  br i1 %192, label %193, label %196, !dbg !1297

193:                                              ; preds = %184
  %194 = load ptr, ptr %3, align 8, !dbg !1298
  %195 = call i32 @fclose(ptr noundef %194), !dbg !1299
  br label %196, !dbg !1299

196:                                              ; preds = %193, %184
  call void @setExit(i32 noundef 1), !dbg !1300
  br label %294, !dbg !1301

197:                                              ; preds = %179
  br label %234, !dbg !1302

198:                                              ; preds = %161
  %199 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1303
  store ptr %199, ptr %3, align 8, !dbg !1304
  %200 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.67), !dbg !1305
  store ptr %200, ptr %4, align 8, !dbg !1306
  %201 = load ptr, ptr %4, align 8, !dbg !1307
  %202 = icmp eq ptr %201, null, !dbg !1309
  br i1 %202, label %203, label %216, !dbg !1309

203:                                              ; preds = %198
  %204 = load ptr, ptr @stderr, align 8, !dbg !1310
  %205 = load ptr, ptr @progName, align 8, !dbg !1312
  %206 = call ptr @__errno_location() #14, !dbg !1313
  %207 = load i32, ptr %206, align 4, !dbg !1313
  %208 = call ptr @strerror(i32 noundef %207) #10, !dbg !1314
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef @.str.68, ptr noundef %205, ptr noundef @outName, ptr noundef %208) #10, !dbg !1315
  %210 = load ptr, ptr %3, align 8, !dbg !1316
  %211 = icmp ne ptr %210, null, !dbg !1318
  br i1 %211, label %212, label %215, !dbg !1318

212:                                              ; preds = %203
  %213 = load ptr, ptr %3, align 8, !dbg !1319
  %214 = call i32 @fclose(ptr noundef %213), !dbg !1320
  br label %215, !dbg !1320

215:                                              ; preds = %212, %203
  call void @setExit(i32 noundef 1), !dbg !1321
  br label %294, !dbg !1322

216:                                              ; preds = %198
  %217 = load ptr, ptr %3, align 8, !dbg !1323
  %218 = icmp eq ptr %217, null, !dbg !1325
  br i1 %218, label %219, label %232, !dbg !1325

219:                                              ; preds = %216
  %220 = load ptr, ptr @stderr, align 8, !dbg !1326
  %221 = load ptr, ptr @progName, align 8, !dbg !1328
  %222 = call ptr @__errno_location() #14, !dbg !1329
  %223 = load i32, ptr %222, align 4, !dbg !1329
  %224 = call ptr @strerror(i32 noundef %223) #10, !dbg !1330
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.57, ptr noundef %221, ptr noundef @inName, ptr noundef %224) #10, !dbg !1331
  %226 = load ptr, ptr %4, align 8, !dbg !1332
  %227 = icmp ne ptr %226, null, !dbg !1334
  br i1 %227, label %228, label %231, !dbg !1334

228:                                              ; preds = %219
  %229 = load ptr, ptr %4, align 8, !dbg !1335
  %230 = call i32 @fclose(ptr noundef %229), !dbg !1336
  br label %231, !dbg !1336

231:                                              ; preds = %228, %219
  call void @setExit(i32 noundef 1), !dbg !1337
  br label %294, !dbg !1338

232:                                              ; preds = %216
  br label %234, !dbg !1339

233:                                              ; preds = %161
  call void @panic(ptr noundef @.str.84) #11, !dbg !1340
  unreachable, !dbg !1340

234:                                              ; preds = %232, %197, %178
  %235 = load i32, ptr @verbosity, align 4, !dbg !1341
  %236 = icmp sge i32 %235, 1, !dbg !1343
  br i1 %236, label %237, label %242, !dbg !1343

237:                                              ; preds = %234
  %238 = load ptr, ptr @stderr, align 8, !dbg !1344
  %239 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef @.str.70, ptr noundef @inName) #10, !dbg !1346
  call void @pad(ptr noundef @inName), !dbg !1347
  %240 = load ptr, ptr @stderr, align 8, !dbg !1348
  %241 = call i32 @fflush(ptr noundef %240), !dbg !1349
  br label %242, !dbg !1350

242:                                              ; preds = %237, %234
  %243 = load ptr, ptr %4, align 8, !dbg !1351
  store ptr %243, ptr @outputHandleJustInCase, align 8, !dbg !1352
  store i8 1, ptr @deleteOutputOnInterrupt, align 1, !dbg !1353
  %244 = load ptr, ptr %3, align 8, !dbg !1354
  %245 = load ptr, ptr %4, align 8, !dbg !1355
  %246 = call zeroext i8 @uncompressStream(ptr noundef %244, ptr noundef %245), !dbg !1356
  store i8 %246, ptr %7, align 1, !dbg !1357
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !1358
  %247 = load i8, ptr %7, align 1, !dbg !1359
  %248 = icmp ne i8 %247, 0, !dbg !1359
  br i1 %248, label %249, label %263, !dbg !1359

249:                                              ; preds = %242
  %250 = load i32, ptr @srcMode, align 4, !dbg !1361
  %251 = icmp eq i32 %250, 3, !dbg !1364
  br i1 %251, label %252, label %262, !dbg !1364

252:                                              ; preds = %249
  call void @applySavedMetaInfoToOutputFile(ptr noundef @outName), !dbg !1365
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1367
  %253 = load i8, ptr @keepInputFiles, align 1, !dbg !1368
  %254 = icmp ne i8 %253, 0, !dbg !1368
  br i1 %254, label %261, label %255, !dbg !1370

255:                                              ; preds = %252
    #dbg_declare(ptr %10, !1371, !DIExpression(), !1373)
  %256 = call i32 @remove(ptr noundef @inName) #10, !dbg !1374
  store i32 %256, ptr %10, align 4, !dbg !1373
  %257 = load i32, ptr %10, align 4, !dbg !1375
  %258 = icmp ne i32 %257, 0, !dbg !1375
  br i1 %258, label %259, label %260, !dbg !1375

259:                                              ; preds = %255
  call void @ioError() #11, !dbg !1375
  unreachable, !dbg !1375

260:                                              ; preds = %255
  br label %261, !dbg !1378

261:                                              ; preds = %260, %252
  br label %262, !dbg !1379

262:                                              ; preds = %261, %249
  br label %273, !dbg !1380

263:                                              ; preds = %242
  store i8 1, ptr @unzFailsExist, align 1, !dbg !1381
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1383
  %264 = load i32, ptr @srcMode, align 4, !dbg !1384
  %265 = icmp eq i32 %264, 3, !dbg !1386
  br i1 %265, label %266, label %272, !dbg !1386

266:                                              ; preds = %263
    #dbg_declare(ptr %11, !1387, !DIExpression(), !1389)
  %267 = call i32 @remove(ptr noundef @outName) #10, !dbg !1390
  store i32 %267, ptr %11, align 4, !dbg !1389
  %268 = load i32, ptr %11, align 4, !dbg !1391
  %269 = icmp ne i32 %268, 0, !dbg !1391
  br i1 %269, label %270, label %271, !dbg !1391

270:                                              ; preds = %266
  call void @ioError() #11, !dbg !1391
  unreachable, !dbg !1391

271:                                              ; preds = %266
  br label %272, !dbg !1394

272:                                              ; preds = %271, %263
  br label %273

273:                                              ; preds = %272, %262
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1395
  %274 = load i8, ptr %7, align 1, !dbg !1396
  %275 = icmp ne i8 %274, 0, !dbg !1396
  br i1 %275, label %276, label %283, !dbg !1396

276:                                              ; preds = %273
  %277 = load i32, ptr @verbosity, align 4, !dbg !1398
  %278 = icmp sge i32 %277, 1, !dbg !1401
  br i1 %278, label %279, label %282, !dbg !1401

279:                                              ; preds = %276
  %280 = load ptr, ptr @stderr, align 8, !dbg !1402
  %281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef @.str.85) #10, !dbg !1403
  br label %282, !dbg !1403

282:                                              ; preds = %279, %276
  br label %294, !dbg !1404

283:                                              ; preds = %273
  call void @setExit(i32 noundef 2), !dbg !1405
  %284 = load i32, ptr @verbosity, align 4, !dbg !1407
  %285 = icmp sge i32 %284, 1, !dbg !1409
  br i1 %285, label %286, label %289, !dbg !1409

286:                                              ; preds = %283
  %287 = load ptr, ptr @stderr, align 8, !dbg !1410
  %288 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef @.str.86) #10, !dbg !1411
  br label %293, !dbg !1411

289:                                              ; preds = %283
  %290 = load ptr, ptr @stderr, align 8, !dbg !1412
  %291 = load ptr, ptr @progName, align 8, !dbg !1413
  %292 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %290, ptr noundef @.str.87, ptr noundef %291, ptr noundef @inName) #10, !dbg !1414
  br label %293

293:                                              ; preds = %289, %286
  br label %294

294:                                              ; preds = %62, %69, %88, %110, %134, %148, %170, %196, %215, %231, %293, %282
  ret void, !dbg !1415
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setExit(i32 noundef %0) #0 !dbg !1416 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !1419, !DIExpression(), !1420)
  %3 = load i32, ptr %2, align 4, !dbg !1421
  %4 = load i32, ptr @exitValue, align 4, !dbg !1423
  %5 = icmp sgt i32 %3, %4, !dbg !1424
  br i1 %5, label %6, label %8, !dbg !1424

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4, !dbg !1425
  store i32 %7, ptr @exitValue, align 4, !dbg !1426
  br label %8, !dbg !1427

8:                                                ; preds = %6, %1
  ret void, !dbg !1428
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testf(ptr noundef %0) #0 !dbg !1429 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1430, !DIExpression(), !1431)
    #dbg_declare(ptr %3, !1432, !DIExpression(), !1433)
    #dbg_declare(ptr %4, !1434, !DIExpression(), !1435)
    #dbg_declare(ptr %5, !1436, !DIExpression(), !1437)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1438
  %6 = load ptr, ptr %2, align 8, !dbg !1439
  %7 = icmp eq ptr %6, null, !dbg !1441
  br i1 %7, label %8, label %12, !dbg !1442

8:                                                ; preds = %1
  %9 = load i32, ptr @srcMode, align 4, !dbg !1443
  %10 = icmp ne i32 %9, 1, !dbg !1444
  br i1 %10, label %11, label %12, !dbg !1442

11:                                               ; preds = %8
  call void @panic(ptr noundef @.str.94) #11, !dbg !1445
  unreachable, !dbg !1445

12:                                               ; preds = %8, %1
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.6), !dbg !1446
  %13 = load i32, ptr @srcMode, align 4, !dbg !1447
  switch i32 %13, label %19 [
    i32 1, label %14
    i32 3, label %15
    i32 2, label %17
  ], !dbg !1448

14:                                               ; preds = %12
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54), !dbg !1449
  br label %19, !dbg !1451

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !dbg !1452
  call void @copyFileName(ptr noundef @inName, ptr noundef %16), !dbg !1453
  br label %19, !dbg !1454

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8, !dbg !1455
  call void @copyFileName(ptr noundef @inName, ptr noundef %18), !dbg !1456
  br label %19, !dbg !1457

19:                                               ; preds = %12, %17, %15, %14
  %20 = load i32, ptr @srcMode, align 4, !dbg !1458
  %21 = icmp ne i32 %20, 1, !dbg !1460
  br i1 %21, label %22, label %34, !dbg !1461

22:                                               ; preds = %19
  %23 = call zeroext i8 @containsDubiousChars(ptr noundef @inName), !dbg !1462
  %24 = zext i8 %23 to i32, !dbg !1462
  %25 = icmp ne i32 %24, 0, !dbg !1462
  br i1 %25, label %26, label %34, !dbg !1461

26:                                               ; preds = %22
  %27 = load i8, ptr @noisy, align 1, !dbg !1463
  %28 = icmp ne i8 %27, 0, !dbg !1463
  br i1 %28, label %29, label %33, !dbg !1463

29:                                               ; preds = %26
  %30 = load ptr, ptr @stderr, align 8, !dbg !1466
  %31 = load ptr, ptr @progName, align 8, !dbg !1467
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.56, ptr noundef %31, ptr noundef @inName) #10, !dbg !1468
  br label %33, !dbg !1468

33:                                               ; preds = %29, %26
  call void @setExit(i32 noundef 1), !dbg !1469
  br label %115, !dbg !1470

34:                                               ; preds = %22, %19
  %35 = load i32, ptr @srcMode, align 4, !dbg !1471
  %36 = icmp ne i32 %35, 1, !dbg !1473
  br i1 %36, label %37, label %47, !dbg !1474

37:                                               ; preds = %34
  %38 = call zeroext i8 @fileExists(ptr noundef @inName), !dbg !1475
  %39 = icmp ne i8 %38, 0, !dbg !1475
  br i1 %39, label %47, label %40, !dbg !1474

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !dbg !1476
  %42 = load ptr, ptr @progName, align 8, !dbg !1478
  %43 = call ptr @__errno_location() #14, !dbg !1479
  %44 = load i32, ptr %43, align 4, !dbg !1479
  %45 = call ptr @strerror(i32 noundef %44) #10, !dbg !1480
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.95, ptr noundef %42, ptr noundef @inName, ptr noundef %45) #10, !dbg !1481
  call void @setExit(i32 noundef 1), !dbg !1482
  br label %115, !dbg !1483

47:                                               ; preds = %37, %34
  %48 = load i32, ptr @srcMode, align 4, !dbg !1484
  %49 = icmp ne i32 %48, 1, !dbg !1486
  br i1 %49, label %50, label %61, !dbg !1486

50:                                               ; preds = %47
  %51 = call i32 @stat(ptr noundef @inName, ptr noundef %5) #10, !dbg !1487
  %52 = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 3, !dbg !1489
  %53 = load i32, ptr %52, align 8, !dbg !1489
  %54 = and i32 %53, 61440, !dbg !1489
  %55 = icmp eq i32 %54, 16384, !dbg !1489
  br i1 %55, label %56, label %60, !dbg !1489

56:                                               ; preds = %50
  %57 = load ptr, ptr @stderr, align 8, !dbg !1491
  %58 = load ptr, ptr @progName, align 8, !dbg !1493
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.59, ptr noundef %58, ptr noundef @inName) #10, !dbg !1494
  call void @setExit(i32 noundef 1), !dbg !1495
  br label %115, !dbg !1496

60:                                               ; preds = %50
  br label %61, !dbg !1497

61:                                               ; preds = %60, %47
  %62 = load i32, ptr @srcMode, align 4, !dbg !1498
  switch i32 %62, label %90 [
    i32 1, label %63
    i32 2, label %78
    i32 3, label %78
  ], !dbg !1499

63:                                               ; preds = %61
  %64 = load ptr, ptr @stdin, align 8, !dbg !1500
  %65 = call i32 @fileno(ptr noundef %64) #10, !dbg !1503
  %66 = call i32 @isatty(i32 noundef %65) #10, !dbg !1504
  %67 = icmp ne i32 %66, 0, !dbg !1504
  br i1 %67, label %68, label %76, !dbg !1504

68:                                               ; preds = %63
  %69 = load ptr, ptr @stderr, align 8, !dbg !1505
  %70 = load ptr, ptr @progName, align 8, !dbg !1507
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.82, ptr noundef %70) #10, !dbg !1508
  %72 = load ptr, ptr @stderr, align 8, !dbg !1509
  %73 = load ptr, ptr @progName, align 8, !dbg !1510
  %74 = load ptr, ptr @progName, align 8, !dbg !1511
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.65, ptr noundef %73, ptr noundef %74) #10, !dbg !1512
  call void @setExit(i32 noundef 1), !dbg !1513
  br label %115, !dbg !1514

76:                                               ; preds = %63
  %77 = load ptr, ptr @stdin, align 8, !dbg !1515
  store ptr %77, ptr %3, align 8, !dbg !1516
  br label %91, !dbg !1517

78:                                               ; preds = %61, %61
  %79 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1518
  store ptr %79, ptr %3, align 8, !dbg !1519
  %80 = load ptr, ptr %3, align 8, !dbg !1520
  %81 = icmp eq ptr %80, null, !dbg !1522
  br i1 %81, label %82, label %89, !dbg !1522

82:                                               ; preds = %78
  %83 = load ptr, ptr @stderr, align 8, !dbg !1523
  %84 = load ptr, ptr @progName, align 8, !dbg !1525
  %85 = call ptr @__errno_location() #14, !dbg !1526
  %86 = load i32, ptr %85, align 4, !dbg !1526
  %87 = call ptr @strerror(i32 noundef %86) #10, !dbg !1527
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.83, ptr noundef %84, ptr noundef @inName, ptr noundef %87) #10, !dbg !1528
  call void @setExit(i32 noundef 1), !dbg !1529
  br label %115, !dbg !1530

89:                                               ; preds = %78
  br label %91, !dbg !1531

90:                                               ; preds = %61
  call void @panic(ptr noundef @.str.96) #11, !dbg !1532
  unreachable, !dbg !1532

91:                                               ; preds = %89, %76
  %92 = load i32, ptr @verbosity, align 4, !dbg !1533
  %93 = icmp sge i32 %92, 1, !dbg !1535
  br i1 %93, label %94, label %99, !dbg !1535

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !dbg !1536
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.70, ptr noundef @inName) #10, !dbg !1538
  call void @pad(ptr noundef @inName), !dbg !1539
  %97 = load ptr, ptr @stderr, align 8, !dbg !1540
  %98 = call i32 @fflush(ptr noundef %97), !dbg !1541
  br label %99, !dbg !1542

99:                                               ; preds = %94, %91
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !1543
  %100 = load ptr, ptr %3, align 8, !dbg !1544
  %101 = call zeroext i8 @testStream(ptr noundef %100), !dbg !1545
  store i8 %101, ptr %4, align 1, !dbg !1546
  %102 = load i8, ptr %4, align 1, !dbg !1547
  %103 = zext i8 %102 to i32, !dbg !1547
  %104 = icmp ne i32 %103, 0, !dbg !1547
  br i1 %104, label %105, label %111, !dbg !1549

105:                                              ; preds = %99
  %106 = load i32, ptr @verbosity, align 4, !dbg !1550
  %107 = icmp sge i32 %106, 1, !dbg !1551
  br i1 %107, label %108, label %111, !dbg !1549

108:                                              ; preds = %105
  %109 = load ptr, ptr @stderr, align 8, !dbg !1552
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.97) #10, !dbg !1553
  br label %111, !dbg !1553

111:                                              ; preds = %108, %105, %99
  %112 = load i8, ptr %4, align 1, !dbg !1554
  %113 = icmp ne i8 %112, 0, !dbg !1554
  br i1 %113, label %115, label %114, !dbg !1556

114:                                              ; preds = %111
  store i8 1, ptr @testFailsExist, align 1, !dbg !1557
  br label %115, !dbg !1558

115:                                              ; preds = %33, %40, %56, %68, %82, %114, %111
  ret void, !dbg !1559
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showFileNames() #0 !dbg !1560 {
  %1 = load i8, ptr @noisy, align 1, !dbg !1561
  %2 = icmp ne i8 %1, 0, !dbg !1561
  br i1 %2, label %3, label %6, !dbg !1561

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !1563
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.38, ptr noundef @inName, ptr noundef @outName) #10, !dbg !1564
  br label %6, !dbg !1564

6:                                                ; preds = %3, %0
  ret void, !dbg !1565
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @cleanUpAndFail(i32 noundef %0) #5 !dbg !1566 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !1567, !DIExpression(), !1568)
    #dbg_declare(ptr %3, !1569, !DIExpression(), !1570)
    #dbg_declare(ptr %4, !1571, !DIExpression(), !1572)
  %5 = load i32, ptr @srcMode, align 4, !dbg !1573
  %6 = icmp eq i32 %5, 3, !dbg !1575
  br i1 %6, label %7, label %54, !dbg !1576

7:                                                ; preds = %1
  %8 = load i32, ptr @opMode, align 4, !dbg !1577
  %9 = icmp ne i32 %8, 3, !dbg !1578
  br i1 %9, label %10, label %54, !dbg !1579

10:                                               ; preds = %7
  %11 = load i8, ptr @deleteOutputOnInterrupt, align 1, !dbg !1580
  %12 = zext i8 %11 to i32, !dbg !1580
  %13 = icmp ne i32 %12, 0, !dbg !1580
  br i1 %13, label %14, label %54, !dbg !1579

14:                                               ; preds = %10
  %15 = call i32 @stat(ptr noundef @inName, ptr noundef %4) #10, !dbg !1581
  store i32 %15, ptr %3, align 4, !dbg !1583
  %16 = load i32, ptr %3, align 4, !dbg !1584
  %17 = icmp eq i32 %16, 0, !dbg !1586
  br i1 %17, label %18, label %40, !dbg !1586

18:                                               ; preds = %14
  %19 = load i8, ptr @noisy, align 1, !dbg !1587
  %20 = icmp ne i8 %19, 0, !dbg !1587
  br i1 %20, label %21, label %25, !dbg !1587

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8, !dbg !1590
  %23 = load ptr, ptr @progName, align 8, !dbg !1591
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.39, ptr noundef %23, ptr noundef @outName) #10, !dbg !1592
  br label %25, !dbg !1592

25:                                               ; preds = %21, %18
  %26 = load ptr, ptr @outputHandleJustInCase, align 8, !dbg !1593
  %27 = icmp ne ptr %26, null, !dbg !1595
  br i1 %27, label %28, label %31, !dbg !1595

28:                                               ; preds = %25
  %29 = load ptr, ptr @outputHandleJustInCase, align 8, !dbg !1596
  %30 = call i32 @fclose(ptr noundef %29), !dbg !1597
  br label %31, !dbg !1597

31:                                               ; preds = %28, %25
  %32 = call i32 @remove(ptr noundef @outName) #10, !dbg !1598
  store i32 %32, ptr %3, align 4, !dbg !1599
  %33 = load i32, ptr %3, align 4, !dbg !1600
  %34 = icmp ne i32 %33, 0, !dbg !1602
  br i1 %34, label %35, label %39, !dbg !1602

35:                                               ; preds = %31
  %36 = load ptr, ptr @stderr, align 8, !dbg !1603
  %37 = load ptr, ptr @progName, align 8, !dbg !1604
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.40, ptr noundef %37) #10, !dbg !1605
  br label %39, !dbg !1605

39:                                               ; preds = %35, %31
  br label %53, !dbg !1606

40:                                               ; preds = %14
  %41 = load ptr, ptr @stderr, align 8, !dbg !1607
  %42 = load ptr, ptr @progName, align 8, !dbg !1609
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.41, ptr noundef %42) #10, !dbg !1610
  %44 = load ptr, ptr @stderr, align 8, !dbg !1611
  %45 = load ptr, ptr @progName, align 8, !dbg !1612
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.42, ptr noundef %45) #10, !dbg !1613
  %47 = load ptr, ptr @stderr, align 8, !dbg !1614
  %48 = load ptr, ptr @progName, align 8, !dbg !1615
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.43, ptr noundef %48, ptr noundef @outName) #10, !dbg !1616
  %50 = load ptr, ptr @stderr, align 8, !dbg !1617
  %51 = load ptr, ptr @progName, align 8, !dbg !1618
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.44, ptr noundef %51) #10, !dbg !1619
  br label %53

53:                                               ; preds = %40, %39
  br label %54, !dbg !1620

54:                                               ; preds = %53, %10, %7, %1
  %55 = load i8, ptr @noisy, align 1, !dbg !1621
  %56 = zext i8 %55 to i32, !dbg !1621
  %57 = icmp ne i32 %56, 0, !dbg !1621
  br i1 %57, label %58, label %74, !dbg !1623

58:                                               ; preds = %54
  %59 = load i32, ptr @numFileNames, align 4, !dbg !1624
  %60 = icmp sgt i32 %59, 0, !dbg !1625
  br i1 %60, label %61, label %74, !dbg !1626

61:                                               ; preds = %58
  %62 = load i32, ptr @numFilesProcessed, align 4, !dbg !1627
  %63 = load i32, ptr @numFileNames, align 4, !dbg !1628
  %64 = icmp slt i32 %62, %63, !dbg !1629
  br i1 %64, label %65, label %74, !dbg !1626

65:                                               ; preds = %61
  %66 = load ptr, ptr @stderr, align 8, !dbg !1630
  %67 = load ptr, ptr @progName, align 8, !dbg !1632
  %68 = load ptr, ptr @progName, align 8, !dbg !1633
  %69 = load i32, ptr @numFileNames, align 4, !dbg !1634
  %70 = load i32, ptr @numFileNames, align 4, !dbg !1635
  %71 = load i32, ptr @numFilesProcessed, align 4, !dbg !1636
  %72 = sub nsw i32 %70, %71, !dbg !1637
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.45, ptr noundef %67, ptr noundef %68, i32 noundef %69, i32 noundef %72) #10, !dbg !1638
  br label %74, !dbg !1639

74:                                               ; preds = %65, %61, %58, %54
  %75 = load i32, ptr %2, align 4, !dbg !1640
  call void @setExit(i32 noundef %75), !dbg !1641
  %76 = load i32, ptr @exitValue, align 4, !dbg !1642
  call void @exit(i32 noundef %76) #13, !dbg !1643
  unreachable, !dbg !1643
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadvise() #0 !dbg !1644 {
  %1 = load i8, ptr @noisy, align 1, !dbg !1645
  %2 = icmp ne i8 %1, 0, !dbg !1645
  br i1 %2, label %3, label %6, !dbg !1645

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !1647
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.46) #10, !dbg !1648
  br label %6, !dbg !1648

6:                                                ; preds = %3, %0
  ret void, !dbg !1649
}

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @remove(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @mkCell() #0 !dbg !1650 {
  %1 = alloca ptr, align 8
    #dbg_declare(ptr %1, !1653, !DIExpression(), !1654)
  %2 = call ptr @myMalloc(i32 noundef 16), !dbg !1655
  store ptr %2, ptr %1, align 8, !dbg !1656
  %3 = load ptr, ptr %1, align 8, !dbg !1657
  %4 = getelementptr inbounds nuw %struct.zzzz, ptr %3, i32 0, i32 0, !dbg !1658
  store ptr null, ptr %4, align 8, !dbg !1659
  %5 = load ptr, ptr %1, align 8, !dbg !1660
  %6 = getelementptr inbounds nuw %struct.zzzz, ptr %5, i32 0, i32 1, !dbg !1661
  store ptr null, ptr %6, align 8, !dbg !1662
  %7 = load ptr, ptr %1, align 8, !dbg !1663
  ret ptr %7, !dbg !1664
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @myMalloc(i32 noundef %0) #0 !dbg !1665 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !1668, !DIExpression(), !1669)
    #dbg_declare(ptr %3, !1670, !DIExpression(), !1671)
  %4 = load i32, ptr %2, align 4, !dbg !1672
  %5 = sext i32 %4 to i64, !dbg !1673
  %6 = call noalias ptr @malloc(i64 noundef %5) #15, !dbg !1674
  store ptr %6, ptr %3, align 8, !dbg !1675
  %7 = load ptr, ptr %3, align 8, !dbg !1676
  %8 = icmp eq ptr %7, null, !dbg !1678
  br i1 %8, label %9, label %10, !dbg !1678

9:                                                ; preds = %1
  call void @outOfMemory() #11, !dbg !1679
  unreachable, !dbg !1679

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !1680
  ret ptr %11, !dbg !1681
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @outOfMemory() #5 !dbg !1682 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !1683
  %2 = load ptr, ptr @progName, align 8, !dbg !1684
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.48, ptr noundef %2) #10, !dbg !1685
  call void @showFileNames(), !dbg !1686
  call void @cleanUpAndFail(i32 noundef 1) #11, !dbg !1687
  unreachable, !dbg !1687
}

declare ptr @BZ2_bzlibVersion() #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @panic(ptr noundef %0) #5 !dbg !1688 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1689, !DIExpression(), !1690)
  %3 = load ptr, ptr @stderr, align 8, !dbg !1691
  %4 = load ptr, ptr @progName, align 8, !dbg !1692
  %5 = load ptr, ptr %2, align 8, !dbg !1693
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.71, ptr noundef %4, ptr noundef %5) #10, !dbg !1694
  call void @showFileNames(), !dbg !1695
  call void @cleanUpAndFail(i32 noundef 3) #11, !dbg !1696
  unreachable, !dbg !1696
}

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @containsDubiousChars(ptr noundef %0) #0 !dbg !1697 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1700, !DIExpression(), !1701)
  ret i8 0, !dbg !1702
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fileExists(ptr noundef %0) #0 !dbg !1703 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1704, !DIExpression(), !1705)
    #dbg_declare(ptr %3, !1706, !DIExpression(), !1707)
  %5 = load ptr, ptr %2, align 8, !dbg !1708
  %6 = call noalias ptr @fopen(ptr noundef %5, ptr noundef @.str.66), !dbg !1709
  store ptr %6, ptr %3, align 8, !dbg !1707
    #dbg_declare(ptr %4, !1710, !DIExpression(), !1711)
  %7 = load ptr, ptr %3, align 8, !dbg !1712
  %8 = icmp ne ptr %7, null, !dbg !1713
  %9 = zext i1 %8 to i32, !dbg !1713
  %10 = trunc i32 %9 to i8, !dbg !1714
  store i8 %10, ptr %4, align 1, !dbg !1711
  %11 = load ptr, ptr %3, align 8, !dbg !1715
  %12 = icmp ne ptr %11, null, !dbg !1717
  br i1 %12, label %13, label %16, !dbg !1717

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8, !dbg !1718
  %15 = call i32 @fclose(ptr noundef %14), !dbg !1719
  br label %16, !dbg !1719

16:                                               ; preds = %13, %1
  %17 = load i8, ptr %4, align 1, !dbg !1720
  ret i8 %17, !dbg !1721
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @hasSuffix(ptr noundef %0, ptr noundef %1) #0 !dbg !1722 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1725, !DIExpression(), !1726)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1727, !DIExpression(), !1728)
    #dbg_declare(ptr %6, !1729, !DIExpression(), !1730)
  %8 = load ptr, ptr %4, align 8, !dbg !1731
  %9 = call i64 @strlen(ptr noundef %8) #12, !dbg !1732
  %10 = trunc i64 %9 to i32, !dbg !1732
  store i32 %10, ptr %6, align 4, !dbg !1730
    #dbg_declare(ptr %7, !1733, !DIExpression(), !1734)
  %11 = load ptr, ptr %5, align 8, !dbg !1735
  %12 = call i64 @strlen(ptr noundef %11) #12, !dbg !1736
  %13 = trunc i64 %12 to i32, !dbg !1736
  store i32 %13, ptr %7, align 4, !dbg !1734
  %14 = load i32, ptr %6, align 4, !dbg !1737
  %15 = load i32, ptr %7, align 4, !dbg !1739
  %16 = icmp slt i32 %14, %15, !dbg !1740
  br i1 %16, label %17, label %18, !dbg !1740

17:                                               ; preds = %2
  store i8 0, ptr %3, align 1, !dbg !1741
  br label %32, !dbg !1741

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !1742
  %20 = load i32, ptr %6, align 4, !dbg !1744
  %21 = sext i32 %20 to i64, !dbg !1745
  %22 = getelementptr inbounds i8, ptr %19, i64 %21, !dbg !1745
  %23 = load i32, ptr %7, align 4, !dbg !1746
  %24 = sext i32 %23 to i64, !dbg !1747
  %25 = sub i64 0, %24, !dbg !1747
  %26 = getelementptr inbounds i8, ptr %22, i64 %25, !dbg !1747
  %27 = load ptr, ptr %5, align 8, !dbg !1748
  %28 = call i32 @strcmp(ptr noundef %26, ptr noundef %27) #12, !dbg !1749
  %29 = icmp eq i32 %28, 0, !dbg !1750
  br i1 %29, label %30, label %31, !dbg !1750

30:                                               ; preds = %18
  store i8 1, ptr %3, align 1, !dbg !1751
  br label %32, !dbg !1751

31:                                               ; preds = %18
  store i8 0, ptr %3, align 1, !dbg !1752
  br label %32, !dbg !1752

32:                                               ; preds = %31, %30, %17
  %33 = load i8, ptr %3, align 1, !dbg !1753
  ret i8 %33, !dbg !1753
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @notAStandardFile(ptr noundef %0) #0 !dbg !1754 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1755, !DIExpression(), !1756)
    #dbg_declare(ptr %4, !1757, !DIExpression(), !1758)
    #dbg_declare(ptr %5, !1759, !DIExpression(), !1760)
  %6 = load ptr, ptr %3, align 8, !dbg !1761
  %7 = call i32 @lstat(ptr noundef %6, ptr noundef %5) #10, !dbg !1762
  store i32 %7, ptr %4, align 4, !dbg !1763
  %8 = load i32, ptr %4, align 4, !dbg !1764
  %9 = icmp ne i32 %8, 0, !dbg !1766
  br i1 %9, label %10, label %11, !dbg !1766

10:                                               ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !1767
  br label %18, !dbg !1767

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 3, !dbg !1768
  %13 = load i32, ptr %12, align 8, !dbg !1768
  %14 = and i32 %13, 61440, !dbg !1768
  %15 = icmp eq i32 %14, 32768, !dbg !1768
  br i1 %15, label %16, label %17, !dbg !1768

16:                                               ; preds = %11
  store i8 0, ptr %2, align 1, !dbg !1770
  br label %18, !dbg !1770

17:                                               ; preds = %11
  store i8 1, ptr %2, align 1, !dbg !1771
  br label %18, !dbg !1771

18:                                               ; preds = %17, %16, %10
  %19 = load i8, ptr %2, align 1, !dbg !1772
  ret i8 %19, !dbg !1772
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @countHardLinks(ptr noundef %0) #0 !dbg !1773 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1776, !DIExpression(), !1777)
    #dbg_declare(ptr %4, !1778, !DIExpression(), !1779)
    #dbg_declare(ptr %5, !1780, !DIExpression(), !1781)
  %6 = load ptr, ptr %3, align 8, !dbg !1782
  %7 = call i32 @lstat(ptr noundef %6, ptr noundef %5) #10, !dbg !1783
  store i32 %7, ptr %4, align 4, !dbg !1784
  %8 = load i32, ptr %4, align 4, !dbg !1785
  %9 = icmp ne i32 %8, 0, !dbg !1787
  br i1 %9, label %10, label %11, !dbg !1787

10:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !1788
  br label %16, !dbg !1788

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 2, !dbg !1789
  %13 = load i64, ptr %12, align 8, !dbg !1789
  %14 = sub i64 %13, 1, !dbg !1790
  %15 = trunc i64 %14 to i32, !dbg !1791
  store i32 %15, ptr %2, align 4, !dbg !1792
  br label %16, !dbg !1792

16:                                               ; preds = %11, %10
  %17 = load i32, ptr %2, align 4, !dbg !1793
  ret i32 %17, !dbg !1793
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saveInputFileMetaInfo(ptr noundef %0) #0 !dbg !1794 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1795, !DIExpression(), !1796)
    #dbg_declare(ptr %3, !1797, !DIExpression(), !1798)
  %4 = load ptr, ptr %2, align 8, !dbg !1799
  %5 = call i32 @stat(ptr noundef %4, ptr noundef @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a) #10, !dbg !1800
  store i32 %5, ptr %3, align 4, !dbg !1801
  %6 = load i32, ptr %3, align 4, !dbg !1802
  %7 = icmp ne i32 %6, 0, !dbg !1802
  br i1 %7, label %8, label %9, !dbg !1802

8:                                                ; preds = %1
  call void @ioError() #11, !dbg !1802
  unreachable, !dbg !1802

9:                                                ; preds = %1
  ret void, !dbg !1805
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pad(ptr noundef %0) #0 !dbg !1806 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1807, !DIExpression(), !1808)
    #dbg_declare(ptr %3, !1809, !DIExpression(), !1810)
  %4 = load ptr, ptr %2, align 8, !dbg !1811
  %5 = call i64 @strlen(ptr noundef %4) #12, !dbg !1813
  %6 = trunc i64 %5 to i32, !dbg !1814
  %7 = load i32, ptr @longestFileName, align 4, !dbg !1815
  %8 = icmp sge i32 %6, %7, !dbg !1816
  br i1 %8, label %9, label %10, !dbg !1816

9:                                                ; preds = %1
  br label %25, !dbg !1817

10:                                               ; preds = %1
  store i32 1, ptr %3, align 4, !dbg !1818
  br label %11, !dbg !1820

11:                                               ; preds = %22, %10
  %12 = load i32, ptr %3, align 4, !dbg !1821
  %13 = load i32, ptr @longestFileName, align 4, !dbg !1823
  %14 = load ptr, ptr %2, align 8, !dbg !1824
  %15 = call i64 @strlen(ptr noundef %14) #12, !dbg !1825
  %16 = trunc i64 %15 to i32, !dbg !1826
  %17 = sub nsw i32 %13, %16, !dbg !1827
  %18 = icmp sle i32 %12, %17, !dbg !1828
  br i1 %18, label %19, label %25, !dbg !1829

19:                                               ; preds = %11
  %20 = load ptr, ptr @stderr, align 8, !dbg !1830
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.72) #10, !dbg !1831
  br label %22, !dbg !1831

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4, !dbg !1832
  %24 = add nsw i32 %23, 1, !dbg !1832
  store i32 %24, ptr %3, align 4, !dbg !1832
  br label %11, !dbg !1833, !llvm.loop !1834

25:                                               ; preds = %9, %11
  ret void, !dbg !1836
}

declare i32 @fflush(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressStream(ptr noundef %0, ptr noundef %1) #0 !dbg !1837 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [5000 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca %struct.UInt64, align 1
  %18 = alloca %struct.UInt64, align 1
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1840, !DIExpression(), !1841)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1842, !DIExpression(), !1843)
    #dbg_declare(ptr %5, !1844, !DIExpression(), !1848)
  store ptr null, ptr %5, align 8, !dbg !1848
    #dbg_declare(ptr %6, !1849, !DIExpression(), !1853)
    #dbg_declare(ptr %7, !1854, !DIExpression(), !1855)
    #dbg_declare(ptr %8, !1856, !DIExpression(), !1858)
    #dbg_declare(ptr %9, !1859, !DIExpression(), !1860)
    #dbg_declare(ptr %10, !1861, !DIExpression(), !1862)
    #dbg_declare(ptr %11, !1863, !DIExpression(), !1864)
    #dbg_declare(ptr %12, !1865, !DIExpression(), !1866)
    #dbg_declare(ptr %13, !1867, !DIExpression(), !1868)
    #dbg_declare(ptr %14, !1869, !DIExpression(), !1870)
  %21 = load ptr, ptr %3, align 8, !dbg !1871
  %22 = call i32 @ferror(ptr noundef %21) #10, !dbg !1873
  %23 = icmp ne i32 %22, 0, !dbg !1873
  br i1 %23, label %24, label %25, !dbg !1873

24:                                               ; preds = %2
  br label %155, !dbg !1874

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8, !dbg !1875
  %27 = call i32 @ferror(ptr noundef %26) #10, !dbg !1877
  %28 = icmp ne i32 %27, 0, !dbg !1877
  br i1 %28, label %29, label %30, !dbg !1877

29:                                               ; preds = %25
  br label %155, !dbg !1878

30:                                               ; preds = %25
  %31 = load ptr, ptr %4, align 8, !dbg !1879
  %32 = load i32, ptr @blockSize100k, align 4, !dbg !1880
  %33 = load i32, ptr @verbosity, align 4, !dbg !1881
  %34 = load i32, ptr @workFactor, align 4, !dbg !1882
  %35 = call ptr @BZ2_bzWriteOpen(ptr noundef %12, ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34), !dbg !1883
  store ptr %35, ptr %5, align 8, !dbg !1884
  %36 = load i32, ptr %12, align 4, !dbg !1885
  %37 = icmp ne i32 %36, 0, !dbg !1887
  br i1 %37, label %38, label %39, !dbg !1887

38:                                               ; preds = %30
  br label %149, !dbg !1888

39:                                               ; preds = %30
  %40 = load i32, ptr @verbosity, align 4, !dbg !1889
  %41 = icmp sge i32 %40, 2, !dbg !1891
  br i1 %41, label %42, label %45, !dbg !1891

42:                                               ; preds = %39
  %43 = load ptr, ptr @stderr, align 8, !dbg !1892
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.73) #10, !dbg !1893
  br label %45, !dbg !1893

45:                                               ; preds = %42, %39
  br label %46, !dbg !1894

46:                                               ; preds = %45, %71
  %47 = load ptr, ptr %3, align 8, !dbg !1895
  %48 = call zeroext i8 @myfeof(ptr noundef %47), !dbg !1898
  %49 = icmp ne i8 %48, 0, !dbg !1898
  br i1 %49, label %50, label %51, !dbg !1898

50:                                               ; preds = %46
  br label %72, !dbg !1899

51:                                               ; preds = %46
  %52 = getelementptr inbounds [5000 x i8], ptr %6, i64 0, i64 0, !dbg !1900
  %53 = load ptr, ptr %3, align 8, !dbg !1901
  %54 = call i64 @fread(ptr noundef %52, i64 noundef 1, i64 noundef 5000, ptr noundef %53), !dbg !1902
  %55 = trunc i64 %54 to i32, !dbg !1902
  store i32 %55, ptr %7, align 4, !dbg !1903
  %56 = load ptr, ptr %3, align 8, !dbg !1904
  %57 = call i32 @ferror(ptr noundef %56) #10, !dbg !1906
  %58 = icmp ne i32 %57, 0, !dbg !1906
  br i1 %58, label %59, label %60, !dbg !1906

59:                                               ; preds = %51
  br label %155, !dbg !1907

60:                                               ; preds = %51
  %61 = load i32, ptr %7, align 4, !dbg !1908
  %62 = icmp sgt i32 %61, 0, !dbg !1910
  br i1 %62, label %63, label %67, !dbg !1910

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8, !dbg !1911
  %65 = getelementptr inbounds [5000 x i8], ptr %6, i64 0, i64 0, !dbg !1912
  %66 = load i32, ptr %7, align 4, !dbg !1913
  call void @BZ2_bzWrite(ptr noundef %12, ptr noundef %64, ptr noundef %65, i32 noundef %66), !dbg !1914
  br label %67, !dbg !1914

67:                                               ; preds = %63, %60
  %68 = load i32, ptr %12, align 4, !dbg !1915
  %69 = icmp ne i32 %68, 0, !dbg !1917
  br i1 %69, label %70, label %71, !dbg !1917

70:                                               ; preds = %67
  br label %149, !dbg !1918

71:                                               ; preds = %67
  br label %46, !dbg !1894, !llvm.loop !1919

72:                                               ; preds = %50
  %73 = load ptr, ptr %5, align 8, !dbg !1921
  call void @BZ2_bzWriteClose64(ptr noundef %12, ptr noundef %73, i32 noundef 0, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !1922
  %74 = load i32, ptr %12, align 4, !dbg !1923
  %75 = icmp ne i32 %74, 0, !dbg !1925
  br i1 %75, label %76, label %77, !dbg !1925

76:                                               ; preds = %72
  br label %149, !dbg !1926

77:                                               ; preds = %72
  %78 = load ptr, ptr %4, align 8, !dbg !1927
  %79 = call i32 @ferror(ptr noundef %78) #10, !dbg !1929
  %80 = icmp ne i32 %79, 0, !dbg !1929
  br i1 %80, label %81, label %82, !dbg !1929

81:                                               ; preds = %77
  br label %155, !dbg !1930

82:                                               ; preds = %77
  %83 = load ptr, ptr %4, align 8, !dbg !1931
  %84 = call i32 @fflush(ptr noundef %83), !dbg !1932
  store i32 %84, ptr %14, align 4, !dbg !1933
  %85 = load i32, ptr %14, align 4, !dbg !1934
  %86 = icmp eq i32 %85, -1, !dbg !1936
  br i1 %86, label %87, label %88, !dbg !1936

87:                                               ; preds = %82
  br label %155, !dbg !1937

88:                                               ; preds = %82
  %89 = load ptr, ptr %4, align 8, !dbg !1938
  %90 = load ptr, ptr @stdout, align 8, !dbg !1940
  %91 = icmp ne ptr %89, %90, !dbg !1941
  br i1 %91, label %92, label %99, !dbg !1941

92:                                               ; preds = %88
  %93 = load ptr, ptr %4, align 8, !dbg !1942
  %94 = call i32 @fclose(ptr noundef %93), !dbg !1944
  store i32 %94, ptr %14, align 4, !dbg !1945
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !1946
  %95 = load i32, ptr %14, align 4, !dbg !1947
  %96 = icmp eq i32 %95, -1, !dbg !1949
  br i1 %96, label %97, label %98, !dbg !1949

97:                                               ; preds = %92
  br label %155, !dbg !1950

98:                                               ; preds = %92
  br label %99, !dbg !1951

99:                                               ; preds = %98, %88
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !1952
  %100 = load ptr, ptr %3, align 8, !dbg !1953
  %101 = call i32 @ferror(ptr noundef %100) #10, !dbg !1955
  %102 = icmp ne i32 %101, 0, !dbg !1955
  br i1 %102, label %103, label %104, !dbg !1955

103:                                              ; preds = %99
  br label %155, !dbg !1956

104:                                              ; preds = %99
  %105 = load ptr, ptr %3, align 8, !dbg !1957
  %106 = call i32 @fclose(ptr noundef %105), !dbg !1958
  store i32 %106, ptr %14, align 4, !dbg !1959
  %107 = load i32, ptr %14, align 4, !dbg !1960
  %108 = icmp eq i32 %107, -1, !dbg !1962
  br i1 %108, label %109, label %110, !dbg !1962

109:                                              ; preds = %104
  br label %155, !dbg !1963

110:                                              ; preds = %104
  %111 = load i32, ptr @verbosity, align 4, !dbg !1964
  %112 = icmp sge i32 %111, 1, !dbg !1966
  br i1 %112, label %113, label %148, !dbg !1966

113:                                              ; preds = %110
  %114 = load i32, ptr %8, align 4, !dbg !1967
  %115 = icmp eq i32 %114, 0, !dbg !1970
  br i1 %115, label %116, label %122, !dbg !1971

116:                                              ; preds = %113
  %117 = load i32, ptr %9, align 4, !dbg !1972
  %118 = icmp eq i32 %117, 0, !dbg !1973
  br i1 %118, label %119, label %122, !dbg !1971

119:                                              ; preds = %116
  %120 = load ptr, ptr @stderr, align 8, !dbg !1974
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.74) #10, !dbg !1976
  br label %147, !dbg !1977

122:                                              ; preds = %116, %113
    #dbg_declare(ptr %15, !1978, !DIExpression(), !1981)
    #dbg_declare(ptr %16, !1982, !DIExpression(), !1983)
    #dbg_declare(ptr %17, !1984, !DIExpression(), !1990)
    #dbg_declare(ptr %18, !1991, !DIExpression(), !1992)
    #dbg_declare(ptr %19, !1993, !DIExpression(), !1994)
    #dbg_declare(ptr %20, !1995, !DIExpression(), !1996)
  %123 = load i32, ptr %8, align 4, !dbg !1997
  %124 = load i32, ptr %9, align 4, !dbg !1998
  call void @uInt64_from_UInt32s(ptr noundef %17, i32 noundef %123, i32 noundef %124), !dbg !1999
  %125 = load i32, ptr %10, align 4, !dbg !2000
  %126 = load i32, ptr %11, align 4, !dbg !2001
  call void @uInt64_from_UInt32s(ptr noundef %18, i32 noundef %125, i32 noundef %126), !dbg !2002
  %127 = call double @uInt64_to_double(ptr noundef %17), !dbg !2003
  store double %127, ptr %19, align 8, !dbg !2004
  %128 = call double @uInt64_to_double(ptr noundef %18), !dbg !2005
  store double %128, ptr %20, align 8, !dbg !2006
  %129 = getelementptr inbounds [32 x i8], ptr %15, i64 0, i64 0, !dbg !2007
  call void @uInt64_toAscii(ptr noundef %129, ptr noundef %17), !dbg !2008
  %130 = getelementptr inbounds [32 x i8], ptr %16, i64 0, i64 0, !dbg !2009
  call void @uInt64_toAscii(ptr noundef %130, ptr noundef %18), !dbg !2010
  %131 = load ptr, ptr @stderr, align 8, !dbg !2011
  %132 = load double, ptr %19, align 8, !dbg !2012
  %133 = load double, ptr %20, align 8, !dbg !2013
  %134 = fdiv double %132, %133, !dbg !2014
  %135 = load double, ptr %20, align 8, !dbg !2015
  %136 = fmul double 8.000000e+00, %135, !dbg !2016
  %137 = load double, ptr %19, align 8, !dbg !2017
  %138 = fdiv double %136, %137, !dbg !2018
  %139 = load double, ptr %20, align 8, !dbg !2019
  %140 = load double, ptr %19, align 8, !dbg !2020
  %141 = fdiv double %139, %140, !dbg !2021
  %142 = fsub double 1.000000e+00, %141, !dbg !2022
  %143 = fmul double 1.000000e+02, %142, !dbg !2023
  %144 = getelementptr inbounds [32 x i8], ptr %15, i64 0, i64 0, !dbg !2024
  %145 = getelementptr inbounds [32 x i8], ptr %16, i64 0, i64 0, !dbg !2025
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.75, double noundef %134, double noundef %138, double noundef %143, ptr noundef %144, ptr noundef %145) #10, !dbg !2026
  br label %147

147:                                              ; preds = %122, %119
  br label %148, !dbg !2027

148:                                              ; preds = %147, %110
  ret void, !dbg !2028

149:                                              ; preds = %76, %70, %38
    #dbg_label(!2029, !2030)
  %150 = load ptr, ptr %5, align 8, !dbg !2031
  call void @BZ2_bzWriteClose64(ptr noundef %13, ptr noundef %150, i32 noundef 1, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !2032
  %151 = load i32, ptr %12, align 4, !dbg !2033
  switch i32 %151, label %156 [
    i32 -9, label %152
    i32 -3, label %153
    i32 -6, label %154
  ], !dbg !2034

152:                                              ; preds = %149
  call void @configError() #11, !dbg !2035
  unreachable, !dbg !2035

153:                                              ; preds = %149
  call void @outOfMemory() #11, !dbg !2037
  unreachable, !dbg !2037

154:                                              ; preds = %149
  br label %155, !dbg !2037

155:                                              ; preds = %154, %109, %103, %97, %87, %81, %59, %29, %24
    #dbg_label(!2038, !2039)
  call void @ioError() #11, !dbg !2040
  unreachable, !dbg !2040

156:                                              ; preds = %149
  call void @panic(ptr noundef @.str.76) #11, !dbg !2041
  unreachable, !dbg !2041
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applySavedMetaInfoToOutputFile(ptr noundef %0) #0 !dbg !2042 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.utimbuf, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2043, !DIExpression(), !2044)
    #dbg_declare(ptr %3, !2045, !DIExpression(), !2046)
    #dbg_declare(ptr %4, !2047, !DIExpression(), !2053)
  %5 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 11), align 8, !dbg !2054
  %6 = getelementptr inbounds nuw %struct.utimbuf, ptr %4, i32 0, i32 0, !dbg !2055
  store i64 %5, ptr %6, align 8, !dbg !2056
  %7 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 12), align 8, !dbg !2057
  %8 = getelementptr inbounds nuw %struct.utimbuf, ptr %4, i32 0, i32 1, !dbg !2058
  store i64 %7, ptr %8, align 8, !dbg !2059
  %9 = load ptr, ptr %2, align 8, !dbg !2060
  %10 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 3), align 8, !dbg !2061
  %11 = call i32 @chmod(ptr noundef %9, i32 noundef %10) #10, !dbg !2062
  store i32 %11, ptr %3, align 4, !dbg !2063
  %12 = load i32, ptr %3, align 4, !dbg !2064
  %13 = icmp ne i32 %12, 0, !dbg !2064
  br i1 %13, label %14, label %15, !dbg !2064

14:                                               ; preds = %1
  call void @ioError() #11, !dbg !2064
  unreachable, !dbg !2064

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !dbg !2067
  %17 = call i32 @utime(ptr noundef %16, ptr noundef %4) #10, !dbg !2068
  store i32 %17, ptr %3, align 4, !dbg !2069
  %18 = load i32, ptr %3, align 4, !dbg !2070
  %19 = icmp ne i32 %18, 0, !dbg !2070
  br i1 %19, label %20, label %21, !dbg !2070

20:                                               ; preds = %15
  call void @ioError() #11, !dbg !2070
  unreachable, !dbg !2070

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8, !dbg !2073
  %23 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 4), align 4, !dbg !2074
  %24 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 5), align 8, !dbg !2075
  %25 = call i32 @chown(ptr noundef %22, i32 noundef %23, i32 noundef %24) #10, !dbg !2076
  store i32 %25, ptr %3, align 4, !dbg !2077
  ret void, !dbg !2078
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @ioError() #5 !dbg !2079 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2080
  %2 = load ptr, ptr @progName, align 8, !dbg !2081
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.78, ptr noundef %2) #10, !dbg !2082
  %4 = load ptr, ptr @progName, align 8, !dbg !2083
  call void @perror(ptr noundef %4), !dbg !2084
  call void @showFileNames(), !dbg !2085
  call void @cleanUpAndFail(i32 noundef 1) #11, !dbg !2086
  unreachable, !dbg !2086
}

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #2

declare ptr @BZ2_bzWriteOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myfeof(ptr noundef %0) #0 !dbg !2087 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2090, !DIExpression(), !2091)
    #dbg_declare(ptr %4, !2092, !DIExpression(), !2093)
  %5 = load ptr, ptr %3, align 8, !dbg !2094
  %6 = call i32 @fgetc(ptr noundef %5), !dbg !2095
  store i32 %6, ptr %4, align 4, !dbg !2093
  %7 = load i32, ptr %4, align 4, !dbg !2096
  %8 = icmp eq i32 %7, -1, !dbg !2098
  br i1 %8, label %9, label %10, !dbg !2098

9:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !2099
  br label %14, !dbg !2099

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4, !dbg !2100
  %12 = load ptr, ptr %3, align 8, !dbg !2101
  %13 = call i32 @ungetc(i32 noundef %11, ptr noundef %12), !dbg !2102
  store i8 0, ptr %2, align 1, !dbg !2103
  br label %14, !dbg !2103

14:                                               ; preds = %10, %9
  %15 = load i8, ptr %2, align 1, !dbg !2104
  ret i8 %15, !dbg !2104
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare void @BZ2_bzWrite(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @BZ2_bzWriteClose64(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uInt64_from_UInt32s(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !2105 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2109, !DIExpression(), !2110)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !2111, !DIExpression(), !2112)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !2113, !DIExpression(), !2114)
  %7 = load i32, ptr %6, align 4, !dbg !2115
  %8 = lshr i32 %7, 24, !dbg !2116
  %9 = and i32 %8, 255, !dbg !2117
  %10 = trunc i32 %9 to i8, !dbg !2118
  %11 = load ptr, ptr %4, align 8, !dbg !2119
  %12 = getelementptr inbounds nuw %struct.UInt64, ptr %11, i32 0, i32 0, !dbg !2120
  %13 = getelementptr inbounds [8 x i8], ptr %12, i64 0, i64 7, !dbg !2119
  store i8 %10, ptr %13, align 1, !dbg !2121
  %14 = load i32, ptr %6, align 4, !dbg !2122
  %15 = lshr i32 %14, 16, !dbg !2123
  %16 = and i32 %15, 255, !dbg !2124
  %17 = trunc i32 %16 to i8, !dbg !2125
  %18 = load ptr, ptr %4, align 8, !dbg !2126
  %19 = getelementptr inbounds nuw %struct.UInt64, ptr %18, i32 0, i32 0, !dbg !2127
  %20 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 6, !dbg !2126
  store i8 %17, ptr %20, align 1, !dbg !2128
  %21 = load i32, ptr %6, align 4, !dbg !2129
  %22 = lshr i32 %21, 8, !dbg !2130
  %23 = and i32 %22, 255, !dbg !2131
  %24 = trunc i32 %23 to i8, !dbg !2132
  %25 = load ptr, ptr %4, align 8, !dbg !2133
  %26 = getelementptr inbounds nuw %struct.UInt64, ptr %25, i32 0, i32 0, !dbg !2134
  %27 = getelementptr inbounds [8 x i8], ptr %26, i64 0, i64 5, !dbg !2133
  store i8 %24, ptr %27, align 1, !dbg !2135
  %28 = load i32, ptr %6, align 4, !dbg !2136
  %29 = and i32 %28, 255, !dbg !2137
  %30 = trunc i32 %29 to i8, !dbg !2138
  %31 = load ptr, ptr %4, align 8, !dbg !2139
  %32 = getelementptr inbounds nuw %struct.UInt64, ptr %31, i32 0, i32 0, !dbg !2140
  %33 = getelementptr inbounds [8 x i8], ptr %32, i64 0, i64 4, !dbg !2139
  store i8 %30, ptr %33, align 1, !dbg !2141
  %34 = load i32, ptr %5, align 4, !dbg !2142
  %35 = lshr i32 %34, 24, !dbg !2143
  %36 = and i32 %35, 255, !dbg !2144
  %37 = trunc i32 %36 to i8, !dbg !2145
  %38 = load ptr, ptr %4, align 8, !dbg !2146
  %39 = getelementptr inbounds nuw %struct.UInt64, ptr %38, i32 0, i32 0, !dbg !2147
  %40 = getelementptr inbounds [8 x i8], ptr %39, i64 0, i64 3, !dbg !2146
  store i8 %37, ptr %40, align 1, !dbg !2148
  %41 = load i32, ptr %5, align 4, !dbg !2149
  %42 = lshr i32 %41, 16, !dbg !2150
  %43 = and i32 %42, 255, !dbg !2151
  %44 = trunc i32 %43 to i8, !dbg !2152
  %45 = load ptr, ptr %4, align 8, !dbg !2153
  %46 = getelementptr inbounds nuw %struct.UInt64, ptr %45, i32 0, i32 0, !dbg !2154
  %47 = getelementptr inbounds [8 x i8], ptr %46, i64 0, i64 2, !dbg !2153
  store i8 %44, ptr %47, align 1, !dbg !2155
  %48 = load i32, ptr %5, align 4, !dbg !2156
  %49 = lshr i32 %48, 8, !dbg !2157
  %50 = and i32 %49, 255, !dbg !2158
  %51 = trunc i32 %50 to i8, !dbg !2159
  %52 = load ptr, ptr %4, align 8, !dbg !2160
  %53 = getelementptr inbounds nuw %struct.UInt64, ptr %52, i32 0, i32 0, !dbg !2161
  %54 = getelementptr inbounds [8 x i8], ptr %53, i64 0, i64 1, !dbg !2160
  store i8 %51, ptr %54, align 1, !dbg !2162
  %55 = load i32, ptr %5, align 4, !dbg !2163
  %56 = and i32 %55, 255, !dbg !2164
  %57 = trunc i32 %56 to i8, !dbg !2165
  %58 = load ptr, ptr %4, align 8, !dbg !2166
  %59 = getelementptr inbounds nuw %struct.UInt64, ptr %58, i32 0, i32 0, !dbg !2167
  %60 = getelementptr inbounds [8 x i8], ptr %59, i64 0, i64 0, !dbg !2166
  store i8 %57, ptr %60, align 1, !dbg !2168
  ret void, !dbg !2169
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @uInt64_to_double(ptr noundef %0) #0 !dbg !2170 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2173, !DIExpression(), !2174)
    #dbg_declare(ptr %3, !2175, !DIExpression(), !2176)
    #dbg_declare(ptr %4, !2177, !DIExpression(), !2178)
  store double 1.000000e+00, ptr %4, align 8, !dbg !2178
    #dbg_declare(ptr %5, !2179, !DIExpression(), !2180)
  store double 0.000000e+00, ptr %5, align 8, !dbg !2180
  store i32 0, ptr %3, align 4, !dbg !2181
  br label %6, !dbg !2183

6:                                                ; preds = %22, %1
  %7 = load i32, ptr %3, align 4, !dbg !2184
  %8 = icmp slt i32 %7, 8, !dbg !2186
  br i1 %8, label %9, label %25, !dbg !2187

9:                                                ; preds = %6
  %10 = load double, ptr %4, align 8, !dbg !2188
  %11 = load ptr, ptr %2, align 8, !dbg !2190
  %12 = getelementptr inbounds nuw %struct.UInt64, ptr %11, i32 0, i32 0, !dbg !2191
  %13 = load i32, ptr %3, align 4, !dbg !2192
  %14 = sext i32 %13 to i64, !dbg !2190
  %15 = getelementptr inbounds [8 x i8], ptr %12, i64 0, i64 %14, !dbg !2190
  %16 = load i8, ptr %15, align 1, !dbg !2190
  %17 = uitofp i8 %16 to double, !dbg !2193
  %18 = load double, ptr %5, align 8, !dbg !2194
  %19 = call double @llvm.fmuladd.f64(double %10, double %17, double %18), !dbg !2194
  store double %19, ptr %5, align 8, !dbg !2194
  %20 = load double, ptr %4, align 8, !dbg !2195
  %21 = fmul double %20, 2.560000e+02, !dbg !2195
  store double %21, ptr %4, align 8, !dbg !2195
  br label %22, !dbg !2196

22:                                               ; preds = %9
  %23 = load i32, ptr %3, align 4, !dbg !2197
  %24 = add nsw i32 %23, 1, !dbg !2197
  store i32 %24, ptr %3, align 4, !dbg !2197
  br label %6, !dbg !2198, !llvm.loop !2199

25:                                               ; preds = %6
  %26 = load double, ptr %5, align 8, !dbg !2201
  ret double %26, !dbg !2202
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uInt64_toAscii(ptr noundef %0, ptr noundef %1) #0 !dbg !2203 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.UInt64, align 1
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2206, !DIExpression(), !2207)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !2208, !DIExpression(), !2209)
    #dbg_declare(ptr %5, !2210, !DIExpression(), !2211)
    #dbg_declare(ptr %6, !2212, !DIExpression(), !2213)
    #dbg_declare(ptr %7, !2214, !DIExpression(), !2216)
    #dbg_declare(ptr %8, !2217, !DIExpression(), !2218)
  store i32 0, ptr %8, align 4, !dbg !2218
    #dbg_declare(ptr %9, !2219, !DIExpression(), !2220)
  %10 = load ptr, ptr %4, align 8, !dbg !2221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 8, i1 false), !dbg !2222
  br label %11, !dbg !2223

11:                                               ; preds = %21, %2
  %12 = call i32 @uInt64_qrm10(ptr noundef %9), !dbg !2224
  store i32 %12, ptr %6, align 4, !dbg !2226
  %13 = load i32, ptr %6, align 4, !dbg !2227
  %14 = add nsw i32 %13, 48, !dbg !2228
  %15 = trunc i32 %14 to i8, !dbg !2227
  %16 = load i32, ptr %8, align 4, !dbg !2229
  %17 = sext i32 %16 to i64, !dbg !2230
  %18 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 %17, !dbg !2230
  store i8 %15, ptr %18, align 1, !dbg !2231
  %19 = load i32, ptr %8, align 4, !dbg !2232
  %20 = add nsw i32 %19, 1, !dbg !2232
  store i32 %20, ptr %8, align 4, !dbg !2232
  br label %21, !dbg !2233

21:                                               ; preds = %11
  %22 = call zeroext i8 @uInt64_isZero(ptr noundef %9), !dbg !2234
  %23 = icmp ne i8 %22, 0, !dbg !2235
  %24 = xor i1 %23, true, !dbg !2235
  br i1 %24, label %11, label %25, !dbg !2233, !llvm.loop !2236

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 8, !dbg !2238
  %27 = load i32, ptr %8, align 4, !dbg !2239
  %28 = sext i32 %27 to i64, !dbg !2238
  %29 = getelementptr inbounds i8, ptr %26, i64 %28, !dbg !2238
  store i8 0, ptr %29, align 1, !dbg !2240
  store i32 0, ptr %5, align 4, !dbg !2241
  br label %30, !dbg !2243

30:                                               ; preds = %46, %25
  %31 = load i32, ptr %5, align 4, !dbg !2244
  %32 = load i32, ptr %8, align 4, !dbg !2246
  %33 = icmp slt i32 %31, %32, !dbg !2247
  br i1 %33, label %34, label %49, !dbg !2248

34:                                               ; preds = %30
  %35 = load i32, ptr %8, align 4, !dbg !2249
  %36 = load i32, ptr %5, align 4, !dbg !2250
  %37 = sub nsw i32 %35, %36, !dbg !2251
  %38 = sub nsw i32 %37, 1, !dbg !2252
  %39 = sext i32 %38 to i64, !dbg !2253
  %40 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 %39, !dbg !2253
  %41 = load i8, ptr %40, align 1, !dbg !2253
  %42 = load ptr, ptr %3, align 8, !dbg !2254
  %43 = load i32, ptr %5, align 4, !dbg !2255
  %44 = sext i32 %43 to i64, !dbg !2254
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2254
  store i8 %41, ptr %45, align 1, !dbg !2256
  br label %46, !dbg !2254

46:                                               ; preds = %34
  %47 = load i32, ptr %5, align 4, !dbg !2257
  %48 = add nsw i32 %47, 1, !dbg !2257
  store i32 %48, ptr %5, align 4, !dbg !2257
  br label %30, !dbg !2258, !llvm.loop !2259

49:                                               ; preds = %30
  ret void, !dbg !2261
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @configError() #5 !dbg !2262 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2263
  %2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.77) #10, !dbg !2264
  call void @setExit(i32 noundef 3), !dbg !2265
  %3 = load i32, ptr @exitValue, align 4, !dbg !2266
  call void @exit(i32 noundef %3) #13, !dbg !2267
  unreachable, !dbg !2267
}

declare i32 @fgetc(ptr noundef) #1

declare i32 @ungetc(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uInt64_qrm10(ptr noundef %0) #0 !dbg !2268 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2271, !DIExpression(), !2272)
    #dbg_declare(ptr %3, !2273, !DIExpression(), !2274)
    #dbg_declare(ptr %4, !2275, !DIExpression(), !2276)
    #dbg_declare(ptr %5, !2277, !DIExpression(), !2278)
  store i32 0, ptr %3, align 4, !dbg !2279
  store i32 7, ptr %5, align 4, !dbg !2280
  br label %6, !dbg !2282

6:                                                ; preds = %30, %1
  %7 = load i32, ptr %5, align 4, !dbg !2283
  %8 = icmp sge i32 %7, 0, !dbg !2285
  br i1 %8, label %9, label %33, !dbg !2286

9:                                                ; preds = %6
  %10 = load i32, ptr %3, align 4, !dbg !2287
  %11 = mul i32 %10, 256, !dbg !2289
  %12 = load ptr, ptr %2, align 8, !dbg !2290
  %13 = getelementptr inbounds nuw %struct.UInt64, ptr %12, i32 0, i32 0, !dbg !2291
  %14 = load i32, ptr %5, align 4, !dbg !2292
  %15 = sext i32 %14 to i64, !dbg !2290
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 %15, !dbg !2290
  %17 = load i8, ptr %16, align 1, !dbg !2290
  %18 = zext i8 %17 to i32, !dbg !2290
  %19 = add i32 %11, %18, !dbg !2293
  store i32 %19, ptr %4, align 4, !dbg !2294
  %20 = load i32, ptr %4, align 4, !dbg !2295
  %21 = udiv i32 %20, 10, !dbg !2296
  %22 = trunc i32 %21 to i8, !dbg !2295
  %23 = load ptr, ptr %2, align 8, !dbg !2297
  %24 = getelementptr inbounds nuw %struct.UInt64, ptr %23, i32 0, i32 0, !dbg !2298
  %25 = load i32, ptr %5, align 4, !dbg !2299
  %26 = sext i32 %25 to i64, !dbg !2297
  %27 = getelementptr inbounds [8 x i8], ptr %24, i64 0, i64 %26, !dbg !2297
  store i8 %22, ptr %27, align 1, !dbg !2300
  %28 = load i32, ptr %4, align 4, !dbg !2301
  %29 = urem i32 %28, 10, !dbg !2302
  store i32 %29, ptr %3, align 4, !dbg !2303
  br label %30, !dbg !2304

30:                                               ; preds = %9
  %31 = load i32, ptr %5, align 4, !dbg !2305
  %32 = add nsw i32 %31, -1, !dbg !2305
  store i32 %32, ptr %5, align 4, !dbg !2305
  br label %6, !dbg !2306, !llvm.loop !2307

33:                                               ; preds = %6
  %34 = load i32, ptr %3, align 4, !dbg !2309
  ret i32 %34, !dbg !2310
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @uInt64_isZero(ptr noundef %0) #0 !dbg !2311 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2314, !DIExpression(), !2315)
    #dbg_declare(ptr %4, !2316, !DIExpression(), !2317)
  store i32 0, ptr %4, align 4, !dbg !2318
  br label %5, !dbg !2320

5:                                                ; preds = %19, %1
  %6 = load i32, ptr %4, align 4, !dbg !2321
  %7 = icmp slt i32 %6, 8, !dbg !2323
  br i1 %7, label %8, label %22, !dbg !2324

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !dbg !2325
  %10 = getelementptr inbounds nuw %struct.UInt64, ptr %9, i32 0, i32 0, !dbg !2327
  %11 = load i32, ptr %4, align 4, !dbg !2328
  %12 = sext i32 %11 to i64, !dbg !2325
  %13 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 %12, !dbg !2325
  %14 = load i8, ptr %13, align 1, !dbg !2325
  %15 = zext i8 %14 to i32, !dbg !2325
  %16 = icmp ne i32 %15, 0, !dbg !2329
  br i1 %16, label %17, label %18, !dbg !2329

17:                                               ; preds = %8
  store i8 0, ptr %2, align 1, !dbg !2330
  br label %23, !dbg !2330

18:                                               ; preds = %8
  br label %19, !dbg !2331

19:                                               ; preds = %18
  %20 = load i32, ptr %4, align 4, !dbg !2332
  %21 = add nsw i32 %20, 1, !dbg !2332
  store i32 %21, ptr %4, align 4, !dbg !2332
  br label %5, !dbg !2333, !llvm.loop !2334

22:                                               ; preds = %5
  store i8 1, ptr %2, align 1, !dbg !2336
  br label %23, !dbg !2336

23:                                               ; preds = %22, %17
  %24 = load i8, ptr %2, align 1, !dbg !2337
  ret i8 %24, !dbg !2337
}

; Function Attrs: nounwind
declare i32 @chmod(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @utime(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @chown(ptr noundef, i32 noundef, i32 noundef) #2

declare void @perror(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mapSuffix(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2338 {
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2341, !DIExpression(), !2342)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !2343, !DIExpression(), !2344)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !2345, !DIExpression(), !2346)
  %8 = load ptr, ptr %5, align 8, !dbg !2347
  %9 = load ptr, ptr %6, align 8, !dbg !2349
  %10 = call zeroext i8 @hasSuffix(ptr noundef %8, ptr noundef %9), !dbg !2350
  %11 = icmp ne i8 %10, 0, !dbg !2350
  br i1 %11, label %13, label %12, !dbg !2351

12:                                               ; preds = %3
  store i8 0, ptr %4, align 1, !dbg !2352
  br label %24, !dbg !2352

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !2353
  %15 = load ptr, ptr %5, align 8, !dbg !2354
  %16 = call i64 @strlen(ptr noundef %15) #12, !dbg !2355
  %17 = load ptr, ptr %6, align 8, !dbg !2356
  %18 = call i64 @strlen(ptr noundef %17) #12, !dbg !2357
  %19 = sub i64 %16, %18, !dbg !2358
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 %19, !dbg !2353
  store i8 0, ptr %20, align 1, !dbg !2359
  %21 = load ptr, ptr %5, align 8, !dbg !2360
  %22 = load ptr, ptr %7, align 8, !dbg !2361
  %23 = call ptr @strcat(ptr noundef %21, ptr noundef %22) #10, !dbg !2362
  store i8 1, ptr %4, align 1, !dbg !2363
  br label %24, !dbg !2363

24:                                               ; preds = %13, %12
  %25 = load i8, ptr %4, align 1, !dbg !2364
  ret i8 %25, !dbg !2364
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @uncompressStream(ptr noundef %0, ptr noundef %1) #0 !dbg !2365 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5000 x i8], align 16
  %14 = alloca [5000 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2368, !DIExpression(), !2369)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !2370, !DIExpression(), !2371)
    #dbg_declare(ptr %6, !2372, !DIExpression(), !2373)
  store ptr null, ptr %6, align 8, !dbg !2373
    #dbg_declare(ptr %7, !2374, !DIExpression(), !2375)
    #dbg_declare(ptr %8, !2376, !DIExpression(), !2377)
    #dbg_declare(ptr %9, !2378, !DIExpression(), !2379)
    #dbg_declare(ptr %10, !2380, !DIExpression(), !2381)
    #dbg_declare(ptr %11, !2382, !DIExpression(), !2383)
    #dbg_declare(ptr %12, !2384, !DIExpression(), !2385)
    #dbg_declare(ptr %13, !2386, !DIExpression(), !2387)
    #dbg_declare(ptr %14, !2388, !DIExpression(), !2389)
    #dbg_declare(ptr %15, !2390, !DIExpression(), !2391)
    #dbg_declare(ptr %16, !2392, !DIExpression(), !2393)
    #dbg_declare(ptr %17, !2394, !DIExpression(), !2395)
  store i32 0, ptr %15, align 4, !dbg !2396
  store i32 0, ptr %11, align 4, !dbg !2397
  %18 = load ptr, ptr %5, align 8, !dbg !2398
  %19 = call i32 @ferror(ptr noundef %18) #10, !dbg !2400
  %20 = icmp ne i32 %19, 0, !dbg !2400
  br i1 %20, label %21, label %22, !dbg !2400

21:                                               ; preds = %2
  br label %200, !dbg !2401

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8, !dbg !2402
  %24 = call i32 @ferror(ptr noundef %23) #10, !dbg !2404
  %25 = icmp ne i32 %24, 0, !dbg !2404
  br i1 %25, label %26, label %27, !dbg !2404

26:                                               ; preds = %22
  br label %200, !dbg !2405

27:                                               ; preds = %22
  br label %28, !dbg !2406

28:                                               ; preds = %27, %117
  %29 = load ptr, ptr %4, align 8, !dbg !2407
  %30 = load i32, ptr @verbosity, align 4, !dbg !2409
  %31 = load i8, ptr @smallMode, align 1, !dbg !2410
  %32 = zext i8 %31 to i32, !dbg !2411
  %33 = getelementptr inbounds [5000 x i8], ptr %14, i64 0, i64 0, !dbg !2412
  %34 = load i32, ptr %15, align 4, !dbg !2413
  %35 = call ptr @BZ2_bzReadOpen(ptr noundef %7, ptr noundef %29, i32 noundef %30, i32 noundef %32, ptr noundef %33, i32 noundef %34), !dbg !2414
  store ptr %35, ptr %6, align 8, !dbg !2415
  %36 = load ptr, ptr %6, align 8, !dbg !2416
  %37 = icmp eq ptr %36, null, !dbg !2418
  br i1 %37, label %41, label %38, !dbg !2419

38:                                               ; preds = %28
  %39 = load i32, ptr %7, align 4, !dbg !2420
  %40 = icmp ne i32 %39, 0, !dbg !2421
  br i1 %40, label %41, label %42, !dbg !2419

41:                                               ; preds = %38, %28
  br label %195, !dbg !2422

42:                                               ; preds = %38
  %43 = load i32, ptr %11, align 4, !dbg !2423
  %44 = add nsw i32 %43, 1, !dbg !2423
  store i32 %44, ptr %11, align 4, !dbg !2423
  br label %45, !dbg !2424

45:                                               ; preds = %75, %42
  %46 = load i32, ptr %7, align 4, !dbg !2425
  %47 = icmp eq i32 %46, 0, !dbg !2426
  br i1 %47, label %48, label %76, !dbg !2424

48:                                               ; preds = %45
  %49 = load ptr, ptr %6, align 8, !dbg !2427
  %50 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !2429
  %51 = call i32 @BZ2_bzRead(ptr noundef %7, ptr noundef %49, ptr noundef %50, i32 noundef 5000), !dbg !2430
  store i32 %51, ptr %10, align 4, !dbg !2431
  %52 = load i32, ptr %7, align 4, !dbg !2432
  %53 = icmp eq i32 %52, -5, !dbg !2434
  br i1 %53, label %54, label %55, !dbg !2434

54:                                               ; preds = %48
  br label %159, !dbg !2435

55:                                               ; preds = %48
  %56 = load i32, ptr %7, align 4, !dbg !2436
  %57 = icmp eq i32 %56, 0, !dbg !2438
  br i1 %57, label %61, label %58, !dbg !2439

58:                                               ; preds = %55
  %59 = load i32, ptr %7, align 4, !dbg !2440
  %60 = icmp eq i32 %59, 4, !dbg !2441
  br i1 %60, label %61, label %70, !dbg !2442

61:                                               ; preds = %58, %55
  %62 = load i32, ptr %10, align 4, !dbg !2443
  %63 = icmp sgt i32 %62, 0, !dbg !2444
  br i1 %63, label %64, label %70, !dbg !2442

64:                                               ; preds = %61
  %65 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !2445
  %66 = load i32, ptr %10, align 4, !dbg !2446
  %67 = sext i32 %66 to i64, !dbg !2446
  %68 = load ptr, ptr %5, align 8, !dbg !2447
  %69 = call i64 @fwrite(ptr noundef %65, i64 noundef 1, i64 noundef %67, ptr noundef %68), !dbg !2448
  br label %70, !dbg !2448

70:                                               ; preds = %64, %61, %58
  %71 = load ptr, ptr %5, align 8, !dbg !2449
  %72 = call i32 @ferror(ptr noundef %71) #10, !dbg !2451
  %73 = icmp ne i32 %72, 0, !dbg !2451
  br i1 %73, label %74, label %75, !dbg !2451

74:                                               ; preds = %70
  br label %200, !dbg !2452

75:                                               ; preds = %70
  br label %45, !dbg !2424, !llvm.loop !2453

76:                                               ; preds = %45
  %77 = load i32, ptr %7, align 4, !dbg !2455
  %78 = icmp ne i32 %77, 4, !dbg !2457
  br i1 %78, label %79, label %80, !dbg !2457

79:                                               ; preds = %76
  br label %195, !dbg !2458

80:                                               ; preds = %76
  %81 = load ptr, ptr %6, align 8, !dbg !2459
  call void @BZ2_bzReadGetUnused(ptr noundef %7, ptr noundef %81, ptr noundef %16, ptr noundef %15), !dbg !2460
  %82 = load i32, ptr %7, align 4, !dbg !2461
  %83 = icmp ne i32 %82, 0, !dbg !2463
  br i1 %83, label %84, label %85, !dbg !2463

84:                                               ; preds = %80
  call void @panic(ptr noundef @.str.88) #11, !dbg !2464
  unreachable, !dbg !2464

85:                                               ; preds = %80
  %86 = load ptr, ptr %16, align 8, !dbg !2465
  store ptr %86, ptr %17, align 8, !dbg !2466
  store i32 0, ptr %12, align 4, !dbg !2467
  br label %87, !dbg !2469

87:                                               ; preds = %100, %85
  %88 = load i32, ptr %12, align 4, !dbg !2470
  %89 = load i32, ptr %15, align 4, !dbg !2472
  %90 = icmp slt i32 %88, %89, !dbg !2473
  br i1 %90, label %91, label %103, !dbg !2474

91:                                               ; preds = %87
  %92 = load ptr, ptr %17, align 8, !dbg !2475
  %93 = load i32, ptr %12, align 4, !dbg !2476
  %94 = sext i32 %93 to i64, !dbg !2475
  %95 = getelementptr inbounds i8, ptr %92, i64 %94, !dbg !2475
  %96 = load i8, ptr %95, align 1, !dbg !2475
  %97 = load i32, ptr %12, align 4, !dbg !2477
  %98 = sext i32 %97 to i64, !dbg !2478
  %99 = getelementptr inbounds [5000 x i8], ptr %14, i64 0, i64 %98, !dbg !2478
  store i8 %96, ptr %99, align 1, !dbg !2479
  br label %100, !dbg !2478

100:                                              ; preds = %91
  %101 = load i32, ptr %12, align 4, !dbg !2480
  %102 = add nsw i32 %101, 1, !dbg !2480
  store i32 %102, ptr %12, align 4, !dbg !2480
  br label %87, !dbg !2481, !llvm.loop !2482

103:                                              ; preds = %87
  %104 = load ptr, ptr %6, align 8, !dbg !2484
  call void @BZ2_bzReadClose(ptr noundef %7, ptr noundef %104), !dbg !2485
  %105 = load i32, ptr %7, align 4, !dbg !2486
  %106 = icmp ne i32 %105, 0, !dbg !2488
  br i1 %106, label %107, label %108, !dbg !2488

107:                                              ; preds = %103
  call void @panic(ptr noundef @.str.88) #11, !dbg !2489
  unreachable, !dbg !2489

108:                                              ; preds = %103
  %109 = load i32, ptr %15, align 4, !dbg !2490
  %110 = icmp eq i32 %109, 0, !dbg !2492
  br i1 %110, label %111, label %117, !dbg !2493

111:                                              ; preds = %108
  %112 = load ptr, ptr %4, align 8, !dbg !2494
  %113 = call zeroext i8 @myfeof(ptr noundef %112), !dbg !2495
  %114 = zext i8 %113 to i32, !dbg !2495
  %115 = icmp ne i32 %114, 0, !dbg !2495
  br i1 %115, label %116, label %117, !dbg !2493

116:                                              ; preds = %111
  br label %118, !dbg !2496

117:                                              ; preds = %111, %108
  br label %28, !dbg !2406, !llvm.loop !2497

118:                                              ; preds = %116
  br label %119, !dbg !2406

119:                                              ; preds = %193, %118
    #dbg_label(!2499, !2500)
  %120 = load ptr, ptr %4, align 8, !dbg !2501
  %121 = call i32 @ferror(ptr noundef %120) #10, !dbg !2503
  %122 = icmp ne i32 %121, 0, !dbg !2503
  br i1 %122, label %123, label %124, !dbg !2503

123:                                              ; preds = %119
  br label %200, !dbg !2504

124:                                              ; preds = %119
  %125 = load ptr, ptr %4, align 8, !dbg !2505
  %126 = call i32 @fclose(ptr noundef %125), !dbg !2506
  store i32 %126, ptr %9, align 4, !dbg !2507
  %127 = load i32, ptr %9, align 4, !dbg !2508
  %128 = icmp eq i32 %127, -1, !dbg !2510
  br i1 %128, label %129, label %130, !dbg !2510

129:                                              ; preds = %124
  br label %200, !dbg !2511

130:                                              ; preds = %124
  %131 = load ptr, ptr %5, align 8, !dbg !2512
  %132 = call i32 @ferror(ptr noundef %131) #10, !dbg !2514
  %133 = icmp ne i32 %132, 0, !dbg !2514
  br i1 %133, label %134, label %135, !dbg !2514

134:                                              ; preds = %130
  br label %200, !dbg !2515

135:                                              ; preds = %130
  %136 = load ptr, ptr %5, align 8, !dbg !2516
  %137 = call i32 @fflush(ptr noundef %136), !dbg !2517
  store i32 %137, ptr %9, align 4, !dbg !2518
  %138 = load i32, ptr %9, align 4, !dbg !2519
  %139 = icmp ne i32 %138, 0, !dbg !2521
  br i1 %139, label %140, label %141, !dbg !2521

140:                                              ; preds = %135
  br label %200, !dbg !2522

141:                                              ; preds = %135
  %142 = load ptr, ptr %5, align 8, !dbg !2523
  %143 = load ptr, ptr @stdout, align 8, !dbg !2525
  %144 = icmp ne ptr %142, %143, !dbg !2526
  br i1 %144, label %145, label %152, !dbg !2526

145:                                              ; preds = %141
  %146 = load ptr, ptr %5, align 8, !dbg !2527
  %147 = call i32 @fclose(ptr noundef %146), !dbg !2529
  store i32 %147, ptr %9, align 4, !dbg !2530
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !2531
  %148 = load i32, ptr %9, align 4, !dbg !2532
  %149 = icmp eq i32 %148, -1, !dbg !2534
  br i1 %149, label %150, label %151, !dbg !2534

150:                                              ; preds = %145
  br label %200, !dbg !2535

151:                                              ; preds = %145
  br label %152, !dbg !2536

152:                                              ; preds = %151, %141
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !2537
  %153 = load i32, ptr @verbosity, align 4, !dbg !2538
  %154 = icmp sge i32 %153, 2, !dbg !2540
  br i1 %154, label %155, label %158, !dbg !2540

155:                                              ; preds = %152
  %156 = load ptr, ptr @stderr, align 8, !dbg !2541
  %157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef @.str.89) #10, !dbg !2542
  br label %158, !dbg !2542

158:                                              ; preds = %155, %152
  store i8 1, ptr %3, align 1, !dbg !2543
  br label %231, !dbg !2543

159:                                              ; preds = %54
    #dbg_label(!2544, !2545)
  %160 = load i8, ptr @forceOverwrite, align 1, !dbg !2546
  %161 = icmp ne i8 %160, 0, !dbg !2546
  br i1 %161, label %162, label %194, !dbg !2546

162:                                              ; preds = %159
  %163 = load ptr, ptr %4, align 8, !dbg !2548
  call void @rewind(ptr noundef %163), !dbg !2550
  br label %164, !dbg !2551

164:                                              ; preds = %162, %192
  %165 = load ptr, ptr %4, align 8, !dbg !2552
  %166 = call zeroext i8 @myfeof(ptr noundef %165), !dbg !2555
  %167 = icmp ne i8 %166, 0, !dbg !2555
  br i1 %167, label %168, label %169, !dbg !2555

168:                                              ; preds = %164
  br label %193, !dbg !2556

169:                                              ; preds = %164
  %170 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !2557
  %171 = load ptr, ptr %4, align 8, !dbg !2558
  %172 = call i64 @fread(ptr noundef %170, i64 noundef 1, i64 noundef 5000, ptr noundef %171), !dbg !2559
  %173 = trunc i64 %172 to i32, !dbg !2559
  store i32 %173, ptr %10, align 4, !dbg !2560
  %174 = load ptr, ptr %4, align 8, !dbg !2561
  %175 = call i32 @ferror(ptr noundef %174) #10, !dbg !2563
  %176 = icmp ne i32 %175, 0, !dbg !2563
  br i1 %176, label %177, label %178, !dbg !2563

177:                                              ; preds = %169
  br label %200, !dbg !2564

178:                                              ; preds = %169
  %179 = load i32, ptr %10, align 4, !dbg !2565
  %180 = icmp sgt i32 %179, 0, !dbg !2567
  br i1 %180, label %181, label %187, !dbg !2567

181:                                              ; preds = %178
  %182 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !2568
  %183 = load i32, ptr %10, align 4, !dbg !2569
  %184 = sext i32 %183 to i64, !dbg !2569
  %185 = load ptr, ptr %5, align 8, !dbg !2570
  %186 = call i64 @fwrite(ptr noundef %182, i64 noundef 1, i64 noundef %184, ptr noundef %185), !dbg !2571
  br label %187, !dbg !2571

187:                                              ; preds = %181, %178
  %188 = load ptr, ptr %5, align 8, !dbg !2572
  %189 = call i32 @ferror(ptr noundef %188) #10, !dbg !2574
  %190 = icmp ne i32 %189, 0, !dbg !2574
  br i1 %190, label %191, label %192, !dbg !2574

191:                                              ; preds = %187
  br label %200, !dbg !2575

192:                                              ; preds = %187
  br label %164, !dbg !2551, !llvm.loop !2576

193:                                              ; preds = %168
  br label %119, !dbg !2578

194:                                              ; preds = %159
  br label %195, !dbg !2546

195:                                              ; preds = %194, %79, %41
    #dbg_label(!2579, !2580)
  %196 = load ptr, ptr %6, align 8, !dbg !2581
  call void @BZ2_bzReadClose(ptr noundef %8, ptr noundef %196), !dbg !2582
  %197 = load i32, ptr %7, align 4, !dbg !2583
  switch i32 %197, label %230 [
    i32 -9, label %198
    i32 -6, label %199
    i32 -4, label %201
    i32 -3, label %202
    i32 -7, label %203
    i32 -5, label %204
  ], !dbg !2584

198:                                              ; preds = %195
  call void @configError() #11, !dbg !2585
  unreachable, !dbg !2585

199:                                              ; preds = %195
  br label %200, !dbg !2585

200:                                              ; preds = %199, %191, %177, %150, %140, %134, %129, %123, %74, %26, %21
    #dbg_label(!2587, !2588)
  call void @ioError() #11, !dbg !2589
  unreachable, !dbg !2589

201:                                              ; preds = %195
  call void @crcError() #11, !dbg !2590
  unreachable, !dbg !2590

202:                                              ; preds = %195
  call void @outOfMemory() #11, !dbg !2591
  unreachable, !dbg !2591

203:                                              ; preds = %195
  call void @compressedStreamEOF() #11, !dbg !2592
  unreachable, !dbg !2592

204:                                              ; preds = %195
  %205 = load ptr, ptr %4, align 8, !dbg !2593
  %206 = load ptr, ptr @stdin, align 8, !dbg !2595
  %207 = icmp ne ptr %205, %206, !dbg !2596
  br i1 %207, label %208, label %211, !dbg !2596

208:                                              ; preds = %204
  %209 = load ptr, ptr %4, align 8, !dbg !2597
  %210 = call i32 @fclose(ptr noundef %209), !dbg !2598
  br label %211, !dbg !2598

211:                                              ; preds = %208, %204
  %212 = load ptr, ptr %5, align 8, !dbg !2599
  %213 = load ptr, ptr @stdout, align 8, !dbg !2601
  %214 = icmp ne ptr %212, %213, !dbg !2602
  br i1 %214, label %215, label %218, !dbg !2602

215:                                              ; preds = %211
  %216 = load ptr, ptr %5, align 8, !dbg !2603
  %217 = call i32 @fclose(ptr noundef %216), !dbg !2604
  br label %218, !dbg !2604

218:                                              ; preds = %215, %211
  %219 = load i32, ptr %11, align 4, !dbg !2605
  %220 = icmp eq i32 %219, 1, !dbg !2607
  br i1 %220, label %221, label %222, !dbg !2607

221:                                              ; preds = %218
  store i8 0, ptr %3, align 1, !dbg !2608
  br label %231, !dbg !2608

222:                                              ; preds = %218
  %223 = load i8, ptr @noisy, align 1, !dbg !2610
  %224 = icmp ne i8 %223, 0, !dbg !2610
  br i1 %224, label %225, label %229, !dbg !2610

225:                                              ; preds = %222
  %226 = load ptr, ptr @stderr, align 8, !dbg !2613
  %227 = load ptr, ptr @progName, align 8, !dbg !2614
  %228 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef @.str.90, ptr noundef %227, ptr noundef @inName) #10, !dbg !2615
  br label %229, !dbg !2615

229:                                              ; preds = %225, %222
  store i8 1, ptr %3, align 1, !dbg !2616
  br label %231, !dbg !2616

230:                                              ; preds = %195
  call void @panic(ptr noundef @.str.91) #11, !dbg !2617
  unreachable, !dbg !2617

231:                                              ; preds = %229, %221, %158
  %232 = load i8, ptr %3, align 1, !dbg !2618
  ret i8 %232, !dbg !2618
}

declare ptr @BZ2_bzReadOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @BZ2_bzRead(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare void @BZ2_bzReadGetUnused(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @BZ2_bzReadClose(ptr noundef, ptr noundef) #1

declare void @rewind(ptr noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @crcError() #5 !dbg !2619 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2620
  %2 = load ptr, ptr @progName, align 8, !dbg !2621
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.92, ptr noundef %2) #10, !dbg !2622
  call void @showFileNames(), !dbg !2623
  call void @cadvise(), !dbg !2624
  call void @cleanUpAndFail(i32 noundef 2) #11, !dbg !2625
  unreachable, !dbg !2625
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @compressedStreamEOF() #5 !dbg !2626 {
  %1 = load i8, ptr @noisy, align 1, !dbg !2627
  %2 = icmp ne i8 %1, 0, !dbg !2627
  br i1 %2, label %3, label %8, !dbg !2627

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !2629
  %5 = load ptr, ptr @progName, align 8, !dbg !2631
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.93, ptr noundef %5) #10, !dbg !2632
  %7 = load ptr, ptr @progName, align 8, !dbg !2633
  call void @perror(ptr noundef %7), !dbg !2634
  call void @showFileNames(), !dbg !2635
  call void @cadvise(), !dbg !2636
  br label %8, !dbg !2637

8:                                                ; preds = %3, %0
  call void @cleanUpAndFail(i32 noundef 2) #11, !dbg !2638
  unreachable, !dbg !2638
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @testStream(ptr noundef %0) #0 !dbg !2639 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5000 x i8], align 16
  %12 = alloca [5000 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2640, !DIExpression(), !2641)
    #dbg_declare(ptr %4, !2642, !DIExpression(), !2643)
  store ptr null, ptr %4, align 8, !dbg !2643
    #dbg_declare(ptr %5, !2644, !DIExpression(), !2645)
    #dbg_declare(ptr %6, !2646, !DIExpression(), !2647)
    #dbg_declare(ptr %7, !2648, !DIExpression(), !2649)
    #dbg_declare(ptr %8, !2650, !DIExpression(), !2651)
    #dbg_declare(ptr %9, !2652, !DIExpression(), !2653)
    #dbg_declare(ptr %10, !2654, !DIExpression(), !2655)
    #dbg_declare(ptr %11, !2656, !DIExpression(), !2657)
    #dbg_declare(ptr %12, !2658, !DIExpression(), !2659)
    #dbg_declare(ptr %13, !2660, !DIExpression(), !2661)
    #dbg_declare(ptr %14, !2662, !DIExpression(), !2663)
    #dbg_declare(ptr %15, !2664, !DIExpression(), !2665)
  store i32 0, ptr %13, align 4, !dbg !2666
  store i32 0, ptr %9, align 4, !dbg !2667
  %16 = load ptr, ptr %3, align 8, !dbg !2668
  %17 = call i32 @ferror(ptr noundef %16) #10, !dbg !2670
  %18 = icmp ne i32 %17, 0, !dbg !2670
  br i1 %18, label %19, label %20, !dbg !2670

19:                                               ; preds = %1
  br label %121, !dbg !2671

20:                                               ; preds = %1
  br label %21, !dbg !2672

21:                                               ; preds = %20, %90
  %22 = load ptr, ptr %3, align 8, !dbg !2673
  %23 = load i32, ptr @verbosity, align 4, !dbg !2675
  %24 = load i8, ptr @smallMode, align 1, !dbg !2676
  %25 = zext i8 %24 to i32, !dbg !2677
  %26 = getelementptr inbounds [5000 x i8], ptr %12, i64 0, i64 0, !dbg !2678
  %27 = load i32, ptr %13, align 4, !dbg !2679
  %28 = call ptr @BZ2_bzReadOpen(ptr noundef %5, ptr noundef %22, i32 noundef %23, i32 noundef %25, ptr noundef %26, i32 noundef %27), !dbg !2680
  store ptr %28, ptr %4, align 8, !dbg !2681
  %29 = load ptr, ptr %4, align 8, !dbg !2682
  %30 = icmp eq ptr %29, null, !dbg !2684
  br i1 %30, label %34, label %31, !dbg !2685

31:                                               ; preds = %21
  %32 = load i32, ptr %5, align 4, !dbg !2686
  %33 = icmp ne i32 %32, 0, !dbg !2687
  br i1 %33, label %34, label %35, !dbg !2685

34:                                               ; preds = %31, %21
  br label %109, !dbg !2688

35:                                               ; preds = %31
  %36 = load i32, ptr %9, align 4, !dbg !2689
  %37 = add nsw i32 %36, 1, !dbg !2689
  store i32 %37, ptr %9, align 4, !dbg !2689
  br label %38, !dbg !2690

38:                                               ; preds = %48, %35
  %39 = load i32, ptr %5, align 4, !dbg !2691
  %40 = icmp eq i32 %39, 0, !dbg !2692
  br i1 %40, label %41, label %49, !dbg !2690

41:                                               ; preds = %38
  %42 = load ptr, ptr %4, align 8, !dbg !2693
  %43 = getelementptr inbounds [5000 x i8], ptr %11, i64 0, i64 0, !dbg !2695
  %44 = call i32 @BZ2_bzRead(ptr noundef %5, ptr noundef %42, ptr noundef %43, i32 noundef 5000), !dbg !2696
  store i32 %44, ptr %8, align 4, !dbg !2697
  %45 = load i32, ptr %5, align 4, !dbg !2698
  %46 = icmp eq i32 %45, -5, !dbg !2700
  br i1 %46, label %47, label %48, !dbg !2700

47:                                               ; preds = %41
  br label %109, !dbg !2701

48:                                               ; preds = %41
  br label %38, !dbg !2690, !llvm.loop !2702

49:                                               ; preds = %38
  %50 = load i32, ptr %5, align 4, !dbg !2704
  %51 = icmp ne i32 %50, 4, !dbg !2706
  br i1 %51, label %52, label %53, !dbg !2706

52:                                               ; preds = %49
  br label %109, !dbg !2707

53:                                               ; preds = %49
  %54 = load ptr, ptr %4, align 8, !dbg !2708
  call void @BZ2_bzReadGetUnused(ptr noundef %5, ptr noundef %54, ptr noundef %14, ptr noundef %13), !dbg !2709
  %55 = load i32, ptr %5, align 4, !dbg !2710
  %56 = icmp ne i32 %55, 0, !dbg !2712
  br i1 %56, label %57, label %58, !dbg !2712

57:                                               ; preds = %53
  call void @panic(ptr noundef @.str.98) #11, !dbg !2713
  unreachable, !dbg !2713

58:                                               ; preds = %53
  %59 = load ptr, ptr %14, align 8, !dbg !2714
  store ptr %59, ptr %15, align 8, !dbg !2715
  store i32 0, ptr %10, align 4, !dbg !2716
  br label %60, !dbg !2718

60:                                               ; preds = %73, %58
  %61 = load i32, ptr %10, align 4, !dbg !2719
  %62 = load i32, ptr %13, align 4, !dbg !2721
  %63 = icmp slt i32 %61, %62, !dbg !2722
  br i1 %63, label %64, label %76, !dbg !2723

64:                                               ; preds = %60
  %65 = load ptr, ptr %15, align 8, !dbg !2724
  %66 = load i32, ptr %10, align 4, !dbg !2725
  %67 = sext i32 %66 to i64, !dbg !2724
  %68 = getelementptr inbounds i8, ptr %65, i64 %67, !dbg !2724
  %69 = load i8, ptr %68, align 1, !dbg !2724
  %70 = load i32, ptr %10, align 4, !dbg !2726
  %71 = sext i32 %70 to i64, !dbg !2727
  %72 = getelementptr inbounds [5000 x i8], ptr %12, i64 0, i64 %71, !dbg !2727
  store i8 %69, ptr %72, align 1, !dbg !2728
  br label %73, !dbg !2727

73:                                               ; preds = %64
  %74 = load i32, ptr %10, align 4, !dbg !2729
  %75 = add nsw i32 %74, 1, !dbg !2729
  store i32 %75, ptr %10, align 4, !dbg !2729
  br label %60, !dbg !2730, !llvm.loop !2731

76:                                               ; preds = %60
  %77 = load ptr, ptr %4, align 8, !dbg !2733
  call void @BZ2_bzReadClose(ptr noundef %5, ptr noundef %77), !dbg !2734
  %78 = load i32, ptr %5, align 4, !dbg !2735
  %79 = icmp ne i32 %78, 0, !dbg !2737
  br i1 %79, label %80, label %81, !dbg !2737

80:                                               ; preds = %76
  call void @panic(ptr noundef @.str.98) #11, !dbg !2738
  unreachable, !dbg !2738

81:                                               ; preds = %76
  %82 = load i32, ptr %13, align 4, !dbg !2739
  %83 = icmp eq i32 %82, 0, !dbg !2741
  br i1 %83, label %84, label %90, !dbg !2742

84:                                               ; preds = %81
  %85 = load ptr, ptr %3, align 8, !dbg !2743
  %86 = call zeroext i8 @myfeof(ptr noundef %85), !dbg !2744
  %87 = zext i8 %86 to i32, !dbg !2744
  %88 = icmp ne i32 %87, 0, !dbg !2744
  br i1 %88, label %89, label %90, !dbg !2742

89:                                               ; preds = %84
  br label %91, !dbg !2745

90:                                               ; preds = %84, %81
  br label %21, !dbg !2672, !llvm.loop !2746

91:                                               ; preds = %89
  %92 = load ptr, ptr %3, align 8, !dbg !2748
  %93 = call i32 @ferror(ptr noundef %92) #10, !dbg !2750
  %94 = icmp ne i32 %93, 0, !dbg !2750
  br i1 %94, label %95, label %96, !dbg !2750

95:                                               ; preds = %91
  br label %121, !dbg !2751

96:                                               ; preds = %91
  %97 = load ptr, ptr %3, align 8, !dbg !2752
  %98 = call i32 @fclose(ptr noundef %97), !dbg !2753
  store i32 %98, ptr %7, align 4, !dbg !2754
  %99 = load i32, ptr %7, align 4, !dbg !2755
  %100 = icmp eq i32 %99, -1, !dbg !2757
  br i1 %100, label %101, label %102, !dbg !2757

101:                                              ; preds = %96
  br label %121, !dbg !2758

102:                                              ; preds = %96
  %103 = load i32, ptr @verbosity, align 4, !dbg !2759
  %104 = icmp sge i32 %103, 2, !dbg !2761
  br i1 %104, label %105, label %108, !dbg !2761

105:                                              ; preds = %102
  %106 = load ptr, ptr @stderr, align 8, !dbg !2762
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str.89) #10, !dbg !2763
  br label %108, !dbg !2763

108:                                              ; preds = %105, %102
  store i8 1, ptr %2, align 1, !dbg !2764
  br label %150, !dbg !2764

109:                                              ; preds = %52, %47, %34
    #dbg_label(!2765, !2766)
  %110 = load ptr, ptr %4, align 8, !dbg !2767
  call void @BZ2_bzReadClose(ptr noundef %6, ptr noundef %110), !dbg !2768
  %111 = load i32, ptr @verbosity, align 4, !dbg !2769
  %112 = icmp eq i32 %111, 0, !dbg !2771
  br i1 %112, label %113, label %117, !dbg !2771

113:                                              ; preds = %109
  %114 = load ptr, ptr @stderr, align 8, !dbg !2772
  %115 = load ptr, ptr @progName, align 8, !dbg !2773
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.99, ptr noundef %115, ptr noundef @inName) #10, !dbg !2774
  br label %117, !dbg !2774

117:                                              ; preds = %113, %109
  %118 = load i32, ptr %5, align 4, !dbg !2775
  switch i32 %118, label %149 [
    i32 -9, label %119
    i32 -6, label %120
    i32 -4, label %122
    i32 -3, label %125
    i32 -7, label %126
    i32 -5, label %129
  ], !dbg !2776

119:                                              ; preds = %117
  call void @configError() #11, !dbg !2777
  unreachable, !dbg !2777

120:                                              ; preds = %117
  br label %121, !dbg !2777

121:                                              ; preds = %120, %101, %95, %19
    #dbg_label(!2779, !2780)
  call void @ioError() #11, !dbg !2781
  unreachable, !dbg !2781

122:                                              ; preds = %117
  %123 = load ptr, ptr @stderr, align 8, !dbg !2782
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str.100) #10, !dbg !2783
  store i8 0, ptr %2, align 1, !dbg !2784
  br label %150, !dbg !2784

125:                                              ; preds = %117
  call void @outOfMemory() #11, !dbg !2785
  unreachable, !dbg !2785

126:                                              ; preds = %117
  %127 = load ptr, ptr @stderr, align 8, !dbg !2786
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.101) #10, !dbg !2787
  store i8 0, ptr %2, align 1, !dbg !2788
  br label %150, !dbg !2788

129:                                              ; preds = %117
  %130 = load ptr, ptr %3, align 8, !dbg !2789
  %131 = load ptr, ptr @stdin, align 8, !dbg !2791
  %132 = icmp ne ptr %130, %131, !dbg !2792
  br i1 %132, label %133, label %136, !dbg !2792

133:                                              ; preds = %129
  %134 = load ptr, ptr %3, align 8, !dbg !2793
  %135 = call i32 @fclose(ptr noundef %134), !dbg !2794
  br label %136, !dbg !2794

136:                                              ; preds = %133, %129
  %137 = load i32, ptr %9, align 4, !dbg !2795
  %138 = icmp eq i32 %137, 1, !dbg !2797
  br i1 %138, label %139, label %142, !dbg !2797

139:                                              ; preds = %136
  %140 = load ptr, ptr @stderr, align 8, !dbg !2798
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.102) #10, !dbg !2800
  store i8 0, ptr %2, align 1, !dbg !2801
  br label %150, !dbg !2801

142:                                              ; preds = %136
  %143 = load i8, ptr @noisy, align 1, !dbg !2802
  %144 = icmp ne i8 %143, 0, !dbg !2802
  br i1 %144, label %145, label %148, !dbg !2802

145:                                              ; preds = %142
  %146 = load ptr, ptr @stderr, align 8, !dbg !2805
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef @.str.103) #10, !dbg !2806
  br label %148, !dbg !2806

148:                                              ; preds = %145, %142
  store i8 1, ptr %2, align 1, !dbg !2807
  br label %150, !dbg !2807

149:                                              ; preds = %117
  call void @panic(ptr noundef @.str.104) #11, !dbg !2808
  unreachable, !dbg !2808

150:                                              ; preds = %148, %139, %126, %122, %108
  %151 = load i8, ptr %2, align 1, !dbg !2809
  ret i8 %151, !dbg !2809
}

declare void @__llvm_autojit_materialize(ptr)

; Function Attrs: nounwind
define internal void @_GLOBAL__sub_I_bzip2.c_llvm_autojit_init() #10 section ".text.startup" {
  call void @__llvm_autojit_register(ptr @__llvm_autojit_lazy_file)
  ret void
}

declare void @__llvm_autojit_register(ptr)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!562, !563, !564, !565, !566, !567, !568}
!llvm.ident = !{!569}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1179, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bzip2.c", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_autojit_shlib", checksumkind: CSK_MD5, checksum: "55ce71ce9a75c8d9e83fb5784d0ea062")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1179, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1179, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1179, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "zSuffix", scope: !21, file: !2, line: 1178, type: !71, isLocal: false, isDefinition: true)
!21 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 21.1.5 (++20251023083201+45afac62e373-1~exp1~20251023083316.53)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !39, globals: !61, splitDebugInlining: false, nameTableKind: None)
!22 = !{!23}
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 46, baseType: !25, size: 32, elements: !26)
!24 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!27 = !DIEnumerator(name: "_ISupper", value: 256)
!28 = !DIEnumerator(name: "_ISlower", value: 512)
!29 = !DIEnumerator(name: "_ISalpha", value: 1024)
!30 = !DIEnumerator(name: "_ISdigit", value: 2048)
!31 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!32 = !DIEnumerator(name: "_ISspace", value: 8192)
!33 = !DIEnumerator(name: "_ISprint", value: 16384)
!34 = !DIEnumerator(name: "_ISgraph", value: 32768)
!35 = !DIEnumerator(name: "_ISblank", value: 1)
!36 = !DIEnumerator(name: "_IScntrl", value: 2)
!37 = !DIEnumerator(name: "_ISpunct", value: 4)
!38 = !DIEnumerator(name: "_ISalnum", value: 8)
!39 = !{!40, !41, !43, !44, !45, !46, !48, !55, !58, !59, !60}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !2, line: 254, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "Int32", file: !2, line: 256, baseType: !44)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "Char", file: !2, line: 253, baseType: !4)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cell", file: !2, line: 1772, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zzzz", file: !2, line: 1768, size: 128, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !2, line: 1769, baseType: !46, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !50, file: !2, line: 1770, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 18, baseType: !57)
!56 = !DIFile(filename: "/usr/lib/llvm-21/lib/clang/21/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !2, line: 255, baseType: !42)
!59 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!61 = !{!0, !7, !12, !17, !19, !62, !67, !69, !72, !77, !79, !81, !86, !88, !90, !92, !94, !96, !98, !103, !108, !113, !118, !123, !125, !127, !129, !131, !136, !138, !143, !148, !150, !152, !154, !156, !158, !163, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !203, !205, !207, !209, !211, !266, !268, !273, !278, !283, !288, !293, !298, !303, !308, !313, !318, !323, !328, !333, !338, !343, !345, !350, !355, !357, !359, !364, !369, !374, !376, !381, !383, !385, !390, !395, !400, !402, !404, !406, !411, !413, !418, !454, !456, !458, !460, !465, !470, !475, !480, !485, !487, !489, !494, !496, !501, !503, !505, !510, !515, !517, !519, !524, !529, !534, !536, !541, !543, !545, !547, !549, !551, !553, !558, !560}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1181, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 1)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1181, type: !3, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "unzSuffix", scope: !21, file: !2, line: 1180, type: !71, isLocal: false, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !10)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1888, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 7)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1901, type: !14, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1902, type: !3, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1912, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1929, type: !14, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1930, type: !14, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1933, type: !14, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1934, type: !14, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1935, type: !3, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1936, type: !3, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1971, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 19)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1984, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 9)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1985, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 13)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1986, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 11)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1987, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 8)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1988, type: !74, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1989, type: !74, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1990, type: !120, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1991, type: !120, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1992, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 10)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1993, type: !133, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1994, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 14)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1995, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 18)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1996, type: !145, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1997, type: !74, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1998, type: !74, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1999, type: !133, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2000, type: !74, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2014, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 40)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2081, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 904, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 113)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "verbosity", scope: !21, file: !2, line: 275, type: !43, isLocal: false, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "keepInputFiles", scope: !21, file: !2, line: 276, type: !41, isLocal: false, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "smallMode", scope: !21, file: !2, line: 276, type: !41, isLocal: false, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "deleteOutputOnInterrupt", scope: !21, file: !2, line: 276, type: !41, isLocal: false, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "forceOverwrite", scope: !21, file: !2, line: 277, type: !41, isLocal: false, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "testFailsExist", scope: !21, file: !2, line: 277, type: !41, isLocal: false, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "unzFailsExist", scope: !21, file: !2, line: 277, type: !41, isLocal: false, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "noisy", scope: !21, file: !2, line: 277, type: !41, isLocal: false, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "numFileNames", scope: !21, file: !2, line: 278, type: !43, isLocal: false, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "numFilesProcessed", scope: !21, file: !2, line: 278, type: !43, isLocal: false, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "blockSize100k", scope: !21, file: !2, line: 278, type: !43, isLocal: false, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "exitValue", scope: !21, file: !2, line: 279, type: !43, isLocal: false, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "opMode", scope: !21, file: !2, line: 291, type: !43, isLocal: false, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "srcMode", scope: !21, file: !2, line: 292, type: !43, isLocal: false, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "longestFileName", scope: !21, file: !2, line: 296, type: !43, isLocal: false, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "inName", scope: !21, file: !2, line: 297, type: !200, isLocal: false, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8272, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 1034)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "outName", scope: !21, file: !2, line: 298, type: !200, isLocal: false, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "tmpName", scope: !21, file: !2, line: 299, type: !200, isLocal: false, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "progName", scope: !21, file: !2, line: 300, type: !46, isLocal: false, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "progNameReally", scope: !21, file: !2, line: 301, type: !200, isLocal: false, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "outputHandleJustInCase", scope: !21, file: !2, line: 302, type: !213, isLocal: false, isDefinition: true)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !215, line: 7, baseType: !216)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !217, line: 49, size: 1728, elements: !218)
!217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!218 = !{!219, !220, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !235, !237, !238, !239, !243, !244, !246, !247, !250, !252, !255, !258, !259, !260, !261, !262}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !216, file: !217, line: 51, baseType: !44, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !216, file: !217, line: 54, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !216, file: !217, line: 55, baseType: !221, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !216, file: !217, line: 56, baseType: !221, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !216, file: !217, line: 57, baseType: !221, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !216, file: !217, line: 58, baseType: !221, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !216, file: !217, line: 59, baseType: !221, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !216, file: !217, line: 60, baseType: !221, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !216, file: !217, line: 61, baseType: !221, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !216, file: !217, line: 64, baseType: !221, size: 64, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !216, file: !217, line: 65, baseType: !221, size: 64, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !216, file: !217, line: 66, baseType: !221, size: 64, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !216, file: !217, line: 68, baseType: !233, size: 64, offset: 768)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !217, line: 36, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !216, file: !217, line: 70, baseType: !236, size: 64, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !216, file: !217, line: 72, baseType: !44, size: 32, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !216, file: !217, line: 73, baseType: !44, size: 32, offset: 928)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !216, file: !217, line: 74, baseType: !240, size: 64, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !241, line: 152, baseType: !242)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!242 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !216, file: !217, line: 77, baseType: !45, size: 16, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !216, file: !217, line: 78, baseType: !245, size: 8, offset: 1040)
!245 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !216, file: !217, line: 79, baseType: !64, size: 8, offset: 1048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !216, file: !217, line: 81, baseType: !248, size: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !217, line: 43, baseType: null)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !216, file: !217, line: 89, baseType: !251, size: 64, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !241, line: 153, baseType: !242)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !216, file: !217, line: 91, baseType: !253, size: 64, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !217, line: 37, flags: DIFlagFwdDecl)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !216, file: !217, line: 92, baseType: !256, size: 64, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !217, line: 38, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !216, file: !217, line: 93, baseType: !236, size: 64, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !216, file: !217, line: 94, baseType: !40, size: 64, offset: 1408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !216, file: !217, line: 95, baseType: !55, size: 64, offset: 1472)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !216, file: !217, line: 96, baseType: !44, size: 32, offset: 1536)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !216, file: !217, line: 98, baseType: !263, size: 160, offset: 1568)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 20)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "workFactor", scope: !21, file: !2, line: 303, type: !43, isLocal: false, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 904, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 6952, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 869)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !2, line: 925, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 7968, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 996)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !2, line: 762, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 36)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 788, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 44)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 795, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 59)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 800, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 49)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !2, line: 803, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 56)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !2, line: 806, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 32)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !2, line: 809, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 61)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 817, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 880, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 110)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 747, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1928, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 241)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1007, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 960, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 120)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 958, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 38)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1678, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4232, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 529)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1703, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 9840, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 1230)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1747, type: !295, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 891, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 45)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1216, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 21)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1220, type: !120, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1221, type: !105, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1236, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 39)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1242, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 35)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1251, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 42)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1261, type: !366, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1269, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 41)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1278, type: !280, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1286, type: !160, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1287, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 2)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1305, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 50)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1307, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 34)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1315, type: !83, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1337, type: !83, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1339, type: !330, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1355, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 22)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1360, type: !74, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !2, line: 832, type: !415, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 872, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 109)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "fileMetaInfo", scope: !21, file: !2, line: 1116, type: !420, isLocal: true, isDefinition: true)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !421, line: 26, size: 1152, elements: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!422 = !{!423, !425, !427, !429, !431, !433, !435, !436, !437, !438, !440, !442, !450, !451, !452}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !420, file: !421, line: 31, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !241, line: 145, baseType: !57)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !420, file: !421, line: 36, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !241, line: 148, baseType: !57)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !420, file: !421, line: 44, baseType: !428, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !241, line: 151, baseType: !57)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !420, file: !421, line: 45, baseType: !430, size: 32, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !241, line: 150, baseType: !25)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !420, file: !421, line: 47, baseType: !432, size: 32, offset: 224)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !241, line: 146, baseType: !25)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !420, file: !421, line: 48, baseType: !434, size: 32, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !241, line: 147, baseType: !25)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !420, file: !421, line: 50, baseType: !44, size: 32, offset: 288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !420, file: !421, line: 52, baseType: !424, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !420, file: !421, line: 57, baseType: !240, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !420, file: !421, line: 61, baseType: !439, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !241, line: 175, baseType: !242)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !420, file: !421, line: 63, baseType: !441, size: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !241, line: 180, baseType: !242)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !420, file: !421, line: 74, baseType: !443, size: 128, offset: 576)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !444, line: 11, size: 128, elements: !445)
!444 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!445 = !{!446, !448}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !443, file: !444, line: 16, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !241, line: 160, baseType: !242)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !443, file: !444, line: 21, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !241, line: 197, baseType: !242)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !420, file: !421, line: 75, baseType: !443, size: 128, offset: 704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !420, file: !421, line: 76, baseType: !443, size: 128, offset: 832)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !420, file: !421, line: 89, baseType: !453, size: 192, offset: 960)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 192, elements: !84)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !2, line: 996, type: !387, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !387, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !2, line: 471, type: !408, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 484, type: !462, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 57)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !2, line: 510, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 26)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !2, line: 970, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1888, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 236)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !2, line: 877, type: !477, isLocal: true, isDefinition: true)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 65)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1399, type: !482, isLocal: true, isDefinition: true)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 23)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1414, type: !3, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1456, type: !392, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1491, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 51)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1504, type: !397, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1532, type: !498, isLocal: true, isDefinition: true)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 24)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1570, type: !14, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1574, type: !100, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1576, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 29)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 559, type: !512, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 27)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !2, line: 584, type: !14, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !2, line: 622, type: !347, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 627, type: !521, isLocal: true, isDefinition: true)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 28)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !2, line: 847, type: !526, isLocal: true, isDefinition: true)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 47)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 861, type: !531, isLocal: true, isDefinition: true)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 760, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 95)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1594, type: !145, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1611, type: !538, isLocal: true, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 30)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1653, type: !100, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1667, type: !9, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !2, line: 669, type: !352, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !2, line: 690, type: !105, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !2, line: 699, type: !280, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !2, line: 705, type: !498, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !2, line: 711, type: !555, isLocal: true, isDefinition: true)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 46)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !2, line: 716, type: !280, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !2, line: 720, type: !408, isLocal: true, isDefinition: true)
!562 = !{i32 7, !"Dwarf Version", i32 5}
!563 = !{i32 2, !"Debug Info Version", i32 3}
!564 = !{i32 1, !"wchar_size", i32 4}
!565 = !{i32 8, !"PIC Level", i32 2}
!566 = !{i32 7, !"PIE Level", i32 2}
!567 = !{i32 7, !"uwtable", i32 2}
!568 = !{i32 7, !"frame-pointer", i32 2}
!569 = !{!"Ubuntu clang version 21.1.5 (++20251023083201+45afac62e373-1~exp1~20251023083316.53)"}
!570 = distinct !DISubprogram(name: "mySIGSEGVorSIGBUScatcher", scope: !2, file: !2, line: 899, type: !571, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !573}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "IntNative", file: !2, line: 268, baseType: !44)
!574 = !{}
!575 = !DILocalVariable(name: "n", arg: 1, scope: !570, file: !2, line: 899, type: !573)
!576 = !DILocation(line: 899, column: 43, scope: !570)
!577 = !DILocation(line: 901, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !2, line: 901, column: 8)
!579 = !DILocation(line: 901, column: 15, scope: !578)
!580 = !DILocation(line: 903, column: 7, scope: !578)
!581 = !DILocation(line: 921, column: 7, scope: !578)
!582 = !DILocation(line: 902, column: 7, scope: !578)
!583 = !DILocation(line: 924, column: 7, scope: !578)
!584 = !DILocation(line: 944, column: 7, scope: !578)
!585 = !DILocation(line: 923, column: 7, scope: !578)
!586 = !DILocation(line: 946, column: 4, scope: !570)
!587 = !DILocation(line: 947, column: 8, scope: !588)
!588 = distinct !DILexicalBlock(scope: !570, file: !2, line: 947, column: 8)
!589 = !DILocation(line: 947, column: 15, scope: !588)
!590 = !DILocation(line: 948, column: 7, scope: !588)
!591 = !DILocation(line: 949, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !2, line: 949, column: 7)
!593 = !DILocation(line: 949, column: 20, scope: !592)
!594 = distinct !DISubprogram(name: "copyFileName", scope: !2, file: !2, line: 1002, type: !595, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !46, !46}
!597 = !DILocalVariable(name: "to", arg: 1, scope: !594, file: !2, line: 1002, type: !46)
!598 = !DILocation(line: 1002, column: 27, scope: !594)
!599 = !DILocalVariable(name: "from", arg: 2, scope: !594, file: !2, line: 1002, type: !46)
!600 = !DILocation(line: 1002, column: 37, scope: !594)
!601 = !DILocation(line: 1004, column: 16, scope: !602)
!602 = distinct !DILexicalBlock(scope: !594, file: !2, line: 1004, column: 9)
!603 = !DILocation(line: 1004, column: 9, scope: !602)
!604 = !DILocation(line: 1004, column: 22, scope: !602)
!605 = !DILocation(line: 1006, column: 10, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !2, line: 1004, column: 44)
!607 = !DILocation(line: 1010, column: 10, scope: !606)
!608 = !DILocation(line: 1005, column: 7, scope: !606)
!609 = !DILocation(line: 1012, column: 7, scope: !606)
!610 = !DILocation(line: 1013, column: 12, scope: !606)
!611 = !DILocation(line: 1013, column: 7, scope: !606)
!612 = !DILocation(line: 1016, column: 11, scope: !594)
!613 = !DILocation(line: 1016, column: 14, scope: !594)
!614 = !DILocation(line: 1016, column: 3, scope: !594)
!615 = !DILocation(line: 1017, column: 3, scope: !594)
!616 = !DILocation(line: 1017, column: 23, scope: !594)
!617 = !DILocation(line: 1018, column: 1, scope: !594)
!618 = distinct !DISubprogram(name: "addFlagsFromEnvVar", scope: !2, file: !2, line: 1820, type: !619, scopeLine: 1821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !621, !46}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!622 = !DILocalVariable(name: "argList", arg: 1, scope: !618, file: !2, line: 1820, type: !621)
!623 = !DILocation(line: 1820, column: 34, scope: !618)
!624 = !DILocalVariable(name: "varName", arg: 2, scope: !618, file: !2, line: 1820, type: !46)
!625 = !DILocation(line: 1820, column: 49, scope: !618)
!626 = !DILocalVariable(name: "i", scope: !618, file: !2, line: 1822, type: !43)
!627 = !DILocation(line: 1822, column: 10, scope: !618)
!628 = !DILocalVariable(name: "j", scope: !618, file: !2, line: 1822, type: !43)
!629 = !DILocation(line: 1822, column: 13, scope: !618)
!630 = !DILocalVariable(name: "k", scope: !618, file: !2, line: 1822, type: !43)
!631 = !DILocation(line: 1822, column: 16, scope: !618)
!632 = !DILocalVariable(name: "envbase", scope: !618, file: !2, line: 1823, type: !46)
!633 = !DILocation(line: 1823, column: 10, scope: !618)
!634 = !DILocalVariable(name: "p", scope: !618, file: !2, line: 1823, type: !46)
!635 = !DILocation(line: 1823, column: 20, scope: !618)
!636 = !DILocation(line: 1825, column: 21, scope: !618)
!637 = !DILocation(line: 1825, column: 14, scope: !618)
!638 = !DILocation(line: 1825, column: 12, scope: !618)
!639 = !DILocation(line: 1826, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !618, file: !2, line: 1826, column: 8)
!641 = !DILocation(line: 1826, column: 16, scope: !640)
!642 = !DILocation(line: 1827, column: 11, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !2, line: 1826, column: 25)
!644 = !DILocation(line: 1827, column: 9, scope: !643)
!645 = !DILocation(line: 1828, column: 9, scope: !643)
!646 = !DILocation(line: 1829, column: 7, scope: !643)
!647 = !DILocation(line: 1830, column: 14, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !2, line: 1830, column: 14)
!649 = distinct !DILexicalBlock(scope: !643, file: !2, line: 1829, column: 20)
!650 = !DILocation(line: 1830, column: 16, scope: !648)
!651 = !DILocation(line: 1830, column: 19, scope: !648)
!652 = !DILocation(line: 1830, column: 25, scope: !648)
!653 = !DILocation(line: 1831, column: 15, scope: !649)
!654 = !DILocation(line: 1831, column: 12, scope: !649)
!655 = !DILocation(line: 1832, column: 12, scope: !649)
!656 = !DILocation(line: 1833, column: 10, scope: !649)
!657 = !DILocation(line: 1833, column: 17, scope: !649)
!658 = !DILocation(line: 1833, column: 42, scope: !649)
!659 = distinct !{!659, !656, !658, !660}
!660 = !{!"llvm.loop.mustprogress"}
!661 = !DILocation(line: 1834, column: 10, scope: !649)
!662 = !DILocation(line: 1834, column: 17, scope: !649)
!663 = !DILocation(line: 1834, column: 19, scope: !649)
!664 = !DILocation(line: 1834, column: 22, scope: !649)
!665 = !DILocation(line: 1834, column: 27, scope: !649)
!666 = !DILocation(line: 1834, column: 31, scope: !649)
!667 = !DILocation(line: 1834, column: 30, scope: !649)
!668 = !DILocation(line: 0, scope: !649)
!669 = !DILocation(line: 1834, column: 56, scope: !649)
!670 = distinct !{!670, !661, !669, !660}
!671 = !DILocation(line: 1835, column: 14, scope: !672)
!672 = distinct !DILexicalBlock(scope: !649, file: !2, line: 1835, column: 14)
!673 = !DILocation(line: 1835, column: 16, scope: !672)
!674 = !DILocation(line: 1836, column: 17, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !2, line: 1835, column: 21)
!676 = !DILocation(line: 1836, column: 15, scope: !675)
!677 = !DILocation(line: 1836, column: 24, scope: !678)
!678 = distinct !DILexicalBlock(scope: !675, file: !2, line: 1836, column: 24)
!679 = !DILocation(line: 1836, column: 26, scope: !678)
!680 = !DILocation(line: 1836, column: 48, scope: !678)
!681 = !DILocation(line: 1836, column: 46, scope: !678)
!682 = !DILocation(line: 1837, column: 20, scope: !683)
!683 = distinct !DILexicalBlock(scope: !675, file: !2, line: 1837, column: 13)
!684 = !DILocation(line: 1837, column: 18, scope: !683)
!685 = !DILocation(line: 1837, column: 25, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !2, line: 1837, column: 13)
!687 = !DILocation(line: 1837, column: 29, scope: !686)
!688 = !DILocation(line: 1837, column: 27, scope: !686)
!689 = !DILocation(line: 1837, column: 13, scope: !683)
!690 = !DILocation(line: 1837, column: 50, scope: !686)
!691 = !DILocation(line: 1837, column: 52, scope: !686)
!692 = !DILocation(line: 1837, column: 45, scope: !686)
!693 = !DILocation(line: 1837, column: 37, scope: !686)
!694 = !DILocation(line: 1837, column: 48, scope: !686)
!695 = !DILocation(line: 1837, column: 33, scope: !686)
!696 = !DILocation(line: 1837, column: 13, scope: !686)
!697 = distinct !{!697, !689, !698, !660}
!698 = !DILocation(line: 1837, column: 53, scope: !683)
!699 = !DILocation(line: 1838, column: 21, scope: !675)
!700 = !DILocation(line: 1838, column: 13, scope: !675)
!701 = !DILocation(line: 1838, column: 24, scope: !675)
!702 = !DILocation(line: 1839, column: 13, scope: !675)
!703 = !DILocation(line: 1840, column: 10, scope: !675)
!704 = distinct !{!704, !646, !705}
!705 = !DILocation(line: 1841, column: 7, scope: !643)
!706 = !DILocation(line: 1842, column: 4, scope: !643)
!707 = !DILocation(line: 1843, column: 1, scope: !618)
!708 = distinct !DISubprogram(name: "snocString", scope: !2, file: !2, line: 1802, type: !709, scopeLine: 1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!709 = !DISubroutineType(types: !710)
!710 = !{!48, !48, !46}
!711 = !DILocalVariable(name: "root", arg: 1, scope: !708, file: !2, line: 1802, type: !48)
!712 = !DILocation(line: 1802, column: 26, scope: !708)
!713 = !DILocalVariable(name: "name", arg: 2, scope: !708, file: !2, line: 1802, type: !46)
!714 = !DILocation(line: 1802, column: 38, scope: !708)
!715 = !DILocation(line: 1804, column: 8, scope: !716)
!716 = distinct !DILexicalBlock(scope: !708, file: !2, line: 1804, column: 8)
!717 = !DILocation(line: 1804, column: 13, scope: !716)
!718 = !DILocalVariable(name: "tmp", scope: !719, file: !2, line: 1805, type: !48)
!719 = distinct !DILexicalBlock(scope: !716, file: !2, line: 1804, column: 22)
!720 = !DILocation(line: 1805, column: 13, scope: !719)
!721 = !DILocation(line: 1805, column: 19, scope: !719)
!722 = !DILocation(line: 1806, column: 49, scope: !719)
!723 = !DILocation(line: 1806, column: 42, scope: !719)
!724 = !DILocation(line: 1806, column: 40, scope: !719)
!725 = !DILocation(line: 1806, column: 38, scope: !719)
!726 = !DILocation(line: 1806, column: 27, scope: !719)
!727 = !DILocation(line: 1806, column: 7, scope: !719)
!728 = !DILocation(line: 1806, column: 12, scope: !719)
!729 = !DILocation(line: 1806, column: 17, scope: !719)
!730 = !DILocation(line: 1807, column: 16, scope: !719)
!731 = !DILocation(line: 1807, column: 21, scope: !719)
!732 = !DILocation(line: 1807, column: 27, scope: !719)
!733 = !DILocation(line: 1807, column: 7, scope: !719)
!734 = !DILocation(line: 1808, column: 14, scope: !719)
!735 = !DILocation(line: 1808, column: 7, scope: !719)
!736 = !DILocalVariable(name: "tmp", scope: !737, file: !2, line: 1810, type: !48)
!737 = distinct !DILexicalBlock(scope: !716, file: !2, line: 1809, column: 11)
!738 = !DILocation(line: 1810, column: 13, scope: !737)
!739 = !DILocation(line: 1810, column: 19, scope: !737)
!740 = !DILocation(line: 1811, column: 7, scope: !737)
!741 = !DILocation(line: 1811, column: 14, scope: !737)
!742 = !DILocation(line: 1811, column: 19, scope: !737)
!743 = !DILocation(line: 1811, column: 24, scope: !737)
!744 = !DILocation(line: 1811, column: 39, scope: !737)
!745 = !DILocation(line: 1811, column: 44, scope: !737)
!746 = !DILocation(line: 1811, column: 37, scope: !737)
!747 = distinct !{!747, !740, !745, !660}
!748 = !DILocation(line: 1812, column: 32, scope: !737)
!749 = !DILocation(line: 1812, column: 37, scope: !737)
!750 = !DILocation(line: 1812, column: 43, scope: !737)
!751 = !DILocation(line: 1812, column: 19, scope: !737)
!752 = !DILocation(line: 1812, column: 7, scope: !737)
!753 = !DILocation(line: 1812, column: 12, scope: !737)
!754 = !DILocation(line: 1812, column: 17, scope: !737)
!755 = !DILocation(line: 1813, column: 14, scope: !737)
!756 = !DILocation(line: 1813, column: 7, scope: !737)
!757 = !DILocation(line: 1815, column: 1, scope: !708)
!758 = distinct !DISubprogram(name: "license", scope: !2, file: !2, line: 1674, type: !759, scopeLine: 1675, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!759 = !DISubroutineType(types: !760)
!760 = !{null}
!761 = !DILocation(line: 1676, column: 14, scope: !758)
!762 = !DILocation(line: 1692, column: 5, scope: !758)
!763 = !DILocation(line: 1676, column: 4, scope: !758)
!764 = !DILocation(line: 1694, column: 1, scope: !758)
!765 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 1699, type: !766, scopeLine: 1700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !46}
!768 = !DILocalVariable(name: "fullProgName", arg: 1, scope: !765, file: !2, line: 1699, type: !46)
!769 = !DILocation(line: 1699, column: 20, scope: !765)
!770 = !DILocation(line: 1702, column: 7, scope: !765)
!771 = !DILocation(line: 1735, column: 7, scope: !765)
!772 = !DILocation(line: 1736, column: 7, scope: !765)
!773 = !DILocation(line: 1701, column: 4, scope: !765)
!774 = !DILocation(line: 1738, column: 1, scope: !765)
!775 = distinct !DISubprogram(name: "redundant", scope: !2, file: !2, line: 1743, type: !766, scopeLine: 1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!776 = !DILocalVariable(name: "flag", arg: 1, scope: !775, file: !2, line: 1743, type: !46)
!777 = !DILocation(line: 1743, column: 24, scope: !775)
!778 = !DILocation(line: 1746, column: 7, scope: !775)
!779 = !DILocation(line: 1748, column: 7, scope: !775)
!780 = !DILocation(line: 1748, column: 17, scope: !775)
!781 = !DILocation(line: 1745, column: 4, scope: !775)
!782 = !DILocation(line: 1749, column: 1, scope: !775)
!783 = distinct !DISubprogram(name: "mySignalCatcher", scope: !2, file: !2, line: 888, type: !571, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!784 = !DILocalVariable(name: "n", arg: 1, scope: !783, file: !2, line: 888, type: !573)
!785 = !DILocation(line: 888, column: 34, scope: !783)
!786 = !DILocation(line: 890, column: 14, scope: !783)
!787 = !DILocation(line: 892, column: 14, scope: !783)
!788 = !DILocation(line: 890, column: 4, scope: !783)
!789 = !DILocation(line: 893, column: 4, scope: !783)
!790 = distinct !DISubprogram(name: "compress", scope: !2, file: !2, line: 1206, type: !766, scopeLine: 1207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!791 = !DILocalVariable(name: "name", arg: 1, scope: !790, file: !2, line: 1206, type: !46)
!792 = !DILocation(line: 1206, column: 23, scope: !790)
!793 = !DILocalVariable(name: "inStr", scope: !790, file: !2, line: 1208, type: !213)
!794 = !DILocation(line: 1208, column: 11, scope: !790)
!795 = !DILocalVariable(name: "outStr", scope: !790, file: !2, line: 1209, type: !213)
!796 = !DILocation(line: 1209, column: 11, scope: !790)
!797 = !DILocalVariable(name: "n", scope: !790, file: !2, line: 1210, type: !43)
!798 = !DILocation(line: 1210, column: 10, scope: !790)
!799 = !DILocalVariable(name: "i", scope: !790, file: !2, line: 1210, type: !43)
!800 = !DILocation(line: 1210, column: 13, scope: !790)
!801 = !DILocalVariable(name: "statBuf", scope: !790, file: !2, line: 1211, type: !420)
!802 = !DILocation(line: 1211, column: 19, scope: !790)
!803 = !DILocation(line: 1213, column: 28, scope: !790)
!804 = !DILocation(line: 1215, column: 8, scope: !805)
!805 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1215, column: 8)
!806 = !DILocation(line: 1215, column: 13, scope: !805)
!807 = !DILocation(line: 1215, column: 21, scope: !805)
!808 = !DILocation(line: 1215, column: 24, scope: !805)
!809 = !DILocation(line: 1215, column: 32, scope: !805)
!810 = !DILocation(line: 1216, column: 7, scope: !805)
!811 = !DILocation(line: 1218, column: 12, scope: !790)
!812 = !DILocation(line: 1218, column: 4, scope: !790)
!813 = !DILocation(line: 1220, column: 10, scope: !814)
!814 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1218, column: 21)
!815 = !DILocation(line: 1221, column: 10, scope: !814)
!816 = !DILocation(line: 1222, column: 10, scope: !814)
!817 = !DILocation(line: 1224, column: 33, scope: !814)
!818 = !DILocation(line: 1224, column: 10, scope: !814)
!819 = !DILocation(line: 1225, column: 34, scope: !814)
!820 = !DILocation(line: 1225, column: 10, scope: !814)
!821 = !DILocation(line: 1226, column: 10, scope: !814)
!822 = !DILocation(line: 1227, column: 10, scope: !814)
!823 = !DILocation(line: 1229, column: 33, scope: !814)
!824 = !DILocation(line: 1229, column: 10, scope: !814)
!825 = !DILocation(line: 1230, column: 10, scope: !814)
!826 = !DILocation(line: 1231, column: 10, scope: !814)
!827 = !DILocation(line: 1234, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1234, column: 9)
!829 = !DILocation(line: 1234, column: 17, scope: !828)
!830 = !DILocation(line: 1234, column: 27, scope: !828)
!831 = !DILocation(line: 1234, column: 30, scope: !828)
!832 = !DILocation(line: 1235, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !2, line: 1235, column: 11)
!834 = distinct !DILexicalBlock(scope: !828, file: !2, line: 1234, column: 64)
!835 = !DILocation(line: 1236, column: 17, scope: !833)
!836 = !DILocation(line: 1237, column: 17, scope: !833)
!837 = !DILocation(line: 1236, column: 7, scope: !833)
!838 = !DILocation(line: 1238, column: 7, scope: !834)
!839 = !DILocation(line: 1239, column: 7, scope: !834)
!840 = !DILocation(line: 1241, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1241, column: 9)
!842 = !DILocation(line: 1241, column: 17, scope: !841)
!843 = !DILocation(line: 1241, column: 27, scope: !841)
!844 = !DILocation(line: 1241, column: 31, scope: !841)
!845 = !DILocation(line: 1242, column: 17, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !2, line: 1241, column: 55)
!847 = !DILocation(line: 1243, column: 17, scope: !846)
!848 = !DILocation(line: 1243, column: 44, scope: !846)
!849 = !DILocation(line: 1243, column: 35, scope: !846)
!850 = !DILocation(line: 1242, column: 7, scope: !846)
!851 = !DILocation(line: 1244, column: 7, scope: !846)
!852 = !DILocation(line: 1245, column: 7, scope: !846)
!853 = !DILocation(line: 1247, column: 11, scope: !854)
!854 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1247, column: 4)
!855 = !DILocation(line: 1247, column: 9, scope: !854)
!856 = !DILocation(line: 1247, column: 16, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !2, line: 1247, column: 4)
!858 = !DILocation(line: 1247, column: 18, scope: !857)
!859 = !DILocation(line: 1247, column: 4, scope: !854)
!860 = !DILocation(line: 1248, column: 37, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !2, line: 1248, column: 11)
!862 = distinct !DILexicalBlock(scope: !857, file: !2, line: 1247, column: 44)
!863 = !DILocation(line: 1248, column: 29, scope: !861)
!864 = !DILocation(line: 1248, column: 11, scope: !861)
!865 = !DILocation(line: 1249, column: 14, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 1249, column: 14)
!867 = distinct !DILexicalBlock(scope: !861, file: !2, line: 1248, column: 42)
!868 = !DILocation(line: 1250, column: 20, scope: !866)
!869 = !DILocation(line: 1252, column: 20, scope: !866)
!870 = !DILocation(line: 1252, column: 46, scope: !866)
!871 = !DILocation(line: 1252, column: 38, scope: !866)
!872 = !DILocation(line: 1250, column: 10, scope: !866)
!873 = !DILocation(line: 1253, column: 10, scope: !867)
!874 = !DILocation(line: 1254, column: 10, scope: !867)
!875 = !DILocation(line: 1256, column: 4, scope: !862)
!876 = !DILocation(line: 1247, column: 40, scope: !857)
!877 = !DILocation(line: 1247, column: 4, scope: !857)
!878 = distinct !{!878, !859, !879, !660}
!879 = !DILocation(line: 1256, column: 4, scope: !854)
!880 = !DILocation(line: 1257, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1257, column: 9)
!882 = !DILocation(line: 1257, column: 17, scope: !881)
!883 = !DILocation(line: 1257, column: 27, scope: !881)
!884 = !DILocation(line: 1257, column: 30, scope: !881)
!885 = !DILocation(line: 1257, column: 38, scope: !881)
!886 = !DILocation(line: 1258, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !881, file: !2, line: 1257, column: 50)
!888 = !DILocation(line: 1259, column: 12, scope: !889)
!889 = distinct !DILexicalBlock(scope: !887, file: !2, line: 1259, column: 12)
!890 = !DILocation(line: 1260, column: 19, scope: !891)
!891 = distinct !DILexicalBlock(scope: !889, file: !2, line: 1259, column: 42)
!892 = !DILocation(line: 1262, column: 19, scope: !891)
!893 = !DILocation(line: 1260, column: 10, scope: !891)
!894 = !DILocation(line: 1263, column: 10, scope: !891)
!895 = !DILocation(line: 1264, column: 10, scope: !891)
!896 = !DILocation(line: 1266, column: 4, scope: !887)
!897 = !DILocation(line: 1267, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1267, column: 9)
!899 = !DILocation(line: 1267, column: 17, scope: !898)
!900 = !DILocation(line: 1267, column: 27, scope: !898)
!901 = !DILocation(line: 1267, column: 31, scope: !898)
!902 = !DILocation(line: 1267, column: 46, scope: !898)
!903 = !DILocation(line: 1267, column: 49, scope: !898)
!904 = !DILocation(line: 1268, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !2, line: 1268, column: 11)
!906 = distinct !DILexicalBlock(scope: !898, file: !2, line: 1267, column: 78)
!907 = !DILocation(line: 1269, column: 17, scope: !905)
!908 = !DILocation(line: 1270, column: 17, scope: !905)
!909 = !DILocation(line: 1269, column: 7, scope: !905)
!910 = !DILocation(line: 1271, column: 7, scope: !906)
!911 = !DILocation(line: 1272, column: 7, scope: !906)
!912 = !DILocation(line: 1274, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1274, column: 9)
!914 = !DILocation(line: 1274, column: 17, scope: !913)
!915 = !DILocation(line: 1274, column: 27, scope: !913)
!916 = !DILocation(line: 1274, column: 30, scope: !913)
!917 = !DILocation(line: 1275, column: 11, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !2, line: 1275, column: 11)
!919 = distinct !DILexicalBlock(scope: !913, file: !2, line: 1274, column: 55)
!920 = !DILocation(line: 1276, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !2, line: 1275, column: 27)
!922 = !DILocation(line: 1277, column: 7, scope: !921)
!923 = !DILocation(line: 1278, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !918, file: !2, line: 1277, column: 14)
!925 = !DILocation(line: 1279, column: 6, scope: !924)
!926 = !DILocation(line: 1278, column: 3, scope: !924)
!927 = !DILocation(line: 1280, column: 3, scope: !924)
!928 = !DILocation(line: 1281, column: 3, scope: !924)
!929 = !DILocation(line: 1283, column: 4, scope: !919)
!930 = !DILocation(line: 1284, column: 9, scope: !931)
!931 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1284, column: 9)
!932 = !DILocation(line: 1284, column: 17, scope: !931)
!933 = !DILocation(line: 1284, column: 27, scope: !931)
!934 = !DILocation(line: 1284, column: 31, scope: !931)
!935 = !DILocation(line: 1284, column: 46, scope: !931)
!936 = !DILocation(line: 1285, column: 12, scope: !931)
!937 = !DILocation(line: 1285, column: 11, scope: !931)
!938 = !DILocation(line: 1285, column: 39, scope: !931)
!939 = !DILocation(line: 1286, column: 17, scope: !940)
!940 = distinct !DILexicalBlock(scope: !931, file: !2, line: 1285, column: 44)
!941 = !DILocation(line: 1287, column: 17, scope: !940)
!942 = !DILocation(line: 1287, column: 35, scope: !940)
!943 = !DILocation(line: 1287, column: 38, scope: !940)
!944 = !DILocation(line: 1287, column: 40, scope: !940)
!945 = !DILocation(line: 1286, column: 7, scope: !940)
!946 = !DILocation(line: 1288, column: 7, scope: !940)
!947 = !DILocation(line: 1289, column: 7, scope: !940)
!948 = !DILocation(line: 1292, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1292, column: 9)
!950 = !DILocation(line: 1292, column: 17, scope: !949)
!951 = !DILocation(line: 1295, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !2, line: 1292, column: 29)
!953 = !DILocation(line: 1296, column: 4, scope: !952)
!954 = !DILocation(line: 1298, column: 13, scope: !790)
!955 = !DILocation(line: 1298, column: 4, scope: !790)
!956 = !DILocation(line: 1301, column: 18, scope: !957)
!957 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1298, column: 23)
!958 = !DILocation(line: 1301, column: 16, scope: !957)
!959 = !DILocation(line: 1302, column: 19, scope: !957)
!960 = !DILocation(line: 1302, column: 17, scope: !957)
!961 = !DILocation(line: 1303, column: 33, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !2, line: 1303, column: 15)
!963 = !DILocation(line: 1303, column: 24, scope: !962)
!964 = !DILocation(line: 1303, column: 15, scope: !962)
!965 = !DILocation(line: 1304, column: 23, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !2, line: 1303, column: 46)
!967 = !DILocation(line: 1306, column: 23, scope: !966)
!968 = !DILocation(line: 1304, column: 13, scope: !966)
!969 = !DILocation(line: 1307, column: 23, scope: !966)
!970 = !DILocation(line: 1308, column: 31, scope: !966)
!971 = !DILocation(line: 1308, column: 41, scope: !966)
!972 = !DILocation(line: 1307, column: 13, scope: !966)
!973 = !DILocation(line: 1309, column: 13, scope: !966)
!974 = !DILocation(line: 1310, column: 13, scope: !966)
!975 = !DILocation(line: 1312, column: 10, scope: !957)
!976 = !DILocation(line: 1315, column: 18, scope: !957)
!977 = !DILocation(line: 1315, column: 16, scope: !957)
!978 = !DILocation(line: 1316, column: 19, scope: !957)
!979 = !DILocation(line: 1316, column: 17, scope: !957)
!980 = !DILocation(line: 1317, column: 33, scope: !981)
!981 = distinct !DILexicalBlock(scope: !957, file: !2, line: 1317, column: 15)
!982 = !DILocation(line: 1317, column: 24, scope: !981)
!983 = !DILocation(line: 1317, column: 15, scope: !981)
!984 = !DILocation(line: 1318, column: 23, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !2, line: 1317, column: 46)
!986 = !DILocation(line: 1320, column: 23, scope: !985)
!987 = !DILocation(line: 1318, column: 13, scope: !985)
!988 = !DILocation(line: 1321, column: 23, scope: !985)
!989 = !DILocation(line: 1322, column: 31, scope: !985)
!990 = !DILocation(line: 1322, column: 41, scope: !985)
!991 = !DILocation(line: 1321, column: 13, scope: !985)
!992 = !DILocation(line: 1323, column: 18, scope: !993)
!993 = distinct !DILexicalBlock(scope: !985, file: !2, line: 1323, column: 18)
!994 = !DILocation(line: 1323, column: 24, scope: !993)
!995 = !DILocation(line: 1323, column: 43, scope: !993)
!996 = !DILocation(line: 1323, column: 34, scope: !993)
!997 = !DILocation(line: 1324, column: 13, scope: !985)
!998 = !DILocation(line: 1325, column: 13, scope: !985)
!999 = !DILocation(line: 1327, column: 15, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !957, file: !2, line: 1327, column: 15)
!1001 = !DILocation(line: 1327, column: 21, scope: !1000)
!1002 = !DILocation(line: 1328, column: 23, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 1327, column: 31)
!1004 = !DILocation(line: 1329, column: 23, scope: !1003)
!1005 = !DILocation(line: 1329, column: 50, scope: !1003)
!1006 = !DILocation(line: 1329, column: 41, scope: !1003)
!1007 = !DILocation(line: 1328, column: 13, scope: !1003)
!1008 = !DILocation(line: 1330, column: 13, scope: !1003)
!1009 = !DILocation(line: 1331, column: 13, scope: !1003)
!1010 = !DILocation(line: 1333, column: 10, scope: !957)
!1011 = !DILocation(line: 1336, column: 18, scope: !957)
!1012 = !DILocation(line: 1336, column: 16, scope: !957)
!1013 = !DILocation(line: 1337, column: 19, scope: !957)
!1014 = !DILocation(line: 1337, column: 17, scope: !957)
!1015 = !DILocation(line: 1338, column: 15, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !957, file: !2, line: 1338, column: 15)
!1017 = !DILocation(line: 1338, column: 22, scope: !1016)
!1018 = !DILocation(line: 1339, column: 23, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 1338, column: 31)
!1020 = !DILocation(line: 1340, column: 23, scope: !1019)
!1021 = !DILocation(line: 1340, column: 51, scope: !1019)
!1022 = !DILocation(line: 1340, column: 42, scope: !1019)
!1023 = !DILocation(line: 1339, column: 13, scope: !1019)
!1024 = !DILocation(line: 1341, column: 18, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 1341, column: 18)
!1026 = !DILocation(line: 1341, column: 24, scope: !1025)
!1027 = !DILocation(line: 1341, column: 43, scope: !1025)
!1028 = !DILocation(line: 1341, column: 34, scope: !1025)
!1029 = !DILocation(line: 1342, column: 13, scope: !1019)
!1030 = !DILocation(line: 1343, column: 13, scope: !1019)
!1031 = !DILocation(line: 1345, column: 15, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !957, file: !2, line: 1345, column: 15)
!1033 = !DILocation(line: 1345, column: 21, scope: !1032)
!1034 = !DILocation(line: 1346, column: 23, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 1345, column: 31)
!1036 = !DILocation(line: 1347, column: 23, scope: !1035)
!1037 = !DILocation(line: 1347, column: 50, scope: !1035)
!1038 = !DILocation(line: 1347, column: 41, scope: !1035)
!1039 = !DILocation(line: 1346, column: 13, scope: !1035)
!1040 = !DILocation(line: 1348, column: 18, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 1348, column: 18)
!1042 = !DILocation(line: 1348, column: 25, scope: !1041)
!1043 = !DILocation(line: 1348, column: 44, scope: !1041)
!1044 = !DILocation(line: 1348, column: 35, scope: !1041)
!1045 = !DILocation(line: 1349, column: 13, scope: !1035)
!1046 = !DILocation(line: 1350, column: 13, scope: !1035)
!1047 = !DILocation(line: 1352, column: 10, scope: !957)
!1048 = !DILocation(line: 1355, column: 10, scope: !957)
!1049 = !DILocation(line: 1359, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1359, column: 8)
!1051 = !DILocation(line: 1359, column: 18, scope: !1050)
!1052 = !DILocation(line: 1360, column: 17, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 1359, column: 24)
!1054 = !DILocation(line: 1360, column: 7, scope: !1053)
!1055 = !DILocation(line: 1361, column: 7, scope: !1053)
!1056 = !DILocation(line: 1362, column: 16, scope: !1053)
!1057 = !DILocation(line: 1362, column: 7, scope: !1053)
!1058 = !DILocation(line: 1363, column: 4, scope: !1053)
!1059 = !DILocation(line: 1366, column: 29, scope: !790)
!1060 = !DILocation(line: 1366, column: 27, scope: !790)
!1061 = !DILocation(line: 1367, column: 28, scope: !790)
!1062 = !DILocation(line: 1368, column: 21, scope: !790)
!1063 = !DILocation(line: 1368, column: 28, scope: !790)
!1064 = !DILocation(line: 1368, column: 4, scope: !790)
!1065 = !DILocation(line: 1369, column: 27, scope: !790)
!1066 = !DILocation(line: 1372, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1372, column: 9)
!1068 = !DILocation(line: 1372, column: 17, scope: !1067)
!1069 = !DILocation(line: 1373, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 1372, column: 29)
!1071 = !DILocation(line: 1374, column: 31, scope: !1070)
!1072 = !DILocation(line: 1375, column: 13, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 1375, column: 12)
!1074 = !DILocation(line: 1375, column: 12, scope: !1073)
!1075 = !DILocalVariable(name: "retVal", scope: !1076, file: !2, line: 1376, type: !573)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 1375, column: 30)
!1077 = !DILocation(line: 1376, column: 20, scope: !1076)
!1078 = !DILocation(line: 1376, column: 29, scope: !1076)
!1079 = !DILocation(line: 1377, column: 10, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 1377, column: 10)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 1377, column: 10)
!1082 = !DILocation(line: 1378, column: 7, scope: !1076)
!1083 = !DILocation(line: 1379, column: 4, scope: !1070)
!1084 = !DILocation(line: 1381, column: 28, scope: !790)
!1085 = !DILocation(line: 1382, column: 1, scope: !790)
!1086 = distinct !DISubprogram(name: "uncompress", scope: !2, file: !2, line: 1387, type: !766, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1087 = !DILocalVariable(name: "name", arg: 1, scope: !1086, file: !2, line: 1387, type: !46)
!1088 = !DILocation(line: 1387, column: 25, scope: !1086)
!1089 = !DILocalVariable(name: "inStr", scope: !1086, file: !2, line: 1389, type: !213)
!1090 = !DILocation(line: 1389, column: 11, scope: !1086)
!1091 = !DILocalVariable(name: "outStr", scope: !1086, file: !2, line: 1390, type: !213)
!1092 = !DILocation(line: 1390, column: 11, scope: !1086)
!1093 = !DILocalVariable(name: "n", scope: !1086, file: !2, line: 1391, type: !43)
!1094 = !DILocation(line: 1391, column: 10, scope: !1086)
!1095 = !DILocalVariable(name: "i", scope: !1086, file: !2, line: 1391, type: !43)
!1096 = !DILocation(line: 1391, column: 13, scope: !1086)
!1097 = !DILocalVariable(name: "magicNumberOK", scope: !1086, file: !2, line: 1392, type: !41)
!1098 = !DILocation(line: 1392, column: 10, scope: !1086)
!1099 = !DILocalVariable(name: "cantGuess", scope: !1086, file: !2, line: 1393, type: !41)
!1100 = !DILocation(line: 1393, column: 10, scope: !1086)
!1101 = !DILocalVariable(name: "statBuf", scope: !1086, file: !2, line: 1394, type: !420)
!1102 = !DILocation(line: 1394, column: 19, scope: !1086)
!1103 = !DILocation(line: 1396, column: 28, scope: !1086)
!1104 = !DILocation(line: 1398, column: 8, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1398, column: 8)
!1106 = !DILocation(line: 1398, column: 13, scope: !1105)
!1107 = !DILocation(line: 1398, column: 21, scope: !1105)
!1108 = !DILocation(line: 1398, column: 24, scope: !1105)
!1109 = !DILocation(line: 1398, column: 32, scope: !1105)
!1110 = !DILocation(line: 1399, column: 7, scope: !1105)
!1111 = !DILocation(line: 1401, column: 14, scope: !1086)
!1112 = !DILocation(line: 1402, column: 12, scope: !1086)
!1113 = !DILocation(line: 1402, column: 4, scope: !1086)
!1114 = !DILocation(line: 1404, column: 10, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1402, column: 21)
!1116 = !DILocation(line: 1405, column: 10, scope: !1115)
!1117 = !DILocation(line: 1406, column: 10, scope: !1115)
!1118 = !DILocation(line: 1408, column: 33, scope: !1115)
!1119 = !DILocation(line: 1408, column: 10, scope: !1115)
!1120 = !DILocation(line: 1409, column: 34, scope: !1115)
!1121 = !DILocation(line: 1409, column: 10, scope: !1115)
!1122 = !DILocation(line: 1410, column: 17, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 1410, column: 10)
!1124 = !DILocation(line: 1410, column: 15, scope: !1123)
!1125 = !DILocation(line: 1410, column: 22, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 1410, column: 10)
!1127 = !DILocation(line: 1410, column: 24, scope: !1126)
!1128 = !DILocation(line: 1410, column: 10, scope: !1123)
!1129 = !DILocation(line: 1411, column: 43, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 1411, column: 17)
!1131 = !DILocation(line: 1411, column: 35, scope: !1130)
!1132 = !DILocation(line: 1411, column: 56, scope: !1130)
!1133 = !DILocation(line: 1411, column: 46, scope: !1130)
!1134 = !DILocation(line: 1411, column: 17, scope: !1130)
!1135 = !DILocation(line: 1412, column: 16, scope: !1130)
!1136 = !DILocation(line: 1411, column: 58, scope: !1130)
!1137 = !DILocation(line: 1410, column: 46, scope: !1126)
!1138 = !DILocation(line: 1410, column: 10, scope: !1126)
!1139 = distinct !{!1139, !1128, !1140, !660}
!1140 = !DILocation(line: 1412, column: 21, scope: !1123)
!1141 = !DILocation(line: 1413, column: 20, scope: !1115)
!1142 = !DILocation(line: 1414, column: 10, scope: !1115)
!1143 = !DILocation(line: 1415, column: 10, scope: !1115)
!1144 = !DILocation(line: 1417, column: 33, scope: !1115)
!1145 = !DILocation(line: 1417, column: 10, scope: !1115)
!1146 = !DILocation(line: 1418, column: 10, scope: !1115)
!1147 = !DILocation(line: 1419, column: 10, scope: !1115)
!1148 = !DILocation(line: 1420, column: 4, scope: !1115)
!1149 = !DILabel(scope: !1086, name: "zzz", file: !2, line: 1422, column: 4)
!1150 = !DILocation(line: 1422, column: 4, scope: !1086)
!1151 = !DILocation(line: 1423, column: 9, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1423, column: 9)
!1153 = !DILocation(line: 1423, column: 17, scope: !1152)
!1154 = !DILocation(line: 1423, column: 27, scope: !1152)
!1155 = !DILocation(line: 1423, column: 30, scope: !1152)
!1156 = !DILocation(line: 1424, column: 11, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 1424, column: 11)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 1423, column: 64)
!1159 = !DILocation(line: 1425, column: 17, scope: !1157)
!1160 = !DILocation(line: 1426, column: 17, scope: !1157)
!1161 = !DILocation(line: 1425, column: 7, scope: !1157)
!1162 = !DILocation(line: 1427, column: 7, scope: !1158)
!1163 = !DILocation(line: 1428, column: 7, scope: !1158)
!1164 = !DILocation(line: 1430, column: 9, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1430, column: 9)
!1166 = !DILocation(line: 1430, column: 17, scope: !1165)
!1167 = !DILocation(line: 1430, column: 27, scope: !1165)
!1168 = !DILocation(line: 1430, column: 31, scope: !1165)
!1169 = !DILocation(line: 1431, column: 17, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 1430, column: 55)
!1171 = !DILocation(line: 1432, column: 17, scope: !1170)
!1172 = !DILocation(line: 1432, column: 44, scope: !1170)
!1173 = !DILocation(line: 1432, column: 35, scope: !1170)
!1174 = !DILocation(line: 1431, column: 7, scope: !1170)
!1175 = !DILocation(line: 1433, column: 7, scope: !1170)
!1176 = !DILocation(line: 1434, column: 7, scope: !1170)
!1177 = !DILocation(line: 1436, column: 9, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1436, column: 9)
!1179 = !DILocation(line: 1436, column: 17, scope: !1178)
!1180 = !DILocation(line: 1436, column: 27, scope: !1178)
!1181 = !DILocation(line: 1436, column: 30, scope: !1178)
!1182 = !DILocation(line: 1436, column: 38, scope: !1178)
!1183 = !DILocation(line: 1437, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 1436, column: 50)
!1185 = !DILocation(line: 1438, column: 12, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 1438, column: 12)
!1187 = !DILocation(line: 1439, column: 19, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 1438, column: 42)
!1189 = !DILocation(line: 1441, column: 19, scope: !1188)
!1190 = !DILocation(line: 1439, column: 10, scope: !1188)
!1191 = !DILocation(line: 1442, column: 10, scope: !1188)
!1192 = !DILocation(line: 1443, column: 10, scope: !1188)
!1193 = !DILocation(line: 1445, column: 4, scope: !1184)
!1194 = !DILocation(line: 1446, column: 9, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1446, column: 9)
!1196 = !DILocation(line: 1446, column: 17, scope: !1195)
!1197 = !DILocation(line: 1446, column: 27, scope: !1195)
!1198 = !DILocation(line: 1446, column: 31, scope: !1195)
!1199 = !DILocation(line: 1446, column: 46, scope: !1195)
!1200 = !DILocation(line: 1446, column: 49, scope: !1195)
!1201 = !DILocation(line: 1447, column: 11, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 1447, column: 11)
!1203 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 1446, column: 78)
!1204 = !DILocation(line: 1448, column: 17, scope: !1202)
!1205 = !DILocation(line: 1449, column: 17, scope: !1202)
!1206 = !DILocation(line: 1448, column: 7, scope: !1202)
!1207 = !DILocation(line: 1450, column: 7, scope: !1203)
!1208 = !DILocation(line: 1451, column: 7, scope: !1203)
!1209 = !DILocation(line: 1453, column: 44, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1453, column: 44)
!1211 = !DILocation(line: 1454, column: 11, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 1454, column: 11)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 1453, column: 56)
!1214 = !DILocation(line: 1455, column: 17, scope: !1212)
!1215 = !DILocation(line: 1457, column: 17, scope: !1212)
!1216 = !DILocation(line: 1455, column: 7, scope: !1212)
!1217 = !DILocation(line: 1459, column: 4, scope: !1213)
!1218 = !DILocation(line: 1460, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1460, column: 9)
!1220 = !DILocation(line: 1460, column: 17, scope: !1219)
!1221 = !DILocation(line: 1460, column: 27, scope: !1219)
!1222 = !DILocation(line: 1460, column: 30, scope: !1219)
!1223 = !DILocation(line: 1461, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 1461, column: 11)
!1225 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 1460, column: 55)
!1226 = !DILocation(line: 1462, column: 2, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 1461, column: 27)
!1228 = !DILocation(line: 1463, column: 7, scope: !1227)
!1229 = !DILocation(line: 1464, column: 19, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 1463, column: 14)
!1231 = !DILocation(line: 1465, column: 19, scope: !1230)
!1232 = !DILocation(line: 1464, column: 9, scope: !1230)
!1233 = !DILocation(line: 1466, column: 9, scope: !1230)
!1234 = !DILocation(line: 1467, column: 9, scope: !1230)
!1235 = !DILocation(line: 1469, column: 4, scope: !1225)
!1236 = !DILocation(line: 1470, column: 9, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1470, column: 9)
!1238 = !DILocation(line: 1470, column: 17, scope: !1237)
!1239 = !DILocation(line: 1470, column: 27, scope: !1237)
!1240 = !DILocation(line: 1470, column: 31, scope: !1237)
!1241 = !DILocation(line: 1470, column: 46, scope: !1237)
!1242 = !DILocation(line: 1471, column: 12, scope: !1237)
!1243 = !DILocation(line: 1471, column: 11, scope: !1237)
!1244 = !DILocation(line: 1471, column: 40, scope: !1237)
!1245 = !DILocation(line: 1472, column: 17, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 1471, column: 45)
!1247 = !DILocation(line: 1473, column: 17, scope: !1246)
!1248 = !DILocation(line: 1473, column: 35, scope: !1246)
!1249 = !DILocation(line: 1473, column: 38, scope: !1246)
!1250 = !DILocation(line: 1473, column: 40, scope: !1246)
!1251 = !DILocation(line: 1472, column: 7, scope: !1246)
!1252 = !DILocation(line: 1474, column: 7, scope: !1246)
!1253 = !DILocation(line: 1475, column: 7, scope: !1246)
!1254 = !DILocation(line: 1478, column: 9, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1478, column: 9)
!1256 = !DILocation(line: 1478, column: 17, scope: !1255)
!1257 = !DILocation(line: 1481, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 1478, column: 29)
!1259 = !DILocation(line: 1482, column: 4, scope: !1258)
!1260 = !DILocation(line: 1484, column: 13, scope: !1086)
!1261 = !DILocation(line: 1484, column: 4, scope: !1086)
!1262 = !DILocation(line: 1487, column: 18, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1484, column: 23)
!1264 = !DILocation(line: 1487, column: 16, scope: !1263)
!1265 = !DILocation(line: 1488, column: 19, scope: !1263)
!1266 = !DILocation(line: 1488, column: 17, scope: !1263)
!1267 = !DILocation(line: 1489, column: 33, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 1489, column: 15)
!1269 = !DILocation(line: 1489, column: 24, scope: !1268)
!1270 = !DILocation(line: 1489, column: 15, scope: !1268)
!1271 = !DILocation(line: 1490, column: 23, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 1489, column: 45)
!1273 = !DILocation(line: 1492, column: 23, scope: !1272)
!1274 = !DILocation(line: 1490, column: 13, scope: !1272)
!1275 = !DILocation(line: 1493, column: 23, scope: !1272)
!1276 = !DILocation(line: 1494, column: 31, scope: !1272)
!1277 = !DILocation(line: 1494, column: 41, scope: !1272)
!1278 = !DILocation(line: 1493, column: 13, scope: !1272)
!1279 = !DILocation(line: 1495, column: 13, scope: !1272)
!1280 = !DILocation(line: 1496, column: 13, scope: !1272)
!1281 = !DILocation(line: 1498, column: 10, scope: !1263)
!1282 = !DILocation(line: 1501, column: 18, scope: !1263)
!1283 = !DILocation(line: 1501, column: 16, scope: !1263)
!1284 = !DILocation(line: 1502, column: 19, scope: !1263)
!1285 = !DILocation(line: 1502, column: 17, scope: !1263)
!1286 = !DILocation(line: 1503, column: 15, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 1503, column: 15)
!1288 = !DILocation(line: 1503, column: 21, scope: !1287)
!1289 = !DILocation(line: 1504, column: 23, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 1503, column: 31)
!1291 = !DILocation(line: 1505, column: 23, scope: !1290)
!1292 = !DILocation(line: 1505, column: 50, scope: !1290)
!1293 = !DILocation(line: 1505, column: 41, scope: !1290)
!1294 = !DILocation(line: 1504, column: 13, scope: !1290)
!1295 = !DILocation(line: 1506, column: 18, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 1506, column: 18)
!1297 = !DILocation(line: 1506, column: 24, scope: !1296)
!1298 = !DILocation(line: 1506, column: 43, scope: !1296)
!1299 = !DILocation(line: 1506, column: 34, scope: !1296)
!1300 = !DILocation(line: 1507, column: 13, scope: !1290)
!1301 = !DILocation(line: 1508, column: 13, scope: !1290)
!1302 = !DILocation(line: 1510, column: 10, scope: !1263)
!1303 = !DILocation(line: 1513, column: 18, scope: !1263)
!1304 = !DILocation(line: 1513, column: 16, scope: !1263)
!1305 = !DILocation(line: 1514, column: 19, scope: !1263)
!1306 = !DILocation(line: 1514, column: 17, scope: !1263)
!1307 = !DILocation(line: 1515, column: 15, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 1515, column: 15)
!1309 = !DILocation(line: 1515, column: 22, scope: !1308)
!1310 = !DILocation(line: 1516, column: 23, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 1515, column: 31)
!1312 = !DILocation(line: 1517, column: 23, scope: !1311)
!1313 = !DILocation(line: 1517, column: 51, scope: !1311)
!1314 = !DILocation(line: 1517, column: 42, scope: !1311)
!1315 = !DILocation(line: 1516, column: 13, scope: !1311)
!1316 = !DILocation(line: 1518, column: 18, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 1518, column: 18)
!1318 = !DILocation(line: 1518, column: 24, scope: !1317)
!1319 = !DILocation(line: 1518, column: 43, scope: !1317)
!1320 = !DILocation(line: 1518, column: 34, scope: !1317)
!1321 = !DILocation(line: 1519, column: 13, scope: !1311)
!1322 = !DILocation(line: 1520, column: 13, scope: !1311)
!1323 = !DILocation(line: 1522, column: 15, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 1522, column: 15)
!1325 = !DILocation(line: 1522, column: 21, scope: !1324)
!1326 = !DILocation(line: 1523, column: 23, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 1522, column: 31)
!1328 = !DILocation(line: 1524, column: 23, scope: !1327)
!1329 = !DILocation(line: 1524, column: 50, scope: !1327)
!1330 = !DILocation(line: 1524, column: 41, scope: !1327)
!1331 = !DILocation(line: 1523, column: 13, scope: !1327)
!1332 = !DILocation(line: 1525, column: 18, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 1525, column: 18)
!1334 = !DILocation(line: 1525, column: 25, scope: !1333)
!1335 = !DILocation(line: 1525, column: 44, scope: !1333)
!1336 = !DILocation(line: 1525, column: 35, scope: !1333)
!1337 = !DILocation(line: 1526, column: 13, scope: !1327)
!1338 = !DILocation(line: 1527, column: 13, scope: !1327)
!1339 = !DILocation(line: 1529, column: 10, scope: !1263)
!1340 = !DILocation(line: 1532, column: 10, scope: !1263)
!1341 = !DILocation(line: 1536, column: 8, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1536, column: 8)
!1343 = !DILocation(line: 1536, column: 18, scope: !1342)
!1344 = !DILocation(line: 1537, column: 17, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 1536, column: 24)
!1346 = !DILocation(line: 1537, column: 7, scope: !1345)
!1347 = !DILocation(line: 1538, column: 7, scope: !1345)
!1348 = !DILocation(line: 1539, column: 16, scope: !1345)
!1349 = !DILocation(line: 1539, column: 7, scope: !1345)
!1350 = !DILocation(line: 1540, column: 4, scope: !1345)
!1351 = !DILocation(line: 1543, column: 29, scope: !1086)
!1352 = !DILocation(line: 1543, column: 27, scope: !1086)
!1353 = !DILocation(line: 1544, column: 28, scope: !1086)
!1354 = !DILocation(line: 1545, column: 39, scope: !1086)
!1355 = !DILocation(line: 1545, column: 46, scope: !1086)
!1356 = !DILocation(line: 1545, column: 20, scope: !1086)
!1357 = !DILocation(line: 1545, column: 18, scope: !1086)
!1358 = !DILocation(line: 1546, column: 27, scope: !1086)
!1359 = !DILocation(line: 1549, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1549, column: 9)
!1361 = !DILocation(line: 1550, column: 12, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 1550, column: 12)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 1549, column: 25)
!1364 = !DILocation(line: 1550, column: 20, scope: !1362)
!1365 = !DILocation(line: 1551, column: 10, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 1550, column: 32)
!1367 = !DILocation(line: 1552, column: 34, scope: !1366)
!1368 = !DILocation(line: 1553, column: 16, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 1553, column: 15)
!1370 = !DILocation(line: 1553, column: 15, scope: !1369)
!1371 = !DILocalVariable(name: "retVal", scope: !1372, file: !2, line: 1554, type: !573)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 1553, column: 33)
!1373 = !DILocation(line: 1554, column: 23, scope: !1372)
!1374 = !DILocation(line: 1554, column: 32, scope: !1372)
!1375 = !DILocation(line: 1555, column: 13, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 1555, column: 13)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 1555, column: 13)
!1378 = !DILocation(line: 1556, column: 10, scope: !1372)
!1379 = !DILocation(line: 1557, column: 7, scope: !1366)
!1380 = !DILocation(line: 1558, column: 4, scope: !1363)
!1381 = !DILocation(line: 1559, column: 21, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 1558, column: 11)
!1383 = !DILocation(line: 1560, column: 31, scope: !1382)
!1384 = !DILocation(line: 1561, column: 12, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 1561, column: 12)
!1386 = !DILocation(line: 1561, column: 20, scope: !1385)
!1387 = !DILocalVariable(name: "retVal", scope: !1388, file: !2, line: 1562, type: !573)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 1561, column: 32)
!1389 = !DILocation(line: 1562, column: 20, scope: !1388)
!1390 = !DILocation(line: 1562, column: 29, scope: !1388)
!1391 = !DILocation(line: 1563, column: 10, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 1563, column: 10)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 1563, column: 10)
!1394 = !DILocation(line: 1564, column: 7, scope: !1388)
!1395 = !DILocation(line: 1566, column: 28, scope: !1086)
!1396 = !DILocation(line: 1568, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1568, column: 9)
!1398 = !DILocation(line: 1569, column: 11, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 1569, column: 11)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 1568, column: 25)
!1401 = !DILocation(line: 1569, column: 21, scope: !1399)
!1402 = !DILocation(line: 1570, column: 20, scope: !1399)
!1403 = !DILocation(line: 1570, column: 10, scope: !1399)
!1404 = !DILocation(line: 1571, column: 4, scope: !1400)
!1405 = !DILocation(line: 1572, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 1571, column: 11)
!1407 = !DILocation(line: 1573, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 1573, column: 11)
!1409 = !DILocation(line: 1573, column: 21, scope: !1408)
!1410 = !DILocation(line: 1574, column: 20, scope: !1408)
!1411 = !DILocation(line: 1574, column: 10, scope: !1408)
!1412 = !DILocation(line: 1575, column: 20, scope: !1408)
!1413 = !DILocation(line: 1577, column: 20, scope: !1408)
!1414 = !DILocation(line: 1575, column: 10, scope: !1408)
!1415 = !DILocation(line: 1580, column: 1, scope: !1086)
!1416 = distinct !DISubprogram(name: "setExit", scope: !2, file: !2, line: 734, type: !1417, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !43}
!1419 = !DILocalVariable(name: "v", arg: 1, scope: !1416, file: !2, line: 734, type: !43)
!1420 = !DILocation(line: 734, column: 22, scope: !1416)
!1421 = !DILocation(line: 736, column: 8, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 736, column: 8)
!1423 = !DILocation(line: 736, column: 12, scope: !1422)
!1424 = !DILocation(line: 736, column: 10, scope: !1422)
!1425 = !DILocation(line: 736, column: 35, scope: !1422)
!1426 = !DILocation(line: 736, column: 33, scope: !1422)
!1427 = !DILocation(line: 736, column: 23, scope: !1422)
!1428 = !DILocation(line: 737, column: 1, scope: !1416)
!1429 = distinct !DISubprogram(name: "testf", scope: !2, file: !2, line: 1585, type: !766, scopeLine: 1586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1430 = !DILocalVariable(name: "name", arg: 1, scope: !1429, file: !2, line: 1585, type: !46)
!1431 = !DILocation(line: 1585, column: 20, scope: !1429)
!1432 = !DILocalVariable(name: "inStr", scope: !1429, file: !2, line: 1587, type: !213)
!1433 = !DILocation(line: 1587, column: 10, scope: !1429)
!1434 = !DILocalVariable(name: "allOK", scope: !1429, file: !2, line: 1588, type: !41)
!1435 = !DILocation(line: 1588, column: 9, scope: !1429)
!1436 = !DILocalVariable(name: "statBuf", scope: !1429, file: !2, line: 1589, type: !420)
!1437 = !DILocation(line: 1589, column: 19, scope: !1429)
!1438 = !DILocation(line: 1591, column: 28, scope: !1429)
!1439 = !DILocation(line: 1593, column: 8, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1593, column: 8)
!1441 = !DILocation(line: 1593, column: 13, scope: !1440)
!1442 = !DILocation(line: 1593, column: 21, scope: !1440)
!1443 = !DILocation(line: 1593, column: 24, scope: !1440)
!1444 = !DILocation(line: 1593, column: 32, scope: !1440)
!1445 = !DILocation(line: 1594, column: 7, scope: !1440)
!1446 = !DILocation(line: 1596, column: 4, scope: !1429)
!1447 = !DILocation(line: 1597, column: 12, scope: !1429)
!1448 = !DILocation(line: 1597, column: 4, scope: !1429)
!1449 = !DILocation(line: 1598, column: 20, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1597, column: 21)
!1451 = !DILocation(line: 1598, column: 56, scope: !1450)
!1452 = !DILocation(line: 1599, column: 43, scope: !1450)
!1453 = !DILocation(line: 1599, column: 20, scope: !1450)
!1454 = !DILocation(line: 1599, column: 51, scope: !1450)
!1455 = !DILocation(line: 1600, column: 43, scope: !1450)
!1456 = !DILocation(line: 1600, column: 20, scope: !1450)
!1457 = !DILocation(line: 1600, column: 51, scope: !1450)
!1458 = !DILocation(line: 1603, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1603, column: 9)
!1460 = !DILocation(line: 1603, column: 17, scope: !1459)
!1461 = !DILocation(line: 1603, column: 27, scope: !1459)
!1462 = !DILocation(line: 1603, column: 30, scope: !1459)
!1463 = !DILocation(line: 1604, column: 11, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 1604, column: 11)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 1603, column: 64)
!1466 = !DILocation(line: 1605, column: 17, scope: !1464)
!1467 = !DILocation(line: 1606, column: 17, scope: !1464)
!1468 = !DILocation(line: 1605, column: 7, scope: !1464)
!1469 = !DILocation(line: 1607, column: 7, scope: !1465)
!1470 = !DILocation(line: 1608, column: 7, scope: !1465)
!1471 = !DILocation(line: 1610, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1610, column: 9)
!1473 = !DILocation(line: 1610, column: 17, scope: !1472)
!1474 = !DILocation(line: 1610, column: 27, scope: !1472)
!1475 = !DILocation(line: 1610, column: 31, scope: !1472)
!1476 = !DILocation(line: 1611, column: 17, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 1610, column: 55)
!1478 = !DILocation(line: 1612, column: 17, scope: !1477)
!1479 = !DILocation(line: 1612, column: 44, scope: !1477)
!1480 = !DILocation(line: 1612, column: 35, scope: !1477)
!1481 = !DILocation(line: 1611, column: 7, scope: !1477)
!1482 = !DILocation(line: 1613, column: 7, scope: !1477)
!1483 = !DILocation(line: 1614, column: 7, scope: !1477)
!1484 = !DILocation(line: 1616, column: 9, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1616, column: 9)
!1486 = !DILocation(line: 1616, column: 17, scope: !1485)
!1487 = !DILocation(line: 1617, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 1616, column: 29)
!1489 = !DILocation(line: 1618, column: 12, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 1618, column: 12)
!1491 = !DILocation(line: 1619, column: 19, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 1618, column: 42)
!1493 = !DILocation(line: 1621, column: 19, scope: !1492)
!1494 = !DILocation(line: 1619, column: 10, scope: !1492)
!1495 = !DILocation(line: 1622, column: 10, scope: !1492)
!1496 = !DILocation(line: 1623, column: 10, scope: !1492)
!1497 = !DILocation(line: 1625, column: 4, scope: !1488)
!1498 = !DILocation(line: 1627, column: 13, scope: !1429)
!1499 = !DILocation(line: 1627, column: 4, scope: !1429)
!1500 = !DILocation(line: 1630, column: 33, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 1630, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1627, column: 23)
!1503 = !DILocation(line: 1630, column: 24, scope: !1501)
!1504 = !DILocation(line: 1630, column: 15, scope: !1501)
!1505 = !DILocation(line: 1631, column: 23, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 1630, column: 45)
!1507 = !DILocation(line: 1633, column: 23, scope: !1506)
!1508 = !DILocation(line: 1631, column: 13, scope: !1506)
!1509 = !DILocation(line: 1634, column: 23, scope: !1506)
!1510 = !DILocation(line: 1635, column: 31, scope: !1506)
!1511 = !DILocation(line: 1635, column: 41, scope: !1506)
!1512 = !DILocation(line: 1634, column: 13, scope: !1506)
!1513 = !DILocation(line: 1636, column: 13, scope: !1506)
!1514 = !DILocation(line: 1637, column: 13, scope: !1506)
!1515 = !DILocation(line: 1639, column: 18, scope: !1502)
!1516 = !DILocation(line: 1639, column: 16, scope: !1502)
!1517 = !DILocation(line: 1640, column: 10, scope: !1502)
!1518 = !DILocation(line: 1643, column: 18, scope: !1502)
!1519 = !DILocation(line: 1643, column: 16, scope: !1502)
!1520 = !DILocation(line: 1644, column: 15, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 1644, column: 15)
!1522 = !DILocation(line: 1644, column: 21, scope: !1521)
!1523 = !DILocation(line: 1645, column: 23, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 1644, column: 31)
!1525 = !DILocation(line: 1646, column: 23, scope: !1524)
!1526 = !DILocation(line: 1646, column: 50, scope: !1524)
!1527 = !DILocation(line: 1646, column: 41, scope: !1524)
!1528 = !DILocation(line: 1645, column: 13, scope: !1524)
!1529 = !DILocation(line: 1647, column: 13, scope: !1524)
!1530 = !DILocation(line: 1648, column: 13, scope: !1524)
!1531 = !DILocation(line: 1650, column: 10, scope: !1502)
!1532 = !DILocation(line: 1653, column: 10, scope: !1502)
!1533 = !DILocation(line: 1657, column: 8, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1657, column: 8)
!1535 = !DILocation(line: 1657, column: 18, scope: !1534)
!1536 = !DILocation(line: 1658, column: 17, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 1657, column: 24)
!1538 = !DILocation(line: 1658, column: 7, scope: !1537)
!1539 = !DILocation(line: 1659, column: 7, scope: !1537)
!1540 = !DILocation(line: 1660, column: 16, scope: !1537)
!1541 = !DILocation(line: 1660, column: 7, scope: !1537)
!1542 = !DILocation(line: 1661, column: 4, scope: !1537)
!1543 = !DILocation(line: 1664, column: 27, scope: !1429)
!1544 = !DILocation(line: 1665, column: 25, scope: !1429)
!1545 = !DILocation(line: 1665, column: 12, scope: !1429)
!1546 = !DILocation(line: 1665, column: 10, scope: !1429)
!1547 = !DILocation(line: 1667, column: 8, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1667, column: 8)
!1549 = !DILocation(line: 1667, column: 14, scope: !1548)
!1550 = !DILocation(line: 1667, column: 17, scope: !1548)
!1551 = !DILocation(line: 1667, column: 27, scope: !1548)
!1552 = !DILocation(line: 1667, column: 43, scope: !1548)
!1553 = !DILocation(line: 1667, column: 33, scope: !1548)
!1554 = !DILocation(line: 1668, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1668, column: 8)
!1556 = !DILocation(line: 1668, column: 8, scope: !1555)
!1557 = !DILocation(line: 1668, column: 31, scope: !1555)
!1558 = !DILocation(line: 1668, column: 16, scope: !1555)
!1559 = !DILocation(line: 1669, column: 1, scope: !1429)
!1560 = distinct !DISubprogram(name: "showFileNames", scope: !2, file: !2, line: 757, type: !759, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!1561 = !DILocation(line: 759, column: 8, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 759, column: 8)
!1563 = !DILocation(line: 761, column: 7, scope: !1562)
!1564 = !DILocation(line: 760, column: 4, scope: !1562)
!1565 = !DILocation(line: 765, column: 1, scope: !1560)
!1566 = distinct !DISubprogram(name: "cleanUpAndFail", scope: !2, file: !2, line: 770, type: !1417, scopeLine: 771, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1567 = !DILocalVariable(name: "ec", arg: 1, scope: !1566, file: !2, line: 770, type: !43)
!1568 = !DILocation(line: 770, column: 29, scope: !1566)
!1569 = !DILocalVariable(name: "retVal", scope: !1566, file: !2, line: 772, type: !573)
!1570 = !DILocation(line: 772, column: 19, scope: !1566)
!1571 = !DILocalVariable(name: "statBuf", scope: !1566, file: !2, line: 773, type: !420)
!1572 = !DILocation(line: 773, column: 19, scope: !1566)
!1573 = !DILocation(line: 775, column: 9, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 775, column: 9)
!1575 = !DILocation(line: 775, column: 17, scope: !1574)
!1576 = !DILocation(line: 776, column: 9, scope: !1574)
!1577 = !DILocation(line: 776, column: 12, scope: !1574)
!1578 = !DILocation(line: 776, column: 19, scope: !1574)
!1579 = !DILocation(line: 777, column: 9, scope: !1574)
!1580 = !DILocation(line: 777, column: 12, scope: !1574)
!1581 = !DILocation(line: 784, column: 16, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 777, column: 38)
!1583 = !DILocation(line: 784, column: 14, scope: !1582)
!1584 = !DILocation(line: 785, column: 11, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 785, column: 11)
!1586 = !DILocation(line: 785, column: 18, scope: !1585)
!1587 = !DILocation(line: 786, column: 14, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 786, column: 14)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 785, column: 24)
!1590 = !DILocation(line: 787, column: 23, scope: !1588)
!1591 = !DILocation(line: 789, column: 23, scope: !1588)
!1592 = !DILocation(line: 787, column: 13, scope: !1588)
!1593 = !DILocation(line: 790, column: 14, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 790, column: 14)
!1595 = !DILocation(line: 790, column: 37, scope: !1594)
!1596 = !DILocation(line: 791, column: 22, scope: !1594)
!1597 = !DILocation(line: 791, column: 13, scope: !1594)
!1598 = !DILocation(line: 792, column: 19, scope: !1589)
!1599 = !DILocation(line: 792, column: 17, scope: !1589)
!1600 = !DILocation(line: 793, column: 14, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 793, column: 14)
!1602 = !DILocation(line: 793, column: 21, scope: !1601)
!1603 = !DILocation(line: 794, column: 23, scope: !1601)
!1604 = !DILocation(line: 797, column: 23, scope: !1601)
!1605 = !DILocation(line: 794, column: 13, scope: !1601)
!1606 = !DILocation(line: 798, column: 7, scope: !1589)
!1607 = !DILocation(line: 799, column: 20, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 798, column: 14)
!1609 = !DILocation(line: 801, column: 21, scope: !1608)
!1610 = !DILocation(line: 799, column: 10, scope: !1608)
!1611 = !DILocation(line: 802, column: 20, scope: !1608)
!1612 = !DILocation(line: 804, column: 20, scope: !1608)
!1613 = !DILocation(line: 802, column: 10, scope: !1608)
!1614 = !DILocation(line: 805, column: 20, scope: !1608)
!1615 = !DILocation(line: 807, column: 20, scope: !1608)
!1616 = !DILocation(line: 805, column: 10, scope: !1608)
!1617 = !DILocation(line: 808, column: 20, scope: !1608)
!1618 = !DILocation(line: 811, column: 20, scope: !1608)
!1619 = !DILocation(line: 808, column: 10, scope: !1608)
!1620 = !DILocation(line: 813, column: 4, scope: !1582)
!1621 = !DILocation(line: 815, column: 8, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 815, column: 8)
!1623 = !DILocation(line: 815, column: 14, scope: !1622)
!1624 = !DILocation(line: 815, column: 17, scope: !1622)
!1625 = !DILocation(line: 815, column: 30, scope: !1622)
!1626 = !DILocation(line: 815, column: 34, scope: !1622)
!1627 = !DILocation(line: 815, column: 37, scope: !1622)
!1628 = !DILocation(line: 815, column: 57, scope: !1622)
!1629 = !DILocation(line: 815, column: 55, scope: !1622)
!1630 = !DILocation(line: 816, column: 17, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 815, column: 71)
!1632 = !DILocation(line: 819, column: 17, scope: !1631)
!1633 = !DILocation(line: 819, column: 27, scope: !1631)
!1634 = !DILocation(line: 820, column: 17, scope: !1631)
!1635 = !DILocation(line: 820, column: 31, scope: !1631)
!1636 = !DILocation(line: 820, column: 46, scope: !1631)
!1637 = !DILocation(line: 820, column: 44, scope: !1631)
!1638 = !DILocation(line: 816, column: 7, scope: !1631)
!1639 = !DILocation(line: 821, column: 4, scope: !1631)
!1640 = !DILocation(line: 822, column: 12, scope: !1566)
!1641 = !DILocation(line: 822, column: 4, scope: !1566)
!1642 = !DILocation(line: 823, column: 9, scope: !1566)
!1643 = !DILocation(line: 823, column: 4, scope: !1566)
!1644 = distinct !DISubprogram(name: "cadvise", scope: !2, file: !2, line: 742, type: !759, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!1645 = !DILocation(line: 744, column: 8, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 744, column: 8)
!1647 = !DILocation(line: 746, column: 7, scope: !1646)
!1648 = !DILocation(line: 745, column: 4, scope: !1646)
!1649 = !DILocation(line: 752, column: 1, scope: !1644)
!1650 = distinct !DISubprogram(name: "mkCell", scope: !2, file: !2, line: 1789, type: !1651, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!48}
!1653 = !DILocalVariable(name: "c", scope: !1650, file: !2, line: 1791, type: !48)
!1654 = !DILocation(line: 1791, column: 10, scope: !1650)
!1655 = !DILocation(line: 1793, column: 16, scope: !1650)
!1656 = !DILocation(line: 1793, column: 6, scope: !1650)
!1657 = !DILocation(line: 1794, column: 4, scope: !1650)
!1658 = !DILocation(line: 1794, column: 7, scope: !1650)
!1659 = !DILocation(line: 1794, column: 12, scope: !1650)
!1660 = !DILocation(line: 1795, column: 4, scope: !1650)
!1661 = !DILocation(line: 1795, column: 7, scope: !1650)
!1662 = !DILocation(line: 1795, column: 12, scope: !1650)
!1663 = !DILocation(line: 1796, column: 11, scope: !1650)
!1664 = !DILocation(line: 1796, column: 4, scope: !1650)
!1665 = distinct !DISubprogram(name: "myMalloc", scope: !2, file: !2, line: 1777, type: !1666, scopeLine: 1778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!40, !43}
!1668 = !DILocalVariable(name: "n", arg: 1, scope: !1665, file: !2, line: 1777, type: !43)
!1669 = !DILocation(line: 1777, column: 24, scope: !1665)
!1670 = !DILocalVariable(name: "p", scope: !1665, file: !2, line: 1779, type: !40)
!1671 = !DILocation(line: 1779, column: 10, scope: !1665)
!1672 = !DILocation(line: 1781, column: 25, scope: !1665)
!1673 = !DILocation(line: 1781, column: 17, scope: !1665)
!1674 = !DILocation(line: 1781, column: 8, scope: !1665)
!1675 = !DILocation(line: 1781, column: 6, scope: !1665)
!1676 = !DILocation(line: 1782, column: 8, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 1782, column: 8)
!1678 = !DILocation(line: 1782, column: 10, scope: !1677)
!1679 = !DILocation(line: 1782, column: 19, scope: !1677)
!1680 = !DILocation(line: 1783, column: 11, scope: !1665)
!1681 = !DILocation(line: 1783, column: 4, scope: !1665)
!1682 = distinct !DISubprogram(name: "outOfMemory", scope: !2, file: !2, line: 955, type: !759, scopeLine: 956, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!1683 = !DILocation(line: 957, column: 14, scope: !1682)
!1684 = !DILocation(line: 959, column: 14, scope: !1682)
!1685 = !DILocation(line: 957, column: 4, scope: !1682)
!1686 = !DILocation(line: 960, column: 4, scope: !1682)
!1687 = !DILocation(line: 961, column: 4, scope: !1682)
!1688 = distinct !DISubprogram(name: "panic", scope: !2, file: !2, line: 829, type: !766, scopeLine: 830, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1689 = !DILocalVariable(name: "s", arg: 1, scope: !1688, file: !2, line: 829, type: !46)
!1690 = !DILocation(line: 829, column: 20, scope: !1688)
!1691 = !DILocation(line: 831, column: 14, scope: !1688)
!1692 = !DILocation(line: 836, column: 14, scope: !1688)
!1693 = !DILocation(line: 836, column: 24, scope: !1688)
!1694 = !DILocation(line: 831, column: 4, scope: !1688)
!1695 = !DILocation(line: 837, column: 4, scope: !1688)
!1696 = !DILocation(line: 838, column: 4, scope: !1688)
!1697 = distinct !DISubprogram(name: "containsDubiousChars", scope: !2, file: !2, line: 1157, type: !1698, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!41, !46}
!1700 = !DILocalVariable(name: "name", arg: 1, scope: !1697, file: !2, line: 1157, type: !46)
!1701 = !DILocation(line: 1157, column: 35, scope: !1697)
!1702 = !DILocation(line: 1163, column: 4, scope: !1697)
!1703 = distinct !DISubprogram(name: "fileExists", scope: !2, file: !2, line: 1023, type: !1698, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1704 = !DILocalVariable(name: "name", arg: 1, scope: !1703, file: !2, line: 1023, type: !46)
!1705 = !DILocation(line: 1023, column: 25, scope: !1703)
!1706 = !DILocalVariable(name: "tmp", scope: !1703, file: !2, line: 1025, type: !213)
!1707 = !DILocation(line: 1025, column: 10, scope: !1703)
!1708 = !DILocation(line: 1025, column: 26, scope: !1703)
!1709 = !DILocation(line: 1025, column: 18, scope: !1703)
!1710 = !DILocalVariable(name: "exists", scope: !1703, file: !2, line: 1026, type: !41)
!1711 = !DILocation(line: 1026, column: 9, scope: !1703)
!1712 = !DILocation(line: 1026, column: 19, scope: !1703)
!1713 = !DILocation(line: 1026, column: 23, scope: !1703)
!1714 = !DILocation(line: 1026, column: 18, scope: !1703)
!1715 = !DILocation(line: 1027, column: 8, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 1027, column: 8)
!1717 = !DILocation(line: 1027, column: 12, scope: !1716)
!1718 = !DILocation(line: 1027, column: 30, scope: !1716)
!1719 = !DILocation(line: 1027, column: 21, scope: !1716)
!1720 = !DILocation(line: 1028, column: 11, scope: !1703)
!1721 = !DILocation(line: 1028, column: 4, scope: !1703)
!1722 = distinct !DISubprogram(name: "hasSuffix", scope: !2, file: !2, line: 1184, type: !1723, scopeLine: 1185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!41, !46, !46}
!1725 = !DILocalVariable(name: "s", arg: 1, scope: !1722, file: !2, line: 1184, type: !46)
!1726 = !DILocation(line: 1184, column: 24, scope: !1722)
!1727 = !DILocalVariable(name: "suffix", arg: 2, scope: !1722, file: !2, line: 1184, type: !46)
!1728 = !DILocation(line: 1184, column: 33, scope: !1722)
!1729 = !DILocalVariable(name: "ns", scope: !1722, file: !2, line: 1186, type: !43)
!1730 = !DILocation(line: 1186, column: 10, scope: !1722)
!1731 = !DILocation(line: 1186, column: 22, scope: !1722)
!1732 = !DILocation(line: 1186, column: 15, scope: !1722)
!1733 = !DILocalVariable(name: "nx", scope: !1722, file: !2, line: 1187, type: !43)
!1734 = !DILocation(line: 1187, column: 10, scope: !1722)
!1735 = !DILocation(line: 1187, column: 22, scope: !1722)
!1736 = !DILocation(line: 1187, column: 15, scope: !1722)
!1737 = !DILocation(line: 1188, column: 8, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 1188, column: 8)
!1739 = !DILocation(line: 1188, column: 13, scope: !1738)
!1740 = !DILocation(line: 1188, column: 11, scope: !1738)
!1741 = !DILocation(line: 1188, column: 17, scope: !1738)
!1742 = !DILocation(line: 1189, column: 15, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 1189, column: 8)
!1744 = !DILocation(line: 1189, column: 19, scope: !1743)
!1745 = !DILocation(line: 1189, column: 17, scope: !1743)
!1746 = !DILocation(line: 1189, column: 24, scope: !1743)
!1747 = !DILocation(line: 1189, column: 22, scope: !1743)
!1748 = !DILocation(line: 1189, column: 28, scope: !1743)
!1749 = !DILocation(line: 1189, column: 8, scope: !1743)
!1750 = !DILocation(line: 1189, column: 36, scope: !1743)
!1751 = !DILocation(line: 1189, column: 42, scope: !1743)
!1752 = !DILocation(line: 1190, column: 4, scope: !1722)
!1753 = !DILocation(line: 1191, column: 1, scope: !1722)
!1754 = distinct !DISubprogram(name: "notAStandardFile", scope: !2, file: !2, line: 1063, type: !1698, scopeLine: 1064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1755 = !DILocalVariable(name: "name", arg: 1, scope: !1754, file: !2, line: 1063, type: !46)
!1756 = !DILocation(line: 1063, column: 31, scope: !1754)
!1757 = !DILocalVariable(name: "i", scope: !1754, file: !2, line: 1065, type: !573)
!1758 = !DILocation(line: 1065, column: 19, scope: !1754)
!1759 = !DILocalVariable(name: "statBuf", scope: !1754, file: !2, line: 1066, type: !420)
!1760 = !DILocation(line: 1066, column: 19, scope: !1754)
!1761 = !DILocation(line: 1068, column: 19, scope: !1754)
!1762 = !DILocation(line: 1068, column: 8, scope: !1754)
!1763 = !DILocation(line: 1068, column: 6, scope: !1754)
!1764 = !DILocation(line: 1069, column: 8, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 1069, column: 8)
!1766 = !DILocation(line: 1069, column: 10, scope: !1765)
!1767 = !DILocation(line: 1069, column: 16, scope: !1765)
!1768 = !DILocation(line: 1070, column: 8, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 1070, column: 8)
!1770 = !DILocation(line: 1070, column: 37, scope: !1769)
!1771 = !DILocation(line: 1071, column: 4, scope: !1754)
!1772 = !DILocation(line: 1072, column: 1, scope: !1754)
!1773 = distinct !DISubprogram(name: "countHardLinks", scope: !2, file: !2, line: 1080, type: !1774, scopeLine: 1081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!43, !46}
!1776 = !DILocalVariable(name: "name", arg: 1, scope: !1773, file: !2, line: 1080, type: !46)
!1777 = !DILocation(line: 1080, column: 30, scope: !1773)
!1778 = !DILocalVariable(name: "i", scope: !1773, file: !2, line: 1082, type: !573)
!1779 = !DILocation(line: 1082, column: 19, scope: !1773)
!1780 = !DILocalVariable(name: "statBuf", scope: !1773, file: !2, line: 1083, type: !420)
!1781 = !DILocation(line: 1083, column: 19, scope: !1773)
!1782 = !DILocation(line: 1085, column: 19, scope: !1773)
!1783 = !DILocation(line: 1085, column: 8, scope: !1773)
!1784 = !DILocation(line: 1085, column: 6, scope: !1773)
!1785 = !DILocation(line: 1086, column: 8, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 1086, column: 8)
!1787 = !DILocation(line: 1086, column: 10, scope: !1786)
!1788 = !DILocation(line: 1086, column: 16, scope: !1786)
!1789 = !DILocation(line: 1087, column: 20, scope: !1773)
!1790 = !DILocation(line: 1087, column: 29, scope: !1773)
!1791 = !DILocation(line: 1087, column: 11, scope: !1773)
!1792 = !DILocation(line: 1087, column: 4, scope: !1773)
!1793 = !DILocation(line: 1088, column: 1, scope: !1773)
!1794 = distinct !DISubprogram(name: "saveInputFileMetaInfo", scope: !2, file: !2, line: 1120, type: !766, scopeLine: 1121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1795 = !DILocalVariable(name: "srcName", arg: 1, scope: !1794, file: !2, line: 1120, type: !46)
!1796 = !DILocation(line: 1120, column: 36, scope: !1794)
!1797 = !DILocalVariable(name: "retVal", scope: !1794, file: !2, line: 1123, type: !573)
!1798 = !DILocation(line: 1123, column: 14, scope: !1794)
!1799 = !DILocation(line: 1125, column: 22, scope: !1794)
!1800 = !DILocation(line: 1125, column: 13, scope: !1794)
!1801 = !DILocation(line: 1125, column: 11, scope: !1794)
!1802 = !DILocation(line: 1126, column: 4, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 1126, column: 4)
!1804 = distinct !DILexicalBlock(scope: !1794, file: !2, line: 1126, column: 4)
!1805 = !DILocation(line: 1128, column: 1, scope: !1794)
!1806 = distinct !DISubprogram(name: "pad", scope: !2, file: !2, line: 991, type: !766, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1807 = !DILocalVariable(name: "s", arg: 1, scope: !1806, file: !2, line: 991, type: !46)
!1808 = !DILocation(line: 991, column: 18, scope: !1806)
!1809 = !DILocalVariable(name: "i", scope: !1806, file: !2, line: 993, type: !43)
!1810 = !DILocation(line: 993, column: 10, scope: !1806)
!1811 = !DILocation(line: 994, column: 23, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 994, column: 9)
!1813 = !DILocation(line: 994, column: 16, scope: !1812)
!1814 = !DILocation(line: 994, column: 9, scope: !1812)
!1815 = !DILocation(line: 994, column: 29, scope: !1812)
!1816 = !DILocation(line: 994, column: 26, scope: !1812)
!1817 = !DILocation(line: 994, column: 47, scope: !1812)
!1818 = !DILocation(line: 995, column: 11, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 995, column: 4)
!1820 = !DILocation(line: 995, column: 9, scope: !1819)
!1821 = !DILocation(line: 995, column: 16, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 995, column: 4)
!1823 = !DILocation(line: 995, column: 21, scope: !1822)
!1824 = !DILocation(line: 995, column: 53, scope: !1822)
!1825 = !DILocation(line: 995, column: 46, scope: !1822)
!1826 = !DILocation(line: 995, column: 39, scope: !1822)
!1827 = !DILocation(line: 995, column: 37, scope: !1822)
!1828 = !DILocation(line: 995, column: 18, scope: !1822)
!1829 = !DILocation(line: 995, column: 4, scope: !1819)
!1830 = !DILocation(line: 996, column: 17, scope: !1822)
!1831 = !DILocation(line: 996, column: 7, scope: !1822)
!1832 = !DILocation(line: 995, column: 58, scope: !1822)
!1833 = !DILocation(line: 995, column: 4, scope: !1822)
!1834 = distinct !{!1834, !1829, !1835, !660}
!1835 = !DILocation(line: 996, column: 29, scope: !1819)
!1836 = !DILocation(line: 997, column: 1, scope: !1806)
!1837 = distinct !DISubprogram(name: "compressStream", scope: !2, file: !2, line: 420, type: !1838, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !213, !213}
!1840 = !DILocalVariable(name: "stream", arg: 1, scope: !1837, file: !2, line: 420, type: !213)
!1841 = !DILocation(line: 420, column: 29, scope: !1837)
!1842 = !DILocalVariable(name: "zStream", arg: 2, scope: !1837, file: !2, line: 420, type: !213)
!1843 = !DILocation(line: 420, column: 43, scope: !1837)
!1844 = !DILocalVariable(name: "bzf", scope: !1837, file: !2, line: 422, type: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "BZFILE", file: !1847, line: 177, baseType: null)
!1847 = !DIFile(filename: "./bzlib.h", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_autojit_shlib", checksumkind: CSK_MD5, checksum: "2630d715580548e1aacc6fac1a21250d")
!1848 = !DILocation(line: 422, column: 12, scope: !1837)
!1849 = !DILocalVariable(name: "ibuf", scope: !1837, file: !2, line: 423, type: !1850)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 40000, elements: !1851)
!1851 = !{!1852}
!1852 = !DISubrange(count: 5000)
!1853 = !DILocation(line: 423, column: 12, scope: !1837)
!1854 = !DILocalVariable(name: "nIbuf", scope: !1837, file: !2, line: 424, type: !43)
!1855 = !DILocation(line: 424, column: 12, scope: !1837)
!1856 = !DILocalVariable(name: "nbytes_in_lo32", scope: !1837, file: !2, line: 425, type: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt32", file: !2, line: 257, baseType: !25)
!1858 = !DILocation(line: 425, column: 12, scope: !1837)
!1859 = !DILocalVariable(name: "nbytes_in_hi32", scope: !1837, file: !2, line: 425, type: !1857)
!1860 = !DILocation(line: 425, column: 28, scope: !1837)
!1861 = !DILocalVariable(name: "nbytes_out_lo32", scope: !1837, file: !2, line: 426, type: !1857)
!1862 = !DILocation(line: 426, column: 12, scope: !1837)
!1863 = !DILocalVariable(name: "nbytes_out_hi32", scope: !1837, file: !2, line: 426, type: !1857)
!1864 = !DILocation(line: 426, column: 29, scope: !1837)
!1865 = !DILocalVariable(name: "bzerr", scope: !1837, file: !2, line: 427, type: !43)
!1866 = !DILocation(line: 427, column: 12, scope: !1837)
!1867 = !DILocalVariable(name: "bzerr_dummy", scope: !1837, file: !2, line: 427, type: !43)
!1868 = !DILocation(line: 427, column: 19, scope: !1837)
!1869 = !DILocalVariable(name: "ret", scope: !1837, file: !2, line: 427, type: !43)
!1870 = !DILocation(line: 427, column: 32, scope: !1837)
!1871 = !DILocation(line: 432, column: 15, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 432, column: 8)
!1873 = !DILocation(line: 432, column: 8, scope: !1872)
!1874 = !DILocation(line: 432, column: 24, scope: !1872)
!1875 = !DILocation(line: 433, column: 15, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 433, column: 8)
!1877 = !DILocation(line: 433, column: 8, scope: !1876)
!1878 = !DILocation(line: 433, column: 25, scope: !1876)
!1879 = !DILocation(line: 435, column: 36, scope: !1837)
!1880 = !DILocation(line: 436, column: 28, scope: !1837)
!1881 = !DILocation(line: 436, column: 43, scope: !1837)
!1882 = !DILocation(line: 436, column: 54, scope: !1837)
!1883 = !DILocation(line: 435, column: 10, scope: !1837)
!1884 = !DILocation(line: 435, column: 8, scope: !1837)
!1885 = !DILocation(line: 437, column: 8, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 437, column: 8)
!1887 = !DILocation(line: 437, column: 14, scope: !1886)
!1888 = !DILocation(line: 437, column: 24, scope: !1886)
!1889 = !DILocation(line: 439, column: 8, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 439, column: 8)
!1891 = !DILocation(line: 439, column: 18, scope: !1890)
!1892 = !DILocation(line: 439, column: 34, scope: !1890)
!1893 = !DILocation(line: 439, column: 24, scope: !1890)
!1894 = !DILocation(line: 441, column: 4, scope: !1837)
!1895 = !DILocation(line: 443, column: 18, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 443, column: 11)
!1897 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 441, column: 17)
!1898 = !DILocation(line: 443, column: 11, scope: !1896)
!1899 = !DILocation(line: 443, column: 27, scope: !1896)
!1900 = !DILocation(line: 444, column: 23, scope: !1897)
!1901 = !DILocation(line: 444, column: 50, scope: !1897)
!1902 = !DILocation(line: 444, column: 15, scope: !1897)
!1903 = !DILocation(line: 444, column: 13, scope: !1897)
!1904 = !DILocation(line: 445, column: 18, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 445, column: 11)
!1906 = !DILocation(line: 445, column: 11, scope: !1905)
!1907 = !DILocation(line: 445, column: 27, scope: !1905)
!1908 = !DILocation(line: 446, column: 11, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 446, column: 11)
!1910 = !DILocation(line: 446, column: 17, scope: !1909)
!1911 = !DILocation(line: 446, column: 44, scope: !1909)
!1912 = !DILocation(line: 446, column: 56, scope: !1909)
!1913 = !DILocation(line: 446, column: 62, scope: !1909)
!1914 = !DILocation(line: 446, column: 22, scope: !1909)
!1915 = !DILocation(line: 447, column: 11, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 447, column: 11)
!1917 = !DILocation(line: 447, column: 17, scope: !1916)
!1918 = !DILocation(line: 447, column: 27, scope: !1916)
!1919 = distinct !{!1919, !1894, !1920}
!1920 = !DILocation(line: 449, column: 4, scope: !1837)
!1921 = !DILocation(line: 451, column: 33, scope: !1837)
!1922 = !DILocation(line: 451, column: 4, scope: !1837)
!1923 = !DILocation(line: 454, column: 8, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 454, column: 8)
!1925 = !DILocation(line: 454, column: 14, scope: !1924)
!1926 = !DILocation(line: 454, column: 24, scope: !1924)
!1927 = !DILocation(line: 456, column: 15, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 456, column: 8)
!1929 = !DILocation(line: 456, column: 8, scope: !1928)
!1930 = !DILocation(line: 456, column: 25, scope: !1928)
!1931 = !DILocation(line: 457, column: 19, scope: !1837)
!1932 = !DILocation(line: 457, column: 10, scope: !1837)
!1933 = !DILocation(line: 457, column: 8, scope: !1837)
!1934 = !DILocation(line: 458, column: 8, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 458, column: 8)
!1936 = !DILocation(line: 458, column: 12, scope: !1935)
!1937 = !DILocation(line: 458, column: 20, scope: !1935)
!1938 = !DILocation(line: 459, column: 8, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 459, column: 8)
!1940 = !DILocation(line: 459, column: 19, scope: !1939)
!1941 = !DILocation(line: 459, column: 16, scope: !1939)
!1942 = !DILocation(line: 460, column: 22, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 459, column: 27)
!1944 = !DILocation(line: 460, column: 13, scope: !1943)
!1945 = !DILocation(line: 460, column: 11, scope: !1943)
!1946 = !DILocation(line: 461, column: 30, scope: !1943)
!1947 = !DILocation(line: 462, column: 11, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 462, column: 11)
!1949 = !DILocation(line: 462, column: 15, scope: !1948)
!1950 = !DILocation(line: 462, column: 23, scope: !1948)
!1951 = !DILocation(line: 463, column: 4, scope: !1943)
!1952 = !DILocation(line: 464, column: 27, scope: !1837)
!1953 = !DILocation(line: 465, column: 15, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 465, column: 8)
!1955 = !DILocation(line: 465, column: 8, scope: !1954)
!1956 = !DILocation(line: 465, column: 24, scope: !1954)
!1957 = !DILocation(line: 466, column: 19, scope: !1837)
!1958 = !DILocation(line: 466, column: 10, scope: !1837)
!1959 = !DILocation(line: 466, column: 8, scope: !1837)
!1960 = !DILocation(line: 467, column: 8, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 467, column: 8)
!1962 = !DILocation(line: 467, column: 12, scope: !1961)
!1963 = !DILocation(line: 467, column: 20, scope: !1961)
!1964 = !DILocation(line: 469, column: 8, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 469, column: 8)
!1966 = !DILocation(line: 469, column: 18, scope: !1965)
!1967 = !DILocation(line: 470, column: 11, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 470, column: 11)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !2, line: 469, column: 24)
!1970 = !DILocation(line: 470, column: 26, scope: !1968)
!1971 = !DILocation(line: 470, column: 31, scope: !1968)
!1972 = !DILocation(line: 470, column: 34, scope: !1968)
!1973 = !DILocation(line: 470, column: 49, scope: !1968)
!1974 = !DILocation(line: 471, column: 13, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 470, column: 55)
!1976 = !DILocation(line: 471, column: 3, scope: !1975)
!1977 = !DILocation(line: 472, column: 7, scope: !1975)
!1978 = !DILocalVariable(name: "buf_nin", scope: !1979, file: !2, line: 473, type: !1980)
!1979 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 472, column: 14)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !306)
!1981 = !DILocation(line: 473, column: 10, scope: !1979)
!1982 = !DILocalVariable(name: "buf_nout", scope: !1979, file: !2, line: 473, type: !1980)
!1983 = !DILocation(line: 473, column: 23, scope: !1979)
!1984 = !DILocalVariable(name: "nbytes_in", scope: !1979, file: !2, line: 474, type: !1985)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt64", file: !2, line: 325, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 324, size: 64, elements: !1987)
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1986, file: !2, line: 324, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !121)
!1990 = !DILocation(line: 474, column: 10, scope: !1979)
!1991 = !DILocalVariable(name: "nbytes_out", scope: !1979, file: !2, line: 474, type: !1985)
!1992 = !DILocation(line: 474, column: 23, scope: !1979)
!1993 = !DILocalVariable(name: "nbytes_in_d", scope: !1979, file: !2, line: 475, type: !59)
!1994 = !DILocation(line: 475, column: 10, scope: !1979)
!1995 = !DILocalVariable(name: "nbytes_out_d", scope: !1979, file: !2, line: 475, type: !59)
!1996 = !DILocation(line: 475, column: 23, scope: !1979)
!1997 = !DILocation(line: 477, column: 11, scope: !1979)
!1998 = !DILocation(line: 477, column: 27, scope: !1979)
!1999 = !DILocation(line: 476, column: 3, scope: !1979)
!2000 = !DILocation(line: 479, column: 11, scope: !1979)
!2001 = !DILocation(line: 479, column: 28, scope: !1979)
!2002 = !DILocation(line: 478, column: 3, scope: !1979)
!2003 = !DILocation(line: 480, column: 18, scope: !1979)
!2004 = !DILocation(line: 480, column: 16, scope: !1979)
!2005 = !DILocation(line: 481, column: 18, scope: !1979)
!2006 = !DILocation(line: 481, column: 16, scope: !1979)
!2007 = !DILocation(line: 482, column: 20, scope: !1979)
!2008 = !DILocation(line: 482, column: 3, scope: !1979)
!2009 = !DILocation(line: 483, column: 20, scope: !1979)
!2010 = !DILocation(line: 483, column: 3, scope: !1979)
!2011 = !DILocation(line: 484, column: 13, scope: !1979)
!2012 = !DILocation(line: 486, column: 6, scope: !1979)
!2013 = !DILocation(line: 486, column: 20, scope: !1979)
!2014 = !DILocation(line: 486, column: 18, scope: !1979)
!2015 = !DILocation(line: 487, column: 13, scope: !1979)
!2016 = !DILocation(line: 487, column: 11, scope: !1979)
!2017 = !DILocation(line: 487, column: 29, scope: !1979)
!2018 = !DILocation(line: 487, column: 27, scope: !1979)
!2019 = !DILocation(line: 488, column: 21, scope: !1979)
!2020 = !DILocation(line: 488, column: 36, scope: !1979)
!2021 = !DILocation(line: 488, column: 34, scope: !1979)
!2022 = !DILocation(line: 488, column: 19, scope: !1979)
!2023 = !DILocation(line: 488, column: 12, scope: !1979)
!2024 = !DILocation(line: 489, column: 6, scope: !1979)
!2025 = !DILocation(line: 490, column: 6, scope: !1979)
!2026 = !DILocation(line: 484, column: 3, scope: !1979)
!2027 = !DILocation(line: 493, column: 4, scope: !1969)
!2028 = !DILocation(line: 495, column: 4, scope: !1837)
!2029 = !DILabel(scope: !1837, name: "errhandler", file: !2, line: 497, column: 4)
!2030 = !DILocation(line: 497, column: 4, scope: !1837)
!2031 = !DILocation(line: 498, column: 39, scope: !1837)
!2032 = !DILocation(line: 498, column: 4, scope: !1837)
!2033 = !DILocation(line: 501, column: 12, scope: !1837)
!2034 = !DILocation(line: 501, column: 4, scope: !1837)
!2035 = !DILocation(line: 503, column: 10, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 501, column: 19)
!2037 = !DILocation(line: 505, column: 10, scope: !2036)
!2038 = !DILabel(scope: !2036, name: "errhandler_io", file: !2, line: 507, column: 10)
!2039 = !DILocation(line: 507, column: 10, scope: !2036)
!2040 = !DILocation(line: 508, column: 10, scope: !2036)
!2041 = !DILocation(line: 510, column: 10, scope: !2036)
!2042 = distinct !DISubprogram(name: "applySavedMetaInfoToOutputFile", scope: !2, file: !2, line: 1132, type: !766, scopeLine: 1133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2043 = !DILocalVariable(name: "dstName", arg: 1, scope: !2042, file: !2, line: 1132, type: !46)
!2044 = !DILocation(line: 1132, column: 45, scope: !2042)
!2045 = !DILocalVariable(name: "retVal", scope: !2042, file: !2, line: 1135, type: !573)
!2046 = !DILocation(line: 1135, column: 19, scope: !2042)
!2047 = !DILocalVariable(name: "uTimBuf", scope: !2042, file: !2, line: 1136, type: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utimbuf", file: !2049, line: 36, size: 128, elements: !2050)
!2049 = !DIFile(filename: "/usr/include/utime.h", directory: "", checksumkind: CSK_MD5, checksum: "a94ce719074475f8e6ded0e064c248b3")
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "actime", scope: !2048, file: !2049, line: 42, baseType: !447, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "modtime", scope: !2048, file: !2049, line: 43, baseType: !447, size: 64, offset: 64)
!2053 = !DILocation(line: 1136, column: 19, scope: !2042)
!2054 = !DILocation(line: 1138, column: 34, scope: !2042)
!2055 = !DILocation(line: 1138, column: 12, scope: !2042)
!2056 = !DILocation(line: 1138, column: 19, scope: !2042)
!2057 = !DILocation(line: 1139, column: 35, scope: !2042)
!2058 = !DILocation(line: 1139, column: 12, scope: !2042)
!2059 = !DILocation(line: 1139, column: 20, scope: !2042)
!2060 = !DILocation(line: 1141, column: 21, scope: !2042)
!2061 = !DILocation(line: 1141, column: 43, scope: !2042)
!2062 = !DILocation(line: 1141, column: 13, scope: !2042)
!2063 = !DILocation(line: 1141, column: 11, scope: !2042)
!2064 = !DILocation(line: 1142, column: 4, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !2, line: 1142, column: 4)
!2066 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 1142, column: 4)
!2067 = !DILocation(line: 1144, column: 21, scope: !2042)
!2068 = !DILocation(line: 1144, column: 13, scope: !2042)
!2069 = !DILocation(line: 1144, column: 11, scope: !2042)
!2070 = !DILocation(line: 1145, column: 4, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 1145, column: 4)
!2072 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 1145, column: 4)
!2073 = !DILocation(line: 1147, column: 21, scope: !2042)
!2074 = !DILocation(line: 1147, column: 43, scope: !2042)
!2075 = !DILocation(line: 1147, column: 64, scope: !2042)
!2076 = !DILocation(line: 1147, column: 13, scope: !2042)
!2077 = !DILocation(line: 1147, column: 11, scope: !2042)
!2078 = !DILocation(line: 1152, column: 1, scope: !2042)
!2079 = distinct !DISubprogram(name: "ioError", scope: !2, file: !2, line: 874, type: !759, scopeLine: 875, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2080 = !DILocation(line: 876, column: 14, scope: !2079)
!2081 = !DILocation(line: 879, column: 14, scope: !2079)
!2082 = !DILocation(line: 876, column: 4, scope: !2079)
!2083 = !DILocation(line: 880, column: 13, scope: !2079)
!2084 = !DILocation(line: 880, column: 4, scope: !2079)
!2085 = !DILocation(line: 881, column: 4, scope: !2079)
!2086 = !DILocation(line: 882, column: 4, scope: !2079)
!2087 = distinct !DISubprogram(name: "myfeof", scope: !2, file: !2, line: 409, type: !2088, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!41, !213}
!2090 = !DILocalVariable(name: "f", arg: 1, scope: !2087, file: !2, line: 409, type: !213)
!2091 = !DILocation(line: 409, column: 21, scope: !2087)
!2092 = !DILocalVariable(name: "c", scope: !2087, file: !2, line: 411, type: !43)
!2093 = !DILocation(line: 411, column: 10, scope: !2087)
!2094 = !DILocation(line: 411, column: 22, scope: !2087)
!2095 = !DILocation(line: 411, column: 14, scope: !2087)
!2096 = !DILocation(line: 412, column: 8, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 412, column: 8)
!2098 = !DILocation(line: 412, column: 10, scope: !2097)
!2099 = !DILocation(line: 412, column: 18, scope: !2097)
!2100 = !DILocation(line: 413, column: 13, scope: !2087)
!2101 = !DILocation(line: 413, column: 16, scope: !2087)
!2102 = !DILocation(line: 413, column: 4, scope: !2087)
!2103 = !DILocation(line: 414, column: 4, scope: !2087)
!2104 = !DILocation(line: 415, column: 1, scope: !2087)
!2105 = distinct !DISubprogram(name: "uInt64_from_UInt32s", scope: !2, file: !2, line: 329, type: !2106, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !2108, !1857, !1857}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!2109 = !DILocalVariable(name: "n", arg: 1, scope: !2105, file: !2, line: 329, type: !2108)
!2110 = !DILocation(line: 329, column: 36, scope: !2105)
!2111 = !DILocalVariable(name: "lo32", arg: 2, scope: !2105, file: !2, line: 329, type: !1857)
!2112 = !DILocation(line: 329, column: 46, scope: !2105)
!2113 = !DILocalVariable(name: "hi32", arg: 3, scope: !2105, file: !2, line: 329, type: !1857)
!2114 = !DILocation(line: 329, column: 59, scope: !2105)
!2115 = !DILocation(line: 331, column: 23, scope: !2105)
!2116 = !DILocation(line: 331, column: 28, scope: !2105)
!2117 = !DILocation(line: 331, column: 35, scope: !2105)
!2118 = !DILocation(line: 331, column: 14, scope: !2105)
!2119 = !DILocation(line: 331, column: 4, scope: !2105)
!2120 = !DILocation(line: 331, column: 7, scope: !2105)
!2121 = !DILocation(line: 331, column: 12, scope: !2105)
!2122 = !DILocation(line: 332, column: 23, scope: !2105)
!2123 = !DILocation(line: 332, column: 28, scope: !2105)
!2124 = !DILocation(line: 332, column: 35, scope: !2105)
!2125 = !DILocation(line: 332, column: 14, scope: !2105)
!2126 = !DILocation(line: 332, column: 4, scope: !2105)
!2127 = !DILocation(line: 332, column: 7, scope: !2105)
!2128 = !DILocation(line: 332, column: 12, scope: !2105)
!2129 = !DILocation(line: 333, column: 23, scope: !2105)
!2130 = !DILocation(line: 333, column: 28, scope: !2105)
!2131 = !DILocation(line: 333, column: 35, scope: !2105)
!2132 = !DILocation(line: 333, column: 14, scope: !2105)
!2133 = !DILocation(line: 333, column: 4, scope: !2105)
!2134 = !DILocation(line: 333, column: 7, scope: !2105)
!2135 = !DILocation(line: 333, column: 12, scope: !2105)
!2136 = !DILocation(line: 334, column: 23, scope: !2105)
!2137 = !DILocation(line: 334, column: 35, scope: !2105)
!2138 = !DILocation(line: 334, column: 14, scope: !2105)
!2139 = !DILocation(line: 334, column: 4, scope: !2105)
!2140 = !DILocation(line: 334, column: 7, scope: !2105)
!2141 = !DILocation(line: 334, column: 12, scope: !2105)
!2142 = !DILocation(line: 335, column: 23, scope: !2105)
!2143 = !DILocation(line: 335, column: 28, scope: !2105)
!2144 = !DILocation(line: 335, column: 35, scope: !2105)
!2145 = !DILocation(line: 335, column: 14, scope: !2105)
!2146 = !DILocation(line: 335, column: 4, scope: !2105)
!2147 = !DILocation(line: 335, column: 7, scope: !2105)
!2148 = !DILocation(line: 335, column: 12, scope: !2105)
!2149 = !DILocation(line: 336, column: 23, scope: !2105)
!2150 = !DILocation(line: 336, column: 28, scope: !2105)
!2151 = !DILocation(line: 336, column: 35, scope: !2105)
!2152 = !DILocation(line: 336, column: 14, scope: !2105)
!2153 = !DILocation(line: 336, column: 4, scope: !2105)
!2154 = !DILocation(line: 336, column: 7, scope: !2105)
!2155 = !DILocation(line: 336, column: 12, scope: !2105)
!2156 = !DILocation(line: 337, column: 23, scope: !2105)
!2157 = !DILocation(line: 337, column: 28, scope: !2105)
!2158 = !DILocation(line: 337, column: 35, scope: !2105)
!2159 = !DILocation(line: 337, column: 14, scope: !2105)
!2160 = !DILocation(line: 337, column: 4, scope: !2105)
!2161 = !DILocation(line: 337, column: 7, scope: !2105)
!2162 = !DILocation(line: 337, column: 12, scope: !2105)
!2163 = !DILocation(line: 338, column: 23, scope: !2105)
!2164 = !DILocation(line: 338, column: 35, scope: !2105)
!2165 = !DILocation(line: 338, column: 14, scope: !2105)
!2166 = !DILocation(line: 338, column: 4, scope: !2105)
!2167 = !DILocation(line: 338, column: 7, scope: !2105)
!2168 = !DILocation(line: 338, column: 12, scope: !2105)
!2169 = !DILocation(line: 339, column: 1, scope: !2105)
!2170 = distinct !DISubprogram(name: "uInt64_to_double", scope: !2, file: !2, line: 343, type: !2171, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!59, !2108}
!2173 = !DILocalVariable(name: "n", arg: 1, scope: !2170, file: !2, line: 343, type: !2108)
!2174 = !DILocation(line: 343, column: 35, scope: !2170)
!2175 = !DILocalVariable(name: "i", scope: !2170, file: !2, line: 345, type: !43)
!2176 = !DILocation(line: 345, column: 11, scope: !2170)
!2177 = !DILocalVariable(name: "base", scope: !2170, file: !2, line: 346, type: !59)
!2178 = !DILocation(line: 346, column: 11, scope: !2170)
!2179 = !DILocalVariable(name: "sum", scope: !2170, file: !2, line: 347, type: !59)
!2180 = !DILocation(line: 347, column: 11, scope: !2170)
!2181 = !DILocation(line: 348, column: 11, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 348, column: 4)
!2183 = !DILocation(line: 348, column: 9, scope: !2182)
!2184 = !DILocation(line: 348, column: 16, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2182, file: !2, line: 348, column: 4)
!2186 = !DILocation(line: 348, column: 18, scope: !2185)
!2187 = !DILocation(line: 348, column: 4, scope: !2182)
!2188 = !DILocation(line: 349, column: 15, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !2, line: 348, column: 28)
!2190 = !DILocation(line: 349, column: 31, scope: !2189)
!2191 = !DILocation(line: 349, column: 34, scope: !2189)
!2192 = !DILocation(line: 349, column: 36, scope: !2189)
!2193 = !DILocation(line: 349, column: 22, scope: !2189)
!2194 = !DILocation(line: 349, column: 12, scope: !2189)
!2195 = !DILocation(line: 350, column: 12, scope: !2189)
!2196 = !DILocation(line: 351, column: 4, scope: !2189)
!2197 = !DILocation(line: 348, column: 24, scope: !2185)
!2198 = !DILocation(line: 348, column: 4, scope: !2185)
!2199 = distinct !{!2199, !2187, !2200, !660}
!2200 = !DILocation(line: 351, column: 4, scope: !2182)
!2201 = !DILocation(line: 352, column: 11, scope: !2170)
!2202 = !DILocation(line: 352, column: 4, scope: !2170)
!2203 = distinct !DISubprogram(name: "uInt64_toAscii", scope: !2, file: !2, line: 386, type: !2204, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !221, !2108}
!2206 = !DILocalVariable(name: "outbuf", arg: 1, scope: !2203, file: !2, line: 386, type: !221)
!2207 = !DILocation(line: 386, column: 29, scope: !2203)
!2208 = !DILocalVariable(name: "n", arg: 2, scope: !2203, file: !2, line: 386, type: !2108)
!2209 = !DILocation(line: 386, column: 45, scope: !2203)
!2210 = !DILocalVariable(name: "i", scope: !2203, file: !2, line: 388, type: !43)
!2211 = !DILocation(line: 388, column: 11, scope: !2203)
!2212 = !DILocalVariable(name: "q", scope: !2203, file: !2, line: 388, type: !43)
!2213 = !DILocation(line: 388, column: 14, scope: !2203)
!2214 = !DILocalVariable(name: "buf", scope: !2203, file: !2, line: 389, type: !2215)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !306)
!2216 = !DILocation(line: 389, column: 11, scope: !2203)
!2217 = !DILocalVariable(name: "nBuf", scope: !2203, file: !2, line: 390, type: !43)
!2218 = !DILocation(line: 390, column: 11, scope: !2203)
!2219 = !DILocalVariable(name: "n_copy", scope: !2203, file: !2, line: 391, type: !1985)
!2220 = !DILocation(line: 391, column: 11, scope: !2203)
!2221 = !DILocation(line: 391, column: 21, scope: !2203)
!2222 = !DILocation(line: 391, column: 20, scope: !2203)
!2223 = !DILocation(line: 392, column: 4, scope: !2203)
!2224 = !DILocation(line: 393, column: 11, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 392, column: 7)
!2226 = !DILocation(line: 393, column: 9, scope: !2225)
!2227 = !DILocation(line: 394, column: 19, scope: !2225)
!2228 = !DILocation(line: 394, column: 21, scope: !2225)
!2229 = !DILocation(line: 394, column: 11, scope: !2225)
!2230 = !DILocation(line: 394, column: 7, scope: !2225)
!2231 = !DILocation(line: 394, column: 17, scope: !2225)
!2232 = !DILocation(line: 395, column: 11, scope: !2225)
!2233 = !DILocation(line: 396, column: 4, scope: !2225)
!2234 = !DILocation(line: 396, column: 14, scope: !2203)
!2235 = !DILocation(line: 396, column: 13, scope: !2203)
!2236 = distinct !{!2236, !2223, !2237, !660}
!2237 = !DILocation(line: 396, column: 36, scope: !2203)
!2238 = !DILocation(line: 397, column: 4, scope: !2203)
!2239 = !DILocation(line: 397, column: 11, scope: !2203)
!2240 = !DILocation(line: 397, column: 17, scope: !2203)
!2241 = !DILocation(line: 398, column: 11, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 398, column: 4)
!2243 = !DILocation(line: 398, column: 9, scope: !2242)
!2244 = !DILocation(line: 398, column: 16, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2242, file: !2, line: 398, column: 4)
!2246 = !DILocation(line: 398, column: 20, scope: !2245)
!2247 = !DILocation(line: 398, column: 18, scope: !2245)
!2248 = !DILocation(line: 398, column: 4, scope: !2242)
!2249 = !DILocation(line: 399, column: 23, scope: !2245)
!2250 = !DILocation(line: 399, column: 28, scope: !2245)
!2251 = !DILocation(line: 399, column: 27, scope: !2245)
!2252 = !DILocation(line: 399, column: 29, scope: !2245)
!2253 = !DILocation(line: 399, column: 19, scope: !2245)
!2254 = !DILocation(line: 399, column: 7, scope: !2245)
!2255 = !DILocation(line: 399, column: 14, scope: !2245)
!2256 = !DILocation(line: 399, column: 17, scope: !2245)
!2257 = !DILocation(line: 398, column: 27, scope: !2245)
!2258 = !DILocation(line: 398, column: 4, scope: !2245)
!2259 = distinct !{!2259, !2248, !2260, !660}
!2260 = !DILocation(line: 399, column: 31, scope: !2242)
!2261 = !DILocation(line: 400, column: 1, scope: !2203)
!2262 = distinct !DISubprogram(name: "configError", scope: !2, file: !2, line: 967, type: !759, scopeLine: 968, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2263 = !DILocation(line: 969, column: 14, scope: !2262)
!2264 = !DILocation(line: 969, column: 4, scope: !2262)
!2265 = !DILocation(line: 975, column: 4, scope: !2262)
!2266 = !DILocation(line: 976, column: 9, scope: !2262)
!2267 = !DILocation(line: 976, column: 4, scope: !2262)
!2268 = distinct !DISubprogram(name: "uInt64_qrm10", scope: !2, file: !2, line: 368, type: !2269, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!43, !2108}
!2271 = !DILocalVariable(name: "n", arg: 1, scope: !2268, file: !2, line: 368, type: !2108)
!2272 = !DILocation(line: 368, column: 30, scope: !2268)
!2273 = !DILocalVariable(name: "rem", scope: !2268, file: !2, line: 370, type: !1857)
!2274 = !DILocation(line: 370, column: 11, scope: !2268)
!2275 = !DILocalVariable(name: "tmp", scope: !2268, file: !2, line: 370, type: !1857)
!2276 = !DILocation(line: 370, column: 16, scope: !2268)
!2277 = !DILocalVariable(name: "i", scope: !2268, file: !2, line: 371, type: !43)
!2278 = !DILocation(line: 371, column: 11, scope: !2268)
!2279 = !DILocation(line: 372, column: 8, scope: !2268)
!2280 = !DILocation(line: 373, column: 11, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 373, column: 4)
!2282 = !DILocation(line: 373, column: 9, scope: !2281)
!2283 = !DILocation(line: 373, column: 16, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 373, column: 4)
!2285 = !DILocation(line: 373, column: 18, scope: !2284)
!2286 = !DILocation(line: 373, column: 4, scope: !2281)
!2287 = !DILocation(line: 374, column: 13, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !2, line: 373, column: 29)
!2289 = !DILocation(line: 374, column: 17, scope: !2288)
!2290 = !DILocation(line: 374, column: 25, scope: !2288)
!2291 = !DILocation(line: 374, column: 28, scope: !2288)
!2292 = !DILocation(line: 374, column: 30, scope: !2288)
!2293 = !DILocation(line: 374, column: 23, scope: !2288)
!2294 = !DILocation(line: 374, column: 11, scope: !2288)
!2295 = !DILocation(line: 375, column: 17, scope: !2288)
!2296 = !DILocation(line: 375, column: 21, scope: !2288)
!2297 = !DILocation(line: 375, column: 7, scope: !2288)
!2298 = !DILocation(line: 375, column: 10, scope: !2288)
!2299 = !DILocation(line: 375, column: 12, scope: !2288)
!2300 = !DILocation(line: 375, column: 15, scope: !2288)
!2301 = !DILocation(line: 376, column: 13, scope: !2288)
!2302 = !DILocation(line: 376, column: 17, scope: !2288)
!2303 = !DILocation(line: 376, column: 11, scope: !2288)
!2304 = !DILocation(line: 377, column: 4, scope: !2288)
!2305 = !DILocation(line: 373, column: 25, scope: !2284)
!2306 = !DILocation(line: 373, column: 4, scope: !2284)
!2307 = distinct !{!2307, !2286, !2308, !660}
!2308 = !DILocation(line: 377, column: 4, scope: !2281)
!2309 = !DILocation(line: 378, column: 11, scope: !2268)
!2310 = !DILocation(line: 378, column: 4, scope: !2268)
!2311 = distinct !DISubprogram(name: "uInt64_isZero", scope: !2, file: !2, line: 357, type: !2312, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!41, !2108}
!2314 = !DILocalVariable(name: "n", arg: 1, scope: !2311, file: !2, line: 357, type: !2108)
!2315 = !DILocation(line: 357, column: 30, scope: !2311)
!2316 = !DILocalVariable(name: "i", scope: !2311, file: !2, line: 359, type: !43)
!2317 = !DILocation(line: 359, column: 10, scope: !2311)
!2318 = !DILocation(line: 360, column: 11, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2311, file: !2, line: 360, column: 4)
!2320 = !DILocation(line: 360, column: 9, scope: !2319)
!2321 = !DILocation(line: 360, column: 16, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 360, column: 4)
!2323 = !DILocation(line: 360, column: 18, scope: !2322)
!2324 = !DILocation(line: 360, column: 4, scope: !2319)
!2325 = !DILocation(line: 361, column: 11, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 361, column: 11)
!2327 = !DILocation(line: 361, column: 14, scope: !2326)
!2328 = !DILocation(line: 361, column: 16, scope: !2326)
!2329 = !DILocation(line: 361, column: 19, scope: !2326)
!2330 = !DILocation(line: 361, column: 25, scope: !2326)
!2331 = !DILocation(line: 361, column: 22, scope: !2326)
!2332 = !DILocation(line: 360, column: 24, scope: !2322)
!2333 = !DILocation(line: 360, column: 4, scope: !2322)
!2334 = distinct !{!2334, !2324, !2335, !660}
!2335 = !DILocation(line: 361, column: 32, scope: !2319)
!2336 = !DILocation(line: 362, column: 4, scope: !2311)
!2337 = !DILocation(line: 363, column: 1, scope: !2311)
!2338 = distinct !DISubprogram(name: "mapSuffix", scope: !2, file: !2, line: 1194, type: !2339, scopeLine: 1196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!41, !46, !46, !46}
!2341 = !DILocalVariable(name: "name", arg: 1, scope: !2338, file: !2, line: 1194, type: !46)
!2342 = !DILocation(line: 1194, column: 24, scope: !2338)
!2343 = !DILocalVariable(name: "oldSuffix", arg: 2, scope: !2338, file: !2, line: 1195, type: !46)
!2344 = !DILocation(line: 1195, column: 24, scope: !2338)
!2345 = !DILocalVariable(name: "newSuffix", arg: 3, scope: !2338, file: !2, line: 1195, type: !46)
!2346 = !DILocation(line: 1195, column: 41, scope: !2338)
!2347 = !DILocation(line: 1197, column: 19, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 1197, column: 8)
!2349 = !DILocation(line: 1197, column: 24, scope: !2348)
!2350 = !DILocation(line: 1197, column: 9, scope: !2348)
!2351 = !DILocation(line: 1197, column: 8, scope: !2348)
!2352 = !DILocation(line: 1197, column: 36, scope: !2348)
!2353 = !DILocation(line: 1198, column: 4, scope: !2338)
!2354 = !DILocation(line: 1198, column: 16, scope: !2338)
!2355 = !DILocation(line: 1198, column: 9, scope: !2338)
!2356 = !DILocation(line: 1198, column: 29, scope: !2338)
!2357 = !DILocation(line: 1198, column: 22, scope: !2338)
!2358 = !DILocation(line: 1198, column: 21, scope: !2338)
!2359 = !DILocation(line: 1198, column: 41, scope: !2338)
!2360 = !DILocation(line: 1199, column: 13, scope: !2338)
!2361 = !DILocation(line: 1199, column: 19, scope: !2338)
!2362 = !DILocation(line: 1199, column: 4, scope: !2338)
!2363 = !DILocation(line: 1200, column: 4, scope: !2338)
!2364 = !DILocation(line: 1201, column: 1, scope: !2338)
!2365 = distinct !DISubprogram(name: "uncompressStream", scope: !2, file: !2, line: 521, type: !2366, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!41, !213, !213}
!2368 = !DILocalVariable(name: "zStream", arg: 1, scope: !2365, file: !2, line: 521, type: !213)
!2369 = !DILocation(line: 521, column: 31, scope: !2365)
!2370 = !DILocalVariable(name: "stream", arg: 2, scope: !2365, file: !2, line: 521, type: !213)
!2371 = !DILocation(line: 521, column: 46, scope: !2365)
!2372 = !DILocalVariable(name: "bzf", scope: !2365, file: !2, line: 523, type: !1845)
!2373 = !DILocation(line: 523, column: 12, scope: !2365)
!2374 = !DILocalVariable(name: "bzerr", scope: !2365, file: !2, line: 524, type: !43)
!2375 = !DILocation(line: 524, column: 12, scope: !2365)
!2376 = !DILocalVariable(name: "bzerr_dummy", scope: !2365, file: !2, line: 524, type: !43)
!2377 = !DILocation(line: 524, column: 19, scope: !2365)
!2378 = !DILocalVariable(name: "ret", scope: !2365, file: !2, line: 524, type: !43)
!2379 = !DILocation(line: 524, column: 32, scope: !2365)
!2380 = !DILocalVariable(name: "nread", scope: !2365, file: !2, line: 524, type: !43)
!2381 = !DILocation(line: 524, column: 37, scope: !2365)
!2382 = !DILocalVariable(name: "streamNo", scope: !2365, file: !2, line: 524, type: !43)
!2383 = !DILocation(line: 524, column: 44, scope: !2365)
!2384 = !DILocalVariable(name: "i", scope: !2365, file: !2, line: 524, type: !43)
!2385 = !DILocation(line: 524, column: 54, scope: !2365)
!2386 = !DILocalVariable(name: "obuf", scope: !2365, file: !2, line: 525, type: !1850)
!2387 = !DILocation(line: 525, column: 12, scope: !2365)
!2388 = !DILocalVariable(name: "unused", scope: !2365, file: !2, line: 526, type: !1850)
!2389 = !DILocation(line: 526, column: 12, scope: !2365)
!2390 = !DILocalVariable(name: "nUnused", scope: !2365, file: !2, line: 527, type: !43)
!2391 = !DILocation(line: 527, column: 12, scope: !2365)
!2392 = !DILocalVariable(name: "unusedTmpV", scope: !2365, file: !2, line: 528, type: !40)
!2393 = !DILocation(line: 528, column: 12, scope: !2365)
!2394 = !DILocalVariable(name: "unusedTmp", scope: !2365, file: !2, line: 529, type: !60)
!2395 = !DILocation(line: 529, column: 12, scope: !2365)
!2396 = !DILocation(line: 531, column: 12, scope: !2365)
!2397 = !DILocation(line: 532, column: 13, scope: !2365)
!2398 = !DILocation(line: 537, column: 15, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 537, column: 8)
!2400 = !DILocation(line: 537, column: 8, scope: !2399)
!2401 = !DILocation(line: 537, column: 24, scope: !2399)
!2402 = !DILocation(line: 538, column: 15, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 538, column: 8)
!2404 = !DILocation(line: 538, column: 8, scope: !2403)
!2405 = !DILocation(line: 538, column: 25, scope: !2403)
!2406 = !DILocation(line: 540, column: 4, scope: !2365)
!2407 = !DILocation(line: 543, column: 24, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 540, column: 17)
!2409 = !DILocation(line: 543, column: 33, scope: !2408)
!2410 = !DILocation(line: 544, column: 21, scope: !2408)
!2411 = !DILocation(line: 544, column: 16, scope: !2408)
!2412 = !DILocation(line: 544, column: 32, scope: !2408)
!2413 = !DILocation(line: 544, column: 40, scope: !2408)
!2414 = !DILocation(line: 542, column: 13, scope: !2408)
!2415 = !DILocation(line: 542, column: 11, scope: !2408)
!2416 = !DILocation(line: 546, column: 11, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 546, column: 11)
!2418 = !DILocation(line: 546, column: 15, scope: !2417)
!2419 = !DILocation(line: 546, column: 23, scope: !2417)
!2420 = !DILocation(line: 546, column: 26, scope: !2417)
!2421 = !DILocation(line: 546, column: 32, scope: !2417)
!2422 = !DILocation(line: 546, column: 42, scope: !2417)
!2423 = !DILocation(line: 547, column: 15, scope: !2408)
!2424 = !DILocation(line: 549, column: 7, scope: !2408)
!2425 = !DILocation(line: 549, column: 14, scope: !2408)
!2426 = !DILocation(line: 549, column: 20, scope: !2408)
!2427 = !DILocation(line: 550, column: 39, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 549, column: 30)
!2429 = !DILocation(line: 550, column: 44, scope: !2428)
!2430 = !DILocation(line: 550, column: 18, scope: !2428)
!2431 = !DILocation(line: 550, column: 16, scope: !2428)
!2432 = !DILocation(line: 551, column: 14, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 551, column: 14)
!2434 = !DILocation(line: 551, column: 20, scope: !2433)
!2435 = !DILocation(line: 551, column: 44, scope: !2433)
!2436 = !DILocation(line: 552, column: 15, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 552, column: 14)
!2438 = !DILocation(line: 552, column: 21, scope: !2437)
!2439 = !DILocation(line: 552, column: 30, scope: !2437)
!2440 = !DILocation(line: 552, column: 33, scope: !2437)
!2441 = !DILocation(line: 552, column: 39, scope: !2437)
!2442 = !DILocation(line: 552, column: 57, scope: !2437)
!2443 = !DILocation(line: 552, column: 60, scope: !2437)
!2444 = !DILocation(line: 552, column: 66, scope: !2437)
!2445 = !DILocation(line: 553, column: 22, scope: !2437)
!2446 = !DILocation(line: 553, column: 43, scope: !2437)
!2447 = !DILocation(line: 553, column: 50, scope: !2437)
!2448 = !DILocation(line: 553, column: 13, scope: !2437)
!2449 = !DILocation(line: 554, column: 21, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 554, column: 14)
!2451 = !DILocation(line: 554, column: 14, scope: !2450)
!2452 = !DILocation(line: 554, column: 30, scope: !2450)
!2453 = distinct !{!2453, !2424, !2454, !660}
!2454 = !DILocation(line: 555, column: 7, scope: !2408)
!2455 = !DILocation(line: 556, column: 11, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 556, column: 11)
!2457 = !DILocation(line: 556, column: 17, scope: !2456)
!2458 = !DILocation(line: 556, column: 35, scope: !2456)
!2459 = !DILocation(line: 558, column: 37, scope: !2408)
!2460 = !DILocation(line: 558, column: 7, scope: !2408)
!2461 = !DILocation(line: 559, column: 11, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 559, column: 11)
!2463 = !DILocation(line: 559, column: 17, scope: !2462)
!2464 = !DILocation(line: 559, column: 27, scope: !2462)
!2465 = !DILocation(line: 561, column: 27, scope: !2408)
!2466 = !DILocation(line: 561, column: 17, scope: !2408)
!2467 = !DILocation(line: 562, column: 14, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 562, column: 7)
!2469 = !DILocation(line: 562, column: 12, scope: !2468)
!2470 = !DILocation(line: 562, column: 19, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2468, file: !2, line: 562, column: 7)
!2472 = !DILocation(line: 562, column: 23, scope: !2471)
!2473 = !DILocation(line: 562, column: 21, scope: !2471)
!2474 = !DILocation(line: 562, column: 7, scope: !2468)
!2475 = !DILocation(line: 562, column: 49, scope: !2471)
!2476 = !DILocation(line: 562, column: 59, scope: !2471)
!2477 = !DILocation(line: 562, column: 44, scope: !2471)
!2478 = !DILocation(line: 562, column: 37, scope: !2471)
!2479 = !DILocation(line: 562, column: 47, scope: !2471)
!2480 = !DILocation(line: 562, column: 33, scope: !2471)
!2481 = !DILocation(line: 562, column: 7, scope: !2471)
!2482 = distinct !{!2482, !2474, !2483, !660}
!2483 = !DILocation(line: 562, column: 60, scope: !2468)
!2484 = !DILocation(line: 564, column: 33, scope: !2408)
!2485 = !DILocation(line: 564, column: 7, scope: !2408)
!2486 = !DILocation(line: 565, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 565, column: 11)
!2488 = !DILocation(line: 565, column: 17, scope: !2487)
!2489 = !DILocation(line: 565, column: 27, scope: !2487)
!2490 = !DILocation(line: 567, column: 11, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 567, column: 11)
!2492 = !DILocation(line: 567, column: 19, scope: !2491)
!2493 = !DILocation(line: 567, column: 24, scope: !2491)
!2494 = !DILocation(line: 567, column: 34, scope: !2491)
!2495 = !DILocation(line: 567, column: 27, scope: !2491)
!2496 = !DILocation(line: 567, column: 44, scope: !2491)
!2497 = distinct !{!2497, !2406, !2498}
!2498 = !DILocation(line: 568, column: 4, scope: !2365)
!2499 = !DILabel(scope: !2365, name: "closeok", file: !2, line: 570, column: 4)
!2500 = !DILocation(line: 570, column: 4, scope: !2365)
!2501 = !DILocation(line: 571, column: 15, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 571, column: 8)
!2503 = !DILocation(line: 571, column: 8, scope: !2502)
!2504 = !DILocation(line: 571, column: 25, scope: !2502)
!2505 = !DILocation(line: 572, column: 19, scope: !2365)
!2506 = !DILocation(line: 572, column: 10, scope: !2365)
!2507 = !DILocation(line: 572, column: 8, scope: !2365)
!2508 = !DILocation(line: 573, column: 8, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 573, column: 8)
!2510 = !DILocation(line: 573, column: 12, scope: !2509)
!2511 = !DILocation(line: 573, column: 20, scope: !2509)
!2512 = !DILocation(line: 575, column: 15, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 575, column: 8)
!2514 = !DILocation(line: 575, column: 8, scope: !2513)
!2515 = !DILocation(line: 575, column: 24, scope: !2513)
!2516 = !DILocation(line: 576, column: 19, scope: !2365)
!2517 = !DILocation(line: 576, column: 10, scope: !2365)
!2518 = !DILocation(line: 576, column: 8, scope: !2365)
!2519 = !DILocation(line: 577, column: 8, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 577, column: 8)
!2521 = !DILocation(line: 577, column: 12, scope: !2520)
!2522 = !DILocation(line: 577, column: 18, scope: !2520)
!2523 = !DILocation(line: 578, column: 8, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 578, column: 8)
!2525 = !DILocation(line: 578, column: 18, scope: !2524)
!2526 = !DILocation(line: 578, column: 15, scope: !2524)
!2527 = !DILocation(line: 579, column: 22, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 578, column: 26)
!2529 = !DILocation(line: 579, column: 13, scope: !2528)
!2530 = !DILocation(line: 579, column: 11, scope: !2528)
!2531 = !DILocation(line: 580, column: 30, scope: !2528)
!2532 = !DILocation(line: 581, column: 11, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !2, line: 581, column: 11)
!2534 = !DILocation(line: 581, column: 15, scope: !2533)
!2535 = !DILocation(line: 581, column: 23, scope: !2533)
!2536 = !DILocation(line: 582, column: 4, scope: !2528)
!2537 = !DILocation(line: 583, column: 27, scope: !2365)
!2538 = !DILocation(line: 584, column: 8, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 584, column: 8)
!2540 = !DILocation(line: 584, column: 18, scope: !2539)
!2541 = !DILocation(line: 584, column: 34, scope: !2539)
!2542 = !DILocation(line: 584, column: 24, scope: !2539)
!2543 = !DILocation(line: 585, column: 4, scope: !2365)
!2544 = !DILabel(scope: !2365, name: "trycat", file: !2, line: 587, column: 4)
!2545 = !DILocation(line: 587, column: 4, scope: !2365)
!2546 = !DILocation(line: 588, column: 8, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 588, column: 8)
!2548 = !DILocation(line: 589, column: 14, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 588, column: 24)
!2550 = !DILocation(line: 589, column: 7, scope: !2549)
!2551 = !DILocation(line: 590, column: 7, scope: !2549)
!2552 = !DILocation(line: 591, column: 20, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 591, column: 13)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !2, line: 590, column: 20)
!2555 = !DILocation(line: 591, column: 13, scope: !2553)
!2556 = !DILocation(line: 591, column: 30, scope: !2553)
!2557 = !DILocation(line: 592, column: 25, scope: !2554)
!2558 = !DILocation(line: 592, column: 52, scope: !2554)
!2559 = !DILocation(line: 592, column: 17, scope: !2554)
!2560 = !DILocation(line: 592, column: 15, scope: !2554)
!2561 = !DILocation(line: 593, column: 20, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 593, column: 13)
!2563 = !DILocation(line: 593, column: 13, scope: !2562)
!2564 = !DILocation(line: 593, column: 30, scope: !2562)
!2565 = !DILocation(line: 594, column: 13, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 594, column: 13)
!2567 = !DILocation(line: 594, column: 19, scope: !2566)
!2568 = !DILocation(line: 594, column: 33, scope: !2566)
!2569 = !DILocation(line: 594, column: 54, scope: !2566)
!2570 = !DILocation(line: 594, column: 61, scope: !2566)
!2571 = !DILocation(line: 594, column: 24, scope: !2566)
!2572 = !DILocation(line: 595, column: 20, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 595, column: 13)
!2574 = !DILocation(line: 595, column: 13, scope: !2573)
!2575 = !DILocation(line: 595, column: 29, scope: !2573)
!2576 = distinct !{!2576, !2551, !2577}
!2577 = !DILocation(line: 596, column: 7, scope: !2549)
!2578 = !DILocation(line: 597, column: 7, scope: !2549)
!2579 = !DILabel(scope: !2365, name: "errhandler", file: !2, line: 600, column: 4)
!2580 = !DILocation(line: 600, column: 4, scope: !2365)
!2581 = !DILocation(line: 601, column: 36, scope: !2365)
!2582 = !DILocation(line: 601, column: 4, scope: !2365)
!2583 = !DILocation(line: 602, column: 12, scope: !2365)
!2584 = !DILocation(line: 602, column: 4, scope: !2365)
!2585 = !DILocation(line: 604, column: 10, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 602, column: 19)
!2587 = !DILabel(scope: !2586, name: "errhandler_io", file: !2, line: 606, column: 10)
!2588 = !DILocation(line: 606, column: 10, scope: !2586)
!2589 = !DILocation(line: 607, column: 10, scope: !2586)
!2590 = !DILocation(line: 609, column: 10, scope: !2586)
!2591 = !DILocation(line: 611, column: 10, scope: !2586)
!2592 = !DILocation(line: 613, column: 10, scope: !2586)
!2593 = !DILocation(line: 615, column: 14, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 615, column: 14)
!2595 = !DILocation(line: 615, column: 25, scope: !2594)
!2596 = !DILocation(line: 615, column: 22, scope: !2594)
!2597 = !DILocation(line: 615, column: 39, scope: !2594)
!2598 = !DILocation(line: 615, column: 32, scope: !2594)
!2599 = !DILocation(line: 616, column: 14, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 616, column: 14)
!2601 = !DILocation(line: 616, column: 24, scope: !2600)
!2602 = !DILocation(line: 616, column: 21, scope: !2600)
!2603 = !DILocation(line: 616, column: 39, scope: !2600)
!2604 = !DILocation(line: 616, column: 32, scope: !2600)
!2605 = !DILocation(line: 617, column: 14, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 617, column: 14)
!2607 = !DILocation(line: 617, column: 23, scope: !2606)
!2608 = !DILocation(line: 618, column: 13, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !2, line: 617, column: 29)
!2610 = !DILocation(line: 620, column: 17, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !2, line: 620, column: 17)
!2612 = distinct !DILexicalBlock(scope: !2606, file: !2, line: 619, column: 17)
!2613 = !DILocation(line: 621, column: 23, scope: !2611)
!2614 = !DILocation(line: 623, column: 23, scope: !2611)
!2615 = !DILocation(line: 621, column: 13, scope: !2611)
!2616 = !DILocation(line: 624, column: 13, scope: !2612)
!2617 = !DILocation(line: 627, column: 10, scope: !2586)
!2618 = !DILocation(line: 632, column: 1, scope: !2365)
!2619 = distinct !DISubprogram(name: "crcError", scope: !2, file: !2, line: 844, type: !759, scopeLine: 845, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2620 = !DILocation(line: 846, column: 14, scope: !2619)
!2621 = !DILocation(line: 848, column: 14, scope: !2619)
!2622 = !DILocation(line: 846, column: 4, scope: !2619)
!2623 = !DILocation(line: 849, column: 4, scope: !2619)
!2624 = !DILocation(line: 850, column: 4, scope: !2619)
!2625 = !DILocation(line: 851, column: 4, scope: !2619)
!2626 = distinct !DISubprogram(name: "compressedStreamEOF", scope: !2, file: !2, line: 857, type: !759, scopeLine: 858, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2627 = !DILocation(line: 859, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2626, file: !2, line: 859, column: 7)
!2629 = !DILocation(line: 860, column: 15, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2628, file: !2, line: 859, column: 14)
!2631 = !DILocation(line: 863, column: 8, scope: !2630)
!2632 = !DILocation(line: 860, column: 5, scope: !2630)
!2633 = !DILocation(line: 864, column: 14, scope: !2630)
!2634 = !DILocation(line: 864, column: 5, scope: !2630)
!2635 = !DILocation(line: 865, column: 5, scope: !2630)
!2636 = !DILocation(line: 866, column: 5, scope: !2630)
!2637 = !DILocation(line: 867, column: 3, scope: !2630)
!2638 = !DILocation(line: 868, column: 3, scope: !2626)
!2639 = distinct !DISubprogram(name: "testStream", scope: !2, file: !2, line: 637, type: !2088, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !574)
!2640 = !DILocalVariable(name: "zStream", arg: 1, scope: !2639, file: !2, line: 637, type: !213)
!2641 = !DILocation(line: 637, column: 25, scope: !2639)
!2642 = !DILocalVariable(name: "bzf", scope: !2639, file: !2, line: 639, type: !1845)
!2643 = !DILocation(line: 639, column: 12, scope: !2639)
!2644 = !DILocalVariable(name: "bzerr", scope: !2639, file: !2, line: 640, type: !43)
!2645 = !DILocation(line: 640, column: 12, scope: !2639)
!2646 = !DILocalVariable(name: "bzerr_dummy", scope: !2639, file: !2, line: 640, type: !43)
!2647 = !DILocation(line: 640, column: 19, scope: !2639)
!2648 = !DILocalVariable(name: "ret", scope: !2639, file: !2, line: 640, type: !43)
!2649 = !DILocation(line: 640, column: 32, scope: !2639)
!2650 = !DILocalVariable(name: "nread", scope: !2639, file: !2, line: 640, type: !43)
!2651 = !DILocation(line: 640, column: 37, scope: !2639)
!2652 = !DILocalVariable(name: "streamNo", scope: !2639, file: !2, line: 640, type: !43)
!2653 = !DILocation(line: 640, column: 44, scope: !2639)
!2654 = !DILocalVariable(name: "i", scope: !2639, file: !2, line: 640, type: !43)
!2655 = !DILocation(line: 640, column: 54, scope: !2639)
!2656 = !DILocalVariable(name: "obuf", scope: !2639, file: !2, line: 641, type: !1850)
!2657 = !DILocation(line: 641, column: 12, scope: !2639)
!2658 = !DILocalVariable(name: "unused", scope: !2639, file: !2, line: 642, type: !1850)
!2659 = !DILocation(line: 642, column: 12, scope: !2639)
!2660 = !DILocalVariable(name: "nUnused", scope: !2639, file: !2, line: 643, type: !43)
!2661 = !DILocation(line: 643, column: 12, scope: !2639)
!2662 = !DILocalVariable(name: "unusedTmpV", scope: !2639, file: !2, line: 644, type: !40)
!2663 = !DILocation(line: 644, column: 12, scope: !2639)
!2664 = !DILocalVariable(name: "unusedTmp", scope: !2639, file: !2, line: 645, type: !60)
!2665 = !DILocation(line: 645, column: 12, scope: !2639)
!2666 = !DILocation(line: 647, column: 12, scope: !2639)
!2667 = !DILocation(line: 648, column: 13, scope: !2639)
!2668 = !DILocation(line: 651, column: 15, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 651, column: 8)
!2670 = !DILocation(line: 651, column: 8, scope: !2669)
!2671 = !DILocation(line: 651, column: 25, scope: !2669)
!2672 = !DILocation(line: 653, column: 4, scope: !2639)
!2673 = !DILocation(line: 656, column: 24, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 653, column: 17)
!2675 = !DILocation(line: 656, column: 33, scope: !2674)
!2676 = !DILocation(line: 657, column: 21, scope: !2674)
!2677 = !DILocation(line: 657, column: 16, scope: !2674)
!2678 = !DILocation(line: 657, column: 32, scope: !2674)
!2679 = !DILocation(line: 657, column: 40, scope: !2674)
!2680 = !DILocation(line: 655, column: 13, scope: !2674)
!2681 = !DILocation(line: 655, column: 11, scope: !2674)
!2682 = !DILocation(line: 659, column: 11, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 659, column: 11)
!2684 = !DILocation(line: 659, column: 15, scope: !2683)
!2685 = !DILocation(line: 659, column: 23, scope: !2683)
!2686 = !DILocation(line: 659, column: 26, scope: !2683)
!2687 = !DILocation(line: 659, column: 32, scope: !2683)
!2688 = !DILocation(line: 659, column: 42, scope: !2683)
!2689 = !DILocation(line: 660, column: 15, scope: !2674)
!2690 = !DILocation(line: 662, column: 7, scope: !2674)
!2691 = !DILocation(line: 662, column: 14, scope: !2674)
!2692 = !DILocation(line: 662, column: 20, scope: !2674)
!2693 = !DILocation(line: 663, column: 39, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 662, column: 30)
!2695 = !DILocation(line: 663, column: 44, scope: !2694)
!2696 = !DILocation(line: 663, column: 18, scope: !2694)
!2697 = !DILocation(line: 663, column: 16, scope: !2694)
!2698 = !DILocation(line: 664, column: 14, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2694, file: !2, line: 664, column: 14)
!2700 = !DILocation(line: 664, column: 20, scope: !2699)
!2701 = !DILocation(line: 664, column: 44, scope: !2699)
!2702 = distinct !{!2702, !2690, !2703, !660}
!2703 = !DILocation(line: 665, column: 7, scope: !2674)
!2704 = !DILocation(line: 666, column: 11, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 666, column: 11)
!2706 = !DILocation(line: 666, column: 17, scope: !2705)
!2707 = !DILocation(line: 666, column: 35, scope: !2705)
!2708 = !DILocation(line: 668, column: 37, scope: !2674)
!2709 = !DILocation(line: 668, column: 7, scope: !2674)
!2710 = !DILocation(line: 669, column: 11, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 669, column: 11)
!2712 = !DILocation(line: 669, column: 17, scope: !2711)
!2713 = !DILocation(line: 669, column: 27, scope: !2711)
!2714 = !DILocation(line: 671, column: 27, scope: !2674)
!2715 = !DILocation(line: 671, column: 17, scope: !2674)
!2716 = !DILocation(line: 672, column: 14, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 672, column: 7)
!2718 = !DILocation(line: 672, column: 12, scope: !2717)
!2719 = !DILocation(line: 672, column: 19, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !2, line: 672, column: 7)
!2721 = !DILocation(line: 672, column: 23, scope: !2720)
!2722 = !DILocation(line: 672, column: 21, scope: !2720)
!2723 = !DILocation(line: 672, column: 7, scope: !2717)
!2724 = !DILocation(line: 672, column: 49, scope: !2720)
!2725 = !DILocation(line: 672, column: 59, scope: !2720)
!2726 = !DILocation(line: 672, column: 44, scope: !2720)
!2727 = !DILocation(line: 672, column: 37, scope: !2720)
!2728 = !DILocation(line: 672, column: 47, scope: !2720)
!2729 = !DILocation(line: 672, column: 33, scope: !2720)
!2730 = !DILocation(line: 672, column: 7, scope: !2720)
!2731 = distinct !{!2731, !2723, !2732, !660}
!2732 = !DILocation(line: 672, column: 60, scope: !2717)
!2733 = !DILocation(line: 674, column: 33, scope: !2674)
!2734 = !DILocation(line: 674, column: 7, scope: !2674)
!2735 = !DILocation(line: 675, column: 11, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 675, column: 11)
!2737 = !DILocation(line: 675, column: 17, scope: !2736)
!2738 = !DILocation(line: 675, column: 27, scope: !2736)
!2739 = !DILocation(line: 676, column: 11, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 676, column: 11)
!2741 = !DILocation(line: 676, column: 19, scope: !2740)
!2742 = !DILocation(line: 676, column: 24, scope: !2740)
!2743 = !DILocation(line: 676, column: 34, scope: !2740)
!2744 = !DILocation(line: 676, column: 27, scope: !2740)
!2745 = !DILocation(line: 676, column: 44, scope: !2740)
!2746 = distinct !{!2746, !2672, !2747}
!2747 = !DILocation(line: 678, column: 4, scope: !2639)
!2748 = !DILocation(line: 680, column: 15, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 680, column: 8)
!2750 = !DILocation(line: 680, column: 8, scope: !2749)
!2751 = !DILocation(line: 680, column: 25, scope: !2749)
!2752 = !DILocation(line: 681, column: 19, scope: !2639)
!2753 = !DILocation(line: 681, column: 10, scope: !2639)
!2754 = !DILocation(line: 681, column: 8, scope: !2639)
!2755 = !DILocation(line: 682, column: 8, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 682, column: 8)
!2757 = !DILocation(line: 682, column: 12, scope: !2756)
!2758 = !DILocation(line: 682, column: 20, scope: !2756)
!2759 = !DILocation(line: 684, column: 8, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 684, column: 8)
!2761 = !DILocation(line: 684, column: 18, scope: !2760)
!2762 = !DILocation(line: 684, column: 34, scope: !2760)
!2763 = !DILocation(line: 684, column: 24, scope: !2760)
!2764 = !DILocation(line: 685, column: 4, scope: !2639)
!2765 = !DILabel(scope: !2639, name: "errhandler", file: !2, line: 687, column: 4)
!2766 = !DILocation(line: 687, column: 4, scope: !2639)
!2767 = !DILocation(line: 688, column: 36, scope: !2639)
!2768 = !DILocation(line: 688, column: 4, scope: !2639)
!2769 = !DILocation(line: 689, column: 8, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 689, column: 8)
!2771 = !DILocation(line: 689, column: 18, scope: !2770)
!2772 = !DILocation(line: 690, column: 17, scope: !2770)
!2773 = !DILocation(line: 690, column: 37, scope: !2770)
!2774 = !DILocation(line: 690, column: 7, scope: !2770)
!2775 = !DILocation(line: 691, column: 12, scope: !2639)
!2776 = !DILocation(line: 691, column: 4, scope: !2639)
!2777 = !DILocation(line: 693, column: 10, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 691, column: 19)
!2779 = !DILabel(scope: !2778, name: "errhandler_io", file: !2, line: 695, column: 10)
!2780 = !DILocation(line: 695, column: 10, scope: !2778)
!2781 = !DILocation(line: 696, column: 10, scope: !2778)
!2782 = !DILocation(line: 698, column: 20, scope: !2778)
!2783 = !DILocation(line: 698, column: 10, scope: !2778)
!2784 = !DILocation(line: 700, column: 10, scope: !2778)
!2785 = !DILocation(line: 702, column: 10, scope: !2778)
!2786 = !DILocation(line: 704, column: 20, scope: !2778)
!2787 = !DILocation(line: 704, column: 10, scope: !2778)
!2788 = !DILocation(line: 706, column: 10, scope: !2778)
!2789 = !DILocation(line: 708, column: 14, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 708, column: 14)
!2791 = !DILocation(line: 708, column: 25, scope: !2790)
!2792 = !DILocation(line: 708, column: 22, scope: !2790)
!2793 = !DILocation(line: 708, column: 39, scope: !2790)
!2794 = !DILocation(line: 708, column: 32, scope: !2790)
!2795 = !DILocation(line: 709, column: 14, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 709, column: 14)
!2797 = !DILocation(line: 709, column: 23, scope: !2796)
!2798 = !DILocation(line: 710, column: 21, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2796, file: !2, line: 709, column: 29)
!2800 = !DILocation(line: 710, column: 11, scope: !2799)
!2801 = !DILocation(line: 712, column: 13, scope: !2799)
!2802 = !DILocation(line: 714, column: 17, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !2, line: 714, column: 17)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !2, line: 713, column: 17)
!2805 = !DILocation(line: 715, column: 23, scope: !2803)
!2806 = !DILocation(line: 715, column: 13, scope: !2803)
!2807 = !DILocation(line: 717, column: 13, scope: !2804)
!2808 = !DILocation(line: 720, column: 10, scope: !2778)
!2809 = !DILocation(line: 725, column: 1, scope: !2639)

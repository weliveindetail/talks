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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @fopen_output_safely(ptr noundef %0, ptr noundef %1) #0 !dbg !570 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !576, !DIExpression(), !577)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !578, !DIExpression(), !579)
    #dbg_declare(ptr %6, !580, !DIExpression(), !581)
    #dbg_declare(ptr %7, !582, !DIExpression(), !584)
  %8 = load ptr, ptr %4, align 8, !dbg !585
  %9 = call i32 (ptr, i32, ...) @open(ptr noundef %8, i32 noundef 193, i32 noundef 384), !dbg !586
  store i32 %9, ptr %7, align 4, !dbg !587
  %10 = load i32, ptr %7, align 4, !dbg !588
  %11 = icmp eq i32 %10, -1, !dbg !590
  br i1 %11, label %12, label %13, !dbg !590

12:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !591
  br label %24, !dbg !591

13:                                               ; preds = %2
  %14 = load i32, ptr %7, align 4, !dbg !592
  %15 = load ptr, ptr %5, align 8, !dbg !593
  %16 = call noalias ptr @fdopen(i32 noundef %14, ptr noundef %15) #10, !dbg !594
  store ptr %16, ptr %6, align 8, !dbg !595
  %17 = load ptr, ptr %6, align 8, !dbg !596
  %18 = icmp eq ptr %17, null, !dbg !598
  br i1 %18, label %19, label %22, !dbg !598

19:                                               ; preds = %13
  %20 = load i32, ptr %7, align 4, !dbg !599
  %21 = call i32 @close(i32 noundef %20), !dbg !600
  br label %22, !dbg !600

22:                                               ; preds = %19, %13
  %23 = load ptr, ptr %6, align 8, !dbg !601
  store ptr %23, ptr %3, align 8, !dbg !602
  br label %24, !dbg !602

24:                                               ; preds = %22, %12
  %25 = load ptr, ptr %3, align 8, !dbg !603
  ret ptr %25, !dbg !603
}

declare i32 @open(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare noalias ptr @fdopen(i32 noundef, ptr noundef) #2

declare i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !604 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !608, !DIExpression(), !609)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !610, !DIExpression(), !611)
    #dbg_declare(ptr %6, !612, !DIExpression(), !613)
    #dbg_declare(ptr %7, !614, !DIExpression(), !615)
    #dbg_declare(ptr %8, !616, !DIExpression(), !617)
    #dbg_declare(ptr %9, !618, !DIExpression(), !619)
    #dbg_declare(ptr %10, !620, !DIExpression(), !621)
    #dbg_declare(ptr %11, !622, !DIExpression(), !623)
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !624
  store i8 0, ptr @smallMode, align 1, !dbg !625
  store i8 0, ptr @keepInputFiles, align 1, !dbg !626
  store i8 0, ptr @forceOverwrite, align 1, !dbg !627
  store i8 1, ptr @noisy, align 1, !dbg !628
  store i32 0, ptr @verbosity, align 4, !dbg !629
  store i32 9, ptr @blockSize100k, align 4, !dbg !630
  store i8 0, ptr @testFailsExist, align 1, !dbg !631
  store i8 0, ptr @unzFailsExist, align 1, !dbg !632
  store i32 0, ptr @numFileNames, align 4, !dbg !633
  store i32 0, ptr @numFilesProcessed, align 4, !dbg !634
  store i32 30, ptr @workFactor, align 4, !dbg !635
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !636
  store i32 0, ptr @exitValue, align 4, !dbg !637
  store i32 0, ptr %7, align 4, !dbg !638
  store i32 0, ptr %6, align 4, !dbg !639
  %13 = call ptr @signal(i32 noundef 11, ptr noundef @mySIGSEGVorSIGBUScatcher) #10, !dbg !640
  %14 = call ptr @signal(i32 noundef 7, ptr noundef @mySIGSEGVorSIGBUScatcher) #10, !dbg !641
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.6), !dbg !642
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.6), !dbg !643
  %15 = load ptr, ptr %5, align 8, !dbg !644
  %16 = getelementptr inbounds ptr, ptr %15, i64 0, !dbg !644
  %17 = load ptr, ptr %16, align 8, !dbg !644
  call void @copyFileName(ptr noundef @progNameReally, ptr noundef %17), !dbg !645
  store ptr @progNameReally, ptr @progName, align 8, !dbg !646
  store ptr @progNameReally, ptr %8, align 8, !dbg !647
  br label %18, !dbg !649

18:                                               ; preds = %32, %2
  %19 = load ptr, ptr %8, align 8, !dbg !650
  %20 = load i8, ptr %19, align 1, !dbg !652
  %21 = sext i8 %20 to i32, !dbg !652
  %22 = icmp ne i32 %21, 0, !dbg !653
  br i1 %22, label %23, label %35, !dbg !654

23:                                               ; preds = %18
  %24 = load ptr, ptr %8, align 8, !dbg !655
  %25 = load i8, ptr %24, align 1, !dbg !657
  %26 = sext i8 %25 to i32, !dbg !657
  %27 = icmp eq i32 %26, 47, !dbg !658
  br i1 %27, label %28, label %31, !dbg !658

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 8, !dbg !659
  %30 = getelementptr inbounds i8, ptr %29, i64 1, !dbg !660
  store ptr %30, ptr @progName, align 8, !dbg !661
  br label %31, !dbg !662

31:                                               ; preds = %28, %23
  br label %32, !dbg !663

32:                                               ; preds = %31
  %33 = load ptr, ptr %8, align 8, !dbg !664
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 1, !dbg !664
  store ptr %34, ptr %8, align 8, !dbg !664
  br label %18, !dbg !665, !llvm.loop !666

35:                                               ; preds = %18
  store ptr null, ptr %9, align 8, !dbg !669
  call void @addFlagsFromEnvVar(ptr noundef %9, ptr noundef @.str.7), !dbg !670
  call void @addFlagsFromEnvVar(ptr noundef %9, ptr noundef @.str.8), !dbg !671
  store i32 1, ptr %6, align 4, !dbg !672
  br label %36, !dbg !674

36:                                               ; preds = %49, %35
  %37 = load i32, ptr %6, align 4, !dbg !675
  %38 = load i32, ptr %4, align 4, !dbg !677
  %39 = sub nsw i32 %38, 1, !dbg !678
  %40 = icmp sle i32 %37, %39, !dbg !679
  br i1 %40, label %41, label %52, !dbg !680

41:                                               ; preds = %36
  %42 = load ptr, ptr %9, align 8, !dbg !681
  %43 = load ptr, ptr %5, align 8, !dbg !681
  %44 = load i32, ptr %6, align 4, !dbg !681
  %45 = sext i32 %44 to i64, !dbg !681
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45, !dbg !681
  %47 = load ptr, ptr %46, align 8, !dbg !681
  %48 = call ptr @snocString(ptr noundef %42, ptr noundef %47), !dbg !681
  store ptr %48, ptr %9, align 8, !dbg !681
  br label %49, !dbg !681

49:                                               ; preds = %41
  %50 = load i32, ptr %6, align 4, !dbg !682
  %51 = add nsw i32 %50, 1, !dbg !682
  store i32 %51, ptr %6, align 4, !dbg !682
  br label %36, !dbg !683, !llvm.loop !684

52:                                               ; preds = %36
  store i32 7, ptr @longestFileName, align 4, !dbg !686
  store i32 0, ptr @numFileNames, align 4, !dbg !687
  store i8 1, ptr %11, align 1, !dbg !688
  %53 = load ptr, ptr %9, align 8, !dbg !689
  store ptr %53, ptr %10, align 8, !dbg !691
  br label %54, !dbg !692

54:                                               ; preds = %94, %52
  %55 = load ptr, ptr %10, align 8, !dbg !693
  %56 = icmp ne ptr %55, null, !dbg !695
  br i1 %56, label %57, label %98, !dbg !696

57:                                               ; preds = %54
  %58 = load ptr, ptr %10, align 8, !dbg !697
  %59 = getelementptr inbounds nuw %struct.zzzz, ptr %58, i32 0, i32 0, !dbg !697
  %60 = load ptr, ptr %59, align 8, !dbg !697
  %61 = call i32 @strcmp(ptr noundef %60, ptr noundef @.str.9) #11, !dbg !697
  %62 = icmp eq i32 %61, 0, !dbg !697
  br i1 %62, label %63, label %64, !dbg !697

63:                                               ; preds = %57
  store i8 0, ptr %11, align 1, !dbg !700
  br label %94, !dbg !702

64:                                               ; preds = %57
  %65 = load ptr, ptr %10, align 8, !dbg !703
  %66 = getelementptr inbounds nuw %struct.zzzz, ptr %65, i32 0, i32 0, !dbg !705
  %67 = load ptr, ptr %66, align 8, !dbg !705
  %68 = getelementptr inbounds i8, ptr %67, i64 0, !dbg !703
  %69 = load i8, ptr %68, align 1, !dbg !703
  %70 = sext i8 %69 to i32, !dbg !703
  %71 = icmp eq i32 %70, 45, !dbg !706
  br i1 %71, label %72, label %77, !dbg !707

72:                                               ; preds = %64
  %73 = load i8, ptr %11, align 1, !dbg !708
  %74 = zext i8 %73 to i32, !dbg !708
  %75 = icmp ne i32 %74, 0, !dbg !708
  br i1 %75, label %76, label %77, !dbg !707

76:                                               ; preds = %72
  br label %94, !dbg !709

77:                                               ; preds = %72, %64
  %78 = load i32, ptr @numFileNames, align 4, !dbg !710
  %79 = add nsw i32 %78, 1, !dbg !710
  store i32 %79, ptr @numFileNames, align 4, !dbg !710
  %80 = load i32, ptr @longestFileName, align 4, !dbg !711
  %81 = load ptr, ptr %10, align 8, !dbg !713
  %82 = getelementptr inbounds nuw %struct.zzzz, ptr %81, i32 0, i32 0, !dbg !714
  %83 = load ptr, ptr %82, align 8, !dbg !714
  %84 = call i64 @strlen(ptr noundef %83) #11, !dbg !715
  %85 = trunc i64 %84 to i32, !dbg !716
  %86 = icmp slt i32 %80, %85, !dbg !717
  br i1 %86, label %87, label %93, !dbg !717

87:                                               ; preds = %77
  %88 = load ptr, ptr %10, align 8, !dbg !718
  %89 = getelementptr inbounds nuw %struct.zzzz, ptr %88, i32 0, i32 0, !dbg !719
  %90 = load ptr, ptr %89, align 8, !dbg !719
  %91 = call i64 @strlen(ptr noundef %90) #11, !dbg !720
  %92 = trunc i64 %91 to i32, !dbg !721
  store i32 %92, ptr @longestFileName, align 4, !dbg !722
  br label %93, !dbg !723

93:                                               ; preds = %87, %77
  br label %94, !dbg !724

94:                                               ; preds = %93, %76, %63
  %95 = load ptr, ptr %10, align 8, !dbg !725
  %96 = getelementptr inbounds nuw %struct.zzzz, ptr %95, i32 0, i32 1, !dbg !726
  %97 = load ptr, ptr %96, align 8, !dbg !726
  store ptr %97, ptr %10, align 8, !dbg !727
  br label %54, !dbg !728, !llvm.loop !729

98:                                               ; preds = %54
  %99 = load i32, ptr @numFileNames, align 4, !dbg !731
  %100 = icmp eq i32 %99, 0, !dbg !733
  br i1 %100, label %101, label %102, !dbg !733

101:                                              ; preds = %98
  store i32 1, ptr @srcMode, align 4, !dbg !734
  br label %103, !dbg !735

102:                                              ; preds = %98
  store i32 3, ptr @srcMode, align 4, !dbg !736
  br label %103

103:                                              ; preds = %102, %101
  store i32 1, ptr @opMode, align 4, !dbg !737
  %104 = load ptr, ptr @progName, align 8, !dbg !738
  %105 = call ptr @strstr(ptr noundef %104, ptr noundef @.str.10) #11, !dbg !740
  %106 = icmp ne ptr %105, null, !dbg !741
  br i1 %106, label %111, label %107, !dbg !742

107:                                              ; preds = %103
  %108 = load ptr, ptr @progName, align 8, !dbg !743
  %109 = call ptr @strstr(ptr noundef %108, ptr noundef @.str.11) #11, !dbg !744
  %110 = icmp ne ptr %109, null, !dbg !745
  br i1 %110, label %111, label %112, !dbg !742

111:                                              ; preds = %107, %103
  store i32 2, ptr @opMode, align 4, !dbg !746
  br label %112, !dbg !747

112:                                              ; preds = %111, %107
  %113 = load ptr, ptr @progName, align 8, !dbg !748
  %114 = call ptr @strstr(ptr noundef %113, ptr noundef @.str.12) #11, !dbg !750
  %115 = icmp ne ptr %114, null, !dbg !751
  br i1 %115, label %128, label %116, !dbg !752

116:                                              ; preds = %112
  %117 = load ptr, ptr @progName, align 8, !dbg !753
  %118 = call ptr @strstr(ptr noundef %117, ptr noundef @.str.13) #11, !dbg !754
  %119 = icmp ne ptr %118, null, !dbg !755
  br i1 %119, label %128, label %120, !dbg !756

120:                                              ; preds = %116
  %121 = load ptr, ptr @progName, align 8, !dbg !757
  %122 = call ptr @strstr(ptr noundef %121, ptr noundef @.str.14) #11, !dbg !758
  %123 = icmp ne ptr %122, null, !dbg !759
  br i1 %123, label %128, label %124, !dbg !760

124:                                              ; preds = %120
  %125 = load ptr, ptr @progName, align 8, !dbg !761
  %126 = call ptr @strstr(ptr noundef %125, ptr noundef @.str.15) #11, !dbg !762
  %127 = icmp ne ptr %126, null, !dbg !763
  br i1 %127, label %128, label %133, !dbg !760

128:                                              ; preds = %124, %120, %116, %112
  store i32 2, ptr @opMode, align 4, !dbg !764
  %129 = load i32, ptr @numFileNames, align 4, !dbg !766
  %130 = icmp eq i32 %129, 0, !dbg !767
  %131 = zext i1 %130 to i64, !dbg !768
  %132 = select i1 %130, i32 1, i32 2, !dbg !768
  store i32 %132, ptr @srcMode, align 4, !dbg !769
  br label %133, !dbg !770

133:                                              ; preds = %128, %124
  %134 = load ptr, ptr %9, align 8, !dbg !771
  store ptr %134, ptr %10, align 8, !dbg !773
  br label %135, !dbg !774

135:                                              ; preds = %218, %133
  %136 = load ptr, ptr %10, align 8, !dbg !775
  %137 = icmp ne ptr %136, null, !dbg !777
  br i1 %137, label %138, label %222, !dbg !778

138:                                              ; preds = %135
  %139 = load ptr, ptr %10, align 8, !dbg !779
  %140 = getelementptr inbounds nuw %struct.zzzz, ptr %139, i32 0, i32 0, !dbg !779
  %141 = load ptr, ptr %140, align 8, !dbg !779
  %142 = call i32 @strcmp(ptr noundef %141, ptr noundef @.str.9) #11, !dbg !779
  %143 = icmp eq i32 %142, 0, !dbg !779
  br i1 %143, label %144, label %145, !dbg !779

144:                                              ; preds = %138
  br label %222, !dbg !782

145:                                              ; preds = %138
  %146 = load ptr, ptr %10, align 8, !dbg !783
  %147 = getelementptr inbounds nuw %struct.zzzz, ptr %146, i32 0, i32 0, !dbg !785
  %148 = load ptr, ptr %147, align 8, !dbg !785
  %149 = getelementptr inbounds i8, ptr %148, i64 0, !dbg !783
  %150 = load i8, ptr %149, align 1, !dbg !783
  %151 = sext i8 %150 to i32, !dbg !783
  %152 = icmp eq i32 %151, 45, !dbg !786
  br i1 %152, label %153, label %217, !dbg !787

153:                                              ; preds = %145
  %154 = load ptr, ptr %10, align 8, !dbg !788
  %155 = getelementptr inbounds nuw %struct.zzzz, ptr %154, i32 0, i32 0, !dbg !789
  %156 = load ptr, ptr %155, align 8, !dbg !789
  %157 = getelementptr inbounds i8, ptr %156, i64 1, !dbg !788
  %158 = load i8, ptr %157, align 1, !dbg !788
  %159 = sext i8 %158 to i32, !dbg !788
  %160 = icmp ne i32 %159, 45, !dbg !790
  br i1 %160, label %161, label %217, !dbg !787

161:                                              ; preds = %153
  store i32 1, ptr %7, align 4, !dbg !791
  br label %162, !dbg !794

162:                                              ; preds = %213, %161
  %163 = load ptr, ptr %10, align 8, !dbg !795
  %164 = getelementptr inbounds nuw %struct.zzzz, ptr %163, i32 0, i32 0, !dbg !797
  %165 = load ptr, ptr %164, align 8, !dbg !797
  %166 = load i32, ptr %7, align 4, !dbg !798
  %167 = sext i32 %166 to i64, !dbg !795
  %168 = getelementptr inbounds i8, ptr %165, i64 %167, !dbg !795
  %169 = load i8, ptr %168, align 1, !dbg !795
  %170 = sext i8 %169 to i32, !dbg !795
  %171 = icmp ne i32 %170, 0, !dbg !799
  br i1 %171, label %172, label %216, !dbg !800

172:                                              ; preds = %162
  %173 = load ptr, ptr %10, align 8, !dbg !801
  %174 = getelementptr inbounds nuw %struct.zzzz, ptr %173, i32 0, i32 0, !dbg !803
  %175 = load ptr, ptr %174, align 8, !dbg !803
  %176 = load i32, ptr %7, align 4, !dbg !804
  %177 = sext i32 %176 to i64, !dbg !801
  %178 = getelementptr inbounds i8, ptr %175, i64 %177, !dbg !801
  %179 = load i8, ptr %178, align 1, !dbg !801
  %180 = sext i8 %179 to i32, !dbg !801
  switch i32 %180, label %204 [
    i32 99, label %181
    i32 100, label %182
    i32 122, label %183
    i32 102, label %184
    i32 116, label %185
    i32 107, label %186
    i32 115, label %187
    i32 113, label %188
    i32 49, label %189
    i32 50, label %190
    i32 51, label %191
    i32 52, label %192
    i32 53, label %193
    i32 54, label %194
    i32 55, label %195
    i32 56, label %196
    i32 57, label %197
    i32 86, label %198
    i32 76, label %198
    i32 118, label %199
    i32 104, label %202
  ], !dbg !805

181:                                              ; preds = %172
  store i32 2, ptr @srcMode, align 4, !dbg !806
  br label %212, !dbg !808

182:                                              ; preds = %172
  store i32 2, ptr @opMode, align 4, !dbg !809
  br label %212, !dbg !810

183:                                              ; preds = %172
  store i32 1, ptr @opMode, align 4, !dbg !811
  br label %212, !dbg !812

184:                                              ; preds = %172
  store i8 1, ptr @forceOverwrite, align 1, !dbg !813
  br label %212, !dbg !814

185:                                              ; preds = %172
  store i32 3, ptr @opMode, align 4, !dbg !815
  br label %212, !dbg !816

186:                                              ; preds = %172
  store i8 1, ptr @keepInputFiles, align 1, !dbg !817
  br label %212, !dbg !818

187:                                              ; preds = %172
  store i8 1, ptr @smallMode, align 1, !dbg !819
  br label %212, !dbg !820

188:                                              ; preds = %172
  store i8 0, ptr @noisy, align 1, !dbg !821
  br label %212, !dbg !822

189:                                              ; preds = %172
  store i32 1, ptr @blockSize100k, align 4, !dbg !823
  br label %212, !dbg !824

190:                                              ; preds = %172
  store i32 2, ptr @blockSize100k, align 4, !dbg !825
  br label %212, !dbg !826

191:                                              ; preds = %172
  store i32 3, ptr @blockSize100k, align 4, !dbg !827
  br label %212, !dbg !828

192:                                              ; preds = %172
  store i32 4, ptr @blockSize100k, align 4, !dbg !829
  br label %212, !dbg !830

193:                                              ; preds = %172
  store i32 5, ptr @blockSize100k, align 4, !dbg !831
  br label %212, !dbg !832

194:                                              ; preds = %172
  store i32 6, ptr @blockSize100k, align 4, !dbg !833
  br label %212, !dbg !834

195:                                              ; preds = %172
  store i32 7, ptr @blockSize100k, align 4, !dbg !835
  br label %212, !dbg !836

196:                                              ; preds = %172
  store i32 8, ptr @blockSize100k, align 4, !dbg !837
  br label %212, !dbg !838

197:                                              ; preds = %172
  store i32 9, ptr @blockSize100k, align 4, !dbg !839
  br label %212, !dbg !840

198:                                              ; preds = %172, %172
  call void @license(), !dbg !841
  br label %212, !dbg !842

199:                                              ; preds = %172
  %200 = load i32, ptr @verbosity, align 4, !dbg !843
  %201 = add nsw i32 %200, 1, !dbg !843
  store i32 %201, ptr @verbosity, align 4, !dbg !843
  br label %212, !dbg !844

202:                                              ; preds = %172
  %203 = load ptr, ptr @progName, align 8, !dbg !845
  call void @usage(ptr noundef %203), !dbg !846
  call void @exit(i32 noundef 0) #12, !dbg !847
  unreachable, !dbg !847

204:                                              ; preds = %172
  %205 = load ptr, ptr @stderr, align 8, !dbg !848
  %206 = load ptr, ptr @progName, align 8, !dbg !849
  %207 = load ptr, ptr %10, align 8, !dbg !850
  %208 = getelementptr inbounds nuw %struct.zzzz, ptr %207, i32 0, i32 0, !dbg !851
  %209 = load ptr, ptr %208, align 8, !dbg !851
  %210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.16, ptr noundef %206, ptr noundef %209) #10, !dbg !852
  %211 = load ptr, ptr @progName, align 8, !dbg !853
  call void @usage(ptr noundef %211), !dbg !854
  call void @exit(i32 noundef 1) #12, !dbg !855
  unreachable, !dbg !855

212:                                              ; preds = %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181
  br label %213, !dbg !856

213:                                              ; preds = %212
  %214 = load i32, ptr %7, align 4, !dbg !857
  %215 = add nsw i32 %214, 1, !dbg !857
  store i32 %215, ptr %7, align 4, !dbg !857
  br label %162, !dbg !858, !llvm.loop !859

216:                                              ; preds = %162
  br label %217, !dbg !861

217:                                              ; preds = %216, %153, %145
  br label %218, !dbg !862

218:                                              ; preds = %217
  %219 = load ptr, ptr %10, align 8, !dbg !863
  %220 = getelementptr inbounds nuw %struct.zzzz, ptr %219, i32 0, i32 1, !dbg !864
  %221 = load ptr, ptr %220, align 8, !dbg !864
  store ptr %221, ptr %10, align 8, !dbg !865
  br label %135, !dbg !866, !llvm.loop !867

222:                                              ; preds = %144, %135
  %223 = load ptr, ptr %9, align 8, !dbg !869
  store ptr %223, ptr %10, align 8, !dbg !871
  br label %224, !dbg !872

224:                                              ; preds = %394, %222
  %225 = load ptr, ptr %10, align 8, !dbg !873
  %226 = icmp ne ptr %225, null, !dbg !875
  br i1 %226, label %227, label %398, !dbg !876

227:                                              ; preds = %224
  %228 = load ptr, ptr %10, align 8, !dbg !877
  %229 = getelementptr inbounds nuw %struct.zzzz, ptr %228, i32 0, i32 0, !dbg !877
  %230 = load ptr, ptr %229, align 8, !dbg !877
  %231 = call i32 @strcmp(ptr noundef %230, ptr noundef @.str.9) #11, !dbg !877
  %232 = icmp eq i32 %231, 0, !dbg !877
  br i1 %232, label %233, label %234, !dbg !877

233:                                              ; preds = %227
  br label %398, !dbg !880

234:                                              ; preds = %227
  %235 = load ptr, ptr %10, align 8, !dbg !881
  %236 = getelementptr inbounds nuw %struct.zzzz, ptr %235, i32 0, i32 0, !dbg !881
  %237 = load ptr, ptr %236, align 8, !dbg !881
  %238 = call i32 @strcmp(ptr noundef %237, ptr noundef @.str.17) #11, !dbg !881
  %239 = icmp eq i32 %238, 0, !dbg !881
  br i1 %239, label %240, label %241, !dbg !881

240:                                              ; preds = %234
  store i32 2, ptr @srcMode, align 4, !dbg !883
  br label %393, !dbg !884

241:                                              ; preds = %234
  %242 = load ptr, ptr %10, align 8, !dbg !885
  %243 = getelementptr inbounds nuw %struct.zzzz, ptr %242, i32 0, i32 0, !dbg !885
  %244 = load ptr, ptr %243, align 8, !dbg !885
  %245 = call i32 @strcmp(ptr noundef %244, ptr noundef @.str.18) #11, !dbg !885
  %246 = icmp eq i32 %245, 0, !dbg !885
  br i1 %246, label %247, label %248, !dbg !885

247:                                              ; preds = %241
  store i32 2, ptr @opMode, align 4, !dbg !887
  br label %392, !dbg !888

248:                                              ; preds = %241
  %249 = load ptr, ptr %10, align 8, !dbg !889
  %250 = getelementptr inbounds nuw %struct.zzzz, ptr %249, i32 0, i32 0, !dbg !889
  %251 = load ptr, ptr %250, align 8, !dbg !889
  %252 = call i32 @strcmp(ptr noundef %251, ptr noundef @.str.19) #11, !dbg !889
  %253 = icmp eq i32 %252, 0, !dbg !889
  br i1 %253, label %254, label %255, !dbg !889

254:                                              ; preds = %248
  store i32 1, ptr @opMode, align 4, !dbg !891
  br label %391, !dbg !892

255:                                              ; preds = %248
  %256 = load ptr, ptr %10, align 8, !dbg !893
  %257 = getelementptr inbounds nuw %struct.zzzz, ptr %256, i32 0, i32 0, !dbg !893
  %258 = load ptr, ptr %257, align 8, !dbg !893
  %259 = call i32 @strcmp(ptr noundef %258, ptr noundef @.str.20) #11, !dbg !893
  %260 = icmp eq i32 %259, 0, !dbg !893
  br i1 %260, label %261, label %262, !dbg !893

261:                                              ; preds = %255
  store i8 1, ptr @forceOverwrite, align 1, !dbg !895
  br label %390, !dbg !896

262:                                              ; preds = %255
  %263 = load ptr, ptr %10, align 8, !dbg !897
  %264 = getelementptr inbounds nuw %struct.zzzz, ptr %263, i32 0, i32 0, !dbg !897
  %265 = load ptr, ptr %264, align 8, !dbg !897
  %266 = call i32 @strcmp(ptr noundef %265, ptr noundef @.str.21) #11, !dbg !897
  %267 = icmp eq i32 %266, 0, !dbg !897
  br i1 %267, label %268, label %269, !dbg !897

268:                                              ; preds = %262
  store i32 3, ptr @opMode, align 4, !dbg !899
  br label %389, !dbg !900

269:                                              ; preds = %262
  %270 = load ptr, ptr %10, align 8, !dbg !901
  %271 = getelementptr inbounds nuw %struct.zzzz, ptr %270, i32 0, i32 0, !dbg !901
  %272 = load ptr, ptr %271, align 8, !dbg !901
  %273 = call i32 @strcmp(ptr noundef %272, ptr noundef @.str.22) #11, !dbg !901
  %274 = icmp eq i32 %273, 0, !dbg !901
  br i1 %274, label %275, label %276, !dbg !901

275:                                              ; preds = %269
  store i8 1, ptr @keepInputFiles, align 1, !dbg !903
  br label %388, !dbg !904

276:                                              ; preds = %269
  %277 = load ptr, ptr %10, align 8, !dbg !905
  %278 = getelementptr inbounds nuw %struct.zzzz, ptr %277, i32 0, i32 0, !dbg !905
  %279 = load ptr, ptr %278, align 8, !dbg !905
  %280 = call i32 @strcmp(ptr noundef %279, ptr noundef @.str.23) #11, !dbg !905
  %281 = icmp eq i32 %280, 0, !dbg !905
  br i1 %281, label %282, label %283, !dbg !905

282:                                              ; preds = %276
  store i8 1, ptr @smallMode, align 1, !dbg !907
  br label %387, !dbg !908

283:                                              ; preds = %276
  %284 = load ptr, ptr %10, align 8, !dbg !909
  %285 = getelementptr inbounds nuw %struct.zzzz, ptr %284, i32 0, i32 0, !dbg !909
  %286 = load ptr, ptr %285, align 8, !dbg !909
  %287 = call i32 @strcmp(ptr noundef %286, ptr noundef @.str.24) #11, !dbg !909
  %288 = icmp eq i32 %287, 0, !dbg !909
  br i1 %288, label %289, label %290, !dbg !909

289:                                              ; preds = %283
  store i8 0, ptr @noisy, align 1, !dbg !911
  br label %386, !dbg !912

290:                                              ; preds = %283
  %291 = load ptr, ptr %10, align 8, !dbg !913
  %292 = getelementptr inbounds nuw %struct.zzzz, ptr %291, i32 0, i32 0, !dbg !913
  %293 = load ptr, ptr %292, align 8, !dbg !913
  %294 = call i32 @strcmp(ptr noundef %293, ptr noundef @.str.25) #11, !dbg !913
  %295 = icmp eq i32 %294, 0, !dbg !913
  br i1 %295, label %296, label %297, !dbg !913

296:                                              ; preds = %290
  call void @license(), !dbg !915
  br label %385, !dbg !915

297:                                              ; preds = %290
  %298 = load ptr, ptr %10, align 8, !dbg !916
  %299 = getelementptr inbounds nuw %struct.zzzz, ptr %298, i32 0, i32 0, !dbg !916
  %300 = load ptr, ptr %299, align 8, !dbg !916
  %301 = call i32 @strcmp(ptr noundef %300, ptr noundef @.str.26) #11, !dbg !916
  %302 = icmp eq i32 %301, 0, !dbg !916
  br i1 %302, label %303, label %304, !dbg !916

303:                                              ; preds = %297
  call void @license(), !dbg !918
  br label %384, !dbg !918

304:                                              ; preds = %297
  %305 = load ptr, ptr %10, align 8, !dbg !919
  %306 = getelementptr inbounds nuw %struct.zzzz, ptr %305, i32 0, i32 0, !dbg !919
  %307 = load ptr, ptr %306, align 8, !dbg !919
  %308 = call i32 @strcmp(ptr noundef %307, ptr noundef @.str.27) #11, !dbg !919
  %309 = icmp eq i32 %308, 0, !dbg !919
  br i1 %309, label %310, label %311, !dbg !919

310:                                              ; preds = %304
  store i32 1, ptr @workFactor, align 4, !dbg !921
  br label %383, !dbg !922

311:                                              ; preds = %304
  %312 = load ptr, ptr %10, align 8, !dbg !923
  %313 = getelementptr inbounds nuw %struct.zzzz, ptr %312, i32 0, i32 0, !dbg !923
  %314 = load ptr, ptr %313, align 8, !dbg !923
  %315 = call i32 @strcmp(ptr noundef %314, ptr noundef @.str.28) #11, !dbg !923
  %316 = icmp eq i32 %315, 0, !dbg !923
  br i1 %316, label %317, label %321, !dbg !923

317:                                              ; preds = %311
  %318 = load ptr, ptr %10, align 8, !dbg !925
  %319 = getelementptr inbounds nuw %struct.zzzz, ptr %318, i32 0, i32 0, !dbg !926
  %320 = load ptr, ptr %319, align 8, !dbg !926
  call void @redundant(ptr noundef %320), !dbg !927
  br label %382, !dbg !927

321:                                              ; preds = %311
  %322 = load ptr, ptr %10, align 8, !dbg !928
  %323 = getelementptr inbounds nuw %struct.zzzz, ptr %322, i32 0, i32 0, !dbg !928
  %324 = load ptr, ptr %323, align 8, !dbg !928
  %325 = call i32 @strcmp(ptr noundef %324, ptr noundef @.str.29) #11, !dbg !928
  %326 = icmp eq i32 %325, 0, !dbg !928
  br i1 %326, label %327, label %331, !dbg !928

327:                                              ; preds = %321
  %328 = load ptr, ptr %10, align 8, !dbg !930
  %329 = getelementptr inbounds nuw %struct.zzzz, ptr %328, i32 0, i32 0, !dbg !931
  %330 = load ptr, ptr %329, align 8, !dbg !931
  call void @redundant(ptr noundef %330), !dbg !932
  br label %381, !dbg !932

331:                                              ; preds = %321
  %332 = load ptr, ptr %10, align 8, !dbg !933
  %333 = getelementptr inbounds nuw %struct.zzzz, ptr %332, i32 0, i32 0, !dbg !933
  %334 = load ptr, ptr %333, align 8, !dbg !933
  %335 = call i32 @strcmp(ptr noundef %334, ptr noundef @.str.30) #11, !dbg !933
  %336 = icmp eq i32 %335, 0, !dbg !933
  br i1 %336, label %337, label %338, !dbg !933

337:                                              ; preds = %331
  store i32 1, ptr @blockSize100k, align 4, !dbg !935
  br label %380, !dbg !936

338:                                              ; preds = %331
  %339 = load ptr, ptr %10, align 8, !dbg !937
  %340 = getelementptr inbounds nuw %struct.zzzz, ptr %339, i32 0, i32 0, !dbg !937
  %341 = load ptr, ptr %340, align 8, !dbg !937
  %342 = call i32 @strcmp(ptr noundef %341, ptr noundef @.str.31) #11, !dbg !937
  %343 = icmp eq i32 %342, 0, !dbg !937
  br i1 %343, label %344, label %345, !dbg !937

344:                                              ; preds = %338
  store i32 9, ptr @blockSize100k, align 4, !dbg !939
  br label %379, !dbg !940

345:                                              ; preds = %338
  %346 = load ptr, ptr %10, align 8, !dbg !941
  %347 = getelementptr inbounds nuw %struct.zzzz, ptr %346, i32 0, i32 0, !dbg !941
  %348 = load ptr, ptr %347, align 8, !dbg !941
  %349 = call i32 @strcmp(ptr noundef %348, ptr noundef @.str.32) #11, !dbg !941
  %350 = icmp eq i32 %349, 0, !dbg !941
  br i1 %350, label %351, label %354, !dbg !941

351:                                              ; preds = %345
  %352 = load i32, ptr @verbosity, align 4, !dbg !943
  %353 = add nsw i32 %352, 1, !dbg !943
  store i32 %353, ptr @verbosity, align 4, !dbg !943
  br label %378, !dbg !944

354:                                              ; preds = %345
  %355 = load ptr, ptr %10, align 8, !dbg !945
  %356 = getelementptr inbounds nuw %struct.zzzz, ptr %355, i32 0, i32 0, !dbg !945
  %357 = load ptr, ptr %356, align 8, !dbg !945
  %358 = call i32 @strcmp(ptr noundef %357, ptr noundef @.str.33) #11, !dbg !945
  %359 = icmp eq i32 %358, 0, !dbg !945
  br i1 %359, label %360, label %362, !dbg !945

360:                                              ; preds = %354
  %361 = load ptr, ptr @progName, align 8, !dbg !947
  call void @usage(ptr noundef %361), !dbg !949
  call void @exit(i32 noundef 0) #12, !dbg !950
  unreachable, !dbg !950

362:                                              ; preds = %354
  %363 = load ptr, ptr %10, align 8, !dbg !951
  %364 = getelementptr inbounds nuw %struct.zzzz, ptr %363, i32 0, i32 0, !dbg !953
  %365 = load ptr, ptr %364, align 8, !dbg !953
  %366 = call i32 @strncmp(ptr noundef %365, ptr noundef @.str.9, i64 noundef 2) #11, !dbg !954
  %367 = icmp eq i32 %366, 0, !dbg !955
  br i1 %367, label %368, label %376, !dbg !955

368:                                              ; preds = %362
  %369 = load ptr, ptr @stderr, align 8, !dbg !956
  %370 = load ptr, ptr @progName, align 8, !dbg !958
  %371 = load ptr, ptr %10, align 8, !dbg !959
  %372 = getelementptr inbounds nuw %struct.zzzz, ptr %371, i32 0, i32 0, !dbg !960
  %373 = load ptr, ptr %372, align 8, !dbg !960
  %374 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %369, ptr noundef @.str.16, ptr noundef %370, ptr noundef %373) #10, !dbg !961
  %375 = load ptr, ptr @progName, align 8, !dbg !962
  call void @usage(ptr noundef %375), !dbg !963
  call void @exit(i32 noundef 1) #12, !dbg !964
  unreachable, !dbg !964

376:                                              ; preds = %362
  br label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377, %351
  br label %379

379:                                              ; preds = %378, %344
  br label %380

380:                                              ; preds = %379, %337
  br label %381

381:                                              ; preds = %380, %327
  br label %382

382:                                              ; preds = %381, %317
  br label %383

383:                                              ; preds = %382, %310
  br label %384

384:                                              ; preds = %383, %303
  br label %385

385:                                              ; preds = %384, %296
  br label %386

386:                                              ; preds = %385, %289
  br label %387

387:                                              ; preds = %386, %282
  br label %388

388:                                              ; preds = %387, %275
  br label %389

389:                                              ; preds = %388, %268
  br label %390

390:                                              ; preds = %389, %261
  br label %391

391:                                              ; preds = %390, %254
  br label %392

392:                                              ; preds = %391, %247
  br label %393

393:                                              ; preds = %392, %240
  br label %394, !dbg !965

394:                                              ; preds = %393
  %395 = load ptr, ptr %10, align 8, !dbg !966
  %396 = getelementptr inbounds nuw %struct.zzzz, ptr %395, i32 0, i32 1, !dbg !967
  %397 = load ptr, ptr %396, align 8, !dbg !967
  store ptr %397, ptr %10, align 8, !dbg !968
  br label %224, !dbg !969, !llvm.loop !970

398:                                              ; preds = %233, %224
  %399 = load i32, ptr @verbosity, align 4, !dbg !972
  %400 = icmp sgt i32 %399, 4, !dbg !974
  br i1 %400, label %401, label %402, !dbg !974

401:                                              ; preds = %398
  store i32 4, ptr @verbosity, align 4, !dbg !975
  br label %402, !dbg !976

402:                                              ; preds = %401, %398
  %403 = load i32, ptr @opMode, align 4, !dbg !977
  %404 = icmp eq i32 %403, 1, !dbg !979
  br i1 %404, label %405, label %413, !dbg !980

405:                                              ; preds = %402
  %406 = load i8, ptr @smallMode, align 1, !dbg !981
  %407 = zext i8 %406 to i32, !dbg !981
  %408 = icmp ne i32 %407, 0, !dbg !981
  br i1 %408, label %409, label %413, !dbg !982

409:                                              ; preds = %405
  %410 = load i32, ptr @blockSize100k, align 4, !dbg !983
  %411 = icmp sgt i32 %410, 2, !dbg !984
  br i1 %411, label %412, label %413, !dbg !982

412:                                              ; preds = %409
  store i32 2, ptr @blockSize100k, align 4, !dbg !985
  br label %413, !dbg !986

413:                                              ; preds = %412, %409, %405, %402
  %414 = load i32, ptr @opMode, align 4, !dbg !987
  %415 = icmp eq i32 %414, 3, !dbg !989
  br i1 %415, label %416, label %423, !dbg !990

416:                                              ; preds = %413
  %417 = load i32, ptr @srcMode, align 4, !dbg !991
  %418 = icmp eq i32 %417, 2, !dbg !992
  br i1 %418, label %419, label %423, !dbg !990

419:                                              ; preds = %416
  %420 = load ptr, ptr @stderr, align 8, !dbg !993
  %421 = load ptr, ptr @progName, align 8, !dbg !995
  %422 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %420, ptr noundef @.str.34, ptr noundef %421) #10, !dbg !996
  call void @exit(i32 noundef 1) #12, !dbg !997
  unreachable, !dbg !997

423:                                              ; preds = %416, %413
  %424 = load i32, ptr @srcMode, align 4, !dbg !998
  %425 = icmp eq i32 %424, 2, !dbg !1000
  br i1 %425, label %426, label %430, !dbg !1001

426:                                              ; preds = %423
  %427 = load i32, ptr @numFileNames, align 4, !dbg !1002
  %428 = icmp eq i32 %427, 0, !dbg !1003
  br i1 %428, label %429, label %430, !dbg !1001

429:                                              ; preds = %426
  store i32 1, ptr @srcMode, align 4, !dbg !1004
  br label %430, !dbg !1005

430:                                              ; preds = %429, %426, %423
  %431 = load i32, ptr @opMode, align 4, !dbg !1006
  %432 = icmp ne i32 %431, 1, !dbg !1008
  br i1 %432, label %433, label %434, !dbg !1008

433:                                              ; preds = %430
  store i32 0, ptr @blockSize100k, align 4, !dbg !1009
  br label %434, !dbg !1010

434:                                              ; preds = %433, %430
  %435 = load i32, ptr @srcMode, align 4, !dbg !1011
  %436 = icmp eq i32 %435, 3, !dbg !1013
  br i1 %436, label %437, label %441, !dbg !1013

437:                                              ; preds = %434
  %438 = call ptr @signal(i32 noundef 2, ptr noundef @mySignalCatcher) #10, !dbg !1014
  %439 = call ptr @signal(i32 noundef 15, ptr noundef @mySignalCatcher) #10, !dbg !1016
  %440 = call ptr @signal(i32 noundef 1, ptr noundef @mySignalCatcher) #10, !dbg !1017
  br label %441, !dbg !1018

441:                                              ; preds = %437, %434
  %442 = load i32, ptr @opMode, align 4, !dbg !1019
  %443 = icmp eq i32 %442, 1, !dbg !1021
  br i1 %443, label %444, label %485, !dbg !1021

444:                                              ; preds = %441
  %445 = load i32, ptr @srcMode, align 4, !dbg !1022
  %446 = icmp eq i32 %445, 1, !dbg !1025
  br i1 %446, label %447, label %448, !dbg !1025

447:                                              ; preds = %444
  call void @compress(ptr noundef null), !dbg !1026
  br label %484, !dbg !1028

448:                                              ; preds = %444
  store i8 1, ptr %11, align 1, !dbg !1029
  %449 = load ptr, ptr %9, align 8, !dbg !1031
  store ptr %449, ptr %10, align 8, !dbg !1033
  br label %450, !dbg !1034

450:                                              ; preds = %479, %448
  %451 = load ptr, ptr %10, align 8, !dbg !1035
  %452 = icmp ne ptr %451, null, !dbg !1037
  br i1 %452, label %453, label %483, !dbg !1038

453:                                              ; preds = %450
  %454 = load ptr, ptr %10, align 8, !dbg !1039
  %455 = getelementptr inbounds nuw %struct.zzzz, ptr %454, i32 0, i32 0, !dbg !1039
  %456 = load ptr, ptr %455, align 8, !dbg !1039
  %457 = call i32 @strcmp(ptr noundef %456, ptr noundef @.str.9) #11, !dbg !1039
  %458 = icmp eq i32 %457, 0, !dbg !1039
  br i1 %458, label %459, label %460, !dbg !1039

459:                                              ; preds = %453
  store i8 0, ptr %11, align 1, !dbg !1042
  br label %479, !dbg !1044

460:                                              ; preds = %453
  %461 = load ptr, ptr %10, align 8, !dbg !1045
  %462 = getelementptr inbounds nuw %struct.zzzz, ptr %461, i32 0, i32 0, !dbg !1047
  %463 = load ptr, ptr %462, align 8, !dbg !1047
  %464 = getelementptr inbounds i8, ptr %463, i64 0, !dbg !1045
  %465 = load i8, ptr %464, align 1, !dbg !1045
  %466 = sext i8 %465 to i32, !dbg !1045
  %467 = icmp eq i32 %466, 45, !dbg !1048
  br i1 %467, label %468, label %473, !dbg !1049

468:                                              ; preds = %460
  %469 = load i8, ptr %11, align 1, !dbg !1050
  %470 = zext i8 %469 to i32, !dbg !1050
  %471 = icmp ne i32 %470, 0, !dbg !1050
  br i1 %471, label %472, label %473, !dbg !1049

472:                                              ; preds = %468
  br label %479, !dbg !1051

473:                                              ; preds = %468, %460
  %474 = load i32, ptr @numFilesProcessed, align 4, !dbg !1052
  %475 = add nsw i32 %474, 1, !dbg !1052
  store i32 %475, ptr @numFilesProcessed, align 4, !dbg !1052
  %476 = load ptr, ptr %10, align 8, !dbg !1053
  %477 = getelementptr inbounds nuw %struct.zzzz, ptr %476, i32 0, i32 0, !dbg !1054
  %478 = load ptr, ptr %477, align 8, !dbg !1054
  call void @compress(ptr noundef %478), !dbg !1055
  br label %479, !dbg !1056

479:                                              ; preds = %473, %472, %459
  %480 = load ptr, ptr %10, align 8, !dbg !1057
  %481 = getelementptr inbounds nuw %struct.zzzz, ptr %480, i32 0, i32 1, !dbg !1058
  %482 = load ptr, ptr %481, align 8, !dbg !1058
  store ptr %482, ptr %10, align 8, !dbg !1059
  br label %450, !dbg !1060, !llvm.loop !1061

483:                                              ; preds = %450
  br label %484

484:                                              ; preds = %483, %447
  br label %588, !dbg !1063

485:                                              ; preds = %441
  %486 = load i32, ptr @opMode, align 4, !dbg !1064
  %487 = icmp eq i32 %486, 2, !dbg !1066
  br i1 %487, label %488, label %534, !dbg !1066

488:                                              ; preds = %485
  store i8 0, ptr @unzFailsExist, align 1, !dbg !1067
  %489 = load i32, ptr @srcMode, align 4, !dbg !1069
  %490 = icmp eq i32 %489, 1, !dbg !1071
  br i1 %490, label %491, label %492, !dbg !1071

491:                                              ; preds = %488
  call void @uncompress(ptr noundef null), !dbg !1072
  br label %528, !dbg !1074

492:                                              ; preds = %488
  store i8 1, ptr %11, align 1, !dbg !1075
  %493 = load ptr, ptr %9, align 8, !dbg !1077
  store ptr %493, ptr %10, align 8, !dbg !1079
  br label %494, !dbg !1080

494:                                              ; preds = %523, %492
  %495 = load ptr, ptr %10, align 8, !dbg !1081
  %496 = icmp ne ptr %495, null, !dbg !1083
  br i1 %496, label %497, label %527, !dbg !1084

497:                                              ; preds = %494
  %498 = load ptr, ptr %10, align 8, !dbg !1085
  %499 = getelementptr inbounds nuw %struct.zzzz, ptr %498, i32 0, i32 0, !dbg !1085
  %500 = load ptr, ptr %499, align 8, !dbg !1085
  %501 = call i32 @strcmp(ptr noundef %500, ptr noundef @.str.9) #11, !dbg !1085
  %502 = icmp eq i32 %501, 0, !dbg !1085
  br i1 %502, label %503, label %504, !dbg !1085

503:                                              ; preds = %497
  store i8 0, ptr %11, align 1, !dbg !1088
  br label %523, !dbg !1090

504:                                              ; preds = %497
  %505 = load ptr, ptr %10, align 8, !dbg !1091
  %506 = getelementptr inbounds nuw %struct.zzzz, ptr %505, i32 0, i32 0, !dbg !1093
  %507 = load ptr, ptr %506, align 8, !dbg !1093
  %508 = getelementptr inbounds i8, ptr %507, i64 0, !dbg !1091
  %509 = load i8, ptr %508, align 1, !dbg !1091
  %510 = sext i8 %509 to i32, !dbg !1091
  %511 = icmp eq i32 %510, 45, !dbg !1094
  br i1 %511, label %512, label %517, !dbg !1095

512:                                              ; preds = %504
  %513 = load i8, ptr %11, align 1, !dbg !1096
  %514 = zext i8 %513 to i32, !dbg !1096
  %515 = icmp ne i32 %514, 0, !dbg !1096
  br i1 %515, label %516, label %517, !dbg !1095

516:                                              ; preds = %512
  br label %523, !dbg !1097

517:                                              ; preds = %512, %504
  %518 = load i32, ptr @numFilesProcessed, align 4, !dbg !1098
  %519 = add nsw i32 %518, 1, !dbg !1098
  store i32 %519, ptr @numFilesProcessed, align 4, !dbg !1098
  %520 = load ptr, ptr %10, align 8, !dbg !1099
  %521 = getelementptr inbounds nuw %struct.zzzz, ptr %520, i32 0, i32 0, !dbg !1100
  %522 = load ptr, ptr %521, align 8, !dbg !1100
  call void @uncompress(ptr noundef %522), !dbg !1101
  br label %523, !dbg !1102

523:                                              ; preds = %517, %516, %503
  %524 = load ptr, ptr %10, align 8, !dbg !1103
  %525 = getelementptr inbounds nuw %struct.zzzz, ptr %524, i32 0, i32 1, !dbg !1104
  %526 = load ptr, ptr %525, align 8, !dbg !1104
  store ptr %526, ptr %10, align 8, !dbg !1105
  br label %494, !dbg !1106, !llvm.loop !1107

527:                                              ; preds = %494
  br label %528

528:                                              ; preds = %527, %491
  %529 = load i8, ptr @unzFailsExist, align 1, !dbg !1109
  %530 = icmp ne i8 %529, 0, !dbg !1109
  br i1 %530, label %531, label %533, !dbg !1109

531:                                              ; preds = %528
  call void @setExit(i32 noundef 2), !dbg !1111
  %532 = load i32, ptr @exitValue, align 4, !dbg !1113
  call void @exit(i32 noundef %532) #12, !dbg !1114
  unreachable, !dbg !1114

533:                                              ; preds = %528
  br label %587, !dbg !1115

534:                                              ; preds = %485
  store i8 0, ptr @testFailsExist, align 1, !dbg !1116
  %535 = load i32, ptr @srcMode, align 4, !dbg !1118
  %536 = icmp eq i32 %535, 1, !dbg !1120
  br i1 %536, label %537, label %538, !dbg !1120

537:                                              ; preds = %534
  call void @testf(ptr noundef null), !dbg !1121
  br label %574, !dbg !1123

538:                                              ; preds = %534
  store i8 1, ptr %11, align 1, !dbg !1124
  %539 = load ptr, ptr %9, align 8, !dbg !1126
  store ptr %539, ptr %10, align 8, !dbg !1128
  br label %540, !dbg !1129

540:                                              ; preds = %569, %538
  %541 = load ptr, ptr %10, align 8, !dbg !1130
  %542 = icmp ne ptr %541, null, !dbg !1132
  br i1 %542, label %543, label %573, !dbg !1133

543:                                              ; preds = %540
  %544 = load ptr, ptr %10, align 8, !dbg !1134
  %545 = getelementptr inbounds nuw %struct.zzzz, ptr %544, i32 0, i32 0, !dbg !1134
  %546 = load ptr, ptr %545, align 8, !dbg !1134
  %547 = call i32 @strcmp(ptr noundef %546, ptr noundef @.str.9) #11, !dbg !1134
  %548 = icmp eq i32 %547, 0, !dbg !1134
  br i1 %548, label %549, label %550, !dbg !1134

549:                                              ; preds = %543
  store i8 0, ptr %11, align 1, !dbg !1137
  br label %569, !dbg !1139

550:                                              ; preds = %543
  %551 = load ptr, ptr %10, align 8, !dbg !1140
  %552 = getelementptr inbounds nuw %struct.zzzz, ptr %551, i32 0, i32 0, !dbg !1142
  %553 = load ptr, ptr %552, align 8, !dbg !1142
  %554 = getelementptr inbounds i8, ptr %553, i64 0, !dbg !1140
  %555 = load i8, ptr %554, align 1, !dbg !1140
  %556 = sext i8 %555 to i32, !dbg !1140
  %557 = icmp eq i32 %556, 45, !dbg !1143
  br i1 %557, label %558, label %563, !dbg !1144

558:                                              ; preds = %550
  %559 = load i8, ptr %11, align 1, !dbg !1145
  %560 = zext i8 %559 to i32, !dbg !1145
  %561 = icmp ne i32 %560, 0, !dbg !1145
  br i1 %561, label %562, label %563, !dbg !1144

562:                                              ; preds = %558
  br label %569, !dbg !1146

563:                                              ; preds = %558, %550
  %564 = load i32, ptr @numFilesProcessed, align 4, !dbg !1147
  %565 = add nsw i32 %564, 1, !dbg !1147
  store i32 %565, ptr @numFilesProcessed, align 4, !dbg !1147
  %566 = load ptr, ptr %10, align 8, !dbg !1148
  %567 = getelementptr inbounds nuw %struct.zzzz, ptr %566, i32 0, i32 0, !dbg !1149
  %568 = load ptr, ptr %567, align 8, !dbg !1149
  call void @testf(ptr noundef %568), !dbg !1150
  br label %569, !dbg !1151

569:                                              ; preds = %563, %562, %549
  %570 = load ptr, ptr %10, align 8, !dbg !1152
  %571 = getelementptr inbounds nuw %struct.zzzz, ptr %570, i32 0, i32 1, !dbg !1153
  %572 = load ptr, ptr %571, align 8, !dbg !1153
  store ptr %572, ptr %10, align 8, !dbg !1154
  br label %540, !dbg !1155, !llvm.loop !1156

573:                                              ; preds = %540
  br label %574

574:                                              ; preds = %573, %537
  %575 = load i8, ptr @testFailsExist, align 1, !dbg !1158
  %576 = zext i8 %575 to i32, !dbg !1158
  %577 = icmp ne i32 %576, 0, !dbg !1158
  br i1 %577, label %578, label %586, !dbg !1160

578:                                              ; preds = %574
  %579 = load i8, ptr @noisy, align 1, !dbg !1161
  %580 = zext i8 %579 to i32, !dbg !1161
  %581 = icmp ne i32 %580, 0, !dbg !1161
  br i1 %581, label %582, label %586, !dbg !1160

582:                                              ; preds = %578
  %583 = load ptr, ptr @stderr, align 8, !dbg !1162
  %584 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %583, ptr noundef @.str.35) #10, !dbg !1164
  call void @setExit(i32 noundef 2), !dbg !1165
  %585 = load i32, ptr @exitValue, align 4, !dbg !1166
  call void @exit(i32 noundef %585) #12, !dbg !1167
  unreachable, !dbg !1167

586:                                              ; preds = %578, %574
  br label %587

587:                                              ; preds = %586, %533
  br label %588

588:                                              ; preds = %587, %484
  %589 = load ptr, ptr %9, align 8, !dbg !1168
  store ptr %589, ptr %10, align 8, !dbg !1169
  br label %590, !dbg !1170

590:                                              ; preds = %605, %588
  %591 = load ptr, ptr %10, align 8, !dbg !1171
  %592 = icmp ne ptr %591, null, !dbg !1172
  br i1 %592, label %593, label %608, !dbg !1170

593:                                              ; preds = %590
    #dbg_declare(ptr %12, !1173, !DIExpression(), !1175)
  %594 = load ptr, ptr %10, align 8, !dbg !1176
  %595 = getelementptr inbounds nuw %struct.zzzz, ptr %594, i32 0, i32 1, !dbg !1177
  %596 = load ptr, ptr %595, align 8, !dbg !1177
  store ptr %596, ptr %12, align 8, !dbg !1175
  %597 = load ptr, ptr %10, align 8, !dbg !1178
  %598 = getelementptr inbounds nuw %struct.zzzz, ptr %597, i32 0, i32 0, !dbg !1180
  %599 = load ptr, ptr %598, align 8, !dbg !1180
  %600 = icmp ne ptr %599, null, !dbg !1181
  br i1 %600, label %601, label %605, !dbg !1181

601:                                              ; preds = %593
  %602 = load ptr, ptr %10, align 8, !dbg !1182
  %603 = getelementptr inbounds nuw %struct.zzzz, ptr %602, i32 0, i32 0, !dbg !1183
  %604 = load ptr, ptr %603, align 8, !dbg !1183
  call void @free(ptr noundef %604) #10, !dbg !1184
  br label %605, !dbg !1184

605:                                              ; preds = %601, %593
  %606 = load ptr, ptr %10, align 8, !dbg !1185
  call void @free(ptr noundef %606) #10, !dbg !1186
  %607 = load ptr, ptr %12, align 8, !dbg !1187
  store ptr %607, ptr %10, align 8, !dbg !1188
  br label %590, !dbg !1170, !llvm.loop !1189

608:                                              ; preds = %590
  %609 = load i32, ptr @exitValue, align 4, !dbg !1191
  ret i32 %609, !dbg !1192
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32 noundef %0) #0 !dbg !1193 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !1196, !DIExpression(), !1197)
  %3 = load i32, ptr @opMode, align 4, !dbg !1198
  %4 = icmp eq i32 %3, 1, !dbg !1200
  br i1 %4, label %5, label %9, !dbg !1200

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !dbg !1201
  %7 = load ptr, ptr @progName, align 8, !dbg !1202
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.36, ptr noundef %7) #10, !dbg !1203
  br label %13, !dbg !1203

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !dbg !1204
  %11 = load ptr, ptr @progName, align 8, !dbg !1205
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.37, ptr noundef %11) #10, !dbg !1206
  br label %13

13:                                               ; preds = %9, %5
  call void @showFileNames(), !dbg !1207
  %14 = load i32, ptr @opMode, align 4, !dbg !1208
  %15 = icmp eq i32 %14, 1, !dbg !1210
  br i1 %15, label %16, label %17, !dbg !1210

16:                                               ; preds = %13
  call void @cleanUpAndFail(i32 noundef 3) #13, !dbg !1211
  unreachable, !dbg !1211

17:                                               ; preds = %13
  call void @cadvise(), !dbg !1212
  call void @cleanUpAndFail(i32 noundef 2) #13, !dbg !1214
  unreachable, !dbg !1214
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copyFileName(ptr noundef %0, ptr noundef %1) #0 !dbg !1215 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1218, !DIExpression(), !1219)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1220, !DIExpression(), !1221)
  %5 = load ptr, ptr %4, align 8, !dbg !1222
  %6 = call i64 @strlen(ptr noundef %5) #11, !dbg !1224
  %7 = icmp ugt i64 %6, 1024, !dbg !1225
  br i1 %7, label %8, label %13, !dbg !1225

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !dbg !1226
  %10 = load ptr, ptr %4, align 8, !dbg !1228
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.47, ptr noundef %10, i32 noundef 1024) #10, !dbg !1229
  call void @setExit(i32 noundef 1), !dbg !1230
  %12 = load i32, ptr @exitValue, align 4, !dbg !1231
  call void @exit(i32 noundef %12) #12, !dbg !1232
  unreachable, !dbg !1232

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8, !dbg !1233
  %15 = load ptr, ptr %4, align 8, !dbg !1234
  %16 = call ptr @strncpy(ptr noundef %14, ptr noundef %15, i64 noundef 1024) #10, !dbg !1235
  %17 = load ptr, ptr %3, align 8, !dbg !1236
  %18 = getelementptr inbounds i8, ptr %17, i64 1024, !dbg !1236
  store i8 0, ptr %18, align 1, !dbg !1237
  ret void, !dbg !1238
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addFlagsFromEnvVar(ptr noundef %0, ptr noundef %1) #0 !dbg !1239 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1243, !DIExpression(), !1244)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1245, !DIExpression(), !1246)
    #dbg_declare(ptr %5, !1247, !DIExpression(), !1248)
    #dbg_declare(ptr %6, !1249, !DIExpression(), !1250)
    #dbg_declare(ptr %7, !1251, !DIExpression(), !1252)
    #dbg_declare(ptr %8, !1253, !DIExpression(), !1254)
    #dbg_declare(ptr %9, !1255, !DIExpression(), !1256)
  %10 = load ptr, ptr %4, align 8, !dbg !1257
  %11 = call ptr @getenv(ptr noundef %10) #10, !dbg !1258
  store ptr %11, ptr %8, align 8, !dbg !1259
  %12 = load ptr, ptr %8, align 8, !dbg !1260
  %13 = icmp ne ptr %12, null, !dbg !1262
  br i1 %13, label %14, label %111, !dbg !1262

14:                                               ; preds = %2
  %15 = load ptr, ptr %8, align 8, !dbg !1263
  store ptr %15, ptr %9, align 8, !dbg !1265
  store i32 0, ptr %5, align 4, !dbg !1266
  br label %16, !dbg !1267

16:                                               ; preds = %14, %109
  %17 = load ptr, ptr %9, align 8, !dbg !1268
  %18 = load i32, ptr %5, align 4, !dbg !1271
  %19 = sext i32 %18 to i64, !dbg !1268
  %20 = getelementptr inbounds i8, ptr %17, i64 %19, !dbg !1268
  %21 = load i8, ptr %20, align 1, !dbg !1268
  %22 = sext i8 %21 to i32, !dbg !1268
  %23 = icmp eq i32 %22, 0, !dbg !1272
  br i1 %23, label %24, label %25, !dbg !1272

24:                                               ; preds = %16
  br label %110, !dbg !1273

25:                                               ; preds = %16
  %26 = load i32, ptr %5, align 4, !dbg !1274
  %27 = load ptr, ptr %9, align 8, !dbg !1275
  %28 = sext i32 %26 to i64, !dbg !1275
  %29 = getelementptr inbounds i8, ptr %27, i64 %28, !dbg !1275
  store ptr %29, ptr %9, align 8, !dbg !1275
  store i32 0, ptr %5, align 4, !dbg !1276
  br label %30, !dbg !1277

30:                                               ; preds = %43, %25
  %31 = call ptr @__ctype_b_loc() #14, !dbg !1278
  %32 = load ptr, ptr %31, align 8, !dbg !1278
  %33 = load ptr, ptr %9, align 8, !dbg !1278
  %34 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !1278
  %35 = load i8, ptr %34, align 1, !dbg !1278
  %36 = sext i8 %35 to i32, !dbg !1278
  %37 = sext i32 %36 to i64, !dbg !1278
  %38 = getelementptr inbounds i16, ptr %32, i64 %37, !dbg !1278
  %39 = load i16, ptr %38, align 2, !dbg !1278
  %40 = zext i16 %39 to i32, !dbg !1278
  %41 = and i32 %40, 8192, !dbg !1278
  %42 = icmp ne i32 %41, 0, !dbg !1277
  br i1 %42, label %43, label %46, !dbg !1277

43:                                               ; preds = %30
  %44 = load ptr, ptr %9, align 8, !dbg !1279
  %45 = getelementptr inbounds nuw i8, ptr %44, i32 1, !dbg !1279
  store ptr %45, ptr %9, align 8, !dbg !1279
  br label %30, !dbg !1277, !llvm.loop !1280

46:                                               ; preds = %30
  br label %47, !dbg !1281

47:                                               ; preds = %73, %46
  %48 = load ptr, ptr %9, align 8, !dbg !1282
  %49 = load i32, ptr %5, align 4, !dbg !1283
  %50 = sext i32 %49 to i64, !dbg !1282
  %51 = getelementptr inbounds i8, ptr %48, i64 %50, !dbg !1282
  %52 = load i8, ptr %51, align 1, !dbg !1282
  %53 = sext i8 %52 to i32, !dbg !1282
  %54 = icmp ne i32 %53, 0, !dbg !1284
  br i1 %54, label %55, label %71, !dbg !1285

55:                                               ; preds = %47
  %56 = call ptr @__ctype_b_loc() #14, !dbg !1286
  %57 = load ptr, ptr %56, align 8, !dbg !1286
  %58 = load ptr, ptr %9, align 8, !dbg !1286
  %59 = load i32, ptr %5, align 4, !dbg !1286
  %60 = sext i32 %59 to i64, !dbg !1286
  %61 = getelementptr inbounds i8, ptr %58, i64 %60, !dbg !1286
  %62 = load i8, ptr %61, align 1, !dbg !1286
  %63 = sext i8 %62 to i32, !dbg !1286
  %64 = sext i32 %63 to i64, !dbg !1286
  %65 = getelementptr inbounds i16, ptr %57, i64 %64, !dbg !1286
  %66 = load i16, ptr %65, align 2, !dbg !1286
  %67 = zext i16 %66 to i32, !dbg !1286
  %68 = and i32 %67, 8192, !dbg !1286
  %69 = icmp ne i32 %68, 0, !dbg !1287
  %70 = xor i1 %69, true, !dbg !1287
  br label %71

71:                                               ; preds = %55, %47
  %72 = phi i1 [ false, %47 ], [ %70, %55 ], !dbg !1288
  br i1 %72, label %73, label %76, !dbg !1281

73:                                               ; preds = %71
  %74 = load i32, ptr %5, align 4, !dbg !1289
  %75 = add nsw i32 %74, 1, !dbg !1289
  store i32 %75, ptr %5, align 4, !dbg !1289
  br label %47, !dbg !1281, !llvm.loop !1290

76:                                               ; preds = %71
  %77 = load i32, ptr %5, align 4, !dbg !1291
  %78 = icmp sgt i32 %77, 0, !dbg !1293
  br i1 %78, label %79, label %109, !dbg !1293

79:                                               ; preds = %76
  %80 = load i32, ptr %5, align 4, !dbg !1294
  store i32 %80, ptr %7, align 4, !dbg !1296
  %81 = load i32, ptr %7, align 4, !dbg !1297
  %82 = icmp sgt i32 %81, 1024, !dbg !1299
  br i1 %82, label %83, label %84, !dbg !1299

83:                                               ; preds = %79
  store i32 1024, ptr %7, align 4, !dbg !1300
  br label %84, !dbg !1301

84:                                               ; preds = %83, %79
  store i32 0, ptr %6, align 4, !dbg !1302
  br label %85, !dbg !1304

85:                                               ; preds = %98, %84
  %86 = load i32, ptr %6, align 4, !dbg !1305
  %87 = load i32, ptr %7, align 4, !dbg !1307
  %88 = icmp slt i32 %86, %87, !dbg !1308
  br i1 %88, label %89, label %101, !dbg !1309

89:                                               ; preds = %85
  %90 = load ptr, ptr %9, align 8, !dbg !1310
  %91 = load i32, ptr %6, align 4, !dbg !1311
  %92 = sext i32 %91 to i64, !dbg !1310
  %93 = getelementptr inbounds i8, ptr %90, i64 %92, !dbg !1310
  %94 = load i8, ptr %93, align 1, !dbg !1310
  %95 = load i32, ptr %6, align 4, !dbg !1312
  %96 = sext i32 %95 to i64, !dbg !1313
  %97 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %96, !dbg !1313
  store i8 %94, ptr %97, align 1, !dbg !1314
  br label %98, !dbg !1313

98:                                               ; preds = %89
  %99 = load i32, ptr %6, align 4, !dbg !1315
  %100 = add nsw i32 %99, 1, !dbg !1315
  store i32 %100, ptr %6, align 4, !dbg !1315
  br label %85, !dbg !1316, !llvm.loop !1317

101:                                              ; preds = %85
  %102 = load i32, ptr %7, align 4, !dbg !1319
  %103 = sext i32 %102 to i64, !dbg !1320
  %104 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %103, !dbg !1320
  store i8 0, ptr %104, align 1, !dbg !1321
  %105 = load ptr, ptr %3, align 8, !dbg !1322
  %106 = load ptr, ptr %105, align 8, !dbg !1322
  %107 = call ptr @snocString(ptr noundef %106, ptr noundef @tmpName), !dbg !1322
  %108 = load ptr, ptr %3, align 8, !dbg !1322
  store ptr %107, ptr %108, align 8, !dbg !1322
  br label %109, !dbg !1323

109:                                              ; preds = %101, %76
  br label %16, !dbg !1267, !llvm.loop !1324

110:                                              ; preds = %24
  br label %111, !dbg !1326

111:                                              ; preds = %110, %2
  ret void, !dbg !1327
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @snocString(ptr noundef %0, ptr noundef %1) #0 !dbg !1328 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1331, !DIExpression(), !1332)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1333, !DIExpression(), !1334)
  %8 = load ptr, ptr %4, align 8, !dbg !1335
  %9 = icmp eq ptr %8, null, !dbg !1337
  br i1 %9, label %10, label %25, !dbg !1337

10:                                               ; preds = %2
    #dbg_declare(ptr %6, !1338, !DIExpression(), !1340)
  %11 = call ptr @mkCell(), !dbg !1341
  store ptr %11, ptr %6, align 8, !dbg !1340
  %12 = load ptr, ptr %5, align 8, !dbg !1342
  %13 = call i64 @strlen(ptr noundef %12) #11, !dbg !1343
  %14 = add i64 5, %13, !dbg !1344
  %15 = trunc i64 %14 to i32, !dbg !1345
  %16 = call ptr @myMalloc(i32 noundef %15), !dbg !1346
  %17 = load ptr, ptr %6, align 8, !dbg !1347
  %18 = getelementptr inbounds nuw %struct.zzzz, ptr %17, i32 0, i32 0, !dbg !1348
  store ptr %16, ptr %18, align 8, !dbg !1349
  %19 = load ptr, ptr %6, align 8, !dbg !1350
  %20 = getelementptr inbounds nuw %struct.zzzz, ptr %19, i32 0, i32 0, !dbg !1351
  %21 = load ptr, ptr %20, align 8, !dbg !1351
  %22 = load ptr, ptr %5, align 8, !dbg !1352
  %23 = call ptr @strcpy(ptr noundef %21, ptr noundef %22) #10, !dbg !1353
  %24 = load ptr, ptr %6, align 8, !dbg !1354
  store ptr %24, ptr %3, align 8, !dbg !1355
  br label %45, !dbg !1355

25:                                               ; preds = %2
    #dbg_declare(ptr %7, !1356, !DIExpression(), !1358)
  %26 = load ptr, ptr %4, align 8, !dbg !1359
  store ptr %26, ptr %7, align 8, !dbg !1358
  br label %27, !dbg !1360

27:                                               ; preds = %32, %25
  %28 = load ptr, ptr %7, align 8, !dbg !1361
  %29 = getelementptr inbounds nuw %struct.zzzz, ptr %28, i32 0, i32 1, !dbg !1362
  %30 = load ptr, ptr %29, align 8, !dbg !1362
  %31 = icmp ne ptr %30, null, !dbg !1363
  br i1 %31, label %32, label %36, !dbg !1360

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !dbg !1364
  %34 = getelementptr inbounds nuw %struct.zzzz, ptr %33, i32 0, i32 1, !dbg !1365
  %35 = load ptr, ptr %34, align 8, !dbg !1365
  store ptr %35, ptr %7, align 8, !dbg !1366
  br label %27, !dbg !1360, !llvm.loop !1367

36:                                               ; preds = %27
  %37 = load ptr, ptr %7, align 8, !dbg !1368
  %38 = getelementptr inbounds nuw %struct.zzzz, ptr %37, i32 0, i32 1, !dbg !1369
  %39 = load ptr, ptr %38, align 8, !dbg !1369
  %40 = load ptr, ptr %5, align 8, !dbg !1370
  %41 = call ptr @snocString(ptr noundef %39, ptr noundef %40), !dbg !1371
  %42 = load ptr, ptr %7, align 8, !dbg !1372
  %43 = getelementptr inbounds nuw %struct.zzzz, ptr %42, i32 0, i32 1, !dbg !1373
  store ptr %41, ptr %43, align 8, !dbg !1374
  %44 = load ptr, ptr %4, align 8, !dbg !1375
  store ptr %44, ptr %3, align 8, !dbg !1376
  br label %45, !dbg !1376

45:                                               ; preds = %36, %10
  %46 = load ptr, ptr %3, align 8, !dbg !1377
  ret ptr %46, !dbg !1377
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @license() #0 !dbg !1378 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !1381
  %2 = call ptr @BZ2_bzlibVersion(), !dbg !1382
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.49, ptr noundef %2) #10, !dbg !1383
  ret void, !dbg !1384
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(ptr noundef %0) #0 !dbg !1385 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1388, !DIExpression(), !1389)
  %3 = load ptr, ptr @stderr, align 8, !dbg !1390
  %4 = call ptr @BZ2_bzlibVersion(), !dbg !1391
  %5 = load ptr, ptr %2, align 8, !dbg !1392
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.50, ptr noundef %4, ptr noundef %5) #10, !dbg !1393
  ret void, !dbg !1394
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redundant(ptr noundef %0) #0 !dbg !1395 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1396, !DIExpression(), !1397)
  %3 = load ptr, ptr @stderr, align 8, !dbg !1398
  %4 = load ptr, ptr @progName, align 8, !dbg !1399
  %5 = load ptr, ptr %2, align 8, !dbg !1400
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.51, ptr noundef %4, ptr noundef %5) #10, !dbg !1401
  ret void, !dbg !1402
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mySignalCatcher(i32 noundef %0) #0 !dbg !1403 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !1404, !DIExpression(), !1405)
  %3 = load ptr, ptr @stderr, align 8, !dbg !1406
  %4 = load ptr, ptr @progName, align 8, !dbg !1407
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.52, ptr noundef %4) #10, !dbg !1408
  call void @cleanUpAndFail(i32 noundef 1) #13, !dbg !1409
  unreachable, !dbg !1409
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress(ptr noundef %0) #0 !dbg !1410 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1411, !DIExpression(), !1412)
    #dbg_declare(ptr %3, !1413, !DIExpression(), !1414)
    #dbg_declare(ptr %4, !1415, !DIExpression(), !1416)
    #dbg_declare(ptr %5, !1417, !DIExpression(), !1418)
    #dbg_declare(ptr %6, !1419, !DIExpression(), !1420)
    #dbg_declare(ptr %7, !1421, !DIExpression(), !1422)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1423
  %9 = load ptr, ptr %2, align 8, !dbg !1424
  %10 = icmp eq ptr %9, null, !dbg !1426
  br i1 %10, label %11, label %15, !dbg !1427

11:                                               ; preds = %1
  %12 = load i32, ptr @srcMode, align 4, !dbg !1428
  %13 = icmp ne i32 %12, 1, !dbg !1429
  br i1 %13, label %14, label %15, !dbg !1427

14:                                               ; preds = %11
  call void @panic(ptr noundef @.str.53) #13, !dbg !1430
  unreachable, !dbg !1430

15:                                               ; preds = %11, %1
  %16 = load i32, ptr @srcMode, align 4, !dbg !1431
  switch i32 %16, label %24 [
    i32 1, label %17
    i32 3, label %18
    i32 2, label %22
  ], !dbg !1432

17:                                               ; preds = %15
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54), !dbg !1433
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1435
  br label %24, !dbg !1436

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !dbg !1437
  call void @copyFileName(ptr noundef @inName, ptr noundef %19), !dbg !1438
  %20 = load ptr, ptr %2, align 8, !dbg !1439
  call void @copyFileName(ptr noundef @outName, ptr noundef %20), !dbg !1440
  %21 = call ptr @strcat(ptr noundef @outName, ptr noundef @.str) #10, !dbg !1441
  br label %24, !dbg !1442

22:                                               ; preds = %15
  %23 = load ptr, ptr %2, align 8, !dbg !1443
  call void @copyFileName(ptr noundef @inName, ptr noundef %23), !dbg !1444
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1445
  br label %24, !dbg !1446

24:                                               ; preds = %15, %22, %18, %17
  %25 = load i32, ptr @srcMode, align 4, !dbg !1447
  %26 = icmp ne i32 %25, 1, !dbg !1449
  br i1 %26, label %27, label %39, !dbg !1450

27:                                               ; preds = %24
  %28 = call zeroext i8 @containsDubiousChars(ptr noundef @inName), !dbg !1451
  %29 = zext i8 %28 to i32, !dbg !1451
  %30 = icmp ne i32 %29, 0, !dbg !1451
  br i1 %30, label %31, label %39, !dbg !1450

31:                                               ; preds = %27
  %32 = load i8, ptr @noisy, align 1, !dbg !1452
  %33 = icmp ne i8 %32, 0, !dbg !1452
  br i1 %33, label %34, label %38, !dbg !1452

34:                                               ; preds = %31
  %35 = load ptr, ptr @stderr, align 8, !dbg !1455
  %36 = load ptr, ptr @progName, align 8, !dbg !1456
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.56, ptr noundef %36, ptr noundef @inName) #10, !dbg !1457
  br label %38, !dbg !1457

38:                                               ; preds = %34, %31
  call void @setExit(i32 noundef 1), !dbg !1458
  br label %264, !dbg !1459

39:                                               ; preds = %27, %24
  %40 = load i32, ptr @srcMode, align 4, !dbg !1460
  %41 = icmp ne i32 %40, 1, !dbg !1462
  br i1 %41, label %42, label %52, !dbg !1463

42:                                               ; preds = %39
  %43 = call zeroext i8 @fileExists(ptr noundef @inName), !dbg !1464
  %44 = icmp ne i8 %43, 0, !dbg !1464
  br i1 %44, label %52, label %45, !dbg !1463

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8, !dbg !1465
  %47 = load ptr, ptr @progName, align 8, !dbg !1467
  %48 = call ptr @__errno_location() #14, !dbg !1468
  %49 = load i32, ptr %48, align 4, !dbg !1468
  %50 = call ptr @strerror(i32 noundef %49) #10, !dbg !1469
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.57, ptr noundef %47, ptr noundef @inName, ptr noundef %50) #10, !dbg !1470
  call void @setExit(i32 noundef 1), !dbg !1471
  br label %264, !dbg !1472

52:                                               ; preds = %42, %39
  store i32 0, ptr %6, align 4, !dbg !1473
  br label %53, !dbg !1475

53:                                               ; preds = %76, %52
  %54 = load i32, ptr %6, align 4, !dbg !1476
  %55 = icmp slt i32 %54, 4, !dbg !1478
  br i1 %55, label %56, label %79, !dbg !1479

56:                                               ; preds = %53
  %57 = load i32, ptr %6, align 4, !dbg !1480
  %58 = sext i32 %57 to i64, !dbg !1483
  %59 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %58, !dbg !1483
  %60 = load ptr, ptr %59, align 8, !dbg !1483
  %61 = call zeroext i8 @hasSuffix(ptr noundef @inName, ptr noundef %60), !dbg !1484
  %62 = icmp ne i8 %61, 0, !dbg !1484
  br i1 %62, label %63, label %75, !dbg !1484

63:                                               ; preds = %56
  %64 = load i8, ptr @noisy, align 1, !dbg !1485
  %65 = icmp ne i8 %64, 0, !dbg !1485
  br i1 %65, label %66, label %74, !dbg !1485

66:                                               ; preds = %63
  %67 = load ptr, ptr @stderr, align 8, !dbg !1488
  %68 = load ptr, ptr @progName, align 8, !dbg !1489
  %69 = load i32, ptr %6, align 4, !dbg !1490
  %70 = sext i32 %69 to i64, !dbg !1491
  %71 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %70, !dbg !1491
  %72 = load ptr, ptr %71, align 8, !dbg !1491
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.58, ptr noundef %68, ptr noundef @inName, ptr noundef %72) #10, !dbg !1492
  br label %74, !dbg !1492

74:                                               ; preds = %66, %63
  call void @setExit(i32 noundef 1), !dbg !1493
  br label %264, !dbg !1494

75:                                               ; preds = %56
  br label %76, !dbg !1495

76:                                               ; preds = %75
  %77 = load i32, ptr %6, align 4, !dbg !1496
  %78 = add nsw i32 %77, 1, !dbg !1496
  store i32 %78, ptr %6, align 4, !dbg !1496
  br label %53, !dbg !1497, !llvm.loop !1498

79:                                               ; preds = %53
  %80 = load i32, ptr @srcMode, align 4, !dbg !1500
  %81 = icmp eq i32 %80, 3, !dbg !1502
  br i1 %81, label %85, label %82, !dbg !1503

82:                                               ; preds = %79
  %83 = load i32, ptr @srcMode, align 4, !dbg !1504
  %84 = icmp eq i32 %83, 2, !dbg !1505
  br i1 %84, label %85, label %96, !dbg !1503

85:                                               ; preds = %82, %79
  %86 = call i32 @stat(ptr noundef @inName, ptr noundef %7) #10, !dbg !1506
  %87 = getelementptr inbounds nuw %struct.stat, ptr %7, i32 0, i32 3, !dbg !1508
  %88 = load i32, ptr %87, align 8, !dbg !1508
  %89 = and i32 %88, 61440, !dbg !1508
  %90 = icmp eq i32 %89, 16384, !dbg !1508
  br i1 %90, label %91, label %95, !dbg !1508

91:                                               ; preds = %85
  %92 = load ptr, ptr @stderr, align 8, !dbg !1510
  %93 = load ptr, ptr @progName, align 8, !dbg !1512
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.59, ptr noundef %93, ptr noundef @inName) #10, !dbg !1513
  call void @setExit(i32 noundef 1), !dbg !1514
  br label %264, !dbg !1515

95:                                               ; preds = %85
  br label %96, !dbg !1516

96:                                               ; preds = %95, %82
  %97 = load i32, ptr @srcMode, align 4, !dbg !1517
  %98 = icmp eq i32 %97, 3, !dbg !1519
  br i1 %98, label %99, label %114, !dbg !1520

99:                                               ; preds = %96
  %100 = load i8, ptr @forceOverwrite, align 1, !dbg !1521
  %101 = icmp ne i8 %100, 0, !dbg !1521
  br i1 %101, label %114, label %102, !dbg !1522

102:                                              ; preds = %99
  %103 = call zeroext i8 @notAStandardFile(ptr noundef @inName), !dbg !1523
  %104 = zext i8 %103 to i32, !dbg !1523
  %105 = icmp ne i32 %104, 0, !dbg !1523
  br i1 %105, label %106, label %114, !dbg !1522

106:                                              ; preds = %102
  %107 = load i8, ptr @noisy, align 1, !dbg !1524
  %108 = icmp ne i8 %107, 0, !dbg !1524
  br i1 %108, label %109, label %113, !dbg !1524

109:                                              ; preds = %106
  %110 = load ptr, ptr @stderr, align 8, !dbg !1527
  %111 = load ptr, ptr @progName, align 8, !dbg !1528
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str.60, ptr noundef %111, ptr noundef @inName) #10, !dbg !1529
  br label %113, !dbg !1529

113:                                              ; preds = %109, %106
  call void @setExit(i32 noundef 1), !dbg !1530
  br label %264, !dbg !1531

114:                                              ; preds = %102, %99, %96
  %115 = load i32, ptr @srcMode, align 4, !dbg !1532
  %116 = icmp eq i32 %115, 3, !dbg !1534
  br i1 %116, label %117, label %131, !dbg !1535

117:                                              ; preds = %114
  %118 = call zeroext i8 @fileExists(ptr noundef @outName), !dbg !1536
  %119 = zext i8 %118 to i32, !dbg !1536
  %120 = icmp ne i32 %119, 0, !dbg !1536
  br i1 %120, label %121, label %131, !dbg !1535

121:                                              ; preds = %117
  %122 = load i8, ptr @forceOverwrite, align 1, !dbg !1537
  %123 = icmp ne i8 %122, 0, !dbg !1537
  br i1 %123, label %124, label %126, !dbg !1537

124:                                              ; preds = %121
  %125 = call i32 @remove(ptr noundef @outName) #10, !dbg !1540
  br label %130, !dbg !1542

126:                                              ; preds = %121
  %127 = load ptr, ptr @stderr, align 8, !dbg !1543
  %128 = load ptr, ptr @progName, align 8, !dbg !1545
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.61, ptr noundef %128, ptr noundef @outName) #10, !dbg !1546
  call void @setExit(i32 noundef 1), !dbg !1547
  br label %264, !dbg !1548

130:                                              ; preds = %124
  br label %131, !dbg !1549

131:                                              ; preds = %130, %117, %114
  %132 = load i32, ptr @srcMode, align 4, !dbg !1550
  %133 = icmp eq i32 %132, 3, !dbg !1552
  br i1 %133, label %134, label %149, !dbg !1553

134:                                              ; preds = %131
  %135 = load i8, ptr @forceOverwrite, align 1, !dbg !1554
  %136 = icmp ne i8 %135, 0, !dbg !1554
  br i1 %136, label %149, label %137, !dbg !1555

137:                                              ; preds = %134
  %138 = call i32 @countHardLinks(ptr noundef @inName), !dbg !1556
  store i32 %138, ptr %5, align 4, !dbg !1557
  %139 = icmp sgt i32 %138, 0, !dbg !1558
  br i1 %139, label %140, label %149, !dbg !1555

140:                                              ; preds = %137
  %141 = load ptr, ptr @stderr, align 8, !dbg !1559
  %142 = load ptr, ptr @progName, align 8, !dbg !1561
  %143 = load i32, ptr %5, align 4, !dbg !1562
  %144 = load i32, ptr %5, align 4, !dbg !1563
  %145 = icmp sgt i32 %144, 1, !dbg !1564
  %146 = zext i1 %145 to i64, !dbg !1563
  %147 = select i1 %145, ptr @.str.63, ptr @.str.4, !dbg !1563
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.62, ptr noundef %142, ptr noundef @inName, i32 noundef %143, ptr noundef %147) #10, !dbg !1565
  call void @setExit(i32 noundef 1), !dbg !1566
  br label %264, !dbg !1567

149:                                              ; preds = %137, %134, %131
  %150 = load i32, ptr @srcMode, align 4, !dbg !1568
  %151 = icmp eq i32 %150, 3, !dbg !1570
  br i1 %151, label %152, label %153, !dbg !1570

152:                                              ; preds = %149
  call void @saveInputFileMetaInfo(ptr noundef @inName), !dbg !1571
  br label %153, !dbg !1573

153:                                              ; preds = %152, %149
  %154 = load i32, ptr @srcMode, align 4, !dbg !1574
  switch i32 %154, label %238 [
    i32 1, label %155
    i32 2, label %171
    i32 3, label %203
  ], !dbg !1575

155:                                              ; preds = %153
  %156 = load ptr, ptr @stdin, align 8, !dbg !1576
  store ptr %156, ptr %3, align 8, !dbg !1578
  %157 = load ptr, ptr @stdout, align 8, !dbg !1579
  store ptr %157, ptr %4, align 8, !dbg !1580
  %158 = load ptr, ptr @stdout, align 8, !dbg !1581
  %159 = call i32 @fileno(ptr noundef %158) #10, !dbg !1583
  %160 = call i32 @isatty(i32 noundef %159) #10, !dbg !1584
  %161 = icmp ne i32 %160, 0, !dbg !1584
  br i1 %161, label %162, label %170, !dbg !1584

162:                                              ; preds = %155
  %163 = load ptr, ptr @stderr, align 8, !dbg !1585
  %164 = load ptr, ptr @progName, align 8, !dbg !1587
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.64, ptr noundef %164) #10, !dbg !1588
  %166 = load ptr, ptr @stderr, align 8, !dbg !1589
  %167 = load ptr, ptr @progName, align 8, !dbg !1590
  %168 = load ptr, ptr @progName, align 8, !dbg !1591
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.65, ptr noundef %167, ptr noundef %168) #10, !dbg !1592
  call void @setExit(i32 noundef 1), !dbg !1593
  br label %264, !dbg !1594

170:                                              ; preds = %155
  br label %239, !dbg !1595

171:                                              ; preds = %153
  %172 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1596
  store ptr %172, ptr %3, align 8, !dbg !1597
  %173 = load ptr, ptr @stdout, align 8, !dbg !1598
  store ptr %173, ptr %4, align 8, !dbg !1599
  %174 = load ptr, ptr @stdout, align 8, !dbg !1600
  %175 = call i32 @fileno(ptr noundef %174) #10, !dbg !1602
  %176 = call i32 @isatty(i32 noundef %175) #10, !dbg !1603
  %177 = icmp ne i32 %176, 0, !dbg !1603
  br i1 %177, label %178, label %192, !dbg !1603

178:                                              ; preds = %171
  %179 = load ptr, ptr @stderr, align 8, !dbg !1604
  %180 = load ptr, ptr @progName, align 8, !dbg !1606
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef @.str.64, ptr noundef %180) #10, !dbg !1607
  %182 = load ptr, ptr @stderr, align 8, !dbg !1608
  %183 = load ptr, ptr @progName, align 8, !dbg !1609
  %184 = load ptr, ptr @progName, align 8, !dbg !1610
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef @.str.65, ptr noundef %183, ptr noundef %184) #10, !dbg !1611
  %186 = load ptr, ptr %3, align 8, !dbg !1612
  %187 = icmp ne ptr %186, null, !dbg !1614
  br i1 %187, label %188, label %191, !dbg !1614

188:                                              ; preds = %178
  %189 = load ptr, ptr %3, align 8, !dbg !1615
  %190 = call i32 @fclose(ptr noundef %189), !dbg !1616
  br label %191, !dbg !1616

191:                                              ; preds = %188, %178
  call void @setExit(i32 noundef 1), !dbg !1617
  br label %264, !dbg !1618

192:                                              ; preds = %171
  %193 = load ptr, ptr %3, align 8, !dbg !1619
  %194 = icmp eq ptr %193, null, !dbg !1621
  br i1 %194, label %195, label %202, !dbg !1621

195:                                              ; preds = %192
  %196 = load ptr, ptr @stderr, align 8, !dbg !1622
  %197 = load ptr, ptr @progName, align 8, !dbg !1624
  %198 = call ptr @__errno_location() #14, !dbg !1625
  %199 = load i32, ptr %198, align 4, !dbg !1625
  %200 = call ptr @strerror(i32 noundef %199) #10, !dbg !1626
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef @.str.57, ptr noundef %197, ptr noundef @inName, ptr noundef %200) #10, !dbg !1627
  call void @setExit(i32 noundef 1), !dbg !1628
  br label %264, !dbg !1629

202:                                              ; preds = %192
  br label %239, !dbg !1630

203:                                              ; preds = %153
  %204 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1631
  store ptr %204, ptr %3, align 8, !dbg !1632
  %205 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.67), !dbg !1633
  store ptr %205, ptr %4, align 8, !dbg !1634
  %206 = load ptr, ptr %4, align 8, !dbg !1635
  %207 = icmp eq ptr %206, null, !dbg !1637
  br i1 %207, label %208, label %221, !dbg !1637

208:                                              ; preds = %203
  %209 = load ptr, ptr @stderr, align 8, !dbg !1638
  %210 = load ptr, ptr @progName, align 8, !dbg !1640
  %211 = call ptr @__errno_location() #14, !dbg !1641
  %212 = load i32, ptr %211, align 4, !dbg !1641
  %213 = call ptr @strerror(i32 noundef %212) #10, !dbg !1642
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef @.str.68, ptr noundef %210, ptr noundef @outName, ptr noundef %213) #10, !dbg !1643
  %215 = load ptr, ptr %3, align 8, !dbg !1644
  %216 = icmp ne ptr %215, null, !dbg !1646
  br i1 %216, label %217, label %220, !dbg !1646

217:                                              ; preds = %208
  %218 = load ptr, ptr %3, align 8, !dbg !1647
  %219 = call i32 @fclose(ptr noundef %218), !dbg !1648
  br label %220, !dbg !1648

220:                                              ; preds = %217, %208
  call void @setExit(i32 noundef 1), !dbg !1649
  br label %264, !dbg !1650

221:                                              ; preds = %203
  %222 = load ptr, ptr %3, align 8, !dbg !1651
  %223 = icmp eq ptr %222, null, !dbg !1653
  br i1 %223, label %224, label %237, !dbg !1653

224:                                              ; preds = %221
  %225 = load ptr, ptr @stderr, align 8, !dbg !1654
  %226 = load ptr, ptr @progName, align 8, !dbg !1656
  %227 = call ptr @__errno_location() #14, !dbg !1657
  %228 = load i32, ptr %227, align 4, !dbg !1657
  %229 = call ptr @strerror(i32 noundef %228) #10, !dbg !1658
  %230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef @.str.57, ptr noundef %226, ptr noundef @inName, ptr noundef %229) #10, !dbg !1659
  %231 = load ptr, ptr %4, align 8, !dbg !1660
  %232 = icmp ne ptr %231, null, !dbg !1662
  br i1 %232, label %233, label %236, !dbg !1662

233:                                              ; preds = %224
  %234 = load ptr, ptr %4, align 8, !dbg !1663
  %235 = call i32 @fclose(ptr noundef %234), !dbg !1664
  br label %236, !dbg !1664

236:                                              ; preds = %233, %224
  call void @setExit(i32 noundef 1), !dbg !1665
  br label %264, !dbg !1666

237:                                              ; preds = %221
  br label %239, !dbg !1667

238:                                              ; preds = %153
  call void @panic(ptr noundef @.str.69) #13, !dbg !1668
  unreachable, !dbg !1668

239:                                              ; preds = %237, %202, %170
  %240 = load i32, ptr @verbosity, align 4, !dbg !1669
  %241 = icmp sge i32 %240, 1, !dbg !1671
  br i1 %241, label %242, label %247, !dbg !1671

242:                                              ; preds = %239
  %243 = load ptr, ptr @stderr, align 8, !dbg !1672
  %244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef @.str.70, ptr noundef @inName) #10, !dbg !1674
  call void @pad(ptr noundef @inName), !dbg !1675
  %245 = load ptr, ptr @stderr, align 8, !dbg !1676
  %246 = call i32 @fflush(ptr noundef %245), !dbg !1677
  br label %247, !dbg !1678

247:                                              ; preds = %242, %239
  %248 = load ptr, ptr %4, align 8, !dbg !1679
  store ptr %248, ptr @outputHandleJustInCase, align 8, !dbg !1680
  store i8 1, ptr @deleteOutputOnInterrupt, align 1, !dbg !1681
  %249 = load ptr, ptr %3, align 8, !dbg !1682
  %250 = load ptr, ptr %4, align 8, !dbg !1683
  call void @compressStream(ptr noundef %249, ptr noundef %250), !dbg !1684
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !1685
  %251 = load i32, ptr @srcMode, align 4, !dbg !1686
  %252 = icmp eq i32 %251, 3, !dbg !1688
  br i1 %252, label %253, label %263, !dbg !1688

253:                                              ; preds = %247
  call void @applySavedMetaInfoToOutputFile(ptr noundef @outName), !dbg !1689
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1691
  %254 = load i8, ptr @keepInputFiles, align 1, !dbg !1692
  %255 = icmp ne i8 %254, 0, !dbg !1692
  br i1 %255, label %262, label %256, !dbg !1694

256:                                              ; preds = %253
    #dbg_declare(ptr %8, !1695, !DIExpression(), !1697)
  %257 = call i32 @remove(ptr noundef @inName) #10, !dbg !1698
  store i32 %257, ptr %8, align 4, !dbg !1697
  %258 = load i32, ptr %8, align 4, !dbg !1699
  %259 = icmp ne i32 %258, 0, !dbg !1699
  br i1 %259, label %260, label %261, !dbg !1699

260:                                              ; preds = %256
  call void @ioError() #13, !dbg !1699
  unreachable, !dbg !1699

261:                                              ; preds = %256
  br label %262, !dbg !1702

262:                                              ; preds = %261, %253
  br label %263, !dbg !1703

263:                                              ; preds = %262, %247
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1704
  br label %264, !dbg !1705

264:                                              ; preds = %263, %236, %220, %195, %191, %162, %140, %126, %113, %91, %74, %45, %38
  ret void, !dbg !1705
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncompress(ptr noundef %0) #0 !dbg !1706 {
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
    #dbg_declare(ptr %2, !1707, !DIExpression(), !1708)
    #dbg_declare(ptr %3, !1709, !DIExpression(), !1710)
    #dbg_declare(ptr %4, !1711, !DIExpression(), !1712)
    #dbg_declare(ptr %5, !1713, !DIExpression(), !1714)
    #dbg_declare(ptr %6, !1715, !DIExpression(), !1716)
    #dbg_declare(ptr %7, !1717, !DIExpression(), !1718)
    #dbg_declare(ptr %8, !1719, !DIExpression(), !1720)
    #dbg_declare(ptr %9, !1721, !DIExpression(), !1722)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1723
  %12 = load ptr, ptr %2, align 8, !dbg !1724
  %13 = icmp eq ptr %12, null, !dbg !1726
  br i1 %13, label %14, label %18, !dbg !1727

14:                                               ; preds = %1
  %15 = load i32, ptr @srcMode, align 4, !dbg !1728
  %16 = icmp ne i32 %15, 1, !dbg !1729
  br i1 %16, label %17, label %18, !dbg !1727

17:                                               ; preds = %14
  call void @panic(ptr noundef @.str.79) #13, !dbg !1730
  unreachable, !dbg !1730

18:                                               ; preds = %14, %1
  store i8 0, ptr %8, align 1, !dbg !1731
  %19 = load i32, ptr @srcMode, align 4, !dbg !1732
  switch i32 %19, label %47 [
    i32 1, label %20
    i32 3, label %21
    i32 2, label %45
  ], !dbg !1733

20:                                               ; preds = %18
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54), !dbg !1734
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1736
  br label %47, !dbg !1737

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 8, !dbg !1738
  call void @copyFileName(ptr noundef @inName, ptr noundef %22), !dbg !1739
  %23 = load ptr, ptr %2, align 8, !dbg !1740
  call void @copyFileName(ptr noundef @outName, ptr noundef %23), !dbg !1741
  store i32 0, ptr %6, align 4, !dbg !1742
  br label %24, !dbg !1744

24:                                               ; preds = %40, %21
  %25 = load i32, ptr %6, align 4, !dbg !1745
  %26 = icmp slt i32 %25, 4, !dbg !1747
  br i1 %26, label %27, label %43, !dbg !1748

27:                                               ; preds = %24
  %28 = load i32, ptr %6, align 4, !dbg !1749
  %29 = sext i32 %28 to i64, !dbg !1751
  %30 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %29, !dbg !1751
  %31 = load ptr, ptr %30, align 8, !dbg !1751
  %32 = load i32, ptr %6, align 4, !dbg !1752
  %33 = sext i32 %32 to i64, !dbg !1753
  %34 = getelementptr inbounds [4 x ptr], ptr @unzSuffix, i64 0, i64 %33, !dbg !1753
  %35 = load ptr, ptr %34, align 8, !dbg !1753
  %36 = call zeroext i8 @mapSuffix(ptr noundef @outName, ptr noundef %31, ptr noundef %35), !dbg !1754
  %37 = icmp ne i8 %36, 0, !dbg !1754
  br i1 %37, label %38, label %39, !dbg !1754

38:                                               ; preds = %27
  br label %48, !dbg !1755

39:                                               ; preds = %27
  br label %40, !dbg !1756

40:                                               ; preds = %39
  %41 = load i32, ptr %6, align 4, !dbg !1757
  %42 = add nsw i32 %41, 1, !dbg !1757
  store i32 %42, ptr %6, align 4, !dbg !1757
  br label %24, !dbg !1758, !llvm.loop !1759

43:                                               ; preds = %24
  store i8 1, ptr %8, align 1, !dbg !1761
  %44 = call ptr @strcat(ptr noundef @outName, ptr noundef @.str.80) #10, !dbg !1762
  br label %47, !dbg !1763

45:                                               ; preds = %18
  %46 = load ptr, ptr %2, align 8, !dbg !1764
  call void @copyFileName(ptr noundef @inName, ptr noundef %46), !dbg !1765
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1766
  br label %47, !dbg !1767

47:                                               ; preds = %18, %45, %43, %20
  br label %48, !dbg !1768

48:                                               ; preds = %47, %38
    #dbg_label(!1769, !1770)
  %49 = load i32, ptr @srcMode, align 4, !dbg !1771
  %50 = icmp ne i32 %49, 1, !dbg !1773
  br i1 %50, label %51, label %63, !dbg !1774

51:                                               ; preds = %48
  %52 = call zeroext i8 @containsDubiousChars(ptr noundef @inName), !dbg !1775
  %53 = zext i8 %52 to i32, !dbg !1775
  %54 = icmp ne i32 %53, 0, !dbg !1775
  br i1 %54, label %55, label %63, !dbg !1774

55:                                               ; preds = %51
  %56 = load i8, ptr @noisy, align 1, !dbg !1776
  %57 = icmp ne i8 %56, 0, !dbg !1776
  br i1 %57, label %58, label %62, !dbg !1776

58:                                               ; preds = %55
  %59 = load ptr, ptr @stderr, align 8, !dbg !1779
  %60 = load ptr, ptr @progName, align 8, !dbg !1780
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.56, ptr noundef %60, ptr noundef @inName) #10, !dbg !1781
  br label %62, !dbg !1781

62:                                               ; preds = %58, %55
  call void @setExit(i32 noundef 1), !dbg !1782
  br label %294, !dbg !1783

63:                                               ; preds = %51, %48
  %64 = load i32, ptr @srcMode, align 4, !dbg !1784
  %65 = icmp ne i32 %64, 1, !dbg !1786
  br i1 %65, label %66, label %76, !dbg !1787

66:                                               ; preds = %63
  %67 = call zeroext i8 @fileExists(ptr noundef @inName), !dbg !1788
  %68 = icmp ne i8 %67, 0, !dbg !1788
  br i1 %68, label %76, label %69, !dbg !1787

69:                                               ; preds = %66
  %70 = load ptr, ptr @stderr, align 8, !dbg !1789
  %71 = load ptr, ptr @progName, align 8, !dbg !1791
  %72 = call ptr @__errno_location() #14, !dbg !1792
  %73 = load i32, ptr %72, align 4, !dbg !1792
  %74 = call ptr @strerror(i32 noundef %73) #10, !dbg !1793
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.57, ptr noundef %71, ptr noundef @inName, ptr noundef %74) #10, !dbg !1794
  call void @setExit(i32 noundef 1), !dbg !1795
  br label %294, !dbg !1796

76:                                               ; preds = %66, %63
  %77 = load i32, ptr @srcMode, align 4, !dbg !1797
  %78 = icmp eq i32 %77, 3, !dbg !1799
  br i1 %78, label %82, label %79, !dbg !1800

79:                                               ; preds = %76
  %80 = load i32, ptr @srcMode, align 4, !dbg !1801
  %81 = icmp eq i32 %80, 2, !dbg !1802
  br i1 %81, label %82, label %93, !dbg !1800

82:                                               ; preds = %79, %76
  %83 = call i32 @stat(ptr noundef @inName, ptr noundef %9) #10, !dbg !1803
  %84 = getelementptr inbounds nuw %struct.stat, ptr %9, i32 0, i32 3, !dbg !1805
  %85 = load i32, ptr %84, align 8, !dbg !1805
  %86 = and i32 %85, 61440, !dbg !1805
  %87 = icmp eq i32 %86, 16384, !dbg !1805
  br i1 %87, label %88, label %92, !dbg !1805

88:                                               ; preds = %82
  %89 = load ptr, ptr @stderr, align 8, !dbg !1807
  %90 = load ptr, ptr @progName, align 8, !dbg !1809
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @.str.59, ptr noundef %90, ptr noundef @inName) #10, !dbg !1810
  call void @setExit(i32 noundef 1), !dbg !1811
  br label %294, !dbg !1812

92:                                               ; preds = %82
  br label %93, !dbg !1813

93:                                               ; preds = %92, %79
  %94 = load i32, ptr @srcMode, align 4, !dbg !1814
  %95 = icmp eq i32 %94, 3, !dbg !1816
  br i1 %95, label %96, label %111, !dbg !1817

96:                                               ; preds = %93
  %97 = load i8, ptr @forceOverwrite, align 1, !dbg !1818
  %98 = icmp ne i8 %97, 0, !dbg !1818
  br i1 %98, label %111, label %99, !dbg !1819

99:                                               ; preds = %96
  %100 = call zeroext i8 @notAStandardFile(ptr noundef @inName), !dbg !1820
  %101 = zext i8 %100 to i32, !dbg !1820
  %102 = icmp ne i32 %101, 0, !dbg !1820
  br i1 %102, label %103, label %111, !dbg !1819

103:                                              ; preds = %99
  %104 = load i8, ptr @noisy, align 1, !dbg !1821
  %105 = icmp ne i8 %104, 0, !dbg !1821
  br i1 %105, label %106, label %110, !dbg !1821

106:                                              ; preds = %103
  %107 = load ptr, ptr @stderr, align 8, !dbg !1824
  %108 = load ptr, ptr @progName, align 8, !dbg !1825
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef @.str.60, ptr noundef %108, ptr noundef @inName) #10, !dbg !1826
  br label %110, !dbg !1826

110:                                              ; preds = %106, %103
  call void @setExit(i32 noundef 1), !dbg !1827
  br label %294, !dbg !1828

111:                                              ; preds = %99, %96, %93
  %112 = load i8, ptr %8, align 1, !dbg !1829
  %113 = icmp ne i8 %112, 0, !dbg !1829
  br i1 %113, label %114, label %122, !dbg !1829

114:                                              ; preds = %111
  %115 = load i8, ptr @noisy, align 1, !dbg !1831
  %116 = icmp ne i8 %115, 0, !dbg !1831
  br i1 %116, label %117, label %121, !dbg !1831

117:                                              ; preds = %114
  %118 = load ptr, ptr @stderr, align 8, !dbg !1834
  %119 = load ptr, ptr @progName, align 8, !dbg !1835
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef @.str.81, ptr noundef %119, ptr noundef @inName, ptr noundef @outName) #10, !dbg !1836
  br label %121, !dbg !1836

121:                                              ; preds = %117, %114
  br label %122, !dbg !1837

122:                                              ; preds = %121, %111
  %123 = load i32, ptr @srcMode, align 4, !dbg !1838
  %124 = icmp eq i32 %123, 3, !dbg !1840
  br i1 %124, label %125, label %139, !dbg !1841

125:                                              ; preds = %122
  %126 = call zeroext i8 @fileExists(ptr noundef @outName), !dbg !1842
  %127 = zext i8 %126 to i32, !dbg !1842
  %128 = icmp ne i32 %127, 0, !dbg !1842
  br i1 %128, label %129, label %139, !dbg !1841

129:                                              ; preds = %125
  %130 = load i8, ptr @forceOverwrite, align 1, !dbg !1843
  %131 = icmp ne i8 %130, 0, !dbg !1843
  br i1 %131, label %132, label %134, !dbg !1843

132:                                              ; preds = %129
  %133 = call i32 @remove(ptr noundef @outName) #10, !dbg !1846
  br label %138, !dbg !1848

134:                                              ; preds = %129
  %135 = load ptr, ptr @stderr, align 8, !dbg !1849
  %136 = load ptr, ptr @progName, align 8, !dbg !1851
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.61, ptr noundef %136, ptr noundef @outName) #10, !dbg !1852
  call void @setExit(i32 noundef 1), !dbg !1853
  br label %294, !dbg !1854

138:                                              ; preds = %132
  br label %139, !dbg !1855

139:                                              ; preds = %138, %125, %122
  %140 = load i32, ptr @srcMode, align 4, !dbg !1856
  %141 = icmp eq i32 %140, 3, !dbg !1858
  br i1 %141, label %142, label %157, !dbg !1859

142:                                              ; preds = %139
  %143 = load i8, ptr @forceOverwrite, align 1, !dbg !1860
  %144 = icmp ne i8 %143, 0, !dbg !1860
  br i1 %144, label %157, label %145, !dbg !1861

145:                                              ; preds = %142
  %146 = call i32 @countHardLinks(ptr noundef @inName), !dbg !1862
  store i32 %146, ptr %5, align 4, !dbg !1863
  %147 = icmp sgt i32 %146, 0, !dbg !1864
  br i1 %147, label %148, label %157, !dbg !1861

148:                                              ; preds = %145
  %149 = load ptr, ptr @stderr, align 8, !dbg !1865
  %150 = load ptr, ptr @progName, align 8, !dbg !1867
  %151 = load i32, ptr %5, align 4, !dbg !1868
  %152 = load i32, ptr %5, align 4, !dbg !1869
  %153 = icmp sgt i32 %152, 1, !dbg !1870
  %154 = zext i1 %153 to i64, !dbg !1869
  %155 = select i1 %153, ptr @.str.63, ptr @.str.4, !dbg !1869
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef @.str.62, ptr noundef %150, ptr noundef @inName, i32 noundef %151, ptr noundef %155) #10, !dbg !1871
  call void @setExit(i32 noundef 1), !dbg !1872
  br label %294, !dbg !1873

157:                                              ; preds = %145, %142, %139
  %158 = load i32, ptr @srcMode, align 4, !dbg !1874
  %159 = icmp eq i32 %158, 3, !dbg !1876
  br i1 %159, label %160, label %161, !dbg !1876

160:                                              ; preds = %157
  call void @saveInputFileMetaInfo(ptr noundef @inName), !dbg !1877
  br label %161, !dbg !1879

161:                                              ; preds = %160, %157
  %162 = load i32, ptr @srcMode, align 4, !dbg !1880
  switch i32 %162, label %233 [
    i32 1, label %163
    i32 2, label %179
    i32 3, label %198
  ], !dbg !1881

163:                                              ; preds = %161
  %164 = load ptr, ptr @stdin, align 8, !dbg !1882
  store ptr %164, ptr %3, align 8, !dbg !1884
  %165 = load ptr, ptr @stdout, align 8, !dbg !1885
  store ptr %165, ptr %4, align 8, !dbg !1886
  %166 = load ptr, ptr @stdin, align 8, !dbg !1887
  %167 = call i32 @fileno(ptr noundef %166) #10, !dbg !1889
  %168 = call i32 @isatty(i32 noundef %167) #10, !dbg !1890
  %169 = icmp ne i32 %168, 0, !dbg !1890
  br i1 %169, label %170, label %178, !dbg !1890

170:                                              ; preds = %163
  %171 = load ptr, ptr @stderr, align 8, !dbg !1891
  %172 = load ptr, ptr @progName, align 8, !dbg !1893
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str.82, ptr noundef %172) #10, !dbg !1894
  %174 = load ptr, ptr @stderr, align 8, !dbg !1895
  %175 = load ptr, ptr @progName, align 8, !dbg !1896
  %176 = load ptr, ptr @progName, align 8, !dbg !1897
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef @.str.65, ptr noundef %175, ptr noundef %176) #10, !dbg !1898
  call void @setExit(i32 noundef 1), !dbg !1899
  br label %294, !dbg !1900

178:                                              ; preds = %163
  br label %234, !dbg !1901

179:                                              ; preds = %161
  %180 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1902
  store ptr %180, ptr %3, align 8, !dbg !1903
  %181 = load ptr, ptr @stdout, align 8, !dbg !1904
  store ptr %181, ptr %4, align 8, !dbg !1905
  %182 = load ptr, ptr %3, align 8, !dbg !1906
  %183 = icmp eq ptr %182, null, !dbg !1908
  br i1 %183, label %184, label %197, !dbg !1908

184:                                              ; preds = %179
  %185 = load ptr, ptr @stderr, align 8, !dbg !1909
  %186 = load ptr, ptr @progName, align 8, !dbg !1911
  %187 = call ptr @__errno_location() #14, !dbg !1912
  %188 = load i32, ptr %187, align 4, !dbg !1912
  %189 = call ptr @strerror(i32 noundef %188) #10, !dbg !1913
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.83, ptr noundef %186, ptr noundef @inName, ptr noundef %189) #10, !dbg !1914
  %191 = load ptr, ptr %3, align 8, !dbg !1915
  %192 = icmp ne ptr %191, null, !dbg !1917
  br i1 %192, label %193, label %196, !dbg !1917

193:                                              ; preds = %184
  %194 = load ptr, ptr %3, align 8, !dbg !1918
  %195 = call i32 @fclose(ptr noundef %194), !dbg !1919
  br label %196, !dbg !1919

196:                                              ; preds = %193, %184
  call void @setExit(i32 noundef 1), !dbg !1920
  br label %294, !dbg !1921

197:                                              ; preds = %179
  br label %234, !dbg !1922

198:                                              ; preds = %161
  %199 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1923
  store ptr %199, ptr %3, align 8, !dbg !1924
  %200 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.67), !dbg !1925
  store ptr %200, ptr %4, align 8, !dbg !1926
  %201 = load ptr, ptr %4, align 8, !dbg !1927
  %202 = icmp eq ptr %201, null, !dbg !1929
  br i1 %202, label %203, label %216, !dbg !1929

203:                                              ; preds = %198
  %204 = load ptr, ptr @stderr, align 8, !dbg !1930
  %205 = load ptr, ptr @progName, align 8, !dbg !1932
  %206 = call ptr @__errno_location() #14, !dbg !1933
  %207 = load i32, ptr %206, align 4, !dbg !1933
  %208 = call ptr @strerror(i32 noundef %207) #10, !dbg !1934
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef @.str.68, ptr noundef %205, ptr noundef @outName, ptr noundef %208) #10, !dbg !1935
  %210 = load ptr, ptr %3, align 8, !dbg !1936
  %211 = icmp ne ptr %210, null, !dbg !1938
  br i1 %211, label %212, label %215, !dbg !1938

212:                                              ; preds = %203
  %213 = load ptr, ptr %3, align 8, !dbg !1939
  %214 = call i32 @fclose(ptr noundef %213), !dbg !1940
  br label %215, !dbg !1940

215:                                              ; preds = %212, %203
  call void @setExit(i32 noundef 1), !dbg !1941
  br label %294, !dbg !1942

216:                                              ; preds = %198
  %217 = load ptr, ptr %3, align 8, !dbg !1943
  %218 = icmp eq ptr %217, null, !dbg !1945
  br i1 %218, label %219, label %232, !dbg !1945

219:                                              ; preds = %216
  %220 = load ptr, ptr @stderr, align 8, !dbg !1946
  %221 = load ptr, ptr @progName, align 8, !dbg !1948
  %222 = call ptr @__errno_location() #14, !dbg !1949
  %223 = load i32, ptr %222, align 4, !dbg !1949
  %224 = call ptr @strerror(i32 noundef %223) #10, !dbg !1950
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.57, ptr noundef %221, ptr noundef @inName, ptr noundef %224) #10, !dbg !1951
  %226 = load ptr, ptr %4, align 8, !dbg !1952
  %227 = icmp ne ptr %226, null, !dbg !1954
  br i1 %227, label %228, label %231, !dbg !1954

228:                                              ; preds = %219
  %229 = load ptr, ptr %4, align 8, !dbg !1955
  %230 = call i32 @fclose(ptr noundef %229), !dbg !1956
  br label %231, !dbg !1956

231:                                              ; preds = %228, %219
  call void @setExit(i32 noundef 1), !dbg !1957
  br label %294, !dbg !1958

232:                                              ; preds = %216
  br label %234, !dbg !1959

233:                                              ; preds = %161
  call void @panic(ptr noundef @.str.84) #13, !dbg !1960
  unreachable, !dbg !1960

234:                                              ; preds = %232, %197, %178
  %235 = load i32, ptr @verbosity, align 4, !dbg !1961
  %236 = icmp sge i32 %235, 1, !dbg !1963
  br i1 %236, label %237, label %242, !dbg !1963

237:                                              ; preds = %234
  %238 = load ptr, ptr @stderr, align 8, !dbg !1964
  %239 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef @.str.70, ptr noundef @inName) #10, !dbg !1966
  call void @pad(ptr noundef @inName), !dbg !1967
  %240 = load ptr, ptr @stderr, align 8, !dbg !1968
  %241 = call i32 @fflush(ptr noundef %240), !dbg !1969
  br label %242, !dbg !1970

242:                                              ; preds = %237, %234
  %243 = load ptr, ptr %4, align 8, !dbg !1971
  store ptr %243, ptr @outputHandleJustInCase, align 8, !dbg !1972
  store i8 1, ptr @deleteOutputOnInterrupt, align 1, !dbg !1973
  %244 = load ptr, ptr %3, align 8, !dbg !1974
  %245 = load ptr, ptr %4, align 8, !dbg !1975
  %246 = call zeroext i8 @uncompressStream(ptr noundef %244, ptr noundef %245), !dbg !1976
  store i8 %246, ptr %7, align 1, !dbg !1977
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !1978
  %247 = load i8, ptr %7, align 1, !dbg !1979
  %248 = icmp ne i8 %247, 0, !dbg !1979
  br i1 %248, label %249, label %263, !dbg !1979

249:                                              ; preds = %242
  %250 = load i32, ptr @srcMode, align 4, !dbg !1981
  %251 = icmp eq i32 %250, 3, !dbg !1984
  br i1 %251, label %252, label %262, !dbg !1984

252:                                              ; preds = %249
  call void @applySavedMetaInfoToOutputFile(ptr noundef @outName), !dbg !1985
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1987
  %253 = load i8, ptr @keepInputFiles, align 1, !dbg !1988
  %254 = icmp ne i8 %253, 0, !dbg !1988
  br i1 %254, label %261, label %255, !dbg !1990

255:                                              ; preds = %252
    #dbg_declare(ptr %10, !1991, !DIExpression(), !1993)
  %256 = call i32 @remove(ptr noundef @inName) #10, !dbg !1994
  store i32 %256, ptr %10, align 4, !dbg !1993
  %257 = load i32, ptr %10, align 4, !dbg !1995
  %258 = icmp ne i32 %257, 0, !dbg !1995
  br i1 %258, label %259, label %260, !dbg !1995

259:                                              ; preds = %255
  call void @ioError() #13, !dbg !1995
  unreachable, !dbg !1995

260:                                              ; preds = %255
  br label %261, !dbg !1998

261:                                              ; preds = %260, %252
  br label %262, !dbg !1999

262:                                              ; preds = %261, %249
  br label %273, !dbg !2000

263:                                              ; preds = %242
  store i8 1, ptr @unzFailsExist, align 1, !dbg !2001
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !2003
  %264 = load i32, ptr @srcMode, align 4, !dbg !2004
  %265 = icmp eq i32 %264, 3, !dbg !2006
  br i1 %265, label %266, label %272, !dbg !2006

266:                                              ; preds = %263
    #dbg_declare(ptr %11, !2007, !DIExpression(), !2009)
  %267 = call i32 @remove(ptr noundef @outName) #10, !dbg !2010
  store i32 %267, ptr %11, align 4, !dbg !2009
  %268 = load i32, ptr %11, align 4, !dbg !2011
  %269 = icmp ne i32 %268, 0, !dbg !2011
  br i1 %269, label %270, label %271, !dbg !2011

270:                                              ; preds = %266
  call void @ioError() #13, !dbg !2011
  unreachable, !dbg !2011

271:                                              ; preds = %266
  br label %272, !dbg !2014

272:                                              ; preds = %271, %263
  br label %273

273:                                              ; preds = %272, %262
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !2015
  %274 = load i8, ptr %7, align 1, !dbg !2016
  %275 = icmp ne i8 %274, 0, !dbg !2016
  br i1 %275, label %276, label %283, !dbg !2016

276:                                              ; preds = %273
  %277 = load i32, ptr @verbosity, align 4, !dbg !2018
  %278 = icmp sge i32 %277, 1, !dbg !2021
  br i1 %278, label %279, label %282, !dbg !2021

279:                                              ; preds = %276
  %280 = load ptr, ptr @stderr, align 8, !dbg !2022
  %281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef @.str.85) #10, !dbg !2023
  br label %282, !dbg !2023

282:                                              ; preds = %279, %276
  br label %294, !dbg !2024

283:                                              ; preds = %273
  call void @setExit(i32 noundef 2), !dbg !2025
  %284 = load i32, ptr @verbosity, align 4, !dbg !2027
  %285 = icmp sge i32 %284, 1, !dbg !2029
  br i1 %285, label %286, label %289, !dbg !2029

286:                                              ; preds = %283
  %287 = load ptr, ptr @stderr, align 8, !dbg !2030
  %288 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef @.str.86) #10, !dbg !2031
  br label %293, !dbg !2031

289:                                              ; preds = %283
  %290 = load ptr, ptr @stderr, align 8, !dbg !2032
  %291 = load ptr, ptr @progName, align 8, !dbg !2033
  %292 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %290, ptr noundef @.str.87, ptr noundef %291, ptr noundef @inName) #10, !dbg !2034
  br label %293

293:                                              ; preds = %289, %286
  br label %294

294:                                              ; preds = %62, %69, %88, %110, %134, %148, %170, %196, %215, %231, %293, %282
  ret void, !dbg !2035
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setExit(i32 noundef %0) #0 !dbg !2036 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !2039, !DIExpression(), !2040)
  %3 = load i32, ptr %2, align 4, !dbg !2041
  %4 = load i32, ptr @exitValue, align 4, !dbg !2043
  %5 = icmp sgt i32 %3, %4, !dbg !2044
  br i1 %5, label %6, label %8, !dbg !2044

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4, !dbg !2045
  store i32 %7, ptr @exitValue, align 4, !dbg !2046
  br label %8, !dbg !2047

8:                                                ; preds = %6, %1
  ret void, !dbg !2048
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testf(ptr noundef %0) #0 !dbg !2049 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2050, !DIExpression(), !2051)
    #dbg_declare(ptr %3, !2052, !DIExpression(), !2053)
    #dbg_declare(ptr %4, !2054, !DIExpression(), !2055)
    #dbg_declare(ptr %5, !2056, !DIExpression(), !2057)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !2058
  %6 = load ptr, ptr %2, align 8, !dbg !2059
  %7 = icmp eq ptr %6, null, !dbg !2061
  br i1 %7, label %8, label %12, !dbg !2062

8:                                                ; preds = %1
  %9 = load i32, ptr @srcMode, align 4, !dbg !2063
  %10 = icmp ne i32 %9, 1, !dbg !2064
  br i1 %10, label %11, label %12, !dbg !2062

11:                                               ; preds = %8
  call void @panic(ptr noundef @.str.94) #13, !dbg !2065
  unreachable, !dbg !2065

12:                                               ; preds = %8, %1
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.6), !dbg !2066
  %13 = load i32, ptr @srcMode, align 4, !dbg !2067
  switch i32 %13, label %19 [
    i32 1, label %14
    i32 3, label %15
    i32 2, label %17
  ], !dbg !2068

14:                                               ; preds = %12
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54), !dbg !2069
  br label %19, !dbg !2071

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !dbg !2072
  call void @copyFileName(ptr noundef @inName, ptr noundef %16), !dbg !2073
  br label %19, !dbg !2074

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8, !dbg !2075
  call void @copyFileName(ptr noundef @inName, ptr noundef %18), !dbg !2076
  br label %19, !dbg !2077

19:                                               ; preds = %12, %17, %15, %14
  %20 = load i32, ptr @srcMode, align 4, !dbg !2078
  %21 = icmp ne i32 %20, 1, !dbg !2080
  br i1 %21, label %22, label %34, !dbg !2081

22:                                               ; preds = %19
  %23 = call zeroext i8 @containsDubiousChars(ptr noundef @inName), !dbg !2082
  %24 = zext i8 %23 to i32, !dbg !2082
  %25 = icmp ne i32 %24, 0, !dbg !2082
  br i1 %25, label %26, label %34, !dbg !2081

26:                                               ; preds = %22
  %27 = load i8, ptr @noisy, align 1, !dbg !2083
  %28 = icmp ne i8 %27, 0, !dbg !2083
  br i1 %28, label %29, label %33, !dbg !2083

29:                                               ; preds = %26
  %30 = load ptr, ptr @stderr, align 8, !dbg !2086
  %31 = load ptr, ptr @progName, align 8, !dbg !2087
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.56, ptr noundef %31, ptr noundef @inName) #10, !dbg !2088
  br label %33, !dbg !2088

33:                                               ; preds = %29, %26
  call void @setExit(i32 noundef 1), !dbg !2089
  br label %115, !dbg !2090

34:                                               ; preds = %22, %19
  %35 = load i32, ptr @srcMode, align 4, !dbg !2091
  %36 = icmp ne i32 %35, 1, !dbg !2093
  br i1 %36, label %37, label %47, !dbg !2094

37:                                               ; preds = %34
  %38 = call zeroext i8 @fileExists(ptr noundef @inName), !dbg !2095
  %39 = icmp ne i8 %38, 0, !dbg !2095
  br i1 %39, label %47, label %40, !dbg !2094

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !dbg !2096
  %42 = load ptr, ptr @progName, align 8, !dbg !2098
  %43 = call ptr @__errno_location() #14, !dbg !2099
  %44 = load i32, ptr %43, align 4, !dbg !2099
  %45 = call ptr @strerror(i32 noundef %44) #10, !dbg !2100
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.95, ptr noundef %42, ptr noundef @inName, ptr noundef %45) #10, !dbg !2101
  call void @setExit(i32 noundef 1), !dbg !2102
  br label %115, !dbg !2103

47:                                               ; preds = %37, %34
  %48 = load i32, ptr @srcMode, align 4, !dbg !2104
  %49 = icmp ne i32 %48, 1, !dbg !2106
  br i1 %49, label %50, label %61, !dbg !2106

50:                                               ; preds = %47
  %51 = call i32 @stat(ptr noundef @inName, ptr noundef %5) #10, !dbg !2107
  %52 = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 3, !dbg !2109
  %53 = load i32, ptr %52, align 8, !dbg !2109
  %54 = and i32 %53, 61440, !dbg !2109
  %55 = icmp eq i32 %54, 16384, !dbg !2109
  br i1 %55, label %56, label %60, !dbg !2109

56:                                               ; preds = %50
  %57 = load ptr, ptr @stderr, align 8, !dbg !2111
  %58 = load ptr, ptr @progName, align 8, !dbg !2113
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.59, ptr noundef %58, ptr noundef @inName) #10, !dbg !2114
  call void @setExit(i32 noundef 1), !dbg !2115
  br label %115, !dbg !2116

60:                                               ; preds = %50
  br label %61, !dbg !2117

61:                                               ; preds = %60, %47
  %62 = load i32, ptr @srcMode, align 4, !dbg !2118
  switch i32 %62, label %90 [
    i32 1, label %63
    i32 2, label %78
    i32 3, label %78
  ], !dbg !2119

63:                                               ; preds = %61
  %64 = load ptr, ptr @stdin, align 8, !dbg !2120
  %65 = call i32 @fileno(ptr noundef %64) #10, !dbg !2123
  %66 = call i32 @isatty(i32 noundef %65) #10, !dbg !2124
  %67 = icmp ne i32 %66, 0, !dbg !2124
  br i1 %67, label %68, label %76, !dbg !2124

68:                                               ; preds = %63
  %69 = load ptr, ptr @stderr, align 8, !dbg !2125
  %70 = load ptr, ptr @progName, align 8, !dbg !2127
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.82, ptr noundef %70) #10, !dbg !2128
  %72 = load ptr, ptr @stderr, align 8, !dbg !2129
  %73 = load ptr, ptr @progName, align 8, !dbg !2130
  %74 = load ptr, ptr @progName, align 8, !dbg !2131
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.65, ptr noundef %73, ptr noundef %74) #10, !dbg !2132
  call void @setExit(i32 noundef 1), !dbg !2133
  br label %115, !dbg !2134

76:                                               ; preds = %63
  %77 = load ptr, ptr @stdin, align 8, !dbg !2135
  store ptr %77, ptr %3, align 8, !dbg !2136
  br label %91, !dbg !2137

78:                                               ; preds = %61, %61
  %79 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !2138
  store ptr %79, ptr %3, align 8, !dbg !2139
  %80 = load ptr, ptr %3, align 8, !dbg !2140
  %81 = icmp eq ptr %80, null, !dbg !2142
  br i1 %81, label %82, label %89, !dbg !2142

82:                                               ; preds = %78
  %83 = load ptr, ptr @stderr, align 8, !dbg !2143
  %84 = load ptr, ptr @progName, align 8, !dbg !2145
  %85 = call ptr @__errno_location() #14, !dbg !2146
  %86 = load i32, ptr %85, align 4, !dbg !2146
  %87 = call ptr @strerror(i32 noundef %86) #10, !dbg !2147
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.83, ptr noundef %84, ptr noundef @inName, ptr noundef %87) #10, !dbg !2148
  call void @setExit(i32 noundef 1), !dbg !2149
  br label %115, !dbg !2150

89:                                               ; preds = %78
  br label %91, !dbg !2151

90:                                               ; preds = %61
  call void @panic(ptr noundef @.str.96) #13, !dbg !2152
  unreachable, !dbg !2152

91:                                               ; preds = %89, %76
  %92 = load i32, ptr @verbosity, align 4, !dbg !2153
  %93 = icmp sge i32 %92, 1, !dbg !2155
  br i1 %93, label %94, label %99, !dbg !2155

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !dbg !2156
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.70, ptr noundef @inName) #10, !dbg !2158
  call void @pad(ptr noundef @inName), !dbg !2159
  %97 = load ptr, ptr @stderr, align 8, !dbg !2160
  %98 = call i32 @fflush(ptr noundef %97), !dbg !2161
  br label %99, !dbg !2162

99:                                               ; preds = %94, %91
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !2163
  %100 = load ptr, ptr %3, align 8, !dbg !2164
  %101 = call zeroext i8 @testStream(ptr noundef %100), !dbg !2165
  store i8 %101, ptr %4, align 1, !dbg !2166
  %102 = load i8, ptr %4, align 1, !dbg !2167
  %103 = zext i8 %102 to i32, !dbg !2167
  %104 = icmp ne i32 %103, 0, !dbg !2167
  br i1 %104, label %105, label %111, !dbg !2169

105:                                              ; preds = %99
  %106 = load i32, ptr @verbosity, align 4, !dbg !2170
  %107 = icmp sge i32 %106, 1, !dbg !2171
  br i1 %107, label %108, label %111, !dbg !2169

108:                                              ; preds = %105
  %109 = load ptr, ptr @stderr, align 8, !dbg !2172
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.97) #10, !dbg !2173
  br label %111, !dbg !2173

111:                                              ; preds = %108, %105, %99
  %112 = load i8, ptr %4, align 1, !dbg !2174
  %113 = icmp ne i8 %112, 0, !dbg !2174
  br i1 %113, label %115, label %114, !dbg !2176

114:                                              ; preds = %111
  store i8 1, ptr @testFailsExist, align 1, !dbg !2177
  br label %115, !dbg !2178

115:                                              ; preds = %33, %40, %56, %68, %82, %114, %111
  ret void, !dbg !2179
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showFileNames() #0 !dbg !2180 {
  %1 = load i8, ptr @noisy, align 1, !dbg !2181
  %2 = icmp ne i8 %1, 0, !dbg !2181
  br i1 %2, label %3, label %6, !dbg !2181

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !2183
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.38, ptr noundef @inName, ptr noundef @outName) #10, !dbg !2184
  br label %6, !dbg !2184

6:                                                ; preds = %3, %0
  ret void, !dbg !2185
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @cleanUpAndFail(i32 noundef %0) #5 !dbg !2186 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !2187, !DIExpression(), !2188)
    #dbg_declare(ptr %3, !2189, !DIExpression(), !2190)
    #dbg_declare(ptr %4, !2191, !DIExpression(), !2192)
  %5 = load i32, ptr @srcMode, align 4, !dbg !2193
  %6 = icmp eq i32 %5, 3, !dbg !2195
  br i1 %6, label %7, label %54, !dbg !2196

7:                                                ; preds = %1
  %8 = load i32, ptr @opMode, align 4, !dbg !2197
  %9 = icmp ne i32 %8, 3, !dbg !2198
  br i1 %9, label %10, label %54, !dbg !2199

10:                                               ; preds = %7
  %11 = load i8, ptr @deleteOutputOnInterrupt, align 1, !dbg !2200
  %12 = zext i8 %11 to i32, !dbg !2200
  %13 = icmp ne i32 %12, 0, !dbg !2200
  br i1 %13, label %14, label %54, !dbg !2199

14:                                               ; preds = %10
  %15 = call i32 @stat(ptr noundef @inName, ptr noundef %4) #10, !dbg !2201
  store i32 %15, ptr %3, align 4, !dbg !2203
  %16 = load i32, ptr %3, align 4, !dbg !2204
  %17 = icmp eq i32 %16, 0, !dbg !2206
  br i1 %17, label %18, label %40, !dbg !2206

18:                                               ; preds = %14
  %19 = load i8, ptr @noisy, align 1, !dbg !2207
  %20 = icmp ne i8 %19, 0, !dbg !2207
  br i1 %20, label %21, label %25, !dbg !2207

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8, !dbg !2210
  %23 = load ptr, ptr @progName, align 8, !dbg !2211
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.39, ptr noundef %23, ptr noundef @outName) #10, !dbg !2212
  br label %25, !dbg !2212

25:                                               ; preds = %21, %18
  %26 = load ptr, ptr @outputHandleJustInCase, align 8, !dbg !2213
  %27 = icmp ne ptr %26, null, !dbg !2215
  br i1 %27, label %28, label %31, !dbg !2215

28:                                               ; preds = %25
  %29 = load ptr, ptr @outputHandleJustInCase, align 8, !dbg !2216
  %30 = call i32 @fclose(ptr noundef %29), !dbg !2217
  br label %31, !dbg !2217

31:                                               ; preds = %28, %25
  %32 = call i32 @remove(ptr noundef @outName) #10, !dbg !2218
  store i32 %32, ptr %3, align 4, !dbg !2219
  %33 = load i32, ptr %3, align 4, !dbg !2220
  %34 = icmp ne i32 %33, 0, !dbg !2222
  br i1 %34, label %35, label %39, !dbg !2222

35:                                               ; preds = %31
  %36 = load ptr, ptr @stderr, align 8, !dbg !2223
  %37 = load ptr, ptr @progName, align 8, !dbg !2224
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.40, ptr noundef %37) #10, !dbg !2225
  br label %39, !dbg !2225

39:                                               ; preds = %35, %31
  br label %53, !dbg !2226

40:                                               ; preds = %14
  %41 = load ptr, ptr @stderr, align 8, !dbg !2227
  %42 = load ptr, ptr @progName, align 8, !dbg !2229
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.41, ptr noundef %42) #10, !dbg !2230
  %44 = load ptr, ptr @stderr, align 8, !dbg !2231
  %45 = load ptr, ptr @progName, align 8, !dbg !2232
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.42, ptr noundef %45) #10, !dbg !2233
  %47 = load ptr, ptr @stderr, align 8, !dbg !2234
  %48 = load ptr, ptr @progName, align 8, !dbg !2235
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.43, ptr noundef %48, ptr noundef @outName) #10, !dbg !2236
  %50 = load ptr, ptr @stderr, align 8, !dbg !2237
  %51 = load ptr, ptr @progName, align 8, !dbg !2238
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.44, ptr noundef %51) #10, !dbg !2239
  br label %53

53:                                               ; preds = %40, %39
  br label %54, !dbg !2240

54:                                               ; preds = %53, %10, %7, %1
  %55 = load i8, ptr @noisy, align 1, !dbg !2241
  %56 = zext i8 %55 to i32, !dbg !2241
  %57 = icmp ne i32 %56, 0, !dbg !2241
  br i1 %57, label %58, label %74, !dbg !2243

58:                                               ; preds = %54
  %59 = load i32, ptr @numFileNames, align 4, !dbg !2244
  %60 = icmp sgt i32 %59, 0, !dbg !2245
  br i1 %60, label %61, label %74, !dbg !2246

61:                                               ; preds = %58
  %62 = load i32, ptr @numFilesProcessed, align 4, !dbg !2247
  %63 = load i32, ptr @numFileNames, align 4, !dbg !2248
  %64 = icmp slt i32 %62, %63, !dbg !2249
  br i1 %64, label %65, label %74, !dbg !2246

65:                                               ; preds = %61
  %66 = load ptr, ptr @stderr, align 8, !dbg !2250
  %67 = load ptr, ptr @progName, align 8, !dbg !2252
  %68 = load ptr, ptr @progName, align 8, !dbg !2253
  %69 = load i32, ptr @numFileNames, align 4, !dbg !2254
  %70 = load i32, ptr @numFileNames, align 4, !dbg !2255
  %71 = load i32, ptr @numFilesProcessed, align 4, !dbg !2256
  %72 = sub nsw i32 %70, %71, !dbg !2257
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.45, ptr noundef %67, ptr noundef %68, i32 noundef %69, i32 noundef %72) #10, !dbg !2258
  br label %74, !dbg !2259

74:                                               ; preds = %65, %61, %58, %54
  %75 = load i32, ptr %2, align 4, !dbg !2260
  call void @setExit(i32 noundef %75), !dbg !2261
  %76 = load i32, ptr @exitValue, align 4, !dbg !2262
  call void @exit(i32 noundef %76) #12, !dbg !2263
  unreachable, !dbg !2263
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadvise() #0 !dbg !2264 {
  %1 = load i8, ptr @noisy, align 1, !dbg !2265
  %2 = icmp ne i8 %1, 0, !dbg !2265
  br i1 %2, label %3, label %6, !dbg !2265

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !2267
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.46) #10, !dbg !2268
  br label %6, !dbg !2268

6:                                                ; preds = %3, %0
  ret void, !dbg !2269
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
define internal ptr @mkCell() #0 !dbg !2270 {
  %1 = alloca ptr, align 8
    #dbg_declare(ptr %1, !2273, !DIExpression(), !2274)
  %2 = call ptr @myMalloc(i32 noundef 16), !dbg !2275
  store ptr %2, ptr %1, align 8, !dbg !2276
  %3 = load ptr, ptr %1, align 8, !dbg !2277
  %4 = getelementptr inbounds nuw %struct.zzzz, ptr %3, i32 0, i32 0, !dbg !2278
  store ptr null, ptr %4, align 8, !dbg !2279
  %5 = load ptr, ptr %1, align 8, !dbg !2280
  %6 = getelementptr inbounds nuw %struct.zzzz, ptr %5, i32 0, i32 1, !dbg !2281
  store ptr null, ptr %6, align 8, !dbg !2282
  %7 = load ptr, ptr %1, align 8, !dbg !2283
  ret ptr %7, !dbg !2284
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @myMalloc(i32 noundef %0) #0 !dbg !2285 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !2288, !DIExpression(), !2289)
    #dbg_declare(ptr %3, !2290, !DIExpression(), !2291)
  %4 = load i32, ptr %2, align 4, !dbg !2292
  %5 = sext i32 %4 to i64, !dbg !2293
  %6 = call noalias ptr @malloc(i64 noundef %5) #15, !dbg !2294
  store ptr %6, ptr %3, align 8, !dbg !2295
  %7 = load ptr, ptr %3, align 8, !dbg !2296
  %8 = icmp eq ptr %7, null, !dbg !2298
  br i1 %8, label %9, label %10, !dbg !2298

9:                                                ; preds = %1
  call void @outOfMemory() #13, !dbg !2299
  unreachable, !dbg !2299

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !2300
  ret ptr %11, !dbg !2301
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @outOfMemory() #5 !dbg !2302 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2303
  %2 = load ptr, ptr @progName, align 8, !dbg !2304
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.48, ptr noundef %2) #10, !dbg !2305
  call void @showFileNames(), !dbg !2306
  call void @cleanUpAndFail(i32 noundef 1) #13, !dbg !2307
  unreachable, !dbg !2307
}

declare ptr @BZ2_bzlibVersion() #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @panic(ptr noundef %0) #5 !dbg !2308 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2309, !DIExpression(), !2310)
  %3 = load ptr, ptr @stderr, align 8, !dbg !2311
  %4 = load ptr, ptr @progName, align 8, !dbg !2312
  %5 = load ptr, ptr %2, align 8, !dbg !2313
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.71, ptr noundef %4, ptr noundef %5) #10, !dbg !2314
  call void @showFileNames(), !dbg !2315
  call void @cleanUpAndFail(i32 noundef 3) #13, !dbg !2316
  unreachable, !dbg !2316
}

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @containsDubiousChars(ptr noundef %0) #0 !dbg !2317 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2320, !DIExpression(), !2321)
  ret i8 0, !dbg !2322
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fileExists(ptr noundef %0) #0 !dbg !2323 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2324, !DIExpression(), !2325)
    #dbg_declare(ptr %3, !2326, !DIExpression(), !2327)
  %5 = load ptr, ptr %2, align 8, !dbg !2328
  %6 = call noalias ptr @fopen(ptr noundef %5, ptr noundef @.str.66), !dbg !2329
  store ptr %6, ptr %3, align 8, !dbg !2327
    #dbg_declare(ptr %4, !2330, !DIExpression(), !2331)
  %7 = load ptr, ptr %3, align 8, !dbg !2332
  %8 = icmp ne ptr %7, null, !dbg !2333
  %9 = zext i1 %8 to i32, !dbg !2333
  %10 = trunc i32 %9 to i8, !dbg !2334
  store i8 %10, ptr %4, align 1, !dbg !2331
  %11 = load ptr, ptr %3, align 8, !dbg !2335
  %12 = icmp ne ptr %11, null, !dbg !2337
  br i1 %12, label %13, label %16, !dbg !2337

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8, !dbg !2338
  %15 = call i32 @fclose(ptr noundef %14), !dbg !2339
  br label %16, !dbg !2339

16:                                               ; preds = %13, %1
  %17 = load i8, ptr %4, align 1, !dbg !2340
  ret i8 %17, !dbg !2341
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @hasSuffix(ptr noundef %0, ptr noundef %1) #0 !dbg !2342 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2345, !DIExpression(), !2346)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !2347, !DIExpression(), !2348)
    #dbg_declare(ptr %6, !2349, !DIExpression(), !2350)
  %8 = load ptr, ptr %4, align 8, !dbg !2351
  %9 = call i64 @strlen(ptr noundef %8) #11, !dbg !2352
  %10 = trunc i64 %9 to i32, !dbg !2352
  store i32 %10, ptr %6, align 4, !dbg !2350
    #dbg_declare(ptr %7, !2353, !DIExpression(), !2354)
  %11 = load ptr, ptr %5, align 8, !dbg !2355
  %12 = call i64 @strlen(ptr noundef %11) #11, !dbg !2356
  %13 = trunc i64 %12 to i32, !dbg !2356
  store i32 %13, ptr %7, align 4, !dbg !2354
  %14 = load i32, ptr %6, align 4, !dbg !2357
  %15 = load i32, ptr %7, align 4, !dbg !2359
  %16 = icmp slt i32 %14, %15, !dbg !2360
  br i1 %16, label %17, label %18, !dbg !2360

17:                                               ; preds = %2
  store i8 0, ptr %3, align 1, !dbg !2361
  br label %32, !dbg !2361

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !2362
  %20 = load i32, ptr %6, align 4, !dbg !2364
  %21 = sext i32 %20 to i64, !dbg !2365
  %22 = getelementptr inbounds i8, ptr %19, i64 %21, !dbg !2365
  %23 = load i32, ptr %7, align 4, !dbg !2366
  %24 = sext i32 %23 to i64, !dbg !2367
  %25 = sub i64 0, %24, !dbg !2367
  %26 = getelementptr inbounds i8, ptr %22, i64 %25, !dbg !2367
  %27 = load ptr, ptr %5, align 8, !dbg !2368
  %28 = call i32 @strcmp(ptr noundef %26, ptr noundef %27) #11, !dbg !2369
  %29 = icmp eq i32 %28, 0, !dbg !2370
  br i1 %29, label %30, label %31, !dbg !2370

30:                                               ; preds = %18
  store i8 1, ptr %3, align 1, !dbg !2371
  br label %32, !dbg !2371

31:                                               ; preds = %18
  store i8 0, ptr %3, align 1, !dbg !2372
  br label %32, !dbg !2372

32:                                               ; preds = %31, %30, %17
  %33 = load i8, ptr %3, align 1, !dbg !2373
  ret i8 %33, !dbg !2373
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @notAStandardFile(ptr noundef %0) #0 !dbg !2374 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2375, !DIExpression(), !2376)
    #dbg_declare(ptr %4, !2377, !DIExpression(), !2378)
    #dbg_declare(ptr %5, !2379, !DIExpression(), !2380)
  %6 = load ptr, ptr %3, align 8, !dbg !2381
  %7 = call i32 @lstat(ptr noundef %6, ptr noundef %5) #10, !dbg !2382
  store i32 %7, ptr %4, align 4, !dbg !2383
  %8 = load i32, ptr %4, align 4, !dbg !2384
  %9 = icmp ne i32 %8, 0, !dbg !2386
  br i1 %9, label %10, label %11, !dbg !2386

10:                                               ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !2387
  br label %18, !dbg !2387

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 3, !dbg !2388
  %13 = load i32, ptr %12, align 8, !dbg !2388
  %14 = and i32 %13, 61440, !dbg !2388
  %15 = icmp eq i32 %14, 32768, !dbg !2388
  br i1 %15, label %16, label %17, !dbg !2388

16:                                               ; preds = %11
  store i8 0, ptr %2, align 1, !dbg !2390
  br label %18, !dbg !2390

17:                                               ; preds = %11
  store i8 1, ptr %2, align 1, !dbg !2391
  br label %18, !dbg !2391

18:                                               ; preds = %17, %16, %10
  %19 = load i8, ptr %2, align 1, !dbg !2392
  ret i8 %19, !dbg !2392
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @countHardLinks(ptr noundef %0) #0 !dbg !2393 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2396, !DIExpression(), !2397)
    #dbg_declare(ptr %4, !2398, !DIExpression(), !2399)
    #dbg_declare(ptr %5, !2400, !DIExpression(), !2401)
  %6 = load ptr, ptr %3, align 8, !dbg !2402
  %7 = call i32 @lstat(ptr noundef %6, ptr noundef %5) #10, !dbg !2403
  store i32 %7, ptr %4, align 4, !dbg !2404
  %8 = load i32, ptr %4, align 4, !dbg !2405
  %9 = icmp ne i32 %8, 0, !dbg !2407
  br i1 %9, label %10, label %11, !dbg !2407

10:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !2408
  br label %16, !dbg !2408

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 2, !dbg !2409
  %13 = load i64, ptr %12, align 8, !dbg !2409
  %14 = sub i64 %13, 1, !dbg !2410
  %15 = trunc i64 %14 to i32, !dbg !2411
  store i32 %15, ptr %2, align 4, !dbg !2412
  br label %16, !dbg !2412

16:                                               ; preds = %11, %10
  %17 = load i32, ptr %2, align 4, !dbg !2413
  ret i32 %17, !dbg !2413
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saveInputFileMetaInfo(ptr noundef %0) #0 !dbg !2414 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2415, !DIExpression(), !2416)
    #dbg_declare(ptr %3, !2417, !DIExpression(), !2418)
  %4 = load ptr, ptr %2, align 8, !dbg !2419
  %5 = call i32 @stat(ptr noundef %4, ptr noundef @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a) #10, !dbg !2420
  store i32 %5, ptr %3, align 4, !dbg !2421
  %6 = load i32, ptr %3, align 4, !dbg !2422
  %7 = icmp ne i32 %6, 0, !dbg !2422
  br i1 %7, label %8, label %9, !dbg !2422

8:                                                ; preds = %1
  call void @ioError() #13, !dbg !2422
  unreachable, !dbg !2422

9:                                                ; preds = %1
  ret void, !dbg !2425
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pad(ptr noundef %0) #0 !dbg !2426 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2427, !DIExpression(), !2428)
    #dbg_declare(ptr %3, !2429, !DIExpression(), !2430)
  %4 = load ptr, ptr %2, align 8, !dbg !2431
  %5 = call i64 @strlen(ptr noundef %4) #11, !dbg !2433
  %6 = trunc i64 %5 to i32, !dbg !2434
  %7 = load i32, ptr @longestFileName, align 4, !dbg !2435
  %8 = icmp sge i32 %6, %7, !dbg !2436
  br i1 %8, label %9, label %10, !dbg !2436

9:                                                ; preds = %1
  br label %25, !dbg !2437

10:                                               ; preds = %1
  store i32 1, ptr %3, align 4, !dbg !2438
  br label %11, !dbg !2440

11:                                               ; preds = %22, %10
  %12 = load i32, ptr %3, align 4, !dbg !2441
  %13 = load i32, ptr @longestFileName, align 4, !dbg !2443
  %14 = load ptr, ptr %2, align 8, !dbg !2444
  %15 = call i64 @strlen(ptr noundef %14) #11, !dbg !2445
  %16 = trunc i64 %15 to i32, !dbg !2446
  %17 = sub nsw i32 %13, %16, !dbg !2447
  %18 = icmp sle i32 %12, %17, !dbg !2448
  br i1 %18, label %19, label %25, !dbg !2449

19:                                               ; preds = %11
  %20 = load ptr, ptr @stderr, align 8, !dbg !2450
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.72) #10, !dbg !2451
  br label %22, !dbg !2451

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4, !dbg !2452
  %24 = add nsw i32 %23, 1, !dbg !2452
  store i32 %24, ptr %3, align 4, !dbg !2452
  br label %11, !dbg !2453, !llvm.loop !2454

25:                                               ; preds = %9, %11
  ret void, !dbg !2456
}

declare i32 @fflush(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressStream(ptr noundef %0, ptr noundef %1) #0 !dbg !2457 {
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
    #dbg_declare(ptr %3, !2460, !DIExpression(), !2461)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !2462, !DIExpression(), !2463)
    #dbg_declare(ptr %5, !2464, !DIExpression(), !2468)
  store ptr null, ptr %5, align 8, !dbg !2468
    #dbg_declare(ptr %6, !2469, !DIExpression(), !2473)
    #dbg_declare(ptr %7, !2474, !DIExpression(), !2475)
    #dbg_declare(ptr %8, !2476, !DIExpression(), !2478)
    #dbg_declare(ptr %9, !2479, !DIExpression(), !2480)
    #dbg_declare(ptr %10, !2481, !DIExpression(), !2482)
    #dbg_declare(ptr %11, !2483, !DIExpression(), !2484)
    #dbg_declare(ptr %12, !2485, !DIExpression(), !2486)
    #dbg_declare(ptr %13, !2487, !DIExpression(), !2488)
    #dbg_declare(ptr %14, !2489, !DIExpression(), !2490)
  %21 = load ptr, ptr %3, align 8, !dbg !2491
  %22 = call i32 @ferror(ptr noundef %21) #10, !dbg !2493
  %23 = icmp ne i32 %22, 0, !dbg !2493
  br i1 %23, label %24, label %25, !dbg !2493

24:                                               ; preds = %2
  br label %155, !dbg !2494

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8, !dbg !2495
  %27 = call i32 @ferror(ptr noundef %26) #10, !dbg !2497
  %28 = icmp ne i32 %27, 0, !dbg !2497
  br i1 %28, label %29, label %30, !dbg !2497

29:                                               ; preds = %25
  br label %155, !dbg !2498

30:                                               ; preds = %25
  %31 = load ptr, ptr %4, align 8, !dbg !2499
  %32 = load i32, ptr @blockSize100k, align 4, !dbg !2500
  %33 = load i32, ptr @verbosity, align 4, !dbg !2501
  %34 = load i32, ptr @workFactor, align 4, !dbg !2502
  %35 = call ptr @BZ2_bzWriteOpen(ptr noundef %12, ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34), !dbg !2503
  store ptr %35, ptr %5, align 8, !dbg !2504
  %36 = load i32, ptr %12, align 4, !dbg !2505
  %37 = icmp ne i32 %36, 0, !dbg !2507
  br i1 %37, label %38, label %39, !dbg !2507

38:                                               ; preds = %30
  br label %149, !dbg !2508

39:                                               ; preds = %30
  %40 = load i32, ptr @verbosity, align 4, !dbg !2509
  %41 = icmp sge i32 %40, 2, !dbg !2511
  br i1 %41, label %42, label %45, !dbg !2511

42:                                               ; preds = %39
  %43 = load ptr, ptr @stderr, align 8, !dbg !2512
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.73) #10, !dbg !2513
  br label %45, !dbg !2513

45:                                               ; preds = %42, %39
  br label %46, !dbg !2514

46:                                               ; preds = %45, %71
  %47 = load ptr, ptr %3, align 8, !dbg !2515
  %48 = call zeroext i8 @myfeof(ptr noundef %47), !dbg !2518
  %49 = icmp ne i8 %48, 0, !dbg !2518
  br i1 %49, label %50, label %51, !dbg !2518

50:                                               ; preds = %46
  br label %72, !dbg !2519

51:                                               ; preds = %46
  %52 = getelementptr inbounds [5000 x i8], ptr %6, i64 0, i64 0, !dbg !2520
  %53 = load ptr, ptr %3, align 8, !dbg !2521
  %54 = call i64 @fread(ptr noundef %52, i64 noundef 1, i64 noundef 5000, ptr noundef %53), !dbg !2522
  %55 = trunc i64 %54 to i32, !dbg !2522
  store i32 %55, ptr %7, align 4, !dbg !2523
  %56 = load ptr, ptr %3, align 8, !dbg !2524
  %57 = call i32 @ferror(ptr noundef %56) #10, !dbg !2526
  %58 = icmp ne i32 %57, 0, !dbg !2526
  br i1 %58, label %59, label %60, !dbg !2526

59:                                               ; preds = %51
  br label %155, !dbg !2527

60:                                               ; preds = %51
  %61 = load i32, ptr %7, align 4, !dbg !2528
  %62 = icmp sgt i32 %61, 0, !dbg !2530
  br i1 %62, label %63, label %67, !dbg !2530

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8, !dbg !2531
  %65 = getelementptr inbounds [5000 x i8], ptr %6, i64 0, i64 0, !dbg !2532
  %66 = load i32, ptr %7, align 4, !dbg !2533
  call void @BZ2_bzWrite(ptr noundef %12, ptr noundef %64, ptr noundef %65, i32 noundef %66), !dbg !2534
  br label %67, !dbg !2534

67:                                               ; preds = %63, %60
  %68 = load i32, ptr %12, align 4, !dbg !2535
  %69 = icmp ne i32 %68, 0, !dbg !2537
  br i1 %69, label %70, label %71, !dbg !2537

70:                                               ; preds = %67
  br label %149, !dbg !2538

71:                                               ; preds = %67
  br label %46, !dbg !2514, !llvm.loop !2539

72:                                               ; preds = %50
  %73 = load ptr, ptr %5, align 8, !dbg !2541
  call void @BZ2_bzWriteClose64(ptr noundef %12, ptr noundef %73, i32 noundef 0, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !2542
  %74 = load i32, ptr %12, align 4, !dbg !2543
  %75 = icmp ne i32 %74, 0, !dbg !2545
  br i1 %75, label %76, label %77, !dbg !2545

76:                                               ; preds = %72
  br label %149, !dbg !2546

77:                                               ; preds = %72
  %78 = load ptr, ptr %4, align 8, !dbg !2547
  %79 = call i32 @ferror(ptr noundef %78) #10, !dbg !2549
  %80 = icmp ne i32 %79, 0, !dbg !2549
  br i1 %80, label %81, label %82, !dbg !2549

81:                                               ; preds = %77
  br label %155, !dbg !2550

82:                                               ; preds = %77
  %83 = load ptr, ptr %4, align 8, !dbg !2551
  %84 = call i32 @fflush(ptr noundef %83), !dbg !2552
  store i32 %84, ptr %14, align 4, !dbg !2553
  %85 = load i32, ptr %14, align 4, !dbg !2554
  %86 = icmp eq i32 %85, -1, !dbg !2556
  br i1 %86, label %87, label %88, !dbg !2556

87:                                               ; preds = %82
  br label %155, !dbg !2557

88:                                               ; preds = %82
  %89 = load ptr, ptr %4, align 8, !dbg !2558
  %90 = load ptr, ptr @stdout, align 8, !dbg !2560
  %91 = icmp ne ptr %89, %90, !dbg !2561
  br i1 %91, label %92, label %99, !dbg !2561

92:                                               ; preds = %88
  %93 = load ptr, ptr %4, align 8, !dbg !2562
  %94 = call i32 @fclose(ptr noundef %93), !dbg !2564
  store i32 %94, ptr %14, align 4, !dbg !2565
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !2566
  %95 = load i32, ptr %14, align 4, !dbg !2567
  %96 = icmp eq i32 %95, -1, !dbg !2569
  br i1 %96, label %97, label %98, !dbg !2569

97:                                               ; preds = %92
  br label %155, !dbg !2570

98:                                               ; preds = %92
  br label %99, !dbg !2571

99:                                               ; preds = %98, %88
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !2572
  %100 = load ptr, ptr %3, align 8, !dbg !2573
  %101 = call i32 @ferror(ptr noundef %100) #10, !dbg !2575
  %102 = icmp ne i32 %101, 0, !dbg !2575
  br i1 %102, label %103, label %104, !dbg !2575

103:                                              ; preds = %99
  br label %155, !dbg !2576

104:                                              ; preds = %99
  %105 = load ptr, ptr %3, align 8, !dbg !2577
  %106 = call i32 @fclose(ptr noundef %105), !dbg !2578
  store i32 %106, ptr %14, align 4, !dbg !2579
  %107 = load i32, ptr %14, align 4, !dbg !2580
  %108 = icmp eq i32 %107, -1, !dbg !2582
  br i1 %108, label %109, label %110, !dbg !2582

109:                                              ; preds = %104
  br label %155, !dbg !2583

110:                                              ; preds = %104
  %111 = load i32, ptr @verbosity, align 4, !dbg !2584
  %112 = icmp sge i32 %111, 1, !dbg !2586
  br i1 %112, label %113, label %148, !dbg !2586

113:                                              ; preds = %110
  %114 = load i32, ptr %8, align 4, !dbg !2587
  %115 = icmp eq i32 %114, 0, !dbg !2590
  br i1 %115, label %116, label %122, !dbg !2591

116:                                              ; preds = %113
  %117 = load i32, ptr %9, align 4, !dbg !2592
  %118 = icmp eq i32 %117, 0, !dbg !2593
  br i1 %118, label %119, label %122, !dbg !2591

119:                                              ; preds = %116
  %120 = load ptr, ptr @stderr, align 8, !dbg !2594
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.74) #10, !dbg !2596
  br label %147, !dbg !2597

122:                                              ; preds = %116, %113
    #dbg_declare(ptr %15, !2598, !DIExpression(), !2601)
    #dbg_declare(ptr %16, !2602, !DIExpression(), !2603)
    #dbg_declare(ptr %17, !2604, !DIExpression(), !2610)
    #dbg_declare(ptr %18, !2611, !DIExpression(), !2612)
    #dbg_declare(ptr %19, !2613, !DIExpression(), !2614)
    #dbg_declare(ptr %20, !2615, !DIExpression(), !2616)
  %123 = load i32, ptr %8, align 4, !dbg !2617
  %124 = load i32, ptr %9, align 4, !dbg !2618
  call void @uInt64_from_UInt32s(ptr noundef %17, i32 noundef %123, i32 noundef %124), !dbg !2619
  %125 = load i32, ptr %10, align 4, !dbg !2620
  %126 = load i32, ptr %11, align 4, !dbg !2621
  call void @uInt64_from_UInt32s(ptr noundef %18, i32 noundef %125, i32 noundef %126), !dbg !2622
  %127 = call double @uInt64_to_double(ptr noundef %17), !dbg !2623
  store double %127, ptr %19, align 8, !dbg !2624
  %128 = call double @uInt64_to_double(ptr noundef %18), !dbg !2625
  store double %128, ptr %20, align 8, !dbg !2626
  %129 = getelementptr inbounds [32 x i8], ptr %15, i64 0, i64 0, !dbg !2627
  call void @uInt64_toAscii(ptr noundef %129, ptr noundef %17), !dbg !2628
  %130 = getelementptr inbounds [32 x i8], ptr %16, i64 0, i64 0, !dbg !2629
  call void @uInt64_toAscii(ptr noundef %130, ptr noundef %18), !dbg !2630
  %131 = load ptr, ptr @stderr, align 8, !dbg !2631
  %132 = load double, ptr %19, align 8, !dbg !2632
  %133 = load double, ptr %20, align 8, !dbg !2633
  %134 = fdiv double %132, %133, !dbg !2634
  %135 = load double, ptr %20, align 8, !dbg !2635
  %136 = fmul double 8.000000e+00, %135, !dbg !2636
  %137 = load double, ptr %19, align 8, !dbg !2637
  %138 = fdiv double %136, %137, !dbg !2638
  %139 = load double, ptr %20, align 8, !dbg !2639
  %140 = load double, ptr %19, align 8, !dbg !2640
  %141 = fdiv double %139, %140, !dbg !2641
  %142 = fsub double 1.000000e+00, %141, !dbg !2642
  %143 = fmul double 1.000000e+02, %142, !dbg !2643
  %144 = getelementptr inbounds [32 x i8], ptr %15, i64 0, i64 0, !dbg !2644
  %145 = getelementptr inbounds [32 x i8], ptr %16, i64 0, i64 0, !dbg !2645
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.75, double noundef %134, double noundef %138, double noundef %143, ptr noundef %144, ptr noundef %145) #10, !dbg !2646
  br label %147

147:                                              ; preds = %122, %119
  br label %148, !dbg !2647

148:                                              ; preds = %147, %110
  ret void, !dbg !2648

149:                                              ; preds = %76, %70, %38
    #dbg_label(!2649, !2650)
  %150 = load ptr, ptr %5, align 8, !dbg !2651
  call void @BZ2_bzWriteClose64(ptr noundef %13, ptr noundef %150, i32 noundef 1, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !2652
  %151 = load i32, ptr %12, align 4, !dbg !2653
  switch i32 %151, label %156 [
    i32 -9, label %152
    i32 -3, label %153
    i32 -6, label %154
  ], !dbg !2654

152:                                              ; preds = %149
  call void @configError() #13, !dbg !2655
  unreachable, !dbg !2655

153:                                              ; preds = %149
  call void @outOfMemory() #13, !dbg !2657
  unreachable, !dbg !2657

154:                                              ; preds = %149
  br label %155, !dbg !2657

155:                                              ; preds = %154, %109, %103, %97, %87, %81, %59, %29, %24
    #dbg_label(!2658, !2659)
  call void @ioError() #13, !dbg !2660
  unreachable, !dbg !2660

156:                                              ; preds = %149
  call void @panic(ptr noundef @.str.76) #13, !dbg !2661
  unreachable, !dbg !2661
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applySavedMetaInfoToOutputFile(ptr noundef %0) #0 !dbg !2662 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.utimbuf, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2663, !DIExpression(), !2664)
    #dbg_declare(ptr %3, !2665, !DIExpression(), !2666)
    #dbg_declare(ptr %4, !2667, !DIExpression(), !2673)
  %5 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 11), align 8, !dbg !2674
  %6 = getelementptr inbounds nuw %struct.utimbuf, ptr %4, i32 0, i32 0, !dbg !2675
  store i64 %5, ptr %6, align 8, !dbg !2676
  %7 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 12), align 8, !dbg !2677
  %8 = getelementptr inbounds nuw %struct.utimbuf, ptr %4, i32 0, i32 1, !dbg !2678
  store i64 %7, ptr %8, align 8, !dbg !2679
  %9 = load ptr, ptr %2, align 8, !dbg !2680
  %10 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 3), align 8, !dbg !2681
  %11 = call i32 @chmod(ptr noundef %9, i32 noundef %10) #10, !dbg !2682
  store i32 %11, ptr %3, align 4, !dbg !2683
  %12 = load i32, ptr %3, align 4, !dbg !2684
  %13 = icmp ne i32 %12, 0, !dbg !2684
  br i1 %13, label %14, label %15, !dbg !2684

14:                                               ; preds = %1
  call void @ioError() #13, !dbg !2684
  unreachable, !dbg !2684

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !dbg !2687
  %17 = call i32 @utime(ptr noundef %16, ptr noundef %4) #10, !dbg !2688
  store i32 %17, ptr %3, align 4, !dbg !2689
  %18 = load i32, ptr %3, align 4, !dbg !2690
  %19 = icmp ne i32 %18, 0, !dbg !2690
  br i1 %19, label %20, label %21, !dbg !2690

20:                                               ; preds = %15
  call void @ioError() #13, !dbg !2690
  unreachable, !dbg !2690

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8, !dbg !2693
  %23 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 4), align 4, !dbg !2694
  %24 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo_autojit_module_2d1387ca92e7b83c7aa238c36b76c79a, i32 0, i32 5), align 8, !dbg !2695
  %25 = call i32 @chown(ptr noundef %22, i32 noundef %23, i32 noundef %24) #10, !dbg !2696
  store i32 %25, ptr %3, align 4, !dbg !2697
  ret void, !dbg !2698
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @ioError() #5 !dbg !2699 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2700
  %2 = load ptr, ptr @progName, align 8, !dbg !2701
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.78, ptr noundef %2) #10, !dbg !2702
  %4 = load ptr, ptr @progName, align 8, !dbg !2703
  call void @perror(ptr noundef %4), !dbg !2704
  call void @showFileNames(), !dbg !2705
  call void @cleanUpAndFail(i32 noundef 1) #13, !dbg !2706
  unreachable, !dbg !2706
}

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #2

declare ptr @BZ2_bzWriteOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myfeof(ptr noundef %0) #0 !dbg !2707 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2710, !DIExpression(), !2711)
    #dbg_declare(ptr %4, !2712, !DIExpression(), !2713)
  %5 = load ptr, ptr %3, align 8, !dbg !2714
  %6 = call i32 @fgetc(ptr noundef %5), !dbg !2715
  store i32 %6, ptr %4, align 4, !dbg !2713
  %7 = load i32, ptr %4, align 4, !dbg !2716
  %8 = icmp eq i32 %7, -1, !dbg !2718
  br i1 %8, label %9, label %10, !dbg !2718

9:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !2719
  br label %14, !dbg !2719

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4, !dbg !2720
  %12 = load ptr, ptr %3, align 8, !dbg !2721
  %13 = call i32 @ungetc(i32 noundef %11, ptr noundef %12), !dbg !2722
  store i8 0, ptr %2, align 1, !dbg !2723
  br label %14, !dbg !2723

14:                                               ; preds = %10, %9
  %15 = load i8, ptr %2, align 1, !dbg !2724
  ret i8 %15, !dbg !2724
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare void @BZ2_bzWrite(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @BZ2_bzWriteClose64(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uInt64_from_UInt32s(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !2725 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2729, !DIExpression(), !2730)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !2731, !DIExpression(), !2732)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !2733, !DIExpression(), !2734)
  %7 = load i32, ptr %6, align 4, !dbg !2735
  %8 = lshr i32 %7, 24, !dbg !2736
  %9 = and i32 %8, 255, !dbg !2737
  %10 = trunc i32 %9 to i8, !dbg !2738
  %11 = load ptr, ptr %4, align 8, !dbg !2739
  %12 = getelementptr inbounds nuw %struct.UInt64, ptr %11, i32 0, i32 0, !dbg !2740
  %13 = getelementptr inbounds [8 x i8], ptr %12, i64 0, i64 7, !dbg !2739
  store i8 %10, ptr %13, align 1, !dbg !2741
  %14 = load i32, ptr %6, align 4, !dbg !2742
  %15 = lshr i32 %14, 16, !dbg !2743
  %16 = and i32 %15, 255, !dbg !2744
  %17 = trunc i32 %16 to i8, !dbg !2745
  %18 = load ptr, ptr %4, align 8, !dbg !2746
  %19 = getelementptr inbounds nuw %struct.UInt64, ptr %18, i32 0, i32 0, !dbg !2747
  %20 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 6, !dbg !2746
  store i8 %17, ptr %20, align 1, !dbg !2748
  %21 = load i32, ptr %6, align 4, !dbg !2749
  %22 = lshr i32 %21, 8, !dbg !2750
  %23 = and i32 %22, 255, !dbg !2751
  %24 = trunc i32 %23 to i8, !dbg !2752
  %25 = load ptr, ptr %4, align 8, !dbg !2753
  %26 = getelementptr inbounds nuw %struct.UInt64, ptr %25, i32 0, i32 0, !dbg !2754
  %27 = getelementptr inbounds [8 x i8], ptr %26, i64 0, i64 5, !dbg !2753
  store i8 %24, ptr %27, align 1, !dbg !2755
  %28 = load i32, ptr %6, align 4, !dbg !2756
  %29 = and i32 %28, 255, !dbg !2757
  %30 = trunc i32 %29 to i8, !dbg !2758
  %31 = load ptr, ptr %4, align 8, !dbg !2759
  %32 = getelementptr inbounds nuw %struct.UInt64, ptr %31, i32 0, i32 0, !dbg !2760
  %33 = getelementptr inbounds [8 x i8], ptr %32, i64 0, i64 4, !dbg !2759
  store i8 %30, ptr %33, align 1, !dbg !2761
  %34 = load i32, ptr %5, align 4, !dbg !2762
  %35 = lshr i32 %34, 24, !dbg !2763
  %36 = and i32 %35, 255, !dbg !2764
  %37 = trunc i32 %36 to i8, !dbg !2765
  %38 = load ptr, ptr %4, align 8, !dbg !2766
  %39 = getelementptr inbounds nuw %struct.UInt64, ptr %38, i32 0, i32 0, !dbg !2767
  %40 = getelementptr inbounds [8 x i8], ptr %39, i64 0, i64 3, !dbg !2766
  store i8 %37, ptr %40, align 1, !dbg !2768
  %41 = load i32, ptr %5, align 4, !dbg !2769
  %42 = lshr i32 %41, 16, !dbg !2770
  %43 = and i32 %42, 255, !dbg !2771
  %44 = trunc i32 %43 to i8, !dbg !2772
  %45 = load ptr, ptr %4, align 8, !dbg !2773
  %46 = getelementptr inbounds nuw %struct.UInt64, ptr %45, i32 0, i32 0, !dbg !2774
  %47 = getelementptr inbounds [8 x i8], ptr %46, i64 0, i64 2, !dbg !2773
  store i8 %44, ptr %47, align 1, !dbg !2775
  %48 = load i32, ptr %5, align 4, !dbg !2776
  %49 = lshr i32 %48, 8, !dbg !2777
  %50 = and i32 %49, 255, !dbg !2778
  %51 = trunc i32 %50 to i8, !dbg !2779
  %52 = load ptr, ptr %4, align 8, !dbg !2780
  %53 = getelementptr inbounds nuw %struct.UInt64, ptr %52, i32 0, i32 0, !dbg !2781
  %54 = getelementptr inbounds [8 x i8], ptr %53, i64 0, i64 1, !dbg !2780
  store i8 %51, ptr %54, align 1, !dbg !2782
  %55 = load i32, ptr %5, align 4, !dbg !2783
  %56 = and i32 %55, 255, !dbg !2784
  %57 = trunc i32 %56 to i8, !dbg !2785
  %58 = load ptr, ptr %4, align 8, !dbg !2786
  %59 = getelementptr inbounds nuw %struct.UInt64, ptr %58, i32 0, i32 0, !dbg !2787
  %60 = getelementptr inbounds [8 x i8], ptr %59, i64 0, i64 0, !dbg !2786
  store i8 %57, ptr %60, align 1, !dbg !2788
  ret void, !dbg !2789
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @uInt64_to_double(ptr noundef %0) #0 !dbg !2790 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2793, !DIExpression(), !2794)
    #dbg_declare(ptr %3, !2795, !DIExpression(), !2796)
    #dbg_declare(ptr %4, !2797, !DIExpression(), !2798)
  store double 1.000000e+00, ptr %4, align 8, !dbg !2798
    #dbg_declare(ptr %5, !2799, !DIExpression(), !2800)
  store double 0.000000e+00, ptr %5, align 8, !dbg !2800
  store i32 0, ptr %3, align 4, !dbg !2801
  br label %6, !dbg !2803

6:                                                ; preds = %22, %1
  %7 = load i32, ptr %3, align 4, !dbg !2804
  %8 = icmp slt i32 %7, 8, !dbg !2806
  br i1 %8, label %9, label %25, !dbg !2807

9:                                                ; preds = %6
  %10 = load double, ptr %4, align 8, !dbg !2808
  %11 = load ptr, ptr %2, align 8, !dbg !2810
  %12 = getelementptr inbounds nuw %struct.UInt64, ptr %11, i32 0, i32 0, !dbg !2811
  %13 = load i32, ptr %3, align 4, !dbg !2812
  %14 = sext i32 %13 to i64, !dbg !2810
  %15 = getelementptr inbounds [8 x i8], ptr %12, i64 0, i64 %14, !dbg !2810
  %16 = load i8, ptr %15, align 1, !dbg !2810
  %17 = uitofp i8 %16 to double, !dbg !2813
  %18 = load double, ptr %5, align 8, !dbg !2814
  %19 = call double @llvm.fmuladd.f64(double %10, double %17, double %18), !dbg !2814
  store double %19, ptr %5, align 8, !dbg !2814
  %20 = load double, ptr %4, align 8, !dbg !2815
  %21 = fmul double %20, 2.560000e+02, !dbg !2815
  store double %21, ptr %4, align 8, !dbg !2815
  br label %22, !dbg !2816

22:                                               ; preds = %9
  %23 = load i32, ptr %3, align 4, !dbg !2817
  %24 = add nsw i32 %23, 1, !dbg !2817
  store i32 %24, ptr %3, align 4, !dbg !2817
  br label %6, !dbg !2818, !llvm.loop !2819

25:                                               ; preds = %6
  %26 = load double, ptr %5, align 8, !dbg !2821
  ret double %26, !dbg !2822
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uInt64_toAscii(ptr noundef %0, ptr noundef %1) #0 !dbg !2823 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.UInt64, align 1
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2826, !DIExpression(), !2827)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !2828, !DIExpression(), !2829)
    #dbg_declare(ptr %5, !2830, !DIExpression(), !2831)
    #dbg_declare(ptr %6, !2832, !DIExpression(), !2833)
    #dbg_declare(ptr %7, !2834, !DIExpression(), !2836)
    #dbg_declare(ptr %8, !2837, !DIExpression(), !2838)
  store i32 0, ptr %8, align 4, !dbg !2838
    #dbg_declare(ptr %9, !2839, !DIExpression(), !2840)
  %10 = load ptr, ptr %4, align 8, !dbg !2841
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 8, i1 false), !dbg !2842
  br label %11, !dbg !2843

11:                                               ; preds = %21, %2
  %12 = call i32 @uInt64_qrm10(ptr noundef %9), !dbg !2844
  store i32 %12, ptr %6, align 4, !dbg !2846
  %13 = load i32, ptr %6, align 4, !dbg !2847
  %14 = add nsw i32 %13, 48, !dbg !2848
  %15 = trunc i32 %14 to i8, !dbg !2847
  %16 = load i32, ptr %8, align 4, !dbg !2849
  %17 = sext i32 %16 to i64, !dbg !2850
  %18 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 %17, !dbg !2850
  store i8 %15, ptr %18, align 1, !dbg !2851
  %19 = load i32, ptr %8, align 4, !dbg !2852
  %20 = add nsw i32 %19, 1, !dbg !2852
  store i32 %20, ptr %8, align 4, !dbg !2852
  br label %21, !dbg !2853

21:                                               ; preds = %11
  %22 = call zeroext i8 @uInt64_isZero(ptr noundef %9), !dbg !2854
  %23 = icmp ne i8 %22, 0, !dbg !2855
  %24 = xor i1 %23, true, !dbg !2855
  br i1 %24, label %11, label %25, !dbg !2853, !llvm.loop !2856

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 8, !dbg !2858
  %27 = load i32, ptr %8, align 4, !dbg !2859
  %28 = sext i32 %27 to i64, !dbg !2858
  %29 = getelementptr inbounds i8, ptr %26, i64 %28, !dbg !2858
  store i8 0, ptr %29, align 1, !dbg !2860
  store i32 0, ptr %5, align 4, !dbg !2861
  br label %30, !dbg !2863

30:                                               ; preds = %46, %25
  %31 = load i32, ptr %5, align 4, !dbg !2864
  %32 = load i32, ptr %8, align 4, !dbg !2866
  %33 = icmp slt i32 %31, %32, !dbg !2867
  br i1 %33, label %34, label %49, !dbg !2868

34:                                               ; preds = %30
  %35 = load i32, ptr %8, align 4, !dbg !2869
  %36 = load i32, ptr %5, align 4, !dbg !2870
  %37 = sub nsw i32 %35, %36, !dbg !2871
  %38 = sub nsw i32 %37, 1, !dbg !2872
  %39 = sext i32 %38 to i64, !dbg !2873
  %40 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 %39, !dbg !2873
  %41 = load i8, ptr %40, align 1, !dbg !2873
  %42 = load ptr, ptr %3, align 8, !dbg !2874
  %43 = load i32, ptr %5, align 4, !dbg !2875
  %44 = sext i32 %43 to i64, !dbg !2874
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2874
  store i8 %41, ptr %45, align 1, !dbg !2876
  br label %46, !dbg !2874

46:                                               ; preds = %34
  %47 = load i32, ptr %5, align 4, !dbg !2877
  %48 = add nsw i32 %47, 1, !dbg !2877
  store i32 %48, ptr %5, align 4, !dbg !2877
  br label %30, !dbg !2878, !llvm.loop !2879

49:                                               ; preds = %30
  ret void, !dbg !2881
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @configError() #5 !dbg !2882 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2883
  %2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.77) #10, !dbg !2884
  call void @setExit(i32 noundef 3), !dbg !2885
  %3 = load i32, ptr @exitValue, align 4, !dbg !2886
  call void @exit(i32 noundef %3) #12, !dbg !2887
  unreachable, !dbg !2887
}

declare i32 @fgetc(ptr noundef) #1

declare i32 @ungetc(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uInt64_qrm10(ptr noundef %0) #0 !dbg !2888 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2891, !DIExpression(), !2892)
    #dbg_declare(ptr %3, !2893, !DIExpression(), !2894)
    #dbg_declare(ptr %4, !2895, !DIExpression(), !2896)
    #dbg_declare(ptr %5, !2897, !DIExpression(), !2898)
  store i32 0, ptr %3, align 4, !dbg !2899
  store i32 7, ptr %5, align 4, !dbg !2900
  br label %6, !dbg !2902

6:                                                ; preds = %30, %1
  %7 = load i32, ptr %5, align 4, !dbg !2903
  %8 = icmp sge i32 %7, 0, !dbg !2905
  br i1 %8, label %9, label %33, !dbg !2906

9:                                                ; preds = %6
  %10 = load i32, ptr %3, align 4, !dbg !2907
  %11 = mul i32 %10, 256, !dbg !2909
  %12 = load ptr, ptr %2, align 8, !dbg !2910
  %13 = getelementptr inbounds nuw %struct.UInt64, ptr %12, i32 0, i32 0, !dbg !2911
  %14 = load i32, ptr %5, align 4, !dbg !2912
  %15 = sext i32 %14 to i64, !dbg !2910
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 %15, !dbg !2910
  %17 = load i8, ptr %16, align 1, !dbg !2910
  %18 = zext i8 %17 to i32, !dbg !2910
  %19 = add i32 %11, %18, !dbg !2913
  store i32 %19, ptr %4, align 4, !dbg !2914
  %20 = load i32, ptr %4, align 4, !dbg !2915
  %21 = udiv i32 %20, 10, !dbg !2916
  %22 = trunc i32 %21 to i8, !dbg !2915
  %23 = load ptr, ptr %2, align 8, !dbg !2917
  %24 = getelementptr inbounds nuw %struct.UInt64, ptr %23, i32 0, i32 0, !dbg !2918
  %25 = load i32, ptr %5, align 4, !dbg !2919
  %26 = sext i32 %25 to i64, !dbg !2917
  %27 = getelementptr inbounds [8 x i8], ptr %24, i64 0, i64 %26, !dbg !2917
  store i8 %22, ptr %27, align 1, !dbg !2920
  %28 = load i32, ptr %4, align 4, !dbg !2921
  %29 = urem i32 %28, 10, !dbg !2922
  store i32 %29, ptr %3, align 4, !dbg !2923
  br label %30, !dbg !2924

30:                                               ; preds = %9
  %31 = load i32, ptr %5, align 4, !dbg !2925
  %32 = add nsw i32 %31, -1, !dbg !2925
  store i32 %32, ptr %5, align 4, !dbg !2925
  br label %6, !dbg !2926, !llvm.loop !2927

33:                                               ; preds = %6
  %34 = load i32, ptr %3, align 4, !dbg !2929
  ret i32 %34, !dbg !2930
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @uInt64_isZero(ptr noundef %0) #0 !dbg !2931 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2934, !DIExpression(), !2935)
    #dbg_declare(ptr %4, !2936, !DIExpression(), !2937)
  store i32 0, ptr %4, align 4, !dbg !2938
  br label %5, !dbg !2940

5:                                                ; preds = %19, %1
  %6 = load i32, ptr %4, align 4, !dbg !2941
  %7 = icmp slt i32 %6, 8, !dbg !2943
  br i1 %7, label %8, label %22, !dbg !2944

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !dbg !2945
  %10 = getelementptr inbounds nuw %struct.UInt64, ptr %9, i32 0, i32 0, !dbg !2947
  %11 = load i32, ptr %4, align 4, !dbg !2948
  %12 = sext i32 %11 to i64, !dbg !2945
  %13 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 %12, !dbg !2945
  %14 = load i8, ptr %13, align 1, !dbg !2945
  %15 = zext i8 %14 to i32, !dbg !2945
  %16 = icmp ne i32 %15, 0, !dbg !2949
  br i1 %16, label %17, label %18, !dbg !2949

17:                                               ; preds = %8
  store i8 0, ptr %2, align 1, !dbg !2950
  br label %23, !dbg !2950

18:                                               ; preds = %8
  br label %19, !dbg !2951

19:                                               ; preds = %18
  %20 = load i32, ptr %4, align 4, !dbg !2952
  %21 = add nsw i32 %20, 1, !dbg !2952
  store i32 %21, ptr %4, align 4, !dbg !2952
  br label %5, !dbg !2953, !llvm.loop !2954

22:                                               ; preds = %5
  store i8 1, ptr %2, align 1, !dbg !2956
  br label %23, !dbg !2956

23:                                               ; preds = %22, %17
  %24 = load i8, ptr %2, align 1, !dbg !2957
  ret i8 %24, !dbg !2957
}

; Function Attrs: nounwind
declare i32 @chmod(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @utime(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @chown(ptr noundef, i32 noundef, i32 noundef) #2

declare void @perror(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mapSuffix(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2958 {
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2961, !DIExpression(), !2962)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !2963, !DIExpression(), !2964)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !2965, !DIExpression(), !2966)
  %8 = load ptr, ptr %5, align 8, !dbg !2967
  %9 = load ptr, ptr %6, align 8, !dbg !2969
  %10 = call zeroext i8 @hasSuffix(ptr noundef %8, ptr noundef %9), !dbg !2970
  %11 = icmp ne i8 %10, 0, !dbg !2970
  br i1 %11, label %13, label %12, !dbg !2971

12:                                               ; preds = %3
  store i8 0, ptr %4, align 1, !dbg !2972
  br label %24, !dbg !2972

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !2973
  %15 = load ptr, ptr %5, align 8, !dbg !2974
  %16 = call i64 @strlen(ptr noundef %15) #11, !dbg !2975
  %17 = load ptr, ptr %6, align 8, !dbg !2976
  %18 = call i64 @strlen(ptr noundef %17) #11, !dbg !2977
  %19 = sub i64 %16, %18, !dbg !2978
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 %19, !dbg !2973
  store i8 0, ptr %20, align 1, !dbg !2979
  %21 = load ptr, ptr %5, align 8, !dbg !2980
  %22 = load ptr, ptr %7, align 8, !dbg !2981
  %23 = call ptr @strcat(ptr noundef %21, ptr noundef %22) #10, !dbg !2982
  store i8 1, ptr %4, align 1, !dbg !2983
  br label %24, !dbg !2983

24:                                               ; preds = %13, %12
  %25 = load i8, ptr %4, align 1, !dbg !2984
  ret i8 %25, !dbg !2984
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @uncompressStream(ptr noundef %0, ptr noundef %1) #0 !dbg !2985 {
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
    #dbg_declare(ptr %4, !2988, !DIExpression(), !2989)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !2990, !DIExpression(), !2991)
    #dbg_declare(ptr %6, !2992, !DIExpression(), !2993)
  store ptr null, ptr %6, align 8, !dbg !2993
    #dbg_declare(ptr %7, !2994, !DIExpression(), !2995)
    #dbg_declare(ptr %8, !2996, !DIExpression(), !2997)
    #dbg_declare(ptr %9, !2998, !DIExpression(), !2999)
    #dbg_declare(ptr %10, !3000, !DIExpression(), !3001)
    #dbg_declare(ptr %11, !3002, !DIExpression(), !3003)
    #dbg_declare(ptr %12, !3004, !DIExpression(), !3005)
    #dbg_declare(ptr %13, !3006, !DIExpression(), !3007)
    #dbg_declare(ptr %14, !3008, !DIExpression(), !3009)
    #dbg_declare(ptr %15, !3010, !DIExpression(), !3011)
    #dbg_declare(ptr %16, !3012, !DIExpression(), !3013)
    #dbg_declare(ptr %17, !3014, !DIExpression(), !3015)
  store i32 0, ptr %15, align 4, !dbg !3016
  store i32 0, ptr %11, align 4, !dbg !3017
  %18 = load ptr, ptr %5, align 8, !dbg !3018
  %19 = call i32 @ferror(ptr noundef %18) #10, !dbg !3020
  %20 = icmp ne i32 %19, 0, !dbg !3020
  br i1 %20, label %21, label %22, !dbg !3020

21:                                               ; preds = %2
  br label %200, !dbg !3021

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8, !dbg !3022
  %24 = call i32 @ferror(ptr noundef %23) #10, !dbg !3024
  %25 = icmp ne i32 %24, 0, !dbg !3024
  br i1 %25, label %26, label %27, !dbg !3024

26:                                               ; preds = %22
  br label %200, !dbg !3025

27:                                               ; preds = %22
  br label %28, !dbg !3026

28:                                               ; preds = %27, %117
  %29 = load ptr, ptr %4, align 8, !dbg !3027
  %30 = load i32, ptr @verbosity, align 4, !dbg !3029
  %31 = load i8, ptr @smallMode, align 1, !dbg !3030
  %32 = zext i8 %31 to i32, !dbg !3031
  %33 = getelementptr inbounds [5000 x i8], ptr %14, i64 0, i64 0, !dbg !3032
  %34 = load i32, ptr %15, align 4, !dbg !3033
  %35 = call ptr @BZ2_bzReadOpen(ptr noundef %7, ptr noundef %29, i32 noundef %30, i32 noundef %32, ptr noundef %33, i32 noundef %34), !dbg !3034
  store ptr %35, ptr %6, align 8, !dbg !3035
  %36 = load ptr, ptr %6, align 8, !dbg !3036
  %37 = icmp eq ptr %36, null, !dbg !3038
  br i1 %37, label %41, label %38, !dbg !3039

38:                                               ; preds = %28
  %39 = load i32, ptr %7, align 4, !dbg !3040
  %40 = icmp ne i32 %39, 0, !dbg !3041
  br i1 %40, label %41, label %42, !dbg !3039

41:                                               ; preds = %38, %28
  br label %195, !dbg !3042

42:                                               ; preds = %38
  %43 = load i32, ptr %11, align 4, !dbg !3043
  %44 = add nsw i32 %43, 1, !dbg !3043
  store i32 %44, ptr %11, align 4, !dbg !3043
  br label %45, !dbg !3044

45:                                               ; preds = %75, %42
  %46 = load i32, ptr %7, align 4, !dbg !3045
  %47 = icmp eq i32 %46, 0, !dbg !3046
  br i1 %47, label %48, label %76, !dbg !3044

48:                                               ; preds = %45
  %49 = load ptr, ptr %6, align 8, !dbg !3047
  %50 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !3049
  %51 = call i32 @BZ2_bzRead(ptr noundef %7, ptr noundef %49, ptr noundef %50, i32 noundef 5000), !dbg !3050
  store i32 %51, ptr %10, align 4, !dbg !3051
  %52 = load i32, ptr %7, align 4, !dbg !3052
  %53 = icmp eq i32 %52, -5, !dbg !3054
  br i1 %53, label %54, label %55, !dbg !3054

54:                                               ; preds = %48
  br label %159, !dbg !3055

55:                                               ; preds = %48
  %56 = load i32, ptr %7, align 4, !dbg !3056
  %57 = icmp eq i32 %56, 0, !dbg !3058
  br i1 %57, label %61, label %58, !dbg !3059

58:                                               ; preds = %55
  %59 = load i32, ptr %7, align 4, !dbg !3060
  %60 = icmp eq i32 %59, 4, !dbg !3061
  br i1 %60, label %61, label %70, !dbg !3062

61:                                               ; preds = %58, %55
  %62 = load i32, ptr %10, align 4, !dbg !3063
  %63 = icmp sgt i32 %62, 0, !dbg !3064
  br i1 %63, label %64, label %70, !dbg !3062

64:                                               ; preds = %61
  %65 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !3065
  %66 = load i32, ptr %10, align 4, !dbg !3066
  %67 = sext i32 %66 to i64, !dbg !3066
  %68 = load ptr, ptr %5, align 8, !dbg !3067
  %69 = call i64 @fwrite(ptr noundef %65, i64 noundef 1, i64 noundef %67, ptr noundef %68), !dbg !3068
  br label %70, !dbg !3068

70:                                               ; preds = %64, %61, %58
  %71 = load ptr, ptr %5, align 8, !dbg !3069
  %72 = call i32 @ferror(ptr noundef %71) #10, !dbg !3071
  %73 = icmp ne i32 %72, 0, !dbg !3071
  br i1 %73, label %74, label %75, !dbg !3071

74:                                               ; preds = %70
  br label %200, !dbg !3072

75:                                               ; preds = %70
  br label %45, !dbg !3044, !llvm.loop !3073

76:                                               ; preds = %45
  %77 = load i32, ptr %7, align 4, !dbg !3075
  %78 = icmp ne i32 %77, 4, !dbg !3077
  br i1 %78, label %79, label %80, !dbg !3077

79:                                               ; preds = %76
  br label %195, !dbg !3078

80:                                               ; preds = %76
  %81 = load ptr, ptr %6, align 8, !dbg !3079
  call void @BZ2_bzReadGetUnused(ptr noundef %7, ptr noundef %81, ptr noundef %16, ptr noundef %15), !dbg !3080
  %82 = load i32, ptr %7, align 4, !dbg !3081
  %83 = icmp ne i32 %82, 0, !dbg !3083
  br i1 %83, label %84, label %85, !dbg !3083

84:                                               ; preds = %80
  call void @panic(ptr noundef @.str.88) #13, !dbg !3084
  unreachable, !dbg !3084

85:                                               ; preds = %80
  %86 = load ptr, ptr %16, align 8, !dbg !3085
  store ptr %86, ptr %17, align 8, !dbg !3086
  store i32 0, ptr %12, align 4, !dbg !3087
  br label %87, !dbg !3089

87:                                               ; preds = %100, %85
  %88 = load i32, ptr %12, align 4, !dbg !3090
  %89 = load i32, ptr %15, align 4, !dbg !3092
  %90 = icmp slt i32 %88, %89, !dbg !3093
  br i1 %90, label %91, label %103, !dbg !3094

91:                                               ; preds = %87
  %92 = load ptr, ptr %17, align 8, !dbg !3095
  %93 = load i32, ptr %12, align 4, !dbg !3096
  %94 = sext i32 %93 to i64, !dbg !3095
  %95 = getelementptr inbounds i8, ptr %92, i64 %94, !dbg !3095
  %96 = load i8, ptr %95, align 1, !dbg !3095
  %97 = load i32, ptr %12, align 4, !dbg !3097
  %98 = sext i32 %97 to i64, !dbg !3098
  %99 = getelementptr inbounds [5000 x i8], ptr %14, i64 0, i64 %98, !dbg !3098
  store i8 %96, ptr %99, align 1, !dbg !3099
  br label %100, !dbg !3098

100:                                              ; preds = %91
  %101 = load i32, ptr %12, align 4, !dbg !3100
  %102 = add nsw i32 %101, 1, !dbg !3100
  store i32 %102, ptr %12, align 4, !dbg !3100
  br label %87, !dbg !3101, !llvm.loop !3102

103:                                              ; preds = %87
  %104 = load ptr, ptr %6, align 8, !dbg !3104
  call void @BZ2_bzReadClose(ptr noundef %7, ptr noundef %104), !dbg !3105
  %105 = load i32, ptr %7, align 4, !dbg !3106
  %106 = icmp ne i32 %105, 0, !dbg !3108
  br i1 %106, label %107, label %108, !dbg !3108

107:                                              ; preds = %103
  call void @panic(ptr noundef @.str.88) #13, !dbg !3109
  unreachable, !dbg !3109

108:                                              ; preds = %103
  %109 = load i32, ptr %15, align 4, !dbg !3110
  %110 = icmp eq i32 %109, 0, !dbg !3112
  br i1 %110, label %111, label %117, !dbg !3113

111:                                              ; preds = %108
  %112 = load ptr, ptr %4, align 8, !dbg !3114
  %113 = call zeroext i8 @myfeof(ptr noundef %112), !dbg !3115
  %114 = zext i8 %113 to i32, !dbg !3115
  %115 = icmp ne i32 %114, 0, !dbg !3115
  br i1 %115, label %116, label %117, !dbg !3113

116:                                              ; preds = %111
  br label %118, !dbg !3116

117:                                              ; preds = %111, %108
  br label %28, !dbg !3026, !llvm.loop !3117

118:                                              ; preds = %116
  br label %119, !dbg !3026

119:                                              ; preds = %193, %118
    #dbg_label(!3119, !3120)
  %120 = load ptr, ptr %4, align 8, !dbg !3121
  %121 = call i32 @ferror(ptr noundef %120) #10, !dbg !3123
  %122 = icmp ne i32 %121, 0, !dbg !3123
  br i1 %122, label %123, label %124, !dbg !3123

123:                                              ; preds = %119
  br label %200, !dbg !3124

124:                                              ; preds = %119
  %125 = load ptr, ptr %4, align 8, !dbg !3125
  %126 = call i32 @fclose(ptr noundef %125), !dbg !3126
  store i32 %126, ptr %9, align 4, !dbg !3127
  %127 = load i32, ptr %9, align 4, !dbg !3128
  %128 = icmp eq i32 %127, -1, !dbg !3130
  br i1 %128, label %129, label %130, !dbg !3130

129:                                              ; preds = %124
  br label %200, !dbg !3131

130:                                              ; preds = %124
  %131 = load ptr, ptr %5, align 8, !dbg !3132
  %132 = call i32 @ferror(ptr noundef %131) #10, !dbg !3134
  %133 = icmp ne i32 %132, 0, !dbg !3134
  br i1 %133, label %134, label %135, !dbg !3134

134:                                              ; preds = %130
  br label %200, !dbg !3135

135:                                              ; preds = %130
  %136 = load ptr, ptr %5, align 8, !dbg !3136
  %137 = call i32 @fflush(ptr noundef %136), !dbg !3137
  store i32 %137, ptr %9, align 4, !dbg !3138
  %138 = load i32, ptr %9, align 4, !dbg !3139
  %139 = icmp ne i32 %138, 0, !dbg !3141
  br i1 %139, label %140, label %141, !dbg !3141

140:                                              ; preds = %135
  br label %200, !dbg !3142

141:                                              ; preds = %135
  %142 = load ptr, ptr %5, align 8, !dbg !3143
  %143 = load ptr, ptr @stdout, align 8, !dbg !3145
  %144 = icmp ne ptr %142, %143, !dbg !3146
  br i1 %144, label %145, label %152, !dbg !3146

145:                                              ; preds = %141
  %146 = load ptr, ptr %5, align 8, !dbg !3147
  %147 = call i32 @fclose(ptr noundef %146), !dbg !3149
  store i32 %147, ptr %9, align 4, !dbg !3150
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !3151
  %148 = load i32, ptr %9, align 4, !dbg !3152
  %149 = icmp eq i32 %148, -1, !dbg !3154
  br i1 %149, label %150, label %151, !dbg !3154

150:                                              ; preds = %145
  br label %200, !dbg !3155

151:                                              ; preds = %145
  br label %152, !dbg !3156

152:                                              ; preds = %151, %141
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !3157
  %153 = load i32, ptr @verbosity, align 4, !dbg !3158
  %154 = icmp sge i32 %153, 2, !dbg !3160
  br i1 %154, label %155, label %158, !dbg !3160

155:                                              ; preds = %152
  %156 = load ptr, ptr @stderr, align 8, !dbg !3161
  %157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef @.str.89) #10, !dbg !3162
  br label %158, !dbg !3162

158:                                              ; preds = %155, %152
  store i8 1, ptr %3, align 1, !dbg !3163
  br label %231, !dbg !3163

159:                                              ; preds = %54
    #dbg_label(!3164, !3165)
  %160 = load i8, ptr @forceOverwrite, align 1, !dbg !3166
  %161 = icmp ne i8 %160, 0, !dbg !3166
  br i1 %161, label %162, label %194, !dbg !3166

162:                                              ; preds = %159
  %163 = load ptr, ptr %4, align 8, !dbg !3168
  call void @rewind(ptr noundef %163), !dbg !3170
  br label %164, !dbg !3171

164:                                              ; preds = %162, %192
  %165 = load ptr, ptr %4, align 8, !dbg !3172
  %166 = call zeroext i8 @myfeof(ptr noundef %165), !dbg !3175
  %167 = icmp ne i8 %166, 0, !dbg !3175
  br i1 %167, label %168, label %169, !dbg !3175

168:                                              ; preds = %164
  br label %193, !dbg !3176

169:                                              ; preds = %164
  %170 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !3177
  %171 = load ptr, ptr %4, align 8, !dbg !3178
  %172 = call i64 @fread(ptr noundef %170, i64 noundef 1, i64 noundef 5000, ptr noundef %171), !dbg !3179
  %173 = trunc i64 %172 to i32, !dbg !3179
  store i32 %173, ptr %10, align 4, !dbg !3180
  %174 = load ptr, ptr %4, align 8, !dbg !3181
  %175 = call i32 @ferror(ptr noundef %174) #10, !dbg !3183
  %176 = icmp ne i32 %175, 0, !dbg !3183
  br i1 %176, label %177, label %178, !dbg !3183

177:                                              ; preds = %169
  br label %200, !dbg !3184

178:                                              ; preds = %169
  %179 = load i32, ptr %10, align 4, !dbg !3185
  %180 = icmp sgt i32 %179, 0, !dbg !3187
  br i1 %180, label %181, label %187, !dbg !3187

181:                                              ; preds = %178
  %182 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !3188
  %183 = load i32, ptr %10, align 4, !dbg !3189
  %184 = sext i32 %183 to i64, !dbg !3189
  %185 = load ptr, ptr %5, align 8, !dbg !3190
  %186 = call i64 @fwrite(ptr noundef %182, i64 noundef 1, i64 noundef %184, ptr noundef %185), !dbg !3191
  br label %187, !dbg !3191

187:                                              ; preds = %181, %178
  %188 = load ptr, ptr %5, align 8, !dbg !3192
  %189 = call i32 @ferror(ptr noundef %188) #10, !dbg !3194
  %190 = icmp ne i32 %189, 0, !dbg !3194
  br i1 %190, label %191, label %192, !dbg !3194

191:                                              ; preds = %187
  br label %200, !dbg !3195

192:                                              ; preds = %187
  br label %164, !dbg !3171, !llvm.loop !3196

193:                                              ; preds = %168
  br label %119, !dbg !3198

194:                                              ; preds = %159
  br label %195, !dbg !3166

195:                                              ; preds = %194, %79, %41
    #dbg_label(!3199, !3200)
  %196 = load ptr, ptr %6, align 8, !dbg !3201
  call void @BZ2_bzReadClose(ptr noundef %8, ptr noundef %196), !dbg !3202
  %197 = load i32, ptr %7, align 4, !dbg !3203
  switch i32 %197, label %230 [
    i32 -9, label %198
    i32 -6, label %199
    i32 -4, label %201
    i32 -3, label %202
    i32 -7, label %203
    i32 -5, label %204
  ], !dbg !3204

198:                                              ; preds = %195
  call void @configError() #13, !dbg !3205
  unreachable, !dbg !3205

199:                                              ; preds = %195
  br label %200, !dbg !3205

200:                                              ; preds = %199, %191, %177, %150, %140, %134, %129, %123, %74, %26, %21
    #dbg_label(!3207, !3208)
  call void @ioError() #13, !dbg !3209
  unreachable, !dbg !3209

201:                                              ; preds = %195
  call void @crcError() #13, !dbg !3210
  unreachable, !dbg !3210

202:                                              ; preds = %195
  call void @outOfMemory() #13, !dbg !3211
  unreachable, !dbg !3211

203:                                              ; preds = %195
  call void @compressedStreamEOF() #13, !dbg !3212
  unreachable, !dbg !3212

204:                                              ; preds = %195
  %205 = load ptr, ptr %4, align 8, !dbg !3213
  %206 = load ptr, ptr @stdin, align 8, !dbg !3215
  %207 = icmp ne ptr %205, %206, !dbg !3216
  br i1 %207, label %208, label %211, !dbg !3216

208:                                              ; preds = %204
  %209 = load ptr, ptr %4, align 8, !dbg !3217
  %210 = call i32 @fclose(ptr noundef %209), !dbg !3218
  br label %211, !dbg !3218

211:                                              ; preds = %208, %204
  %212 = load ptr, ptr %5, align 8, !dbg !3219
  %213 = load ptr, ptr @stdout, align 8, !dbg !3221
  %214 = icmp ne ptr %212, %213, !dbg !3222
  br i1 %214, label %215, label %218, !dbg !3222

215:                                              ; preds = %211
  %216 = load ptr, ptr %5, align 8, !dbg !3223
  %217 = call i32 @fclose(ptr noundef %216), !dbg !3224
  br label %218, !dbg !3224

218:                                              ; preds = %215, %211
  %219 = load i32, ptr %11, align 4, !dbg !3225
  %220 = icmp eq i32 %219, 1, !dbg !3227
  br i1 %220, label %221, label %222, !dbg !3227

221:                                              ; preds = %218
  store i8 0, ptr %3, align 1, !dbg !3228
  br label %231, !dbg !3228

222:                                              ; preds = %218
  %223 = load i8, ptr @noisy, align 1, !dbg !3230
  %224 = icmp ne i8 %223, 0, !dbg !3230
  br i1 %224, label %225, label %229, !dbg !3230

225:                                              ; preds = %222
  %226 = load ptr, ptr @stderr, align 8, !dbg !3233
  %227 = load ptr, ptr @progName, align 8, !dbg !3234
  %228 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef @.str.90, ptr noundef %227, ptr noundef @inName) #10, !dbg !3235
  br label %229, !dbg !3235

229:                                              ; preds = %225, %222
  store i8 1, ptr %3, align 1, !dbg !3236
  br label %231, !dbg !3236

230:                                              ; preds = %195
  call void @panic(ptr noundef @.str.91) #13, !dbg !3237
  unreachable, !dbg !3237

231:                                              ; preds = %229, %221, %158
  %232 = load i8, ptr %3, align 1, !dbg !3238
  ret i8 %232, !dbg !3238
}

declare ptr @BZ2_bzReadOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @BZ2_bzRead(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare void @BZ2_bzReadGetUnused(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @BZ2_bzReadClose(ptr noundef, ptr noundef) #1

declare void @rewind(ptr noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @crcError() #5 !dbg !3239 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !3240
  %2 = load ptr, ptr @progName, align 8, !dbg !3241
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.92, ptr noundef %2) #10, !dbg !3242
  call void @showFileNames(), !dbg !3243
  call void @cadvise(), !dbg !3244
  call void @cleanUpAndFail(i32 noundef 2) #13, !dbg !3245
  unreachable, !dbg !3245
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @compressedStreamEOF() #5 !dbg !3246 {
  %1 = load i8, ptr @noisy, align 1, !dbg !3247
  %2 = icmp ne i8 %1, 0, !dbg !3247
  br i1 %2, label %3, label %8, !dbg !3247

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !3249
  %5 = load ptr, ptr @progName, align 8, !dbg !3251
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.93, ptr noundef %5) #10, !dbg !3252
  %7 = load ptr, ptr @progName, align 8, !dbg !3253
  call void @perror(ptr noundef %7), !dbg !3254
  call void @showFileNames(), !dbg !3255
  call void @cadvise(), !dbg !3256
  br label %8, !dbg !3257

8:                                                ; preds = %3, %0
  call void @cleanUpAndFail(i32 noundef 2) #13, !dbg !3258
  unreachable, !dbg !3258
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @testStream(ptr noundef %0) #0 !dbg !3259 {
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
    #dbg_declare(ptr %3, !3260, !DIExpression(), !3261)
    #dbg_declare(ptr %4, !3262, !DIExpression(), !3263)
  store ptr null, ptr %4, align 8, !dbg !3263
    #dbg_declare(ptr %5, !3264, !DIExpression(), !3265)
    #dbg_declare(ptr %6, !3266, !DIExpression(), !3267)
    #dbg_declare(ptr %7, !3268, !DIExpression(), !3269)
    #dbg_declare(ptr %8, !3270, !DIExpression(), !3271)
    #dbg_declare(ptr %9, !3272, !DIExpression(), !3273)
    #dbg_declare(ptr %10, !3274, !DIExpression(), !3275)
    #dbg_declare(ptr %11, !3276, !DIExpression(), !3277)
    #dbg_declare(ptr %12, !3278, !DIExpression(), !3279)
    #dbg_declare(ptr %13, !3280, !DIExpression(), !3281)
    #dbg_declare(ptr %14, !3282, !DIExpression(), !3283)
    #dbg_declare(ptr %15, !3284, !DIExpression(), !3285)
  store i32 0, ptr %13, align 4, !dbg !3286
  store i32 0, ptr %9, align 4, !dbg !3287
  %16 = load ptr, ptr %3, align 8, !dbg !3288
  %17 = call i32 @ferror(ptr noundef %16) #10, !dbg !3290
  %18 = icmp ne i32 %17, 0, !dbg !3290
  br i1 %18, label %19, label %20, !dbg !3290

19:                                               ; preds = %1
  br label %121, !dbg !3291

20:                                               ; preds = %1
  br label %21, !dbg !3292

21:                                               ; preds = %20, %90
  %22 = load ptr, ptr %3, align 8, !dbg !3293
  %23 = load i32, ptr @verbosity, align 4, !dbg !3295
  %24 = load i8, ptr @smallMode, align 1, !dbg !3296
  %25 = zext i8 %24 to i32, !dbg !3297
  %26 = getelementptr inbounds [5000 x i8], ptr %12, i64 0, i64 0, !dbg !3298
  %27 = load i32, ptr %13, align 4, !dbg !3299
  %28 = call ptr @BZ2_bzReadOpen(ptr noundef %5, ptr noundef %22, i32 noundef %23, i32 noundef %25, ptr noundef %26, i32 noundef %27), !dbg !3300
  store ptr %28, ptr %4, align 8, !dbg !3301
  %29 = load ptr, ptr %4, align 8, !dbg !3302
  %30 = icmp eq ptr %29, null, !dbg !3304
  br i1 %30, label %34, label %31, !dbg !3305

31:                                               ; preds = %21
  %32 = load i32, ptr %5, align 4, !dbg !3306
  %33 = icmp ne i32 %32, 0, !dbg !3307
  br i1 %33, label %34, label %35, !dbg !3305

34:                                               ; preds = %31, %21
  br label %109, !dbg !3308

35:                                               ; preds = %31
  %36 = load i32, ptr %9, align 4, !dbg !3309
  %37 = add nsw i32 %36, 1, !dbg !3309
  store i32 %37, ptr %9, align 4, !dbg !3309
  br label %38, !dbg !3310

38:                                               ; preds = %48, %35
  %39 = load i32, ptr %5, align 4, !dbg !3311
  %40 = icmp eq i32 %39, 0, !dbg !3312
  br i1 %40, label %41, label %49, !dbg !3310

41:                                               ; preds = %38
  %42 = load ptr, ptr %4, align 8, !dbg !3313
  %43 = getelementptr inbounds [5000 x i8], ptr %11, i64 0, i64 0, !dbg !3315
  %44 = call i32 @BZ2_bzRead(ptr noundef %5, ptr noundef %42, ptr noundef %43, i32 noundef 5000), !dbg !3316
  store i32 %44, ptr %8, align 4, !dbg !3317
  %45 = load i32, ptr %5, align 4, !dbg !3318
  %46 = icmp eq i32 %45, -5, !dbg !3320
  br i1 %46, label %47, label %48, !dbg !3320

47:                                               ; preds = %41
  br label %109, !dbg !3321

48:                                               ; preds = %41
  br label %38, !dbg !3310, !llvm.loop !3322

49:                                               ; preds = %38
  %50 = load i32, ptr %5, align 4, !dbg !3324
  %51 = icmp ne i32 %50, 4, !dbg !3326
  br i1 %51, label %52, label %53, !dbg !3326

52:                                               ; preds = %49
  br label %109, !dbg !3327

53:                                               ; preds = %49
  %54 = load ptr, ptr %4, align 8, !dbg !3328
  call void @BZ2_bzReadGetUnused(ptr noundef %5, ptr noundef %54, ptr noundef %14, ptr noundef %13), !dbg !3329
  %55 = load i32, ptr %5, align 4, !dbg !3330
  %56 = icmp ne i32 %55, 0, !dbg !3332
  br i1 %56, label %57, label %58, !dbg !3332

57:                                               ; preds = %53
  call void @panic(ptr noundef @.str.98) #13, !dbg !3333
  unreachable, !dbg !3333

58:                                               ; preds = %53
  %59 = load ptr, ptr %14, align 8, !dbg !3334
  store ptr %59, ptr %15, align 8, !dbg !3335
  store i32 0, ptr %10, align 4, !dbg !3336
  br label %60, !dbg !3338

60:                                               ; preds = %73, %58
  %61 = load i32, ptr %10, align 4, !dbg !3339
  %62 = load i32, ptr %13, align 4, !dbg !3341
  %63 = icmp slt i32 %61, %62, !dbg !3342
  br i1 %63, label %64, label %76, !dbg !3343

64:                                               ; preds = %60
  %65 = load ptr, ptr %15, align 8, !dbg !3344
  %66 = load i32, ptr %10, align 4, !dbg !3345
  %67 = sext i32 %66 to i64, !dbg !3344
  %68 = getelementptr inbounds i8, ptr %65, i64 %67, !dbg !3344
  %69 = load i8, ptr %68, align 1, !dbg !3344
  %70 = load i32, ptr %10, align 4, !dbg !3346
  %71 = sext i32 %70 to i64, !dbg !3347
  %72 = getelementptr inbounds [5000 x i8], ptr %12, i64 0, i64 %71, !dbg !3347
  store i8 %69, ptr %72, align 1, !dbg !3348
  br label %73, !dbg !3347

73:                                               ; preds = %64
  %74 = load i32, ptr %10, align 4, !dbg !3349
  %75 = add nsw i32 %74, 1, !dbg !3349
  store i32 %75, ptr %10, align 4, !dbg !3349
  br label %60, !dbg !3350, !llvm.loop !3351

76:                                               ; preds = %60
  %77 = load ptr, ptr %4, align 8, !dbg !3353
  call void @BZ2_bzReadClose(ptr noundef %5, ptr noundef %77), !dbg !3354
  %78 = load i32, ptr %5, align 4, !dbg !3355
  %79 = icmp ne i32 %78, 0, !dbg !3357
  br i1 %79, label %80, label %81, !dbg !3357

80:                                               ; preds = %76
  call void @panic(ptr noundef @.str.98) #13, !dbg !3358
  unreachable, !dbg !3358

81:                                               ; preds = %76
  %82 = load i32, ptr %13, align 4, !dbg !3359
  %83 = icmp eq i32 %82, 0, !dbg !3361
  br i1 %83, label %84, label %90, !dbg !3362

84:                                               ; preds = %81
  %85 = load ptr, ptr %3, align 8, !dbg !3363
  %86 = call zeroext i8 @myfeof(ptr noundef %85), !dbg !3364
  %87 = zext i8 %86 to i32, !dbg !3364
  %88 = icmp ne i32 %87, 0, !dbg !3364
  br i1 %88, label %89, label %90, !dbg !3362

89:                                               ; preds = %84
  br label %91, !dbg !3365

90:                                               ; preds = %84, %81
  br label %21, !dbg !3292, !llvm.loop !3366

91:                                               ; preds = %89
  %92 = load ptr, ptr %3, align 8, !dbg !3368
  %93 = call i32 @ferror(ptr noundef %92) #10, !dbg !3370
  %94 = icmp ne i32 %93, 0, !dbg !3370
  br i1 %94, label %95, label %96, !dbg !3370

95:                                               ; preds = %91
  br label %121, !dbg !3371

96:                                               ; preds = %91
  %97 = load ptr, ptr %3, align 8, !dbg !3372
  %98 = call i32 @fclose(ptr noundef %97), !dbg !3373
  store i32 %98, ptr %7, align 4, !dbg !3374
  %99 = load i32, ptr %7, align 4, !dbg !3375
  %100 = icmp eq i32 %99, -1, !dbg !3377
  br i1 %100, label %101, label %102, !dbg !3377

101:                                              ; preds = %96
  br label %121, !dbg !3378

102:                                              ; preds = %96
  %103 = load i32, ptr @verbosity, align 4, !dbg !3379
  %104 = icmp sge i32 %103, 2, !dbg !3381
  br i1 %104, label %105, label %108, !dbg !3381

105:                                              ; preds = %102
  %106 = load ptr, ptr @stderr, align 8, !dbg !3382
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str.89) #10, !dbg !3383
  br label %108, !dbg !3383

108:                                              ; preds = %105, %102
  store i8 1, ptr %2, align 1, !dbg !3384
  br label %150, !dbg !3384

109:                                              ; preds = %52, %47, %34
    #dbg_label(!3385, !3386)
  %110 = load ptr, ptr %4, align 8, !dbg !3387
  call void @BZ2_bzReadClose(ptr noundef %6, ptr noundef %110), !dbg !3388
  %111 = load i32, ptr @verbosity, align 4, !dbg !3389
  %112 = icmp eq i32 %111, 0, !dbg !3391
  br i1 %112, label %113, label %117, !dbg !3391

113:                                              ; preds = %109
  %114 = load ptr, ptr @stderr, align 8, !dbg !3392
  %115 = load ptr, ptr @progName, align 8, !dbg !3393
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.99, ptr noundef %115, ptr noundef @inName) #10, !dbg !3394
  br label %117, !dbg !3394

117:                                              ; preds = %113, %109
  %118 = load i32, ptr %5, align 4, !dbg !3395
  switch i32 %118, label %149 [
    i32 -9, label %119
    i32 -6, label %120
    i32 -4, label %122
    i32 -3, label %125
    i32 -7, label %126
    i32 -5, label %129
  ], !dbg !3396

119:                                              ; preds = %117
  call void @configError() #13, !dbg !3397
  unreachable, !dbg !3397

120:                                              ; preds = %117
  br label %121, !dbg !3397

121:                                              ; preds = %120, %101, %95, %19
    #dbg_label(!3399, !3400)
  call void @ioError() #13, !dbg !3401
  unreachable, !dbg !3401

122:                                              ; preds = %117
  %123 = load ptr, ptr @stderr, align 8, !dbg !3402
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str.100) #10, !dbg !3403
  store i8 0, ptr %2, align 1, !dbg !3404
  br label %150, !dbg !3404

125:                                              ; preds = %117
  call void @outOfMemory() #13, !dbg !3405
  unreachable, !dbg !3405

126:                                              ; preds = %117
  %127 = load ptr, ptr @stderr, align 8, !dbg !3406
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.101) #10, !dbg !3407
  store i8 0, ptr %2, align 1, !dbg !3408
  br label %150, !dbg !3408

129:                                              ; preds = %117
  %130 = load ptr, ptr %3, align 8, !dbg !3409
  %131 = load ptr, ptr @stdin, align 8, !dbg !3411
  %132 = icmp ne ptr %130, %131, !dbg !3412
  br i1 %132, label %133, label %136, !dbg !3412

133:                                              ; preds = %129
  %134 = load ptr, ptr %3, align 8, !dbg !3413
  %135 = call i32 @fclose(ptr noundef %134), !dbg !3414
  br label %136, !dbg !3414

136:                                              ; preds = %133, %129
  %137 = load i32, ptr %9, align 4, !dbg !3415
  %138 = icmp eq i32 %137, 1, !dbg !3417
  br i1 %138, label %139, label %142, !dbg !3417

139:                                              ; preds = %136
  %140 = load ptr, ptr @stderr, align 8, !dbg !3418
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.102) #10, !dbg !3420
  store i8 0, ptr %2, align 1, !dbg !3421
  br label %150, !dbg !3421

142:                                              ; preds = %136
  %143 = load i8, ptr @noisy, align 1, !dbg !3422
  %144 = icmp ne i8 %143, 0, !dbg !3422
  br i1 %144, label %145, label %148, !dbg !3422

145:                                              ; preds = %142
  %146 = load ptr, ptr @stderr, align 8, !dbg !3425
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef @.str.103) #10, !dbg !3426
  br label %148, !dbg !3426

148:                                              ; preds = %145, %142
  store i8 1, ptr %2, align 1, !dbg !3427
  br label %150, !dbg !3427

149:                                              ; preds = %117
  call void @panic(ptr noundef @.str.104) #13, !dbg !3428
  unreachable, !dbg !3428

150:                                              ; preds = %148, %139, %126, %122, %108
  %151 = load i8, ptr %2, align 1, !dbg !3429
  ret i8 %151, !dbg !3429
}

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
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }
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
!570 = distinct !DISubprogram(name: "fopen_output_safely", scope: !2, file: !2, line: 1042, type: !571, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !575)
!571 = !DISubroutineType(types: !572)
!572 = !{!213, !46, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!575 = !{}
!576 = !DILocalVariable(name: "name", arg: 1, scope: !570, file: !2, line: 1042, type: !46)
!577 = !DILocation(line: 1042, column: 35, scope: !570)
!578 = !DILocalVariable(name: "mode", arg: 2, scope: !570, file: !2, line: 1042, type: !573)
!579 = !DILocation(line: 1042, column: 53, scope: !570)
!580 = !DILocalVariable(name: "fp", scope: !570, file: !2, line: 1045, type: !213)
!581 = !DILocation(line: 1045, column: 14, scope: !570)
!582 = !DILocalVariable(name: "fh", scope: !570, file: !2, line: 1046, type: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "IntNative", file: !2, line: 268, baseType: !44)
!584 = !DILocation(line: 1046, column: 14, scope: !570)
!585 = !DILocation(line: 1047, column: 14, scope: !570)
!586 = !DILocation(line: 1047, column: 9, scope: !570)
!587 = !DILocation(line: 1047, column: 7, scope: !570)
!588 = !DILocation(line: 1048, column: 8, scope: !589)
!589 = distinct !DILexicalBlock(scope: !570, file: !2, line: 1048, column: 8)
!590 = !DILocation(line: 1048, column: 11, scope: !589)
!591 = !DILocation(line: 1048, column: 18, scope: !589)
!592 = !DILocation(line: 1049, column: 16, scope: !570)
!593 = !DILocation(line: 1049, column: 20, scope: !570)
!594 = !DILocation(line: 1049, column: 9, scope: !570)
!595 = !DILocation(line: 1049, column: 7, scope: !570)
!596 = !DILocation(line: 1050, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !570, file: !2, line: 1050, column: 8)
!598 = !DILocation(line: 1050, column: 11, scope: !597)
!599 = !DILocation(line: 1050, column: 26, scope: !597)
!600 = !DILocation(line: 1050, column: 20, scope: !597)
!601 = !DILocation(line: 1051, column: 11, scope: !570)
!602 = !DILocation(line: 1051, column: 4, scope: !570)
!603 = !DILocation(line: 1055, column: 1, scope: !570)
!604 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1849, type: !605, scopeLine: 1850, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !575)
!605 = !DISubroutineType(types: !606)
!606 = !{!583, !583, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!608 = !DILocalVariable(name: "argc", arg: 1, scope: !604, file: !2, line: 1849, type: !583)
!609 = !DILocation(line: 1849, column: 28, scope: !604)
!610 = !DILocalVariable(name: "argv", arg: 2, scope: !604, file: !2, line: 1849, type: !607)
!611 = !DILocation(line: 1849, column: 40, scope: !604)
!612 = !DILocalVariable(name: "i", scope: !604, file: !2, line: 1851, type: !43)
!613 = !DILocation(line: 1851, column: 11, scope: !604)
!614 = !DILocalVariable(name: "j", scope: !604, file: !2, line: 1851, type: !43)
!615 = !DILocation(line: 1851, column: 14, scope: !604)
!616 = !DILocalVariable(name: "tmp", scope: !604, file: !2, line: 1852, type: !46)
!617 = !DILocation(line: 1852, column: 12, scope: !604)
!618 = !DILocalVariable(name: "argList", scope: !604, file: !2, line: 1853, type: !48)
!619 = !DILocation(line: 1853, column: 12, scope: !604)
!620 = !DILocalVariable(name: "aa", scope: !604, file: !2, line: 1854, type: !48)
!621 = !DILocation(line: 1854, column: 12, scope: !604)
!622 = !DILocalVariable(name: "decode", scope: !604, file: !2, line: 1855, type: !41)
!623 = !DILocation(line: 1855, column: 11, scope: !604)
!624 = !DILocation(line: 1864, column: 28, scope: !604)
!625 = !DILocation(line: 1865, column: 28, scope: !604)
!626 = !DILocation(line: 1866, column: 28, scope: !604)
!627 = !DILocation(line: 1867, column: 28, scope: !604)
!628 = !DILocation(line: 1868, column: 28, scope: !604)
!629 = !DILocation(line: 1869, column: 28, scope: !604)
!630 = !DILocation(line: 1870, column: 28, scope: !604)
!631 = !DILocation(line: 1871, column: 28, scope: !604)
!632 = !DILocation(line: 1872, column: 28, scope: !604)
!633 = !DILocation(line: 1873, column: 28, scope: !604)
!634 = !DILocation(line: 1874, column: 28, scope: !604)
!635 = !DILocation(line: 1875, column: 28, scope: !604)
!636 = !DILocation(line: 1876, column: 28, scope: !604)
!637 = !DILocation(line: 1877, column: 28, scope: !604)
!638 = !DILocation(line: 1878, column: 10, scope: !604)
!639 = !DILocation(line: 1878, column: 6, scope: !604)
!640 = !DILocation(line: 1881, column: 4, scope: !604)
!641 = !DILocation(line: 1884, column: 4, scope: !604)
!642 = !DILocation(line: 1888, column: 4, scope: !604)
!643 = !DILocation(line: 1889, column: 4, scope: !604)
!644 = !DILocation(line: 1891, column: 35, scope: !604)
!645 = !DILocation(line: 1891, column: 4, scope: !604)
!646 = !DILocation(line: 1892, column: 13, scope: !604)
!647 = !DILocation(line: 1893, column: 13, scope: !648)
!648 = distinct !DILexicalBlock(scope: !604, file: !2, line: 1893, column: 4)
!649 = !DILocation(line: 1893, column: 9, scope: !648)
!650 = !DILocation(line: 1893, column: 36, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !2, line: 1893, column: 4)
!652 = !DILocation(line: 1893, column: 35, scope: !651)
!653 = !DILocation(line: 1893, column: 40, scope: !651)
!654 = !DILocation(line: 1893, column: 4, scope: !648)
!655 = !DILocation(line: 1894, column: 12, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !2, line: 1894, column: 11)
!657 = !DILocation(line: 1894, column: 11, scope: !656)
!658 = !DILocation(line: 1894, column: 16, scope: !656)
!659 = !DILocation(line: 1894, column: 40, scope: !656)
!660 = !DILocation(line: 1894, column: 44, scope: !656)
!661 = !DILocation(line: 1894, column: 38, scope: !656)
!662 = !DILocation(line: 1894, column: 29, scope: !656)
!663 = !DILocation(line: 1894, column: 19, scope: !656)
!664 = !DILocation(line: 1893, column: 52, scope: !651)
!665 = !DILocation(line: 1893, column: 4, scope: !651)
!666 = distinct !{!666, !654, !667, !668}
!667 = !DILocation(line: 1894, column: 46, scope: !648)
!668 = !{!"llvm.loop.mustprogress"}
!669 = !DILocation(line: 1900, column: 12, scope: !604)
!670 = !DILocation(line: 1901, column: 4, scope: !604)
!671 = !DILocation(line: 1902, column: 4, scope: !604)
!672 = !DILocation(line: 1903, column: 11, scope: !673)
!673 = distinct !DILexicalBlock(scope: !604, file: !2, line: 1903, column: 4)
!674 = !DILocation(line: 1903, column: 9, scope: !673)
!675 = !DILocation(line: 1903, column: 16, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !2, line: 1903, column: 4)
!677 = !DILocation(line: 1903, column: 21, scope: !676)
!678 = !DILocation(line: 1903, column: 25, scope: !676)
!679 = !DILocation(line: 1903, column: 18, scope: !676)
!680 = !DILocation(line: 1903, column: 4, scope: !673)
!681 = !DILocation(line: 1904, column: 7, scope: !676)
!682 = !DILocation(line: 1903, column: 30, scope: !676)
!683 = !DILocation(line: 1903, column: 4, scope: !676)
!684 = distinct !{!684, !680, !685, !668}
!685 = !DILocation(line: 1904, column: 7, scope: !673)
!686 = !DILocation(line: 1908, column: 20, scope: !604)
!687 = !DILocation(line: 1909, column: 20, scope: !604)
!688 = !DILocation(line: 1910, column: 20, scope: !604)
!689 = !DILocation(line: 1911, column: 14, scope: !690)
!690 = distinct !DILexicalBlock(scope: !604, file: !2, line: 1911, column: 4)
!691 = !DILocation(line: 1911, column: 12, scope: !690)
!692 = !DILocation(line: 1911, column: 9, scope: !690)
!693 = !DILocation(line: 1911, column: 23, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !2, line: 1911, column: 4)
!695 = !DILocation(line: 1911, column: 26, scope: !694)
!696 = !DILocation(line: 1911, column: 4, scope: !690)
!697 = !DILocation(line: 1912, column: 11, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !2, line: 1912, column: 11)
!699 = distinct !DILexicalBlock(scope: !694, file: !2, line: 1911, column: 50)
!700 = !DILocation(line: 1912, column: 34, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !2, line: 1912, column: 25)
!702 = !DILocation(line: 1912, column: 43, scope: !701)
!703 = !DILocation(line: 1913, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !2, line: 1913, column: 11)
!705 = !DILocation(line: 1913, column: 15, scope: !704)
!706 = !DILocation(line: 1913, column: 23, scope: !704)
!707 = !DILocation(line: 1913, column: 30, scope: !704)
!708 = !DILocation(line: 1913, column: 33, scope: !704)
!709 = !DILocation(line: 1913, column: 41, scope: !704)
!710 = !DILocation(line: 1914, column: 19, scope: !699)
!711 = !DILocation(line: 1915, column: 11, scope: !712)
!712 = distinct !DILexicalBlock(scope: !699, file: !2, line: 1915, column: 11)
!713 = !DILocation(line: 1915, column: 43, scope: !712)
!714 = !DILocation(line: 1915, column: 47, scope: !712)
!715 = !DILocation(line: 1915, column: 36, scope: !712)
!716 = !DILocation(line: 1915, column: 29, scope: !712)
!717 = !DILocation(line: 1915, column: 27, scope: !712)
!718 = !DILocation(line: 1916, column: 42, scope: !712)
!719 = !DILocation(line: 1916, column: 46, scope: !712)
!720 = !DILocation(line: 1916, column: 35, scope: !712)
!721 = !DILocation(line: 1916, column: 28, scope: !712)
!722 = !DILocation(line: 1916, column: 26, scope: !712)
!723 = !DILocation(line: 1916, column: 10, scope: !712)
!724 = !DILocation(line: 1917, column: 4, scope: !699)
!725 = !DILocation(line: 1911, column: 40, scope: !694)
!726 = !DILocation(line: 1911, column: 44, scope: !694)
!727 = !DILocation(line: 1911, column: 38, scope: !694)
!728 = !DILocation(line: 1911, column: 4, scope: !694)
!729 = distinct !{!729, !696, !730, !668}
!730 = !DILocation(line: 1917, column: 4, scope: !690)
!731 = !DILocation(line: 1921, column: 8, scope: !732)
!732 = distinct !DILexicalBlock(scope: !604, file: !2, line: 1921, column: 8)
!733 = !DILocation(line: 1921, column: 21, scope: !732)
!734 = !DILocation(line: 1922, column: 15, scope: !732)
!735 = !DILocation(line: 1922, column: 7, scope: !732)
!736 = !DILocation(line: 1922, column: 38, scope: !732)
!737 = !DILocation(line: 1927, column: 11, scope: !604)
!738 = !DILocation(line: 1929, column: 19, scope: !739)
!739 = distinct !DILexicalBlock(scope: !604, file: !2, line: 1929, column: 9)
!740 = !DILocation(line: 1929, column: 10, scope: !739)
!741 = !DILocation(line: 1929, column: 39, scope: !739)
!742 = !DILocation(line: 1929, column: 45, scope: !739)
!743 = !DILocation(line: 1930, column: 19, scope: !739)
!744 = !DILocation(line: 1930, column: 10, scope: !739)
!745 = !DILocation(line: 1930, column: 39, scope: !739)
!746 = !DILocation(line: 1931, column: 14, scope: !739)
!747 = !DILocation(line: 1931, column: 7, scope: !739)
!748 = !DILocation(line: 1933, column: 19, scope: !749)
!749 = distinct !DILexicalBlock(scope: !604, file: !2, line: 1933, column: 9)
!750 = !DILocation(line: 1933, column: 10, scope: !749)
!751 = !DILocation(line: 1933, column: 39, scope: !749)
!752 = !DILocation(line: 1933, column: 45, scope: !749)
!753 = !DILocation(line: 1934, column: 19, scope: !749)
!754 = !DILocation(line: 1934, column: 10, scope: !749)
!755 = !DILocation(line: 1934, column: 39, scope: !749)
!756 = !DILocation(line: 1934, column: 45, scope: !749)
!757 = !DILocation(line: 1935, column: 19, scope: !749)
!758 = !DILocation(line: 1935, column: 10, scope: !749)
!759 = !DILocation(line: 1935, column: 38, scope: !749)
!760 = !DILocation(line: 1935, column: 45, scope: !749)
!761 = !DILocation(line: 1936, column: 19, scope: !749)
!762 = !DILocation(line: 1936, column: 10, scope: !749)
!763 = !DILocation(line: 1936, column: 38, scope: !749)
!764 = !DILocation(line: 1937, column: 14, scope: !765)
!765 = distinct !DILexicalBlock(scope: !749, file: !2, line: 1936, column: 47)
!766 = !DILocation(line: 1938, column: 18, scope: !765)
!767 = !DILocation(line: 1938, column: 31, scope: !765)
!768 = !DILocation(line: 1938, column: 17, scope: !765)
!769 = !DILocation(line: 1938, column: 15, scope: !765)
!770 = !DILocation(line: 1939, column: 4, scope: !765)
!771 = !DILocation(line: 1943, column: 14, scope: !772)
!772 = distinct !DILexicalBlock(scope: !604, file: !2, line: 1943, column: 4)
!773 = !DILocation(line: 1943, column: 12, scope: !772)
!774 = !DILocation(line: 1943, column: 9, scope: !772)
!775 = !DILocation(line: 1943, column: 23, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !2, line: 1943, column: 4)
!777 = !DILocation(line: 1943, column: 26, scope: !776)
!778 = !DILocation(line: 1943, column: 4, scope: !772)
!779 = !DILocation(line: 1944, column: 11, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 1944, column: 11)
!781 = distinct !DILexicalBlock(scope: !776, file: !2, line: 1943, column: 50)
!782 = !DILocation(line: 1944, column: 25, scope: !780)
!783 = !DILocation(line: 1945, column: 11, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !2, line: 1945, column: 11)
!785 = !DILocation(line: 1945, column: 15, scope: !784)
!786 = !DILocation(line: 1945, column: 23, scope: !784)
!787 = !DILocation(line: 1945, column: 30, scope: !784)
!788 = !DILocation(line: 1945, column: 33, scope: !784)
!789 = !DILocation(line: 1945, column: 37, scope: !784)
!790 = !DILocation(line: 1945, column: 45, scope: !784)
!791 = !DILocation(line: 1946, column: 17, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1946, column: 10)
!793 = distinct !DILexicalBlock(scope: !784, file: !2, line: 1945, column: 53)
!794 = !DILocation(line: 1946, column: 15, scope: !792)
!795 = !DILocation(line: 1946, column: 22, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !2, line: 1946, column: 10)
!797 = !DILocation(line: 1946, column: 26, scope: !796)
!798 = !DILocation(line: 1946, column: 31, scope: !796)
!799 = !DILocation(line: 1946, column: 34, scope: !796)
!800 = !DILocation(line: 1946, column: 10, scope: !792)
!801 = !DILocation(line: 1947, column: 21, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !2, line: 1946, column: 48)
!803 = !DILocation(line: 1947, column: 25, scope: !802)
!804 = !DILocation(line: 1947, column: 30, scope: !802)
!805 = !DILocation(line: 1947, column: 13, scope: !802)
!806 = !DILocation(line: 1948, column: 43, scope: !807)
!807 = distinct !DILexicalBlock(scope: !802, file: !2, line: 1947, column: 34)
!808 = !DILocation(line: 1948, column: 53, scope: !807)
!809 = !DILocation(line: 1949, column: 43, scope: !807)
!810 = !DILocation(line: 1949, column: 53, scope: !807)
!811 = !DILocation(line: 1950, column: 43, scope: !807)
!812 = !DILocation(line: 1950, column: 51, scope: !807)
!813 = !DILocation(line: 1951, column: 43, scope: !807)
!814 = !DILocation(line: 1951, column: 51, scope: !807)
!815 = !DILocation(line: 1952, column: 43, scope: !807)
!816 = !DILocation(line: 1952, column: 54, scope: !807)
!817 = !DILocation(line: 1953, column: 43, scope: !807)
!818 = !DILocation(line: 1953, column: 51, scope: !807)
!819 = !DILocation(line: 1954, column: 43, scope: !807)
!820 = !DILocation(line: 1954, column: 51, scope: !807)
!821 = !DILocation(line: 1955, column: 43, scope: !807)
!822 = !DILocation(line: 1955, column: 52, scope: !807)
!823 = !DILocation(line: 1956, column: 43, scope: !807)
!824 = !DILocation(line: 1956, column: 48, scope: !807)
!825 = !DILocation(line: 1957, column: 43, scope: !807)
!826 = !DILocation(line: 1957, column: 48, scope: !807)
!827 = !DILocation(line: 1958, column: 43, scope: !807)
!828 = !DILocation(line: 1958, column: 48, scope: !807)
!829 = !DILocation(line: 1959, column: 43, scope: !807)
!830 = !DILocation(line: 1959, column: 48, scope: !807)
!831 = !DILocation(line: 1960, column: 43, scope: !807)
!832 = !DILocation(line: 1960, column: 48, scope: !807)
!833 = !DILocation(line: 1961, column: 43, scope: !807)
!834 = !DILocation(line: 1961, column: 48, scope: !807)
!835 = !DILocation(line: 1962, column: 43, scope: !807)
!836 = !DILocation(line: 1962, column: 48, scope: !807)
!837 = !DILocation(line: 1963, column: 43, scope: !807)
!838 = !DILocation(line: 1963, column: 48, scope: !807)
!839 = !DILocation(line: 1964, column: 43, scope: !807)
!840 = !DILocation(line: 1964, column: 48, scope: !807)
!841 = !DILocation(line: 1966, column: 26, scope: !807)
!842 = !DILocation(line: 1966, column: 48, scope: !807)
!843 = !DILocation(line: 1967, column: 35, scope: !807)
!844 = !DILocation(line: 1967, column: 39, scope: !807)
!845 = !DILocation(line: 1968, column: 34, scope: !807)
!846 = !DILocation(line: 1968, column: 26, scope: !807)
!847 = !DILocation(line: 1969, column: 26, scope: !807)
!848 = !DILocation(line: 1971, column: 36, scope: !807)
!849 = !DILocation(line: 1972, column: 36, scope: !807)
!850 = !DILocation(line: 1972, column: 46, scope: !807)
!851 = !DILocation(line: 1972, column: 50, scope: !807)
!852 = !DILocation(line: 1971, column: 26, scope: !807)
!853 = !DILocation(line: 1973, column: 34, scope: !807)
!854 = !DILocation(line: 1973, column: 26, scope: !807)
!855 = !DILocation(line: 1974, column: 26, scope: !807)
!856 = !DILocation(line: 1977, column: 10, scope: !802)
!857 = !DILocation(line: 1946, column: 44, scope: !796)
!858 = !DILocation(line: 1946, column: 10, scope: !796)
!859 = distinct !{!859, !800, !860, !668}
!860 = !DILocation(line: 1977, column: 10, scope: !792)
!861 = !DILocation(line: 1978, column: 7, scope: !793)
!862 = !DILocation(line: 1979, column: 4, scope: !781)
!863 = !DILocation(line: 1943, column: 40, scope: !776)
!864 = !DILocation(line: 1943, column: 44, scope: !776)
!865 = !DILocation(line: 1943, column: 38, scope: !776)
!866 = !DILocation(line: 1943, column: 4, scope: !776)
!867 = distinct !{!867, !778, !868, !668}
!868 = !DILocation(line: 1979, column: 4, scope: !772)
!869 = !DILocation(line: 1982, column: 14, scope: !870)
!870 = distinct !DILexicalBlock(scope: !604, file: !2, line: 1982, column: 4)
!871 = !DILocation(line: 1982, column: 12, scope: !870)
!872 = !DILocation(line: 1982, column: 9, scope: !870)
!873 = !DILocation(line: 1982, column: 23, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !2, line: 1982, column: 4)
!875 = !DILocation(line: 1982, column: 26, scope: !874)
!876 = !DILocation(line: 1982, column: 4, scope: !870)
!877 = !DILocation(line: 1983, column: 11, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !2, line: 1983, column: 11)
!879 = distinct !DILexicalBlock(scope: !874, file: !2, line: 1982, column: 50)
!880 = !DILocation(line: 1983, column: 25, scope: !878)
!881 = !DILocation(line: 1984, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !2, line: 1984, column: 11)
!883 = !DILocation(line: 1984, column: 59, scope: !882)
!884 = !DILocation(line: 1984, column: 42, scope: !882)
!885 = !DILocation(line: 1985, column: 11, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !2, line: 1985, column: 11)
!887 = !DILocation(line: 1985, column: 59, scope: !886)
!888 = !DILocation(line: 1985, column: 42, scope: !886)
!889 = !DILocation(line: 1986, column: 11, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !2, line: 1986, column: 11)
!891 = !DILocation(line: 1986, column: 59, scope: !890)
!892 = !DILocation(line: 1986, column: 42, scope: !890)
!893 = !DILocation(line: 1987, column: 11, scope: !894)
!894 = distinct !DILexicalBlock(scope: !890, file: !2, line: 1987, column: 11)
!895 = !DILocation(line: 1987, column: 59, scope: !894)
!896 = !DILocation(line: 1987, column: 42, scope: !894)
!897 = !DILocation(line: 1988, column: 11, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !2, line: 1988, column: 11)
!899 = !DILocation(line: 1988, column: 59, scope: !898)
!900 = !DILocation(line: 1988, column: 42, scope: !898)
!901 = !DILocation(line: 1989, column: 11, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !2, line: 1989, column: 11)
!903 = !DILocation(line: 1989, column: 59, scope: !902)
!904 = !DILocation(line: 1989, column: 42, scope: !902)
!905 = !DILocation(line: 1990, column: 11, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !2, line: 1990, column: 11)
!907 = !DILocation(line: 1990, column: 59, scope: !906)
!908 = !DILocation(line: 1990, column: 42, scope: !906)
!909 = !DILocation(line: 1991, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !2, line: 1991, column: 11)
!911 = !DILocation(line: 1991, column: 59, scope: !910)
!912 = !DILocation(line: 1991, column: 42, scope: !910)
!913 = !DILocation(line: 1992, column: 11, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !2, line: 1992, column: 11)
!915 = !DILocation(line: 1992, column: 42, scope: !914)
!916 = !DILocation(line: 1993, column: 11, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !2, line: 1993, column: 11)
!918 = !DILocation(line: 1993, column: 42, scope: !917)
!919 = !DILocation(line: 1994, column: 11, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !2, line: 1994, column: 11)
!921 = !DILocation(line: 1994, column: 53, scope: !920)
!922 = !DILocation(line: 1994, column: 42, scope: !920)
!923 = !DILocation(line: 1995, column: 11, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !2, line: 1995, column: 11)
!925 = !DILocation(line: 1995, column: 52, scope: !924)
!926 = !DILocation(line: 1995, column: 56, scope: !924)
!927 = !DILocation(line: 1995, column: 42, scope: !924)
!928 = !DILocation(line: 1996, column: 11, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !2, line: 1996, column: 11)
!930 = !DILocation(line: 1996, column: 52, scope: !929)
!931 = !DILocation(line: 1996, column: 56, scope: !929)
!932 = !DILocation(line: 1996, column: 42, scope: !929)
!933 = !DILocation(line: 1997, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !2, line: 1997, column: 11)
!935 = !DILocation(line: 1997, column: 56, scope: !934)
!936 = !DILocation(line: 1997, column: 42, scope: !934)
!937 = !DILocation(line: 1998, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !2, line: 1998, column: 11)
!939 = !DILocation(line: 1998, column: 56, scope: !938)
!940 = !DILocation(line: 1998, column: 42, scope: !938)
!941 = !DILocation(line: 1999, column: 11, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !2, line: 1999, column: 11)
!943 = !DILocation(line: 1999, column: 51, scope: !942)
!944 = !DILocation(line: 1999, column: 42, scope: !942)
!945 = !DILocation(line: 2000, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !2, line: 2000, column: 11)
!947 = !DILocation(line: 2000, column: 52, scope: !948)
!948 = distinct !DILexicalBlock(scope: !946, file: !2, line: 2000, column: 42)
!949 = !DILocation(line: 2000, column: 44, scope: !948)
!950 = !DILocation(line: 2000, column: 64, scope: !948)
!951 = !DILocation(line: 2002, column: 24, scope: !952)
!952 = distinct !DILexicalBlock(scope: !946, file: !2, line: 2002, column: 14)
!953 = !DILocation(line: 2002, column: 28, scope: !952)
!954 = !DILocation(line: 2002, column: 14, scope: !952)
!955 = !DILocation(line: 2002, column: 43, scope: !952)
!956 = !DILocation(line: 2003, column: 23, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !2, line: 2002, column: 49)
!958 = !DILocation(line: 2003, column: 54, scope: !957)
!959 = !DILocation(line: 2003, column: 64, scope: !957)
!960 = !DILocation(line: 2003, column: 68, scope: !957)
!961 = !DILocation(line: 2003, column: 13, scope: !957)
!962 = !DILocation(line: 2004, column: 21, scope: !957)
!963 = !DILocation(line: 2004, column: 13, scope: !957)
!964 = !DILocation(line: 2005, column: 13, scope: !957)
!965 = !DILocation(line: 2007, column: 4, scope: !879)
!966 = !DILocation(line: 1982, column: 40, scope: !874)
!967 = !DILocation(line: 1982, column: 44, scope: !874)
!968 = !DILocation(line: 1982, column: 38, scope: !874)
!969 = !DILocation(line: 1982, column: 4, scope: !874)
!970 = distinct !{!970, !876, !971, !668}
!971 = !DILocation(line: 2007, column: 4, scope: !870)
!972 = !DILocation(line: 2009, column: 8, scope: !973)
!973 = distinct !DILexicalBlock(scope: !604, file: !2, line: 2009, column: 8)
!974 = !DILocation(line: 2009, column: 18, scope: !973)
!975 = !DILocation(line: 2009, column: 33, scope: !973)
!976 = !DILocation(line: 2009, column: 23, scope: !973)
!977 = !DILocation(line: 2010, column: 8, scope: !978)
!978 = distinct !DILexicalBlock(scope: !604, file: !2, line: 2010, column: 8)
!979 = !DILocation(line: 2010, column: 15, scope: !978)
!980 = !DILocation(line: 2010, column: 23, scope: !978)
!981 = !DILocation(line: 2010, column: 26, scope: !978)
!982 = !DILocation(line: 2010, column: 36, scope: !978)
!983 = !DILocation(line: 2010, column: 39, scope: !978)
!984 = !DILocation(line: 2010, column: 53, scope: !978)
!985 = !DILocation(line: 2011, column: 21, scope: !978)
!986 = !DILocation(line: 2011, column: 7, scope: !978)
!987 = !DILocation(line: 2013, column: 8, scope: !988)
!988 = distinct !DILexicalBlock(scope: !604, file: !2, line: 2013, column: 8)
!989 = !DILocation(line: 2013, column: 15, scope: !988)
!990 = !DILocation(line: 2013, column: 26, scope: !988)
!991 = !DILocation(line: 2013, column: 29, scope: !988)
!992 = !DILocation(line: 2013, column: 37, scope: !988)
!993 = !DILocation(line: 2014, column: 17, scope: !994)
!994 = distinct !DILexicalBlock(scope: !988, file: !2, line: 2013, column: 48)
!995 = !DILocation(line: 2015, column: 17, scope: !994)
!996 = !DILocation(line: 2014, column: 7, scope: !994)
!997 = !DILocation(line: 2016, column: 7, scope: !994)
!998 = !DILocation(line: 2019, column: 8, scope: !999)
!999 = distinct !DILexicalBlock(scope: !604, file: !2, line: 2019, column: 8)
!1000 = !DILocation(line: 2019, column: 16, scope: !999)
!1001 = !DILocation(line: 2019, column: 26, scope: !999)
!1002 = !DILocation(line: 2019, column: 29, scope: !999)
!1003 = !DILocation(line: 2019, column: 42, scope: !999)
!1004 = !DILocation(line: 2020, column: 15, scope: !999)
!1005 = !DILocation(line: 2020, column: 7, scope: !999)
!1006 = !DILocation(line: 2022, column: 8, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !604, file: !2, line: 2022, column: 8)
!1008 = !DILocation(line: 2022, column: 15, scope: !1007)
!1009 = !DILocation(line: 2022, column: 38, scope: !1007)
!1010 = !DILocation(line: 2022, column: 24, scope: !1007)
!1011 = !DILocation(line: 2024, column: 8, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !604, file: !2, line: 2024, column: 8)
!1013 = !DILocation(line: 2024, column: 16, scope: !1012)
!1014 = !DILocation(line: 2025, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 2024, column: 27)
!1016 = !DILocation(line: 2026, column: 7, scope: !1015)
!1017 = !DILocation(line: 2028, column: 7, scope: !1015)
!1018 = !DILocation(line: 2030, column: 4, scope: !1015)
!1019 = !DILocation(line: 2032, column: 8, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !604, file: !2, line: 2032, column: 8)
!1021 = !DILocation(line: 2032, column: 15, scope: !1020)
!1022 = !DILocation(line: 2033, column: 10, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 2033, column: 10)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 2032, column: 24)
!1025 = !DILocation(line: 2033, column: 18, scope: !1023)
!1026 = !DILocation(line: 2034, column: 9, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 2033, column: 29)
!1028 = !DILocation(line: 2035, column: 6, scope: !1027)
!1029 = !DILocation(line: 2036, column: 16, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 2035, column: 13)
!1031 = !DILocation(line: 2037, column: 19, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 2037, column: 9)
!1033 = !DILocation(line: 2037, column: 17, scope: !1032)
!1034 = !DILocation(line: 2037, column: 14, scope: !1032)
!1035 = !DILocation(line: 2037, column: 28, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 2037, column: 9)
!1037 = !DILocation(line: 2037, column: 31, scope: !1036)
!1038 = !DILocation(line: 2037, column: 9, scope: !1032)
!1039 = !DILocation(line: 2038, column: 16, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 2038, column: 16)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 2037, column: 55)
!1042 = !DILocation(line: 2038, column: 39, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 2038, column: 30)
!1044 = !DILocation(line: 2038, column: 48, scope: !1043)
!1045 = !DILocation(line: 2039, column: 16, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 2039, column: 16)
!1047 = !DILocation(line: 2039, column: 20, scope: !1046)
!1048 = !DILocation(line: 2039, column: 28, scope: !1046)
!1049 = !DILocation(line: 2039, column: 35, scope: !1046)
!1050 = !DILocation(line: 2039, column: 38, scope: !1046)
!1051 = !DILocation(line: 2039, column: 46, scope: !1046)
!1052 = !DILocation(line: 2040, column: 29, scope: !1041)
!1053 = !DILocation(line: 2041, column: 23, scope: !1041)
!1054 = !DILocation(line: 2041, column: 27, scope: !1041)
!1055 = !DILocation(line: 2041, column: 12, scope: !1041)
!1056 = !DILocation(line: 2042, column: 9, scope: !1041)
!1057 = !DILocation(line: 2037, column: 45, scope: !1036)
!1058 = !DILocation(line: 2037, column: 49, scope: !1036)
!1059 = !DILocation(line: 2037, column: 43, scope: !1036)
!1060 = !DILocation(line: 2037, column: 9, scope: !1036)
!1061 = distinct !{!1061, !1038, !1062, !668}
!1062 = !DILocation(line: 2042, column: 9, scope: !1032)
!1063 = !DILocation(line: 2044, column: 4, scope: !1024)
!1064 = !DILocation(line: 2047, column: 8, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 2047, column: 8)
!1066 = !DILocation(line: 2047, column: 15, scope: !1065)
!1067 = !DILocation(line: 2048, column: 21, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 2047, column: 26)
!1069 = !DILocation(line: 2049, column: 11, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 2049, column: 11)
!1071 = !DILocation(line: 2049, column: 19, scope: !1070)
!1072 = !DILocation(line: 2050, column: 10, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 2049, column: 30)
!1074 = !DILocation(line: 2051, column: 7, scope: !1073)
!1075 = !DILocation(line: 2052, column: 17, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 2051, column: 14)
!1077 = !DILocation(line: 2053, column: 20, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 2053, column: 10)
!1079 = !DILocation(line: 2053, column: 18, scope: !1078)
!1080 = !DILocation(line: 2053, column: 15, scope: !1078)
!1081 = !DILocation(line: 2053, column: 29, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 2053, column: 10)
!1083 = !DILocation(line: 2053, column: 32, scope: !1082)
!1084 = !DILocation(line: 2053, column: 10, scope: !1078)
!1085 = !DILocation(line: 2054, column: 17, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 2054, column: 17)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 2053, column: 56)
!1088 = !DILocation(line: 2054, column: 40, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 2054, column: 31)
!1090 = !DILocation(line: 2054, column: 49, scope: !1089)
!1091 = !DILocation(line: 2055, column: 17, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 2055, column: 17)
!1093 = !DILocation(line: 2055, column: 21, scope: !1092)
!1094 = !DILocation(line: 2055, column: 29, scope: !1092)
!1095 = !DILocation(line: 2055, column: 36, scope: !1092)
!1096 = !DILocation(line: 2055, column: 39, scope: !1092)
!1097 = !DILocation(line: 2055, column: 47, scope: !1092)
!1098 = !DILocation(line: 2056, column: 30, scope: !1087)
!1099 = !DILocation(line: 2057, column: 26, scope: !1087)
!1100 = !DILocation(line: 2057, column: 30, scope: !1087)
!1101 = !DILocation(line: 2057, column: 13, scope: !1087)
!1102 = !DILocation(line: 2058, column: 10, scope: !1087)
!1103 = !DILocation(line: 2053, column: 46, scope: !1082)
!1104 = !DILocation(line: 2053, column: 50, scope: !1082)
!1105 = !DILocation(line: 2053, column: 44, scope: !1082)
!1106 = !DILocation(line: 2053, column: 10, scope: !1082)
!1107 = distinct !{!1107, !1084, !1108, !668}
!1108 = !DILocation(line: 2058, column: 10, scope: !1078)
!1109 = !DILocation(line: 2060, column: 11, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 2060, column: 11)
!1111 = !DILocation(line: 2061, column: 10, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 2060, column: 26)
!1113 = !DILocation(line: 2062, column: 15, scope: !1112)
!1114 = !DILocation(line: 2062, column: 10, scope: !1112)
!1115 = !DILocation(line: 2064, column: 4, scope: !1068)
!1116 = !DILocation(line: 2067, column: 22, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 2066, column: 9)
!1118 = !DILocation(line: 2068, column: 11, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 2068, column: 11)
!1120 = !DILocation(line: 2068, column: 19, scope: !1119)
!1121 = !DILocation(line: 2069, column: 10, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 2068, column: 30)
!1123 = !DILocation(line: 2070, column: 7, scope: !1122)
!1124 = !DILocation(line: 2071, column: 17, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 2070, column: 14)
!1126 = !DILocation(line: 2072, column: 20, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 2072, column: 10)
!1128 = !DILocation(line: 2072, column: 18, scope: !1127)
!1129 = !DILocation(line: 2072, column: 15, scope: !1127)
!1130 = !DILocation(line: 2072, column: 29, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 2072, column: 10)
!1132 = !DILocation(line: 2072, column: 32, scope: !1131)
!1133 = !DILocation(line: 2072, column: 10, scope: !1127)
!1134 = !DILocation(line: 2073, column: 10, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 2073, column: 10)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 2072, column: 56)
!1137 = !DILocation(line: 2073, column: 33, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 2073, column: 24)
!1139 = !DILocation(line: 2073, column: 42, scope: !1138)
!1140 = !DILocation(line: 2074, column: 17, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 2074, column: 17)
!1142 = !DILocation(line: 2074, column: 21, scope: !1141)
!1143 = !DILocation(line: 2074, column: 29, scope: !1141)
!1144 = !DILocation(line: 2074, column: 36, scope: !1141)
!1145 = !DILocation(line: 2074, column: 39, scope: !1141)
!1146 = !DILocation(line: 2074, column: 47, scope: !1141)
!1147 = !DILocation(line: 2075, column: 30, scope: !1136)
!1148 = !DILocation(line: 2076, column: 21, scope: !1136)
!1149 = !DILocation(line: 2076, column: 25, scope: !1136)
!1150 = !DILocation(line: 2076, column: 13, scope: !1136)
!1151 = !DILocation(line: 2077, column: 3, scope: !1136)
!1152 = !DILocation(line: 2072, column: 46, scope: !1131)
!1153 = !DILocation(line: 2072, column: 50, scope: !1131)
!1154 = !DILocation(line: 2072, column: 44, scope: !1131)
!1155 = !DILocation(line: 2072, column: 10, scope: !1131)
!1156 = distinct !{!1156, !1133, !1157, !668}
!1157 = !DILocation(line: 2077, column: 3, scope: !1127)
!1158 = !DILocation(line: 2079, column: 11, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 2079, column: 11)
!1160 = !DILocation(line: 2079, column: 26, scope: !1159)
!1161 = !DILocation(line: 2079, column: 29, scope: !1159)
!1162 = !DILocation(line: 2080, column: 20, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 2079, column: 36)
!1164 = !DILocation(line: 2080, column: 10, scope: !1163)
!1165 = !DILocation(line: 2085, column: 10, scope: !1163)
!1166 = !DILocation(line: 2086, column: 15, scope: !1163)
!1167 = !DILocation(line: 2086, column: 10, scope: !1163)
!1168 = !DILocation(line: 2093, column: 9, scope: !604)
!1169 = !DILocation(line: 2093, column: 7, scope: !604)
!1170 = !DILocation(line: 2094, column: 4, scope: !604)
!1171 = !DILocation(line: 2094, column: 11, scope: !604)
!1172 = !DILocation(line: 2094, column: 14, scope: !604)
!1173 = !DILocalVariable(name: "aa2", scope: !1174, file: !2, line: 2095, type: !48)
!1174 = distinct !DILexicalBlock(scope: !604, file: !2, line: 2094, column: 23)
!1175 = !DILocation(line: 2095, column: 13, scope: !1174)
!1176 = !DILocation(line: 2095, column: 19, scope: !1174)
!1177 = !DILocation(line: 2095, column: 23, scope: !1174)
!1178 = !DILocation(line: 2096, column: 11, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 2096, column: 11)
!1180 = !DILocation(line: 2096, column: 15, scope: !1179)
!1181 = !DILocation(line: 2096, column: 20, scope: !1179)
!1182 = !DILocation(line: 2096, column: 34, scope: !1179)
!1183 = !DILocation(line: 2096, column: 38, scope: !1179)
!1184 = !DILocation(line: 2096, column: 29, scope: !1179)
!1185 = !DILocation(line: 2097, column: 12, scope: !1174)
!1186 = !DILocation(line: 2097, column: 7, scope: !1174)
!1187 = !DILocation(line: 2098, column: 12, scope: !1174)
!1188 = !DILocation(line: 2098, column: 10, scope: !1174)
!1189 = distinct !{!1189, !1170, !1190, !668}
!1190 = !DILocation(line: 2099, column: 4, scope: !604)
!1191 = !DILocation(line: 2101, column: 11, scope: !604)
!1192 = !DILocation(line: 2101, column: 4, scope: !604)
!1193 = distinct !DISubprogram(name: "mySIGSEGVorSIGBUScatcher", scope: !2, file: !2, line: 899, type: !1194, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !583}
!1196 = !DILocalVariable(name: "n", arg: 1, scope: !1193, file: !2, line: 899, type: !583)
!1197 = !DILocation(line: 899, column: 43, scope: !1193)
!1198 = !DILocation(line: 901, column: 8, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 901, column: 8)
!1200 = !DILocation(line: 901, column: 15, scope: !1199)
!1201 = !DILocation(line: 903, column: 7, scope: !1199)
!1202 = !DILocation(line: 921, column: 7, scope: !1199)
!1203 = !DILocation(line: 902, column: 7, scope: !1199)
!1204 = !DILocation(line: 924, column: 7, scope: !1199)
!1205 = !DILocation(line: 944, column: 7, scope: !1199)
!1206 = !DILocation(line: 923, column: 7, scope: !1199)
!1207 = !DILocation(line: 946, column: 4, scope: !1193)
!1208 = !DILocation(line: 947, column: 8, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 947, column: 8)
!1210 = !DILocation(line: 947, column: 15, scope: !1209)
!1211 = !DILocation(line: 948, column: 7, scope: !1209)
!1212 = !DILocation(line: 949, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 949, column: 7)
!1214 = !DILocation(line: 949, column: 20, scope: !1213)
!1215 = distinct !DISubprogram(name: "copyFileName", scope: !2, file: !2, line: 1002, type: !1216, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !46, !46}
!1218 = !DILocalVariable(name: "to", arg: 1, scope: !1215, file: !2, line: 1002, type: !46)
!1219 = !DILocation(line: 1002, column: 27, scope: !1215)
!1220 = !DILocalVariable(name: "from", arg: 2, scope: !1215, file: !2, line: 1002, type: !46)
!1221 = !DILocation(line: 1002, column: 37, scope: !1215)
!1222 = !DILocation(line: 1004, column: 16, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 1004, column: 9)
!1224 = !DILocation(line: 1004, column: 9, scope: !1223)
!1225 = !DILocation(line: 1004, column: 22, scope: !1223)
!1226 = !DILocation(line: 1006, column: 10, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 1004, column: 44)
!1228 = !DILocation(line: 1010, column: 10, scope: !1227)
!1229 = !DILocation(line: 1005, column: 7, scope: !1227)
!1230 = !DILocation(line: 1012, column: 7, scope: !1227)
!1231 = !DILocation(line: 1013, column: 12, scope: !1227)
!1232 = !DILocation(line: 1013, column: 7, scope: !1227)
!1233 = !DILocation(line: 1016, column: 11, scope: !1215)
!1234 = !DILocation(line: 1016, column: 14, scope: !1215)
!1235 = !DILocation(line: 1016, column: 3, scope: !1215)
!1236 = !DILocation(line: 1017, column: 3, scope: !1215)
!1237 = !DILocation(line: 1017, column: 23, scope: !1215)
!1238 = !DILocation(line: 1018, column: 1, scope: !1215)
!1239 = distinct !DISubprogram(name: "addFlagsFromEnvVar", scope: !2, file: !2, line: 1820, type: !1240, scopeLine: 1821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !1242, !46}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1243 = !DILocalVariable(name: "argList", arg: 1, scope: !1239, file: !2, line: 1820, type: !1242)
!1244 = !DILocation(line: 1820, column: 34, scope: !1239)
!1245 = !DILocalVariable(name: "varName", arg: 2, scope: !1239, file: !2, line: 1820, type: !46)
!1246 = !DILocation(line: 1820, column: 49, scope: !1239)
!1247 = !DILocalVariable(name: "i", scope: !1239, file: !2, line: 1822, type: !43)
!1248 = !DILocation(line: 1822, column: 10, scope: !1239)
!1249 = !DILocalVariable(name: "j", scope: !1239, file: !2, line: 1822, type: !43)
!1250 = !DILocation(line: 1822, column: 13, scope: !1239)
!1251 = !DILocalVariable(name: "k", scope: !1239, file: !2, line: 1822, type: !43)
!1252 = !DILocation(line: 1822, column: 16, scope: !1239)
!1253 = !DILocalVariable(name: "envbase", scope: !1239, file: !2, line: 1823, type: !46)
!1254 = !DILocation(line: 1823, column: 10, scope: !1239)
!1255 = !DILocalVariable(name: "p", scope: !1239, file: !2, line: 1823, type: !46)
!1256 = !DILocation(line: 1823, column: 20, scope: !1239)
!1257 = !DILocation(line: 1825, column: 21, scope: !1239)
!1258 = !DILocation(line: 1825, column: 14, scope: !1239)
!1259 = !DILocation(line: 1825, column: 12, scope: !1239)
!1260 = !DILocation(line: 1826, column: 8, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 1826, column: 8)
!1262 = !DILocation(line: 1826, column: 16, scope: !1261)
!1263 = !DILocation(line: 1827, column: 11, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 1826, column: 25)
!1265 = !DILocation(line: 1827, column: 9, scope: !1264)
!1266 = !DILocation(line: 1828, column: 9, scope: !1264)
!1267 = !DILocation(line: 1829, column: 7, scope: !1264)
!1268 = !DILocation(line: 1830, column: 14, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 1830, column: 14)
!1270 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 1829, column: 20)
!1271 = !DILocation(line: 1830, column: 16, scope: !1269)
!1272 = !DILocation(line: 1830, column: 19, scope: !1269)
!1273 = !DILocation(line: 1830, column: 25, scope: !1269)
!1274 = !DILocation(line: 1831, column: 15, scope: !1270)
!1275 = !DILocation(line: 1831, column: 12, scope: !1270)
!1276 = !DILocation(line: 1832, column: 12, scope: !1270)
!1277 = !DILocation(line: 1833, column: 10, scope: !1270)
!1278 = !DILocation(line: 1833, column: 17, scope: !1270)
!1279 = !DILocation(line: 1833, column: 42, scope: !1270)
!1280 = distinct !{!1280, !1277, !1279, !668}
!1281 = !DILocation(line: 1834, column: 10, scope: !1270)
!1282 = !DILocation(line: 1834, column: 17, scope: !1270)
!1283 = !DILocation(line: 1834, column: 19, scope: !1270)
!1284 = !DILocation(line: 1834, column: 22, scope: !1270)
!1285 = !DILocation(line: 1834, column: 27, scope: !1270)
!1286 = !DILocation(line: 1834, column: 31, scope: !1270)
!1287 = !DILocation(line: 1834, column: 30, scope: !1270)
!1288 = !DILocation(line: 0, scope: !1270)
!1289 = !DILocation(line: 1834, column: 56, scope: !1270)
!1290 = distinct !{!1290, !1281, !1289, !668}
!1291 = !DILocation(line: 1835, column: 14, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 1835, column: 14)
!1293 = !DILocation(line: 1835, column: 16, scope: !1292)
!1294 = !DILocation(line: 1836, column: 17, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 1835, column: 21)
!1296 = !DILocation(line: 1836, column: 15, scope: !1295)
!1297 = !DILocation(line: 1836, column: 24, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 1836, column: 24)
!1299 = !DILocation(line: 1836, column: 26, scope: !1298)
!1300 = !DILocation(line: 1836, column: 48, scope: !1298)
!1301 = !DILocation(line: 1836, column: 46, scope: !1298)
!1302 = !DILocation(line: 1837, column: 20, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 1837, column: 13)
!1304 = !DILocation(line: 1837, column: 18, scope: !1303)
!1305 = !DILocation(line: 1837, column: 25, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 1837, column: 13)
!1307 = !DILocation(line: 1837, column: 29, scope: !1306)
!1308 = !DILocation(line: 1837, column: 27, scope: !1306)
!1309 = !DILocation(line: 1837, column: 13, scope: !1303)
!1310 = !DILocation(line: 1837, column: 50, scope: !1306)
!1311 = !DILocation(line: 1837, column: 52, scope: !1306)
!1312 = !DILocation(line: 1837, column: 45, scope: !1306)
!1313 = !DILocation(line: 1837, column: 37, scope: !1306)
!1314 = !DILocation(line: 1837, column: 48, scope: !1306)
!1315 = !DILocation(line: 1837, column: 33, scope: !1306)
!1316 = !DILocation(line: 1837, column: 13, scope: !1306)
!1317 = distinct !{!1317, !1309, !1318, !668}
!1318 = !DILocation(line: 1837, column: 53, scope: !1303)
!1319 = !DILocation(line: 1838, column: 21, scope: !1295)
!1320 = !DILocation(line: 1838, column: 13, scope: !1295)
!1321 = !DILocation(line: 1838, column: 24, scope: !1295)
!1322 = !DILocation(line: 1839, column: 13, scope: !1295)
!1323 = !DILocation(line: 1840, column: 10, scope: !1295)
!1324 = distinct !{!1324, !1267, !1325}
!1325 = !DILocation(line: 1841, column: 7, scope: !1264)
!1326 = !DILocation(line: 1842, column: 4, scope: !1264)
!1327 = !DILocation(line: 1843, column: 1, scope: !1239)
!1328 = distinct !DISubprogram(name: "snocString", scope: !2, file: !2, line: 1802, type: !1329, scopeLine: 1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!48, !48, !46}
!1331 = !DILocalVariable(name: "root", arg: 1, scope: !1328, file: !2, line: 1802, type: !48)
!1332 = !DILocation(line: 1802, column: 26, scope: !1328)
!1333 = !DILocalVariable(name: "name", arg: 2, scope: !1328, file: !2, line: 1802, type: !46)
!1334 = !DILocation(line: 1802, column: 38, scope: !1328)
!1335 = !DILocation(line: 1804, column: 8, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 1804, column: 8)
!1337 = !DILocation(line: 1804, column: 13, scope: !1336)
!1338 = !DILocalVariable(name: "tmp", scope: !1339, file: !2, line: 1805, type: !48)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 1804, column: 22)
!1340 = !DILocation(line: 1805, column: 13, scope: !1339)
!1341 = !DILocation(line: 1805, column: 19, scope: !1339)
!1342 = !DILocation(line: 1806, column: 49, scope: !1339)
!1343 = !DILocation(line: 1806, column: 42, scope: !1339)
!1344 = !DILocation(line: 1806, column: 40, scope: !1339)
!1345 = !DILocation(line: 1806, column: 38, scope: !1339)
!1346 = !DILocation(line: 1806, column: 27, scope: !1339)
!1347 = !DILocation(line: 1806, column: 7, scope: !1339)
!1348 = !DILocation(line: 1806, column: 12, scope: !1339)
!1349 = !DILocation(line: 1806, column: 17, scope: !1339)
!1350 = !DILocation(line: 1807, column: 16, scope: !1339)
!1351 = !DILocation(line: 1807, column: 21, scope: !1339)
!1352 = !DILocation(line: 1807, column: 27, scope: !1339)
!1353 = !DILocation(line: 1807, column: 7, scope: !1339)
!1354 = !DILocation(line: 1808, column: 14, scope: !1339)
!1355 = !DILocation(line: 1808, column: 7, scope: !1339)
!1356 = !DILocalVariable(name: "tmp", scope: !1357, file: !2, line: 1810, type: !48)
!1357 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 1809, column: 11)
!1358 = !DILocation(line: 1810, column: 13, scope: !1357)
!1359 = !DILocation(line: 1810, column: 19, scope: !1357)
!1360 = !DILocation(line: 1811, column: 7, scope: !1357)
!1361 = !DILocation(line: 1811, column: 14, scope: !1357)
!1362 = !DILocation(line: 1811, column: 19, scope: !1357)
!1363 = !DILocation(line: 1811, column: 24, scope: !1357)
!1364 = !DILocation(line: 1811, column: 39, scope: !1357)
!1365 = !DILocation(line: 1811, column: 44, scope: !1357)
!1366 = !DILocation(line: 1811, column: 37, scope: !1357)
!1367 = distinct !{!1367, !1360, !1365, !668}
!1368 = !DILocation(line: 1812, column: 32, scope: !1357)
!1369 = !DILocation(line: 1812, column: 37, scope: !1357)
!1370 = !DILocation(line: 1812, column: 43, scope: !1357)
!1371 = !DILocation(line: 1812, column: 19, scope: !1357)
!1372 = !DILocation(line: 1812, column: 7, scope: !1357)
!1373 = !DILocation(line: 1812, column: 12, scope: !1357)
!1374 = !DILocation(line: 1812, column: 17, scope: !1357)
!1375 = !DILocation(line: 1813, column: 14, scope: !1357)
!1376 = !DILocation(line: 1813, column: 7, scope: !1357)
!1377 = !DILocation(line: 1815, column: 1, scope: !1328)
!1378 = distinct !DISubprogram(name: "license", scope: !2, file: !2, line: 1674, type: !1379, scopeLine: 1675, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null}
!1381 = !DILocation(line: 1676, column: 14, scope: !1378)
!1382 = !DILocation(line: 1692, column: 5, scope: !1378)
!1383 = !DILocation(line: 1676, column: 4, scope: !1378)
!1384 = !DILocation(line: 1694, column: 1, scope: !1378)
!1385 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 1699, type: !1386, scopeLine: 1700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !46}
!1388 = !DILocalVariable(name: "fullProgName", arg: 1, scope: !1385, file: !2, line: 1699, type: !46)
!1389 = !DILocation(line: 1699, column: 20, scope: !1385)
!1390 = !DILocation(line: 1702, column: 7, scope: !1385)
!1391 = !DILocation(line: 1735, column: 7, scope: !1385)
!1392 = !DILocation(line: 1736, column: 7, scope: !1385)
!1393 = !DILocation(line: 1701, column: 4, scope: !1385)
!1394 = !DILocation(line: 1738, column: 1, scope: !1385)
!1395 = distinct !DISubprogram(name: "redundant", scope: !2, file: !2, line: 1743, type: !1386, scopeLine: 1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!1396 = !DILocalVariable(name: "flag", arg: 1, scope: !1395, file: !2, line: 1743, type: !46)
!1397 = !DILocation(line: 1743, column: 24, scope: !1395)
!1398 = !DILocation(line: 1746, column: 7, scope: !1395)
!1399 = !DILocation(line: 1748, column: 7, scope: !1395)
!1400 = !DILocation(line: 1748, column: 17, scope: !1395)
!1401 = !DILocation(line: 1745, column: 4, scope: !1395)
!1402 = !DILocation(line: 1749, column: 1, scope: !1395)
!1403 = distinct !DISubprogram(name: "mySignalCatcher", scope: !2, file: !2, line: 888, type: !1194, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!1404 = !DILocalVariable(name: "n", arg: 1, scope: !1403, file: !2, line: 888, type: !583)
!1405 = !DILocation(line: 888, column: 34, scope: !1403)
!1406 = !DILocation(line: 890, column: 14, scope: !1403)
!1407 = !DILocation(line: 892, column: 14, scope: !1403)
!1408 = !DILocation(line: 890, column: 4, scope: !1403)
!1409 = !DILocation(line: 893, column: 4, scope: !1403)
!1410 = distinct !DISubprogram(name: "compress", scope: !2, file: !2, line: 1206, type: !1386, scopeLine: 1207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!1411 = !DILocalVariable(name: "name", arg: 1, scope: !1410, file: !2, line: 1206, type: !46)
!1412 = !DILocation(line: 1206, column: 23, scope: !1410)
!1413 = !DILocalVariable(name: "inStr", scope: !1410, file: !2, line: 1208, type: !213)
!1414 = !DILocation(line: 1208, column: 11, scope: !1410)
!1415 = !DILocalVariable(name: "outStr", scope: !1410, file: !2, line: 1209, type: !213)
!1416 = !DILocation(line: 1209, column: 11, scope: !1410)
!1417 = !DILocalVariable(name: "n", scope: !1410, file: !2, line: 1210, type: !43)
!1418 = !DILocation(line: 1210, column: 10, scope: !1410)
!1419 = !DILocalVariable(name: "i", scope: !1410, file: !2, line: 1210, type: !43)
!1420 = !DILocation(line: 1210, column: 13, scope: !1410)
!1421 = !DILocalVariable(name: "statBuf", scope: !1410, file: !2, line: 1211, type: !420)
!1422 = !DILocation(line: 1211, column: 19, scope: !1410)
!1423 = !DILocation(line: 1213, column: 28, scope: !1410)
!1424 = !DILocation(line: 1215, column: 8, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1215, column: 8)
!1426 = !DILocation(line: 1215, column: 13, scope: !1425)
!1427 = !DILocation(line: 1215, column: 21, scope: !1425)
!1428 = !DILocation(line: 1215, column: 24, scope: !1425)
!1429 = !DILocation(line: 1215, column: 32, scope: !1425)
!1430 = !DILocation(line: 1216, column: 7, scope: !1425)
!1431 = !DILocation(line: 1218, column: 12, scope: !1410)
!1432 = !DILocation(line: 1218, column: 4, scope: !1410)
!1433 = !DILocation(line: 1220, column: 10, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1218, column: 21)
!1435 = !DILocation(line: 1221, column: 10, scope: !1434)
!1436 = !DILocation(line: 1222, column: 10, scope: !1434)
!1437 = !DILocation(line: 1224, column: 33, scope: !1434)
!1438 = !DILocation(line: 1224, column: 10, scope: !1434)
!1439 = !DILocation(line: 1225, column: 34, scope: !1434)
!1440 = !DILocation(line: 1225, column: 10, scope: !1434)
!1441 = !DILocation(line: 1226, column: 10, scope: !1434)
!1442 = !DILocation(line: 1227, column: 10, scope: !1434)
!1443 = !DILocation(line: 1229, column: 33, scope: !1434)
!1444 = !DILocation(line: 1229, column: 10, scope: !1434)
!1445 = !DILocation(line: 1230, column: 10, scope: !1434)
!1446 = !DILocation(line: 1231, column: 10, scope: !1434)
!1447 = !DILocation(line: 1234, column: 9, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1234, column: 9)
!1449 = !DILocation(line: 1234, column: 17, scope: !1448)
!1450 = !DILocation(line: 1234, column: 27, scope: !1448)
!1451 = !DILocation(line: 1234, column: 30, scope: !1448)
!1452 = !DILocation(line: 1235, column: 11, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 1235, column: 11)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 1234, column: 64)
!1455 = !DILocation(line: 1236, column: 17, scope: !1453)
!1456 = !DILocation(line: 1237, column: 17, scope: !1453)
!1457 = !DILocation(line: 1236, column: 7, scope: !1453)
!1458 = !DILocation(line: 1238, column: 7, scope: !1454)
!1459 = !DILocation(line: 1239, column: 7, scope: !1454)
!1460 = !DILocation(line: 1241, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1241, column: 9)
!1462 = !DILocation(line: 1241, column: 17, scope: !1461)
!1463 = !DILocation(line: 1241, column: 27, scope: !1461)
!1464 = !DILocation(line: 1241, column: 31, scope: !1461)
!1465 = !DILocation(line: 1242, column: 17, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 1241, column: 55)
!1467 = !DILocation(line: 1243, column: 17, scope: !1466)
!1468 = !DILocation(line: 1243, column: 44, scope: !1466)
!1469 = !DILocation(line: 1243, column: 35, scope: !1466)
!1470 = !DILocation(line: 1242, column: 7, scope: !1466)
!1471 = !DILocation(line: 1244, column: 7, scope: !1466)
!1472 = !DILocation(line: 1245, column: 7, scope: !1466)
!1473 = !DILocation(line: 1247, column: 11, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1247, column: 4)
!1475 = !DILocation(line: 1247, column: 9, scope: !1474)
!1476 = !DILocation(line: 1247, column: 16, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 1247, column: 4)
!1478 = !DILocation(line: 1247, column: 18, scope: !1477)
!1479 = !DILocation(line: 1247, column: 4, scope: !1474)
!1480 = !DILocation(line: 1248, column: 37, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 1248, column: 11)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 1247, column: 44)
!1483 = !DILocation(line: 1248, column: 29, scope: !1481)
!1484 = !DILocation(line: 1248, column: 11, scope: !1481)
!1485 = !DILocation(line: 1249, column: 14, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 1249, column: 14)
!1487 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 1248, column: 42)
!1488 = !DILocation(line: 1250, column: 20, scope: !1486)
!1489 = !DILocation(line: 1252, column: 20, scope: !1486)
!1490 = !DILocation(line: 1252, column: 46, scope: !1486)
!1491 = !DILocation(line: 1252, column: 38, scope: !1486)
!1492 = !DILocation(line: 1250, column: 10, scope: !1486)
!1493 = !DILocation(line: 1253, column: 10, scope: !1487)
!1494 = !DILocation(line: 1254, column: 10, scope: !1487)
!1495 = !DILocation(line: 1256, column: 4, scope: !1482)
!1496 = !DILocation(line: 1247, column: 40, scope: !1477)
!1497 = !DILocation(line: 1247, column: 4, scope: !1477)
!1498 = distinct !{!1498, !1479, !1499, !668}
!1499 = !DILocation(line: 1256, column: 4, scope: !1474)
!1500 = !DILocation(line: 1257, column: 9, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1257, column: 9)
!1502 = !DILocation(line: 1257, column: 17, scope: !1501)
!1503 = !DILocation(line: 1257, column: 27, scope: !1501)
!1504 = !DILocation(line: 1257, column: 30, scope: !1501)
!1505 = !DILocation(line: 1257, column: 38, scope: !1501)
!1506 = !DILocation(line: 1258, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 1257, column: 50)
!1508 = !DILocation(line: 1259, column: 12, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 1259, column: 12)
!1510 = !DILocation(line: 1260, column: 19, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 1259, column: 42)
!1512 = !DILocation(line: 1262, column: 19, scope: !1511)
!1513 = !DILocation(line: 1260, column: 10, scope: !1511)
!1514 = !DILocation(line: 1263, column: 10, scope: !1511)
!1515 = !DILocation(line: 1264, column: 10, scope: !1511)
!1516 = !DILocation(line: 1266, column: 4, scope: !1507)
!1517 = !DILocation(line: 1267, column: 9, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1267, column: 9)
!1519 = !DILocation(line: 1267, column: 17, scope: !1518)
!1520 = !DILocation(line: 1267, column: 27, scope: !1518)
!1521 = !DILocation(line: 1267, column: 31, scope: !1518)
!1522 = !DILocation(line: 1267, column: 46, scope: !1518)
!1523 = !DILocation(line: 1267, column: 49, scope: !1518)
!1524 = !DILocation(line: 1268, column: 11, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 1268, column: 11)
!1526 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 1267, column: 78)
!1527 = !DILocation(line: 1269, column: 17, scope: !1525)
!1528 = !DILocation(line: 1270, column: 17, scope: !1525)
!1529 = !DILocation(line: 1269, column: 7, scope: !1525)
!1530 = !DILocation(line: 1271, column: 7, scope: !1526)
!1531 = !DILocation(line: 1272, column: 7, scope: !1526)
!1532 = !DILocation(line: 1274, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1274, column: 9)
!1534 = !DILocation(line: 1274, column: 17, scope: !1533)
!1535 = !DILocation(line: 1274, column: 27, scope: !1533)
!1536 = !DILocation(line: 1274, column: 30, scope: !1533)
!1537 = !DILocation(line: 1275, column: 11, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 1275, column: 11)
!1539 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 1274, column: 55)
!1540 = !DILocation(line: 1276, column: 3, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 1275, column: 27)
!1542 = !DILocation(line: 1277, column: 7, scope: !1541)
!1543 = !DILocation(line: 1278, column: 13, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 1277, column: 14)
!1545 = !DILocation(line: 1279, column: 6, scope: !1544)
!1546 = !DILocation(line: 1278, column: 3, scope: !1544)
!1547 = !DILocation(line: 1280, column: 3, scope: !1544)
!1548 = !DILocation(line: 1281, column: 3, scope: !1544)
!1549 = !DILocation(line: 1283, column: 4, scope: !1539)
!1550 = !DILocation(line: 1284, column: 9, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1284, column: 9)
!1552 = !DILocation(line: 1284, column: 17, scope: !1551)
!1553 = !DILocation(line: 1284, column: 27, scope: !1551)
!1554 = !DILocation(line: 1284, column: 31, scope: !1551)
!1555 = !DILocation(line: 1284, column: 46, scope: !1551)
!1556 = !DILocation(line: 1285, column: 12, scope: !1551)
!1557 = !DILocation(line: 1285, column: 11, scope: !1551)
!1558 = !DILocation(line: 1285, column: 39, scope: !1551)
!1559 = !DILocation(line: 1286, column: 17, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 1285, column: 44)
!1561 = !DILocation(line: 1287, column: 17, scope: !1560)
!1562 = !DILocation(line: 1287, column: 35, scope: !1560)
!1563 = !DILocation(line: 1287, column: 38, scope: !1560)
!1564 = !DILocation(line: 1287, column: 40, scope: !1560)
!1565 = !DILocation(line: 1286, column: 7, scope: !1560)
!1566 = !DILocation(line: 1288, column: 7, scope: !1560)
!1567 = !DILocation(line: 1289, column: 7, scope: !1560)
!1568 = !DILocation(line: 1292, column: 9, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1292, column: 9)
!1570 = !DILocation(line: 1292, column: 17, scope: !1569)
!1571 = !DILocation(line: 1295, column: 7, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !2, line: 1292, column: 29)
!1573 = !DILocation(line: 1296, column: 4, scope: !1572)
!1574 = !DILocation(line: 1298, column: 13, scope: !1410)
!1575 = !DILocation(line: 1298, column: 4, scope: !1410)
!1576 = !DILocation(line: 1301, column: 18, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1298, column: 23)
!1578 = !DILocation(line: 1301, column: 16, scope: !1577)
!1579 = !DILocation(line: 1302, column: 19, scope: !1577)
!1580 = !DILocation(line: 1302, column: 17, scope: !1577)
!1581 = !DILocation(line: 1303, column: 33, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 1303, column: 15)
!1583 = !DILocation(line: 1303, column: 24, scope: !1582)
!1584 = !DILocation(line: 1303, column: 15, scope: !1582)
!1585 = !DILocation(line: 1304, column: 23, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 1303, column: 46)
!1587 = !DILocation(line: 1306, column: 23, scope: !1586)
!1588 = !DILocation(line: 1304, column: 13, scope: !1586)
!1589 = !DILocation(line: 1307, column: 23, scope: !1586)
!1590 = !DILocation(line: 1308, column: 31, scope: !1586)
!1591 = !DILocation(line: 1308, column: 41, scope: !1586)
!1592 = !DILocation(line: 1307, column: 13, scope: !1586)
!1593 = !DILocation(line: 1309, column: 13, scope: !1586)
!1594 = !DILocation(line: 1310, column: 13, scope: !1586)
!1595 = !DILocation(line: 1312, column: 10, scope: !1577)
!1596 = !DILocation(line: 1315, column: 18, scope: !1577)
!1597 = !DILocation(line: 1315, column: 16, scope: !1577)
!1598 = !DILocation(line: 1316, column: 19, scope: !1577)
!1599 = !DILocation(line: 1316, column: 17, scope: !1577)
!1600 = !DILocation(line: 1317, column: 33, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 1317, column: 15)
!1602 = !DILocation(line: 1317, column: 24, scope: !1601)
!1603 = !DILocation(line: 1317, column: 15, scope: !1601)
!1604 = !DILocation(line: 1318, column: 23, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 1317, column: 46)
!1606 = !DILocation(line: 1320, column: 23, scope: !1605)
!1607 = !DILocation(line: 1318, column: 13, scope: !1605)
!1608 = !DILocation(line: 1321, column: 23, scope: !1605)
!1609 = !DILocation(line: 1322, column: 31, scope: !1605)
!1610 = !DILocation(line: 1322, column: 41, scope: !1605)
!1611 = !DILocation(line: 1321, column: 13, scope: !1605)
!1612 = !DILocation(line: 1323, column: 18, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 1323, column: 18)
!1614 = !DILocation(line: 1323, column: 24, scope: !1613)
!1615 = !DILocation(line: 1323, column: 43, scope: !1613)
!1616 = !DILocation(line: 1323, column: 34, scope: !1613)
!1617 = !DILocation(line: 1324, column: 13, scope: !1605)
!1618 = !DILocation(line: 1325, column: 13, scope: !1605)
!1619 = !DILocation(line: 1327, column: 15, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 1327, column: 15)
!1621 = !DILocation(line: 1327, column: 21, scope: !1620)
!1622 = !DILocation(line: 1328, column: 23, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 1327, column: 31)
!1624 = !DILocation(line: 1329, column: 23, scope: !1623)
!1625 = !DILocation(line: 1329, column: 50, scope: !1623)
!1626 = !DILocation(line: 1329, column: 41, scope: !1623)
!1627 = !DILocation(line: 1328, column: 13, scope: !1623)
!1628 = !DILocation(line: 1330, column: 13, scope: !1623)
!1629 = !DILocation(line: 1331, column: 13, scope: !1623)
!1630 = !DILocation(line: 1333, column: 10, scope: !1577)
!1631 = !DILocation(line: 1336, column: 18, scope: !1577)
!1632 = !DILocation(line: 1336, column: 16, scope: !1577)
!1633 = !DILocation(line: 1337, column: 19, scope: !1577)
!1634 = !DILocation(line: 1337, column: 17, scope: !1577)
!1635 = !DILocation(line: 1338, column: 15, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 1338, column: 15)
!1637 = !DILocation(line: 1338, column: 22, scope: !1636)
!1638 = !DILocation(line: 1339, column: 23, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 1338, column: 31)
!1640 = !DILocation(line: 1340, column: 23, scope: !1639)
!1641 = !DILocation(line: 1340, column: 51, scope: !1639)
!1642 = !DILocation(line: 1340, column: 42, scope: !1639)
!1643 = !DILocation(line: 1339, column: 13, scope: !1639)
!1644 = !DILocation(line: 1341, column: 18, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 1341, column: 18)
!1646 = !DILocation(line: 1341, column: 24, scope: !1645)
!1647 = !DILocation(line: 1341, column: 43, scope: !1645)
!1648 = !DILocation(line: 1341, column: 34, scope: !1645)
!1649 = !DILocation(line: 1342, column: 13, scope: !1639)
!1650 = !DILocation(line: 1343, column: 13, scope: !1639)
!1651 = !DILocation(line: 1345, column: 15, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 1345, column: 15)
!1653 = !DILocation(line: 1345, column: 21, scope: !1652)
!1654 = !DILocation(line: 1346, column: 23, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 1345, column: 31)
!1656 = !DILocation(line: 1347, column: 23, scope: !1655)
!1657 = !DILocation(line: 1347, column: 50, scope: !1655)
!1658 = !DILocation(line: 1347, column: 41, scope: !1655)
!1659 = !DILocation(line: 1346, column: 13, scope: !1655)
!1660 = !DILocation(line: 1348, column: 18, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 1348, column: 18)
!1662 = !DILocation(line: 1348, column: 25, scope: !1661)
!1663 = !DILocation(line: 1348, column: 44, scope: !1661)
!1664 = !DILocation(line: 1348, column: 35, scope: !1661)
!1665 = !DILocation(line: 1349, column: 13, scope: !1655)
!1666 = !DILocation(line: 1350, column: 13, scope: !1655)
!1667 = !DILocation(line: 1352, column: 10, scope: !1577)
!1668 = !DILocation(line: 1355, column: 10, scope: !1577)
!1669 = !DILocation(line: 1359, column: 8, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1359, column: 8)
!1671 = !DILocation(line: 1359, column: 18, scope: !1670)
!1672 = !DILocation(line: 1360, column: 17, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 1359, column: 24)
!1674 = !DILocation(line: 1360, column: 7, scope: !1673)
!1675 = !DILocation(line: 1361, column: 7, scope: !1673)
!1676 = !DILocation(line: 1362, column: 16, scope: !1673)
!1677 = !DILocation(line: 1362, column: 7, scope: !1673)
!1678 = !DILocation(line: 1363, column: 4, scope: !1673)
!1679 = !DILocation(line: 1366, column: 29, scope: !1410)
!1680 = !DILocation(line: 1366, column: 27, scope: !1410)
!1681 = !DILocation(line: 1367, column: 28, scope: !1410)
!1682 = !DILocation(line: 1368, column: 21, scope: !1410)
!1683 = !DILocation(line: 1368, column: 28, scope: !1410)
!1684 = !DILocation(line: 1368, column: 4, scope: !1410)
!1685 = !DILocation(line: 1369, column: 27, scope: !1410)
!1686 = !DILocation(line: 1372, column: 9, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 1372, column: 9)
!1688 = !DILocation(line: 1372, column: 17, scope: !1687)
!1689 = !DILocation(line: 1373, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 1372, column: 29)
!1691 = !DILocation(line: 1374, column: 31, scope: !1690)
!1692 = !DILocation(line: 1375, column: 13, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 1375, column: 12)
!1694 = !DILocation(line: 1375, column: 12, scope: !1693)
!1695 = !DILocalVariable(name: "retVal", scope: !1696, file: !2, line: 1376, type: !583)
!1696 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 1375, column: 30)
!1697 = !DILocation(line: 1376, column: 20, scope: !1696)
!1698 = !DILocation(line: 1376, column: 29, scope: !1696)
!1699 = !DILocation(line: 1377, column: 10, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 1377, column: 10)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 1377, column: 10)
!1702 = !DILocation(line: 1378, column: 7, scope: !1696)
!1703 = !DILocation(line: 1379, column: 4, scope: !1690)
!1704 = !DILocation(line: 1381, column: 28, scope: !1410)
!1705 = !DILocation(line: 1382, column: 1, scope: !1410)
!1706 = distinct !DISubprogram(name: "uncompress", scope: !2, file: !2, line: 1387, type: !1386, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!1707 = !DILocalVariable(name: "name", arg: 1, scope: !1706, file: !2, line: 1387, type: !46)
!1708 = !DILocation(line: 1387, column: 25, scope: !1706)
!1709 = !DILocalVariable(name: "inStr", scope: !1706, file: !2, line: 1389, type: !213)
!1710 = !DILocation(line: 1389, column: 11, scope: !1706)
!1711 = !DILocalVariable(name: "outStr", scope: !1706, file: !2, line: 1390, type: !213)
!1712 = !DILocation(line: 1390, column: 11, scope: !1706)
!1713 = !DILocalVariable(name: "n", scope: !1706, file: !2, line: 1391, type: !43)
!1714 = !DILocation(line: 1391, column: 10, scope: !1706)
!1715 = !DILocalVariable(name: "i", scope: !1706, file: !2, line: 1391, type: !43)
!1716 = !DILocation(line: 1391, column: 13, scope: !1706)
!1717 = !DILocalVariable(name: "magicNumberOK", scope: !1706, file: !2, line: 1392, type: !41)
!1718 = !DILocation(line: 1392, column: 10, scope: !1706)
!1719 = !DILocalVariable(name: "cantGuess", scope: !1706, file: !2, line: 1393, type: !41)
!1720 = !DILocation(line: 1393, column: 10, scope: !1706)
!1721 = !DILocalVariable(name: "statBuf", scope: !1706, file: !2, line: 1394, type: !420)
!1722 = !DILocation(line: 1394, column: 19, scope: !1706)
!1723 = !DILocation(line: 1396, column: 28, scope: !1706)
!1724 = !DILocation(line: 1398, column: 8, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1398, column: 8)
!1726 = !DILocation(line: 1398, column: 13, scope: !1725)
!1727 = !DILocation(line: 1398, column: 21, scope: !1725)
!1728 = !DILocation(line: 1398, column: 24, scope: !1725)
!1729 = !DILocation(line: 1398, column: 32, scope: !1725)
!1730 = !DILocation(line: 1399, column: 7, scope: !1725)
!1731 = !DILocation(line: 1401, column: 14, scope: !1706)
!1732 = !DILocation(line: 1402, column: 12, scope: !1706)
!1733 = !DILocation(line: 1402, column: 4, scope: !1706)
!1734 = !DILocation(line: 1404, column: 10, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1402, column: 21)
!1736 = !DILocation(line: 1405, column: 10, scope: !1735)
!1737 = !DILocation(line: 1406, column: 10, scope: !1735)
!1738 = !DILocation(line: 1408, column: 33, scope: !1735)
!1739 = !DILocation(line: 1408, column: 10, scope: !1735)
!1740 = !DILocation(line: 1409, column: 34, scope: !1735)
!1741 = !DILocation(line: 1409, column: 10, scope: !1735)
!1742 = !DILocation(line: 1410, column: 17, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 1410, column: 10)
!1744 = !DILocation(line: 1410, column: 15, scope: !1743)
!1745 = !DILocation(line: 1410, column: 22, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 1410, column: 10)
!1747 = !DILocation(line: 1410, column: 24, scope: !1746)
!1748 = !DILocation(line: 1410, column: 10, scope: !1743)
!1749 = !DILocation(line: 1411, column: 43, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 1411, column: 17)
!1751 = !DILocation(line: 1411, column: 35, scope: !1750)
!1752 = !DILocation(line: 1411, column: 56, scope: !1750)
!1753 = !DILocation(line: 1411, column: 46, scope: !1750)
!1754 = !DILocation(line: 1411, column: 17, scope: !1750)
!1755 = !DILocation(line: 1412, column: 16, scope: !1750)
!1756 = !DILocation(line: 1411, column: 58, scope: !1750)
!1757 = !DILocation(line: 1410, column: 46, scope: !1746)
!1758 = !DILocation(line: 1410, column: 10, scope: !1746)
!1759 = distinct !{!1759, !1748, !1760, !668}
!1760 = !DILocation(line: 1412, column: 21, scope: !1743)
!1761 = !DILocation(line: 1413, column: 20, scope: !1735)
!1762 = !DILocation(line: 1414, column: 10, scope: !1735)
!1763 = !DILocation(line: 1415, column: 10, scope: !1735)
!1764 = !DILocation(line: 1417, column: 33, scope: !1735)
!1765 = !DILocation(line: 1417, column: 10, scope: !1735)
!1766 = !DILocation(line: 1418, column: 10, scope: !1735)
!1767 = !DILocation(line: 1419, column: 10, scope: !1735)
!1768 = !DILocation(line: 1420, column: 4, scope: !1735)
!1769 = !DILabel(scope: !1706, name: "zzz", file: !2, line: 1422, column: 4)
!1770 = !DILocation(line: 1422, column: 4, scope: !1706)
!1771 = !DILocation(line: 1423, column: 9, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1423, column: 9)
!1773 = !DILocation(line: 1423, column: 17, scope: !1772)
!1774 = !DILocation(line: 1423, column: 27, scope: !1772)
!1775 = !DILocation(line: 1423, column: 30, scope: !1772)
!1776 = !DILocation(line: 1424, column: 11, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 1424, column: 11)
!1778 = distinct !DILexicalBlock(scope: !1772, file: !2, line: 1423, column: 64)
!1779 = !DILocation(line: 1425, column: 17, scope: !1777)
!1780 = !DILocation(line: 1426, column: 17, scope: !1777)
!1781 = !DILocation(line: 1425, column: 7, scope: !1777)
!1782 = !DILocation(line: 1427, column: 7, scope: !1778)
!1783 = !DILocation(line: 1428, column: 7, scope: !1778)
!1784 = !DILocation(line: 1430, column: 9, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1430, column: 9)
!1786 = !DILocation(line: 1430, column: 17, scope: !1785)
!1787 = !DILocation(line: 1430, column: 27, scope: !1785)
!1788 = !DILocation(line: 1430, column: 31, scope: !1785)
!1789 = !DILocation(line: 1431, column: 17, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 1430, column: 55)
!1791 = !DILocation(line: 1432, column: 17, scope: !1790)
!1792 = !DILocation(line: 1432, column: 44, scope: !1790)
!1793 = !DILocation(line: 1432, column: 35, scope: !1790)
!1794 = !DILocation(line: 1431, column: 7, scope: !1790)
!1795 = !DILocation(line: 1433, column: 7, scope: !1790)
!1796 = !DILocation(line: 1434, column: 7, scope: !1790)
!1797 = !DILocation(line: 1436, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1436, column: 9)
!1799 = !DILocation(line: 1436, column: 17, scope: !1798)
!1800 = !DILocation(line: 1436, column: 27, scope: !1798)
!1801 = !DILocation(line: 1436, column: 30, scope: !1798)
!1802 = !DILocation(line: 1436, column: 38, scope: !1798)
!1803 = !DILocation(line: 1437, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1798, file: !2, line: 1436, column: 50)
!1805 = !DILocation(line: 1438, column: 12, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 1438, column: 12)
!1807 = !DILocation(line: 1439, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 1438, column: 42)
!1809 = !DILocation(line: 1441, column: 19, scope: !1808)
!1810 = !DILocation(line: 1439, column: 10, scope: !1808)
!1811 = !DILocation(line: 1442, column: 10, scope: !1808)
!1812 = !DILocation(line: 1443, column: 10, scope: !1808)
!1813 = !DILocation(line: 1445, column: 4, scope: !1804)
!1814 = !DILocation(line: 1446, column: 9, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1446, column: 9)
!1816 = !DILocation(line: 1446, column: 17, scope: !1815)
!1817 = !DILocation(line: 1446, column: 27, scope: !1815)
!1818 = !DILocation(line: 1446, column: 31, scope: !1815)
!1819 = !DILocation(line: 1446, column: 46, scope: !1815)
!1820 = !DILocation(line: 1446, column: 49, scope: !1815)
!1821 = !DILocation(line: 1447, column: 11, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 1447, column: 11)
!1823 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 1446, column: 78)
!1824 = !DILocation(line: 1448, column: 17, scope: !1822)
!1825 = !DILocation(line: 1449, column: 17, scope: !1822)
!1826 = !DILocation(line: 1448, column: 7, scope: !1822)
!1827 = !DILocation(line: 1450, column: 7, scope: !1823)
!1828 = !DILocation(line: 1451, column: 7, scope: !1823)
!1829 = !DILocation(line: 1453, column: 44, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1453, column: 44)
!1831 = !DILocation(line: 1454, column: 11, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 1454, column: 11)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 1453, column: 56)
!1834 = !DILocation(line: 1455, column: 17, scope: !1832)
!1835 = !DILocation(line: 1457, column: 17, scope: !1832)
!1836 = !DILocation(line: 1455, column: 7, scope: !1832)
!1837 = !DILocation(line: 1459, column: 4, scope: !1833)
!1838 = !DILocation(line: 1460, column: 9, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1460, column: 9)
!1840 = !DILocation(line: 1460, column: 17, scope: !1839)
!1841 = !DILocation(line: 1460, column: 27, scope: !1839)
!1842 = !DILocation(line: 1460, column: 30, scope: !1839)
!1843 = !DILocation(line: 1461, column: 11, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 1461, column: 11)
!1845 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 1460, column: 55)
!1846 = !DILocation(line: 1462, column: 2, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1844, file: !2, line: 1461, column: 27)
!1848 = !DILocation(line: 1463, column: 7, scope: !1847)
!1849 = !DILocation(line: 1464, column: 19, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1844, file: !2, line: 1463, column: 14)
!1851 = !DILocation(line: 1465, column: 19, scope: !1850)
!1852 = !DILocation(line: 1464, column: 9, scope: !1850)
!1853 = !DILocation(line: 1466, column: 9, scope: !1850)
!1854 = !DILocation(line: 1467, column: 9, scope: !1850)
!1855 = !DILocation(line: 1469, column: 4, scope: !1845)
!1856 = !DILocation(line: 1470, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1470, column: 9)
!1858 = !DILocation(line: 1470, column: 17, scope: !1857)
!1859 = !DILocation(line: 1470, column: 27, scope: !1857)
!1860 = !DILocation(line: 1470, column: 31, scope: !1857)
!1861 = !DILocation(line: 1470, column: 46, scope: !1857)
!1862 = !DILocation(line: 1471, column: 12, scope: !1857)
!1863 = !DILocation(line: 1471, column: 11, scope: !1857)
!1864 = !DILocation(line: 1471, column: 40, scope: !1857)
!1865 = !DILocation(line: 1472, column: 17, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 1471, column: 45)
!1867 = !DILocation(line: 1473, column: 17, scope: !1866)
!1868 = !DILocation(line: 1473, column: 35, scope: !1866)
!1869 = !DILocation(line: 1473, column: 38, scope: !1866)
!1870 = !DILocation(line: 1473, column: 40, scope: !1866)
!1871 = !DILocation(line: 1472, column: 7, scope: !1866)
!1872 = !DILocation(line: 1474, column: 7, scope: !1866)
!1873 = !DILocation(line: 1475, column: 7, scope: !1866)
!1874 = !DILocation(line: 1478, column: 9, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1478, column: 9)
!1876 = !DILocation(line: 1478, column: 17, scope: !1875)
!1877 = !DILocation(line: 1481, column: 7, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 1478, column: 29)
!1879 = !DILocation(line: 1482, column: 4, scope: !1878)
!1880 = !DILocation(line: 1484, column: 13, scope: !1706)
!1881 = !DILocation(line: 1484, column: 4, scope: !1706)
!1882 = !DILocation(line: 1487, column: 18, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1484, column: 23)
!1884 = !DILocation(line: 1487, column: 16, scope: !1883)
!1885 = !DILocation(line: 1488, column: 19, scope: !1883)
!1886 = !DILocation(line: 1488, column: 17, scope: !1883)
!1887 = !DILocation(line: 1489, column: 33, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 1489, column: 15)
!1889 = !DILocation(line: 1489, column: 24, scope: !1888)
!1890 = !DILocation(line: 1489, column: 15, scope: !1888)
!1891 = !DILocation(line: 1490, column: 23, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 1489, column: 45)
!1893 = !DILocation(line: 1492, column: 23, scope: !1892)
!1894 = !DILocation(line: 1490, column: 13, scope: !1892)
!1895 = !DILocation(line: 1493, column: 23, scope: !1892)
!1896 = !DILocation(line: 1494, column: 31, scope: !1892)
!1897 = !DILocation(line: 1494, column: 41, scope: !1892)
!1898 = !DILocation(line: 1493, column: 13, scope: !1892)
!1899 = !DILocation(line: 1495, column: 13, scope: !1892)
!1900 = !DILocation(line: 1496, column: 13, scope: !1892)
!1901 = !DILocation(line: 1498, column: 10, scope: !1883)
!1902 = !DILocation(line: 1501, column: 18, scope: !1883)
!1903 = !DILocation(line: 1501, column: 16, scope: !1883)
!1904 = !DILocation(line: 1502, column: 19, scope: !1883)
!1905 = !DILocation(line: 1502, column: 17, scope: !1883)
!1906 = !DILocation(line: 1503, column: 15, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 1503, column: 15)
!1908 = !DILocation(line: 1503, column: 21, scope: !1907)
!1909 = !DILocation(line: 1504, column: 23, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 1503, column: 31)
!1911 = !DILocation(line: 1505, column: 23, scope: !1910)
!1912 = !DILocation(line: 1505, column: 50, scope: !1910)
!1913 = !DILocation(line: 1505, column: 41, scope: !1910)
!1914 = !DILocation(line: 1504, column: 13, scope: !1910)
!1915 = !DILocation(line: 1506, column: 18, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 1506, column: 18)
!1917 = !DILocation(line: 1506, column: 24, scope: !1916)
!1918 = !DILocation(line: 1506, column: 43, scope: !1916)
!1919 = !DILocation(line: 1506, column: 34, scope: !1916)
!1920 = !DILocation(line: 1507, column: 13, scope: !1910)
!1921 = !DILocation(line: 1508, column: 13, scope: !1910)
!1922 = !DILocation(line: 1510, column: 10, scope: !1883)
!1923 = !DILocation(line: 1513, column: 18, scope: !1883)
!1924 = !DILocation(line: 1513, column: 16, scope: !1883)
!1925 = !DILocation(line: 1514, column: 19, scope: !1883)
!1926 = !DILocation(line: 1514, column: 17, scope: !1883)
!1927 = !DILocation(line: 1515, column: 15, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 1515, column: 15)
!1929 = !DILocation(line: 1515, column: 22, scope: !1928)
!1930 = !DILocation(line: 1516, column: 23, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !2, line: 1515, column: 31)
!1932 = !DILocation(line: 1517, column: 23, scope: !1931)
!1933 = !DILocation(line: 1517, column: 51, scope: !1931)
!1934 = !DILocation(line: 1517, column: 42, scope: !1931)
!1935 = !DILocation(line: 1516, column: 13, scope: !1931)
!1936 = !DILocation(line: 1518, column: 18, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 1518, column: 18)
!1938 = !DILocation(line: 1518, column: 24, scope: !1937)
!1939 = !DILocation(line: 1518, column: 43, scope: !1937)
!1940 = !DILocation(line: 1518, column: 34, scope: !1937)
!1941 = !DILocation(line: 1519, column: 13, scope: !1931)
!1942 = !DILocation(line: 1520, column: 13, scope: !1931)
!1943 = !DILocation(line: 1522, column: 15, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 1522, column: 15)
!1945 = !DILocation(line: 1522, column: 21, scope: !1944)
!1946 = !DILocation(line: 1523, column: 23, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 1522, column: 31)
!1948 = !DILocation(line: 1524, column: 23, scope: !1947)
!1949 = !DILocation(line: 1524, column: 50, scope: !1947)
!1950 = !DILocation(line: 1524, column: 41, scope: !1947)
!1951 = !DILocation(line: 1523, column: 13, scope: !1947)
!1952 = !DILocation(line: 1525, column: 18, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1947, file: !2, line: 1525, column: 18)
!1954 = !DILocation(line: 1525, column: 25, scope: !1953)
!1955 = !DILocation(line: 1525, column: 44, scope: !1953)
!1956 = !DILocation(line: 1525, column: 35, scope: !1953)
!1957 = !DILocation(line: 1526, column: 13, scope: !1947)
!1958 = !DILocation(line: 1527, column: 13, scope: !1947)
!1959 = !DILocation(line: 1529, column: 10, scope: !1883)
!1960 = !DILocation(line: 1532, column: 10, scope: !1883)
!1961 = !DILocation(line: 1536, column: 8, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1536, column: 8)
!1963 = !DILocation(line: 1536, column: 18, scope: !1962)
!1964 = !DILocation(line: 1537, column: 17, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 1536, column: 24)
!1966 = !DILocation(line: 1537, column: 7, scope: !1965)
!1967 = !DILocation(line: 1538, column: 7, scope: !1965)
!1968 = !DILocation(line: 1539, column: 16, scope: !1965)
!1969 = !DILocation(line: 1539, column: 7, scope: !1965)
!1970 = !DILocation(line: 1540, column: 4, scope: !1965)
!1971 = !DILocation(line: 1543, column: 29, scope: !1706)
!1972 = !DILocation(line: 1543, column: 27, scope: !1706)
!1973 = !DILocation(line: 1544, column: 28, scope: !1706)
!1974 = !DILocation(line: 1545, column: 39, scope: !1706)
!1975 = !DILocation(line: 1545, column: 46, scope: !1706)
!1976 = !DILocation(line: 1545, column: 20, scope: !1706)
!1977 = !DILocation(line: 1545, column: 18, scope: !1706)
!1978 = !DILocation(line: 1546, column: 27, scope: !1706)
!1979 = !DILocation(line: 1549, column: 9, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1549, column: 9)
!1981 = !DILocation(line: 1550, column: 12, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 1550, column: 12)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 1549, column: 25)
!1984 = !DILocation(line: 1550, column: 20, scope: !1982)
!1985 = !DILocation(line: 1551, column: 10, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 1550, column: 32)
!1987 = !DILocation(line: 1552, column: 34, scope: !1986)
!1988 = !DILocation(line: 1553, column: 16, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 1553, column: 15)
!1990 = !DILocation(line: 1553, column: 15, scope: !1989)
!1991 = !DILocalVariable(name: "retVal", scope: !1992, file: !2, line: 1554, type: !583)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 1553, column: 33)
!1993 = !DILocation(line: 1554, column: 23, scope: !1992)
!1994 = !DILocation(line: 1554, column: 32, scope: !1992)
!1995 = !DILocation(line: 1555, column: 13, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 1555, column: 13)
!1997 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 1555, column: 13)
!1998 = !DILocation(line: 1556, column: 10, scope: !1992)
!1999 = !DILocation(line: 1557, column: 7, scope: !1986)
!2000 = !DILocation(line: 1558, column: 4, scope: !1983)
!2001 = !DILocation(line: 1559, column: 21, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 1558, column: 11)
!2003 = !DILocation(line: 1560, column: 31, scope: !2002)
!2004 = !DILocation(line: 1561, column: 12, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 1561, column: 12)
!2006 = !DILocation(line: 1561, column: 20, scope: !2005)
!2007 = !DILocalVariable(name: "retVal", scope: !2008, file: !2, line: 1562, type: !583)
!2008 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 1561, column: 32)
!2009 = !DILocation(line: 1562, column: 20, scope: !2008)
!2010 = !DILocation(line: 1562, column: 29, scope: !2008)
!2011 = !DILocation(line: 1563, column: 10, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 1563, column: 10)
!2013 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 1563, column: 10)
!2014 = !DILocation(line: 1564, column: 7, scope: !2008)
!2015 = !DILocation(line: 1566, column: 28, scope: !1706)
!2016 = !DILocation(line: 1568, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 1568, column: 9)
!2018 = !DILocation(line: 1569, column: 11, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !2, line: 1569, column: 11)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 1568, column: 25)
!2021 = !DILocation(line: 1569, column: 21, scope: !2019)
!2022 = !DILocation(line: 1570, column: 20, scope: !2019)
!2023 = !DILocation(line: 1570, column: 10, scope: !2019)
!2024 = !DILocation(line: 1571, column: 4, scope: !2020)
!2025 = !DILocation(line: 1572, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 1571, column: 11)
!2027 = !DILocation(line: 1573, column: 11, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 1573, column: 11)
!2029 = !DILocation(line: 1573, column: 21, scope: !2028)
!2030 = !DILocation(line: 1574, column: 20, scope: !2028)
!2031 = !DILocation(line: 1574, column: 10, scope: !2028)
!2032 = !DILocation(line: 1575, column: 20, scope: !2028)
!2033 = !DILocation(line: 1577, column: 20, scope: !2028)
!2034 = !DILocation(line: 1575, column: 10, scope: !2028)
!2035 = !DILocation(line: 1580, column: 1, scope: !1706)
!2036 = distinct !DISubprogram(name: "setExit", scope: !2, file: !2, line: 734, type: !2037, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{null, !43}
!2039 = !DILocalVariable(name: "v", arg: 1, scope: !2036, file: !2, line: 734, type: !43)
!2040 = !DILocation(line: 734, column: 22, scope: !2036)
!2041 = !DILocation(line: 736, column: 8, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 736, column: 8)
!2043 = !DILocation(line: 736, column: 12, scope: !2042)
!2044 = !DILocation(line: 736, column: 10, scope: !2042)
!2045 = !DILocation(line: 736, column: 35, scope: !2042)
!2046 = !DILocation(line: 736, column: 33, scope: !2042)
!2047 = !DILocation(line: 736, column: 23, scope: !2042)
!2048 = !DILocation(line: 737, column: 1, scope: !2036)
!2049 = distinct !DISubprogram(name: "testf", scope: !2, file: !2, line: 1585, type: !1386, scopeLine: 1586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2050 = !DILocalVariable(name: "name", arg: 1, scope: !2049, file: !2, line: 1585, type: !46)
!2051 = !DILocation(line: 1585, column: 20, scope: !2049)
!2052 = !DILocalVariable(name: "inStr", scope: !2049, file: !2, line: 1587, type: !213)
!2053 = !DILocation(line: 1587, column: 10, scope: !2049)
!2054 = !DILocalVariable(name: "allOK", scope: !2049, file: !2, line: 1588, type: !41)
!2055 = !DILocation(line: 1588, column: 9, scope: !2049)
!2056 = !DILocalVariable(name: "statBuf", scope: !2049, file: !2, line: 1589, type: !420)
!2057 = !DILocation(line: 1589, column: 19, scope: !2049)
!2058 = !DILocation(line: 1591, column: 28, scope: !2049)
!2059 = !DILocation(line: 1593, column: 8, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1593, column: 8)
!2061 = !DILocation(line: 1593, column: 13, scope: !2060)
!2062 = !DILocation(line: 1593, column: 21, scope: !2060)
!2063 = !DILocation(line: 1593, column: 24, scope: !2060)
!2064 = !DILocation(line: 1593, column: 32, scope: !2060)
!2065 = !DILocation(line: 1594, column: 7, scope: !2060)
!2066 = !DILocation(line: 1596, column: 4, scope: !2049)
!2067 = !DILocation(line: 1597, column: 12, scope: !2049)
!2068 = !DILocation(line: 1597, column: 4, scope: !2049)
!2069 = !DILocation(line: 1598, column: 20, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1597, column: 21)
!2071 = !DILocation(line: 1598, column: 56, scope: !2070)
!2072 = !DILocation(line: 1599, column: 43, scope: !2070)
!2073 = !DILocation(line: 1599, column: 20, scope: !2070)
!2074 = !DILocation(line: 1599, column: 51, scope: !2070)
!2075 = !DILocation(line: 1600, column: 43, scope: !2070)
!2076 = !DILocation(line: 1600, column: 20, scope: !2070)
!2077 = !DILocation(line: 1600, column: 51, scope: !2070)
!2078 = !DILocation(line: 1603, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1603, column: 9)
!2080 = !DILocation(line: 1603, column: 17, scope: !2079)
!2081 = !DILocation(line: 1603, column: 27, scope: !2079)
!2082 = !DILocation(line: 1603, column: 30, scope: !2079)
!2083 = !DILocation(line: 1604, column: 11, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 1604, column: 11)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 1603, column: 64)
!2086 = !DILocation(line: 1605, column: 17, scope: !2084)
!2087 = !DILocation(line: 1606, column: 17, scope: !2084)
!2088 = !DILocation(line: 1605, column: 7, scope: !2084)
!2089 = !DILocation(line: 1607, column: 7, scope: !2085)
!2090 = !DILocation(line: 1608, column: 7, scope: !2085)
!2091 = !DILocation(line: 1610, column: 9, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1610, column: 9)
!2093 = !DILocation(line: 1610, column: 17, scope: !2092)
!2094 = !DILocation(line: 1610, column: 27, scope: !2092)
!2095 = !DILocation(line: 1610, column: 31, scope: !2092)
!2096 = !DILocation(line: 1611, column: 17, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 1610, column: 55)
!2098 = !DILocation(line: 1612, column: 17, scope: !2097)
!2099 = !DILocation(line: 1612, column: 44, scope: !2097)
!2100 = !DILocation(line: 1612, column: 35, scope: !2097)
!2101 = !DILocation(line: 1611, column: 7, scope: !2097)
!2102 = !DILocation(line: 1613, column: 7, scope: !2097)
!2103 = !DILocation(line: 1614, column: 7, scope: !2097)
!2104 = !DILocation(line: 1616, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1616, column: 9)
!2106 = !DILocation(line: 1616, column: 17, scope: !2105)
!2107 = !DILocation(line: 1617, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 1616, column: 29)
!2109 = !DILocation(line: 1618, column: 12, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 1618, column: 12)
!2111 = !DILocation(line: 1619, column: 19, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 1618, column: 42)
!2113 = !DILocation(line: 1621, column: 19, scope: !2112)
!2114 = !DILocation(line: 1619, column: 10, scope: !2112)
!2115 = !DILocation(line: 1622, column: 10, scope: !2112)
!2116 = !DILocation(line: 1623, column: 10, scope: !2112)
!2117 = !DILocation(line: 1625, column: 4, scope: !2108)
!2118 = !DILocation(line: 1627, column: 13, scope: !2049)
!2119 = !DILocation(line: 1627, column: 4, scope: !2049)
!2120 = !DILocation(line: 1630, column: 33, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 1630, column: 15)
!2122 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1627, column: 23)
!2123 = !DILocation(line: 1630, column: 24, scope: !2121)
!2124 = !DILocation(line: 1630, column: 15, scope: !2121)
!2125 = !DILocation(line: 1631, column: 23, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 1630, column: 45)
!2127 = !DILocation(line: 1633, column: 23, scope: !2126)
!2128 = !DILocation(line: 1631, column: 13, scope: !2126)
!2129 = !DILocation(line: 1634, column: 23, scope: !2126)
!2130 = !DILocation(line: 1635, column: 31, scope: !2126)
!2131 = !DILocation(line: 1635, column: 41, scope: !2126)
!2132 = !DILocation(line: 1634, column: 13, scope: !2126)
!2133 = !DILocation(line: 1636, column: 13, scope: !2126)
!2134 = !DILocation(line: 1637, column: 13, scope: !2126)
!2135 = !DILocation(line: 1639, column: 18, scope: !2122)
!2136 = !DILocation(line: 1639, column: 16, scope: !2122)
!2137 = !DILocation(line: 1640, column: 10, scope: !2122)
!2138 = !DILocation(line: 1643, column: 18, scope: !2122)
!2139 = !DILocation(line: 1643, column: 16, scope: !2122)
!2140 = !DILocation(line: 1644, column: 15, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 1644, column: 15)
!2142 = !DILocation(line: 1644, column: 21, scope: !2141)
!2143 = !DILocation(line: 1645, column: 23, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 1644, column: 31)
!2145 = !DILocation(line: 1646, column: 23, scope: !2144)
!2146 = !DILocation(line: 1646, column: 50, scope: !2144)
!2147 = !DILocation(line: 1646, column: 41, scope: !2144)
!2148 = !DILocation(line: 1645, column: 13, scope: !2144)
!2149 = !DILocation(line: 1647, column: 13, scope: !2144)
!2150 = !DILocation(line: 1648, column: 13, scope: !2144)
!2151 = !DILocation(line: 1650, column: 10, scope: !2122)
!2152 = !DILocation(line: 1653, column: 10, scope: !2122)
!2153 = !DILocation(line: 1657, column: 8, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1657, column: 8)
!2155 = !DILocation(line: 1657, column: 18, scope: !2154)
!2156 = !DILocation(line: 1658, column: 17, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 1657, column: 24)
!2158 = !DILocation(line: 1658, column: 7, scope: !2157)
!2159 = !DILocation(line: 1659, column: 7, scope: !2157)
!2160 = !DILocation(line: 1660, column: 16, scope: !2157)
!2161 = !DILocation(line: 1660, column: 7, scope: !2157)
!2162 = !DILocation(line: 1661, column: 4, scope: !2157)
!2163 = !DILocation(line: 1664, column: 27, scope: !2049)
!2164 = !DILocation(line: 1665, column: 25, scope: !2049)
!2165 = !DILocation(line: 1665, column: 12, scope: !2049)
!2166 = !DILocation(line: 1665, column: 10, scope: !2049)
!2167 = !DILocation(line: 1667, column: 8, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1667, column: 8)
!2169 = !DILocation(line: 1667, column: 14, scope: !2168)
!2170 = !DILocation(line: 1667, column: 17, scope: !2168)
!2171 = !DILocation(line: 1667, column: 27, scope: !2168)
!2172 = !DILocation(line: 1667, column: 43, scope: !2168)
!2173 = !DILocation(line: 1667, column: 33, scope: !2168)
!2174 = !DILocation(line: 1668, column: 9, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1668, column: 8)
!2176 = !DILocation(line: 1668, column: 8, scope: !2175)
!2177 = !DILocation(line: 1668, column: 31, scope: !2175)
!2178 = !DILocation(line: 1668, column: 16, scope: !2175)
!2179 = !DILocation(line: 1669, column: 1, scope: !2049)
!2180 = distinct !DISubprogram(name: "showFileNames", scope: !2, file: !2, line: 757, type: !1379, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2181 = !DILocation(line: 759, column: 8, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2180, file: !2, line: 759, column: 8)
!2183 = !DILocation(line: 761, column: 7, scope: !2182)
!2184 = !DILocation(line: 760, column: 4, scope: !2182)
!2185 = !DILocation(line: 765, column: 1, scope: !2180)
!2186 = distinct !DISubprogram(name: "cleanUpAndFail", scope: !2, file: !2, line: 770, type: !2037, scopeLine: 771, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2187 = !DILocalVariable(name: "ec", arg: 1, scope: !2186, file: !2, line: 770, type: !43)
!2188 = !DILocation(line: 770, column: 29, scope: !2186)
!2189 = !DILocalVariable(name: "retVal", scope: !2186, file: !2, line: 772, type: !583)
!2190 = !DILocation(line: 772, column: 19, scope: !2186)
!2191 = !DILocalVariable(name: "statBuf", scope: !2186, file: !2, line: 773, type: !420)
!2192 = !DILocation(line: 773, column: 19, scope: !2186)
!2193 = !DILocation(line: 775, column: 9, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 775, column: 9)
!2195 = !DILocation(line: 775, column: 17, scope: !2194)
!2196 = !DILocation(line: 776, column: 9, scope: !2194)
!2197 = !DILocation(line: 776, column: 12, scope: !2194)
!2198 = !DILocation(line: 776, column: 19, scope: !2194)
!2199 = !DILocation(line: 777, column: 9, scope: !2194)
!2200 = !DILocation(line: 777, column: 12, scope: !2194)
!2201 = !DILocation(line: 784, column: 16, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2194, file: !2, line: 777, column: 38)
!2203 = !DILocation(line: 784, column: 14, scope: !2202)
!2204 = !DILocation(line: 785, column: 11, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 785, column: 11)
!2206 = !DILocation(line: 785, column: 18, scope: !2205)
!2207 = !DILocation(line: 786, column: 14, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 786, column: 14)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 785, column: 24)
!2210 = !DILocation(line: 787, column: 23, scope: !2208)
!2211 = !DILocation(line: 789, column: 23, scope: !2208)
!2212 = !DILocation(line: 787, column: 13, scope: !2208)
!2213 = !DILocation(line: 790, column: 14, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 790, column: 14)
!2215 = !DILocation(line: 790, column: 37, scope: !2214)
!2216 = !DILocation(line: 791, column: 22, scope: !2214)
!2217 = !DILocation(line: 791, column: 13, scope: !2214)
!2218 = !DILocation(line: 792, column: 19, scope: !2209)
!2219 = !DILocation(line: 792, column: 17, scope: !2209)
!2220 = !DILocation(line: 793, column: 14, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 793, column: 14)
!2222 = !DILocation(line: 793, column: 21, scope: !2221)
!2223 = !DILocation(line: 794, column: 23, scope: !2221)
!2224 = !DILocation(line: 797, column: 23, scope: !2221)
!2225 = !DILocation(line: 794, column: 13, scope: !2221)
!2226 = !DILocation(line: 798, column: 7, scope: !2209)
!2227 = !DILocation(line: 799, column: 20, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 798, column: 14)
!2229 = !DILocation(line: 801, column: 21, scope: !2228)
!2230 = !DILocation(line: 799, column: 10, scope: !2228)
!2231 = !DILocation(line: 802, column: 20, scope: !2228)
!2232 = !DILocation(line: 804, column: 20, scope: !2228)
!2233 = !DILocation(line: 802, column: 10, scope: !2228)
!2234 = !DILocation(line: 805, column: 20, scope: !2228)
!2235 = !DILocation(line: 807, column: 20, scope: !2228)
!2236 = !DILocation(line: 805, column: 10, scope: !2228)
!2237 = !DILocation(line: 808, column: 20, scope: !2228)
!2238 = !DILocation(line: 811, column: 20, scope: !2228)
!2239 = !DILocation(line: 808, column: 10, scope: !2228)
!2240 = !DILocation(line: 813, column: 4, scope: !2202)
!2241 = !DILocation(line: 815, column: 8, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 815, column: 8)
!2243 = !DILocation(line: 815, column: 14, scope: !2242)
!2244 = !DILocation(line: 815, column: 17, scope: !2242)
!2245 = !DILocation(line: 815, column: 30, scope: !2242)
!2246 = !DILocation(line: 815, column: 34, scope: !2242)
!2247 = !DILocation(line: 815, column: 37, scope: !2242)
!2248 = !DILocation(line: 815, column: 57, scope: !2242)
!2249 = !DILocation(line: 815, column: 55, scope: !2242)
!2250 = !DILocation(line: 816, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2242, file: !2, line: 815, column: 71)
!2252 = !DILocation(line: 819, column: 17, scope: !2251)
!2253 = !DILocation(line: 819, column: 27, scope: !2251)
!2254 = !DILocation(line: 820, column: 17, scope: !2251)
!2255 = !DILocation(line: 820, column: 31, scope: !2251)
!2256 = !DILocation(line: 820, column: 46, scope: !2251)
!2257 = !DILocation(line: 820, column: 44, scope: !2251)
!2258 = !DILocation(line: 816, column: 7, scope: !2251)
!2259 = !DILocation(line: 821, column: 4, scope: !2251)
!2260 = !DILocation(line: 822, column: 12, scope: !2186)
!2261 = !DILocation(line: 822, column: 4, scope: !2186)
!2262 = !DILocation(line: 823, column: 9, scope: !2186)
!2263 = !DILocation(line: 823, column: 4, scope: !2186)
!2264 = distinct !DISubprogram(name: "cadvise", scope: !2, file: !2, line: 742, type: !1379, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2265 = !DILocation(line: 744, column: 8, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2264, file: !2, line: 744, column: 8)
!2267 = !DILocation(line: 746, column: 7, scope: !2266)
!2268 = !DILocation(line: 745, column: 4, scope: !2266)
!2269 = !DILocation(line: 752, column: 1, scope: !2264)
!2270 = distinct !DISubprogram(name: "mkCell", scope: !2, file: !2, line: 1789, type: !2271, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!48}
!2273 = !DILocalVariable(name: "c", scope: !2270, file: !2, line: 1791, type: !48)
!2274 = !DILocation(line: 1791, column: 10, scope: !2270)
!2275 = !DILocation(line: 1793, column: 16, scope: !2270)
!2276 = !DILocation(line: 1793, column: 6, scope: !2270)
!2277 = !DILocation(line: 1794, column: 4, scope: !2270)
!2278 = !DILocation(line: 1794, column: 7, scope: !2270)
!2279 = !DILocation(line: 1794, column: 12, scope: !2270)
!2280 = !DILocation(line: 1795, column: 4, scope: !2270)
!2281 = !DILocation(line: 1795, column: 7, scope: !2270)
!2282 = !DILocation(line: 1795, column: 12, scope: !2270)
!2283 = !DILocation(line: 1796, column: 11, scope: !2270)
!2284 = !DILocation(line: 1796, column: 4, scope: !2270)
!2285 = distinct !DISubprogram(name: "myMalloc", scope: !2, file: !2, line: 1777, type: !2286, scopeLine: 1778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!40, !43}
!2288 = !DILocalVariable(name: "n", arg: 1, scope: !2285, file: !2, line: 1777, type: !43)
!2289 = !DILocation(line: 1777, column: 24, scope: !2285)
!2290 = !DILocalVariable(name: "p", scope: !2285, file: !2, line: 1779, type: !40)
!2291 = !DILocation(line: 1779, column: 10, scope: !2285)
!2292 = !DILocation(line: 1781, column: 25, scope: !2285)
!2293 = !DILocation(line: 1781, column: 17, scope: !2285)
!2294 = !DILocation(line: 1781, column: 8, scope: !2285)
!2295 = !DILocation(line: 1781, column: 6, scope: !2285)
!2296 = !DILocation(line: 1782, column: 8, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2285, file: !2, line: 1782, column: 8)
!2298 = !DILocation(line: 1782, column: 10, scope: !2297)
!2299 = !DILocation(line: 1782, column: 19, scope: !2297)
!2300 = !DILocation(line: 1783, column: 11, scope: !2285)
!2301 = !DILocation(line: 1783, column: 4, scope: !2285)
!2302 = distinct !DISubprogram(name: "outOfMemory", scope: !2, file: !2, line: 955, type: !1379, scopeLine: 956, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2303 = !DILocation(line: 957, column: 14, scope: !2302)
!2304 = !DILocation(line: 959, column: 14, scope: !2302)
!2305 = !DILocation(line: 957, column: 4, scope: !2302)
!2306 = !DILocation(line: 960, column: 4, scope: !2302)
!2307 = !DILocation(line: 961, column: 4, scope: !2302)
!2308 = distinct !DISubprogram(name: "panic", scope: !2, file: !2, line: 829, type: !1386, scopeLine: 830, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2309 = !DILocalVariable(name: "s", arg: 1, scope: !2308, file: !2, line: 829, type: !46)
!2310 = !DILocation(line: 829, column: 20, scope: !2308)
!2311 = !DILocation(line: 831, column: 14, scope: !2308)
!2312 = !DILocation(line: 836, column: 14, scope: !2308)
!2313 = !DILocation(line: 836, column: 24, scope: !2308)
!2314 = !DILocation(line: 831, column: 4, scope: !2308)
!2315 = !DILocation(line: 837, column: 4, scope: !2308)
!2316 = !DILocation(line: 838, column: 4, scope: !2308)
!2317 = distinct !DISubprogram(name: "containsDubiousChars", scope: !2, file: !2, line: 1157, type: !2318, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!41, !46}
!2320 = !DILocalVariable(name: "name", arg: 1, scope: !2317, file: !2, line: 1157, type: !46)
!2321 = !DILocation(line: 1157, column: 35, scope: !2317)
!2322 = !DILocation(line: 1163, column: 4, scope: !2317)
!2323 = distinct !DISubprogram(name: "fileExists", scope: !2, file: !2, line: 1023, type: !2318, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2324 = !DILocalVariable(name: "name", arg: 1, scope: !2323, file: !2, line: 1023, type: !46)
!2325 = !DILocation(line: 1023, column: 25, scope: !2323)
!2326 = !DILocalVariable(name: "tmp", scope: !2323, file: !2, line: 1025, type: !213)
!2327 = !DILocation(line: 1025, column: 10, scope: !2323)
!2328 = !DILocation(line: 1025, column: 26, scope: !2323)
!2329 = !DILocation(line: 1025, column: 18, scope: !2323)
!2330 = !DILocalVariable(name: "exists", scope: !2323, file: !2, line: 1026, type: !41)
!2331 = !DILocation(line: 1026, column: 9, scope: !2323)
!2332 = !DILocation(line: 1026, column: 19, scope: !2323)
!2333 = !DILocation(line: 1026, column: 23, scope: !2323)
!2334 = !DILocation(line: 1026, column: 18, scope: !2323)
!2335 = !DILocation(line: 1027, column: 8, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 1027, column: 8)
!2337 = !DILocation(line: 1027, column: 12, scope: !2336)
!2338 = !DILocation(line: 1027, column: 30, scope: !2336)
!2339 = !DILocation(line: 1027, column: 21, scope: !2336)
!2340 = !DILocation(line: 1028, column: 11, scope: !2323)
!2341 = !DILocation(line: 1028, column: 4, scope: !2323)
!2342 = distinct !DISubprogram(name: "hasSuffix", scope: !2, file: !2, line: 1184, type: !2343, scopeLine: 1185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!41, !46, !46}
!2345 = !DILocalVariable(name: "s", arg: 1, scope: !2342, file: !2, line: 1184, type: !46)
!2346 = !DILocation(line: 1184, column: 24, scope: !2342)
!2347 = !DILocalVariable(name: "suffix", arg: 2, scope: !2342, file: !2, line: 1184, type: !46)
!2348 = !DILocation(line: 1184, column: 33, scope: !2342)
!2349 = !DILocalVariable(name: "ns", scope: !2342, file: !2, line: 1186, type: !43)
!2350 = !DILocation(line: 1186, column: 10, scope: !2342)
!2351 = !DILocation(line: 1186, column: 22, scope: !2342)
!2352 = !DILocation(line: 1186, column: 15, scope: !2342)
!2353 = !DILocalVariable(name: "nx", scope: !2342, file: !2, line: 1187, type: !43)
!2354 = !DILocation(line: 1187, column: 10, scope: !2342)
!2355 = !DILocation(line: 1187, column: 22, scope: !2342)
!2356 = !DILocation(line: 1187, column: 15, scope: !2342)
!2357 = !DILocation(line: 1188, column: 8, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2342, file: !2, line: 1188, column: 8)
!2359 = !DILocation(line: 1188, column: 13, scope: !2358)
!2360 = !DILocation(line: 1188, column: 11, scope: !2358)
!2361 = !DILocation(line: 1188, column: 17, scope: !2358)
!2362 = !DILocation(line: 1189, column: 15, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2342, file: !2, line: 1189, column: 8)
!2364 = !DILocation(line: 1189, column: 19, scope: !2363)
!2365 = !DILocation(line: 1189, column: 17, scope: !2363)
!2366 = !DILocation(line: 1189, column: 24, scope: !2363)
!2367 = !DILocation(line: 1189, column: 22, scope: !2363)
!2368 = !DILocation(line: 1189, column: 28, scope: !2363)
!2369 = !DILocation(line: 1189, column: 8, scope: !2363)
!2370 = !DILocation(line: 1189, column: 36, scope: !2363)
!2371 = !DILocation(line: 1189, column: 42, scope: !2363)
!2372 = !DILocation(line: 1190, column: 4, scope: !2342)
!2373 = !DILocation(line: 1191, column: 1, scope: !2342)
!2374 = distinct !DISubprogram(name: "notAStandardFile", scope: !2, file: !2, line: 1063, type: !2318, scopeLine: 1064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2375 = !DILocalVariable(name: "name", arg: 1, scope: !2374, file: !2, line: 1063, type: !46)
!2376 = !DILocation(line: 1063, column: 31, scope: !2374)
!2377 = !DILocalVariable(name: "i", scope: !2374, file: !2, line: 1065, type: !583)
!2378 = !DILocation(line: 1065, column: 19, scope: !2374)
!2379 = !DILocalVariable(name: "statBuf", scope: !2374, file: !2, line: 1066, type: !420)
!2380 = !DILocation(line: 1066, column: 19, scope: !2374)
!2381 = !DILocation(line: 1068, column: 19, scope: !2374)
!2382 = !DILocation(line: 1068, column: 8, scope: !2374)
!2383 = !DILocation(line: 1068, column: 6, scope: !2374)
!2384 = !DILocation(line: 1069, column: 8, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 1069, column: 8)
!2386 = !DILocation(line: 1069, column: 10, scope: !2385)
!2387 = !DILocation(line: 1069, column: 16, scope: !2385)
!2388 = !DILocation(line: 1070, column: 8, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 1070, column: 8)
!2390 = !DILocation(line: 1070, column: 37, scope: !2389)
!2391 = !DILocation(line: 1071, column: 4, scope: !2374)
!2392 = !DILocation(line: 1072, column: 1, scope: !2374)
!2393 = distinct !DISubprogram(name: "countHardLinks", scope: !2, file: !2, line: 1080, type: !2394, scopeLine: 1081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!43, !46}
!2396 = !DILocalVariable(name: "name", arg: 1, scope: !2393, file: !2, line: 1080, type: !46)
!2397 = !DILocation(line: 1080, column: 30, scope: !2393)
!2398 = !DILocalVariable(name: "i", scope: !2393, file: !2, line: 1082, type: !583)
!2399 = !DILocation(line: 1082, column: 19, scope: !2393)
!2400 = !DILocalVariable(name: "statBuf", scope: !2393, file: !2, line: 1083, type: !420)
!2401 = !DILocation(line: 1083, column: 19, scope: !2393)
!2402 = !DILocation(line: 1085, column: 19, scope: !2393)
!2403 = !DILocation(line: 1085, column: 8, scope: !2393)
!2404 = !DILocation(line: 1085, column: 6, scope: !2393)
!2405 = !DILocation(line: 1086, column: 8, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2393, file: !2, line: 1086, column: 8)
!2407 = !DILocation(line: 1086, column: 10, scope: !2406)
!2408 = !DILocation(line: 1086, column: 16, scope: !2406)
!2409 = !DILocation(line: 1087, column: 20, scope: !2393)
!2410 = !DILocation(line: 1087, column: 29, scope: !2393)
!2411 = !DILocation(line: 1087, column: 11, scope: !2393)
!2412 = !DILocation(line: 1087, column: 4, scope: !2393)
!2413 = !DILocation(line: 1088, column: 1, scope: !2393)
!2414 = distinct !DISubprogram(name: "saveInputFileMetaInfo", scope: !2, file: !2, line: 1120, type: !1386, scopeLine: 1121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2415 = !DILocalVariable(name: "srcName", arg: 1, scope: !2414, file: !2, line: 1120, type: !46)
!2416 = !DILocation(line: 1120, column: 36, scope: !2414)
!2417 = !DILocalVariable(name: "retVal", scope: !2414, file: !2, line: 1123, type: !583)
!2418 = !DILocation(line: 1123, column: 14, scope: !2414)
!2419 = !DILocation(line: 1125, column: 22, scope: !2414)
!2420 = !DILocation(line: 1125, column: 13, scope: !2414)
!2421 = !DILocation(line: 1125, column: 11, scope: !2414)
!2422 = !DILocation(line: 1126, column: 4, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !2, line: 1126, column: 4)
!2424 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 1126, column: 4)
!2425 = !DILocation(line: 1128, column: 1, scope: !2414)
!2426 = distinct !DISubprogram(name: "pad", scope: !2, file: !2, line: 991, type: !1386, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2427 = !DILocalVariable(name: "s", arg: 1, scope: !2426, file: !2, line: 991, type: !46)
!2428 = !DILocation(line: 991, column: 18, scope: !2426)
!2429 = !DILocalVariable(name: "i", scope: !2426, file: !2, line: 993, type: !43)
!2430 = !DILocation(line: 993, column: 10, scope: !2426)
!2431 = !DILocation(line: 994, column: 23, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2426, file: !2, line: 994, column: 9)
!2433 = !DILocation(line: 994, column: 16, scope: !2432)
!2434 = !DILocation(line: 994, column: 9, scope: !2432)
!2435 = !DILocation(line: 994, column: 29, scope: !2432)
!2436 = !DILocation(line: 994, column: 26, scope: !2432)
!2437 = !DILocation(line: 994, column: 47, scope: !2432)
!2438 = !DILocation(line: 995, column: 11, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2426, file: !2, line: 995, column: 4)
!2440 = !DILocation(line: 995, column: 9, scope: !2439)
!2441 = !DILocation(line: 995, column: 16, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 995, column: 4)
!2443 = !DILocation(line: 995, column: 21, scope: !2442)
!2444 = !DILocation(line: 995, column: 53, scope: !2442)
!2445 = !DILocation(line: 995, column: 46, scope: !2442)
!2446 = !DILocation(line: 995, column: 39, scope: !2442)
!2447 = !DILocation(line: 995, column: 37, scope: !2442)
!2448 = !DILocation(line: 995, column: 18, scope: !2442)
!2449 = !DILocation(line: 995, column: 4, scope: !2439)
!2450 = !DILocation(line: 996, column: 17, scope: !2442)
!2451 = !DILocation(line: 996, column: 7, scope: !2442)
!2452 = !DILocation(line: 995, column: 58, scope: !2442)
!2453 = !DILocation(line: 995, column: 4, scope: !2442)
!2454 = distinct !{!2454, !2449, !2455, !668}
!2455 = !DILocation(line: 996, column: 29, scope: !2439)
!2456 = !DILocation(line: 997, column: 1, scope: !2426)
!2457 = distinct !DISubprogram(name: "compressStream", scope: !2, file: !2, line: 420, type: !2458, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{null, !213, !213}
!2460 = !DILocalVariable(name: "stream", arg: 1, scope: !2457, file: !2, line: 420, type: !213)
!2461 = !DILocation(line: 420, column: 29, scope: !2457)
!2462 = !DILocalVariable(name: "zStream", arg: 2, scope: !2457, file: !2, line: 420, type: !213)
!2463 = !DILocation(line: 420, column: 43, scope: !2457)
!2464 = !DILocalVariable(name: "bzf", scope: !2457, file: !2, line: 422, type: !2465)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "BZFILE", file: !2467, line: 177, baseType: null)
!2467 = !DIFile(filename: "./bzlib.h", directory: "/home/ez/Develop/llvm-project-main/build-external-llvm21/install/benchmark/bzip2/build_autojit_shlib", checksumkind: CSK_MD5, checksum: "2630d715580548e1aacc6fac1a21250d")
!2468 = !DILocation(line: 422, column: 12, scope: !2457)
!2469 = !DILocalVariable(name: "ibuf", scope: !2457, file: !2, line: 423, type: !2470)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 40000, elements: !2471)
!2471 = !{!2472}
!2472 = !DISubrange(count: 5000)
!2473 = !DILocation(line: 423, column: 12, scope: !2457)
!2474 = !DILocalVariable(name: "nIbuf", scope: !2457, file: !2, line: 424, type: !43)
!2475 = !DILocation(line: 424, column: 12, scope: !2457)
!2476 = !DILocalVariable(name: "nbytes_in_lo32", scope: !2457, file: !2, line: 425, type: !2477)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt32", file: !2, line: 257, baseType: !25)
!2478 = !DILocation(line: 425, column: 12, scope: !2457)
!2479 = !DILocalVariable(name: "nbytes_in_hi32", scope: !2457, file: !2, line: 425, type: !2477)
!2480 = !DILocation(line: 425, column: 28, scope: !2457)
!2481 = !DILocalVariable(name: "nbytes_out_lo32", scope: !2457, file: !2, line: 426, type: !2477)
!2482 = !DILocation(line: 426, column: 12, scope: !2457)
!2483 = !DILocalVariable(name: "nbytes_out_hi32", scope: !2457, file: !2, line: 426, type: !2477)
!2484 = !DILocation(line: 426, column: 29, scope: !2457)
!2485 = !DILocalVariable(name: "bzerr", scope: !2457, file: !2, line: 427, type: !43)
!2486 = !DILocation(line: 427, column: 12, scope: !2457)
!2487 = !DILocalVariable(name: "bzerr_dummy", scope: !2457, file: !2, line: 427, type: !43)
!2488 = !DILocation(line: 427, column: 19, scope: !2457)
!2489 = !DILocalVariable(name: "ret", scope: !2457, file: !2, line: 427, type: !43)
!2490 = !DILocation(line: 427, column: 32, scope: !2457)
!2491 = !DILocation(line: 432, column: 15, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 432, column: 8)
!2493 = !DILocation(line: 432, column: 8, scope: !2492)
!2494 = !DILocation(line: 432, column: 24, scope: !2492)
!2495 = !DILocation(line: 433, column: 15, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 433, column: 8)
!2497 = !DILocation(line: 433, column: 8, scope: !2496)
!2498 = !DILocation(line: 433, column: 25, scope: !2496)
!2499 = !DILocation(line: 435, column: 36, scope: !2457)
!2500 = !DILocation(line: 436, column: 28, scope: !2457)
!2501 = !DILocation(line: 436, column: 43, scope: !2457)
!2502 = !DILocation(line: 436, column: 54, scope: !2457)
!2503 = !DILocation(line: 435, column: 10, scope: !2457)
!2504 = !DILocation(line: 435, column: 8, scope: !2457)
!2505 = !DILocation(line: 437, column: 8, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 437, column: 8)
!2507 = !DILocation(line: 437, column: 14, scope: !2506)
!2508 = !DILocation(line: 437, column: 24, scope: !2506)
!2509 = !DILocation(line: 439, column: 8, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 439, column: 8)
!2511 = !DILocation(line: 439, column: 18, scope: !2510)
!2512 = !DILocation(line: 439, column: 34, scope: !2510)
!2513 = !DILocation(line: 439, column: 24, scope: !2510)
!2514 = !DILocation(line: 441, column: 4, scope: !2457)
!2515 = !DILocation(line: 443, column: 18, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !2, line: 443, column: 11)
!2517 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 441, column: 17)
!2518 = !DILocation(line: 443, column: 11, scope: !2516)
!2519 = !DILocation(line: 443, column: 27, scope: !2516)
!2520 = !DILocation(line: 444, column: 23, scope: !2517)
!2521 = !DILocation(line: 444, column: 50, scope: !2517)
!2522 = !DILocation(line: 444, column: 15, scope: !2517)
!2523 = !DILocation(line: 444, column: 13, scope: !2517)
!2524 = !DILocation(line: 445, column: 18, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2517, file: !2, line: 445, column: 11)
!2526 = !DILocation(line: 445, column: 11, scope: !2525)
!2527 = !DILocation(line: 445, column: 27, scope: !2525)
!2528 = !DILocation(line: 446, column: 11, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2517, file: !2, line: 446, column: 11)
!2530 = !DILocation(line: 446, column: 17, scope: !2529)
!2531 = !DILocation(line: 446, column: 44, scope: !2529)
!2532 = !DILocation(line: 446, column: 56, scope: !2529)
!2533 = !DILocation(line: 446, column: 62, scope: !2529)
!2534 = !DILocation(line: 446, column: 22, scope: !2529)
!2535 = !DILocation(line: 447, column: 11, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2517, file: !2, line: 447, column: 11)
!2537 = !DILocation(line: 447, column: 17, scope: !2536)
!2538 = !DILocation(line: 447, column: 27, scope: !2536)
!2539 = distinct !{!2539, !2514, !2540}
!2540 = !DILocation(line: 449, column: 4, scope: !2457)
!2541 = !DILocation(line: 451, column: 33, scope: !2457)
!2542 = !DILocation(line: 451, column: 4, scope: !2457)
!2543 = !DILocation(line: 454, column: 8, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 454, column: 8)
!2545 = !DILocation(line: 454, column: 14, scope: !2544)
!2546 = !DILocation(line: 454, column: 24, scope: !2544)
!2547 = !DILocation(line: 456, column: 15, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 456, column: 8)
!2549 = !DILocation(line: 456, column: 8, scope: !2548)
!2550 = !DILocation(line: 456, column: 25, scope: !2548)
!2551 = !DILocation(line: 457, column: 19, scope: !2457)
!2552 = !DILocation(line: 457, column: 10, scope: !2457)
!2553 = !DILocation(line: 457, column: 8, scope: !2457)
!2554 = !DILocation(line: 458, column: 8, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 458, column: 8)
!2556 = !DILocation(line: 458, column: 12, scope: !2555)
!2557 = !DILocation(line: 458, column: 20, scope: !2555)
!2558 = !DILocation(line: 459, column: 8, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 459, column: 8)
!2560 = !DILocation(line: 459, column: 19, scope: !2559)
!2561 = !DILocation(line: 459, column: 16, scope: !2559)
!2562 = !DILocation(line: 460, column: 22, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !2, line: 459, column: 27)
!2564 = !DILocation(line: 460, column: 13, scope: !2563)
!2565 = !DILocation(line: 460, column: 11, scope: !2563)
!2566 = !DILocation(line: 461, column: 30, scope: !2563)
!2567 = !DILocation(line: 462, column: 11, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 462, column: 11)
!2569 = !DILocation(line: 462, column: 15, scope: !2568)
!2570 = !DILocation(line: 462, column: 23, scope: !2568)
!2571 = !DILocation(line: 463, column: 4, scope: !2563)
!2572 = !DILocation(line: 464, column: 27, scope: !2457)
!2573 = !DILocation(line: 465, column: 15, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 465, column: 8)
!2575 = !DILocation(line: 465, column: 8, scope: !2574)
!2576 = !DILocation(line: 465, column: 24, scope: !2574)
!2577 = !DILocation(line: 466, column: 19, scope: !2457)
!2578 = !DILocation(line: 466, column: 10, scope: !2457)
!2579 = !DILocation(line: 466, column: 8, scope: !2457)
!2580 = !DILocation(line: 467, column: 8, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 467, column: 8)
!2582 = !DILocation(line: 467, column: 12, scope: !2581)
!2583 = !DILocation(line: 467, column: 20, scope: !2581)
!2584 = !DILocation(line: 469, column: 8, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 469, column: 8)
!2586 = !DILocation(line: 469, column: 18, scope: !2585)
!2587 = !DILocation(line: 470, column: 11, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !2, line: 470, column: 11)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !2, line: 469, column: 24)
!2590 = !DILocation(line: 470, column: 26, scope: !2588)
!2591 = !DILocation(line: 470, column: 31, scope: !2588)
!2592 = !DILocation(line: 470, column: 34, scope: !2588)
!2593 = !DILocation(line: 470, column: 49, scope: !2588)
!2594 = !DILocation(line: 471, column: 13, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2588, file: !2, line: 470, column: 55)
!2596 = !DILocation(line: 471, column: 3, scope: !2595)
!2597 = !DILocation(line: 472, column: 7, scope: !2595)
!2598 = !DILocalVariable(name: "buf_nin", scope: !2599, file: !2, line: 473, type: !2600)
!2599 = distinct !DILexicalBlock(scope: !2588, file: !2, line: 472, column: 14)
!2600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !306)
!2601 = !DILocation(line: 473, column: 10, scope: !2599)
!2602 = !DILocalVariable(name: "buf_nout", scope: !2599, file: !2, line: 473, type: !2600)
!2603 = !DILocation(line: 473, column: 23, scope: !2599)
!2604 = !DILocalVariable(name: "nbytes_in", scope: !2599, file: !2, line: 474, type: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt64", file: !2, line: 325, baseType: !2606)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 324, size: 64, elements: !2607)
!2607 = !{!2608}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2606, file: !2, line: 324, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !121)
!2610 = !DILocation(line: 474, column: 10, scope: !2599)
!2611 = !DILocalVariable(name: "nbytes_out", scope: !2599, file: !2, line: 474, type: !2605)
!2612 = !DILocation(line: 474, column: 23, scope: !2599)
!2613 = !DILocalVariable(name: "nbytes_in_d", scope: !2599, file: !2, line: 475, type: !59)
!2614 = !DILocation(line: 475, column: 10, scope: !2599)
!2615 = !DILocalVariable(name: "nbytes_out_d", scope: !2599, file: !2, line: 475, type: !59)
!2616 = !DILocation(line: 475, column: 23, scope: !2599)
!2617 = !DILocation(line: 477, column: 11, scope: !2599)
!2618 = !DILocation(line: 477, column: 27, scope: !2599)
!2619 = !DILocation(line: 476, column: 3, scope: !2599)
!2620 = !DILocation(line: 479, column: 11, scope: !2599)
!2621 = !DILocation(line: 479, column: 28, scope: !2599)
!2622 = !DILocation(line: 478, column: 3, scope: !2599)
!2623 = !DILocation(line: 480, column: 18, scope: !2599)
!2624 = !DILocation(line: 480, column: 16, scope: !2599)
!2625 = !DILocation(line: 481, column: 18, scope: !2599)
!2626 = !DILocation(line: 481, column: 16, scope: !2599)
!2627 = !DILocation(line: 482, column: 20, scope: !2599)
!2628 = !DILocation(line: 482, column: 3, scope: !2599)
!2629 = !DILocation(line: 483, column: 20, scope: !2599)
!2630 = !DILocation(line: 483, column: 3, scope: !2599)
!2631 = !DILocation(line: 484, column: 13, scope: !2599)
!2632 = !DILocation(line: 486, column: 6, scope: !2599)
!2633 = !DILocation(line: 486, column: 20, scope: !2599)
!2634 = !DILocation(line: 486, column: 18, scope: !2599)
!2635 = !DILocation(line: 487, column: 13, scope: !2599)
!2636 = !DILocation(line: 487, column: 11, scope: !2599)
!2637 = !DILocation(line: 487, column: 29, scope: !2599)
!2638 = !DILocation(line: 487, column: 27, scope: !2599)
!2639 = !DILocation(line: 488, column: 21, scope: !2599)
!2640 = !DILocation(line: 488, column: 36, scope: !2599)
!2641 = !DILocation(line: 488, column: 34, scope: !2599)
!2642 = !DILocation(line: 488, column: 19, scope: !2599)
!2643 = !DILocation(line: 488, column: 12, scope: !2599)
!2644 = !DILocation(line: 489, column: 6, scope: !2599)
!2645 = !DILocation(line: 490, column: 6, scope: !2599)
!2646 = !DILocation(line: 484, column: 3, scope: !2599)
!2647 = !DILocation(line: 493, column: 4, scope: !2589)
!2648 = !DILocation(line: 495, column: 4, scope: !2457)
!2649 = !DILabel(scope: !2457, name: "errhandler", file: !2, line: 497, column: 4)
!2650 = !DILocation(line: 497, column: 4, scope: !2457)
!2651 = !DILocation(line: 498, column: 39, scope: !2457)
!2652 = !DILocation(line: 498, column: 4, scope: !2457)
!2653 = !DILocation(line: 501, column: 12, scope: !2457)
!2654 = !DILocation(line: 501, column: 4, scope: !2457)
!2655 = !DILocation(line: 503, column: 10, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 501, column: 19)
!2657 = !DILocation(line: 505, column: 10, scope: !2656)
!2658 = !DILabel(scope: !2656, name: "errhandler_io", file: !2, line: 507, column: 10)
!2659 = !DILocation(line: 507, column: 10, scope: !2656)
!2660 = !DILocation(line: 508, column: 10, scope: !2656)
!2661 = !DILocation(line: 510, column: 10, scope: !2656)
!2662 = distinct !DISubprogram(name: "applySavedMetaInfoToOutputFile", scope: !2, file: !2, line: 1132, type: !1386, scopeLine: 1133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2663 = !DILocalVariable(name: "dstName", arg: 1, scope: !2662, file: !2, line: 1132, type: !46)
!2664 = !DILocation(line: 1132, column: 45, scope: !2662)
!2665 = !DILocalVariable(name: "retVal", scope: !2662, file: !2, line: 1135, type: !583)
!2666 = !DILocation(line: 1135, column: 19, scope: !2662)
!2667 = !DILocalVariable(name: "uTimBuf", scope: !2662, file: !2, line: 1136, type: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utimbuf", file: !2669, line: 36, size: 128, elements: !2670)
!2669 = !DIFile(filename: "/usr/include/utime.h", directory: "", checksumkind: CSK_MD5, checksum: "a94ce719074475f8e6ded0e064c248b3")
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "actime", scope: !2668, file: !2669, line: 42, baseType: !447, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "modtime", scope: !2668, file: !2669, line: 43, baseType: !447, size: 64, offset: 64)
!2673 = !DILocation(line: 1136, column: 19, scope: !2662)
!2674 = !DILocation(line: 1138, column: 34, scope: !2662)
!2675 = !DILocation(line: 1138, column: 12, scope: !2662)
!2676 = !DILocation(line: 1138, column: 19, scope: !2662)
!2677 = !DILocation(line: 1139, column: 35, scope: !2662)
!2678 = !DILocation(line: 1139, column: 12, scope: !2662)
!2679 = !DILocation(line: 1139, column: 20, scope: !2662)
!2680 = !DILocation(line: 1141, column: 21, scope: !2662)
!2681 = !DILocation(line: 1141, column: 43, scope: !2662)
!2682 = !DILocation(line: 1141, column: 13, scope: !2662)
!2683 = !DILocation(line: 1141, column: 11, scope: !2662)
!2684 = !DILocation(line: 1142, column: 4, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !2, line: 1142, column: 4)
!2686 = distinct !DILexicalBlock(scope: !2662, file: !2, line: 1142, column: 4)
!2687 = !DILocation(line: 1144, column: 21, scope: !2662)
!2688 = !DILocation(line: 1144, column: 13, scope: !2662)
!2689 = !DILocation(line: 1144, column: 11, scope: !2662)
!2690 = !DILocation(line: 1145, column: 4, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 1145, column: 4)
!2692 = distinct !DILexicalBlock(scope: !2662, file: !2, line: 1145, column: 4)
!2693 = !DILocation(line: 1147, column: 21, scope: !2662)
!2694 = !DILocation(line: 1147, column: 43, scope: !2662)
!2695 = !DILocation(line: 1147, column: 64, scope: !2662)
!2696 = !DILocation(line: 1147, column: 13, scope: !2662)
!2697 = !DILocation(line: 1147, column: 11, scope: !2662)
!2698 = !DILocation(line: 1152, column: 1, scope: !2662)
!2699 = distinct !DISubprogram(name: "ioError", scope: !2, file: !2, line: 874, type: !1379, scopeLine: 875, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2700 = !DILocation(line: 876, column: 14, scope: !2699)
!2701 = !DILocation(line: 879, column: 14, scope: !2699)
!2702 = !DILocation(line: 876, column: 4, scope: !2699)
!2703 = !DILocation(line: 880, column: 13, scope: !2699)
!2704 = !DILocation(line: 880, column: 4, scope: !2699)
!2705 = !DILocation(line: 881, column: 4, scope: !2699)
!2706 = !DILocation(line: 882, column: 4, scope: !2699)
!2707 = distinct !DISubprogram(name: "myfeof", scope: !2, file: !2, line: 409, type: !2708, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!41, !213}
!2710 = !DILocalVariable(name: "f", arg: 1, scope: !2707, file: !2, line: 409, type: !213)
!2711 = !DILocation(line: 409, column: 21, scope: !2707)
!2712 = !DILocalVariable(name: "c", scope: !2707, file: !2, line: 411, type: !43)
!2713 = !DILocation(line: 411, column: 10, scope: !2707)
!2714 = !DILocation(line: 411, column: 22, scope: !2707)
!2715 = !DILocation(line: 411, column: 14, scope: !2707)
!2716 = !DILocation(line: 412, column: 8, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2707, file: !2, line: 412, column: 8)
!2718 = !DILocation(line: 412, column: 10, scope: !2717)
!2719 = !DILocation(line: 412, column: 18, scope: !2717)
!2720 = !DILocation(line: 413, column: 13, scope: !2707)
!2721 = !DILocation(line: 413, column: 16, scope: !2707)
!2722 = !DILocation(line: 413, column: 4, scope: !2707)
!2723 = !DILocation(line: 414, column: 4, scope: !2707)
!2724 = !DILocation(line: 415, column: 1, scope: !2707)
!2725 = distinct !DISubprogram(name: "uInt64_from_UInt32s", scope: !2, file: !2, line: 329, type: !2726, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2728, !2477, !2477}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2729 = !DILocalVariable(name: "n", arg: 1, scope: !2725, file: !2, line: 329, type: !2728)
!2730 = !DILocation(line: 329, column: 36, scope: !2725)
!2731 = !DILocalVariable(name: "lo32", arg: 2, scope: !2725, file: !2, line: 329, type: !2477)
!2732 = !DILocation(line: 329, column: 46, scope: !2725)
!2733 = !DILocalVariable(name: "hi32", arg: 3, scope: !2725, file: !2, line: 329, type: !2477)
!2734 = !DILocation(line: 329, column: 59, scope: !2725)
!2735 = !DILocation(line: 331, column: 23, scope: !2725)
!2736 = !DILocation(line: 331, column: 28, scope: !2725)
!2737 = !DILocation(line: 331, column: 35, scope: !2725)
!2738 = !DILocation(line: 331, column: 14, scope: !2725)
!2739 = !DILocation(line: 331, column: 4, scope: !2725)
!2740 = !DILocation(line: 331, column: 7, scope: !2725)
!2741 = !DILocation(line: 331, column: 12, scope: !2725)
!2742 = !DILocation(line: 332, column: 23, scope: !2725)
!2743 = !DILocation(line: 332, column: 28, scope: !2725)
!2744 = !DILocation(line: 332, column: 35, scope: !2725)
!2745 = !DILocation(line: 332, column: 14, scope: !2725)
!2746 = !DILocation(line: 332, column: 4, scope: !2725)
!2747 = !DILocation(line: 332, column: 7, scope: !2725)
!2748 = !DILocation(line: 332, column: 12, scope: !2725)
!2749 = !DILocation(line: 333, column: 23, scope: !2725)
!2750 = !DILocation(line: 333, column: 28, scope: !2725)
!2751 = !DILocation(line: 333, column: 35, scope: !2725)
!2752 = !DILocation(line: 333, column: 14, scope: !2725)
!2753 = !DILocation(line: 333, column: 4, scope: !2725)
!2754 = !DILocation(line: 333, column: 7, scope: !2725)
!2755 = !DILocation(line: 333, column: 12, scope: !2725)
!2756 = !DILocation(line: 334, column: 23, scope: !2725)
!2757 = !DILocation(line: 334, column: 35, scope: !2725)
!2758 = !DILocation(line: 334, column: 14, scope: !2725)
!2759 = !DILocation(line: 334, column: 4, scope: !2725)
!2760 = !DILocation(line: 334, column: 7, scope: !2725)
!2761 = !DILocation(line: 334, column: 12, scope: !2725)
!2762 = !DILocation(line: 335, column: 23, scope: !2725)
!2763 = !DILocation(line: 335, column: 28, scope: !2725)
!2764 = !DILocation(line: 335, column: 35, scope: !2725)
!2765 = !DILocation(line: 335, column: 14, scope: !2725)
!2766 = !DILocation(line: 335, column: 4, scope: !2725)
!2767 = !DILocation(line: 335, column: 7, scope: !2725)
!2768 = !DILocation(line: 335, column: 12, scope: !2725)
!2769 = !DILocation(line: 336, column: 23, scope: !2725)
!2770 = !DILocation(line: 336, column: 28, scope: !2725)
!2771 = !DILocation(line: 336, column: 35, scope: !2725)
!2772 = !DILocation(line: 336, column: 14, scope: !2725)
!2773 = !DILocation(line: 336, column: 4, scope: !2725)
!2774 = !DILocation(line: 336, column: 7, scope: !2725)
!2775 = !DILocation(line: 336, column: 12, scope: !2725)
!2776 = !DILocation(line: 337, column: 23, scope: !2725)
!2777 = !DILocation(line: 337, column: 28, scope: !2725)
!2778 = !DILocation(line: 337, column: 35, scope: !2725)
!2779 = !DILocation(line: 337, column: 14, scope: !2725)
!2780 = !DILocation(line: 337, column: 4, scope: !2725)
!2781 = !DILocation(line: 337, column: 7, scope: !2725)
!2782 = !DILocation(line: 337, column: 12, scope: !2725)
!2783 = !DILocation(line: 338, column: 23, scope: !2725)
!2784 = !DILocation(line: 338, column: 35, scope: !2725)
!2785 = !DILocation(line: 338, column: 14, scope: !2725)
!2786 = !DILocation(line: 338, column: 4, scope: !2725)
!2787 = !DILocation(line: 338, column: 7, scope: !2725)
!2788 = !DILocation(line: 338, column: 12, scope: !2725)
!2789 = !DILocation(line: 339, column: 1, scope: !2725)
!2790 = distinct !DISubprogram(name: "uInt64_to_double", scope: !2, file: !2, line: 343, type: !2791, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!59, !2728}
!2793 = !DILocalVariable(name: "n", arg: 1, scope: !2790, file: !2, line: 343, type: !2728)
!2794 = !DILocation(line: 343, column: 35, scope: !2790)
!2795 = !DILocalVariable(name: "i", scope: !2790, file: !2, line: 345, type: !43)
!2796 = !DILocation(line: 345, column: 11, scope: !2790)
!2797 = !DILocalVariable(name: "base", scope: !2790, file: !2, line: 346, type: !59)
!2798 = !DILocation(line: 346, column: 11, scope: !2790)
!2799 = !DILocalVariable(name: "sum", scope: !2790, file: !2, line: 347, type: !59)
!2800 = !DILocation(line: 347, column: 11, scope: !2790)
!2801 = !DILocation(line: 348, column: 11, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2790, file: !2, line: 348, column: 4)
!2803 = !DILocation(line: 348, column: 9, scope: !2802)
!2804 = !DILocation(line: 348, column: 16, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 348, column: 4)
!2806 = !DILocation(line: 348, column: 18, scope: !2805)
!2807 = !DILocation(line: 348, column: 4, scope: !2802)
!2808 = !DILocation(line: 349, column: 15, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2805, file: !2, line: 348, column: 28)
!2810 = !DILocation(line: 349, column: 31, scope: !2809)
!2811 = !DILocation(line: 349, column: 34, scope: !2809)
!2812 = !DILocation(line: 349, column: 36, scope: !2809)
!2813 = !DILocation(line: 349, column: 22, scope: !2809)
!2814 = !DILocation(line: 349, column: 12, scope: !2809)
!2815 = !DILocation(line: 350, column: 12, scope: !2809)
!2816 = !DILocation(line: 351, column: 4, scope: !2809)
!2817 = !DILocation(line: 348, column: 24, scope: !2805)
!2818 = !DILocation(line: 348, column: 4, scope: !2805)
!2819 = distinct !{!2819, !2807, !2820, !668}
!2820 = !DILocation(line: 351, column: 4, scope: !2802)
!2821 = !DILocation(line: 352, column: 11, scope: !2790)
!2822 = !DILocation(line: 352, column: 4, scope: !2790)
!2823 = distinct !DISubprogram(name: "uInt64_toAscii", scope: !2, file: !2, line: 386, type: !2824, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{null, !221, !2728}
!2826 = !DILocalVariable(name: "outbuf", arg: 1, scope: !2823, file: !2, line: 386, type: !221)
!2827 = !DILocation(line: 386, column: 29, scope: !2823)
!2828 = !DILocalVariable(name: "n", arg: 2, scope: !2823, file: !2, line: 386, type: !2728)
!2829 = !DILocation(line: 386, column: 45, scope: !2823)
!2830 = !DILocalVariable(name: "i", scope: !2823, file: !2, line: 388, type: !43)
!2831 = !DILocation(line: 388, column: 11, scope: !2823)
!2832 = !DILocalVariable(name: "q", scope: !2823, file: !2, line: 388, type: !43)
!2833 = !DILocation(line: 388, column: 14, scope: !2823)
!2834 = !DILocalVariable(name: "buf", scope: !2823, file: !2, line: 389, type: !2835)
!2835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !306)
!2836 = !DILocation(line: 389, column: 11, scope: !2823)
!2837 = !DILocalVariable(name: "nBuf", scope: !2823, file: !2, line: 390, type: !43)
!2838 = !DILocation(line: 390, column: 11, scope: !2823)
!2839 = !DILocalVariable(name: "n_copy", scope: !2823, file: !2, line: 391, type: !2605)
!2840 = !DILocation(line: 391, column: 11, scope: !2823)
!2841 = !DILocation(line: 391, column: 21, scope: !2823)
!2842 = !DILocation(line: 391, column: 20, scope: !2823)
!2843 = !DILocation(line: 392, column: 4, scope: !2823)
!2844 = !DILocation(line: 393, column: 11, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2823, file: !2, line: 392, column: 7)
!2846 = !DILocation(line: 393, column: 9, scope: !2845)
!2847 = !DILocation(line: 394, column: 19, scope: !2845)
!2848 = !DILocation(line: 394, column: 21, scope: !2845)
!2849 = !DILocation(line: 394, column: 11, scope: !2845)
!2850 = !DILocation(line: 394, column: 7, scope: !2845)
!2851 = !DILocation(line: 394, column: 17, scope: !2845)
!2852 = !DILocation(line: 395, column: 11, scope: !2845)
!2853 = !DILocation(line: 396, column: 4, scope: !2845)
!2854 = !DILocation(line: 396, column: 14, scope: !2823)
!2855 = !DILocation(line: 396, column: 13, scope: !2823)
!2856 = distinct !{!2856, !2843, !2857, !668}
!2857 = !DILocation(line: 396, column: 36, scope: !2823)
!2858 = !DILocation(line: 397, column: 4, scope: !2823)
!2859 = !DILocation(line: 397, column: 11, scope: !2823)
!2860 = !DILocation(line: 397, column: 17, scope: !2823)
!2861 = !DILocation(line: 398, column: 11, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2823, file: !2, line: 398, column: 4)
!2863 = !DILocation(line: 398, column: 9, scope: !2862)
!2864 = !DILocation(line: 398, column: 16, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !2, line: 398, column: 4)
!2866 = !DILocation(line: 398, column: 20, scope: !2865)
!2867 = !DILocation(line: 398, column: 18, scope: !2865)
!2868 = !DILocation(line: 398, column: 4, scope: !2862)
!2869 = !DILocation(line: 399, column: 23, scope: !2865)
!2870 = !DILocation(line: 399, column: 28, scope: !2865)
!2871 = !DILocation(line: 399, column: 27, scope: !2865)
!2872 = !DILocation(line: 399, column: 29, scope: !2865)
!2873 = !DILocation(line: 399, column: 19, scope: !2865)
!2874 = !DILocation(line: 399, column: 7, scope: !2865)
!2875 = !DILocation(line: 399, column: 14, scope: !2865)
!2876 = !DILocation(line: 399, column: 17, scope: !2865)
!2877 = !DILocation(line: 398, column: 27, scope: !2865)
!2878 = !DILocation(line: 398, column: 4, scope: !2865)
!2879 = distinct !{!2879, !2868, !2880, !668}
!2880 = !DILocation(line: 399, column: 31, scope: !2862)
!2881 = !DILocation(line: 400, column: 1, scope: !2823)
!2882 = distinct !DISubprogram(name: "configError", scope: !2, file: !2, line: 967, type: !1379, scopeLine: 968, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2883 = !DILocation(line: 969, column: 14, scope: !2882)
!2884 = !DILocation(line: 969, column: 4, scope: !2882)
!2885 = !DILocation(line: 975, column: 4, scope: !2882)
!2886 = !DILocation(line: 976, column: 9, scope: !2882)
!2887 = !DILocation(line: 976, column: 4, scope: !2882)
!2888 = distinct !DISubprogram(name: "uInt64_qrm10", scope: !2, file: !2, line: 368, type: !2889, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!43, !2728}
!2891 = !DILocalVariable(name: "n", arg: 1, scope: !2888, file: !2, line: 368, type: !2728)
!2892 = !DILocation(line: 368, column: 30, scope: !2888)
!2893 = !DILocalVariable(name: "rem", scope: !2888, file: !2, line: 370, type: !2477)
!2894 = !DILocation(line: 370, column: 11, scope: !2888)
!2895 = !DILocalVariable(name: "tmp", scope: !2888, file: !2, line: 370, type: !2477)
!2896 = !DILocation(line: 370, column: 16, scope: !2888)
!2897 = !DILocalVariable(name: "i", scope: !2888, file: !2, line: 371, type: !43)
!2898 = !DILocation(line: 371, column: 11, scope: !2888)
!2899 = !DILocation(line: 372, column: 8, scope: !2888)
!2900 = !DILocation(line: 373, column: 11, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2888, file: !2, line: 373, column: 4)
!2902 = !DILocation(line: 373, column: 9, scope: !2901)
!2903 = !DILocation(line: 373, column: 16, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 373, column: 4)
!2905 = !DILocation(line: 373, column: 18, scope: !2904)
!2906 = !DILocation(line: 373, column: 4, scope: !2901)
!2907 = !DILocation(line: 374, column: 13, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !2, line: 373, column: 29)
!2909 = !DILocation(line: 374, column: 17, scope: !2908)
!2910 = !DILocation(line: 374, column: 25, scope: !2908)
!2911 = !DILocation(line: 374, column: 28, scope: !2908)
!2912 = !DILocation(line: 374, column: 30, scope: !2908)
!2913 = !DILocation(line: 374, column: 23, scope: !2908)
!2914 = !DILocation(line: 374, column: 11, scope: !2908)
!2915 = !DILocation(line: 375, column: 17, scope: !2908)
!2916 = !DILocation(line: 375, column: 21, scope: !2908)
!2917 = !DILocation(line: 375, column: 7, scope: !2908)
!2918 = !DILocation(line: 375, column: 10, scope: !2908)
!2919 = !DILocation(line: 375, column: 12, scope: !2908)
!2920 = !DILocation(line: 375, column: 15, scope: !2908)
!2921 = !DILocation(line: 376, column: 13, scope: !2908)
!2922 = !DILocation(line: 376, column: 17, scope: !2908)
!2923 = !DILocation(line: 376, column: 11, scope: !2908)
!2924 = !DILocation(line: 377, column: 4, scope: !2908)
!2925 = !DILocation(line: 373, column: 25, scope: !2904)
!2926 = !DILocation(line: 373, column: 4, scope: !2904)
!2927 = distinct !{!2927, !2906, !2928, !668}
!2928 = !DILocation(line: 377, column: 4, scope: !2901)
!2929 = !DILocation(line: 378, column: 11, scope: !2888)
!2930 = !DILocation(line: 378, column: 4, scope: !2888)
!2931 = distinct !DISubprogram(name: "uInt64_isZero", scope: !2, file: !2, line: 357, type: !2932, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!41, !2728}
!2934 = !DILocalVariable(name: "n", arg: 1, scope: !2931, file: !2, line: 357, type: !2728)
!2935 = !DILocation(line: 357, column: 30, scope: !2931)
!2936 = !DILocalVariable(name: "i", scope: !2931, file: !2, line: 359, type: !43)
!2937 = !DILocation(line: 359, column: 10, scope: !2931)
!2938 = !DILocation(line: 360, column: 11, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2931, file: !2, line: 360, column: 4)
!2940 = !DILocation(line: 360, column: 9, scope: !2939)
!2941 = !DILocation(line: 360, column: 16, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2939, file: !2, line: 360, column: 4)
!2943 = !DILocation(line: 360, column: 18, scope: !2942)
!2944 = !DILocation(line: 360, column: 4, scope: !2939)
!2945 = !DILocation(line: 361, column: 11, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !2, line: 361, column: 11)
!2947 = !DILocation(line: 361, column: 14, scope: !2946)
!2948 = !DILocation(line: 361, column: 16, scope: !2946)
!2949 = !DILocation(line: 361, column: 19, scope: !2946)
!2950 = !DILocation(line: 361, column: 25, scope: !2946)
!2951 = !DILocation(line: 361, column: 22, scope: !2946)
!2952 = !DILocation(line: 360, column: 24, scope: !2942)
!2953 = !DILocation(line: 360, column: 4, scope: !2942)
!2954 = distinct !{!2954, !2944, !2955, !668}
!2955 = !DILocation(line: 361, column: 32, scope: !2939)
!2956 = !DILocation(line: 362, column: 4, scope: !2931)
!2957 = !DILocation(line: 363, column: 1, scope: !2931)
!2958 = distinct !DISubprogram(name: "mapSuffix", scope: !2, file: !2, line: 1194, type: !2959, scopeLine: 1196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!41, !46, !46, !46}
!2961 = !DILocalVariable(name: "name", arg: 1, scope: !2958, file: !2, line: 1194, type: !46)
!2962 = !DILocation(line: 1194, column: 24, scope: !2958)
!2963 = !DILocalVariable(name: "oldSuffix", arg: 2, scope: !2958, file: !2, line: 1195, type: !46)
!2964 = !DILocation(line: 1195, column: 24, scope: !2958)
!2965 = !DILocalVariable(name: "newSuffix", arg: 3, scope: !2958, file: !2, line: 1195, type: !46)
!2966 = !DILocation(line: 1195, column: 41, scope: !2958)
!2967 = !DILocation(line: 1197, column: 19, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2958, file: !2, line: 1197, column: 8)
!2969 = !DILocation(line: 1197, column: 24, scope: !2968)
!2970 = !DILocation(line: 1197, column: 9, scope: !2968)
!2971 = !DILocation(line: 1197, column: 8, scope: !2968)
!2972 = !DILocation(line: 1197, column: 36, scope: !2968)
!2973 = !DILocation(line: 1198, column: 4, scope: !2958)
!2974 = !DILocation(line: 1198, column: 16, scope: !2958)
!2975 = !DILocation(line: 1198, column: 9, scope: !2958)
!2976 = !DILocation(line: 1198, column: 29, scope: !2958)
!2977 = !DILocation(line: 1198, column: 22, scope: !2958)
!2978 = !DILocation(line: 1198, column: 21, scope: !2958)
!2979 = !DILocation(line: 1198, column: 41, scope: !2958)
!2980 = !DILocation(line: 1199, column: 13, scope: !2958)
!2981 = !DILocation(line: 1199, column: 19, scope: !2958)
!2982 = !DILocation(line: 1199, column: 4, scope: !2958)
!2983 = !DILocation(line: 1200, column: 4, scope: !2958)
!2984 = !DILocation(line: 1201, column: 1, scope: !2958)
!2985 = distinct !DISubprogram(name: "uncompressStream", scope: !2, file: !2, line: 521, type: !2986, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!41, !213, !213}
!2988 = !DILocalVariable(name: "zStream", arg: 1, scope: !2985, file: !2, line: 521, type: !213)
!2989 = !DILocation(line: 521, column: 31, scope: !2985)
!2990 = !DILocalVariable(name: "stream", arg: 2, scope: !2985, file: !2, line: 521, type: !213)
!2991 = !DILocation(line: 521, column: 46, scope: !2985)
!2992 = !DILocalVariable(name: "bzf", scope: !2985, file: !2, line: 523, type: !2465)
!2993 = !DILocation(line: 523, column: 12, scope: !2985)
!2994 = !DILocalVariable(name: "bzerr", scope: !2985, file: !2, line: 524, type: !43)
!2995 = !DILocation(line: 524, column: 12, scope: !2985)
!2996 = !DILocalVariable(name: "bzerr_dummy", scope: !2985, file: !2, line: 524, type: !43)
!2997 = !DILocation(line: 524, column: 19, scope: !2985)
!2998 = !DILocalVariable(name: "ret", scope: !2985, file: !2, line: 524, type: !43)
!2999 = !DILocation(line: 524, column: 32, scope: !2985)
!3000 = !DILocalVariable(name: "nread", scope: !2985, file: !2, line: 524, type: !43)
!3001 = !DILocation(line: 524, column: 37, scope: !2985)
!3002 = !DILocalVariable(name: "streamNo", scope: !2985, file: !2, line: 524, type: !43)
!3003 = !DILocation(line: 524, column: 44, scope: !2985)
!3004 = !DILocalVariable(name: "i", scope: !2985, file: !2, line: 524, type: !43)
!3005 = !DILocation(line: 524, column: 54, scope: !2985)
!3006 = !DILocalVariable(name: "obuf", scope: !2985, file: !2, line: 525, type: !2470)
!3007 = !DILocation(line: 525, column: 12, scope: !2985)
!3008 = !DILocalVariable(name: "unused", scope: !2985, file: !2, line: 526, type: !2470)
!3009 = !DILocation(line: 526, column: 12, scope: !2985)
!3010 = !DILocalVariable(name: "nUnused", scope: !2985, file: !2, line: 527, type: !43)
!3011 = !DILocation(line: 527, column: 12, scope: !2985)
!3012 = !DILocalVariable(name: "unusedTmpV", scope: !2985, file: !2, line: 528, type: !40)
!3013 = !DILocation(line: 528, column: 12, scope: !2985)
!3014 = !DILocalVariable(name: "unusedTmp", scope: !2985, file: !2, line: 529, type: !60)
!3015 = !DILocation(line: 529, column: 12, scope: !2985)
!3016 = !DILocation(line: 531, column: 12, scope: !2985)
!3017 = !DILocation(line: 532, column: 13, scope: !2985)
!3018 = !DILocation(line: 537, column: 15, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 537, column: 8)
!3020 = !DILocation(line: 537, column: 8, scope: !3019)
!3021 = !DILocation(line: 537, column: 24, scope: !3019)
!3022 = !DILocation(line: 538, column: 15, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 538, column: 8)
!3024 = !DILocation(line: 538, column: 8, scope: !3023)
!3025 = !DILocation(line: 538, column: 25, scope: !3023)
!3026 = !DILocation(line: 540, column: 4, scope: !2985)
!3027 = !DILocation(line: 543, column: 24, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 540, column: 17)
!3029 = !DILocation(line: 543, column: 33, scope: !3028)
!3030 = !DILocation(line: 544, column: 21, scope: !3028)
!3031 = !DILocation(line: 544, column: 16, scope: !3028)
!3032 = !DILocation(line: 544, column: 32, scope: !3028)
!3033 = !DILocation(line: 544, column: 40, scope: !3028)
!3034 = !DILocation(line: 542, column: 13, scope: !3028)
!3035 = !DILocation(line: 542, column: 11, scope: !3028)
!3036 = !DILocation(line: 546, column: 11, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 546, column: 11)
!3038 = !DILocation(line: 546, column: 15, scope: !3037)
!3039 = !DILocation(line: 546, column: 23, scope: !3037)
!3040 = !DILocation(line: 546, column: 26, scope: !3037)
!3041 = !DILocation(line: 546, column: 32, scope: !3037)
!3042 = !DILocation(line: 546, column: 42, scope: !3037)
!3043 = !DILocation(line: 547, column: 15, scope: !3028)
!3044 = !DILocation(line: 549, column: 7, scope: !3028)
!3045 = !DILocation(line: 549, column: 14, scope: !3028)
!3046 = !DILocation(line: 549, column: 20, scope: !3028)
!3047 = !DILocation(line: 550, column: 39, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 549, column: 30)
!3049 = !DILocation(line: 550, column: 44, scope: !3048)
!3050 = !DILocation(line: 550, column: 18, scope: !3048)
!3051 = !DILocation(line: 550, column: 16, scope: !3048)
!3052 = !DILocation(line: 551, column: 14, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 551, column: 14)
!3054 = !DILocation(line: 551, column: 20, scope: !3053)
!3055 = !DILocation(line: 551, column: 44, scope: !3053)
!3056 = !DILocation(line: 552, column: 15, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 552, column: 14)
!3058 = !DILocation(line: 552, column: 21, scope: !3057)
!3059 = !DILocation(line: 552, column: 30, scope: !3057)
!3060 = !DILocation(line: 552, column: 33, scope: !3057)
!3061 = !DILocation(line: 552, column: 39, scope: !3057)
!3062 = !DILocation(line: 552, column: 57, scope: !3057)
!3063 = !DILocation(line: 552, column: 60, scope: !3057)
!3064 = !DILocation(line: 552, column: 66, scope: !3057)
!3065 = !DILocation(line: 553, column: 22, scope: !3057)
!3066 = !DILocation(line: 553, column: 43, scope: !3057)
!3067 = !DILocation(line: 553, column: 50, scope: !3057)
!3068 = !DILocation(line: 553, column: 13, scope: !3057)
!3069 = !DILocation(line: 554, column: 21, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 554, column: 14)
!3071 = !DILocation(line: 554, column: 14, scope: !3070)
!3072 = !DILocation(line: 554, column: 30, scope: !3070)
!3073 = distinct !{!3073, !3044, !3074, !668}
!3074 = !DILocation(line: 555, column: 7, scope: !3028)
!3075 = !DILocation(line: 556, column: 11, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 556, column: 11)
!3077 = !DILocation(line: 556, column: 17, scope: !3076)
!3078 = !DILocation(line: 556, column: 35, scope: !3076)
!3079 = !DILocation(line: 558, column: 37, scope: !3028)
!3080 = !DILocation(line: 558, column: 7, scope: !3028)
!3081 = !DILocation(line: 559, column: 11, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 559, column: 11)
!3083 = !DILocation(line: 559, column: 17, scope: !3082)
!3084 = !DILocation(line: 559, column: 27, scope: !3082)
!3085 = !DILocation(line: 561, column: 27, scope: !3028)
!3086 = !DILocation(line: 561, column: 17, scope: !3028)
!3087 = !DILocation(line: 562, column: 14, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 562, column: 7)
!3089 = !DILocation(line: 562, column: 12, scope: !3088)
!3090 = !DILocation(line: 562, column: 19, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3088, file: !2, line: 562, column: 7)
!3092 = !DILocation(line: 562, column: 23, scope: !3091)
!3093 = !DILocation(line: 562, column: 21, scope: !3091)
!3094 = !DILocation(line: 562, column: 7, scope: !3088)
!3095 = !DILocation(line: 562, column: 49, scope: !3091)
!3096 = !DILocation(line: 562, column: 59, scope: !3091)
!3097 = !DILocation(line: 562, column: 44, scope: !3091)
!3098 = !DILocation(line: 562, column: 37, scope: !3091)
!3099 = !DILocation(line: 562, column: 47, scope: !3091)
!3100 = !DILocation(line: 562, column: 33, scope: !3091)
!3101 = !DILocation(line: 562, column: 7, scope: !3091)
!3102 = distinct !{!3102, !3094, !3103, !668}
!3103 = !DILocation(line: 562, column: 60, scope: !3088)
!3104 = !DILocation(line: 564, column: 33, scope: !3028)
!3105 = !DILocation(line: 564, column: 7, scope: !3028)
!3106 = !DILocation(line: 565, column: 11, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 565, column: 11)
!3108 = !DILocation(line: 565, column: 17, scope: !3107)
!3109 = !DILocation(line: 565, column: 27, scope: !3107)
!3110 = !DILocation(line: 567, column: 11, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 567, column: 11)
!3112 = !DILocation(line: 567, column: 19, scope: !3111)
!3113 = !DILocation(line: 567, column: 24, scope: !3111)
!3114 = !DILocation(line: 567, column: 34, scope: !3111)
!3115 = !DILocation(line: 567, column: 27, scope: !3111)
!3116 = !DILocation(line: 567, column: 44, scope: !3111)
!3117 = distinct !{!3117, !3026, !3118}
!3118 = !DILocation(line: 568, column: 4, scope: !2985)
!3119 = !DILabel(scope: !2985, name: "closeok", file: !2, line: 570, column: 4)
!3120 = !DILocation(line: 570, column: 4, scope: !2985)
!3121 = !DILocation(line: 571, column: 15, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 571, column: 8)
!3123 = !DILocation(line: 571, column: 8, scope: !3122)
!3124 = !DILocation(line: 571, column: 25, scope: !3122)
!3125 = !DILocation(line: 572, column: 19, scope: !2985)
!3126 = !DILocation(line: 572, column: 10, scope: !2985)
!3127 = !DILocation(line: 572, column: 8, scope: !2985)
!3128 = !DILocation(line: 573, column: 8, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 573, column: 8)
!3130 = !DILocation(line: 573, column: 12, scope: !3129)
!3131 = !DILocation(line: 573, column: 20, scope: !3129)
!3132 = !DILocation(line: 575, column: 15, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 575, column: 8)
!3134 = !DILocation(line: 575, column: 8, scope: !3133)
!3135 = !DILocation(line: 575, column: 24, scope: !3133)
!3136 = !DILocation(line: 576, column: 19, scope: !2985)
!3137 = !DILocation(line: 576, column: 10, scope: !2985)
!3138 = !DILocation(line: 576, column: 8, scope: !2985)
!3139 = !DILocation(line: 577, column: 8, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 577, column: 8)
!3141 = !DILocation(line: 577, column: 12, scope: !3140)
!3142 = !DILocation(line: 577, column: 18, scope: !3140)
!3143 = !DILocation(line: 578, column: 8, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 578, column: 8)
!3145 = !DILocation(line: 578, column: 18, scope: !3144)
!3146 = !DILocation(line: 578, column: 15, scope: !3144)
!3147 = !DILocation(line: 579, column: 22, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 578, column: 26)
!3149 = !DILocation(line: 579, column: 13, scope: !3148)
!3150 = !DILocation(line: 579, column: 11, scope: !3148)
!3151 = !DILocation(line: 580, column: 30, scope: !3148)
!3152 = !DILocation(line: 581, column: 11, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3148, file: !2, line: 581, column: 11)
!3154 = !DILocation(line: 581, column: 15, scope: !3153)
!3155 = !DILocation(line: 581, column: 23, scope: !3153)
!3156 = !DILocation(line: 582, column: 4, scope: !3148)
!3157 = !DILocation(line: 583, column: 27, scope: !2985)
!3158 = !DILocation(line: 584, column: 8, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 584, column: 8)
!3160 = !DILocation(line: 584, column: 18, scope: !3159)
!3161 = !DILocation(line: 584, column: 34, scope: !3159)
!3162 = !DILocation(line: 584, column: 24, scope: !3159)
!3163 = !DILocation(line: 585, column: 4, scope: !2985)
!3164 = !DILabel(scope: !2985, name: "trycat", file: !2, line: 587, column: 4)
!3165 = !DILocation(line: 587, column: 4, scope: !2985)
!3166 = !DILocation(line: 588, column: 8, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 588, column: 8)
!3168 = !DILocation(line: 589, column: 14, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3167, file: !2, line: 588, column: 24)
!3170 = !DILocation(line: 589, column: 7, scope: !3169)
!3171 = !DILocation(line: 590, column: 7, scope: !3169)
!3172 = !DILocation(line: 591, column: 20, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !2, line: 591, column: 13)
!3174 = distinct !DILexicalBlock(scope: !3169, file: !2, line: 590, column: 20)
!3175 = !DILocation(line: 591, column: 13, scope: !3173)
!3176 = !DILocation(line: 591, column: 30, scope: !3173)
!3177 = !DILocation(line: 592, column: 25, scope: !3174)
!3178 = !DILocation(line: 592, column: 52, scope: !3174)
!3179 = !DILocation(line: 592, column: 17, scope: !3174)
!3180 = !DILocation(line: 592, column: 15, scope: !3174)
!3181 = !DILocation(line: 593, column: 20, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3174, file: !2, line: 593, column: 13)
!3183 = !DILocation(line: 593, column: 13, scope: !3182)
!3184 = !DILocation(line: 593, column: 30, scope: !3182)
!3185 = !DILocation(line: 594, column: 13, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3174, file: !2, line: 594, column: 13)
!3187 = !DILocation(line: 594, column: 19, scope: !3186)
!3188 = !DILocation(line: 594, column: 33, scope: !3186)
!3189 = !DILocation(line: 594, column: 54, scope: !3186)
!3190 = !DILocation(line: 594, column: 61, scope: !3186)
!3191 = !DILocation(line: 594, column: 24, scope: !3186)
!3192 = !DILocation(line: 595, column: 20, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3174, file: !2, line: 595, column: 13)
!3194 = !DILocation(line: 595, column: 13, scope: !3193)
!3195 = !DILocation(line: 595, column: 29, scope: !3193)
!3196 = distinct !{!3196, !3171, !3197}
!3197 = !DILocation(line: 596, column: 7, scope: !3169)
!3198 = !DILocation(line: 597, column: 7, scope: !3169)
!3199 = !DILabel(scope: !2985, name: "errhandler", file: !2, line: 600, column: 4)
!3200 = !DILocation(line: 600, column: 4, scope: !2985)
!3201 = !DILocation(line: 601, column: 36, scope: !2985)
!3202 = !DILocation(line: 601, column: 4, scope: !2985)
!3203 = !DILocation(line: 602, column: 12, scope: !2985)
!3204 = !DILocation(line: 602, column: 4, scope: !2985)
!3205 = !DILocation(line: 604, column: 10, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 602, column: 19)
!3207 = !DILabel(scope: !3206, name: "errhandler_io", file: !2, line: 606, column: 10)
!3208 = !DILocation(line: 606, column: 10, scope: !3206)
!3209 = !DILocation(line: 607, column: 10, scope: !3206)
!3210 = !DILocation(line: 609, column: 10, scope: !3206)
!3211 = !DILocation(line: 611, column: 10, scope: !3206)
!3212 = !DILocation(line: 613, column: 10, scope: !3206)
!3213 = !DILocation(line: 615, column: 14, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 615, column: 14)
!3215 = !DILocation(line: 615, column: 25, scope: !3214)
!3216 = !DILocation(line: 615, column: 22, scope: !3214)
!3217 = !DILocation(line: 615, column: 39, scope: !3214)
!3218 = !DILocation(line: 615, column: 32, scope: !3214)
!3219 = !DILocation(line: 616, column: 14, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 616, column: 14)
!3221 = !DILocation(line: 616, column: 24, scope: !3220)
!3222 = !DILocation(line: 616, column: 21, scope: !3220)
!3223 = !DILocation(line: 616, column: 39, scope: !3220)
!3224 = !DILocation(line: 616, column: 32, scope: !3220)
!3225 = !DILocation(line: 617, column: 14, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 617, column: 14)
!3227 = !DILocation(line: 617, column: 23, scope: !3226)
!3228 = !DILocation(line: 618, column: 13, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !2, line: 617, column: 29)
!3230 = !DILocation(line: 620, column: 17, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !2, line: 620, column: 17)
!3232 = distinct !DILexicalBlock(scope: !3226, file: !2, line: 619, column: 17)
!3233 = !DILocation(line: 621, column: 23, scope: !3231)
!3234 = !DILocation(line: 623, column: 23, scope: !3231)
!3235 = !DILocation(line: 621, column: 13, scope: !3231)
!3236 = !DILocation(line: 624, column: 13, scope: !3232)
!3237 = !DILocation(line: 627, column: 10, scope: !3206)
!3238 = !DILocation(line: 632, column: 1, scope: !2985)
!3239 = distinct !DISubprogram(name: "crcError", scope: !2, file: !2, line: 844, type: !1379, scopeLine: 845, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!3240 = !DILocation(line: 846, column: 14, scope: !3239)
!3241 = !DILocation(line: 848, column: 14, scope: !3239)
!3242 = !DILocation(line: 846, column: 4, scope: !3239)
!3243 = !DILocation(line: 849, column: 4, scope: !3239)
!3244 = !DILocation(line: 850, column: 4, scope: !3239)
!3245 = !DILocation(line: 851, column: 4, scope: !3239)
!3246 = distinct !DISubprogram(name: "compressedStreamEOF", scope: !2, file: !2, line: 857, type: !1379, scopeLine: 858, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!3247 = !DILocation(line: 859, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3246, file: !2, line: 859, column: 7)
!3249 = !DILocation(line: 860, column: 15, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3248, file: !2, line: 859, column: 14)
!3251 = !DILocation(line: 863, column: 8, scope: !3250)
!3252 = !DILocation(line: 860, column: 5, scope: !3250)
!3253 = !DILocation(line: 864, column: 14, scope: !3250)
!3254 = !DILocation(line: 864, column: 5, scope: !3250)
!3255 = !DILocation(line: 865, column: 5, scope: !3250)
!3256 = !DILocation(line: 866, column: 5, scope: !3250)
!3257 = !DILocation(line: 867, column: 3, scope: !3250)
!3258 = !DILocation(line: 868, column: 3, scope: !3246)
!3259 = distinct !DISubprogram(name: "testStream", scope: !2, file: !2, line: 637, type: !2708, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !575)
!3260 = !DILocalVariable(name: "zStream", arg: 1, scope: !3259, file: !2, line: 637, type: !213)
!3261 = !DILocation(line: 637, column: 25, scope: !3259)
!3262 = !DILocalVariable(name: "bzf", scope: !3259, file: !2, line: 639, type: !2465)
!3263 = !DILocation(line: 639, column: 12, scope: !3259)
!3264 = !DILocalVariable(name: "bzerr", scope: !3259, file: !2, line: 640, type: !43)
!3265 = !DILocation(line: 640, column: 12, scope: !3259)
!3266 = !DILocalVariable(name: "bzerr_dummy", scope: !3259, file: !2, line: 640, type: !43)
!3267 = !DILocation(line: 640, column: 19, scope: !3259)
!3268 = !DILocalVariable(name: "ret", scope: !3259, file: !2, line: 640, type: !43)
!3269 = !DILocation(line: 640, column: 32, scope: !3259)
!3270 = !DILocalVariable(name: "nread", scope: !3259, file: !2, line: 640, type: !43)
!3271 = !DILocation(line: 640, column: 37, scope: !3259)
!3272 = !DILocalVariable(name: "streamNo", scope: !3259, file: !2, line: 640, type: !43)
!3273 = !DILocation(line: 640, column: 44, scope: !3259)
!3274 = !DILocalVariable(name: "i", scope: !3259, file: !2, line: 640, type: !43)
!3275 = !DILocation(line: 640, column: 54, scope: !3259)
!3276 = !DILocalVariable(name: "obuf", scope: !3259, file: !2, line: 641, type: !2470)
!3277 = !DILocation(line: 641, column: 12, scope: !3259)
!3278 = !DILocalVariable(name: "unused", scope: !3259, file: !2, line: 642, type: !2470)
!3279 = !DILocation(line: 642, column: 12, scope: !3259)
!3280 = !DILocalVariable(name: "nUnused", scope: !3259, file: !2, line: 643, type: !43)
!3281 = !DILocation(line: 643, column: 12, scope: !3259)
!3282 = !DILocalVariable(name: "unusedTmpV", scope: !3259, file: !2, line: 644, type: !40)
!3283 = !DILocation(line: 644, column: 12, scope: !3259)
!3284 = !DILocalVariable(name: "unusedTmp", scope: !3259, file: !2, line: 645, type: !60)
!3285 = !DILocation(line: 645, column: 12, scope: !3259)
!3286 = !DILocation(line: 647, column: 12, scope: !3259)
!3287 = !DILocation(line: 648, column: 13, scope: !3259)
!3288 = !DILocation(line: 651, column: 15, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 651, column: 8)
!3290 = !DILocation(line: 651, column: 8, scope: !3289)
!3291 = !DILocation(line: 651, column: 25, scope: !3289)
!3292 = !DILocation(line: 653, column: 4, scope: !3259)
!3293 = !DILocation(line: 656, column: 24, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 653, column: 17)
!3295 = !DILocation(line: 656, column: 33, scope: !3294)
!3296 = !DILocation(line: 657, column: 21, scope: !3294)
!3297 = !DILocation(line: 657, column: 16, scope: !3294)
!3298 = !DILocation(line: 657, column: 32, scope: !3294)
!3299 = !DILocation(line: 657, column: 40, scope: !3294)
!3300 = !DILocation(line: 655, column: 13, scope: !3294)
!3301 = !DILocation(line: 655, column: 11, scope: !3294)
!3302 = !DILocation(line: 659, column: 11, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 659, column: 11)
!3304 = !DILocation(line: 659, column: 15, scope: !3303)
!3305 = !DILocation(line: 659, column: 23, scope: !3303)
!3306 = !DILocation(line: 659, column: 26, scope: !3303)
!3307 = !DILocation(line: 659, column: 32, scope: !3303)
!3308 = !DILocation(line: 659, column: 42, scope: !3303)
!3309 = !DILocation(line: 660, column: 15, scope: !3294)
!3310 = !DILocation(line: 662, column: 7, scope: !3294)
!3311 = !DILocation(line: 662, column: 14, scope: !3294)
!3312 = !DILocation(line: 662, column: 20, scope: !3294)
!3313 = !DILocation(line: 663, column: 39, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 662, column: 30)
!3315 = !DILocation(line: 663, column: 44, scope: !3314)
!3316 = !DILocation(line: 663, column: 18, scope: !3314)
!3317 = !DILocation(line: 663, column: 16, scope: !3314)
!3318 = !DILocation(line: 664, column: 14, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3314, file: !2, line: 664, column: 14)
!3320 = !DILocation(line: 664, column: 20, scope: !3319)
!3321 = !DILocation(line: 664, column: 44, scope: !3319)
!3322 = distinct !{!3322, !3310, !3323, !668}
!3323 = !DILocation(line: 665, column: 7, scope: !3294)
!3324 = !DILocation(line: 666, column: 11, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 666, column: 11)
!3326 = !DILocation(line: 666, column: 17, scope: !3325)
!3327 = !DILocation(line: 666, column: 35, scope: !3325)
!3328 = !DILocation(line: 668, column: 37, scope: !3294)
!3329 = !DILocation(line: 668, column: 7, scope: !3294)
!3330 = !DILocation(line: 669, column: 11, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 669, column: 11)
!3332 = !DILocation(line: 669, column: 17, scope: !3331)
!3333 = !DILocation(line: 669, column: 27, scope: !3331)
!3334 = !DILocation(line: 671, column: 27, scope: !3294)
!3335 = !DILocation(line: 671, column: 17, scope: !3294)
!3336 = !DILocation(line: 672, column: 14, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 672, column: 7)
!3338 = !DILocation(line: 672, column: 12, scope: !3337)
!3339 = !DILocation(line: 672, column: 19, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3337, file: !2, line: 672, column: 7)
!3341 = !DILocation(line: 672, column: 23, scope: !3340)
!3342 = !DILocation(line: 672, column: 21, scope: !3340)
!3343 = !DILocation(line: 672, column: 7, scope: !3337)
!3344 = !DILocation(line: 672, column: 49, scope: !3340)
!3345 = !DILocation(line: 672, column: 59, scope: !3340)
!3346 = !DILocation(line: 672, column: 44, scope: !3340)
!3347 = !DILocation(line: 672, column: 37, scope: !3340)
!3348 = !DILocation(line: 672, column: 47, scope: !3340)
!3349 = !DILocation(line: 672, column: 33, scope: !3340)
!3350 = !DILocation(line: 672, column: 7, scope: !3340)
!3351 = distinct !{!3351, !3343, !3352, !668}
!3352 = !DILocation(line: 672, column: 60, scope: !3337)
!3353 = !DILocation(line: 674, column: 33, scope: !3294)
!3354 = !DILocation(line: 674, column: 7, scope: !3294)
!3355 = !DILocation(line: 675, column: 11, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 675, column: 11)
!3357 = !DILocation(line: 675, column: 17, scope: !3356)
!3358 = !DILocation(line: 675, column: 27, scope: !3356)
!3359 = !DILocation(line: 676, column: 11, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 676, column: 11)
!3361 = !DILocation(line: 676, column: 19, scope: !3360)
!3362 = !DILocation(line: 676, column: 24, scope: !3360)
!3363 = !DILocation(line: 676, column: 34, scope: !3360)
!3364 = !DILocation(line: 676, column: 27, scope: !3360)
!3365 = !DILocation(line: 676, column: 44, scope: !3360)
!3366 = distinct !{!3366, !3292, !3367}
!3367 = !DILocation(line: 678, column: 4, scope: !3259)
!3368 = !DILocation(line: 680, column: 15, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 680, column: 8)
!3370 = !DILocation(line: 680, column: 8, scope: !3369)
!3371 = !DILocation(line: 680, column: 25, scope: !3369)
!3372 = !DILocation(line: 681, column: 19, scope: !3259)
!3373 = !DILocation(line: 681, column: 10, scope: !3259)
!3374 = !DILocation(line: 681, column: 8, scope: !3259)
!3375 = !DILocation(line: 682, column: 8, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 682, column: 8)
!3377 = !DILocation(line: 682, column: 12, scope: !3376)
!3378 = !DILocation(line: 682, column: 20, scope: !3376)
!3379 = !DILocation(line: 684, column: 8, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 684, column: 8)
!3381 = !DILocation(line: 684, column: 18, scope: !3380)
!3382 = !DILocation(line: 684, column: 34, scope: !3380)
!3383 = !DILocation(line: 684, column: 24, scope: !3380)
!3384 = !DILocation(line: 685, column: 4, scope: !3259)
!3385 = !DILabel(scope: !3259, name: "errhandler", file: !2, line: 687, column: 4)
!3386 = !DILocation(line: 687, column: 4, scope: !3259)
!3387 = !DILocation(line: 688, column: 36, scope: !3259)
!3388 = !DILocation(line: 688, column: 4, scope: !3259)
!3389 = !DILocation(line: 689, column: 8, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 689, column: 8)
!3391 = !DILocation(line: 689, column: 18, scope: !3390)
!3392 = !DILocation(line: 690, column: 17, scope: !3390)
!3393 = !DILocation(line: 690, column: 37, scope: !3390)
!3394 = !DILocation(line: 690, column: 7, scope: !3390)
!3395 = !DILocation(line: 691, column: 12, scope: !3259)
!3396 = !DILocation(line: 691, column: 4, scope: !3259)
!3397 = !DILocation(line: 693, column: 10, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 691, column: 19)
!3399 = !DILabel(scope: !3398, name: "errhandler_io", file: !2, line: 695, column: 10)
!3400 = !DILocation(line: 695, column: 10, scope: !3398)
!3401 = !DILocation(line: 696, column: 10, scope: !3398)
!3402 = !DILocation(line: 698, column: 20, scope: !3398)
!3403 = !DILocation(line: 698, column: 10, scope: !3398)
!3404 = !DILocation(line: 700, column: 10, scope: !3398)
!3405 = !DILocation(line: 702, column: 10, scope: !3398)
!3406 = !DILocation(line: 704, column: 20, scope: !3398)
!3407 = !DILocation(line: 704, column: 10, scope: !3398)
!3408 = !DILocation(line: 706, column: 10, scope: !3398)
!3409 = !DILocation(line: 708, column: 14, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3398, file: !2, line: 708, column: 14)
!3411 = !DILocation(line: 708, column: 25, scope: !3410)
!3412 = !DILocation(line: 708, column: 22, scope: !3410)
!3413 = !DILocation(line: 708, column: 39, scope: !3410)
!3414 = !DILocation(line: 708, column: 32, scope: !3410)
!3415 = !DILocation(line: 709, column: 14, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3398, file: !2, line: 709, column: 14)
!3417 = !DILocation(line: 709, column: 23, scope: !3416)
!3418 = !DILocation(line: 710, column: 21, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 709, column: 29)
!3420 = !DILocation(line: 710, column: 11, scope: !3419)
!3421 = !DILocation(line: 712, column: 13, scope: !3419)
!3422 = !DILocation(line: 714, column: 17, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !2, line: 714, column: 17)
!3424 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 713, column: 17)
!3425 = !DILocation(line: 715, column: 23, scope: !3423)
!3426 = !DILocation(line: 715, column: 13, scope: !3423)
!3427 = !DILocation(line: 717, column: 13, scope: !3424)
!3428 = !DILocation(line: 720, column: 10, scope: !3398)
!3429 = !DILocation(line: 725, column: 1, scope: !3259)

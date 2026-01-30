; ModuleID = 'huffman.c'
source_filename = "huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_hbMakeCodeLengths(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !14 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca [260 x i32], align 16
  %18 = alloca [516 x i32], align 16
  %19 = alloca [516 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !23, !DIExpression(), !24)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !25, !DIExpression(), !26)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !27, !DIExpression(), !28)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !29, !DIExpression(), !30)
    #dbg_declare(ptr %9, !31, !DIExpression(), !32)
    #dbg_declare(ptr %10, !33, !DIExpression(), !34)
    #dbg_declare(ptr %11, !35, !DIExpression(), !36)
    #dbg_declare(ptr %12, !37, !DIExpression(), !38)
    #dbg_declare(ptr %13, !39, !DIExpression(), !40)
    #dbg_declare(ptr %14, !41, !DIExpression(), !42)
    #dbg_declare(ptr %15, !43, !DIExpression(), !44)
    #dbg_declare(ptr %16, !45, !DIExpression(), !46)
    #dbg_declare(ptr %17, !47, !DIExpression(), !51)
    #dbg_declare(ptr %18, !52, !DIExpression(), !56)
    #dbg_declare(ptr %19, !57, !DIExpression(), !58)
  store i32 0, ptr %13, align 4, !dbg !59
  br label %30, !dbg !61

30:                                               ; preds = %55, %4
  %31 = load i32, ptr %13, align 4, !dbg !62
  %32 = load i32, ptr %7, align 4, !dbg !64
  %33 = icmp slt i32 %31, %32, !dbg !65
  br i1 %33, label %34, label %58, !dbg !66

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8, !dbg !67
  %36 = load i32, ptr %13, align 4, !dbg !68
  %37 = sext i32 %36 to i64, !dbg !67
  %38 = getelementptr inbounds i32, ptr %35, i64 %37, !dbg !67
  %39 = load i32, ptr %38, align 4, !dbg !67
  %40 = icmp eq i32 %39, 0, !dbg !69
  br i1 %40, label %41, label %42, !dbg !67

41:                                               ; preds = %34
  br label %48, !dbg !67

42:                                               ; preds = %34
  %43 = load ptr, ptr %6, align 8, !dbg !70
  %44 = load i32, ptr %13, align 4, !dbg !71
  %45 = sext i32 %44 to i64, !dbg !70
  %46 = getelementptr inbounds i32, ptr %43, i64 %45, !dbg !70
  %47 = load i32, ptr %46, align 4, !dbg !70
  br label %48, !dbg !67

48:                                               ; preds = %42, %41
  %49 = phi i32 [ 1, %41 ], [ %47, %42 ], !dbg !67
  %50 = shl i32 %49, 8, !dbg !72
  %51 = load i32, ptr %13, align 4, !dbg !73
  %52 = add nsw i32 %51, 1, !dbg !74
  %53 = sext i32 %52 to i64, !dbg !75
  %54 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %53, !dbg !75
  store i32 %50, ptr %54, align 4, !dbg !76
  br label %55, !dbg !75

55:                                               ; preds = %48
  %56 = load i32, ptr %13, align 4, !dbg !77
  %57 = add nsw i32 %56, 1, !dbg !77
  store i32 %57, ptr %13, align 4, !dbg !77
  br label %30, !dbg !78, !llvm.loop !79

58:                                               ; preds = %30
  br label %59, !dbg !82

59:                                               ; preds = %58, %429
  %60 = load i32, ptr %7, align 4, !dbg !83
  store i32 %60, ptr %9, align 4, !dbg !85
  store i32 0, ptr %10, align 4, !dbg !86
  %61 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 0, !dbg !87
  store i32 0, ptr %61, align 16, !dbg !88
  %62 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 0, !dbg !89
  store i32 0, ptr %62, align 16, !dbg !90
  %63 = getelementptr inbounds [516 x i32], ptr %19, i64 0, i64 0, !dbg !91
  store i32 -2, ptr %63, align 16, !dbg !92
  store i32 1, ptr %13, align 4, !dbg !93
  br label %64, !dbg !95

64:                                               ; preds = %113, %59
  %65 = load i32, ptr %13, align 4, !dbg !96
  %66 = load i32, ptr %7, align 4, !dbg !98
  %67 = icmp sle i32 %65, %66, !dbg !99
  br i1 %67, label %68, label %116, !dbg !100

68:                                               ; preds = %64
  %69 = load i32, ptr %13, align 4, !dbg !101
  %70 = sext i32 %69 to i64, !dbg !103
  %71 = getelementptr inbounds [516 x i32], ptr %19, i64 0, i64 %70, !dbg !103
  store i32 -1, ptr %71, align 4, !dbg !104
  %72 = load i32, ptr %10, align 4, !dbg !105
  %73 = add nsw i32 %72, 1, !dbg !105
  store i32 %73, ptr %10, align 4, !dbg !105
  %74 = load i32, ptr %13, align 4, !dbg !106
  %75 = load i32, ptr %10, align 4, !dbg !107
  %76 = sext i32 %75 to i64, !dbg !108
  %77 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %76, !dbg !108
  store i32 %74, ptr %77, align 4, !dbg !109
    #dbg_declare(ptr %20, !110, !DIExpression(), !112)
    #dbg_declare(ptr %21, !113, !DIExpression(), !112)
  %78 = load i32, ptr %10, align 4, !dbg !112
  store i32 %78, ptr %20, align 4, !dbg !112
  %79 = load i32, ptr %20, align 4, !dbg !112
  %80 = sext i32 %79 to i64, !dbg !112
  %81 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %80, !dbg !112
  %82 = load i32, ptr %81, align 4, !dbg !112
  store i32 %82, ptr %21, align 4, !dbg !112
  br label %83, !dbg !112

83:                                               ; preds = %97, %68
  %84 = load i32, ptr %21, align 4, !dbg !112
  %85 = sext i32 %84 to i64, !dbg !112
  %86 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %85, !dbg !112
  %87 = load i32, ptr %86, align 4, !dbg !112
  %88 = load i32, ptr %20, align 4, !dbg !112
  %89 = ashr i32 %88, 1, !dbg !112
  %90 = sext i32 %89 to i64, !dbg !112
  %91 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %90, !dbg !112
  %92 = load i32, ptr %91, align 4, !dbg !112
  %93 = sext i32 %92 to i64, !dbg !112
  %94 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %93, !dbg !112
  %95 = load i32, ptr %94, align 4, !dbg !112
  %96 = icmp slt i32 %87, %95, !dbg !112
  br i1 %96, label %97, label %108, !dbg !112

97:                                               ; preds = %83
  %98 = load i32, ptr %20, align 4, !dbg !114
  %99 = ashr i32 %98, 1, !dbg !114
  %100 = sext i32 %99 to i64, !dbg !114
  %101 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %100, !dbg !114
  %102 = load i32, ptr %101, align 4, !dbg !114
  %103 = load i32, ptr %20, align 4, !dbg !114
  %104 = sext i32 %103 to i64, !dbg !114
  %105 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %104, !dbg !114
  store i32 %102, ptr %105, align 4, !dbg !114
  %106 = load i32, ptr %20, align 4, !dbg !114
  %107 = ashr i32 %106, 1, !dbg !114
  store i32 %107, ptr %20, align 4, !dbg !114
  br label %83, !dbg !112, !llvm.loop !116

108:                                              ; preds = %83
  %109 = load i32, ptr %21, align 4, !dbg !112
  %110 = load i32, ptr %20, align 4, !dbg !112
  %111 = sext i32 %110 to i64, !dbg !112
  %112 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %111, !dbg !112
  store i32 %109, ptr %112, align 4, !dbg !112
  br label %113, !dbg !117

113:                                              ; preds = %108
  %114 = load i32, ptr %13, align 4, !dbg !118
  %115 = add nsw i32 %114, 1, !dbg !118
  store i32 %115, ptr %13, align 4, !dbg !118
  br label %64, !dbg !119, !llvm.loop !120

116:                                              ; preds = %64
  %117 = load i32, ptr %10, align 4, !dbg !122
  %118 = icmp slt i32 %117, 260, !dbg !122
  br i1 %118, label %120, label %119, !dbg !122

119:                                              ; preds = %116
  call void @BZ2_bz__AssertH__fail(i32 noundef 2001), !dbg !122
  br label %120, !dbg !122

120:                                              ; preds = %119, %116
  br label %121, !dbg !125

121:                                              ; preds = %358, %120
  %122 = load i32, ptr %10, align 4, !dbg !126
  %123 = icmp sgt i32 %122, 1, !dbg !127
  br i1 %123, label %124, label %363, !dbg !125

124:                                              ; preds = %121
  %125 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 1, !dbg !128
  %126 = load i32, ptr %125, align 4, !dbg !128
  store i32 %126, ptr %11, align 4, !dbg !130
  %127 = load i32, ptr %10, align 4, !dbg !131
  %128 = sext i32 %127 to i64, !dbg !132
  %129 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %128, !dbg !132
  %130 = load i32, ptr %129, align 4, !dbg !132
  %131 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 1, !dbg !133
  store i32 %130, ptr %131, align 4, !dbg !134
  %132 = load i32, ptr %10, align 4, !dbg !135
  %133 = add nsw i32 %132, -1, !dbg !135
  store i32 %133, ptr %10, align 4, !dbg !135
    #dbg_declare(ptr %22, !136, !DIExpression(), !138)
    #dbg_declare(ptr %23, !139, !DIExpression(), !138)
    #dbg_declare(ptr %24, !140, !DIExpression(), !138)
  store i32 1, ptr %22, align 4, !dbg !138
  %134 = load i32, ptr %22, align 4, !dbg !138
  %135 = sext i32 %134 to i64, !dbg !138
  %136 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %135, !dbg !138
  %137 = load i32, ptr %136, align 4, !dbg !138
  store i32 %137, ptr %24, align 4, !dbg !138
  br label %138, !dbg !138

138:                                              ; preds = %124, %183
  %139 = load i32, ptr %22, align 4, !dbg !141
  %140 = shl i32 %139, 1, !dbg !141
  store i32 %140, ptr %23, align 4, !dbg !141
  %141 = load i32, ptr %23, align 4, !dbg !143
  %142 = load i32, ptr %10, align 4, !dbg !143
  %143 = icmp sgt i32 %141, %142, !dbg !143
  br i1 %143, label %144, label %145, !dbg !143

144:                                              ; preds = %138
  br label %192, !dbg !143

145:                                              ; preds = %138
  %146 = load i32, ptr %23, align 4, !dbg !145
  %147 = load i32, ptr %10, align 4, !dbg !145
  %148 = icmp slt i32 %146, %147, !dbg !145
  br i1 %148, label %149, label %169, !dbg !145

149:                                              ; preds = %145
  %150 = load i32, ptr %23, align 4, !dbg !145
  %151 = add nsw i32 %150, 1, !dbg !145
  %152 = sext i32 %151 to i64, !dbg !145
  %153 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %152, !dbg !145
  %154 = load i32, ptr %153, align 4, !dbg !145
  %155 = sext i32 %154 to i64, !dbg !145
  %156 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %155, !dbg !145
  %157 = load i32, ptr %156, align 4, !dbg !145
  %158 = load i32, ptr %23, align 4, !dbg !145
  %159 = sext i32 %158 to i64, !dbg !145
  %160 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %159, !dbg !145
  %161 = load i32, ptr %160, align 4, !dbg !145
  %162 = sext i32 %161 to i64, !dbg !145
  %163 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %162, !dbg !145
  %164 = load i32, ptr %163, align 4, !dbg !145
  %165 = icmp slt i32 %157, %164, !dbg !145
  br i1 %165, label %166, label %169, !dbg !145

166:                                              ; preds = %149
  %167 = load i32, ptr %23, align 4, !dbg !145
  %168 = add nsw i32 %167, 1, !dbg !145
  store i32 %168, ptr %23, align 4, !dbg !145
  br label %169, !dbg !145

169:                                              ; preds = %166, %149, %145
  %170 = load i32, ptr %24, align 4, !dbg !147
  %171 = sext i32 %170 to i64, !dbg !147
  %172 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %171, !dbg !147
  %173 = load i32, ptr %172, align 4, !dbg !147
  %174 = load i32, ptr %23, align 4, !dbg !147
  %175 = sext i32 %174 to i64, !dbg !147
  %176 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %175, !dbg !147
  %177 = load i32, ptr %176, align 4, !dbg !147
  %178 = sext i32 %177 to i64, !dbg !147
  %179 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %178, !dbg !147
  %180 = load i32, ptr %179, align 4, !dbg !147
  %181 = icmp slt i32 %173, %180, !dbg !147
  br i1 %181, label %182, label %183, !dbg !147

182:                                              ; preds = %169
  br label %192, !dbg !147

183:                                              ; preds = %169
  %184 = load i32, ptr %23, align 4, !dbg !141
  %185 = sext i32 %184 to i64, !dbg !141
  %186 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %185, !dbg !141
  %187 = load i32, ptr %186, align 4, !dbg !141
  %188 = load i32, ptr %22, align 4, !dbg !141
  %189 = sext i32 %188 to i64, !dbg !141
  %190 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %189, !dbg !141
  store i32 %187, ptr %190, align 4, !dbg !141
  %191 = load i32, ptr %23, align 4, !dbg !141
  store i32 %191, ptr %22, align 4, !dbg !141
  br label %138, !dbg !138, !llvm.loop !149

192:                                              ; preds = %182, %144
  %193 = load i32, ptr %24, align 4, !dbg !138
  %194 = load i32, ptr %22, align 4, !dbg !138
  %195 = sext i32 %194 to i64, !dbg !138
  %196 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %195, !dbg !138
  store i32 %193, ptr %196, align 4, !dbg !138
  %197 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 1, !dbg !150
  %198 = load i32, ptr %197, align 4, !dbg !150
  store i32 %198, ptr %12, align 4, !dbg !151
  %199 = load i32, ptr %10, align 4, !dbg !152
  %200 = sext i32 %199 to i64, !dbg !153
  %201 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %200, !dbg !153
  %202 = load i32, ptr %201, align 4, !dbg !153
  %203 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 1, !dbg !154
  store i32 %202, ptr %203, align 4, !dbg !155
  %204 = load i32, ptr %10, align 4, !dbg !156
  %205 = add nsw i32 %204, -1, !dbg !156
  store i32 %205, ptr %10, align 4, !dbg !156
    #dbg_declare(ptr %25, !157, !DIExpression(), !159)
    #dbg_declare(ptr %26, !160, !DIExpression(), !159)
    #dbg_declare(ptr %27, !161, !DIExpression(), !159)
  store i32 1, ptr %25, align 4, !dbg !159
  %206 = load i32, ptr %25, align 4, !dbg !159
  %207 = sext i32 %206 to i64, !dbg !159
  %208 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %207, !dbg !159
  %209 = load i32, ptr %208, align 4, !dbg !159
  store i32 %209, ptr %27, align 4, !dbg !159
  br label %210, !dbg !159

210:                                              ; preds = %192, %255
  %211 = load i32, ptr %25, align 4, !dbg !162
  %212 = shl i32 %211, 1, !dbg !162
  store i32 %212, ptr %26, align 4, !dbg !162
  %213 = load i32, ptr %26, align 4, !dbg !164
  %214 = load i32, ptr %10, align 4, !dbg !164
  %215 = icmp sgt i32 %213, %214, !dbg !164
  br i1 %215, label %216, label %217, !dbg !164

216:                                              ; preds = %210
  br label %264, !dbg !164

217:                                              ; preds = %210
  %218 = load i32, ptr %26, align 4, !dbg !166
  %219 = load i32, ptr %10, align 4, !dbg !166
  %220 = icmp slt i32 %218, %219, !dbg !166
  br i1 %220, label %221, label %241, !dbg !166

221:                                              ; preds = %217
  %222 = load i32, ptr %26, align 4, !dbg !166
  %223 = add nsw i32 %222, 1, !dbg !166
  %224 = sext i32 %223 to i64, !dbg !166
  %225 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %224, !dbg !166
  %226 = load i32, ptr %225, align 4, !dbg !166
  %227 = sext i32 %226 to i64, !dbg !166
  %228 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %227, !dbg !166
  %229 = load i32, ptr %228, align 4, !dbg !166
  %230 = load i32, ptr %26, align 4, !dbg !166
  %231 = sext i32 %230 to i64, !dbg !166
  %232 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %231, !dbg !166
  %233 = load i32, ptr %232, align 4, !dbg !166
  %234 = sext i32 %233 to i64, !dbg !166
  %235 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %234, !dbg !166
  %236 = load i32, ptr %235, align 4, !dbg !166
  %237 = icmp slt i32 %229, %236, !dbg !166
  br i1 %237, label %238, label %241, !dbg !166

238:                                              ; preds = %221
  %239 = load i32, ptr %26, align 4, !dbg !166
  %240 = add nsw i32 %239, 1, !dbg !166
  store i32 %240, ptr %26, align 4, !dbg !166
  br label %241, !dbg !166

241:                                              ; preds = %238, %221, %217
  %242 = load i32, ptr %27, align 4, !dbg !168
  %243 = sext i32 %242 to i64, !dbg !168
  %244 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %243, !dbg !168
  %245 = load i32, ptr %244, align 4, !dbg !168
  %246 = load i32, ptr %26, align 4, !dbg !168
  %247 = sext i32 %246 to i64, !dbg !168
  %248 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %247, !dbg !168
  %249 = load i32, ptr %248, align 4, !dbg !168
  %250 = sext i32 %249 to i64, !dbg !168
  %251 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %250, !dbg !168
  %252 = load i32, ptr %251, align 4, !dbg !168
  %253 = icmp slt i32 %245, %252, !dbg !168
  br i1 %253, label %254, label %255, !dbg !168

254:                                              ; preds = %241
  br label %264, !dbg !168

255:                                              ; preds = %241
  %256 = load i32, ptr %26, align 4, !dbg !162
  %257 = sext i32 %256 to i64, !dbg !162
  %258 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %257, !dbg !162
  %259 = load i32, ptr %258, align 4, !dbg !162
  %260 = load i32, ptr %25, align 4, !dbg !162
  %261 = sext i32 %260 to i64, !dbg !162
  %262 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %261, !dbg !162
  store i32 %259, ptr %262, align 4, !dbg !162
  %263 = load i32, ptr %26, align 4, !dbg !162
  store i32 %263, ptr %25, align 4, !dbg !162
  br label %210, !dbg !159, !llvm.loop !170

264:                                              ; preds = %254, %216
  %265 = load i32, ptr %27, align 4, !dbg !159
  %266 = load i32, ptr %25, align 4, !dbg !159
  %267 = sext i32 %266 to i64, !dbg !159
  %268 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %267, !dbg !159
  store i32 %265, ptr %268, align 4, !dbg !159
  %269 = load i32, ptr %9, align 4, !dbg !171
  %270 = add nsw i32 %269, 1, !dbg !171
  store i32 %270, ptr %9, align 4, !dbg !171
  %271 = load i32, ptr %9, align 4, !dbg !172
  %272 = load i32, ptr %12, align 4, !dbg !173
  %273 = sext i32 %272 to i64, !dbg !174
  %274 = getelementptr inbounds [516 x i32], ptr %19, i64 0, i64 %273, !dbg !174
  store i32 %271, ptr %274, align 4, !dbg !175
  %275 = load i32, ptr %11, align 4, !dbg !176
  %276 = sext i32 %275 to i64, !dbg !177
  %277 = getelementptr inbounds [516 x i32], ptr %19, i64 0, i64 %276, !dbg !177
  store i32 %271, ptr %277, align 4, !dbg !178
  %278 = load i32, ptr %11, align 4, !dbg !179
  %279 = sext i32 %278 to i64, !dbg !179
  %280 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %279, !dbg !179
  %281 = load i32, ptr %280, align 4, !dbg !179
  %282 = and i32 %281, -256, !dbg !179
  %283 = load i32, ptr %12, align 4, !dbg !179
  %284 = sext i32 %283 to i64, !dbg !179
  %285 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %284, !dbg !179
  %286 = load i32, ptr %285, align 4, !dbg !179
  %287 = and i32 %286, -256, !dbg !179
  %288 = add i32 %282, %287, !dbg !179
  %289 = load i32, ptr %11, align 4, !dbg !179
  %290 = sext i32 %289 to i64, !dbg !179
  %291 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %290, !dbg !179
  %292 = load i32, ptr %291, align 4, !dbg !179
  %293 = and i32 %292, 255, !dbg !179
  %294 = load i32, ptr %12, align 4, !dbg !179
  %295 = sext i32 %294 to i64, !dbg !179
  %296 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %295, !dbg !179
  %297 = load i32, ptr %296, align 4, !dbg !179
  %298 = and i32 %297, 255, !dbg !179
  %299 = icmp sgt i32 %293, %298, !dbg !179
  br i1 %299, label %300, label %306, !dbg !179

300:                                              ; preds = %264
  %301 = load i32, ptr %11, align 4, !dbg !179
  %302 = sext i32 %301 to i64, !dbg !179
  %303 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %302, !dbg !179
  %304 = load i32, ptr %303, align 4, !dbg !179
  %305 = and i32 %304, 255, !dbg !179
  br label %312, !dbg !179

306:                                              ; preds = %264
  %307 = load i32, ptr %12, align 4, !dbg !179
  %308 = sext i32 %307 to i64, !dbg !179
  %309 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %308, !dbg !179
  %310 = load i32, ptr %309, align 4, !dbg !179
  %311 = and i32 %310, 255, !dbg !179
  br label %312, !dbg !179

312:                                              ; preds = %306, %300
  %313 = phi i32 [ %305, %300 ], [ %311, %306 ], !dbg !179
  %314 = add nsw i32 1, %313, !dbg !179
  %315 = or i32 %288, %314, !dbg !179
  %316 = load i32, ptr %9, align 4, !dbg !180
  %317 = sext i32 %316 to i64, !dbg !181
  %318 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %317, !dbg !181
  store i32 %315, ptr %318, align 4, !dbg !182
  %319 = load i32, ptr %9, align 4, !dbg !183
  %320 = sext i32 %319 to i64, !dbg !184
  %321 = getelementptr inbounds [516 x i32], ptr %19, i64 0, i64 %320, !dbg !184
  store i32 -1, ptr %321, align 4, !dbg !185
  %322 = load i32, ptr %10, align 4, !dbg !186
  %323 = add nsw i32 %322, 1, !dbg !186
  store i32 %323, ptr %10, align 4, !dbg !186
  %324 = load i32, ptr %9, align 4, !dbg !187
  %325 = load i32, ptr %10, align 4, !dbg !188
  %326 = sext i32 %325 to i64, !dbg !189
  %327 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %326, !dbg !189
  store i32 %324, ptr %327, align 4, !dbg !190
    #dbg_declare(ptr %28, !191, !DIExpression(), !193)
    #dbg_declare(ptr %29, !194, !DIExpression(), !193)
  %328 = load i32, ptr %10, align 4, !dbg !193
  store i32 %328, ptr %28, align 4, !dbg !193
  %329 = load i32, ptr %28, align 4, !dbg !193
  %330 = sext i32 %329 to i64, !dbg !193
  %331 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %330, !dbg !193
  %332 = load i32, ptr %331, align 4, !dbg !193
  store i32 %332, ptr %29, align 4, !dbg !193
  br label %333, !dbg !193

333:                                              ; preds = %347, %312
  %334 = load i32, ptr %29, align 4, !dbg !193
  %335 = sext i32 %334 to i64, !dbg !193
  %336 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %335, !dbg !193
  %337 = load i32, ptr %336, align 4, !dbg !193
  %338 = load i32, ptr %28, align 4, !dbg !193
  %339 = ashr i32 %338, 1, !dbg !193
  %340 = sext i32 %339 to i64, !dbg !193
  %341 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %340, !dbg !193
  %342 = load i32, ptr %341, align 4, !dbg !193
  %343 = sext i32 %342 to i64, !dbg !193
  %344 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %343, !dbg !193
  %345 = load i32, ptr %344, align 4, !dbg !193
  %346 = icmp slt i32 %337, %345, !dbg !193
  br i1 %346, label %347, label %358, !dbg !193

347:                                              ; preds = %333
  %348 = load i32, ptr %28, align 4, !dbg !195
  %349 = ashr i32 %348, 1, !dbg !195
  %350 = sext i32 %349 to i64, !dbg !195
  %351 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %350, !dbg !195
  %352 = load i32, ptr %351, align 4, !dbg !195
  %353 = load i32, ptr %28, align 4, !dbg !195
  %354 = sext i32 %353 to i64, !dbg !195
  %355 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %354, !dbg !195
  store i32 %352, ptr %355, align 4, !dbg !195
  %356 = load i32, ptr %28, align 4, !dbg !195
  %357 = ashr i32 %356, 1, !dbg !195
  store i32 %357, ptr %28, align 4, !dbg !195
  br label %333, !dbg !193, !llvm.loop !197

358:                                              ; preds = %333
  %359 = load i32, ptr %29, align 4, !dbg !193
  %360 = load i32, ptr %28, align 4, !dbg !193
  %361 = sext i32 %360 to i64, !dbg !193
  %362 = getelementptr inbounds [260 x i32], ptr %17, i64 0, i64 %361, !dbg !193
  store i32 %359, ptr %362, align 4, !dbg !193
  br label %121, !dbg !125, !llvm.loop !198

363:                                              ; preds = %121
  %364 = load i32, ptr %9, align 4, !dbg !200
  %365 = icmp slt i32 %364, 516, !dbg !200
  br i1 %365, label %367, label %366, !dbg !200

366:                                              ; preds = %363
  call void @BZ2_bz__AssertH__fail(i32 noundef 2002), !dbg !200
  br label %367, !dbg !200

367:                                              ; preds = %366, %363
  store i8 0, ptr %16, align 1, !dbg !203
  store i32 1, ptr %13, align 4, !dbg !204
  br label %368, !dbg !206

368:                                              ; preds = %400, %367
  %369 = load i32, ptr %13, align 4, !dbg !207
  %370 = load i32, ptr %7, align 4, !dbg !209
  %371 = icmp sle i32 %369, %370, !dbg !210
  br i1 %371, label %372, label %403, !dbg !211

372:                                              ; preds = %368
  store i32 0, ptr %14, align 4, !dbg !212
  %373 = load i32, ptr %13, align 4, !dbg !214
  store i32 %373, ptr %15, align 4, !dbg !215
  br label %374, !dbg !216

374:                                              ; preds = %380, %372
  %375 = load i32, ptr %15, align 4, !dbg !217
  %376 = sext i32 %375 to i64, !dbg !218
  %377 = getelementptr inbounds [516 x i32], ptr %19, i64 0, i64 %376, !dbg !218
  %378 = load i32, ptr %377, align 4, !dbg !218
  %379 = icmp sge i32 %378, 0, !dbg !219
  br i1 %379, label %380, label %387, !dbg !216

380:                                              ; preds = %374
  %381 = load i32, ptr %15, align 4, !dbg !220
  %382 = sext i32 %381 to i64, !dbg !222
  %383 = getelementptr inbounds [516 x i32], ptr %19, i64 0, i64 %382, !dbg !222
  %384 = load i32, ptr %383, align 4, !dbg !222
  store i32 %384, ptr %15, align 4, !dbg !223
  %385 = load i32, ptr %14, align 4, !dbg !224
  %386 = add nsw i32 %385, 1, !dbg !224
  store i32 %386, ptr %14, align 4, !dbg !224
  br label %374, !dbg !216, !llvm.loop !225

387:                                              ; preds = %374
  %388 = load i32, ptr %14, align 4, !dbg !227
  %389 = trunc i32 %388 to i8, !dbg !227
  %390 = load ptr, ptr %5, align 8, !dbg !228
  %391 = load i32, ptr %13, align 4, !dbg !229
  %392 = sub nsw i32 %391, 1, !dbg !230
  %393 = sext i32 %392 to i64, !dbg !228
  %394 = getelementptr inbounds i8, ptr %390, i64 %393, !dbg !228
  store i8 %389, ptr %394, align 1, !dbg !231
  %395 = load i32, ptr %14, align 4, !dbg !232
  %396 = load i32, ptr %8, align 4, !dbg !234
  %397 = icmp sgt i32 %395, %396, !dbg !235
  br i1 %397, label %398, label %399, !dbg !235

398:                                              ; preds = %387
  store i8 1, ptr %16, align 1, !dbg !236
  br label %399, !dbg !237

399:                                              ; preds = %398, %387
  br label %400, !dbg !238

400:                                              ; preds = %399
  %401 = load i32, ptr %13, align 4, !dbg !239
  %402 = add nsw i32 %401, 1, !dbg !239
  store i32 %402, ptr %13, align 4, !dbg !239
  br label %368, !dbg !240, !llvm.loop !241

403:                                              ; preds = %368
  %404 = load i8, ptr %16, align 1, !dbg !243
  %405 = icmp ne i8 %404, 0, !dbg !243
  br i1 %405, label %407, label %406, !dbg !245

406:                                              ; preds = %403
  br label %430, !dbg !246

407:                                              ; preds = %403
  store i32 1, ptr %13, align 4, !dbg !247
  br label %408, !dbg !249

408:                                              ; preds = %426, %407
  %409 = load i32, ptr %13, align 4, !dbg !250
  %410 = load i32, ptr %7, align 4, !dbg !252
  %411 = icmp sle i32 %409, %410, !dbg !253
  br i1 %411, label %412, label %429, !dbg !254

412:                                              ; preds = %408
  %413 = load i32, ptr %13, align 4, !dbg !255
  %414 = sext i32 %413 to i64, !dbg !257
  %415 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %414, !dbg !257
  %416 = load i32, ptr %415, align 4, !dbg !257
  %417 = ashr i32 %416, 8, !dbg !258
  store i32 %417, ptr %14, align 4, !dbg !259
  %418 = load i32, ptr %14, align 4, !dbg !260
  %419 = sdiv i32 %418, 2, !dbg !261
  %420 = add nsw i32 1, %419, !dbg !262
  store i32 %420, ptr %14, align 4, !dbg !263
  %421 = load i32, ptr %14, align 4, !dbg !264
  %422 = shl i32 %421, 8, !dbg !265
  %423 = load i32, ptr %13, align 4, !dbg !266
  %424 = sext i32 %423 to i64, !dbg !267
  %425 = getelementptr inbounds [516 x i32], ptr %18, i64 0, i64 %424, !dbg !267
  store i32 %422, ptr %425, align 4, !dbg !268
  br label %426, !dbg !269

426:                                              ; preds = %412
  %427 = load i32, ptr %13, align 4, !dbg !270
  %428 = add nsw i32 %427, 1, !dbg !270
  store i32 %428, ptr %13, align 4, !dbg !270
  br label %408, !dbg !271, !llvm.loop !272

429:                                              ; preds = %408
  br label %59, !dbg !82, !llvm.loop !274

430:                                              ; preds = %406
  ret void, !dbg !276
}

declare void @BZ2_bz__AssertH__fail(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_hbAssignCodes(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !277 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !280, !DIExpression(), !281)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !282, !DIExpression(), !283)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !284, !DIExpression(), !285)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !286, !DIExpression(), !287)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !288, !DIExpression(), !289)
    #dbg_declare(ptr %11, !290, !DIExpression(), !291)
    #dbg_declare(ptr %12, !292, !DIExpression(), !293)
    #dbg_declare(ptr %13, !294, !DIExpression(), !295)
  store i32 0, ptr %12, align 4, !dbg !296
  %14 = load i32, ptr %8, align 4, !dbg !297
  store i32 %14, ptr %11, align 4, !dbg !299
  br label %15, !dbg !300

15:                                               ; preds = %48, %5
  %16 = load i32, ptr %11, align 4, !dbg !301
  %17 = load i32, ptr %9, align 4, !dbg !303
  %18 = icmp sle i32 %16, %17, !dbg !304
  br i1 %18, label %19, label %51, !dbg !305

19:                                               ; preds = %15
  store i32 0, ptr %13, align 4, !dbg !306
  br label %20, !dbg !309

20:                                               ; preds = %42, %19
  %21 = load i32, ptr %13, align 4, !dbg !310
  %22 = load i32, ptr %10, align 4, !dbg !312
  %23 = icmp slt i32 %21, %22, !dbg !313
  br i1 %23, label %24, label %45, !dbg !314

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 8, !dbg !315
  %26 = load i32, ptr %13, align 4, !dbg !317
  %27 = sext i32 %26 to i64, !dbg !315
  %28 = getelementptr inbounds i8, ptr %25, i64 %27, !dbg !315
  %29 = load i8, ptr %28, align 1, !dbg !315
  %30 = zext i8 %29 to i32, !dbg !315
  %31 = load i32, ptr %11, align 4, !dbg !318
  %32 = icmp eq i32 %30, %31, !dbg !319
  br i1 %32, label %33, label %41, !dbg !319

33:                                               ; preds = %24
  %34 = load i32, ptr %12, align 4, !dbg !320
  %35 = load ptr, ptr %6, align 8, !dbg !322
  %36 = load i32, ptr %13, align 4, !dbg !323
  %37 = sext i32 %36 to i64, !dbg !322
  %38 = getelementptr inbounds i32, ptr %35, i64 %37, !dbg !322
  store i32 %34, ptr %38, align 4, !dbg !324
  %39 = load i32, ptr %12, align 4, !dbg !325
  %40 = add nsw i32 %39, 1, !dbg !325
  store i32 %40, ptr %12, align 4, !dbg !325
  br label %41, !dbg !326

41:                                               ; preds = %33, %24
  br label %42, !dbg !318

42:                                               ; preds = %41
  %43 = load i32, ptr %13, align 4, !dbg !327
  %44 = add nsw i32 %43, 1, !dbg !327
  store i32 %44, ptr %13, align 4, !dbg !327
  br label %20, !dbg !328, !llvm.loop !329

45:                                               ; preds = %20
  %46 = load i32, ptr %12, align 4, !dbg !331
  %47 = shl i32 %46, 1, !dbg !331
  store i32 %47, ptr %12, align 4, !dbg !331
  br label %48, !dbg !332

48:                                               ; preds = %45
  %49 = load i32, ptr %11, align 4, !dbg !333
  %50 = add nsw i32 %49, 1, !dbg !333
  store i32 %50, ptr %11, align 4, !dbg !333
  br label %15, !dbg !334, !llvm.loop !335

51:                                               ; preds = %15
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_hbCreateDecodeTables(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !dbg !338 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !341, !DIExpression(), !342)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !343, !DIExpression(), !344)
  store ptr %2, ptr %10, align 8
    #dbg_declare(ptr %10, !345, !DIExpression(), !346)
  store ptr %3, ptr %11, align 8
    #dbg_declare(ptr %11, !347, !DIExpression(), !348)
  store i32 %4, ptr %12, align 4
    #dbg_declare(ptr %12, !349, !DIExpression(), !350)
  store i32 %5, ptr %13, align 4
    #dbg_declare(ptr %13, !351, !DIExpression(), !352)
  store i32 %6, ptr %14, align 4
    #dbg_declare(ptr %14, !353, !DIExpression(), !354)
    #dbg_declare(ptr %15, !355, !DIExpression(), !356)
    #dbg_declare(ptr %16, !357, !DIExpression(), !358)
    #dbg_declare(ptr %17, !359, !DIExpression(), !360)
    #dbg_declare(ptr %18, !361, !DIExpression(), !362)
  store i32 0, ptr %15, align 4, !dbg !363
  %19 = load i32, ptr %12, align 4, !dbg !364
  store i32 %19, ptr %16, align 4, !dbg !366
  br label %20, !dbg !367

20:                                               ; preds = %51, %7
  %21 = load i32, ptr %16, align 4, !dbg !368
  %22 = load i32, ptr %13, align 4, !dbg !370
  %23 = icmp sle i32 %21, %22, !dbg !371
  br i1 %23, label %24, label %54, !dbg !372

24:                                               ; preds = %20
  store i32 0, ptr %17, align 4, !dbg !373
  br label %25, !dbg !375

25:                                               ; preds = %47, %24
  %26 = load i32, ptr %17, align 4, !dbg !376
  %27 = load i32, ptr %14, align 4, !dbg !378
  %28 = icmp slt i32 %26, %27, !dbg !379
  br i1 %28, label %29, label %50, !dbg !380

29:                                               ; preds = %25
  %30 = load ptr, ptr %11, align 8, !dbg !381
  %31 = load i32, ptr %17, align 4, !dbg !383
  %32 = sext i32 %31 to i64, !dbg !381
  %33 = getelementptr inbounds i8, ptr %30, i64 %32, !dbg !381
  %34 = load i8, ptr %33, align 1, !dbg !381
  %35 = zext i8 %34 to i32, !dbg !381
  %36 = load i32, ptr %16, align 4, !dbg !384
  %37 = icmp eq i32 %35, %36, !dbg !385
  br i1 %37, label %38, label %46, !dbg !385

38:                                               ; preds = %29
  %39 = load i32, ptr %17, align 4, !dbg !386
  %40 = load ptr, ptr %10, align 8, !dbg !388
  %41 = load i32, ptr %15, align 4, !dbg !389
  %42 = sext i32 %41 to i64, !dbg !388
  %43 = getelementptr inbounds i32, ptr %40, i64 %42, !dbg !388
  store i32 %39, ptr %43, align 4, !dbg !390
  %44 = load i32, ptr %15, align 4, !dbg !391
  %45 = add nsw i32 %44, 1, !dbg !391
  store i32 %45, ptr %15, align 4, !dbg !391
  br label %46, !dbg !392

46:                                               ; preds = %38, %29
  br label %47, !dbg !384

47:                                               ; preds = %46
  %48 = load i32, ptr %17, align 4, !dbg !393
  %49 = add nsw i32 %48, 1, !dbg !393
  store i32 %49, ptr %17, align 4, !dbg !393
  br label %25, !dbg !394, !llvm.loop !395

50:                                               ; preds = %25
  br label %51, !dbg !396

51:                                               ; preds = %50
  %52 = load i32, ptr %16, align 4, !dbg !397
  %53 = add nsw i32 %52, 1, !dbg !397
  store i32 %53, ptr %16, align 4, !dbg !397
  br label %20, !dbg !398, !llvm.loop !399

54:                                               ; preds = %20
  store i32 0, ptr %16, align 4, !dbg !401
  br label %55, !dbg !403

55:                                               ; preds = %63, %54
  %56 = load i32, ptr %16, align 4, !dbg !404
  %57 = icmp slt i32 %56, 23, !dbg !406
  br i1 %57, label %58, label %66, !dbg !407

58:                                               ; preds = %55
  %59 = load ptr, ptr %9, align 8, !dbg !408
  %60 = load i32, ptr %16, align 4, !dbg !409
  %61 = sext i32 %60 to i64, !dbg !408
  %62 = getelementptr inbounds i32, ptr %59, i64 %61, !dbg !408
  store i32 0, ptr %62, align 4, !dbg !410
  br label %63, !dbg !408

63:                                               ; preds = %58
  %64 = load i32, ptr %16, align 4, !dbg !411
  %65 = add nsw i32 %64, 1, !dbg !411
  store i32 %65, ptr %16, align 4, !dbg !411
  br label %55, !dbg !412, !llvm.loop !413

66:                                               ; preds = %55
  store i32 0, ptr %16, align 4, !dbg !415
  br label %67, !dbg !417

67:                                               ; preds = %84, %66
  %68 = load i32, ptr %16, align 4, !dbg !418
  %69 = load i32, ptr %14, align 4, !dbg !420
  %70 = icmp slt i32 %68, %69, !dbg !421
  br i1 %70, label %71, label %87, !dbg !422

71:                                               ; preds = %67
  %72 = load ptr, ptr %9, align 8, !dbg !423
  %73 = load ptr, ptr %11, align 8, !dbg !424
  %74 = load i32, ptr %16, align 4, !dbg !425
  %75 = sext i32 %74 to i64, !dbg !424
  %76 = getelementptr inbounds i8, ptr %73, i64 %75, !dbg !424
  %77 = load i8, ptr %76, align 1, !dbg !424
  %78 = zext i8 %77 to i32, !dbg !424
  %79 = add nsw i32 %78, 1, !dbg !426
  %80 = sext i32 %79 to i64, !dbg !423
  %81 = getelementptr inbounds i32, ptr %72, i64 %80, !dbg !423
  %82 = load i32, ptr %81, align 4, !dbg !427
  %83 = add nsw i32 %82, 1, !dbg !427
  store i32 %83, ptr %81, align 4, !dbg !427
  br label %84, !dbg !423

84:                                               ; preds = %71
  %85 = load i32, ptr %16, align 4, !dbg !428
  %86 = add nsw i32 %85, 1, !dbg !428
  store i32 %86, ptr %16, align 4, !dbg !428
  br label %67, !dbg !429, !llvm.loop !430

87:                                               ; preds = %67
  store i32 1, ptr %16, align 4, !dbg !432
  br label %88, !dbg !434

88:                                               ; preds = %104, %87
  %89 = load i32, ptr %16, align 4, !dbg !435
  %90 = icmp slt i32 %89, 23, !dbg !437
  br i1 %90, label %91, label %107, !dbg !438

91:                                               ; preds = %88
  %92 = load ptr, ptr %9, align 8, !dbg !439
  %93 = load i32, ptr %16, align 4, !dbg !440
  %94 = sub nsw i32 %93, 1, !dbg !441
  %95 = sext i32 %94 to i64, !dbg !439
  %96 = getelementptr inbounds i32, ptr %92, i64 %95, !dbg !439
  %97 = load i32, ptr %96, align 4, !dbg !439
  %98 = load ptr, ptr %9, align 8, !dbg !442
  %99 = load i32, ptr %16, align 4, !dbg !443
  %100 = sext i32 %99 to i64, !dbg !442
  %101 = getelementptr inbounds i32, ptr %98, i64 %100, !dbg !442
  %102 = load i32, ptr %101, align 4, !dbg !444
  %103 = add nsw i32 %102, %97, !dbg !444
  store i32 %103, ptr %101, align 4, !dbg !444
  br label %104, !dbg !442

104:                                              ; preds = %91
  %105 = load i32, ptr %16, align 4, !dbg !445
  %106 = add nsw i32 %105, 1, !dbg !445
  store i32 %106, ptr %16, align 4, !dbg !445
  br label %88, !dbg !446, !llvm.loop !447

107:                                              ; preds = %88
  store i32 0, ptr %16, align 4, !dbg !449
  br label %108, !dbg !451

108:                                              ; preds = %116, %107
  %109 = load i32, ptr %16, align 4, !dbg !452
  %110 = icmp slt i32 %109, 23, !dbg !454
  br i1 %110, label %111, label %119, !dbg !455

111:                                              ; preds = %108
  %112 = load ptr, ptr %8, align 8, !dbg !456
  %113 = load i32, ptr %16, align 4, !dbg !457
  %114 = sext i32 %113 to i64, !dbg !456
  %115 = getelementptr inbounds i32, ptr %112, i64 %114, !dbg !456
  store i32 0, ptr %115, align 4, !dbg !458
  br label %116, !dbg !456

116:                                              ; preds = %111
  %117 = load i32, ptr %16, align 4, !dbg !459
  %118 = add nsw i32 %117, 1, !dbg !459
  store i32 %118, ptr %16, align 4, !dbg !459
  br label %108, !dbg !460, !llvm.loop !461

119:                                              ; preds = %108
  store i32 0, ptr %18, align 4, !dbg !463
  %120 = load i32, ptr %12, align 4, !dbg !464
  store i32 %120, ptr %16, align 4, !dbg !466
  br label %121, !dbg !467

121:                                              ; preds = %148, %119
  %122 = load i32, ptr %16, align 4, !dbg !468
  %123 = load i32, ptr %13, align 4, !dbg !470
  %124 = icmp sle i32 %122, %123, !dbg !471
  br i1 %124, label %125, label %151, !dbg !472

125:                                              ; preds = %121
  %126 = load ptr, ptr %9, align 8, !dbg !473
  %127 = load i32, ptr %16, align 4, !dbg !475
  %128 = add nsw i32 %127, 1, !dbg !476
  %129 = sext i32 %128 to i64, !dbg !473
  %130 = getelementptr inbounds i32, ptr %126, i64 %129, !dbg !473
  %131 = load i32, ptr %130, align 4, !dbg !473
  %132 = load ptr, ptr %9, align 8, !dbg !477
  %133 = load i32, ptr %16, align 4, !dbg !478
  %134 = sext i32 %133 to i64, !dbg !477
  %135 = getelementptr inbounds i32, ptr %132, i64 %134, !dbg !477
  %136 = load i32, ptr %135, align 4, !dbg !477
  %137 = sub nsw i32 %131, %136, !dbg !479
  %138 = load i32, ptr %18, align 4, !dbg !480
  %139 = add nsw i32 %138, %137, !dbg !480
  store i32 %139, ptr %18, align 4, !dbg !480
  %140 = load i32, ptr %18, align 4, !dbg !481
  %141 = sub nsw i32 %140, 1, !dbg !482
  %142 = load ptr, ptr %8, align 8, !dbg !483
  %143 = load i32, ptr %16, align 4, !dbg !484
  %144 = sext i32 %143 to i64, !dbg !483
  %145 = getelementptr inbounds i32, ptr %142, i64 %144, !dbg !483
  store i32 %141, ptr %145, align 4, !dbg !485
  %146 = load i32, ptr %18, align 4, !dbg !486
  %147 = shl i32 %146, 1, !dbg !486
  store i32 %147, ptr %18, align 4, !dbg !486
  br label %148, !dbg !487

148:                                              ; preds = %125
  %149 = load i32, ptr %16, align 4, !dbg !488
  %150 = add nsw i32 %149, 1, !dbg !488
  store i32 %150, ptr %16, align 4, !dbg !488
  br label %121, !dbg !489, !llvm.loop !490

151:                                              ; preds = %121
  %152 = load i32, ptr %12, align 4, !dbg !492
  %153 = add nsw i32 %152, 1, !dbg !494
  store i32 %153, ptr %16, align 4, !dbg !495
  br label %154, !dbg !496

154:                                              ; preds = %177, %151
  %155 = load i32, ptr %16, align 4, !dbg !497
  %156 = load i32, ptr %13, align 4, !dbg !499
  %157 = icmp sle i32 %155, %156, !dbg !500
  br i1 %157, label %158, label %180, !dbg !501

158:                                              ; preds = %154
  %159 = load ptr, ptr %8, align 8, !dbg !502
  %160 = load i32, ptr %16, align 4, !dbg !503
  %161 = sub nsw i32 %160, 1, !dbg !504
  %162 = sext i32 %161 to i64, !dbg !502
  %163 = getelementptr inbounds i32, ptr %159, i64 %162, !dbg !502
  %164 = load i32, ptr %163, align 4, !dbg !502
  %165 = add nsw i32 %164, 1, !dbg !505
  %166 = shl i32 %165, 1, !dbg !506
  %167 = load ptr, ptr %9, align 8, !dbg !507
  %168 = load i32, ptr %16, align 4, !dbg !508
  %169 = sext i32 %168 to i64, !dbg !507
  %170 = getelementptr inbounds i32, ptr %167, i64 %169, !dbg !507
  %171 = load i32, ptr %170, align 4, !dbg !507
  %172 = sub nsw i32 %166, %171, !dbg !509
  %173 = load ptr, ptr %9, align 8, !dbg !510
  %174 = load i32, ptr %16, align 4, !dbg !511
  %175 = sext i32 %174 to i64, !dbg !510
  %176 = getelementptr inbounds i32, ptr %173, i64 %175, !dbg !510
  store i32 %172, ptr %176, align 4, !dbg !512
  br label %177, !dbg !510

177:                                              ; preds = %158
  %178 = load i32, ptr %16, align 4, !dbg !513
  %179 = add nsw i32 %178, 1, !dbg !513
  store i32 %179, ptr %16, align 4, !dbg !513
  br label %154, !dbg !514, !llvm.loop !515

180:                                              ; preds = %154
  ret void, !dbg !517
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!14 = distinct !DISubprogram(name: "BZ2_hbMakeCodeLengths", scope: !1, file: !1, line: 103, type: !15, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !19, !20, !20}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !4, line: 83, baseType: !5)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "Int32", file: !4, line: 84, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{}
!23 = !DILocalVariable(name: "len", arg: 1, scope: !14, file: !1, line: 103, type: !17)
!24 = !DILocation(line: 103, column: 37, scope: !14)
!25 = !DILocalVariable(name: "freq", arg: 2, scope: !14, file: !1, line: 104, type: !19)
!26 = !DILocation(line: 104, column: 37, scope: !14)
!27 = !DILocalVariable(name: "alphaSize", arg: 3, scope: !14, file: !1, line: 105, type: !20)
!28 = !DILocation(line: 105, column: 36, scope: !14)
!29 = !DILocalVariable(name: "maxLen", arg: 4, scope: !14, file: !1, line: 106, type: !20)
!30 = !DILocation(line: 106, column: 36, scope: !14)
!31 = !DILocalVariable(name: "nNodes", scope: !14, file: !1, line: 112, type: !20)
!32 = !DILocation(line: 112, column: 10, scope: !14)
!33 = !DILocalVariable(name: "nHeap", scope: !14, file: !1, line: 112, type: !20)
!34 = !DILocation(line: 112, column: 18, scope: !14)
!35 = !DILocalVariable(name: "n1", scope: !14, file: !1, line: 112, type: !20)
!36 = !DILocation(line: 112, column: 25, scope: !14)
!37 = !DILocalVariable(name: "n2", scope: !14, file: !1, line: 112, type: !20)
!38 = !DILocation(line: 112, column: 29, scope: !14)
!39 = !DILocalVariable(name: "i", scope: !14, file: !1, line: 112, type: !20)
!40 = !DILocation(line: 112, column: 33, scope: !14)
!41 = !DILocalVariable(name: "j", scope: !14, file: !1, line: 112, type: !20)
!42 = !DILocation(line: 112, column: 36, scope: !14)
!43 = !DILocalVariable(name: "k", scope: !14, file: !1, line: 112, type: !20)
!44 = !DILocation(line: 112, column: 39, scope: !14)
!45 = !DILocalVariable(name: "tooLong", scope: !14, file: !1, line: 113, type: !3)
!46 = !DILocation(line: 113, column: 10, scope: !14)
!47 = !DILocalVariable(name: "heap", scope: !14, file: !1, line: 115, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8320, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 260)
!51 = !DILocation(line: 115, column: 10, scope: !14)
!52 = !DILocalVariable(name: "weight", scope: !14, file: !1, line: 116, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 16512, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 516)
!56 = !DILocation(line: 116, column: 10, scope: !14)
!57 = !DILocalVariable(name: "parent", scope: !14, file: !1, line: 117, type: !53)
!58 = !DILocation(line: 117, column: 10, scope: !14)
!59 = !DILocation(line: 119, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !14, file: !1, line: 119, column: 4)
!61 = !DILocation(line: 119, column: 9, scope: !60)
!62 = !DILocation(line: 119, column: 16, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 119, column: 4)
!64 = !DILocation(line: 119, column: 20, scope: !63)
!65 = !DILocation(line: 119, column: 18, scope: !63)
!66 = !DILocation(line: 119, column: 4, scope: !60)
!67 = !DILocation(line: 120, column: 22, scope: !63)
!68 = !DILocation(line: 120, column: 27, scope: !63)
!69 = !DILocation(line: 120, column: 30, scope: !63)
!70 = !DILocation(line: 120, column: 41, scope: !63)
!71 = !DILocation(line: 120, column: 46, scope: !63)
!72 = !DILocation(line: 120, column: 50, scope: !63)
!73 = !DILocation(line: 120, column: 14, scope: !63)
!74 = !DILocation(line: 120, column: 15, scope: !63)
!75 = !DILocation(line: 120, column: 7, scope: !63)
!76 = !DILocation(line: 120, column: 19, scope: !63)
!77 = !DILocation(line: 119, column: 32, scope: !63)
!78 = !DILocation(line: 119, column: 4, scope: !63)
!79 = distinct !{!79, !66, !80, !81}
!80 = !DILocation(line: 120, column: 53, scope: !60)
!81 = !{!"llvm.loop.mustprogress"}
!82 = !DILocation(line: 122, column: 4, scope: !14)
!83 = !DILocation(line: 124, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !14, file: !1, line: 122, column: 17)
!85 = !DILocation(line: 124, column: 14, scope: !84)
!86 = !DILocation(line: 125, column: 13, scope: !84)
!87 = !DILocation(line: 127, column: 7, scope: !84)
!88 = !DILocation(line: 127, column: 15, scope: !84)
!89 = !DILocation(line: 128, column: 7, scope: !84)
!90 = !DILocation(line: 128, column: 17, scope: !84)
!91 = !DILocation(line: 129, column: 7, scope: !84)
!92 = !DILocation(line: 129, column: 17, scope: !84)
!93 = !DILocation(line: 131, column: 14, scope: !94)
!94 = distinct !DILexicalBlock(scope: !84, file: !1, line: 131, column: 7)
!95 = !DILocation(line: 131, column: 12, scope: !94)
!96 = !DILocation(line: 131, column: 19, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 131, column: 7)
!98 = !DILocation(line: 131, column: 24, scope: !97)
!99 = !DILocation(line: 131, column: 21, scope: !97)
!100 = !DILocation(line: 131, column: 7, scope: !94)
!101 = !DILocation(line: 132, column: 17, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 131, column: 40)
!103 = !DILocation(line: 132, column: 10, scope: !102)
!104 = !DILocation(line: 132, column: 20, scope: !102)
!105 = !DILocation(line: 133, column: 15, scope: !102)
!106 = !DILocation(line: 134, column: 24, scope: !102)
!107 = !DILocation(line: 134, column: 15, scope: !102)
!108 = !DILocation(line: 134, column: 10, scope: !102)
!109 = !DILocation(line: 134, column: 22, scope: !102)
!110 = !DILocalVariable(name: "zz", scope: !111, file: !1, line: 135, type: !20)
!111 = distinct !DILexicalBlock(scope: !102, file: !1, line: 135, column: 10)
!112 = !DILocation(line: 135, column: 10, scope: !111)
!113 = !DILocalVariable(name: "tmp", scope: !111, file: !1, line: 135, type: !20)
!114 = !DILocation(line: 135, column: 10, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 135, column: 10)
!116 = distinct !{!116, !112, !112, !81}
!117 = !DILocation(line: 136, column: 7, scope: !102)
!118 = !DILocation(line: 131, column: 36, scope: !97)
!119 = !DILocation(line: 131, column: 7, scope: !97)
!120 = distinct !{!120, !100, !121, !81}
!121 = !DILocation(line: 136, column: 7, scope: !94)
!122 = !DILocation(line: 138, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 138, column: 7)
!124 = distinct !DILexicalBlock(scope: !84, file: !1, line: 138, column: 7)
!125 = !DILocation(line: 140, column: 7, scope: !84)
!126 = !DILocation(line: 140, column: 14, scope: !84)
!127 = !DILocation(line: 140, column: 20, scope: !84)
!128 = !DILocation(line: 141, column: 15, scope: !129)
!129 = distinct !DILexicalBlock(scope: !84, file: !1, line: 140, column: 25)
!130 = !DILocation(line: 141, column: 13, scope: !129)
!131 = !DILocation(line: 141, column: 39, scope: !129)
!132 = !DILocation(line: 141, column: 34, scope: !129)
!133 = !DILocation(line: 141, column: 24, scope: !129)
!134 = !DILocation(line: 141, column: 32, scope: !129)
!135 = !DILocation(line: 141, column: 52, scope: !129)
!136 = !DILocalVariable(name: "zz", scope: !137, file: !1, line: 141, type: !20)
!137 = distinct !DILexicalBlock(scope: !129, file: !1, line: 141, column: 56)
!138 = !DILocation(line: 141, column: 56, scope: !137)
!139 = !DILocalVariable(name: "yy", scope: !137, file: !1, line: 141, type: !20)
!140 = !DILocalVariable(name: "tmp", scope: !137, file: !1, line: 141, type: !20)
!141 = !DILocation(line: 141, column: 56, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 141, column: 56)
!143 = !DILocation(line: 141, column: 56, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !1, line: 141, column: 56)
!145 = !DILocation(line: 141, column: 56, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 141, column: 56)
!147 = !DILocation(line: 141, column: 56, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 141, column: 56)
!149 = distinct !{!149, !138, !138}
!150 = !DILocation(line: 142, column: 15, scope: !129)
!151 = !DILocation(line: 142, column: 13, scope: !129)
!152 = !DILocation(line: 142, column: 39, scope: !129)
!153 = !DILocation(line: 142, column: 34, scope: !129)
!154 = !DILocation(line: 142, column: 24, scope: !129)
!155 = !DILocation(line: 142, column: 32, scope: !129)
!156 = !DILocation(line: 142, column: 52, scope: !129)
!157 = !DILocalVariable(name: "zz", scope: !158, file: !1, line: 142, type: !20)
!158 = distinct !DILexicalBlock(scope: !129, file: !1, line: 142, column: 56)
!159 = !DILocation(line: 142, column: 56, scope: !158)
!160 = !DILocalVariable(name: "yy", scope: !158, file: !1, line: 142, type: !20)
!161 = !DILocalVariable(name: "tmp", scope: !158, file: !1, line: 142, type: !20)
!162 = !DILocation(line: 142, column: 56, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !1, line: 142, column: 56)
!164 = !DILocation(line: 142, column: 56, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !1, line: 142, column: 56)
!166 = !DILocation(line: 142, column: 56, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 142, column: 56)
!168 = !DILocation(line: 142, column: 56, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !1, line: 142, column: 56)
!170 = distinct !{!170, !159, !159}
!171 = !DILocation(line: 143, column: 16, scope: !129)
!172 = !DILocation(line: 144, column: 36, scope: !129)
!173 = !DILocation(line: 144, column: 30, scope: !129)
!174 = !DILocation(line: 144, column: 23, scope: !129)
!175 = !DILocation(line: 144, column: 34, scope: !129)
!176 = !DILocation(line: 144, column: 17, scope: !129)
!177 = !DILocation(line: 144, column: 10, scope: !129)
!178 = !DILocation(line: 144, column: 21, scope: !129)
!179 = !DILocation(line: 145, column: 27, scope: !129)
!180 = !DILocation(line: 145, column: 17, scope: !129)
!181 = !DILocation(line: 145, column: 10, scope: !129)
!182 = !DILocation(line: 145, column: 25, scope: !129)
!183 = !DILocation(line: 146, column: 17, scope: !129)
!184 = !DILocation(line: 146, column: 10, scope: !129)
!185 = !DILocation(line: 146, column: 25, scope: !129)
!186 = !DILocation(line: 147, column: 15, scope: !129)
!187 = !DILocation(line: 148, column: 24, scope: !129)
!188 = !DILocation(line: 148, column: 15, scope: !129)
!189 = !DILocation(line: 148, column: 10, scope: !129)
!190 = !DILocation(line: 148, column: 22, scope: !129)
!191 = !DILocalVariable(name: "zz", scope: !192, file: !1, line: 149, type: !20)
!192 = distinct !DILexicalBlock(scope: !129, file: !1, line: 149, column: 10)
!193 = !DILocation(line: 149, column: 10, scope: !192)
!194 = !DILocalVariable(name: "tmp", scope: !192, file: !1, line: 149, type: !20)
!195 = !DILocation(line: 149, column: 10, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 149, column: 10)
!197 = distinct !{!197, !193, !193, !81}
!198 = distinct !{!198, !125, !199, !81}
!199 = !DILocation(line: 150, column: 7, scope: !84)
!200 = !DILocation(line: 152, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 152, column: 7)
!202 = distinct !DILexicalBlock(scope: !84, file: !1, line: 152, column: 7)
!203 = !DILocation(line: 154, column: 15, scope: !84)
!204 = !DILocation(line: 155, column: 14, scope: !205)
!205 = distinct !DILexicalBlock(scope: !84, file: !1, line: 155, column: 7)
!206 = !DILocation(line: 155, column: 12, scope: !205)
!207 = !DILocation(line: 155, column: 19, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !1, line: 155, column: 7)
!209 = !DILocation(line: 155, column: 24, scope: !208)
!210 = !DILocation(line: 155, column: 21, scope: !208)
!211 = !DILocation(line: 155, column: 7, scope: !205)
!212 = !DILocation(line: 156, column: 12, scope: !213)
!213 = distinct !DILexicalBlock(scope: !208, file: !1, line: 155, column: 40)
!214 = !DILocation(line: 157, column: 14, scope: !213)
!215 = !DILocation(line: 157, column: 12, scope: !213)
!216 = !DILocation(line: 158, column: 10, scope: !213)
!217 = !DILocation(line: 158, column: 24, scope: !213)
!218 = !DILocation(line: 158, column: 17, scope: !213)
!219 = !DILocation(line: 158, column: 27, scope: !213)
!220 = !DILocation(line: 158, column: 46, scope: !221)
!221 = distinct !DILexicalBlock(scope: !213, file: !1, line: 158, column: 33)
!222 = !DILocation(line: 158, column: 39, scope: !221)
!223 = !DILocation(line: 158, column: 37, scope: !221)
!224 = !DILocation(line: 158, column: 51, scope: !221)
!225 = distinct !{!225, !216, !226, !81}
!226 = !DILocation(line: 158, column: 55, scope: !213)
!227 = !DILocation(line: 159, column: 21, scope: !213)
!228 = !DILocation(line: 159, column: 10, scope: !213)
!229 = !DILocation(line: 159, column: 14, scope: !213)
!230 = !DILocation(line: 159, column: 15, scope: !213)
!231 = !DILocation(line: 159, column: 19, scope: !213)
!232 = !DILocation(line: 160, column: 14, scope: !233)
!233 = distinct !DILexicalBlock(scope: !213, file: !1, line: 160, column: 14)
!234 = !DILocation(line: 160, column: 18, scope: !233)
!235 = !DILocation(line: 160, column: 16, scope: !233)
!236 = !DILocation(line: 160, column: 34, scope: !233)
!237 = !DILocation(line: 160, column: 26, scope: !233)
!238 = !DILocation(line: 161, column: 7, scope: !213)
!239 = !DILocation(line: 155, column: 36, scope: !208)
!240 = !DILocation(line: 155, column: 7, scope: !208)
!241 = distinct !{!241, !211, !242, !81}
!242 = !DILocation(line: 161, column: 7, scope: !205)
!243 = !DILocation(line: 163, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !84, file: !1, line: 163, column: 11)
!245 = !DILocation(line: 163, column: 11, scope: !244)
!246 = !DILocation(line: 163, column: 22, scope: !244)
!247 = !DILocation(line: 182, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !84, file: !1, line: 182, column: 7)
!249 = !DILocation(line: 182, column: 12, scope: !248)
!250 = !DILocation(line: 182, column: 19, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !1, line: 182, column: 7)
!252 = !DILocation(line: 182, column: 24, scope: !251)
!253 = !DILocation(line: 182, column: 21, scope: !251)
!254 = !DILocation(line: 182, column: 7, scope: !248)
!255 = !DILocation(line: 183, column: 21, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 182, column: 40)
!257 = !DILocation(line: 183, column: 14, scope: !256)
!258 = !DILocation(line: 183, column: 24, scope: !256)
!259 = !DILocation(line: 183, column: 12, scope: !256)
!260 = !DILocation(line: 184, column: 19, scope: !256)
!261 = !DILocation(line: 184, column: 21, scope: !256)
!262 = !DILocation(line: 184, column: 16, scope: !256)
!263 = !DILocation(line: 184, column: 12, scope: !256)
!264 = !DILocation(line: 185, column: 22, scope: !256)
!265 = !DILocation(line: 185, column: 24, scope: !256)
!266 = !DILocation(line: 185, column: 17, scope: !256)
!267 = !DILocation(line: 185, column: 10, scope: !256)
!268 = !DILocation(line: 185, column: 20, scope: !256)
!269 = !DILocation(line: 186, column: 7, scope: !256)
!270 = !DILocation(line: 182, column: 36, scope: !251)
!271 = !DILocation(line: 182, column: 7, scope: !251)
!272 = distinct !{!272, !254, !273, !81}
!273 = !DILocation(line: 186, column: 7, scope: !248)
!274 = distinct !{!274, !82, !275}
!275 = !DILocation(line: 187, column: 4, scope: !14)
!276 = !DILocation(line: 188, column: 1, scope: !14)
!277 = distinct !DISubprogram(name: "BZ2_hbAssignCodes", scope: !1, file: !1, line: 192, type: !278, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !19, !17, !20, !20, !20}
!280 = !DILocalVariable(name: "code", arg: 1, scope: !277, file: !1, line: 192, type: !19)
!281 = !DILocation(line: 192, column: 33, scope: !277)
!282 = !DILocalVariable(name: "length", arg: 2, scope: !277, file: !1, line: 193, type: !17)
!283 = !DILocation(line: 193, column: 33, scope: !277)
!284 = !DILocalVariable(name: "minLen", arg: 3, scope: !277, file: !1, line: 194, type: !20)
!285 = !DILocation(line: 194, column: 32, scope: !277)
!286 = !DILocalVariable(name: "maxLen", arg: 4, scope: !277, file: !1, line: 195, type: !20)
!287 = !DILocation(line: 195, column: 32, scope: !277)
!288 = !DILocalVariable(name: "alphaSize", arg: 5, scope: !277, file: !1, line: 196, type: !20)
!289 = !DILocation(line: 196, column: 32, scope: !277)
!290 = !DILocalVariable(name: "n", scope: !277, file: !1, line: 198, type: !20)
!291 = !DILocation(line: 198, column: 10, scope: !277)
!292 = !DILocalVariable(name: "vec", scope: !277, file: !1, line: 198, type: !20)
!293 = !DILocation(line: 198, column: 13, scope: !277)
!294 = !DILocalVariable(name: "i", scope: !277, file: !1, line: 198, type: !20)
!295 = !DILocation(line: 198, column: 18, scope: !277)
!296 = !DILocation(line: 200, column: 8, scope: !277)
!297 = !DILocation(line: 201, column: 13, scope: !298)
!298 = distinct !DILexicalBlock(scope: !277, file: !1, line: 201, column: 4)
!299 = !DILocation(line: 201, column: 11, scope: !298)
!300 = !DILocation(line: 201, column: 9, scope: !298)
!301 = !DILocation(line: 201, column: 21, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !1, line: 201, column: 4)
!303 = !DILocation(line: 201, column: 26, scope: !302)
!304 = !DILocation(line: 201, column: 23, scope: !302)
!305 = !DILocation(line: 201, column: 4, scope: !298)
!306 = !DILocation(line: 202, column: 14, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 202, column: 7)
!308 = distinct !DILexicalBlock(scope: !302, file: !1, line: 201, column: 39)
!309 = !DILocation(line: 202, column: 12, scope: !307)
!310 = !DILocation(line: 202, column: 19, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !1, line: 202, column: 7)
!312 = !DILocation(line: 202, column: 23, scope: !311)
!313 = !DILocation(line: 202, column: 21, scope: !311)
!314 = !DILocation(line: 202, column: 7, scope: !307)
!315 = !DILocation(line: 203, column: 14, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !1, line: 203, column: 14)
!317 = !DILocation(line: 203, column: 21, scope: !316)
!318 = !DILocation(line: 203, column: 27, scope: !316)
!319 = !DILocation(line: 203, column: 24, scope: !316)
!320 = !DILocation(line: 203, column: 42, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !1, line: 203, column: 30)
!322 = !DILocation(line: 203, column: 32, scope: !321)
!323 = !DILocation(line: 203, column: 37, scope: !321)
!324 = !DILocation(line: 203, column: 40, scope: !321)
!325 = !DILocation(line: 203, column: 50, scope: !321)
!326 = !DILocation(line: 203, column: 54, scope: !321)
!327 = !DILocation(line: 202, column: 35, scope: !311)
!328 = !DILocation(line: 202, column: 7, scope: !311)
!329 = distinct !{!329, !314, !330, !81}
!330 = !DILocation(line: 203, column: 54, scope: !307)
!331 = !DILocation(line: 204, column: 11, scope: !308)
!332 = !DILocation(line: 205, column: 4, scope: !308)
!333 = !DILocation(line: 201, column: 35, scope: !302)
!334 = !DILocation(line: 201, column: 4, scope: !302)
!335 = distinct !{!335, !305, !336, !81}
!336 = !DILocation(line: 205, column: 4, scope: !298)
!337 = !DILocation(line: 206, column: 1, scope: !277)
!338 = distinct !DISubprogram(name: "BZ2_hbCreateDecodeTables", scope: !1, file: !1, line: 210, type: !339, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !19, !19, !19, !17, !20, !20, !20}
!341 = !DILocalVariable(name: "limit", arg: 1, scope: !338, file: !1, line: 210, type: !19)
!342 = !DILocation(line: 210, column: 40, scope: !338)
!343 = !DILocalVariable(name: "base", arg: 2, scope: !338, file: !1, line: 211, type: !19)
!344 = !DILocation(line: 211, column: 40, scope: !338)
!345 = !DILocalVariable(name: "perm", arg: 3, scope: !338, file: !1, line: 212, type: !19)
!346 = !DILocation(line: 212, column: 40, scope: !338)
!347 = !DILocalVariable(name: "length", arg: 4, scope: !338, file: !1, line: 213, type: !17)
!348 = !DILocation(line: 213, column: 40, scope: !338)
!349 = !DILocalVariable(name: "minLen", arg: 5, scope: !338, file: !1, line: 214, type: !20)
!350 = !DILocation(line: 214, column: 39, scope: !338)
!351 = !DILocalVariable(name: "maxLen", arg: 6, scope: !338, file: !1, line: 215, type: !20)
!352 = !DILocation(line: 215, column: 39, scope: !338)
!353 = !DILocalVariable(name: "alphaSize", arg: 7, scope: !338, file: !1, line: 216, type: !20)
!354 = !DILocation(line: 216, column: 39, scope: !338)
!355 = !DILocalVariable(name: "pp", scope: !338, file: !1, line: 218, type: !20)
!356 = !DILocation(line: 218, column: 10, scope: !338)
!357 = !DILocalVariable(name: "i", scope: !338, file: !1, line: 218, type: !20)
!358 = !DILocation(line: 218, column: 14, scope: !338)
!359 = !DILocalVariable(name: "j", scope: !338, file: !1, line: 218, type: !20)
!360 = !DILocation(line: 218, column: 17, scope: !338)
!361 = !DILocalVariable(name: "vec", scope: !338, file: !1, line: 218, type: !20)
!362 = !DILocation(line: 218, column: 20, scope: !338)
!363 = !DILocation(line: 220, column: 7, scope: !338)
!364 = !DILocation(line: 221, column: 13, scope: !365)
!365 = distinct !DILexicalBlock(scope: !338, file: !1, line: 221, column: 4)
!366 = !DILocation(line: 221, column: 11, scope: !365)
!367 = !DILocation(line: 221, column: 9, scope: !365)
!368 = !DILocation(line: 221, column: 21, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !1, line: 221, column: 4)
!370 = !DILocation(line: 221, column: 26, scope: !369)
!371 = !DILocation(line: 221, column: 23, scope: !369)
!372 = !DILocation(line: 221, column: 4, scope: !365)
!373 = !DILocation(line: 222, column: 14, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !1, line: 222, column: 7)
!375 = !DILocation(line: 222, column: 12, scope: !374)
!376 = !DILocation(line: 222, column: 19, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !1, line: 222, column: 7)
!378 = !DILocation(line: 222, column: 23, scope: !377)
!379 = !DILocation(line: 222, column: 21, scope: !377)
!380 = !DILocation(line: 222, column: 7, scope: !374)
!381 = !DILocation(line: 223, column: 14, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !1, line: 223, column: 14)
!383 = !DILocation(line: 223, column: 21, scope: !382)
!384 = !DILocation(line: 223, column: 27, scope: !382)
!385 = !DILocation(line: 223, column: 24, scope: !382)
!386 = !DILocation(line: 223, column: 43, scope: !387)
!387 = distinct !DILexicalBlock(scope: !382, file: !1, line: 223, column: 30)
!388 = !DILocation(line: 223, column: 32, scope: !387)
!389 = !DILocation(line: 223, column: 37, scope: !387)
!390 = !DILocation(line: 223, column: 41, scope: !387)
!391 = !DILocation(line: 223, column: 48, scope: !387)
!392 = !DILocation(line: 223, column: 52, scope: !387)
!393 = !DILocation(line: 222, column: 35, scope: !377)
!394 = !DILocation(line: 222, column: 7, scope: !377)
!395 = distinct !{!395, !380, !396, !81}
!396 = !DILocation(line: 223, column: 52, scope: !374)
!397 = !DILocation(line: 221, column: 35, scope: !369)
!398 = !DILocation(line: 221, column: 4, scope: !369)
!399 = distinct !{!399, !372, !400, !81}
!400 = !DILocation(line: 223, column: 52, scope: !365)
!401 = !DILocation(line: 225, column: 11, scope: !402)
!402 = distinct !DILexicalBlock(scope: !338, file: !1, line: 225, column: 4)
!403 = !DILocation(line: 225, column: 9, scope: !402)
!404 = !DILocation(line: 225, column: 16, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !1, line: 225, column: 4)
!406 = !DILocation(line: 225, column: 18, scope: !405)
!407 = !DILocation(line: 225, column: 4, scope: !402)
!408 = !DILocation(line: 225, column: 42, scope: !405)
!409 = !DILocation(line: 225, column: 47, scope: !405)
!410 = !DILocation(line: 225, column: 50, scope: !405)
!411 = !DILocation(line: 225, column: 38, scope: !405)
!412 = !DILocation(line: 225, column: 4, scope: !405)
!413 = distinct !{!413, !407, !414, !81}
!414 = !DILocation(line: 225, column: 52, scope: !402)
!415 = !DILocation(line: 226, column: 11, scope: !416)
!416 = distinct !DILexicalBlock(scope: !338, file: !1, line: 226, column: 4)
!417 = !DILocation(line: 226, column: 9, scope: !416)
!418 = !DILocation(line: 226, column: 16, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 226, column: 4)
!420 = !DILocation(line: 226, column: 20, scope: !419)
!421 = !DILocation(line: 226, column: 18, scope: !419)
!422 = !DILocation(line: 226, column: 4, scope: !416)
!423 = !DILocation(line: 226, column: 36, scope: !419)
!424 = !DILocation(line: 226, column: 41, scope: !419)
!425 = !DILocation(line: 226, column: 48, scope: !419)
!426 = !DILocation(line: 226, column: 50, scope: !419)
!427 = !DILocation(line: 226, column: 53, scope: !419)
!428 = !DILocation(line: 226, column: 32, scope: !419)
!429 = !DILocation(line: 226, column: 4, scope: !419)
!430 = distinct !{!430, !422, !431, !81}
!431 = !DILocation(line: 226, column: 53, scope: !416)
!432 = !DILocation(line: 228, column: 11, scope: !433)
!433 = distinct !DILexicalBlock(scope: !338, file: !1, line: 228, column: 4)
!434 = !DILocation(line: 228, column: 9, scope: !433)
!435 = !DILocation(line: 228, column: 16, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !1, line: 228, column: 4)
!437 = !DILocation(line: 228, column: 18, scope: !436)
!438 = !DILocation(line: 228, column: 4, scope: !433)
!439 = !DILocation(line: 228, column: 53, scope: !436)
!440 = !DILocation(line: 228, column: 58, scope: !436)
!441 = !DILocation(line: 228, column: 59, scope: !436)
!442 = !DILocation(line: 228, column: 42, scope: !436)
!443 = !DILocation(line: 228, column: 47, scope: !436)
!444 = !DILocation(line: 228, column: 50, scope: !436)
!445 = !DILocation(line: 228, column: 38, scope: !436)
!446 = !DILocation(line: 228, column: 4, scope: !436)
!447 = distinct !{!447, !438, !448, !81}
!448 = !DILocation(line: 228, column: 61, scope: !433)
!449 = !DILocation(line: 230, column: 11, scope: !450)
!450 = distinct !DILexicalBlock(scope: !338, file: !1, line: 230, column: 4)
!451 = !DILocation(line: 230, column: 9, scope: !450)
!452 = !DILocation(line: 230, column: 16, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !1, line: 230, column: 4)
!454 = !DILocation(line: 230, column: 18, scope: !453)
!455 = !DILocation(line: 230, column: 4, scope: !450)
!456 = !DILocation(line: 230, column: 42, scope: !453)
!457 = !DILocation(line: 230, column: 48, scope: !453)
!458 = !DILocation(line: 230, column: 51, scope: !453)
!459 = !DILocation(line: 230, column: 38, scope: !453)
!460 = !DILocation(line: 230, column: 4, scope: !453)
!461 = distinct !{!461, !455, !462, !81}
!462 = !DILocation(line: 230, column: 53, scope: !450)
!463 = !DILocation(line: 231, column: 8, scope: !338)
!464 = !DILocation(line: 233, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !338, file: !1, line: 233, column: 4)
!466 = !DILocation(line: 233, column: 11, scope: !465)
!467 = !DILocation(line: 233, column: 9, scope: !465)
!468 = !DILocation(line: 233, column: 21, scope: !469)
!469 = distinct !DILexicalBlock(scope: !465, file: !1, line: 233, column: 4)
!470 = !DILocation(line: 233, column: 26, scope: !469)
!471 = !DILocation(line: 233, column: 23, scope: !469)
!472 = !DILocation(line: 233, column: 4, scope: !465)
!473 = !DILocation(line: 234, column: 15, scope: !474)
!474 = distinct !DILexicalBlock(scope: !469, file: !1, line: 233, column: 39)
!475 = !DILocation(line: 234, column: 20, scope: !474)
!476 = !DILocation(line: 234, column: 21, scope: !474)
!477 = !DILocation(line: 234, column: 27, scope: !474)
!478 = !DILocation(line: 234, column: 32, scope: !474)
!479 = !DILocation(line: 234, column: 25, scope: !474)
!480 = !DILocation(line: 234, column: 11, scope: !474)
!481 = !DILocation(line: 235, column: 18, scope: !474)
!482 = !DILocation(line: 235, column: 21, scope: !474)
!483 = !DILocation(line: 235, column: 7, scope: !474)
!484 = !DILocation(line: 235, column: 13, scope: !474)
!485 = !DILocation(line: 235, column: 16, scope: !474)
!486 = !DILocation(line: 236, column: 11, scope: !474)
!487 = !DILocation(line: 237, column: 4, scope: !474)
!488 = !DILocation(line: 233, column: 35, scope: !469)
!489 = !DILocation(line: 233, column: 4, scope: !469)
!490 = distinct !{!490, !472, !491, !81}
!491 = !DILocation(line: 237, column: 4, scope: !465)
!492 = !DILocation(line: 238, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !338, file: !1, line: 238, column: 4)
!494 = !DILocation(line: 238, column: 20, scope: !493)
!495 = !DILocation(line: 238, column: 11, scope: !493)
!496 = !DILocation(line: 238, column: 9, scope: !493)
!497 = !DILocation(line: 238, column: 25, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !1, line: 238, column: 4)
!499 = !DILocation(line: 238, column: 30, scope: !498)
!500 = !DILocation(line: 238, column: 27, scope: !498)
!501 = !DILocation(line: 238, column: 4, scope: !493)
!502 = !DILocation(line: 239, column: 19, scope: !498)
!503 = !DILocation(line: 239, column: 25, scope: !498)
!504 = !DILocation(line: 239, column: 26, scope: !498)
!505 = !DILocation(line: 239, column: 30, scope: !498)
!506 = !DILocation(line: 239, column: 35, scope: !498)
!507 = !DILocation(line: 239, column: 43, scope: !498)
!508 = !DILocation(line: 239, column: 48, scope: !498)
!509 = !DILocation(line: 239, column: 41, scope: !498)
!510 = !DILocation(line: 239, column: 7, scope: !498)
!511 = !DILocation(line: 239, column: 12, scope: !498)
!512 = !DILocation(line: 239, column: 15, scope: !498)
!513 = !DILocation(line: 238, column: 39, scope: !498)
!514 = !DILocation(line: 238, column: 4, scope: !498)
!515 = distinct !{!515, !501, !516, !81}
!516 = !DILocation(line: 239, column: 49, scope: !493)
!517 = !DILocation(line: 240, column: 1, scope: !338)

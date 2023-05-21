; ModuleID = 'output/jump-into-loop/ex7/ex7.ll'
source_filename = "input/jump-into-loop/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 1
  %8 = mul i32 %3, %3
  %9 = add i32 %8, %3
  %10 = srem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %32

14:                                               ; preds = %4
  br label %16

15:                                               ; preds = %63
  ret void

16:                                               ; preds = %32, %63, %14
  %17 = phi i64 [ 0, %14 ], [ %74, %63 ], [ 0, %32 ]
  %18 = trunc i64 %17 to i32
  %19 = urem i32 %18, 80
  %20 = icmp eq i32 %19, 0
  %21 = mul i32 %3, 2
  %22 = mul i32 %3, 2
  %23 = add i32 2, %22
  %24 = mul i32 %21, %23
  %25 = srem i32 %24, 4
  %26 = icmp eq i32 %25, 0
  %27 = mul i32 %3, %3
  %28 = add i32 %27, %3
  %29 = srem i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = and i1 %26, %30
  br i1 %31, label %58, label %32

32:                                               ; preds = %13, %32, %16
  %33 = add i32 70, 11
  %34 = mul i32 51, 24
  %35 = sub i32 103, 8
  %36 = sub i32 77, 31
  %37 = mul i32 64, 80
  %38 = sub i32 107, 92
  %39 = sub i32 %34, 90
  %40 = add i32 %35, 111
  %41 = mul i32 %35, 6
  %42 = sdiv i32 %37, 89
  %43 = mul i32 %33, 70
  %44 = mul i32 %33, 73
  %45 = add i32 0, %39
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %43
  %50 = add i32 %49, %44
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 1
  %53 = mul i32 %50, %50
  %54 = add i32 %53, %50
  %55 = srem i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %52, %56
  br i1 %57, label %16, label %32

58:                                               ; preds = %16
  br i1 %20, label %63, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds i8, i8* %0, i64 %17
  %61 = load i8, i8* %60, align 1, !tbaa !10
  %62 = sext i8 %61 to i32
  br label %63

63:                                               ; preds = %59, %58
  %64 = phi i32 [ %62, %59 ], [ 10, %58 ]
  %65 = call i32 @putchar(i32 %64)
  %66 = load float, float* %1, align 4, !tbaa !13
  %67 = fpext float %66 to double
  %68 = fadd double %67, 4.000000e-05
  %69 = fptrunc double %68 to float
  store float %69, float* %1, align 4, !tbaa !13
  %70 = load float, float* %2, align 4, !tbaa !13
  %71 = fpext float %70 to double
  %72 = fadd double %71, 2.000000e-05
  %73 = fptrunc double %72 to float
  store float %73, float* %2, align 4, !tbaa !13
  %74 = add nuw nsw i64 %17, 1
  %75 = icmp eq i64 %74, 1761
  br i1 %75, label %15, label %16, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z6renderffiPfPcii(float %0, float %1, i32 %2, float* nocapture %3, i8* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #3 {
  %8 = sdiv i32 %6, 40
  %9 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 32, i64 %9, i1 false)
  %10 = bitcast float* %3 to i8*
  %11 = shl nsw i64 %9, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 %11, i1 false)
  %12 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %13 = call fastcc float @_ZL3sinf(float %0) #9
  %14 = call fastcc float @_ZL3cosf(float %0) #9
  %15 = sitofp i32 %8 to float
  %16 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %17 = call fastcc float @_ZL3cosf(float %1) #9
  %18 = call fastcc float @_ZL3sinf(float %1) #9
  %19 = sdiv i32 %6, 2
  %20 = sitofp i32 %19 to float
  %21 = sdiv i32 %5, 2
  %22 = add nsw i32 %21, 1
  %23 = sitofp i32 %22 to float
  br label %24

24:                                               ; preds = %86, %7
  %25 = phi float [ 0.000000e+00, %7 ], [ %89, %86 ]
  %26 = call fastcc float @_ZL3cosf(float %25) #9
  %27 = call fastcc float @_ZL3sinf(float %25) #9
  %28 = fadd float %26, %15
  %29 = fmul float %12, %28
  %30 = fmul float %29, %14
  %31 = fmul float %13, %27
  %32 = fsub float %30, %31
  %33 = fmul float %13, %29
  %34 = fmul float %27, %14
  %35 = fadd float %33, %34
  %36 = fadd float %35, 5.000000e+00
  %37 = fdiv float 1.000000e+00, %36
  %38 = fmul float %37, 3.000000e+01
  %39 = fmul float %28, %16
  %40 = fmul float %39, %17
  %41 = fmul float %32, %18
  %42 = fadd float %40, %41
  %43 = fmul float %38, %42
  %44 = fadd float %43, %20
  %45 = fptosi float %44 to i32
  %46 = fmul float %37, 1.500000e+01
  %47 = fmul float %39, %18
  %48 = fmul float %32, %17
  %49 = fsub float %47, %48
  %50 = fmul float %46, %49
  %51 = fadd float %50, %23
  %52 = fptosi float %51 to i32
  %53 = fmul float %12, %26
  %54 = fmul float %53, %14
  %55 = fsub float %31, %54
  %56 = fmul float %55, %17
  %57 = fmul float %53, %13
  %58 = fsub float %56, %57
  %59 = fsub float %58, %34
  %60 = fmul float %26, %16
  %61 = fmul float %60, %18
  %62 = fsub float %59, %61
  %63 = fmul float %62, 8.000000e+00
  %64 = fptosi float %63 to i32
  %65 = icmp slt i32 %52, %5
  %66 = icmp sgt i32 %52, 0
  %67 = and i1 %65, %66
  %68 = icmp sgt i32 %45, 0
  %69 = select i1 %67, i1 %68, i1 false
  %70 = icmp slt i32 %45, %6
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %86

72:                                               ; preds = %24
  %73 = mul nsw i32 %52, %6
  %74 = add nsw i32 %73, %45
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %3, i64 %75
  %77 = load float, float* %76, align 4, !tbaa !13
  %78 = fcmp ogt float %37, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  store float %37, float* %76, align 4, !tbaa !13
  %80 = icmp sgt i32 %64, 0
  %81 = select i1 %80, i32 %64, i32 0
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1, !tbaa !10
  %85 = getelementptr inbounds i8, i8* %4, i64 %75
  store i8 %84, i8* %85, align 1, !tbaa !10
  br label %86

86:                                               ; preds = %79, %72, %24
  %87 = fpext float %25 to double
  %88 = fadd double %87, 7.000000e-02
  %89 = fptrunc double %88 to float
  %90 = fpext float %89 to double
  %91 = fcmp olt double %90, 6.280000e+00
  br i1 %91, label %24, label %.preheader1, !llvm.loop !18

.preheader1:                                      ; preds = %86
  br label %92

92:                                               ; preds = %.preheader1, %155
  %93 = phi double [ %158, %155 ], [ 0.000000e+00, %.preheader1 ]
  %94 = phi float [ %157, %155 ], [ 0.000000e+00, %.preheader1 ]
  %95 = call fastcc float @_ZL3cosf(float %94) #9
  %96 = call fastcc float @_ZL3sinf(float %94) #9
  %97 = fadd float %95, %15
  %98 = fmul float %12, %97
  %99 = fmul float %14, %98
  %100 = fmul float %13, %96
  %101 = fsub float %99, %100
  %102 = fmul float %13, %98
  %103 = fmul float %14, %96
  %104 = fadd float %103, %102
  %105 = fadd float %104, 5.000000e+00
  %106 = fdiv float 1.000000e+00, %105
  %107 = fmul float %106, 3.000000e+01
  %108 = fmul float %16, %97
  %109 = fmul float %17, %108
  %110 = fmul float %18, %101
  %111 = fadd float %109, %110
  %112 = fmul float %111, %107
  %113 = fadd float %112, %20
  %114 = fptosi float %113 to i32
  %115 = fmul float %106, 1.500000e+01
  %116 = fmul float %18, %108
  %117 = fmul float %17, %101
  %118 = fsub float %116, %117
  %119 = fmul float %118, %115
  %120 = fadd float %119, %23
  %121 = fptosi float %120 to i32
  %122 = fmul float %12, %95
  %123 = fmul float %14, %122
  %124 = fsub float %100, %123
  %125 = fmul float %17, %124
  %126 = fmul float %13, %122
  %127 = fsub float %125, %126
  %128 = fsub float %127, %103
  %129 = fmul float %16, %95
  %130 = fmul float %18, %129
  %131 = fsub float %128, %130
  %132 = fmul float %131, 8.000000e+00
  %133 = fptosi float %132 to i32
  %134 = icmp slt i32 %121, %5
  %135 = icmp sgt i32 %121, 0
  %136 = and i1 %134, %135
  %137 = icmp sgt i32 %114, 0
  %138 = select i1 %136, i1 %137, i1 false
  %139 = icmp slt i32 %114, %6
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %155

141:                                              ; preds = %92
  %142 = mul nsw i32 %121, %6
  %143 = add nsw i32 %142, %114
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %3, i64 %144
  %146 = load float, float* %145, align 4, !tbaa !13
  %147 = fcmp ogt float %106, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  store float %106, float* %145, align 4, !tbaa !13
  %149 = icmp sgt i32 %133, 0
  %150 = select i1 %149, i32 %133, i32 0
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1, !tbaa !10
  %154 = getelementptr inbounds i8, i8* %4, i64 %144
  store i8 %153, i8* %154, align 1, !tbaa !10
  br label %155

155:                                              ; preds = %148, %141, %92
  %156 = fadd double %93, 7.000000e-02
  %157 = fptrunc double %156 to float
  %158 = fpext float %157 to double
  %159 = fcmp olt double %158, 6.280000e+00
  br i1 %159, label %92, label %.preheader, !llvm.loop !19

.preheader:                                       ; preds = %155
  %160 = mul i32 %21, 2
  %161 = mul i32 %21, 2
  %162 = add i32 2, %161
  %163 = mul i32 %160, %162
  %164 = srem i32 %163, 4
  %165 = icmp eq i32 %164, 0
  %166 = mul i32 %21, %21
  %167 = add i32 %166, %21
  %168 = srem i32 %167, 2
  %169 = icmp eq i32 %168, 0
  %170 = or i1 %165, %169
  br i1 %170, label %172, label %171

171:                                              ; preds = %.preheader
  br label %194

172:                                              ; preds = %.preheader
  br label %177

173:                                              ; preds = %290
  %174 = fcmp une float %13, 0.000000e+00
  %175 = fmul float %13, 2.000000e+00
  %176 = select i1 %174, float %175, float %13
  br label %296

177:                                              ; preds = %194, %172, %290
  %178 = phi double [ %293, %290 ], [ 0.000000e+00, %172 ], [ 0.000000e+00, %194 ]
  %179 = phi float [ %292, %290 ], [ 0.000000e+00, %172 ], [ 0.000000e+00, %194 ]
  %180 = call fastcc float @_ZL3cosf(float %179) #9
  %181 = call fastcc float @_ZL3sinf(float %179) #9
  %182 = mul i32 %64, 2
  %183 = mul i32 %64, 2
  %184 = add i32 2, %183
  %185 = mul i32 %182, %184
  %186 = srem i32 %185, 4
  %187 = icmp eq i32 %186, 0
  %188 = mul i32 %64, %64
  %189 = mul i32 %188, %64
  %190 = add i32 %189, %64
  %191 = srem i32 %190, 2
  %192 = icmp eq i32 %191, 0
  %193 = and i1 %187, %192
  br i1 %193, label %231, label %194

194:                                              ; preds = %171, %194, %177
  %195 = sdiv i32 83, 71
  %196 = sub i32 105, 117
  %197 = mul i32 86, 24
  %198 = mul i32 18, 35
  %199 = add i32 40, 56
  %200 = sdiv i32 111, 120
  %201 = sdiv i32 121, 17
  %202 = add i32 103, 88
  %203 = sub i32 83, 29
  %204 = mul i32 %196, 39
  %205 = add i32 %195, 55
  %206 = sdiv i32 %195, 21
  %207 = sub i32 %195, 68
  %208 = sdiv i32 %197, 15
  %209 = sub i32 %200, 3
  %210 = add i32 %195, 3
  %211 = sdiv i32 %198, 2
  %212 = sdiv i32 %202, 17
  %213 = mul i32 %198, 14
  %214 = add i32 0, %204
  %215 = add i32 %214, %205
  %216 = add i32 %215, %206
  %217 = add i32 %216, %207
  %218 = add i32 %217, %208
  %219 = add i32 %218, %209
  %220 = add i32 %219, %210
  %221 = add i32 %220, %211
  %222 = add i32 %221, %212
  %223 = add i32 %222, %213
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %224, 1
  %226 = mul i32 %223, %223
  %227 = add i32 %226, %223
  %228 = srem i32 %227, 2
  %229 = icmp eq i32 %228, 0
  %230 = or i1 %225, %229
  br i1 %230, label %177, label %194

231:                                              ; preds = %177
  %232 = fadd float %180, %15
  %233 = fmul float %12, %232
  %234 = fmul float %14, %233
  %235 = fmul float %13, %181
  %236 = fsub float %234, %235
  %237 = fmul float %13, %233
  %238 = fmul float %14, %181
  %239 = fadd float %238, %237
  %240 = fadd float %239, 5.000000e+00
  %241 = fdiv float 1.000000e+00, %240
  %242 = fmul float %241, 3.000000e+01
  %243 = fmul float %16, %232
  %244 = fmul float %17, %243
  %245 = fmul float %18, %236
  %246 = fadd float %244, %245
  %247 = fmul float %246, %242
  %248 = fadd float %247, %20
  %249 = fptosi float %248 to i32
  %250 = fmul float %241, 1.500000e+01
  %251 = fmul float %18, %243
  %252 = fmul float %17, %236
  %253 = fsub float %251, %252
  %254 = fmul float %253, %250
  %255 = fadd float %254, %23
  %256 = fptosi float %255 to i32
  %257 = fmul float %12, %180
  %258 = fmul float %14, %257
  %259 = fsub float %235, %258
  %260 = fmul float %17, %259
  %261 = fmul float %13, %257
  %262 = fsub float %260, %261
  %263 = fsub float %262, %238
  %264 = fmul float %16, %180
  %265 = fmul float %18, %264
  %266 = fsub float %263, %265
  %267 = fmul float %266, 8.000000e+00
  %268 = fptosi float %267 to i32
  %269 = icmp slt i32 %256, %5
  %270 = icmp sgt i32 %256, 0
  %271 = and i1 %269, %270
  %272 = icmp sgt i32 %249, 0
  %273 = select i1 %271, i1 %272, i1 false
  %274 = icmp slt i32 %249, %6
  %275 = select i1 %273, i1 %274, i1 false
  br i1 %275, label %276, label %290

276:                                              ; preds = %231
  %277 = mul nsw i32 %256, %6
  %278 = add nsw i32 %277, %249
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %3, i64 %279
  %281 = load float, float* %280, align 4, !tbaa !13
  %282 = fcmp ogt float %241, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %276
  store float %241, float* %280, align 4, !tbaa !13
  %284 = icmp sgt i32 %268, 0
  %285 = select i1 %284, i32 %268, i32 0
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %286
  %288 = load i8, i8* %287, align 1, !tbaa !10
  %289 = getelementptr inbounds i8, i8* %4, i64 %279
  store i8 %288, i8* %289, align 1, !tbaa !10
  br label %290

290:                                              ; preds = %283, %276, %231
  %291 = fadd double %178, 7.000000e-02
  %292 = fptrunc double %291 to float
  %293 = fpext float %292 to double
  %294 = fcmp olt double %293, 6.280000e+00
  br i1 %294, label %177, label %173, !llvm.loop !20

295:                                              ; preds = %376
  ret void

296:                                              ; preds = %376, %173
  %297 = phi double [ 0.000000e+00, %173 ], [ %379, %376 ]
  %298 = phi i32 [ 0, %173 ], [ %300, %376 ]
  %299 = phi float [ 0.000000e+00, %173 ], [ %378, %376 ]
  %300 = add nuw nsw i32 %298, 1
  %301 = sitofp i32 %298 to float
  %302 = fadd float %12, %301
  %303 = call fastcc float @_ZL3cosf(float %299) #9
  %304 = fcmp une float %302, 0.000000e+00
  %305 = fmul float %302, 2.000000e+00
  %306 = fmul float %303, 2.000000e+00
  %307 = select i1 %304, float %303, float %306
  %308 = select i1 %304, float %305, float %302
  %309 = call fastcc float @_ZL3sinf(float %299) #9
  %310 = fmul float %309, 2.000000e+00
  %311 = select i1 %174, float %309, float %310
  %312 = fadd float %307, %15
  %313 = fmul float %308, %312
  %314 = fmul float %14, %313
  %315 = fmul float %176, %311
  %316 = fsub float %314, %315
  %317 = fcmp une float %312, 0.000000e+00
  %318 = fmul float %316, 2.000000e+00
  %319 = fmul float %312, 2.000000e+00
  %320 = select i1 %317, float %312, float %319
  %321 = select i1 %317, float %318, float %316
  %322 = fmul float %308, %320
  %323 = fmul float %176, %322
  %324 = fmul float %14, %311
  %325 = fadd float %324, %323
  %326 = fadd float %325, 5.000000e+00
  %327 = fdiv float 1.000000e+00, %326
  %328 = fmul float %327, 3.000000e+01
  %329 = fmul float %16, %320
  %330 = fmul float %17, %329
  %331 = fmul float %18, %321
  %332 = fadd float %330, %331
  %333 = fmul float %332, %328
  %334 = fadd float %333, %20
  %335 = fptosi float %334 to i32
  %336 = fmul float %327, 1.500000e+01
  %337 = fmul float %18, %329
  %338 = fmul float %17, %321
  %339 = fsub float %337, %338
  %340 = fmul float %339, %336
  %341 = fadd float %340, %23
  %342 = fptosi float %341 to i32
  %343 = fmul float %308, %307
  %344 = fmul float %14, %343
  %345 = fsub float %315, %344
  %346 = fmul float %17, %345
  %347 = fmul float %176, %343
  %348 = fsub float %346, %347
  %349 = fsub float %348, %324
  %350 = fmul float %16, %307
  %351 = fmul float %18, %350
  %352 = fsub float %349, %351
  %353 = fmul float %352, 8.000000e+00
  %354 = fptosi float %353 to i32
  %355 = icmp slt i32 %342, %5
  %356 = icmp sgt i32 %342, 0
  %357 = and i1 %355, %356
  %358 = icmp sgt i32 %335, 0
  %359 = select i1 %357, i1 %358, i1 false
  %360 = icmp slt i32 %335, %6
  %361 = select i1 %359, i1 %360, i1 false
  br i1 %361, label %362, label %376

362:                                              ; preds = %296
  %363 = mul nsw i32 %342, %6
  %364 = add nsw i32 %363, %335
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %3, i64 %365
  %367 = load float, float* %366, align 4, !tbaa !13
  %368 = fcmp ogt float %327, %367
  br i1 %368, label %369, label %376

369:                                              ; preds = %362
  store float %327, float* %366, align 4, !tbaa !13
  %370 = icmp sgt i32 %354, 0
  %371 = select i1 %370, i32 %354, i32 0
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %372
  %374 = load i8, i8* %373, align 1, !tbaa !10
  %375 = getelementptr inbounds i8, i8* %4, i64 %365
  store i8 %374, i8* %375, align 1, !tbaa !10
  br label %376

376:                                              ; preds = %369, %362, %296
  %377 = fadd double %297, 7.000000e-02
  %378 = fptrunc double %377 to float
  %379 = fpext float %378 to double
  %380 = icmp eq i32 %300, 90
  br i1 %380, label %295, label %296, !llvm.loop !21
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3sinf(float %0) unnamed_addr #5 {
  %2 = call float @llvm.sin.f32(float %0)
  ret float %2
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3cosf(float %0) unnamed_addr #5 {
  %2 = call float @llvm.cos.f32(float %0)
  ret float %2
}

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #6 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  store float 0.000000e+00, float* %1, align 4, !tbaa !13
  %4 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0.000000e+00, float* %2, align 4, !tbaa !13
  %5 = call i8* @llvm.stacksave()
  %6 = alloca [1760 x float], align 4
  %7 = alloca [1760 x i8], align 1
  %8 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 0
  %9 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 0
  %10 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %11, %0
  %12 = phi i32 [ 5, %0 ], [ %15, %11 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %.preheader, label %11, !llvm.loop !22

.preheader:                                       ; preds = %11
  %17 = mul i32 %12, 2
  %18 = mul i32 %12, 2
  %19 = add i32 2, %18
  %20 = mul i32 %17, %19
  %21 = srem i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = mul i32 %12, %12
  %24 = add i32 %23, %12
  %25 = srem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %22, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %.preheader
  br label %46

29:                                               ; preds = %.preheader
  br label %31

30:                                               ; preds = %82
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %91

31:                                               ; preds = %46, %29, %82
  %32 = phi i64 [ %92, %82 ], [ 0, %29 ], [ 0, %46 ]
  %33 = phi i32 [ %91, %82 ], [ 0, %29 ], [ 0, %46 ]
  %34 = mul i32 %10, 2
  %35 = mul i32 %10, 2
  %36 = add i32 2, %35
  %37 = mul i32 %34, %36
  %38 = srem i32 %37, 4
  %39 = icmp eq i32 %38, 0
  %40 = mul i32 %10, %10
  %41 = mul i32 %40, %10
  %42 = add i32 %41, %10
  %43 = srem i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = and i1 %39, %44
  br i1 %45, label %82, label %46

46:                                               ; preds = %28, %46, %31
  %47 = mul i32 36, 23
  %48 = sdiv i32 44, 88
  %49 = sdiv i32 65, 27
  %50 = sub i32 35, 56
  %51 = mul i32 111, 30
  %52 = sub i32 65, 125
  %53 = sub i32 59, 115
  %54 = mul i32 22, 1
  %55 = mul i32 %48, 16
  %56 = sdiv i32 %53, 96
  %57 = add i32 %48, 36
  %58 = sub i32 %47, 33
  %59 = mul i32 %52, 6
  %60 = mul i32 %47, 84
  %61 = add i32 %53, 92
  %62 = sdiv i32 %50, 106
  %63 = add i32 0, %55
  %64 = add i32 %63, %56
  %65 = add i32 %64, %57
  %66 = add i32 %65, %58
  %67 = add i32 %66, %59
  %68 = add i32 %67, %60
  %69 = add i32 %68, %61
  %70 = add i32 %69, %62
  %71 = mul i32 %70, 2
  %72 = mul i32 %70, 2
  %73 = add i32 2, %72
  %74 = mul i32 %71, %73
  %75 = srem i32 %74, 4
  %76 = icmp eq i32 %75, 0
  %77 = mul i32 %70, %70
  %78 = add i32 %77, %70
  %79 = srem i32 %78, 2
  %80 = icmp eq i32 %79, 0
  %81 = and i1 %76, %80
  br i1 %81, label %31, label %46

82:                                               ; preds = %31
  %83 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %32
  %84 = load i8, i8* %83, align 1, !tbaa !10
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %33, %85
  %87 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %32
  %88 = load float, float* %87, align 4, !tbaa !13
  %89 = sitofp i32 %86 to float
  %90 = fadd float %88, %89
  %91 = fptosi float %90 to i32
  %92 = add nuw nsw i64 %32, 1
  %93 = icmp eq i64 %92, 1760
  br i1 %93, label %30, label %31, !llvm.loop !23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #8

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Apple clang version 14.0.0 (clang-1400.0.29.202)"}
!10 = !{!11, !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !11, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16, !17}
!23 = distinct !{!23, !16, !17}

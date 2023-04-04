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
  %6 = add i32 %3, 1
  %7 = mul i32 3, %6
  %8 = add i32 %3, 2
  %9 = mul i32 %7, %8
  %10 = srem i32 %9, 6
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %3, %3
  %13 = add i32 %12, %3
  %14 = srem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = and i1 %11, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %20

18:                                               ; preds = %4
  br label %20

19:                                               ; preds = %29
  ret void

20:                                               ; preds = %17, %29, %18
  %21 = phi i64 [ 0, %18 ], [ %40, %29 ], [ 0, %17 ]
  %22 = trunc i64 %21 to i32
  %23 = urem i32 %22, 80
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %0, i64 %21
  %27 = load i8, i8* %26, align 1, !tbaa !10
  %28 = sext i8 %27 to i32
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %28, %25 ], [ 10, %20 ]
  %31 = call i32 @putchar(i32 %30)
  %32 = load float, float* %1, align 4, !tbaa !13
  %33 = fpext float %32 to double
  %34 = fadd double %33, 4.000000e-05
  %35 = fptrunc double %34 to float
  store float %35, float* %1, align 4, !tbaa !13
  %36 = load float, float* %2, align 4, !tbaa !13
  %37 = fpext float %36 to double
  %38 = fadd double %37, 2.000000e-05
  %39 = fptrunc double %38 to float
  store float %39, float* %2, align 4, !tbaa !13
  %40 = add nuw nsw i64 %21, 1
  %41 = icmp eq i64 %40, 1761
  br i1 %41, label %19, label %20, !llvm.loop !15
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
  %92 = add i32 %5, 1
  %93 = mul i32 3, %92
  %94 = add i32 %5, 2
  %95 = mul i32 %93, %94
  %96 = srem i32 %95, 6
  %97 = icmp eq i32 %96, 0
  %98 = mul i32 %5, %5
  %99 = add i32 %98, %5
  %100 = srem i32 %99, 2
  %101 = icmp eq i32 %100, 0
  %102 = or i1 %97, %101
  br i1 %102, label %104, label %103

103:                                              ; preds = %.preheader1
  br label %154

104:                                              ; preds = %.preheader1
  br label %105

105:                                              ; preds = %104, %173
  %106 = phi double [ %181, %173 ], [ 0.000000e+00, %104 ]
  %107 = phi float [ %180, %173 ], [ 0.000000e+00, %104 ]
  %108 = call fastcc float @_ZL3cosf(float %107) #9
  %109 = call fastcc float @_ZL3sinf(float %107) #9
  %110 = fadd float %108, %15
  %111 = fmul float %12, %110
  %112 = fmul float %14, %111
  %113 = fmul float %13, %109
  %114 = fsub float %112, %113
  %115 = fmul float %13, %111
  %116 = fmul float %14, %109
  %117 = fadd float %116, %115
  %118 = fadd float %117, 5.000000e+00
  %119 = fdiv float 1.000000e+00, %118
  %120 = fmul float %119, 3.000000e+01
  %121 = fmul float %16, %110
  %122 = fmul float %17, %121
  %123 = fmul float %18, %114
  %124 = fadd float %122, %123
  %125 = fmul float %124, %120
  %126 = fadd float %125, %20
  %127 = fptosi float %126 to i32
  %128 = fmul float %119, 1.500000e+01
  %129 = fmul float %18, %121
  %130 = fmul float %17, %114
  %131 = fsub float %129, %130
  %132 = fmul float %131, %128
  %133 = fadd float %132, %23
  %134 = fptosi float %133 to i32
  %135 = fmul float %12, %108
  %136 = fmul float %14, %135
  %137 = fsub float %113, %136
  %138 = fmul float %17, %137
  %139 = fmul float %13, %135
  %140 = fsub float %138, %139
  %141 = fsub float %140, %116
  %142 = fmul float %16, %108
  %143 = fmul float %18, %142
  %144 = fsub float %141, %143
  %145 = fmul float %144, 8.000000e+00
  %146 = fptosi float %145 to i32
  %147 = icmp slt i32 %134, %5
  %148 = icmp sgt i32 %134, 0
  %149 = and i1 %147, %148
  %150 = icmp sgt i32 %127, 0
  %151 = select i1 %149, i1 %150, i1 false
  %152 = icmp slt i32 %127, %6
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %154, label %173

154:                                              ; preds = %103, %105
  %155 = phi float [ %119, %105 ], [ 0.000000e+00, %103 ]
  %156 = phi i32 [ %127, %105 ], [ 0, %103 ]
  %157 = phi double [ %106, %105 ], [ 0.000000e+00, %103 ]
  %158 = phi i32 [ %134, %105 ], [ 0, %103 ]
  %159 = phi i32 [ %146, %105 ], [ 0, %103 ]
  %160 = mul nsw i32 %158, %6
  %161 = add nsw i32 %160, %156
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %3, i64 %162
  %164 = load float, float* %163, align 4, !tbaa !13
  %165 = fcmp ogt float %155, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %154
  store float %155, float* %163, align 4, !tbaa !13
  %167 = icmp sgt i32 %159, 0
  %168 = select i1 %167, i32 %159, i32 0
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %169
  %171 = load i8, i8* %170, align 1, !tbaa !10
  %172 = getelementptr inbounds i8, i8* %4, i64 %162
  store i8 %171, i8* %172, align 1, !tbaa !10
  br label %173

173:                                              ; preds = %166, %154, %105
  %174 = phi float [ %119, %105 ], [ %155, %154 ], [ %155, %166 ]
  %175 = phi i32 [ %127, %105 ], [ %156, %154 ], [ %156, %166 ]
  %176 = phi double [ %106, %105 ], [ %157, %154 ], [ %157, %166 ]
  %177 = phi i32 [ %134, %105 ], [ %158, %154 ], [ %158, %166 ]
  %178 = phi i32 [ %146, %105 ], [ %159, %154 ], [ %159, %166 ]
  %179 = fadd double %176, 7.000000e-02
  %180 = fptrunc double %179 to float
  %181 = fpext float %180 to double
  %182 = fcmp olt double %181, 6.280000e+00
  br i1 %182, label %105, label %.preheader, !llvm.loop !19

.preheader:                                       ; preds = %173
  br label %187

183:                                              ; preds = %250
  %184 = fcmp une float %13, 0.000000e+00
  %185 = fmul float %13, 2.000000e+00
  %186 = select i1 %184, float %185, float %13
  br label %256

187:                                              ; preds = %.preheader, %250
  %188 = phi double [ %253, %250 ], [ 0.000000e+00, %.preheader ]
  %189 = phi float [ %252, %250 ], [ 0.000000e+00, %.preheader ]
  %190 = call fastcc float @_ZL3cosf(float %189) #9
  %191 = call fastcc float @_ZL3sinf(float %189) #9
  %192 = fadd float %190, %15
  %193 = fmul float %12, %192
  %194 = fmul float %14, %193
  %195 = fmul float %13, %191
  %196 = fsub float %194, %195
  %197 = fmul float %13, %193
  %198 = fmul float %14, %191
  %199 = fadd float %198, %197
  %200 = fadd float %199, 5.000000e+00
  %201 = fdiv float 1.000000e+00, %200
  %202 = fmul float %201, 3.000000e+01
  %203 = fmul float %16, %192
  %204 = fmul float %17, %203
  %205 = fmul float %18, %196
  %206 = fadd float %204, %205
  %207 = fmul float %206, %202
  %208 = fadd float %207, %20
  %209 = fptosi float %208 to i32
  %210 = fmul float %201, 1.500000e+01
  %211 = fmul float %18, %203
  %212 = fmul float %17, %196
  %213 = fsub float %211, %212
  %214 = fmul float %213, %210
  %215 = fadd float %214, %23
  %216 = fptosi float %215 to i32
  %217 = fmul float %12, %190
  %218 = fmul float %14, %217
  %219 = fsub float %195, %218
  %220 = fmul float %17, %219
  %221 = fmul float %13, %217
  %222 = fsub float %220, %221
  %223 = fsub float %222, %198
  %224 = fmul float %16, %190
  %225 = fmul float %18, %224
  %226 = fsub float %223, %225
  %227 = fmul float %226, 8.000000e+00
  %228 = fptosi float %227 to i32
  %229 = icmp slt i32 %216, %5
  %230 = icmp sgt i32 %216, 0
  %231 = and i1 %229, %230
  %232 = icmp sgt i32 %209, 0
  %233 = select i1 %231, i1 %232, i1 false
  %234 = icmp slt i32 %209, %6
  %235 = select i1 %233, i1 %234, i1 false
  br i1 %235, label %236, label %250

236:                                              ; preds = %187
  %237 = mul nsw i32 %216, %6
  %238 = add nsw i32 %237, %209
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %3, i64 %239
  %241 = load float, float* %240, align 4, !tbaa !13
  %242 = fcmp ogt float %201, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %236
  store float %201, float* %240, align 4, !tbaa !13
  %244 = icmp sgt i32 %228, 0
  %245 = select i1 %244, i32 %228, i32 0
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %246
  %248 = load i8, i8* %247, align 1, !tbaa !10
  %249 = getelementptr inbounds i8, i8* %4, i64 %239
  store i8 %248, i8* %249, align 1, !tbaa !10
  br label %250

250:                                              ; preds = %243, %236, %187
  %251 = fadd double %188, 7.000000e-02
  %252 = fptrunc double %251 to float
  %253 = fpext float %252 to double
  %254 = fcmp olt double %253, 6.280000e+00
  br i1 %254, label %187, label %183, !llvm.loop !20

255:                                              ; preds = %336
  ret void

256:                                              ; preds = %336, %183
  %257 = phi double [ 0.000000e+00, %183 ], [ %339, %336 ]
  %258 = phi i32 [ 0, %183 ], [ %260, %336 ]
  %259 = phi float [ 0.000000e+00, %183 ], [ %338, %336 ]
  %260 = add nuw nsw i32 %258, 1
  %261 = sitofp i32 %258 to float
  %262 = fadd float %12, %261
  %263 = call fastcc float @_ZL3cosf(float %259) #9
  %264 = fcmp une float %262, 0.000000e+00
  %265 = fmul float %262, 2.000000e+00
  %266 = fmul float %263, 2.000000e+00
  %267 = select i1 %264, float %263, float %266
  %268 = select i1 %264, float %265, float %262
  %269 = call fastcc float @_ZL3sinf(float %259) #9
  %270 = fmul float %269, 2.000000e+00
  %271 = select i1 %184, float %269, float %270
  %272 = fadd float %267, %15
  %273 = fmul float %268, %272
  %274 = fmul float %14, %273
  %275 = fmul float %186, %271
  %276 = fsub float %274, %275
  %277 = fcmp une float %272, 0.000000e+00
  %278 = fmul float %276, 2.000000e+00
  %279 = fmul float %272, 2.000000e+00
  %280 = select i1 %277, float %272, float %279
  %281 = select i1 %277, float %278, float %276
  %282 = fmul float %268, %280
  %283 = fmul float %186, %282
  %284 = fmul float %14, %271
  %285 = fadd float %284, %283
  %286 = fadd float %285, 5.000000e+00
  %287 = fdiv float 1.000000e+00, %286
  %288 = fmul float %287, 3.000000e+01
  %289 = fmul float %16, %280
  %290 = fmul float %17, %289
  %291 = fmul float %18, %281
  %292 = fadd float %290, %291
  %293 = fmul float %292, %288
  %294 = fadd float %293, %20
  %295 = fptosi float %294 to i32
  %296 = fmul float %287, 1.500000e+01
  %297 = fmul float %18, %289
  %298 = fmul float %17, %281
  %299 = fsub float %297, %298
  %300 = fmul float %299, %296
  %301 = fadd float %300, %23
  %302 = fptosi float %301 to i32
  %303 = fmul float %268, %267
  %304 = fmul float %14, %303
  %305 = fsub float %275, %304
  %306 = fmul float %17, %305
  %307 = fmul float %186, %303
  %308 = fsub float %306, %307
  %309 = fsub float %308, %284
  %310 = fmul float %16, %267
  %311 = fmul float %18, %310
  %312 = fsub float %309, %311
  %313 = fmul float %312, 8.000000e+00
  %314 = fptosi float %313 to i32
  %315 = icmp slt i32 %302, %5
  %316 = icmp sgt i32 %302, 0
  %317 = and i1 %315, %316
  %318 = icmp sgt i32 %295, 0
  %319 = select i1 %317, i1 %318, i1 false
  %320 = icmp slt i32 %295, %6
  %321 = select i1 %319, i1 %320, i1 false
  br i1 %321, label %322, label %336

322:                                              ; preds = %256
  %323 = mul nsw i32 %302, %6
  %324 = add nsw i32 %323, %295
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds float, float* %3, i64 %325
  %327 = load float, float* %326, align 4, !tbaa !13
  %328 = fcmp ogt float %287, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %322
  store float %287, float* %326, align 4, !tbaa !13
  %330 = icmp sgt i32 %314, 0
  %331 = select i1 %330, i32 %314, i32 0
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %332
  %334 = load i8, i8* %333, align 1, !tbaa !10
  %335 = getelementptr inbounds i8, i8* %4, i64 %325
  store i8 %334, i8* %335, align 1, !tbaa !10
  br label %336

336:                                              ; preds = %329, %322, %256
  %337 = fadd double %257, 7.000000e-02
  %338 = fptrunc double %337 to float
  %339 = fpext float %338 to double
  %340 = icmp eq i32 %260, 90
  br i1 %340, label %255, label %256, !llvm.loop !21
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
  br label %18

17:                                               ; preds = %18
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %29

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ %30, %18 ], [ 0, %.preheader ]
  %20 = phi i32 [ %29, %18 ], [ 0, %.preheader ]
  %21 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %19
  %22 = load i8, i8* %21, align 1, !tbaa !10
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %20, %23
  %25 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %19
  %26 = load float, float* %25, align 4, !tbaa !13
  %27 = sitofp i32 %24 to float
  %28 = fadd float %26, %27
  %29 = fptosi float %28 to i32
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 1760
  br i1 %31, label %17, label %18, !llvm.loop !23
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

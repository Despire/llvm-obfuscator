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
  br label %16

14:                                               ; preds = %4
  br label %16

15:                                               ; preds = %25
  ret void

16:                                               ; preds = %13, %25, %14
  %17 = phi i64 [ 0, %14 ], [ %36, %25 ], [ 0, %13 ]
  %18 = trunc i64 %17 to i32
  %19 = urem i32 %18, 80
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %0, i64 %17
  %23 = load i8, i8* %22, align 1, !tbaa !10
  %24 = sext i8 %23 to i32
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %24, %21 ], [ 10, %16 ]
  %27 = call i32 @putchar(i32 %26)
  %28 = load float, float* %1, align 4, !tbaa !13
  %29 = fpext float %28 to double
  %30 = fadd double %29, 4.000000e-05
  %31 = fptrunc double %30 to float
  store float %31, float* %1, align 4, !tbaa !13
  %32 = load float, float* %2, align 4, !tbaa !13
  %33 = fpext float %32 to double
  %34 = fadd double %33, 2.000000e-05
  %35 = fptrunc double %34 to float
  store float %35, float* %2, align 4, !tbaa !13
  %36 = add nuw nsw i64 %17, 1
  %37 = icmp eq i64 %36, 1761
  br i1 %37, label %15, label %16, !llvm.loop !15
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
  %92 = and i32 %64, 1
  %93 = icmp eq i32 %92, 1
  %94 = mul i32 %64, %64
  %95 = add i32 %94, %64
  %96 = srem i32 %95, 2
  %97 = icmp eq i32 %96, 0
  %98 = or i1 %93, %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %.preheader1
  br label %157

100:                                              ; preds = %.preheader1
  br label %101

101:                                              ; preds = %100, %169
  %102 = phi double [ %177, %169 ], [ 0.000000e+00, %100 ]
  %103 = phi float [ %176, %169 ], [ 0.000000e+00, %100 ]
  %104 = call fastcc float @_ZL3cosf(float %103) #9
  %105 = call fastcc float @_ZL3sinf(float %103) #9
  %106 = fadd float %104, %15
  %107 = fmul float %12, %106
  %108 = fmul float %14, %107
  %109 = fmul float %13, %105
  %110 = fsub float %108, %109
  %111 = fmul float %13, %107
  %112 = fmul float %14, %105
  %113 = fadd float %112, %111
  %114 = fadd float %113, 5.000000e+00
  %115 = fdiv float 1.000000e+00, %114
  %116 = fmul float %115, 3.000000e+01
  %117 = fmul float %16, %106
  %118 = fmul float %17, %117
  %119 = fmul float %18, %110
  %120 = fadd float %118, %119
  %121 = fmul float %120, %116
  %122 = fadd float %121, %20
  %123 = fptosi float %122 to i32
  %124 = fmul float %115, 1.500000e+01
  %125 = fmul float %18, %117
  %126 = fmul float %17, %110
  %127 = fsub float %125, %126
  %128 = fmul float %127, %124
  %129 = fadd float %128, %23
  %130 = fptosi float %129 to i32
  %131 = fmul float %12, %104
  %132 = fmul float %14, %131
  %133 = fsub float %109, %132
  %134 = fmul float %17, %133
  %135 = fmul float %13, %131
  %136 = fsub float %134, %135
  %137 = fsub float %136, %112
  %138 = fmul float %16, %104
  %139 = fmul float %18, %138
  %140 = fsub float %137, %139
  %141 = fmul float %140, 8.000000e+00
  %142 = fptosi float %141 to i32
  %143 = icmp slt i32 %130, %5
  %144 = icmp sgt i32 %130, 0
  %145 = and i1 %143, %144
  %146 = icmp sgt i32 %123, 0
  %147 = select i1 %145, i1 %146, i1 false
  %148 = icmp slt i32 %123, %6
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %169

150:                                              ; preds = %101
  %151 = mul nsw i32 %130, %6
  %152 = add nsw i32 %151, %123
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %3, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !13
  %156 = fcmp ogt float %115, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %99, %150
  %158 = phi float* [ %154, %150 ], [ null, %99 ]
  %159 = phi float [ %115, %150 ], [ 0.000000e+00, %99 ]
  %160 = phi double [ %102, %150 ], [ 0.000000e+00, %99 ]
  %161 = phi i32 [ %142, %150 ], [ 0, %99 ]
  %162 = phi i64 [ %153, %150 ], [ 0, %99 ]
  store float %159, float* %158, align 4, !tbaa !13
  %163 = icmp sgt i32 %161, 0
  %164 = select i1 %163, i32 %161, i32 0
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1, !tbaa !10
  %168 = getelementptr inbounds i8, i8* %4, i64 %162
  store i8 %167, i8* %168, align 1, !tbaa !10
  br label %169

169:                                              ; preds = %157, %150, %101
  %170 = phi float* [ %154, %150 ], [ %158, %157 ], [ null, %101 ]
  %171 = phi float [ %115, %101 ], [ %115, %150 ], [ %159, %157 ]
  %172 = phi double [ %102, %101 ], [ %102, %150 ], [ %160, %157 ]
  %173 = phi i32 [ %142, %101 ], [ %142, %150 ], [ %161, %157 ]
  %174 = phi i64 [ %153, %150 ], [ %162, %157 ], [ 0, %101 ]
  %175 = fadd double %172, 7.000000e-02
  %176 = fptrunc double %175 to float
  %177 = fpext float %176 to double
  %178 = fcmp olt double %177, 6.280000e+00
  br i1 %178, label %101, label %.preheader, !llvm.loop !19

.preheader:                                       ; preds = %169
  br label %183

179:                                              ; preds = %246
  %180 = fcmp une float %13, 0.000000e+00
  %181 = fmul float %13, 2.000000e+00
  %182 = select i1 %180, float %181, float %13
  br label %252

183:                                              ; preds = %.preheader, %246
  %184 = phi double [ %249, %246 ], [ 0.000000e+00, %.preheader ]
  %185 = phi float [ %248, %246 ], [ 0.000000e+00, %.preheader ]
  %186 = call fastcc float @_ZL3cosf(float %185) #9
  %187 = call fastcc float @_ZL3sinf(float %185) #9
  %188 = fadd float %186, %15
  %189 = fmul float %12, %188
  %190 = fmul float %14, %189
  %191 = fmul float %13, %187
  %192 = fsub float %190, %191
  %193 = fmul float %13, %189
  %194 = fmul float %14, %187
  %195 = fadd float %194, %193
  %196 = fadd float %195, 5.000000e+00
  %197 = fdiv float 1.000000e+00, %196
  %198 = fmul float %197, 3.000000e+01
  %199 = fmul float %16, %188
  %200 = fmul float %17, %199
  %201 = fmul float %18, %192
  %202 = fadd float %200, %201
  %203 = fmul float %202, %198
  %204 = fadd float %203, %20
  %205 = fptosi float %204 to i32
  %206 = fmul float %197, 1.500000e+01
  %207 = fmul float %18, %199
  %208 = fmul float %17, %192
  %209 = fsub float %207, %208
  %210 = fmul float %209, %206
  %211 = fadd float %210, %23
  %212 = fptosi float %211 to i32
  %213 = fmul float %12, %186
  %214 = fmul float %14, %213
  %215 = fsub float %191, %214
  %216 = fmul float %17, %215
  %217 = fmul float %13, %213
  %218 = fsub float %216, %217
  %219 = fsub float %218, %194
  %220 = fmul float %16, %186
  %221 = fmul float %18, %220
  %222 = fsub float %219, %221
  %223 = fmul float %222, 8.000000e+00
  %224 = fptosi float %223 to i32
  %225 = icmp slt i32 %212, %5
  %226 = icmp sgt i32 %212, 0
  %227 = and i1 %225, %226
  %228 = icmp sgt i32 %205, 0
  %229 = select i1 %227, i1 %228, i1 false
  %230 = icmp slt i32 %205, %6
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %232, label %246

232:                                              ; preds = %183
  %233 = mul nsw i32 %212, %6
  %234 = add nsw i32 %233, %205
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %3, i64 %235
  %237 = load float, float* %236, align 4, !tbaa !13
  %238 = fcmp ogt float %197, %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %232
  store float %197, float* %236, align 4, !tbaa !13
  %240 = icmp sgt i32 %224, 0
  %241 = select i1 %240, i32 %224, i32 0
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %242
  %244 = load i8, i8* %243, align 1, !tbaa !10
  %245 = getelementptr inbounds i8, i8* %4, i64 %235
  store i8 %244, i8* %245, align 1, !tbaa !10
  br label %246

246:                                              ; preds = %239, %232, %183
  %247 = fadd double %184, 7.000000e-02
  %248 = fptrunc double %247 to float
  %249 = fpext float %248 to double
  %250 = fcmp olt double %249, 6.280000e+00
  br i1 %250, label %183, label %179, !llvm.loop !20

251:                                              ; preds = %332
  ret void

252:                                              ; preds = %332, %179
  %253 = phi double [ 0.000000e+00, %179 ], [ %335, %332 ]
  %254 = phi i32 [ 0, %179 ], [ %256, %332 ]
  %255 = phi float [ 0.000000e+00, %179 ], [ %334, %332 ]
  %256 = add nuw nsw i32 %254, 1
  %257 = sitofp i32 %254 to float
  %258 = fadd float %12, %257
  %259 = call fastcc float @_ZL3cosf(float %255) #9
  %260 = fcmp une float %258, 0.000000e+00
  %261 = fmul float %258, 2.000000e+00
  %262 = fmul float %259, 2.000000e+00
  %263 = select i1 %260, float %259, float %262
  %264 = select i1 %260, float %261, float %258
  %265 = call fastcc float @_ZL3sinf(float %255) #9
  %266 = fmul float %265, 2.000000e+00
  %267 = select i1 %180, float %265, float %266
  %268 = fadd float %263, %15
  %269 = fmul float %264, %268
  %270 = fmul float %14, %269
  %271 = fmul float %182, %267
  %272 = fsub float %270, %271
  %273 = fcmp une float %268, 0.000000e+00
  %274 = fmul float %272, 2.000000e+00
  %275 = fmul float %268, 2.000000e+00
  %276 = select i1 %273, float %268, float %275
  %277 = select i1 %273, float %274, float %272
  %278 = fmul float %264, %276
  %279 = fmul float %182, %278
  %280 = fmul float %14, %267
  %281 = fadd float %280, %279
  %282 = fadd float %281, 5.000000e+00
  %283 = fdiv float 1.000000e+00, %282
  %284 = fmul float %283, 3.000000e+01
  %285 = fmul float %16, %276
  %286 = fmul float %17, %285
  %287 = fmul float %18, %277
  %288 = fadd float %286, %287
  %289 = fmul float %288, %284
  %290 = fadd float %289, %20
  %291 = fptosi float %290 to i32
  %292 = fmul float %283, 1.500000e+01
  %293 = fmul float %18, %285
  %294 = fmul float %17, %277
  %295 = fsub float %293, %294
  %296 = fmul float %295, %292
  %297 = fadd float %296, %23
  %298 = fptosi float %297 to i32
  %299 = fmul float %264, %263
  %300 = fmul float %14, %299
  %301 = fsub float %271, %300
  %302 = fmul float %17, %301
  %303 = fmul float %182, %299
  %304 = fsub float %302, %303
  %305 = fsub float %304, %280
  %306 = fmul float %16, %263
  %307 = fmul float %18, %306
  %308 = fsub float %305, %307
  %309 = fmul float %308, 8.000000e+00
  %310 = fptosi float %309 to i32
  %311 = icmp slt i32 %298, %5
  %312 = icmp sgt i32 %298, 0
  %313 = and i1 %311, %312
  %314 = icmp sgt i32 %291, 0
  %315 = select i1 %313, i1 %314, i1 false
  %316 = icmp slt i32 %291, %6
  %317 = select i1 %315, i1 %316, i1 false
  br i1 %317, label %318, label %332

318:                                              ; preds = %252
  %319 = mul nsw i32 %298, %6
  %320 = add nsw i32 %319, %291
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %3, i64 %321
  %323 = load float, float* %322, align 4, !tbaa !13
  %324 = fcmp ogt float %283, %323
  br i1 %324, label %325, label %332

325:                                              ; preds = %318
  store float %283, float* %322, align 4, !tbaa !13
  %326 = icmp sgt i32 %310, 0
  %327 = select i1 %326, i32 %310, i32 0
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %328
  %330 = load i8, i8* %329, align 1, !tbaa !10
  %331 = getelementptr inbounds i8, i8* %4, i64 %321
  store i8 %330, i8* %331, align 1, !tbaa !10
  br label %332

332:                                              ; preds = %325, %318, %252
  %333 = fadd double %253, 7.000000e-02
  %334 = fptrunc double %333 to float
  %335 = fpext float %334 to double
  %336 = icmp eq i32 %256, 90
  br i1 %336, label %251, label %252, !llvm.loop !21
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

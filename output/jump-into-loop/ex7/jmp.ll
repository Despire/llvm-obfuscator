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
  %6 = mul i32 %3, 2
  %7 = mul i32 %3, 2
  %8 = add i32 2, %7
  %9 = mul i32 %6, %8
  %10 = srem i32 %9, 4
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %3, %3
  %13 = add i32 %12, %3
  %14 = srem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %11, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %25

18:                                               ; preds = %4
  br label %20

19:                                               ; preds = %30
  ret void

20:                                               ; preds = %30, %18
  %21 = phi i64 [ 0, %18 ], [ %42, %30 ]
  %22 = trunc i64 %21 to i32
  %23 = urem i32 %22, 80
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17, %20
  %26 = phi i64 [ %21, %20 ], [ 0, %17 ]
  %27 = getelementptr inbounds i8, i8* %0, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !10
  %29 = sext i8 %28 to i32
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %29, %25 ], [ 10, %20 ]
  %32 = phi i64 [ %21, %20 ], [ %26, %25 ]
  %33 = call i32 @putchar(i32 %31)
  %34 = load float, float* %1, align 4, !tbaa !13
  %35 = fpext float %34 to double
  %36 = fadd double %35, 4.000000e-05
  %37 = fptrunc double %36 to float
  store float %37, float* %1, align 4, !tbaa !13
  %38 = load float, float* %2, align 4, !tbaa !13
  %39 = fpext float %38 to double
  %40 = fadd double %39, 2.000000e-05
  %41 = fptrunc double %40 to float
  store float %41, float* %2, align 4, !tbaa !13
  %42 = add nuw nsw i64 %32, 1
  %43 = icmp eq i64 %42, 1761
  br i1 %43, label %19, label %20, !llvm.loop !15
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
  br label %178

160:                                              ; preds = %241
  %161 = fcmp une float %13, 0.000000e+00
  %162 = fmul float %13, 2.000000e+00
  %163 = select i1 %161, float %162, float %13
  %164 = mul i64 %9, 2
  %165 = mul i64 %9, 2
  %166 = add i64 2, %165
  %167 = mul i64 %164, %166
  %168 = srem i64 %167, 4
  %169 = icmp eq i64 %168, 0
  %170 = mul i64 %9, %9
  %171 = mul i64 %170, %9
  %172 = add i64 %171, %9
  %173 = srem i64 %172, 2
  %174 = icmp eq i64 %173, 0
  %175 = and i1 %169, %174
  br i1 %175, label %177, label %176

176:                                              ; preds = %160
  br label %247

177:                                              ; preds = %160
  br label %247

178:                                              ; preds = %.preheader, %241
  %179 = phi double [ %244, %241 ], [ 0.000000e+00, %.preheader ]
  %180 = phi float [ %243, %241 ], [ 0.000000e+00, %.preheader ]
  %181 = call fastcc float @_ZL3cosf(float %180) #9
  %182 = call fastcc float @_ZL3sinf(float %180) #9
  %183 = fadd float %181, %15
  %184 = fmul float %12, %183
  %185 = fmul float %14, %184
  %186 = fmul float %13, %182
  %187 = fsub float %185, %186
  %188 = fmul float %13, %184
  %189 = fmul float %14, %182
  %190 = fadd float %189, %188
  %191 = fadd float %190, 5.000000e+00
  %192 = fdiv float 1.000000e+00, %191
  %193 = fmul float %192, 3.000000e+01
  %194 = fmul float %16, %183
  %195 = fmul float %17, %194
  %196 = fmul float %18, %187
  %197 = fadd float %195, %196
  %198 = fmul float %197, %193
  %199 = fadd float %198, %20
  %200 = fptosi float %199 to i32
  %201 = fmul float %192, 1.500000e+01
  %202 = fmul float %18, %194
  %203 = fmul float %17, %187
  %204 = fsub float %202, %203
  %205 = fmul float %204, %201
  %206 = fadd float %205, %23
  %207 = fptosi float %206 to i32
  %208 = fmul float %12, %181
  %209 = fmul float %14, %208
  %210 = fsub float %186, %209
  %211 = fmul float %17, %210
  %212 = fmul float %13, %208
  %213 = fsub float %211, %212
  %214 = fsub float %213, %189
  %215 = fmul float %16, %181
  %216 = fmul float %18, %215
  %217 = fsub float %214, %216
  %218 = fmul float %217, 8.000000e+00
  %219 = fptosi float %218 to i32
  %220 = icmp slt i32 %207, %5
  %221 = icmp sgt i32 %207, 0
  %222 = and i1 %220, %221
  %223 = icmp sgt i32 %200, 0
  %224 = select i1 %222, i1 %223, i1 false
  %225 = icmp slt i32 %200, %6
  %226 = select i1 %224, i1 %225, i1 false
  br i1 %226, label %227, label %241

227:                                              ; preds = %178
  %228 = mul nsw i32 %207, %6
  %229 = add nsw i32 %228, %200
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %3, i64 %230
  %232 = load float, float* %231, align 4, !tbaa !13
  %233 = fcmp ogt float %192, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %227
  store float %192, float* %231, align 4, !tbaa !13
  %235 = icmp sgt i32 %219, 0
  %236 = select i1 %235, i32 %219, i32 0
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %237
  %239 = load i8, i8* %238, align 1, !tbaa !10
  %240 = getelementptr inbounds i8, i8* %4, i64 %230
  store i8 %239, i8* %240, align 1, !tbaa !10
  br label %241

241:                                              ; preds = %234, %227, %178
  %242 = fadd double %179, 7.000000e-02
  %243 = fptrunc double %242 to float
  %244 = fpext float %243 to double
  %245 = fcmp olt double %244, 6.280000e+00
  br i1 %245, label %178, label %160, !llvm.loop !20

246:                                              ; preds = %327
  ret void

247:                                              ; preds = %176, %327, %177
  %248 = phi double [ 0.000000e+00, %177 ], [ %330, %327 ], [ 0.000000e+00, %176 ]
  %249 = phi i32 [ 0, %177 ], [ %251, %327 ], [ 0, %176 ]
  %250 = phi float [ 0.000000e+00, %177 ], [ %329, %327 ], [ 0.000000e+00, %176 ]
  %251 = add nuw nsw i32 %249, 1
  %252 = sitofp i32 %249 to float
  %253 = fadd float %12, %252
  %254 = call fastcc float @_ZL3cosf(float %250) #9
  %255 = fcmp une float %253, 0.000000e+00
  %256 = fmul float %253, 2.000000e+00
  %257 = fmul float %254, 2.000000e+00
  %258 = select i1 %255, float %254, float %257
  %259 = select i1 %255, float %256, float %253
  %260 = call fastcc float @_ZL3sinf(float %250) #9
  %261 = fmul float %260, 2.000000e+00
  %262 = select i1 %161, float %260, float %261
  %263 = fadd float %258, %15
  %264 = fmul float %259, %263
  %265 = fmul float %14, %264
  %266 = fmul float %163, %262
  %267 = fsub float %265, %266
  %268 = fcmp une float %263, 0.000000e+00
  %269 = fmul float %267, 2.000000e+00
  %270 = fmul float %263, 2.000000e+00
  %271 = select i1 %268, float %263, float %270
  %272 = select i1 %268, float %269, float %267
  %273 = fmul float %259, %271
  %274 = fmul float %163, %273
  %275 = fmul float %14, %262
  %276 = fadd float %275, %274
  %277 = fadd float %276, 5.000000e+00
  %278 = fdiv float 1.000000e+00, %277
  %279 = fmul float %278, 3.000000e+01
  %280 = fmul float %16, %271
  %281 = fmul float %17, %280
  %282 = fmul float %18, %272
  %283 = fadd float %281, %282
  %284 = fmul float %283, %279
  %285 = fadd float %284, %20
  %286 = fptosi float %285 to i32
  %287 = fmul float %278, 1.500000e+01
  %288 = fmul float %18, %280
  %289 = fmul float %17, %272
  %290 = fsub float %288, %289
  %291 = fmul float %290, %287
  %292 = fadd float %291, %23
  %293 = fptosi float %292 to i32
  %294 = fmul float %259, %258
  %295 = fmul float %14, %294
  %296 = fsub float %266, %295
  %297 = fmul float %17, %296
  %298 = fmul float %163, %294
  %299 = fsub float %297, %298
  %300 = fsub float %299, %275
  %301 = fmul float %16, %258
  %302 = fmul float %18, %301
  %303 = fsub float %300, %302
  %304 = fmul float %303, 8.000000e+00
  %305 = fptosi float %304 to i32
  %306 = icmp slt i32 %293, %5
  %307 = icmp sgt i32 %293, 0
  %308 = and i1 %306, %307
  %309 = icmp sgt i32 %286, 0
  %310 = select i1 %308, i1 %309, i1 false
  %311 = icmp slt i32 %286, %6
  %312 = select i1 %310, i1 %311, i1 false
  br i1 %312, label %313, label %327

313:                                              ; preds = %247
  %314 = mul nsw i32 %293, %6
  %315 = add nsw i32 %314, %286
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %3, i64 %316
  %318 = load float, float* %317, align 4, !tbaa !13
  %319 = fcmp ogt float %278, %318
  br i1 %319, label %320, label %327

320:                                              ; preds = %313
  store float %278, float* %317, align 4, !tbaa !13
  %321 = icmp sgt i32 %305, 0
  %322 = select i1 %321, i32 %305, i32 0
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %323
  %325 = load i8, i8* %324, align 1, !tbaa !10
  %326 = getelementptr inbounds i8, i8* %4, i64 %316
  store i8 %325, i8* %326, align 1, !tbaa !10
  br label %327

327:                                              ; preds = %320, %313, %247
  %328 = fadd double %248, 7.000000e-02
  %329 = fptrunc double %328 to float
  %330 = fpext float %329 to double
  %331 = icmp eq i32 %251, 90
  br i1 %331, label %246, label %247, !llvm.loop !21
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
  %17 = and i32 %12, 1
  %18 = icmp eq i32 %17, 1
  %19 = mul i32 %12, %12
  %20 = add i32 %19, %12
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %18, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %.preheader
  br label %27

25:                                               ; preds = %.preheader
  br label %27

26:                                               ; preds = %27
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %38

27:                                               ; preds = %24, %25, %27
  %28 = phi i64 [ %39, %27 ], [ 0, %25 ], [ 0, %24 ]
  %29 = phi i32 [ %38, %27 ], [ 0, %25 ], [ 0, %24 ]
  %30 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %28
  %31 = load i8, i8* %30, align 1, !tbaa !10
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 %29, %32
  %34 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %28
  %35 = load float, float* %34, align 4, !tbaa !13
  %36 = sitofp i32 %33 to float
  %37 = fadd float %35, %36
  %38 = fptosi float %37 to i32
  %39 = add nuw nsw i64 %28, 1
  %40 = icmp eq i64 %39, 1760
  br i1 %40, label %26, label %27, !llvm.loop !23
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

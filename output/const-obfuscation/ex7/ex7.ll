; ModuleID = 'input/const-obfuscation/ex7/ex7.cpp'
source_filename = "input/const-obfuscation/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %7

6:                                                ; preds = %16
  ret void

7:                                                ; preds = %4, %16
  %8 = phi i64 [ 0, %4 ], [ %27, %16 ]
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 80
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %0, i64 %8
  %14 = load i8, i8* %13, align 1, !tbaa !10
  %15 = sext i8 %14 to i32
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi i32 [ %15, %12 ], [ 10, %7 ]
  %18 = call i32 @putchar(i32 %17)
  %19 = load float, float* %1, align 4, !tbaa !13
  %20 = fpext float %19 to double
  %21 = fadd double %20, 4.000000e-05
  %22 = fptrunc double %21 to float
  store float %22, float* %1, align 4, !tbaa !13
  %23 = load float, float* %2, align 4, !tbaa !13
  %24 = fpext float %23 to double
  %25 = fadd double %24, 2.000000e-05
  %26 = fptrunc double %25 to float
  store float %26, float* %2, align 4, !tbaa !13
  %27 = add nuw nsw i64 %8, 1
  %28 = icmp eq i64 %27, 1761
  br i1 %28, label %6, label %7, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
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
  br i1 %91, label %24, label %92, !llvm.loop !18

92:                                               ; preds = %86, %155
  %93 = phi double [ %158, %155 ], [ 0.000000e+00, %86 ]
  %94 = phi float [ %157, %155 ], [ 0.000000e+00, %86 ]
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
  br i1 %159, label %92, label %164, !llvm.loop !19

160:                                              ; preds = %227
  %161 = fcmp une float %13, 0.000000e+00
  %162 = fmul float %13, 2.000000e+00
  %163 = select i1 %161, float %162, float %13
  br label %233

164:                                              ; preds = %155, %227
  %165 = phi double [ %230, %227 ], [ 0.000000e+00, %155 ]
  %166 = phi float [ %229, %227 ], [ 0.000000e+00, %155 ]
  %167 = call fastcc float @_ZL3cosf(float %166) #9
  %168 = call fastcc float @_ZL3sinf(float %166) #9
  %169 = fadd float %167, %15
  %170 = fmul float %12, %169
  %171 = fmul float %14, %170
  %172 = fmul float %13, %168
  %173 = fsub float %171, %172
  %174 = fmul float %13, %170
  %175 = fmul float %14, %168
  %176 = fadd float %175, %174
  %177 = fadd float %176, 5.000000e+00
  %178 = fdiv float 1.000000e+00, %177
  %179 = fmul float %178, 3.000000e+01
  %180 = fmul float %16, %169
  %181 = fmul float %17, %180
  %182 = fmul float %18, %173
  %183 = fadd float %181, %182
  %184 = fmul float %183, %179
  %185 = fadd float %184, %20
  %186 = fptosi float %185 to i32
  %187 = fmul float %178, 1.500000e+01
  %188 = fmul float %18, %180
  %189 = fmul float %17, %173
  %190 = fsub float %188, %189
  %191 = fmul float %190, %187
  %192 = fadd float %191, %23
  %193 = fptosi float %192 to i32
  %194 = fmul float %12, %167
  %195 = fmul float %14, %194
  %196 = fsub float %172, %195
  %197 = fmul float %17, %196
  %198 = fmul float %13, %194
  %199 = fsub float %197, %198
  %200 = fsub float %199, %175
  %201 = fmul float %16, %167
  %202 = fmul float %18, %201
  %203 = fsub float %200, %202
  %204 = fmul float %203, 8.000000e+00
  %205 = fptosi float %204 to i32
  %206 = icmp slt i32 %193, %5
  %207 = icmp sgt i32 %193, 0
  %208 = and i1 %206, %207
  %209 = icmp sgt i32 %186, 0
  %210 = select i1 %208, i1 %209, i1 false
  %211 = icmp slt i32 %186, %6
  %212 = select i1 %210, i1 %211, i1 false
  br i1 %212, label %213, label %227

213:                                              ; preds = %164
  %214 = mul nsw i32 %193, %6
  %215 = add nsw i32 %214, %186
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %3, i64 %216
  %218 = load float, float* %217, align 4, !tbaa !13
  %219 = fcmp ogt float %178, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %213
  store float %178, float* %217, align 4, !tbaa !13
  %221 = icmp sgt i32 %205, 0
  %222 = select i1 %221, i32 %205, i32 0
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %223
  %225 = load i8, i8* %224, align 1, !tbaa !10
  %226 = getelementptr inbounds i8, i8* %4, i64 %216
  store i8 %225, i8* %226, align 1, !tbaa !10
  br label %227

227:                                              ; preds = %220, %213, %164
  %228 = fadd double %165, 7.000000e-02
  %229 = fptrunc double %228 to float
  %230 = fpext float %229 to double
  %231 = fcmp olt double %230, 6.280000e+00
  br i1 %231, label %164, label %160, !llvm.loop !20

232:                                              ; preds = %313
  ret void

233:                                              ; preds = %160, %313
  %234 = phi double [ 0.000000e+00, %160 ], [ %316, %313 ]
  %235 = phi i32 [ 0, %160 ], [ %237, %313 ]
  %236 = phi float [ 0.000000e+00, %160 ], [ %315, %313 ]
  %237 = add nuw nsw i32 %235, 1
  %238 = sitofp i32 %235 to float
  %239 = fadd float %12, %238
  %240 = call fastcc float @_ZL3cosf(float %236) #9
  %241 = fcmp une float %239, 0.000000e+00
  %242 = fmul float %239, 2.000000e+00
  %243 = fmul float %240, 2.000000e+00
  %244 = select i1 %241, float %240, float %243
  %245 = select i1 %241, float %242, float %239
  %246 = call fastcc float @_ZL3sinf(float %236) #9
  %247 = fmul float %246, 2.000000e+00
  %248 = select i1 %161, float %246, float %247
  %249 = fadd float %244, %15
  %250 = fmul float %245, %249
  %251 = fmul float %14, %250
  %252 = fmul float %163, %248
  %253 = fsub float %251, %252
  %254 = fcmp une float %249, 0.000000e+00
  %255 = fmul float %253, 2.000000e+00
  %256 = fmul float %249, 2.000000e+00
  %257 = select i1 %254, float %249, float %256
  %258 = select i1 %254, float %255, float %253
  %259 = fmul float %245, %257
  %260 = fmul float %163, %259
  %261 = fmul float %14, %248
  %262 = fadd float %261, %260
  %263 = fadd float %262, 5.000000e+00
  %264 = fdiv float 1.000000e+00, %263
  %265 = fmul float %264, 3.000000e+01
  %266 = fmul float %16, %257
  %267 = fmul float %17, %266
  %268 = fmul float %18, %258
  %269 = fadd float %267, %268
  %270 = fmul float %269, %265
  %271 = fadd float %270, %20
  %272 = fptosi float %271 to i32
  %273 = fmul float %264, 1.500000e+01
  %274 = fmul float %18, %266
  %275 = fmul float %17, %258
  %276 = fsub float %274, %275
  %277 = fmul float %276, %273
  %278 = fadd float %277, %23
  %279 = fptosi float %278 to i32
  %280 = fmul float %245, %244
  %281 = fmul float %14, %280
  %282 = fsub float %252, %281
  %283 = fmul float %17, %282
  %284 = fmul float %163, %280
  %285 = fsub float %283, %284
  %286 = fsub float %285, %261
  %287 = fmul float %16, %244
  %288 = fmul float %18, %287
  %289 = fsub float %286, %288
  %290 = fmul float %289, 8.000000e+00
  %291 = fptosi float %290 to i32
  %292 = icmp slt i32 %279, %5
  %293 = icmp sgt i32 %279, 0
  %294 = and i1 %292, %293
  %295 = icmp sgt i32 %272, 0
  %296 = select i1 %294, i1 %295, i1 false
  %297 = icmp slt i32 %272, %6
  %298 = select i1 %296, i1 %297, i1 false
  br i1 %298, label %299, label %313

299:                                              ; preds = %233
  %300 = mul nsw i32 %279, %6
  %301 = add nsw i32 %300, %272
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, float* %3, i64 %302
  %304 = load float, float* %303, align 4, !tbaa !13
  %305 = fcmp ogt float %264, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %299
  store float %264, float* %303, align 4, !tbaa !13
  %307 = icmp sgt i32 %291, 0
  %308 = select i1 %307, i32 %291, i32 0
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %309
  %311 = load i8, i8* %310, align 1, !tbaa !10
  %312 = getelementptr inbounds i8, i8* %4, i64 %302
  store i8 %311, i8* %312, align 1, !tbaa !10
  br label %313

313:                                              ; preds = %306, %299, %233
  %314 = fadd double %234, 7.000000e-02
  %315 = fptrunc double %314 to float
  %316 = fpext float %315 to double
  %317 = icmp eq i32 %237, 90
  br i1 %317, label %232, label %233, !llvm.loop !21
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp uwtable willreturn
define internal fastcc float @_ZL3sinf(float %0) unnamed_addr #5 {
  %2 = call float @llvm.sin.f32(float %0)
  ret float %2
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp uwtable willreturn
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

11:                                               ; preds = %0, %11
  %12 = phi i32 [ 5, %0 ], [ %15, %11 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %18, label %11, !llvm.loop !22

17:                                               ; preds = %18
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %29

18:                                               ; preds = %11, %18
  %19 = phi i64 [ %30, %18 ], [ 0, %11 ]
  %20 = phi i32 [ %29, %18 ], [ 0, %11 ]
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

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #8

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #8

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
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

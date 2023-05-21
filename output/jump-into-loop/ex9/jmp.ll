; ModuleID = 'output/jump-into-loop/ex9/ex9.ll'
source_filename = "input/jump-into-loop/ex9/ex9.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = mul i32 %3, %3
  %7 = add i32 %6, %3
  %8 = mul i32 %7, 3
  %9 = srem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = mul i32 %3, %3
  %12 = add i32 %11, %3
  %13 = srem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %10, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %35

17:                                               ; preds = %4
  br label %19

18:                                               ; preds = %68
  ret void

19:                                               ; preds = %35, %68, %17
  %20 = phi i64 [ 0, %17 ], [ %79, %68 ], [ 0, %35 ]
  %21 = trunc i64 %20 to i32
  %22 = urem i32 %21, 80
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %19
  %25 = mul i32 %21, %21
  %26 = add i32 %25, %21
  %27 = mul i32 %26, 3
  %28 = srem i32 %27, 2
  %29 = icmp eq i32 %28, 0
  %30 = mul i32 %21, %21
  %31 = add i32 %30, %21
  %32 = srem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = and i1 %29, %33
  br i1 %34, label %64, label %35

35:                                               ; preds = %16, %35, %24
  %36 = add i32 1, 96
  %37 = sdiv i32 32, 103
  %38 = mul i32 38, 57
  %39 = sdiv i32 29, 99
  %40 = mul i32 118, 27
  %41 = sdiv i32 66, 104
  %42 = sub i32 65, 49
  %43 = sdiv i32 %37, 99
  %44 = add i32 %36, 71
  %45 = mul i32 %39, 110
  %46 = mul i32 %38, 59
  %47 = add i32 %36, 85
  %48 = sdiv i32 %41, 48
  %49 = sub i32 %37, 44
  %50 = add i32 0, %43
  %51 = add i32 %50, %44
  %52 = add i32 %51, %45
  %53 = add i32 %52, %46
  %54 = add i32 %53, %47
  %55 = add i32 %54, %48
  %56 = add i32 %55, %49
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 1
  %59 = mul i32 %56, %56
  %60 = add i32 %59, %56
  %61 = srem i32 %60, 2
  %62 = icmp eq i32 %61, 0
  %63 = or i1 %58, %62
  br i1 %63, label %19, label %35

64:                                               ; preds = %24
  %65 = getelementptr inbounds i8, i8* %0, i64 %20
  %66 = load i8, i8* %65, align 1, !tbaa !10
  %67 = sext i8 %66 to i32
  br label %68

68:                                               ; preds = %64, %19
  %69 = phi i32 [ %67, %64 ], [ 10, %19 ]
  %70 = call i32 @putchar(i32 %69)
  %71 = load float, float* %1, align 4, !tbaa !13
  %72 = fpext float %71 to double
  %73 = fadd double %72, 4.000000e-05
  %74 = fptrunc double %73 to float
  store float %74, float* %1, align 4, !tbaa !13
  %75 = load float, float* %2, align 4, !tbaa !13
  %76 = fpext float %75 to double
  %77 = fadd double %76, 2.000000e-05
  %78 = fptrunc double %77 to float
  store float %78, float* %2, align 4, !tbaa !13
  %79 = add nuw nsw i64 %20, 1
  %80 = icmp eq i64 %79, 1761
  br i1 %80, label %18, label %19, !llvm.loop !15
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
  %12 = sitofp i32 %8 to float
  %13 = sdiv i32 %6, 2
  %14 = sitofp i32 %13 to float
  %15 = sdiv i32 %5, 2
  %16 = add nsw i32 %15, 1
  %17 = sitofp i32 %16 to float
  %18 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %19 = call fastcc float @_ZL3cosf(float %1) #9
  %20 = call fastcc float @_ZL3sinf(float %1) #9
  br label %42

21:                                               ; preds = %147
  %22 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %23 = call fastcc float @_ZL3sinf(float %0) #9
  %24 = fcmp une float %23, 0.000000e+00
  %25 = fmul float %23, 2.000000e+00
  %26 = select i1 %24, float %25, float %23
  %27 = call fastcc float @_ZL3cosf(float %0) #9
  %28 = mul i64 %11, 2
  %29 = mul i64 %11, 2
  %30 = add i64 2, %29
  %31 = mul i64 %28, %30
  %32 = srem i64 %31, 4
  %33 = icmp eq i64 %32, 0
  %34 = mul i64 %11, %11
  %35 = mul i64 %34, %11
  %36 = add i64 %35, %11
  %37 = srem i64 %36, 2
  %38 = icmp eq i64 %37, 0
  %39 = and i1 %33, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %21
  br label %236

41:                                               ; preds = %21
  br label %153

42:                                               ; preds = %147, %7
  %43 = phi double [ 0.000000e+00, %7 ], [ %150, %147 ]
  %44 = phi float [ 0.000000e+00, %7 ], [ %149, %147 ]
  %45 = fptosi float %44 to i32
  switch i32 %45, label %84 [
    i32 0, label %46
    i32 1, label %48
    i32 2, label %51
    i32 3, label %55
    i32 4, label %60
    i32 5, label %66
    i32 6, label %73
  ]

46:                                               ; preds = %42
  %47 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi float [ 0.000000e+00, %42 ], [ %47, %46 ]
  %50 = call fastcc float @_ZL3cosf(float %44) #9
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi float [ 0.000000e+00, %42 ], [ %50, %48 ]
  %53 = phi float [ 0.000000e+00, %42 ], [ %49, %48 ]
  %54 = call fastcc float @_ZL3sinf(float %0) #9
  br label %55

55:                                               ; preds = %51, %42
  %56 = phi float [ 0.000000e+00, %42 ], [ %54, %51 ]
  %57 = phi float [ 0.000000e+00, %42 ], [ %52, %51 ]
  %58 = phi float [ 0.000000e+00, %42 ], [ %53, %51 ]
  %59 = call fastcc float @_ZL3sinf(float %44) #9
  br label %60

60:                                               ; preds = %55, %42
  %61 = phi float [ 0.000000e+00, %42 ], [ %59, %55 ]
  %62 = phi float [ 0.000000e+00, %42 ], [ %56, %55 ]
  %63 = phi float [ 0.000000e+00, %42 ], [ %57, %55 ]
  %64 = phi float [ 0.000000e+00, %42 ], [ %58, %55 ]
  %65 = call fastcc float @_ZL3cosf(float %0) #9
  br label %66

66:                                               ; preds = %60, %42
  %67 = phi float [ 0.000000e+00, %42 ], [ %65, %60 ]
  %68 = phi float [ 0.000000e+00, %42 ], [ %61, %60 ]
  %69 = phi float [ 0.000000e+00, %42 ], [ %62, %60 ]
  %70 = phi float [ 0.000000e+00, %42 ], [ %63, %60 ]
  %71 = phi float [ 0.000000e+00, %42 ], [ %64, %60 ]
  %72 = fadd float %70, %12
  br label %73

73:                                               ; preds = %66, %42
  %74 = phi float [ 0.000000e+00, %42 ], [ %72, %66 ]
  %75 = phi float [ 0.000000e+00, %42 ], [ %67, %66 ]
  %76 = phi float [ 0.000000e+00, %42 ], [ %68, %66 ]
  %77 = phi float [ 0.000000e+00, %42 ], [ %69, %66 ]
  %78 = phi float [ 0.000000e+00, %42 ], [ %70, %66 ]
  %79 = phi float [ 0.000000e+00, %42 ], [ %71, %66 ]
  %80 = fmul float %74, %79
  %81 = fmul float %75, %80
  %82 = fmul float %76, %77
  %83 = fsub float %81, %82
  br label %84

84:                                               ; preds = %73, %42
  %85 = phi float [ 0.000000e+00, %42 ], [ %83, %73 ]
  %86 = phi float [ 0.000000e+00, %42 ], [ %74, %73 ]
  %87 = phi float [ 0.000000e+00, %42 ], [ %75, %73 ]
  %88 = phi float [ 0.000000e+00, %42 ], [ %76, %73 ]
  %89 = phi float [ 0.000000e+00, %42 ], [ %77, %73 ]
  %90 = phi float [ 0.000000e+00, %42 ], [ %78, %73 ]
  %91 = phi float [ 0.000000e+00, %42 ], [ %79, %73 ]
  %92 = fmul float %86, %91
  %93 = fmul float %89, %92
  %94 = fmul float %87, %88
  %95 = fadd float %94, %93
  %96 = fadd float %95, 5.000000e+00
  %97 = fdiv float 1.000000e+00, %96
  %98 = fmul float %97, 3.000000e+01
  %99 = fmul float %86, %18
  %100 = fmul float %99, %19
  %101 = fmul float %85, %20
  %102 = fadd float %100, %101
  %103 = fmul float %102, %98
  %104 = fadd float %103, %14
  %105 = fptosi float %104 to i32
  %106 = fmul float %97, 1.500000e+01
  %107 = fmul float %99, %20
  %108 = fmul float %85, %19
  %109 = fsub float %107, %108
  %110 = fmul float %109, %106
  %111 = fadd float %110, %17
  %112 = fptosi float %111 to i32
  %113 = fmul float %88, %89
  %114 = fmul float %90, %91
  %115 = fmul float %87, %114
  %116 = fsub float %113, %115
  %117 = fmul float %19, %116
  %118 = fmul float %89, %114
  %119 = fsub float %117, %118
  %120 = fsub float %119, %94
  %121 = fmul float %90, %18
  %122 = fmul float %121, %20
  %123 = fsub float %120, %122
  %124 = fmul float %123, 8.000000e+00
  %125 = fptosi float %124 to i32
  %126 = icmp slt i32 %112, %5
  %127 = icmp sgt i32 %112, 0
  %128 = and i1 %126, %127
  %129 = icmp sgt i32 %105, 0
  %130 = select i1 %128, i1 %129, i1 false
  %131 = icmp slt i32 %105, %6
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %147

133:                                              ; preds = %84
  %134 = mul nsw i32 %112, %6
  %135 = add nsw i32 %134, %105
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %3, i64 %136
  %138 = load float, float* %137, align 4, !tbaa !13
  %139 = fcmp ogt float %97, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %133
  store float %97, float* %137, align 4, !tbaa !13
  %141 = icmp sgt i32 %125, 0
  %142 = select i1 %141, i32 %125, i32 0
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1, !tbaa !10
  %146 = getelementptr inbounds i8, i8* %4, i64 %136
  store i8 %145, i8* %146, align 1, !tbaa !10
  br label %147

147:                                              ; preds = %140, %133, %84
  %148 = fadd double %43, 7.000000e-02
  %149 = fptrunc double %148 to float
  %150 = fpext float %149 to double
  %151 = fcmp olt double %150, 6.280000e+00
  br i1 %151, label %42, label %21, !llvm.loop !18

152:                                              ; preds = %278
  ret void

153:                                              ; preds = %236, %278, %41
  %154 = phi double [ 0.000000e+00, %41 ], [ %281, %278 ], [ 0.000000e+00, %236 ]
  %155 = phi i32 [ 0, %41 ], [ %157, %278 ], [ 0, %236 ]
  %156 = phi float [ 0.000000e+00, %41 ], [ %280, %278 ], [ 0.000000e+00, %236 ]
  %157 = add nuw nsw i32 %155, 1
  %158 = sitofp i32 %155 to float
  %159 = fadd float %22, %158
  %160 = call fastcc float @_ZL3cosf(float %156) #9
  %161 = fcmp une float %159, 0.000000e+00
  %162 = fmul float %159, 2.000000e+00
  %163 = fmul float %160, 2.000000e+00
  %164 = select i1 %161, float %162, float %159
  %165 = select i1 %161, float %160, float %163
  %166 = call fastcc float @_ZL3sinf(float %156) #9
  %167 = fmul float %166, 2.000000e+00
  %168 = select i1 %24, float %166, float %167
  %169 = fadd float %165, %12
  %170 = fmul float %164, %169
  %171 = fmul float %27, %170
  %172 = fmul float %26, %168
  %173 = fsub float %171, %172
  %174 = fcmp une float %169, 0.000000e+00
  %175 = fmul float %173, 2.000000e+00
  %176 = fmul float %169, 2.000000e+00
  %177 = select i1 %174, float %169, float %176
  %178 = select i1 %174, float %175, float %173
  %179 = fmul float %164, %177
  %180 = fmul float %26, %179
  %181 = fmul float %27, %168
  %182 = fadd float %181, %180
  %183 = fadd float %182, 5.000000e+00
  %184 = fdiv float 1.000000e+00, %183
  %185 = fmul float %184, 3.000000e+01
  %186 = fmul float %18, %177
  %187 = fmul float %19, %186
  %188 = fmul float %20, %178
  %189 = fadd float %187, %188
  %190 = fmul float %189, %185
  %191 = fadd float %190, %14
  %192 = fptosi float %191 to i32
  %193 = fmul float %184, 1.500000e+01
  %194 = fmul float %186, %20
  %195 = fmul float %19, %178
  %196 = fsub float %194, %195
  %197 = fmul float %196, %193
  %198 = fadd float %197, %17
  %199 = fptosi float %198 to i32
  %200 = fmul float %164, %165
  %201 = fmul float %200, %27
  %202 = fsub float %172, %201
  %203 = fmul float %19, %202
  %204 = fmul float %200, %26
  %205 = fsub float %203, %204
  %206 = fsub float %205, %181
  %207 = fmul float %165, %18
  %208 = fmul float %207, %20
  %209 = fsub float %206, %208
  %210 = fmul float %209, 8.000000e+00
  %211 = fptosi float %210 to i32
  %212 = icmp slt i32 %199, %5
  %213 = icmp sgt i32 %199, 0
  %214 = and i1 %212, %213
  %215 = icmp sgt i32 %192, 0
  %216 = select i1 %214, i1 %215, i1 false
  %217 = icmp slt i32 %192, %6
  %218 = select i1 %216, i1 %217, i1 false
  br i1 %218, label %219, label %278

219:                                              ; preds = %153
  %220 = mul nsw i32 %199, %6
  %221 = add nsw i32 %220, %192
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %3, i64 %222
  %224 = load float, float* %223, align 4, !tbaa !13
  %225 = fcmp ogt float %184, %224
  br i1 %225, label %226, label %278

226:                                              ; preds = %219
  store float %184, float* %223, align 4, !tbaa !13
  %227 = icmp sgt i32 %211, 0
  %228 = and i32 %155, 1
  %229 = icmp eq i32 %228, 0
  %230 = mul i32 %155, %155
  %231 = add i32 %230, %155
  %232 = mul i32 %231, 3
  %233 = srem i32 %232, 2
  %234 = icmp eq i32 %233, 0
  %235 = or i1 %229, %234
  br i1 %235, label %272, label %236

236:                                              ; preds = %40, %236, %226
  %237 = sub i32 79, 42
  %238 = mul i32 51, 86
  %239 = mul i32 73, 44
  %240 = add i32 40, 3
  %241 = mul i32 95, 101
  %242 = mul i32 104, 105
  %243 = add i32 33, 2
  %244 = sub i32 53, 126
  %245 = sub i32 %243, 16
  %246 = sub i32 %244, 90
  %247 = mul i32 %241, 56
  %248 = add i32 %244, 124
  %249 = sdiv i32 %239, 73
  %250 = sdiv i32 %239, 71
  %251 = sub i32 %242, 84
  %252 = sdiv i32 %243, 108
  %253 = add i32 0, %245
  %254 = add i32 %253, %246
  %255 = add i32 %254, %247
  %256 = add i32 %255, %248
  %257 = add i32 %256, %249
  %258 = add i32 %257, %250
  %259 = add i32 %258, %251
  %260 = add i32 %259, %252
  %261 = mul i32 %260, 2
  %262 = mul i32 %260, 2
  %263 = add i32 2, %262
  %264 = mul i32 %261, %263
  %265 = srem i32 %264, 4
  %266 = icmp eq i32 %265, 0
  %267 = mul i32 %260, %260
  %268 = add i32 %267, %260
  %269 = srem i32 %268, 2
  %270 = icmp eq i32 %269, 0
  %271 = and i1 %266, %270
  br i1 %271, label %153, label %236

272:                                              ; preds = %226
  %273 = select i1 %227, i32 %211, i32 0
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %274
  %276 = load i8, i8* %275, align 1, !tbaa !10
  %277 = getelementptr inbounds i8, i8* %4, i64 %222
  store i8 %276, i8* %277, align 1, !tbaa !10
  br label %278

278:                                              ; preds = %272, %219, %153
  %279 = fadd double %154, 7.000000e-02
  %280 = fptrunc double %279 to float
  %281 = fpext float %280 to double
  %282 = icmp eq i32 %157, 90
  br i1 %282, label %152, label %153, !llvm.loop !19
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
  br i1 %16, label %.preheader, label %11, !llvm.loop !20

.preheader:                                       ; preds = %11
  %17 = and i32 %10, 1
  %18 = icmp eq i32 %17, 0
  %19 = mul i32 %10, %10
  %20 = add i32 %19, %10
  %21 = mul i32 %20, 3
  %22 = srem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = or i1 %18, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %.preheader
  br label %38

26:                                               ; preds = %.preheader
  br label %28

27:                                               ; preds = %69
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %78

28:                                               ; preds = %38, %26, %69
  %29 = phi i64 [ %79, %69 ], [ 0, %26 ], [ 0, %38 ]
  %30 = phi i32 [ %78, %69 ], [ 0, %26 ], [ 0, %38 ]
  %31 = and i32 %15, 1
  %32 = icmp eq i32 %31, 1
  %33 = mul i32 %15, %15
  %34 = add i32 %33, %15
  %35 = srem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = or i1 %32, %36
  br i1 %37, label %69, label %38

38:                                               ; preds = %25, %38, %28
  %39 = sdiv i32 115, 50
  %40 = add i32 43, 49
  %41 = mul i32 27, 122
  %42 = sub i32 17, 22
  %43 = sdiv i32 121, 71
  %44 = add i32 124, 68
  %45 = sub i32 5, 76
  %46 = mul i32 25, 43
  %47 = sdiv i32 %44, 109
  %48 = mul i32 %42, 67
  %49 = sdiv i32 %45, 83
  %50 = sdiv i32 %40, 98
  %51 = mul i32 %43, 110
  %52 = sdiv i32 %40, 96
  %53 = sdiv i32 %39, 38
  %54 = add i32 0, %47
  %55 = add i32 %54, %48
  %56 = add i32 %55, %49
  %57 = add i32 %56, %50
  %58 = add i32 %57, %51
  %59 = add i32 %58, %52
  %60 = add i32 %59, %53
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  %63 = mul i32 %60, %60
  %64 = add i32 %63, %60
  %65 = mul i32 %64, 3
  %66 = srem i32 %65, 2
  %67 = icmp eq i32 %66, 0
  %68 = or i1 %62, %67
  br i1 %68, label %28, label %38

69:                                               ; preds = %28
  %70 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %29
  %71 = load i8, i8* %70, align 1, !tbaa !10
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %30, %72
  %74 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %29
  %75 = load float, float* %74, align 4, !tbaa !13
  %76 = sitofp i32 %73 to float
  %77 = fadd float %75, %76
  %78 = fptosi float %77 to i32
  %79 = add nuw nsw i64 %29, 1
  %80 = icmp eq i64 %79, 1760
  br i1 %80, label %27, label %28, !llvm.loop !21
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

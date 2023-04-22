; ModuleID = 'output/opaque-predicates/ex9/ex9.ll'
source_filename = "input/opaque-predicates/ex9/ex9.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %7

6:                                                ; preds = %41
  ret void

7:                                                ; preds = %41, %4
  %8 = phi i64 [ 0, %4 ], [ %52, %41 ]
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 80
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 1
  %14 = mul i32 %5, %5
  %15 = add i32 %14, %5
  %16 = srem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = xor i1 %13, true
  %19 = and i1 %18, false
  %20 = and i1 %13, true
  %21 = or i1 %19, %20
  %22 = xor i1 %17, true
  %23 = and i1 %22, false
  %24 = and i1 %17, true
  %25 = or i1 %23, %24
  %26 = xor i1 %21, %25
  %27 = xor i1 %13, true
  %28 = xor i1 %17, true
  %29 = or i1 %27, %28
  %30 = xor i1 %29, true
  %31 = and i1 %30, true
  %32 = or i1 %26, %31
  %33 = xor i1 %11, true
  %34 = or i1 %33, %32
  %35 = xor i1 %11, true
  %36 = sub i1 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %7
  %38 = getelementptr inbounds i8, i8* %0, i64 %8
  %39 = load i8, i8* %38, align 1, !tbaa !10
  %40 = sext i8 %39 to i32
  br label %41

41:                                               ; preds = %37, %7
  %42 = phi i32 [ %40, %37 ], [ 10, %7 ]
  %43 = call i32 @putchar(i32 %42)
  %44 = load float, float* %1, align 4, !tbaa !13
  %45 = fpext float %44 to double
  %46 = fadd double %45, 4.000000e-05
  %47 = fptrunc double %46 to float
  store float %47, float* %1, align 4, !tbaa !13
  %48 = load float, float* %2, align 4, !tbaa !13
  %49 = fpext float %48 to double
  %50 = fadd double %49, 2.000000e-05
  %51 = fptrunc double %50 to float
  store float %51, float* %2, align 4, !tbaa !13
  %52 = add nuw nsw i64 %8, 1
  %53 = icmp eq i64 %52, 1761
  br i1 %53, label %6, label %7, !llvm.loop !15
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
  br label %28

21:                                               ; preds = %133
  %22 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %23 = call fastcc float @_ZL3sinf(float %0) #9
  %24 = fcmp une float %23, 0.000000e+00
  %25 = fmul float %23, 2.000000e+00
  %26 = select i1 %24, float %25, float %23
  %27 = call fastcc float @_ZL3cosf(float %0) #9
  br label %139

28:                                               ; preds = %133, %7
  %29 = phi double [ 0.000000e+00, %7 ], [ %136, %133 ]
  %30 = phi float [ 0.000000e+00, %7 ], [ %135, %133 ]
  %31 = fptosi float %30 to i32
  switch i32 %31, label %70 [
    i32 0, label %32
    i32 1, label %34
    i32 2, label %37
    i32 3, label %41
    i32 4, label %46
    i32 5, label %52
    i32 6, label %59
  ]

32:                                               ; preds = %28
  %33 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi float [ 0.000000e+00, %28 ], [ %33, %32 ]
  %36 = call fastcc float @_ZL3cosf(float %30) #9
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi float [ 0.000000e+00, %28 ], [ %36, %34 ]
  %39 = phi float [ 0.000000e+00, %28 ], [ %35, %34 ]
  %40 = call fastcc float @_ZL3sinf(float %0) #9
  br label %41

41:                                               ; preds = %37, %28
  %42 = phi float [ 0.000000e+00, %28 ], [ %40, %37 ]
  %43 = phi float [ 0.000000e+00, %28 ], [ %38, %37 ]
  %44 = phi float [ 0.000000e+00, %28 ], [ %39, %37 ]
  %45 = call fastcc float @_ZL3sinf(float %30) #9
  br label %46

46:                                               ; preds = %41, %28
  %47 = phi float [ 0.000000e+00, %28 ], [ %45, %41 ]
  %48 = phi float [ 0.000000e+00, %28 ], [ %42, %41 ]
  %49 = phi float [ 0.000000e+00, %28 ], [ %43, %41 ]
  %50 = phi float [ 0.000000e+00, %28 ], [ %44, %41 ]
  %51 = call fastcc float @_ZL3cosf(float %0) #9
  br label %52

52:                                               ; preds = %46, %28
  %53 = phi float [ 0.000000e+00, %28 ], [ %51, %46 ]
  %54 = phi float [ 0.000000e+00, %28 ], [ %47, %46 ]
  %55 = phi float [ 0.000000e+00, %28 ], [ %48, %46 ]
  %56 = phi float [ 0.000000e+00, %28 ], [ %49, %46 ]
  %57 = phi float [ 0.000000e+00, %28 ], [ %50, %46 ]
  %58 = fadd float %56, %12
  br label %59

59:                                               ; preds = %52, %28
  %60 = phi float [ 0.000000e+00, %28 ], [ %58, %52 ]
  %61 = phi float [ 0.000000e+00, %28 ], [ %53, %52 ]
  %62 = phi float [ 0.000000e+00, %28 ], [ %54, %52 ]
  %63 = phi float [ 0.000000e+00, %28 ], [ %55, %52 ]
  %64 = phi float [ 0.000000e+00, %28 ], [ %56, %52 ]
  %65 = phi float [ 0.000000e+00, %28 ], [ %57, %52 ]
  %66 = fmul float %60, %65
  %67 = fmul float %61, %66
  %68 = fmul float %62, %63
  %69 = fsub float %67, %68
  br label %70

70:                                               ; preds = %59, %28
  %71 = phi float [ 0.000000e+00, %28 ], [ %69, %59 ]
  %72 = phi float [ 0.000000e+00, %28 ], [ %60, %59 ]
  %73 = phi float [ 0.000000e+00, %28 ], [ %61, %59 ]
  %74 = phi float [ 0.000000e+00, %28 ], [ %62, %59 ]
  %75 = phi float [ 0.000000e+00, %28 ], [ %63, %59 ]
  %76 = phi float [ 0.000000e+00, %28 ], [ %64, %59 ]
  %77 = phi float [ 0.000000e+00, %28 ], [ %65, %59 ]
  %78 = fmul float %72, %77
  %79 = fmul float %75, %78
  %80 = fmul float %73, %74
  %81 = fadd float %80, %79
  %82 = fadd float %81, 5.000000e+00
  %83 = fdiv float 1.000000e+00, %82
  %84 = fmul float %83, 3.000000e+01
  %85 = fmul float %72, %18
  %86 = fmul float %85, %19
  %87 = fmul float %71, %20
  %88 = fadd float %86, %87
  %89 = fmul float %88, %84
  %90 = fadd float %89, %14
  %91 = fptosi float %90 to i32
  %92 = fmul float %83, 1.500000e+01
  %93 = fmul float %85, %20
  %94 = fmul float %71, %19
  %95 = fsub float %93, %94
  %96 = fmul float %95, %92
  %97 = fadd float %96, %17
  %98 = fptosi float %97 to i32
  %99 = fmul float %74, %75
  %100 = fmul float %76, %77
  %101 = fmul float %73, %100
  %102 = fsub float %99, %101
  %103 = fmul float %19, %102
  %104 = fmul float %75, %100
  %105 = fsub float %103, %104
  %106 = fsub float %105, %80
  %107 = fmul float %76, %18
  %108 = fmul float %107, %20
  %109 = fsub float %106, %108
  %110 = fmul float %109, 8.000000e+00
  %111 = fptosi float %110 to i32
  %112 = icmp slt i32 %98, %5
  %113 = icmp sgt i32 %98, 0
  %114 = and i1 %112, %113
  %115 = icmp sgt i32 %91, 0
  %116 = select i1 %114, i1 %115, i1 false
  %117 = icmp slt i32 %91, %6
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %133

119:                                              ; preds = %70
  %120 = mul nsw i32 %98, %6
  %121 = add nsw i32 %120, %91
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %3, i64 %122
  %124 = load float, float* %123, align 4, !tbaa !13
  %125 = fcmp ogt float %83, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  store float %83, float* %123, align 4, !tbaa !13
  %127 = icmp sgt i32 %111, 0
  %128 = select i1 %127, i32 %111, i32 0
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %129
  %131 = load i8, i8* %130, align 1, !tbaa !10
  %132 = getelementptr inbounds i8, i8* %4, i64 %122
  store i8 %131, i8* %132, align 1, !tbaa !10
  br label %133

133:                                              ; preds = %126, %119, %70
  %134 = fadd double %29, 7.000000e-02
  %135 = fptrunc double %134 to float
  %136 = fpext float %135 to double
  %137 = fcmp olt double %136, 6.280000e+00
  br i1 %137, label %28, label %21, !llvm.loop !18

138:                                              ; preds = %245
  ret void

139:                                              ; preds = %245, %21
  %140 = phi double [ 0.000000e+00, %21 ], [ %248, %245 ]
  %141 = phi i32 [ 0, %21 ], [ %143, %245 ]
  %142 = phi float [ 0.000000e+00, %21 ], [ %247, %245 ]
  %143 = add nuw nsw i32 %141, 1
  %144 = sitofp i32 %141 to float
  %145 = fadd float %22, %144
  %146 = call fastcc float @_ZL3cosf(float %142) #9
  %147 = fcmp une float %145, 0.000000e+00
  %148 = fmul float %145, 2.000000e+00
  %149 = fmul float %146, 2.000000e+00
  %150 = select i1 %147, float %148, float %145
  %151 = select i1 %147, float %146, float %149
  %152 = call fastcc float @_ZL3sinf(float %142) #9
  %153 = fmul float %152, 2.000000e+00
  %154 = select i1 %24, float %152, float %153
  %155 = fadd float %151, %12
  %156 = fmul float %150, %155
  %157 = fmul float %27, %156
  %158 = fmul float %26, %154
  %159 = fsub float %157, %158
  %160 = fcmp une float %155, 0.000000e+00
  %161 = fmul float %159, 2.000000e+00
  %162 = fmul float %155, 2.000000e+00
  %163 = select i1 %160, float %155, float %162
  %164 = select i1 %160, float %161, float %159
  %165 = fmul float %150, %163
  %166 = fmul float %26, %165
  %167 = fmul float %27, %154
  %168 = fadd float %167, %166
  %169 = fadd float %168, 5.000000e+00
  %170 = fdiv float 1.000000e+00, %169
  %171 = fmul float %170, 3.000000e+01
  %172 = fmul float %18, %163
  %173 = fmul float %19, %172
  %174 = fmul float %20, %164
  %175 = fadd float %173, %174
  %176 = fmul float %175, %171
  %177 = fadd float %176, %14
  %178 = fptosi float %177 to i32
  %179 = fmul float %170, 1.500000e+01
  %180 = fmul float %172, %20
  %181 = fmul float %19, %164
  %182 = fsub float %180, %181
  %183 = fmul float %182, %179
  %184 = fadd float %183, %17
  %185 = fptosi float %184 to i32
  %186 = fmul float %150, %151
  %187 = fmul float %186, %27
  %188 = fsub float %158, %187
  %189 = fmul float %19, %188
  %190 = fmul float %186, %26
  %191 = fsub float %189, %190
  %192 = fsub float %191, %167
  %193 = fmul float %151, %18
  %194 = fmul float %193, %20
  %195 = fsub float %192, %194
  %196 = fmul float %195, 8.000000e+00
  %197 = fptosi float %196 to i32
  %198 = icmp slt i32 %185, %5
  %199 = icmp sgt i32 %185, 0
  %200 = and i1 %198, %199
  %201 = icmp sgt i32 %178, 0
  %202 = select i1 %200, i1 %201, i1 false
  %203 = icmp slt i32 %178, %6
  %204 = select i1 %202, i1 %203, i1 false
  %205 = and i32 %13, 1
  %206 = icmp eq i32 %205, 0
  %207 = mul i32 %13, %13
  %208 = add i32 %207, %13
  %209 = mul i32 %208, 3
  %210 = srem i32 %209, 2
  %211 = icmp eq i32 %210, 0
  %212 = xor i1 %206, true
  %213 = and i1 %212, true
  %214 = and i1 %206, false
  %215 = or i1 %213, %214
  %216 = xor i1 %211, true
  %217 = and i1 %216, true
  %218 = and i1 %211, false
  %219 = or i1 %217, %218
  %220 = xor i1 %215, %219
  %221 = xor i1 %206, true
  %222 = xor i1 %211, true
  %223 = or i1 %221, %222
  %224 = xor i1 %223, true
  %225 = and i1 %224, true
  %226 = or i1 %220, %225
  %227 = xor i1 %204, true
  %228 = or i1 %227, %226
  %229 = xor i1 %204, true
  %230 = sub i1 %228, %229
  br i1 %230, label %231, label %245

231:                                              ; preds = %139
  %232 = mul nsw i32 %185, %6
  %233 = add nsw i32 %232, %178
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %3, i64 %234
  %236 = load float, float* %235, align 4, !tbaa !13
  %237 = fcmp ogt float %170, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %231
  store float %170, float* %235, align 4, !tbaa !13
  %239 = icmp sgt i32 %197, 0
  %240 = select i1 %239, i32 %197, i32 0
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %241
  %243 = load i8, i8* %242, align 1, !tbaa !10
  %244 = getelementptr inbounds i8, i8* %4, i64 %234
  store i8 %243, i8* %244, align 1, !tbaa !10
  br label %245

245:                                              ; preds = %238, %231, %139
  %246 = fadd double %140, 7.000000e-02
  %247 = fptrunc double %246 to float
  %248 = fpext float %247 to double
  %249 = icmp eq i32 %143, 90
  br i1 %249, label %138, label %139, !llvm.loop !19
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
  %17 = and i32 %10, 1
  %18 = icmp eq i32 %17, 0
  %19 = mul i32 %10, %10
  %20 = add i32 %19, %10
  %21 = mul i32 %20, 3
  %22 = srem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = and i1 %18, %24
  %26 = add i1 %25, %23
  %27 = xor i1 %26, true
  %28 = xor i1 %16, %27
  %29 = and i1 %28, %16
  br i1 %29, label %31, label %11, !llvm.loop !20

30:                                               ; preds = %31
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %42

31:                                               ; preds = %31, %11
  %32 = phi i64 [ %43, %31 ], [ 0, %11 ]
  %33 = phi i32 [ %42, %31 ], [ 0, %11 ]
  %34 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %32
  %35 = load i8, i8* %34, align 1, !tbaa !10
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %33, %36
  %38 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %32
  %39 = load float, float* %38, align 4, !tbaa !13
  %40 = sitofp i32 %37 to float
  %41 = fadd float %39, %40
  %42 = fptosi float %41 to i32
  %43 = add nuw nsw i64 %32, 1
  %44 = icmp eq i64 %43, 1760
  %45 = and i32 %12, 1
  %46 = icmp eq i32 %45, 1
  %47 = mul i32 %12, %12
  %48 = add i32 %47, %12
  %49 = srem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  %51 = xor i1 %46, true
  %52 = and i1 %51, false
  %53 = and i1 %46, true
  %54 = or i1 %52, %53
  %55 = xor i1 %50, true
  %56 = and i1 %55, false
  %57 = and i1 %50, true
  %58 = or i1 %56, %57
  %59 = xor i1 %54, %58
  %60 = xor i1 %46, true
  %61 = xor i1 %50, true
  %62 = or i1 %60, %61
  %63 = xor i1 %62, true
  %64 = and i1 %63, true
  %65 = or i1 %59, %64
  %66 = xor i1 %44, true
  %67 = or i1 %66, %65
  %68 = xor i1 %44, true
  %69 = sub i1 %67, %68
  br i1 %69, label %30, label %31, !llvm.loop !21
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

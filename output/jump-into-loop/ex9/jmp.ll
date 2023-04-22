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
  %6 = mul i32 %3, 2
  %7 = mul i32 %3, 2
  %8 = add i32 2, %7
  %9 = mul i32 %6, %8
  %10 = srem i32 %9, 4
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %3, %3
  %13 = mul i32 %12, %3
  %14 = add i32 %13, %3
  %15 = srem i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = and i1 %11, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %26

19:                                               ; preds = %4
  br label %21

20:                                               ; preds = %31
  ret void

21:                                               ; preds = %31, %19
  %22 = phi i64 [ 0, %19 ], [ %43, %31 ]
  %23 = trunc i64 %22 to i32
  %24 = urem i32 %23, 80
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18, %21
  %27 = phi i64 [ %22, %21 ], [ 0, %18 ]
  %28 = getelementptr inbounds i8, i8* %0, i64 %27
  %29 = load i8, i8* %28, align 1, !tbaa !10
  %30 = sext i8 %29 to i32
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %30, %26 ], [ 10, %21 ]
  %33 = phi i64 [ %22, %21 ], [ %27, %26 ]
  %34 = call i32 @putchar(i32 %32)
  %35 = load float, float* %1, align 4, !tbaa !13
  %36 = fpext float %35 to double
  %37 = fadd double %36, 4.000000e-05
  %38 = fptrunc double %37 to float
  store float %38, float* %1, align 4, !tbaa !13
  %39 = load float, float* %2, align 4, !tbaa !13
  %40 = fpext float %39 to double
  %41 = fadd double %40, 2.000000e-05
  %42 = fptrunc double %41 to float
  store float %42, float* %2, align 4, !tbaa !13
  %43 = add nuw nsw i64 %33, 1
  %44 = icmp eq i64 %43, 1761
  br i1 %44, label %20, label %21, !llvm.loop !15
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
  br label %38

21:                                               ; preds = %143
  %22 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %23 = call fastcc float @_ZL3sinf(float %0) #9
  %24 = fcmp une float %23, 0.000000e+00
  %25 = fmul float %23, 2.000000e+00
  %26 = select i1 %24, float %25, float %23
  %27 = call fastcc float @_ZL3cosf(float %0) #9
  %28 = and i32 %121, 1
  %29 = icmp eq i32 %28, 0
  %30 = mul i32 %121, %121
  %31 = add i32 %30, %121
  %32 = mul i32 %31, 3
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %29, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  br label %222

37:                                               ; preds = %21
  br label %149

38:                                               ; preds = %143, %7
  %39 = phi double [ 0.000000e+00, %7 ], [ %146, %143 ]
  %40 = phi float [ 0.000000e+00, %7 ], [ %145, %143 ]
  %41 = fptosi float %40 to i32
  switch i32 %41, label %80 [
    i32 0, label %42
    i32 1, label %44
    i32 2, label %47
    i32 3, label %51
    i32 4, label %56
    i32 5, label %62
    i32 6, label %69
  ]

42:                                               ; preds = %38
  %43 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi float [ 0.000000e+00, %38 ], [ %43, %42 ]
  %46 = call fastcc float @_ZL3cosf(float %40) #9
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi float [ 0.000000e+00, %38 ], [ %46, %44 ]
  %49 = phi float [ 0.000000e+00, %38 ], [ %45, %44 ]
  %50 = call fastcc float @_ZL3sinf(float %0) #9
  br label %51

51:                                               ; preds = %47, %38
  %52 = phi float [ 0.000000e+00, %38 ], [ %50, %47 ]
  %53 = phi float [ 0.000000e+00, %38 ], [ %48, %47 ]
  %54 = phi float [ 0.000000e+00, %38 ], [ %49, %47 ]
  %55 = call fastcc float @_ZL3sinf(float %40) #9
  br label %56

56:                                               ; preds = %51, %38
  %57 = phi float [ 0.000000e+00, %38 ], [ %55, %51 ]
  %58 = phi float [ 0.000000e+00, %38 ], [ %52, %51 ]
  %59 = phi float [ 0.000000e+00, %38 ], [ %53, %51 ]
  %60 = phi float [ 0.000000e+00, %38 ], [ %54, %51 ]
  %61 = call fastcc float @_ZL3cosf(float %0) #9
  br label %62

62:                                               ; preds = %56, %38
  %63 = phi float [ 0.000000e+00, %38 ], [ %61, %56 ]
  %64 = phi float [ 0.000000e+00, %38 ], [ %57, %56 ]
  %65 = phi float [ 0.000000e+00, %38 ], [ %58, %56 ]
  %66 = phi float [ 0.000000e+00, %38 ], [ %59, %56 ]
  %67 = phi float [ 0.000000e+00, %38 ], [ %60, %56 ]
  %68 = fadd float %66, %12
  br label %69

69:                                               ; preds = %62, %38
  %70 = phi float [ 0.000000e+00, %38 ], [ %68, %62 ]
  %71 = phi float [ 0.000000e+00, %38 ], [ %63, %62 ]
  %72 = phi float [ 0.000000e+00, %38 ], [ %64, %62 ]
  %73 = phi float [ 0.000000e+00, %38 ], [ %65, %62 ]
  %74 = phi float [ 0.000000e+00, %38 ], [ %66, %62 ]
  %75 = phi float [ 0.000000e+00, %38 ], [ %67, %62 ]
  %76 = fmul float %70, %75
  %77 = fmul float %71, %76
  %78 = fmul float %72, %73
  %79 = fsub float %77, %78
  br label %80

80:                                               ; preds = %69, %38
  %81 = phi float [ 0.000000e+00, %38 ], [ %79, %69 ]
  %82 = phi float [ 0.000000e+00, %38 ], [ %70, %69 ]
  %83 = phi float [ 0.000000e+00, %38 ], [ %71, %69 ]
  %84 = phi float [ 0.000000e+00, %38 ], [ %72, %69 ]
  %85 = phi float [ 0.000000e+00, %38 ], [ %73, %69 ]
  %86 = phi float [ 0.000000e+00, %38 ], [ %74, %69 ]
  %87 = phi float [ 0.000000e+00, %38 ], [ %75, %69 ]
  %88 = fmul float %82, %87
  %89 = fmul float %85, %88
  %90 = fmul float %83, %84
  %91 = fadd float %90, %89
  %92 = fadd float %91, 5.000000e+00
  %93 = fdiv float 1.000000e+00, %92
  %94 = fmul float %93, 3.000000e+01
  %95 = fmul float %82, %18
  %96 = fmul float %95, %19
  %97 = fmul float %81, %20
  %98 = fadd float %96, %97
  %99 = fmul float %98, %94
  %100 = fadd float %99, %14
  %101 = fptosi float %100 to i32
  %102 = fmul float %93, 1.500000e+01
  %103 = fmul float %95, %20
  %104 = fmul float %81, %19
  %105 = fsub float %103, %104
  %106 = fmul float %105, %102
  %107 = fadd float %106, %17
  %108 = fptosi float %107 to i32
  %109 = fmul float %84, %85
  %110 = fmul float %86, %87
  %111 = fmul float %83, %110
  %112 = fsub float %109, %111
  %113 = fmul float %19, %112
  %114 = fmul float %85, %110
  %115 = fsub float %113, %114
  %116 = fsub float %115, %90
  %117 = fmul float %86, %18
  %118 = fmul float %117, %20
  %119 = fsub float %116, %118
  %120 = fmul float %119, 8.000000e+00
  %121 = fptosi float %120 to i32
  %122 = icmp slt i32 %108, %5
  %123 = icmp sgt i32 %108, 0
  %124 = and i1 %122, %123
  %125 = icmp sgt i32 %101, 0
  %126 = select i1 %124, i1 %125, i1 false
  %127 = icmp slt i32 %101, %6
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %143

129:                                              ; preds = %80
  %130 = mul nsw i32 %108, %6
  %131 = add nsw i32 %130, %101
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %3, i64 %132
  %134 = load float, float* %133, align 4, !tbaa !13
  %135 = fcmp ogt float %93, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  store float %93, float* %133, align 4, !tbaa !13
  %137 = icmp sgt i32 %121, 0
  %138 = select i1 %137, i32 %121, i32 0
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1, !tbaa !10
  %142 = getelementptr inbounds i8, i8* %4, i64 %132
  store i8 %141, i8* %142, align 1, !tbaa !10
  br label %143

143:                                              ; preds = %136, %129, %80
  %144 = fadd double %39, 7.000000e-02
  %145 = fptrunc double %144 to float
  %146 = fpext float %145 to double
  %147 = fcmp olt double %146, 6.280000e+00
  br i1 %147, label %38, label %21, !llvm.loop !18

148:                                              ; preds = %235
  ret void

149:                                              ; preds = %235, %37
  %150 = phi double [ 0.000000e+00, %37 ], [ %244, %235 ]
  %151 = phi i32 [ 0, %37 ], [ %241, %235 ]
  %152 = phi float [ 0.000000e+00, %37 ], [ %243, %235 ]
  %153 = add nuw nsw i32 %151, 1
  %154 = sitofp i32 %151 to float
  %155 = fadd float %22, %154
  %156 = call fastcc float @_ZL3cosf(float %152) #9
  %157 = fcmp une float %155, 0.000000e+00
  %158 = fmul float %155, 2.000000e+00
  %159 = fmul float %156, 2.000000e+00
  %160 = select i1 %157, float %158, float %155
  %161 = select i1 %157, float %156, float %159
  %162 = call fastcc float @_ZL3sinf(float %152) #9
  %163 = fmul float %162, 2.000000e+00
  %164 = select i1 %24, float %162, float %163
  %165 = fadd float %161, %12
  %166 = fmul float %160, %165
  %167 = fmul float %27, %166
  %168 = fmul float %26, %164
  %169 = fsub float %167, %168
  %170 = fcmp une float %165, 0.000000e+00
  %171 = fmul float %169, 2.000000e+00
  %172 = fmul float %165, 2.000000e+00
  %173 = select i1 %170, float %165, float %172
  %174 = select i1 %170, float %171, float %169
  %175 = fmul float %160, %173
  %176 = fmul float %26, %175
  %177 = fmul float %27, %164
  %178 = fadd float %177, %176
  %179 = fadd float %178, 5.000000e+00
  %180 = fdiv float 1.000000e+00, %179
  %181 = fmul float %180, 3.000000e+01
  %182 = fmul float %18, %173
  %183 = fmul float %19, %182
  %184 = fmul float %20, %174
  %185 = fadd float %183, %184
  %186 = fmul float %185, %181
  %187 = fadd float %186, %14
  %188 = fptosi float %187 to i32
  %189 = fmul float %180, 1.500000e+01
  %190 = fmul float %182, %20
  %191 = fmul float %19, %174
  %192 = fsub float %190, %191
  %193 = fmul float %192, %189
  %194 = fadd float %193, %17
  %195 = fptosi float %194 to i32
  %196 = fmul float %160, %161
  %197 = fmul float %196, %27
  %198 = fsub float %168, %197
  %199 = fmul float %19, %198
  %200 = fmul float %196, %26
  %201 = fsub float %199, %200
  %202 = fsub float %201, %177
  %203 = fmul float %161, %18
  %204 = fmul float %203, %20
  %205 = fsub float %202, %204
  %206 = fmul float %205, 8.000000e+00
  %207 = fptosi float %206 to i32
  %208 = icmp slt i32 %195, %5
  %209 = icmp sgt i32 %195, 0
  %210 = and i1 %208, %209
  %211 = icmp sgt i32 %188, 0
  %212 = select i1 %210, i1 %211, i1 false
  %213 = icmp slt i32 %188, %6
  %214 = select i1 %212, i1 %213, i1 false
  br i1 %214, label %215, label %235

215:                                              ; preds = %149
  %216 = mul nsw i32 %195, %6
  %217 = add nsw i32 %216, %188
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %3, i64 %218
  %220 = load float, float* %219, align 4, !tbaa !13
  %221 = fcmp ogt float %180, %220
  br i1 %221, label %222, label %235

222:                                              ; preds = %36, %215
  %223 = phi i64 [ %218, %215 ], [ 0, %36 ]
  %224 = phi i32 [ %207, %215 ], [ 0, %36 ]
  %225 = phi double [ %150, %215 ], [ 0.000000e+00, %36 ]
  %226 = phi float* [ %219, %215 ], [ null, %36 ]
  %227 = phi float [ %180, %215 ], [ 0.000000e+00, %36 ]
  %228 = phi i32 [ %153, %215 ], [ 0, %36 ]
  store float %227, float* %226, align 4, !tbaa !13
  %229 = icmp sgt i32 %224, 0
  %230 = select i1 %229, i32 %224, i32 0
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %231
  %233 = load i8, i8* %232, align 1, !tbaa !10
  %234 = getelementptr inbounds i8, i8* %4, i64 %223
  store i8 %233, i8* %234, align 1, !tbaa !10
  br label %235

235:                                              ; preds = %222, %215, %149
  %236 = phi i64 [ %218, %215 ], [ %223, %222 ], [ 0, %149 ]
  %237 = phi i32 [ %207, %149 ], [ %207, %215 ], [ %224, %222 ]
  %238 = phi double [ %150, %149 ], [ %150, %215 ], [ %225, %222 ]
  %239 = phi float* [ %219, %215 ], [ %226, %222 ], [ null, %149 ]
  %240 = phi float [ %180, %149 ], [ %180, %215 ], [ %227, %222 ]
  %241 = phi i32 [ %153, %149 ], [ %153, %215 ], [ %228, %222 ]
  %242 = fadd double %238, 7.000000e-02
  %243 = fptrunc double %242 to float
  %244 = fpext float %243 to double
  %245 = icmp eq i32 %241, 90
  br i1 %245, label %148, label %149, !llvm.loop !19
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
  br i1 %31, label %17, label %18, !llvm.loop !21
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

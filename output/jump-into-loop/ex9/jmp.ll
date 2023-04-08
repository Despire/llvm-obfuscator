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
  %12 = sitofp i32 %8 to float
  %13 = sdiv i32 %6, 2
  %14 = sitofp i32 %13 to float
  %15 = sdiv i32 %5, 2
  %16 = add nsw i32 %15, 1
  %17 = sitofp i32 %16 to float
  %18 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %19 = call fastcc float @_ZL3cosf(float %1) #9
  %20 = call fastcc float @_ZL3sinf(float %1) #9
  %21 = mul i32 %5, 2
  %22 = mul i32 %5, 2
  %23 = add i32 2, %22
  %24 = mul i32 %21, %23
  %25 = srem i32 %24, 4
  %26 = icmp eq i32 %25, 0
  %27 = mul i32 %5, %5
  %28 = add i32 %27, %5
  %29 = srem i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %26, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  br label %59

33:                                               ; preds = %7
  br label %41

34:                                               ; preds = %162
  %35 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %36 = call fastcc float @_ZL3sinf(float %0) #9
  %37 = fcmp une float %36, 0.000000e+00
  %38 = fmul float %36, 2.000000e+00
  %39 = select i1 %37, float %38, float %36
  %40 = call fastcc float @_ZL3cosf(float %0) #9
  br label %173

41:                                               ; preds = %162, %33
  %42 = phi double [ 0.000000e+00, %33 ], [ %170, %162 ]
  %43 = phi float [ 0.000000e+00, %33 ], [ %169, %162 ]
  %44 = fptosi float %43 to i32
  switch i32 %44, label %94 [
    i32 0, label %45
    i32 1, label %47
    i32 2, label %50
    i32 3, label %54
    i32 4, label %59
    i32 5, label %66
    i32 6, label %78
  ]

45:                                               ; preds = %41
  %46 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi float [ 0.000000e+00, %41 ], [ %46, %45 ]
  %49 = call fastcc float @_ZL3cosf(float %43) #9
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi float [ 0.000000e+00, %41 ], [ %49, %47 ]
  %52 = phi float [ 0.000000e+00, %41 ], [ %48, %47 ]
  %53 = call fastcc float @_ZL3sinf(float %0) #9
  br label %54

54:                                               ; preds = %50, %41
  %55 = phi float [ 0.000000e+00, %41 ], [ %53, %50 ]
  %56 = phi float [ 0.000000e+00, %41 ], [ %51, %50 ]
  %57 = phi float [ 0.000000e+00, %41 ], [ %52, %50 ]
  %58 = call fastcc float @_ZL3sinf(float %43) #9
  br label %59

59:                                               ; preds = %32, %54, %41
  %60 = phi float [ 0.000000e+00, %41 ], [ %58, %54 ], [ 0.000000e+00, %32 ]
  %61 = phi float [ 0.000000e+00, %41 ], [ %55, %54 ], [ 0.000000e+00, %32 ]
  %62 = phi float [ 0.000000e+00, %41 ], [ %56, %54 ], [ 0.000000e+00, %32 ]
  %63 = phi float [ 0.000000e+00, %41 ], [ %57, %54 ], [ 0.000000e+00, %32 ]
  %64 = phi double [ %42, %41 ], [ %42, %54 ], [ 0.000000e+00, %32 ]
  %65 = call fastcc float @_ZL3cosf(float %0) #9
  br label %66

66:                                               ; preds = %59, %41
  %67 = phi float [ 0.000000e+00, %41 ], [ %65, %59 ]
  %68 = phi float [ 0.000000e+00, %41 ], [ %60, %59 ]
  %69 = phi float [ 0.000000e+00, %41 ], [ %61, %59 ]
  %70 = phi float [ 0.000000e+00, %41 ], [ %62, %59 ]
  %71 = phi float [ 0.000000e+00, %41 ], [ %63, %59 ]
  %72 = phi float [ %60, %59 ], [ 0.000000e+00, %41 ]
  %73 = phi double [ %42, %41 ], [ %64, %59 ]
  %74 = phi float [ %61, %59 ], [ 0.000000e+00, %41 ]
  %75 = phi float [ %62, %59 ], [ 0.000000e+00, %41 ]
  %76 = phi float [ %63, %59 ], [ 0.000000e+00, %41 ]
  %77 = fadd float %70, %12
  br label %78

78:                                               ; preds = %66, %41
  %79 = phi float [ 0.000000e+00, %41 ], [ %77, %66 ]
  %80 = phi float [ 0.000000e+00, %41 ], [ %67, %66 ]
  %81 = phi float [ 0.000000e+00, %41 ], [ %68, %66 ]
  %82 = phi float [ 0.000000e+00, %41 ], [ %69, %66 ]
  %83 = phi float [ 0.000000e+00, %41 ], [ %70, %66 ]
  %84 = phi float [ 0.000000e+00, %41 ], [ %71, %66 ]
  %85 = phi float [ %72, %66 ], [ 0.000000e+00, %41 ]
  %86 = phi double [ %42, %41 ], [ %73, %66 ]
  %87 = phi float [ %74, %66 ], [ 0.000000e+00, %41 ]
  %88 = phi float [ %75, %66 ], [ 0.000000e+00, %41 ]
  %89 = phi float [ %76, %66 ], [ 0.000000e+00, %41 ]
  %90 = fmul float %79, %84
  %91 = fmul float %80, %90
  %92 = fmul float %81, %82
  %93 = fsub float %91, %92
  br label %94

94:                                               ; preds = %78, %41
  %95 = phi float [ 0.000000e+00, %41 ], [ %93, %78 ]
  %96 = phi float [ 0.000000e+00, %41 ], [ %79, %78 ]
  %97 = phi float [ 0.000000e+00, %41 ], [ %80, %78 ]
  %98 = phi float [ 0.000000e+00, %41 ], [ %81, %78 ]
  %99 = phi float [ 0.000000e+00, %41 ], [ %82, %78 ]
  %100 = phi float [ 0.000000e+00, %41 ], [ %83, %78 ]
  %101 = phi float [ 0.000000e+00, %41 ], [ %84, %78 ]
  %102 = phi float [ %85, %78 ], [ 0.000000e+00, %41 ]
  %103 = phi double [ %42, %41 ], [ %86, %78 ]
  %104 = phi float [ %87, %78 ], [ 0.000000e+00, %41 ]
  %105 = phi float [ %88, %78 ], [ 0.000000e+00, %41 ]
  %106 = phi float [ %89, %78 ], [ 0.000000e+00, %41 ]
  %107 = fmul float %96, %101
  %108 = fmul float %99, %107
  %109 = fmul float %97, %98
  %110 = fadd float %109, %108
  %111 = fadd float %110, 5.000000e+00
  %112 = fdiv float 1.000000e+00, %111
  %113 = fmul float %112, 3.000000e+01
  %114 = fmul float %96, %18
  %115 = fmul float %114, %19
  %116 = fmul float %95, %20
  %117 = fadd float %115, %116
  %118 = fmul float %117, %113
  %119 = fadd float %118, %14
  %120 = fptosi float %119 to i32
  %121 = fmul float %112, 1.500000e+01
  %122 = fmul float %114, %20
  %123 = fmul float %95, %19
  %124 = fsub float %122, %123
  %125 = fmul float %124, %121
  %126 = fadd float %125, %17
  %127 = fptosi float %126 to i32
  %128 = fmul float %98, %99
  %129 = fmul float %100, %101
  %130 = fmul float %97, %129
  %131 = fsub float %128, %130
  %132 = fmul float %19, %131
  %133 = fmul float %99, %129
  %134 = fsub float %132, %133
  %135 = fsub float %134, %109
  %136 = fmul float %100, %18
  %137 = fmul float %136, %20
  %138 = fsub float %135, %137
  %139 = fmul float %138, 8.000000e+00
  %140 = fptosi float %139 to i32
  %141 = icmp slt i32 %127, %5
  %142 = icmp sgt i32 %127, 0
  %143 = and i1 %141, %142
  %144 = icmp sgt i32 %120, 0
  %145 = select i1 %143, i1 %144, i1 false
  %146 = icmp slt i32 %120, %6
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %148, label %162

148:                                              ; preds = %94
  %149 = mul nsw i32 %127, %6
  %150 = add nsw i32 %149, %120
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %3, i64 %151
  %153 = load float, float* %152, align 4, !tbaa !13
  %154 = fcmp ogt float %112, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  store float %112, float* %152, align 4, !tbaa !13
  %156 = icmp sgt i32 %140, 0
  %157 = select i1 %156, i32 %140, i32 0
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1, !tbaa !10
  %161 = getelementptr inbounds i8, i8* %4, i64 %151
  store i8 %160, i8* %161, align 1, !tbaa !10
  br label %162

162:                                              ; preds = %155, %148, %94
  %163 = phi float [ %102, %94 ], [ %102, %148 ], [ %102, %155 ]
  %164 = phi double [ %103, %94 ], [ %103, %148 ], [ %103, %155 ]
  %165 = phi float [ %104, %94 ], [ %104, %148 ], [ %104, %155 ]
  %166 = phi float [ %105, %94 ], [ %105, %148 ], [ %105, %155 ]
  %167 = phi float [ %106, %94 ], [ %106, %148 ], [ %106, %155 ]
  %168 = fadd double %164, 7.000000e-02
  %169 = fptrunc double %168 to float
  %170 = fpext float %169 to double
  %171 = fcmp olt double %170, 6.280000e+00
  br i1 %171, label %41, label %34, !llvm.loop !18

172:                                              ; preds = %253
  ret void

173:                                              ; preds = %253, %34
  %174 = phi double [ 0.000000e+00, %34 ], [ %256, %253 ]
  %175 = phi i32 [ 0, %34 ], [ %177, %253 ]
  %176 = phi float [ 0.000000e+00, %34 ], [ %255, %253 ]
  %177 = add nuw nsw i32 %175, 1
  %178 = sitofp i32 %175 to float
  %179 = fadd float %35, %178
  %180 = call fastcc float @_ZL3cosf(float %176) #9
  %181 = fcmp une float %179, 0.000000e+00
  %182 = fmul float %179, 2.000000e+00
  %183 = fmul float %180, 2.000000e+00
  %184 = select i1 %181, float %182, float %179
  %185 = select i1 %181, float %180, float %183
  %186 = call fastcc float @_ZL3sinf(float %176) #9
  %187 = fmul float %186, 2.000000e+00
  %188 = select i1 %37, float %186, float %187
  %189 = fadd float %185, %12
  %190 = fmul float %184, %189
  %191 = fmul float %40, %190
  %192 = fmul float %39, %188
  %193 = fsub float %191, %192
  %194 = fcmp une float %189, 0.000000e+00
  %195 = fmul float %193, 2.000000e+00
  %196 = fmul float %189, 2.000000e+00
  %197 = select i1 %194, float %189, float %196
  %198 = select i1 %194, float %195, float %193
  %199 = fmul float %184, %197
  %200 = fmul float %39, %199
  %201 = fmul float %40, %188
  %202 = fadd float %201, %200
  %203 = fadd float %202, 5.000000e+00
  %204 = fdiv float 1.000000e+00, %203
  %205 = fmul float %204, 3.000000e+01
  %206 = fmul float %18, %197
  %207 = fmul float %19, %206
  %208 = fmul float %20, %198
  %209 = fadd float %207, %208
  %210 = fmul float %209, %205
  %211 = fadd float %210, %14
  %212 = fptosi float %211 to i32
  %213 = fmul float %204, 1.500000e+01
  %214 = fmul float %206, %20
  %215 = fmul float %19, %198
  %216 = fsub float %214, %215
  %217 = fmul float %216, %213
  %218 = fadd float %217, %17
  %219 = fptosi float %218 to i32
  %220 = fmul float %184, %185
  %221 = fmul float %220, %40
  %222 = fsub float %192, %221
  %223 = fmul float %19, %222
  %224 = fmul float %220, %39
  %225 = fsub float %223, %224
  %226 = fsub float %225, %201
  %227 = fmul float %185, %18
  %228 = fmul float %227, %20
  %229 = fsub float %226, %228
  %230 = fmul float %229, 8.000000e+00
  %231 = fptosi float %230 to i32
  %232 = icmp slt i32 %219, %5
  %233 = icmp sgt i32 %219, 0
  %234 = and i1 %232, %233
  %235 = icmp sgt i32 %212, 0
  %236 = select i1 %234, i1 %235, i1 false
  %237 = icmp slt i32 %212, %6
  %238 = select i1 %236, i1 %237, i1 false
  br i1 %238, label %239, label %253

239:                                              ; preds = %173
  %240 = mul nsw i32 %219, %6
  %241 = add nsw i32 %240, %212
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %3, i64 %242
  %244 = load float, float* %243, align 4, !tbaa !13
  %245 = fcmp ogt float %204, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %239
  store float %204, float* %243, align 4, !tbaa !13
  %247 = icmp sgt i32 %231, 0
  %248 = select i1 %247, i32 %231, i32 0
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %249
  %251 = load i8, i8* %250, align 1, !tbaa !10
  %252 = getelementptr inbounds i8, i8* %4, i64 %242
  store i8 %251, i8* %252, align 1, !tbaa !10
  br label %253

253:                                              ; preds = %246, %239, %173
  %254 = fadd double %174, 7.000000e-02
  %255 = fptrunc double %254 to float
  %256 = fpext float %255 to double
  %257 = icmp eq i32 %177, 90
  br i1 %257, label %172, label %173, !llvm.loop !19
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

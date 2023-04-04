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
  %6 = icmp sge i32 %3, %3
  %7 = mul i32 %3, %3
  %8 = add i32 %7, %3
  %9 = srem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %6, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %20

13:                                               ; preds = %4
  br label %15

14:                                               ; preds = %25
  ret void

15:                                               ; preds = %25, %13
  %16 = phi i64 [ 0, %13 ], [ %37, %25 ]
  %17 = trunc i64 %16 to i32
  %18 = urem i32 %17, 80
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %12, %15
  %21 = phi i64 [ %16, %15 ], [ 0, %12 ]
  %22 = getelementptr inbounds i8, i8* %0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !10
  %24 = sext i8 %23 to i32
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i32 [ %24, %20 ], [ 10, %15 ]
  %27 = phi i64 [ %16, %15 ], [ %21, %20 ]
  %28 = call i32 @putchar(i32 %26)
  %29 = load float, float* %1, align 4, !tbaa !13
  %30 = fpext float %29 to double
  %31 = fadd double %30, 4.000000e-05
  %32 = fptrunc double %31 to float
  store float %32, float* %1, align 4, !tbaa !13
  %33 = load float, float* %2, align 4, !tbaa !13
  %34 = fpext float %33 to double
  %35 = fadd double %34, 2.000000e-05
  %36 = fptrunc double %35 to float
  store float %36, float* %2, align 4, !tbaa !13
  %37 = add nuw nsw i64 %27, 1
  %38 = icmp eq i64 %37, 1761
  br i1 %38, label %14, label %15, !llvm.loop !15
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
  br label %36

21:                                               ; preds = %141
  %22 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %23 = call fastcc float @_ZL3sinf(float %0) #9
  %24 = fcmp une float %23, 0.000000e+00
  %25 = fmul float %23, 2.000000e+00
  %26 = select i1 %24, float %25, float %23
  %27 = call fastcc float @_ZL3cosf(float %0) #9
  %28 = icmp sge i32 %15, %15
  %29 = mul i32 %15, %15
  %30 = add i32 %29, %15
  %31 = srem i32 %30, 2
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %28, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %227

35:                                               ; preds = %21
  br label %147

36:                                               ; preds = %141, %7
  %37 = phi double [ 0.000000e+00, %7 ], [ %144, %141 ]
  %38 = phi float [ 0.000000e+00, %7 ], [ %143, %141 ]
  %39 = fptosi float %38 to i32
  switch i32 %39, label %78 [
    i32 0, label %40
    i32 1, label %42
    i32 2, label %45
    i32 3, label %49
    i32 4, label %54
    i32 5, label %60
    i32 6, label %67
  ]

40:                                               ; preds = %36
  %41 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi float [ 0.000000e+00, %36 ], [ %41, %40 ]
  %44 = call fastcc float @_ZL3cosf(float %38) #9
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi float [ 0.000000e+00, %36 ], [ %44, %42 ]
  %47 = phi float [ 0.000000e+00, %36 ], [ %43, %42 ]
  %48 = call fastcc float @_ZL3sinf(float %0) #9
  br label %49

49:                                               ; preds = %45, %36
  %50 = phi float [ 0.000000e+00, %36 ], [ %48, %45 ]
  %51 = phi float [ 0.000000e+00, %36 ], [ %46, %45 ]
  %52 = phi float [ 0.000000e+00, %36 ], [ %47, %45 ]
  %53 = call fastcc float @_ZL3sinf(float %38) #9
  br label %54

54:                                               ; preds = %49, %36
  %55 = phi float [ 0.000000e+00, %36 ], [ %53, %49 ]
  %56 = phi float [ 0.000000e+00, %36 ], [ %50, %49 ]
  %57 = phi float [ 0.000000e+00, %36 ], [ %51, %49 ]
  %58 = phi float [ 0.000000e+00, %36 ], [ %52, %49 ]
  %59 = call fastcc float @_ZL3cosf(float %0) #9
  br label %60

60:                                               ; preds = %54, %36
  %61 = phi float [ 0.000000e+00, %36 ], [ %59, %54 ]
  %62 = phi float [ 0.000000e+00, %36 ], [ %55, %54 ]
  %63 = phi float [ 0.000000e+00, %36 ], [ %56, %54 ]
  %64 = phi float [ 0.000000e+00, %36 ], [ %57, %54 ]
  %65 = phi float [ 0.000000e+00, %36 ], [ %58, %54 ]
  %66 = fadd float %64, %12
  br label %67

67:                                               ; preds = %60, %36
  %68 = phi float [ 0.000000e+00, %36 ], [ %66, %60 ]
  %69 = phi float [ 0.000000e+00, %36 ], [ %61, %60 ]
  %70 = phi float [ 0.000000e+00, %36 ], [ %62, %60 ]
  %71 = phi float [ 0.000000e+00, %36 ], [ %63, %60 ]
  %72 = phi float [ 0.000000e+00, %36 ], [ %64, %60 ]
  %73 = phi float [ 0.000000e+00, %36 ], [ %65, %60 ]
  %74 = fmul float %68, %73
  %75 = fmul float %69, %74
  %76 = fmul float %70, %71
  %77 = fsub float %75, %76
  br label %78

78:                                               ; preds = %67, %36
  %79 = phi float [ 0.000000e+00, %36 ], [ %77, %67 ]
  %80 = phi float [ 0.000000e+00, %36 ], [ %68, %67 ]
  %81 = phi float [ 0.000000e+00, %36 ], [ %69, %67 ]
  %82 = phi float [ 0.000000e+00, %36 ], [ %70, %67 ]
  %83 = phi float [ 0.000000e+00, %36 ], [ %71, %67 ]
  %84 = phi float [ 0.000000e+00, %36 ], [ %72, %67 ]
  %85 = phi float [ 0.000000e+00, %36 ], [ %73, %67 ]
  %86 = fmul float %80, %85
  %87 = fmul float %83, %86
  %88 = fmul float %81, %82
  %89 = fadd float %88, %87
  %90 = fadd float %89, 5.000000e+00
  %91 = fdiv float 1.000000e+00, %90
  %92 = fmul float %91, 3.000000e+01
  %93 = fmul float %80, %18
  %94 = fmul float %93, %19
  %95 = fmul float %79, %20
  %96 = fadd float %94, %95
  %97 = fmul float %96, %92
  %98 = fadd float %97, %14
  %99 = fptosi float %98 to i32
  %100 = fmul float %91, 1.500000e+01
  %101 = fmul float %93, %20
  %102 = fmul float %79, %19
  %103 = fsub float %101, %102
  %104 = fmul float %103, %100
  %105 = fadd float %104, %17
  %106 = fptosi float %105 to i32
  %107 = fmul float %82, %83
  %108 = fmul float %84, %85
  %109 = fmul float %81, %108
  %110 = fsub float %107, %109
  %111 = fmul float %19, %110
  %112 = fmul float %83, %108
  %113 = fsub float %111, %112
  %114 = fsub float %113, %88
  %115 = fmul float %84, %18
  %116 = fmul float %115, %20
  %117 = fsub float %114, %116
  %118 = fmul float %117, 8.000000e+00
  %119 = fptosi float %118 to i32
  %120 = icmp slt i32 %106, %5
  %121 = icmp sgt i32 %106, 0
  %122 = and i1 %120, %121
  %123 = icmp sgt i32 %99, 0
  %124 = select i1 %122, i1 %123, i1 false
  %125 = icmp slt i32 %99, %6
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %141

127:                                              ; preds = %78
  %128 = mul nsw i32 %106, %6
  %129 = add nsw i32 %128, %99
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %3, i64 %130
  %132 = load float, float* %131, align 4, !tbaa !13
  %133 = fcmp ogt float %91, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  store float %91, float* %131, align 4, !tbaa !13
  %135 = icmp sgt i32 %119, 0
  %136 = select i1 %135, i32 %119, i32 0
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1, !tbaa !10
  %140 = getelementptr inbounds i8, i8* %4, i64 %130
  store i8 %139, i8* %140, align 1, !tbaa !10
  br label %141

141:                                              ; preds = %134, %127, %78
  %142 = fadd double %37, 7.000000e-02
  %143 = fptrunc double %142 to float
  %144 = fpext float %143 to double
  %145 = fcmp olt double %144, 6.280000e+00
  br i1 %145, label %36, label %21, !llvm.loop !18

146:                                              ; preds = %227
  ret void

147:                                              ; preds = %227, %35
  %148 = phi double [ 0.000000e+00, %35 ], [ %232, %227 ]
  %149 = phi i32 [ 0, %35 ], [ %229, %227 ]
  %150 = phi float [ 0.000000e+00, %35 ], [ %231, %227 ]
  %151 = add nuw nsw i32 %149, 1
  %152 = sitofp i32 %149 to float
  %153 = fadd float %22, %152
  %154 = call fastcc float @_ZL3cosf(float %150) #9
  %155 = fcmp une float %153, 0.000000e+00
  %156 = fmul float %153, 2.000000e+00
  %157 = fmul float %154, 2.000000e+00
  %158 = select i1 %155, float %156, float %153
  %159 = select i1 %155, float %154, float %157
  %160 = call fastcc float @_ZL3sinf(float %150) #9
  %161 = fmul float %160, 2.000000e+00
  %162 = select i1 %24, float %160, float %161
  %163 = fadd float %159, %12
  %164 = fmul float %158, %163
  %165 = fmul float %27, %164
  %166 = fmul float %26, %162
  %167 = fsub float %165, %166
  %168 = fcmp une float %163, 0.000000e+00
  %169 = fmul float %167, 2.000000e+00
  %170 = fmul float %163, 2.000000e+00
  %171 = select i1 %168, float %163, float %170
  %172 = select i1 %168, float %169, float %167
  %173 = fmul float %158, %171
  %174 = fmul float %26, %173
  %175 = fmul float %27, %162
  %176 = fadd float %175, %174
  %177 = fadd float %176, 5.000000e+00
  %178 = fdiv float 1.000000e+00, %177
  %179 = fmul float %178, 3.000000e+01
  %180 = fmul float %18, %171
  %181 = fmul float %19, %180
  %182 = fmul float %20, %172
  %183 = fadd float %181, %182
  %184 = fmul float %183, %179
  %185 = fadd float %184, %14
  %186 = fptosi float %185 to i32
  %187 = fmul float %178, 1.500000e+01
  %188 = fmul float %180, %20
  %189 = fmul float %19, %172
  %190 = fsub float %188, %189
  %191 = fmul float %190, %187
  %192 = fadd float %191, %17
  %193 = fptosi float %192 to i32
  %194 = fmul float %158, %159
  %195 = fmul float %194, %27
  %196 = fsub float %166, %195
  %197 = fmul float %19, %196
  %198 = fmul float %194, %26
  %199 = fsub float %197, %198
  %200 = fsub float %199, %175
  %201 = fmul float %159, %18
  %202 = fmul float %201, %20
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

213:                                              ; preds = %147
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

227:                                              ; preds = %34, %220, %213, %147
  %228 = phi double [ %148, %213 ], [ %148, %147 ], [ %148, %220 ], [ 0.000000e+00, %34 ]
  %229 = phi i32 [ %151, %213 ], [ %151, %147 ], [ %151, %220 ], [ 0, %34 ]
  %230 = fadd double %228, 7.000000e-02
  %231 = fptrunc double %230 to float
  %232 = fpext float %231 to double
  %233 = icmp eq i32 %229, 90
  br i1 %233, label %146, label %147, !llvm.loop !19
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

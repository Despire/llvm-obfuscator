; ModuleID = 'output/opaque-predicates/ex7/ex7.ll'
source_filename = "input/opaque-predicates/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %7

6:                                                ; preds = %43
  ret void

7:                                                ; preds = %43, %4
  %8 = phi i64 [ 0, %4 ], [ %54, %43 ]
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 80
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  %14 = mul i32 %5, %5
  %15 = add i32 %14, %5
  %16 = mul i32 %15, 3
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = xor i1 %13, true
  %20 = and i1 %19, false
  %21 = and i1 %13, true
  %22 = or i1 %20, %21
  %23 = xor i1 %18, true
  %24 = and i1 %23, false
  %25 = and i1 %18, true
  %26 = or i1 %24, %25
  %27 = xor i1 %22, %26
  %28 = xor i1 %13, true
  %29 = xor i1 %18, true
  %30 = or i1 %28, %29
  %31 = xor i1 %30, true
  %32 = and i1 %31, true
  %33 = or i1 %27, %32
  %34 = xor i1 %11, true
  %35 = xor i1 %33, true
  %36 = or i1 %34, %35
  %37 = xor i1 %36, true
  %38 = and i1 %37, true
  br i1 %38, label %43, label %39

39:                                               ; preds = %7
  %40 = getelementptr inbounds i8, i8* %0, i64 %8
  %41 = load i8, i8* %40, align 1, !tbaa !10
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %39, %7
  %44 = phi i32 [ %42, %39 ], [ 10, %7 ]
  %45 = call i32 @putchar(i32 %44)
  %46 = load float, float* %1, align 4, !tbaa !13
  %47 = fpext float %46 to double
  %48 = fadd double %47, 4.000000e-05
  %49 = fptrunc double %48 to float
  store float %49, float* %1, align 4, !tbaa !13
  %50 = load float, float* %2, align 4, !tbaa !13
  %51 = fpext float %50 to double
  %52 = fadd double %51, 2.000000e-05
  %53 = fptrunc double %52 to float
  store float %53, float* %2, align 4, !tbaa !13
  %54 = add nuw nsw i64 %8, 1
  %55 = icmp eq i64 %54, 1761
  br i1 %55, label %6, label %7, !llvm.loop !15
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
  %18 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %19 = call fastcc float @_ZL3sinf(float %0) #9
  %20 = call fastcc float @_ZL3cosf(float %0) #9
  %21 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %22 = call fastcc float @_ZL3cosf(float %1) #9
  %23 = call fastcc float @_ZL3sinf(float %1) #9
  br label %28

24:                                               ; preds = %110
  %25 = fcmp une float %19, 0.000000e+00
  %26 = fmul float %19, 2.000000e+00
  %27 = select i1 %25, float %26, float %19
  br label %116

28:                                               ; preds = %110, %7
  %29 = phi double [ 0.000000e+00, %7 ], [ %113, %110 ]
  %30 = phi float [ 0.000000e+00, %7 ], [ %112, %110 ]
  %31 = call fastcc float @_ZL3cosf(float %30) #9
  %32 = call fastcc float @_ZL3sinf(float %30) #9
  %33 = fadd float %31, %12
  %34 = fmul float %18, %33
  %35 = fmul float %34, %20
  %36 = fmul float %19, %32
  %37 = fsub float %35, %36
  %38 = fmul float %19, %34
  %39 = fmul float %32, %20
  %40 = fadd float %38, %39
  %41 = fadd float %40, 5.000000e+00
  %42 = fdiv float 1.000000e+00, %41
  %43 = fmul float %42, 3.000000e+01
  %44 = fmul float %33, %21
  %45 = fmul float %44, %22
  %46 = fmul float %37, %23
  %47 = fadd float %45, %46
  %48 = fmul float %43, %47
  %49 = fadd float %48, %14
  %50 = fptosi float %49 to i32
  %51 = fmul float %42, 1.500000e+01
  %52 = fmul float %44, %23
  %53 = fmul float %37, %22
  %54 = fsub float %52, %53
  %55 = fmul float %51, %54
  %56 = fadd float %55, %17
  %57 = fptosi float %56 to i32
  %58 = fmul float %18, %31
  %59 = fmul float %58, %20
  %60 = fsub float %36, %59
  %61 = fmul float %60, %22
  %62 = fmul float %58, %19
  %63 = fsub float %61, %62
  %64 = fsub float %63, %39
  %65 = fmul float %31, %21
  %66 = fmul float %65, %23
  %67 = fsub float %64, %66
  %68 = fmul float %67, 8.000000e+00
  %69 = fptosi float %68 to i32
  %70 = icmp slt i32 %57, %5
  %71 = icmp sgt i32 %57, 0
  %72 = and i1 %70, %71
  %73 = icmp sgt i32 %50, 0
  %74 = select i1 %72, i1 %73, i1 false
  %75 = icmp slt i32 %50, %6
  %76 = select i1 %74, i1 %75, i1 false
  %77 = mul i32 %13, %13
  %78 = add i32 %77, %13
  %79 = mul i32 %78, 3
  %80 = srem i32 %79, 2
  %81 = icmp eq i32 %80, 0
  %82 = mul i32 %13, %13
  %83 = add i32 %82, %13
  %84 = srem i32 %83, 2
  %85 = icmp eq i32 %84, 0
  %86 = xor i1 %81, true
  %87 = xor i1 %85, true
  %88 = or i1 %86, %87
  %89 = xor i1 %88, true
  %90 = and i1 %89, true
  %91 = xor i1 %76, true
  %92 = xor i1 %90, true
  %93 = or i1 %91, %92
  %94 = xor i1 %93, true
  %95 = and i1 %94, true
  br i1 %95, label %96, label %110

96:                                               ; preds = %28
  %97 = mul nsw i32 %57, %6
  %98 = add nsw i32 %97, %50
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %3, i64 %99
  %101 = load float, float* %100, align 4, !tbaa !13
  %102 = fcmp ogt float %42, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  store float %42, float* %100, align 4, !tbaa !13
  %104 = icmp sgt i32 %69, 0
  %105 = select i1 %104, i32 %69, i32 0
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1, !tbaa !10
  %109 = getelementptr inbounds i8, i8* %4, i64 %99
  store i8 %108, i8* %109, align 1, !tbaa !10
  br label %110

110:                                              ; preds = %103, %96, %28
  %111 = fadd double %29, 7.000000e-02
  %112 = fptrunc double %111 to float
  %113 = fpext float %112 to double
  %114 = fcmp olt double %113, 6.280000e+00
  br i1 %114, label %28, label %24, !llvm.loop !18

115:                                              ; preds = %214
  ret void

116:                                              ; preds = %214, %24
  %117 = phi double [ 0.000000e+00, %24 ], [ %217, %214 ]
  %118 = phi i32 [ 0, %24 ], [ %120, %214 ]
  %119 = phi float [ 0.000000e+00, %24 ], [ %216, %214 ]
  %120 = add nuw nsw i32 %118, 1
  %121 = sitofp i32 %118 to float
  %122 = fadd float %18, %121
  %123 = call fastcc float @_ZL3cosf(float %119) #9
  %124 = fcmp une float %122, 0.000000e+00
  %125 = fmul float %122, 2.000000e+00
  %126 = fmul float %123, 2.000000e+00
  %127 = select i1 %124, float %123, float %126
  %128 = select i1 %124, float %125, float %122
  %129 = call fastcc float @_ZL3sinf(float %119) #9
  %130 = fmul float %129, 2.000000e+00
  %131 = select i1 %25, float %129, float %130
  %132 = fadd float %127, %12
  %133 = fmul float %128, %132
  %134 = fmul float %20, %133
  %135 = fmul float %27, %131
  %136 = fsub float %134, %135
  %137 = fcmp une float %132, 0.000000e+00
  %138 = fmul float %136, 2.000000e+00
  %139 = fmul float %132, 2.000000e+00
  %140 = select i1 %137, float %138, float %136
  %141 = select i1 %137, float %132, float %139
  %142 = fmul float %128, %141
  %143 = fmul float %27, %142
  %144 = fmul float %20, %131
  %145 = fadd float %144, %143
  %146 = fadd float %145, 5.000000e+00
  %147 = fdiv float 1.000000e+00, %146
  %148 = fmul float %147, 3.000000e+01
  %149 = fmul float %21, %141
  %150 = fmul float %22, %149
  %151 = fmul float %23, %140
  %152 = fadd float %150, %151
  %153 = fmul float %152, %148
  %154 = fadd float %153, %14
  %155 = fptosi float %154 to i32
  %156 = fmul float %147, 1.500000e+01
  %157 = fmul float %149, %23
  %158 = fmul float %22, %140
  %159 = fsub float %157, %158
  %160 = fmul float %159, %156
  %161 = fadd float %160, %17
  %162 = fptosi float %161 to i32
  %163 = fmul float %128, %127
  %164 = fmul float %163, %20
  %165 = fsub float %135, %164
  %166 = fmul float %22, %165
  %167 = fmul float %163, %27
  %168 = fsub float %166, %167
  %169 = fsub float %168, %144
  %170 = fmul float %127, %21
  %171 = fmul float %170, %23
  %172 = fsub float %169, %171
  %173 = fmul float %172, 8.000000e+00
  %174 = fptosi float %173 to i32
  %175 = icmp slt i32 %162, %5
  %176 = icmp sgt i32 %162, 0
  %177 = and i1 %175, %176
  %178 = icmp sgt i32 %155, 0
  %179 = select i1 %177, i1 %178, i1 false
  %180 = icmp slt i32 %155, %6
  %181 = select i1 %179, i1 %180, i1 false
  %182 = mul i32 %5, %5
  %183 = add i32 %182, %5
  %184 = mul i32 %183, 3
  %185 = srem i32 %184, 2
  %186 = icmp eq i32 %185, 0
  %187 = mul i32 %5, %5
  %188 = add i32 %187, %5
  %189 = srem i32 %188, 2
  %190 = icmp eq i32 %189, 0
  %191 = xor i1 %186, true
  %192 = or i1 %191, %190
  %193 = xor i1 %186, true
  %194 = sub i1 %192, %193
  %195 = xor i1 %181, true
  %196 = xor i1 %194, true
  %197 = or i1 %195, %196
  %198 = xor i1 %197, true
  %199 = and i1 %198, true
  br i1 %199, label %200, label %214

200:                                              ; preds = %116
  %201 = mul nsw i32 %162, %6
  %202 = add nsw i32 %201, %155
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %3, i64 %203
  %205 = load float, float* %204, align 4, !tbaa !13
  %206 = fcmp ogt float %147, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %200
  store float %147, float* %204, align 4, !tbaa !13
  %208 = icmp sgt i32 %174, 0
  %209 = select i1 %208, i32 %174, i32 0
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %210
  %212 = load i8, i8* %211, align 1, !tbaa !10
  %213 = getelementptr inbounds i8, i8* %4, i64 %203
  store i8 %212, i8* %213, align 1, !tbaa !10
  br label %214

214:                                              ; preds = %207, %200, %116
  %215 = fadd double %117, 7.000000e-02
  %216 = fptrunc double %215 to float
  %217 = fpext float %216 to double
  %218 = icmp eq i32 %120, 90
  br i1 %218, label %115, label %116, !llvm.loop !19
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
  %17 = mul i32 %10, 2
  %18 = mul i32 %10, 2
  %19 = add i32 2, %18
  %20 = mul i32 %17, %19
  %21 = srem i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = mul i32 %10, %10
  %24 = mul i32 %23, %10
  %25 = add i32 %24, %10
  %26 = srem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %22, %28
  %30 = and i1 %29, %22
  %31 = xor i1 %16, true
  %32 = or i1 %31, %30
  %33 = xor i1 %16, true
  %34 = sub i1 %32, %33
  br i1 %34, label %36, label %11, !llvm.loop !20

35:                                               ; preds = %36
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %47

36:                                               ; preds = %36, %11
  %37 = phi i64 [ %48, %36 ], [ 0, %11 ]
  %38 = phi i32 [ %47, %36 ], [ 0, %11 ]
  %39 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %37
  %40 = load i8, i8* %39, align 1, !tbaa !10
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %38, %41
  %43 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %37
  %44 = load float, float* %43, align 4, !tbaa !13
  %45 = sitofp i32 %42 to float
  %46 = fadd float %44, %45
  %47 = fptosi float %46 to i32
  %48 = add nuw nsw i64 %37, 1
  %49 = icmp eq i64 %48, 1760
  %50 = and i32 %15, 1
  %51 = icmp eq i32 %50, 0
  %52 = mul i32 %15, %15
  %53 = add i32 %52, %15
  %54 = mul i32 %53, 3
  %55 = srem i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = and i1 %51, %56
  %58 = xor i1 %51, %56
  %59 = or i1 %57, %58
  %60 = xor i1 %49, true
  %61 = xor i1 %59, true
  %62 = or i1 %60, %61
  %63 = xor i1 %62, true
  %64 = and i1 %63, true
  br i1 %64, label %35, label %36, !llvm.loop !21
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

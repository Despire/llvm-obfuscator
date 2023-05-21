; ModuleID = 'output/jump-into-loop/ex8/ex8.ll'
source_filename = "input/jump-into-loop/ex8/ex8.cpp"
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
  br label %39

19:                                               ; preds = %4
  br label %21

20:                                               ; preds = %84
  ret void

21:                                               ; preds = %39, %84, %19
  %22 = phi i64 [ 0, %19 ], [ %95, %84 ], [ 0, %39 ]
  %23 = trunc i64 %22 to i32
  %24 = urem i32 %23, 80
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %84, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %0, i64 %22
  %28 = load i8, i8* %27, align 1, !tbaa !10
  %29 = mul i64 %22, %22
  %30 = add i64 %29, %22
  %31 = mul i64 %30, 3
  %32 = srem i64 %31, 2
  %33 = icmp eq i64 %32, 0
  %34 = mul i64 %22, %22
  %35 = add i64 %34, %22
  %36 = srem i64 %35, 2
  %37 = icmp eq i64 %36, 0
  %38 = and i1 %33, %37
  br i1 %38, label %82, label %39

39:                                               ; preds = %18, %39, %26
  %40 = sdiv i64 37, 66
  %41 = mul i64 14, 29
  %42 = sdiv i64 123, 107
  %43 = mul i64 62, 19
  %44 = sub i64 86, 102
  %45 = sub i64 31, 98
  %46 = sdiv i64 29, 36
  %47 = add i64 %41, 119
  %48 = sdiv i64 %46, 118
  %49 = sdiv i64 %40, 16
  %50 = add i64 %42, 3
  %51 = mul i64 %42, 16
  %52 = mul i64 %40, 22
  %53 = sdiv i64 %42, 106
  %54 = mul i64 %45, 109
  %55 = trunc i64 %47 to i32
  %56 = add i32 0, %55
  %57 = trunc i64 %48 to i32
  %58 = add i32 %56, %57
  %59 = trunc i64 %49 to i32
  %60 = add i32 %58, %59
  %61 = trunc i64 %50 to i32
  %62 = add i32 %60, %61
  %63 = trunc i64 %51 to i32
  %64 = add i32 %62, %63
  %65 = trunc i64 %52 to i32
  %66 = add i32 %64, %65
  %67 = trunc i64 %53 to i32
  %68 = add i32 %66, %67
  %69 = trunc i64 %54 to i32
  %70 = add i32 %68, %69
  %71 = mul i32 %70, 2
  %72 = mul i32 %70, 2
  %73 = add i32 2, %72
  %74 = mul i32 %71, %73
  %75 = srem i32 %74, 4
  %76 = icmp eq i32 %75, 0
  %77 = mul i32 %70, %70
  %78 = add i32 %77, %70
  %79 = srem i32 %78, 2
  %80 = icmp eq i32 %79, 0
  %81 = or i1 %76, %80
  br i1 %81, label %21, label %39

82:                                               ; preds = %26
  %83 = sext i8 %28 to i32
  br label %84

84:                                               ; preds = %82, %21
  %85 = phi i32 [ %83, %82 ], [ 10, %21 ]
  %86 = call i32 @putchar(i32 %85)
  %87 = load float, float* %1, align 4, !tbaa !13
  %88 = fpext float %87 to double
  %89 = fadd double %88, 4.000000e-05
  %90 = fptrunc double %89 to float
  store float %90, float* %1, align 4, !tbaa !13
  %91 = load float, float* %2, align 4, !tbaa !13
  %92 = fpext float %91 to double
  %93 = fadd double %92, 2.000000e-05
  %94 = fptrunc double %93 to float
  store float %94, float* %2, align 4, !tbaa !13
  %95 = add nuw nsw i64 %22, 1
  %96 = icmp eq i64 %95, 1761
  br i1 %96, label %20, label %21, !llvm.loop !15
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
  %24 = mul i32 %2, 2
  %25 = mul i32 %2, 2
  %26 = add i32 2, %25
  %27 = mul i32 %24, %26
  %28 = srem i32 %27, 4
  %29 = icmp eq i32 %28, 0
  %30 = mul i32 %2, %2
  %31 = add i32 %30, %2
  %32 = srem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = and i1 %29, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %7
  br label %111

36:                                               ; preds = %7
  br label %38

37:                                               ; preds = %153
  ret void

38:                                               ; preds = %111, %153, %36
  %39 = phi double [ 0.000000e+00, %36 ], [ %155, %153 ], [ 0.000000e+00, %111 ]
  %40 = phi float [ 0.000000e+00, %36 ], [ %154, %153 ], [ 0.000000e+00, %111 ]
  %41 = call fastcc float @_ZL3cosf(float %40) #9
  %42 = call fastcc float @_ZL3sinf(float %40) #9
  %43 = fadd float %41, %12
  %44 = fmul float %18, %43
  %45 = fmul float %44, %20
  %46 = fmul float %19, %42
  %47 = fsub float %45, %46
  %48 = fmul float %19, %44
  %49 = fmul float %42, %20
  %50 = fadd float %48, %49
  %51 = fadd float %50, 5.000000e+00
  %52 = fdiv float 1.000000e+00, %51
  %53 = fmul float %43, %21
  %54 = fmul float %52, 1.500000e+01
  %55 = fmul float %53, %23
  %56 = fmul float %47, %22
  %57 = fsub float %55, %56
  %58 = fmul float %54, %57
  %59 = fadd float %58, %17
  %60 = fptosi float %59 to i32
  %61 = fmul float %18, %41
  %62 = fmul float %61, %20
  %63 = fsub float %46, %62
  %64 = fmul float %63, %22
  %65 = fmul float %61, %19
  %66 = fsub float %64, %65
  %67 = fsub float %66, %49
  %68 = fmul float %41, %21
  %69 = fmul float %68, %23
  %70 = fsub float %67, %69
  %71 = fmul float %70, 8.000000e+00
  %72 = fmul float %52, 3.000000e+01
  %73 = fmul float %53, %22
  %74 = fmul float %47, %23
  %75 = fadd float %73, %74
  %76 = fmul float %72, %75
  %77 = fadd float %76, %14
  %78 = fptosi float %77 to i32
  %79 = fptosi float %71 to i32
  %80 = icmp slt i32 %60, %5
  %81 = icmp sgt i32 %60, 0
  %82 = and i1 %80, %81
  %83 = icmp sgt i32 %78, 0
  %84 = select i1 %82, i1 %83, i1 false
  %85 = icmp slt i32 %78, %6
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %101

87:                                               ; preds = %38
  %88 = mul nsw i32 %60, %6
  %89 = add nsw i32 %88, %78
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %3, i64 %90
  %92 = load float, float* %91, align 4, !tbaa !13
  %93 = fcmp ogt float %52, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  store float %52, float* %91, align 4, !tbaa !13
  %95 = icmp sgt i32 %79, 0
  %96 = select i1 %95, i32 %79, i32 0
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1, !tbaa !10
  %100 = getelementptr inbounds i8, i8* %4, i64 %90
  store i8 %99, i8* %100, align 1, !tbaa !10
  br label %101

101:                                              ; preds = %94, %87, %38
  %102 = fadd double %39, 7.000000e-02
  %103 = and i32 %5, 1
  %104 = icmp eq i32 %103, 0
  %105 = mul i32 %5, %5
  %106 = add i32 %105, %5
  %107 = mul i32 %106, 3
  %108 = srem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = or i1 %104, %109
  br i1 %110, label %153, label %111

111:                                              ; preds = %35, %111, %101
  %112 = mul i32 106, 33
  %113 = sdiv i32 69, 65
  %114 = add i32 103, 45
  %115 = sdiv i32 101, 45
  %116 = mul i32 0, 118
  %117 = sdiv i32 41, 117
  %118 = add i32 35, 100
  %119 = add i32 64, 56
  %120 = mul i32 98, 63
  %121 = sub i32 %114, 123
  %122 = sub i32 %117, 45
  %123 = mul i32 %115, 60
  %124 = mul i32 %119, 5
  %125 = add i32 %118, 31
  %126 = mul i32 %115, 66
  %127 = sub i32 %119, 7
  %128 = mul i32 %119, 43
  %129 = add i32 %113, 15
  %130 = mul i32 %116, 32
  %131 = add i32 0, %121
  %132 = add i32 %131, %122
  %133 = add i32 %132, %123
  %134 = add i32 %133, %124
  %135 = add i32 %134, %125
  %136 = add i32 %135, %126
  %137 = add i32 %136, %127
  %138 = add i32 %137, %128
  %139 = add i32 %138, %129
  %140 = add i32 %139, %130
  %141 = mul i32 %140, 2
  %142 = mul i32 %140, 2
  %143 = add i32 2, %142
  %144 = mul i32 %141, %143
  %145 = srem i32 %144, 4
  %146 = icmp eq i32 %145, 0
  %147 = mul i32 %140, %140
  %148 = mul i32 %147, %140
  %149 = add i32 %148, %140
  %150 = srem i32 %149, 2
  %151 = icmp eq i32 %150, 0
  %152 = and i1 %146, %151
  br i1 %152, label %38, label %111

153:                                              ; preds = %101
  %154 = fptrunc double %102 to float
  %155 = fpext float %154 to double
  %156 = fcmp olt double %155, 6.280000e+00
  br i1 %156, label %38, label %37, !llvm.loop !18
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
  br i1 %16, label %.preheader, label %11, !llvm.loop !19

.preheader:                                       ; preds = %11
  %17 = mul i32 %15, 2
  %18 = mul i32 %15, 2
  %19 = add i32 2, %18
  %20 = mul i32 %17, %19
  %21 = srem i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = mul i32 %15, %15
  %24 = add i32 %23, %15
  %25 = srem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %22, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %.preheader
  br label %49

29:                                               ; preds = %.preheader
  br label %31

30:                                               ; preds = %81
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %87

31:                                               ; preds = %49, %29, %81
  %32 = phi i64 [ %88, %81 ], [ 0, %29 ], [ 0, %49 ]
  %33 = phi i32 [ %87, %81 ], [ 0, %29 ], [ 0, %49 ]
  %34 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %32
  %35 = load i8, i8* %34, align 1, !tbaa !10
  %36 = sext i8 %35 to i32
  %37 = mul i32 %10, 2
  %38 = mul i32 %10, 2
  %39 = add i32 2, %38
  %40 = mul i32 %37, %39
  %41 = srem i32 %40, 4
  %42 = icmp eq i32 %41, 0
  %43 = mul i32 %10, %10
  %44 = mul i32 %43, %10
  %45 = add i32 %44, %10
  %46 = srem i32 %45, 2
  %47 = icmp eq i32 %46, 0
  %48 = and i1 %42, %47
  br i1 %48, label %81, label %49

49:                                               ; preds = %28, %49, %31
  %50 = sub i32 39, 39
  %51 = add i32 64, 76
  %52 = add i32 22, 17
  %53 = sdiv i32 123, 82
  %54 = mul i32 86, 104
  %55 = sub i32 110, 19
  %56 = mul i32 76, 92
  %57 = mul i32 25, 2
  %58 = sub i32 29, 26
  %59 = mul i32 %50, 117
  %60 = add i32 %51, 117
  %61 = mul i32 %57, 123
  %62 = add i32 %52, 49
  %63 = add i32 %50, 29
  %64 = mul i32 %50, 35
  %65 = add i32 %50, 104
  %66 = add i32 0, %59
  %67 = add i32 %66, %60
  %68 = add i32 %67, %61
  %69 = add i32 %68, %62
  %70 = add i32 %69, %63
  %71 = add i32 %70, %64
  %72 = add i32 %71, %65
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  %75 = mul i32 %72, %72
  %76 = add i32 %75, %72
  %77 = mul i32 %76, 3
  %78 = srem i32 %77, 2
  %79 = icmp eq i32 %78, 0
  %80 = or i1 %74, %79
  br i1 %80, label %31, label %49

81:                                               ; preds = %31
  %82 = add nsw i32 %33, %36
  %83 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %32
  %84 = load float, float* %83, align 4, !tbaa !13
  %85 = sitofp i32 %82 to float
  %86 = fadd float %84, %85
  %87 = fptosi float %86 to i32
  %88 = add nuw nsw i64 %32, 1
  %89 = icmp eq i64 %88, 1760
  br i1 %89, label %30, label %31, !llvm.loop !20
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

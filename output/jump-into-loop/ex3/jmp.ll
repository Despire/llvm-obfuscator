; ModuleID = 'output/jump-into-loop/ex3/ex3.ll'
source_filename = "input/jump-into-loop/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@CHARS = local_unnamed_addr global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @_Z6updatePfS_(float* %0, float* %1) local_unnamed_addr #0 {
  %3 = icmp eq float* %0, null
  %4 = icmp eq float* %1, null
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = load float, float* %0, align 4, !tbaa !10
  %8 = fpext float %7 to double
  %9 = fadd double %8, 4.000000e-05
  %10 = fptrunc double %9 to float
  store float %10, float* %0, align 4, !tbaa !10
  %11 = load float, float* %1, align 4, !tbaa !10
  %12 = fpext float %11 to double
  %13 = fadd double %12, 2.000000e-05
  %14 = fptrunc double %13 to float
  store float %14, float* %1, align 4, !tbaa !10
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %6 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable
define i32 @_Z6renderPfS_Pcm(float* %0, float* %1, i8* nocapture %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 1760
  br i1 %5, label %.preheader, label %81

.preheader:                                       ; preds = %4
  %6 = mul i64 %3, %3
  %7 = add i64 %6, %3
  %8 = mul i64 %7, 3
  %9 = srem i64 %8, 2
  %10 = icmp eq i64 %9, 0
  %11 = mul i64 %3, %3
  %12 = add i64 %11, %3
  %13 = srem i64 %12, 2
  %14 = icmp eq i64 %13, 0
  %15 = and i1 %10, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %.preheader
  br label %30

17:                                               ; preds = %.preheader
  br label %67

18:                                               ; preds = %75
  %19 = mul i32 %69, 2
  %20 = mul i32 %69, 2
  %21 = add i32 2, %20
  %22 = mul i32 %19, %21
  %23 = srem i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = mul i32 %69, %69
  %26 = add i32 %25, %69
  %27 = srem i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = and i1 %24, %28
  br i1 %29, label %65, label %30

30:                                               ; preds = %16, %30, %18
  %31 = add i32 22, 96
  %32 = mul i32 12, 18
  %33 = mul i32 7, 5
  %34 = sdiv i32 67, 54
  %35 = mul i32 106, 62
  %36 = sub i32 76, 111
  %37 = sub i32 61, 7
  %38 = add i32 %34, 45
  %39 = sub i32 %31, 58
  %40 = sdiv i32 %32, 102
  %41 = sdiv i32 %37, 35
  %42 = sdiv i32 %32, 3
  %43 = sdiv i32 %35, 113
  %44 = sub i32 %34, 111
  %45 = sub i32 %33, 82
  %46 = add i32 0, %38
  %47 = add i32 %46, %39
  %48 = add i32 %47, %40
  %49 = add i32 %48, %41
  %50 = add i32 %49, %42
  %51 = add i32 %50, %43
  %52 = add i32 %51, %44
  %53 = add i32 %52, %45
  %54 = mul i32 %53, 2
  %55 = mul i32 %53, 2
  %56 = add i32 2, %55
  %57 = mul i32 %54, %56
  %58 = srem i32 %57, 4
  %59 = icmp eq i32 %58, 0
  %60 = mul i32 %53, %53
  %61 = add i32 %60, %53
  %62 = srem i32 %61, 2
  %63 = icmp eq i32 %62, 0
  %64 = and i1 %59, %63
  br i1 %64, label %67, label %30

65:                                               ; preds = %18
  %66 = icmp eq i64 %80, 1760
  br i1 %66, label %.loopexit, label %67, !llvm.loop !14

67:                                               ; preds = %30, %17, %65
  %68 = phi i64 [ %80, %65 ], [ 0, %17 ], [ 0, %30 ]
  %69 = trunc i64 %68 to i32
  %70 = urem i32 %69, 80
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds i8, i8* %2, i64 %68
  %74 = load i8, i8* %73, align 1, !tbaa !17
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i8 [ %74, %72 ], [ 10, %67 ]
  %77 = getelementptr inbounds i8, i8* %2, i64 %68
  store i8 %76, i8* %77, align 1, !tbaa !17
  %78 = call i32 @_Z6updatePfS_(float* %0, float* %1)
  %79 = icmp eq i32 %78, 0
  %80 = add nuw nsw i64 %68, 1
  br i1 %79, label %18, label %.loopexit

.loopexit:                                        ; preds = %65, %75
  %.ph = phi i32 [ 0, %65 ], [ %78, %75 ]
  br label %81

81:                                               ; preds = %.loopexit, %4
  %82 = phi i32 [ 2, %4 ], [ %.ph, %.loopexit ]
  ret i32 %82
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind ssp willreturn writeonly uwtable
define i32 @_Z5clearPcmPfm(i8* %0, i64 %1, float* %2, i64 %3) local_unnamed_addr #3 {
  %5 = icmp eq i8* %0, null
  %6 = icmp eq float* %2, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = icmp ne i64 %1, 1760
  %10 = icmp ne i64 %3, 7040
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false)
  %13 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(7040) %13, i8 0, i64 7040, i1 false)
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i32 [ 0, %12 ], [ 2, %4 ], [ 2, %8 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #5 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca [1760 x float], align 4
  %4 = alloca [1760 x i8], align 1
  %5 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10
  store float 0.000000e+00, float* %1, align 4, !tbaa !10
  %6 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10
  store float 0.000000e+00, float* %2, align 4, !tbaa !10
  %7 = bitcast [1760 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %7) #10
  %8 = getelementptr inbounds [1760 x i8], [1760 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %8) #10
  %9 = getelementptr inbounds [1760 x float], [1760 x float]* %3, i64 0, i64 0
  %10 = call fastcc i32 @_ZL9main_loopPfS_PcS_mm(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %9, i64 1760, i64 7040)
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal fastcc i32 @_ZL9main_loopPfS_PcS_mm(float* %0, float* %1, i8* %2, float* %3, i64 %4, i64 %5) unnamed_addr #6 {
  %7 = call i32 @_Z5clearPcmPfm(i8* %2, i64 %4, float* %3, i64 %5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %107

9:                                                ; preds = %6
  %10 = load i8, i8* %2, align 1, !tbaa !17
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, i8* %2, i64 1
  %13 = load i8, i8* %12, align 1, !tbaa !17
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %14, %11
  %16 = and i64 %5, 1
  %17 = icmp eq i64 %16, 0
  %18 = mul i64 %5, %5
  %19 = add i64 %18, %5
  %20 = mul i64 %19, 3
  %21 = srem i64 %20, 2
  %22 = icmp eq i64 %21, 0
  %23 = or i1 %17, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %9
  br label %45

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %45, %84, %25
  %27 = phi double [ 0.000000e+00, %25 ], [ %95, %84 ], [ 0.000000e+00, %45 ]
  %28 = phi float [ 0.000000e+00, %25 ], [ %94, %84 ], [ 0.000000e+00, %45 ]
  %29 = phi i32 [ %15, %25 ], [ %91, %84 ], [ 0, %45 ]
  %30 = call fastcc i32 @_ZL10inner_loopfPfS_PcS_mm(float %28, float* %0, float* %1, i8* nonnull %2, float* %3, i64 %4, i64 %5)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %97

34:                                               ; preds = %26
  %35 = add i32 %29, 1
  %36 = load i8, i8* %2, align 1, !tbaa !17
  %37 = sdiv i8 %36, 10
  store i8 %37, i8* %2, align 1, !tbaa !17
  %38 = and i32 %15, 1
  %39 = icmp eq i32 %38, 1
  %40 = mul i32 %15, %15
  %41 = add i32 %40, %15
  %42 = srem i32 %41, 2
  %43 = icmp eq i32 %42, 0
  %44 = or i1 %39, %43
  br i1 %44, label %81, label %45

45:                                               ; preds = %24, %45, %34
  %46 = mul i32 113, 86
  %47 = sdiv i32 59, 12
  %48 = sdiv i32 121, 69
  %49 = mul i32 28, 55
  %50 = sdiv i32 109, 79
  %51 = sub i32 74, 0
  %52 = sub i32 93, 98
  %53 = sub i32 43, 20
  %54 = sub i32 %48, 80
  %55 = sdiv i32 %46, 104
  %56 = mul i32 %49, 106
  %57 = mul i32 %53, 4
  %58 = sub i32 %53, 11
  %59 = mul i32 %49, 76
  %60 = mul i32 %52, 65
  %61 = sub i32 %49, 125
  %62 = add i32 0, %54
  %63 = add i32 %62, %55
  %64 = add i32 %63, %56
  %65 = add i32 %64, %57
  %66 = add i32 %65, %58
  %67 = add i32 %66, %59
  %68 = add i32 %67, %60
  %69 = add i32 %68, %61
  %70 = mul i32 %69, 2
  %71 = mul i32 %69, 2
  %72 = add i32 2, %71
  %73 = mul i32 %70, %72
  %74 = srem i32 %73, 4
  %75 = icmp eq i32 %74, 0
  %76 = mul i32 %69, %69
  %77 = add i32 %76, %69
  %78 = srem i32 %77, 2
  %79 = icmp eq i32 %78, 0
  %80 = or i1 %75, %79
  br i1 %80, label %26, label %45

81:                                               ; preds = %34
  %82 = add i8 %36, 9
  %83 = icmp ult i8 %82, 19
  br i1 %83, label %.loopexit, label %84

84:                                               ; preds = %81
  %85 = add i8 %36, 19
  %86 = icmp ult i8 %85, 10
  %87 = shl i32 %29, 1
  %88 = mul i32 %87, %35
  %89 = trunc i32 %88 to i8
  %90 = select i1 %86, i8 1, i8 %89
  %91 = select i1 %86, i32 %35, i32 %29
  %92 = add i8 %90, %37
  store i8 %92, i8* %2, align 1, !tbaa !17
  %93 = fadd double %27, 7.000000e-02
  %94 = fptrunc double %93 to float
  %95 = fpext float %94 to double
  %96 = fcmp olt double %95, 6.280000e+00
  br i1 %96, label %26, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %81, %84
  br label %97

97:                                               ; preds = %.loopexit, %32
  br i1 %31, label %98, label %107

98:                                               ; preds = %97
  %99 = load i8, i8* %2, align 1, !tbaa !17
  %100 = add i8 %99, 9
  %101 = icmp ult i8 %100, 19
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = sdiv i8 %99, 10
  %104 = sext i8 %103 to i32
  br label %107

105:                                              ; preds = %98
  %106 = call i32 @_Z6renderPfS_Pcm(float* %0, float* %1, i8* nonnull %2, i64 %4)
  br label %107

107:                                              ; preds = %105, %102, %97, %6
  %108 = phi i32 [ %7, %6 ], [ %104, %102 ], [ %30, %97 ], [ %106, %105 ]
  ret i32 %108
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable
define internal fastcc i32 @_ZL10inner_loopfPfS_PcS_mm(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4, i64 %5, i64 %6) unnamed_addr #1 {
  %8 = icmp eq float* %1, null
  %9 = icmp eq float* %2, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq i8* %3, null
  %12 = select i1 %10, i1 true, i1 %11
  %13 = icmp eq float* %4, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %155, label %15

15:                                               ; preds = %7
  %16 = icmp ne i64 %5, 1760
  %17 = icmp ne i64 %6, 7040
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %155, label %19

19:                                               ; preds = %15
  %20 = call fastcc float @_ZL3cosf(float %0) #10
  %21 = call fastcc float @_ZL3sinf(float %0) #10
  %22 = fadd float %20, 2.000000e+00
  %23 = mul i64 %6, 2
  %24 = mul i64 %6, 2
  %25 = add i64 2, %24
  %26 = mul i64 %23, %25
  %27 = srem i64 %26, 4
  %28 = icmp eq i64 %27, 0
  %29 = mul i64 %6, %6
  %30 = add i64 %29, %6
  %31 = srem i64 %30, 2
  %32 = icmp eq i64 %31, 0
  %33 = and i1 %28, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  br label %120

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %120, %153, %35
  %37 = phi double [ 0.000000e+00, %35 ], [ %107, %153 ], [ 0.000000e+00, %120 ]
  %38 = phi float [ 0.000000e+00, %35 ], [ %106, %153 ], [ 0.000000e+00, %120 ]
  %39 = call fastcc float @_ZL3sinf(float %38) #10
  %40 = load float, float* %1, align 4, !tbaa !10
  %41 = call fastcc float @_ZL3sinf(float %40) #10
  %42 = call fastcc float @_ZL3cosf(float %40) #10
  %43 = fmul float %39, %22
  %44 = fmul float %43, %41
  %45 = fmul float %21, %42
  %46 = fadd float %44, %45
  %47 = fadd float %46, 5.000000e+00
  %48 = fdiv float 1.000000e+00, %47
  %49 = call fastcc float @_ZL3cosf(float %38) #10
  %50 = load float, float* %2, align 4, !tbaa !10
  %51 = call fastcc float @_ZL3cosf(float %50) #10
  %52 = call fastcc float @_ZL3sinf(float %50) #10
  %53 = fmul float %43, %42
  %54 = fmul float %41, %21
  %55 = fsub float %53, %54
  %56 = fmul float %48, 3.000000e+01
  %57 = fmul float %22, %49
  %58 = fmul float %57, %51
  %59 = fmul float %55, %52
  %60 = fsub float %58, %59
  %61 = fmul float %56, %60
  %62 = fadd float %61, 4.000000e+01
  %63 = fptosi float %62 to i32
  %64 = fmul float %48, 1.500000e+01
  %65 = fmul float %57, %52
  %66 = fmul float %55, %51
  %67 = fadd float %66, %65
  %68 = fmul float %64, %67
  %69 = fadd float %68, 1.200000e+01
  %70 = fptosi float %69 to i32
  %71 = fmul float %39, %20
  %72 = fmul float %71, %42
  %73 = fsub float %54, %72
  %74 = fmul float %73, %51
  %75 = fmul float %71, %41
  %76 = fsub float %74, %75
  %77 = fsub float %76, %45
  %78 = fmul float %20, %49
  %79 = fmul float %78, %52
  %80 = fsub float %77, %79
  %81 = fmul float %80, 8.000000e+00
  %82 = fptosi float %81 to i32
  %83 = add i32 %70, -1
  %84 = icmp ult i32 %83, 21
  %85 = icmp sgt i32 %63, 0
  %86 = select i1 %84, i1 %85, i1 false
  %87 = icmp slt i32 %63, 80
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %104

89:                                               ; preds = %36
  %90 = mul nsw i32 %70, 80
  %91 = add nsw i32 %90, %63
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %4, i64 %92
  %94 = load float, float* %93, align 4, !tbaa !10
  %95 = fcmp ogt float %48, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  store float %48, float* %93, align 4, !tbaa !10
  %97 = load i8*, i8** @CHARS, align 8, !tbaa !19
  %98 = icmp sgt i32 %82, 0
  %99 = select i1 %98, i32 %82, i32 0
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !17
  %103 = getelementptr inbounds i8, i8* %3, i64 %92
  store i8 %102, i8* %103, align 1, !tbaa !17
  br label %104

104:                                              ; preds = %96, %89, %36
  %105 = fadd double %37, 2.000000e-02
  %106 = fptrunc double %105 to float
  %107 = fpext float %106 to double
  %108 = mul i32 %63, 2
  %109 = mul i32 %63, 2
  %110 = add i32 2, %109
  %111 = mul i32 %108, %110
  %112 = srem i32 %111, 4
  %113 = icmp eq i32 %112, 0
  %114 = mul i32 %63, %63
  %115 = mul i32 %114, %63
  %116 = add i32 %115, %63
  %117 = srem i32 %116, 2
  %118 = icmp eq i32 %117, 0
  %119 = and i1 %113, %118
  br i1 %119, label %153, label %120

120:                                              ; preds = %34, %120, %104
  %121 = mul i32 118, 20
  %122 = add i32 113, 78
  %123 = sdiv i32 77, 105
  %124 = mul i32 57, 115
  %125 = mul i32 27, 81
  %126 = add i32 14, 44
  %127 = add i32 116, 96
  %128 = mul i32 26, 68
  %129 = sdiv i32 %122, 76
  %130 = sdiv i32 %128, 104
  %131 = add i32 %124, 81
  %132 = sub i32 %126, 107
  %133 = add i32 %125, 45
  %134 = sub i32 %122, 117
  %135 = sdiv i32 %123, 10
  %136 = add i32 0, %129
  %137 = add i32 %136, %130
  %138 = add i32 %137, %131
  %139 = add i32 %138, %132
  %140 = add i32 %139, %133
  %141 = add i32 %140, %134
  %142 = add i32 %141, %135
  %143 = mul i32 %142, %142
  %144 = add i32 %143, %142
  %145 = mul i32 %144, 3
  %146 = srem i32 %145, 2
  %147 = icmp eq i32 %146, 0
  %148 = mul i32 %142, %142
  %149 = add i32 %148, %142
  %150 = srem i32 %149, 2
  %151 = icmp eq i32 %150, 0
  %152 = and i1 %147, %151
  br i1 %152, label %36, label %120

153:                                              ; preds = %104
  %154 = fcmp olt double %107, 6.280000e+00
  br i1 %154, label %36, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %153
  br label %155

155:                                              ; preds = %.loopexit, %15, %7
  %156 = phi i32 [ 2, %7 ], [ 2, %15 ], [ 0, %.loopexit ]
  ret i32 %156
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3sinf(float %0) unnamed_addr #8 {
  %2 = call float @llvm.sin.f32(float %0)
  ret float %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3cosf(float %0) unnamed_addr #8 {
  %2 = call float @llvm.cos.f32(float %0)
  ret float %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind ssp willreturn writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

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
!11 = !{!"float", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!12, !12, i64 0}
!18 = distinct !{!18, !15, !16}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !12, i64 0}
!21 = distinct !{!21, !15, !16}

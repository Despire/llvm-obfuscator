; ModuleID = '../../../../donut.ll'
source_filename = "donut_deobfuscated.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@Z_SIZE = local_unnamed_addr constant i64 1760, align 8
@B_SIZE = local_unnamed_addr constant i64 1760, align 8
@WAIT_TIME = local_unnamed_addr constant i64 30000, align 8
@.str = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@CHARS = local_unnamed_addr global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"time to render frame: %f seconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @update(float* %0, float* %1) local_unnamed_addr #0 {
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

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @render(float* %0, float* %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 1760
  br i1 %5, label %.preheader, label %90

.preheader:                                       ; preds = %4
  %6 = mul i64 %3, 2
  %7 = mul i64 %3, 2
  %8 = add i64 2, %7
  %9 = mul i64 %6, %8
  %10 = srem i64 %9, 4
  %11 = icmp eq i64 %10, 0
  %12 = mul i64 %3, %3
  %13 = add i64 %12, %3
  %14 = srem i64 %13, 2
  %15 = icmp eq i64 %14, 0
  %16 = or i1 %11, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %.preheader
  br label %36

18:                                               ; preds = %.preheader
  br label %21

19:                                               ; preds = %84
  %20 = icmp eq i64 %89, 1761
  br i1 %20, label %.loopexit, label %21, !llvm.loop !14

21:                                               ; preds = %36, %18, %19
  %22 = phi i64 [ %89, %19 ], [ 0, %18 ], [ 0, %36 ]
  %23 = trunc i64 %22 to i32
  %24 = mul i64 %3, 2
  %25 = mul i64 %3, 2
  %26 = add i64 2, %25
  %27 = mul i64 %24, %26
  %28 = srem i64 %27, 4
  %29 = icmp eq i64 %28, 0
  %30 = mul i64 %3, %3
  %31 = mul i64 %30, %3
  %32 = add i64 %31, %3
  %33 = srem i64 %32, 2
  %34 = icmp eq i64 %33, 0
  %35 = and i1 %29, %34
  br i1 %35, label %77, label %36

36:                                               ; preds = %17, %36, %21
  %37 = sdiv i64 64, 6
  %38 = sub i64 88, 36
  %39 = add i64 39, 25
  %40 = sdiv i64 7, 86
  %41 = sdiv i64 34, 113
  %42 = add i64 58, 116
  %43 = sdiv i64 45, 92
  %44 = sub i64 34, 105
  %45 = mul i64 7, 120
  %46 = add i64 %37, 32
  %47 = sub i64 %39, 26
  %48 = add i64 %43, 70
  %49 = sdiv i64 %42, 23
  %50 = mul i64 %41, 13
  %51 = mul i64 %37, 4
  %52 = sdiv i64 %40, 124
  %53 = mul i64 %37, 123
  %54 = trunc i64 %46 to i32
  %55 = add i32 0, %54
  %56 = trunc i64 %47 to i32
  %57 = add i32 %55, %56
  %58 = trunc i64 %48 to i32
  %59 = add i32 %57, %58
  %60 = trunc i64 %49 to i32
  %61 = add i32 %59, %60
  %62 = trunc i64 %50 to i32
  %63 = add i32 %61, %62
  %64 = trunc i64 %51 to i32
  %65 = add i32 %63, %64
  %66 = trunc i64 %52 to i32
  %67 = add i32 %65, %66
  %68 = trunc i64 %53 to i32
  %69 = add i32 %67, %68
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 1
  %72 = mul i32 %69, %69
  %73 = add i32 %72, %69
  %74 = srem i32 %73, 2
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %71, %75
  br i1 %76, label %21, label %36

77:                                               ; preds = %21
  %78 = urem i32 %23, 80
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, i8* %2, i64 %22
  %82 = load i8, i8* %81, align 1, !tbaa !17
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i32 [ %83, %80 ], [ 10, %77 ]
  %86 = call i32 @putchar(i32 %85)
  %87 = call i32 @update(float* %0, float* %1)
  %88 = icmp eq i32 %87, 0
  %89 = add nuw nsw i64 %22, 1
  br i1 %88, label %19, label %.loopexit

.loopexit:                                        ; preds = %19, %84
  %.ph = phi i32 [ 0, %19 ], [ %87, %84 ]
  br label %90

90:                                               ; preds = %.loopexit, %4
  %91 = phi i32 [ 2, %4 ], [ %.ph, %.loopexit ]
  ret i32 %91
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @clear(i8* %0, i64 %1, float* %2, i64 %3) local_unnamed_addr #1 {
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
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #10
  %13 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %13, i8 0, i64 7040, i1 false) #10
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i32 [ 0, %12 ], [ 2, %4 ], [ 2, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
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
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [1760 x float], [1760 x float]* %3, i64 0, i64 0
  br label %11

11:                                               ; preds = %22, %0
  %12 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %13 = call i64 @"\01_clock"() #10
  %14 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = call i64 @"\01_clock"() #10
  %18 = sub i64 %17, %13
  %19 = uitofp i64 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), double %20)
  call fastcc void @wait()
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi i32 [ %12, %16 ], [ %14, %11 ]
  br i1 %15, label %11, label %24, !llvm.loop !18

24:                                               ; preds = %22
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  ret i32 %23
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare i64 @"\01_clock"() local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %85

7:                                                ; preds = %4
  %8 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %.preheader, label %79

.preheader:                                       ; preds = %7
  %10 = and i32 %8, 1
  %11 = icmp eq i32 %10, 1
  %12 = mul i32 %8, %8
  %13 = add i32 %12, %8
  %14 = srem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %11, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %.preheader
  br label %39

18:                                               ; preds = %.preheader
  br label %22

19:                                               ; preds = %77
  %20 = call fastcc i32 @inner_loop(float %26, float* %0, float* %1, i8* %2, float* %3)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %.loopexit, !llvm.loop !19

22:                                               ; preds = %39, %18, %19
  %23 = phi i32 [ %20, %19 ], [ %8, %18 ], [ 0, %39 ]
  %24 = phi double [ %27, %19 ], [ 0.000000e+00, %18 ], [ 0.000000e+00, %39 ]
  %25 = fadd double %24, 7.000000e-02
  %26 = fptrunc double %25 to float
  %27 = fpext float %26 to double
  %28 = mul i32 %5, 2
  %29 = mul i32 %5, 2
  %30 = add i32 2, %29
  %31 = mul i32 %28, %30
  %32 = srem i32 %31, 4
  %33 = icmp eq i32 %32, 0
  %34 = mul i32 %5, %5
  %35 = add i32 %34, %5
  %36 = srem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = or i1 %33, %37
  br i1 %38, label %77, label %39

39:                                               ; preds = %17, %39, %22
  %40 = mul i32 1, 111
  %41 = mul i32 83, 75
  %42 = sdiv i32 26, 44
  %43 = sub i32 13, 8
  %44 = mul i32 103, 33
  %45 = sdiv i32 14, 69
  %46 = add i32 15, 25
  %47 = sub i32 35, 125
  %48 = add i32 %44, 79
  %49 = add i32 %46, 85
  %50 = add i32 %45, 95
  %51 = sub i32 %47, 92
  %52 = sdiv i32 %47, 87
  %53 = sdiv i32 %43, 125
  %54 = sdiv i32 %43, 74
  %55 = add i32 %44, 74
  %56 = add i32 %41, 36
  %57 = add i32 0, %48
  %58 = add i32 %57, %49
  %59 = add i32 %58, %50
  %60 = add i32 %59, %51
  %61 = add i32 %60, %52
  %62 = add i32 %61, %53
  %63 = add i32 %62, %54
  %64 = add i32 %63, %55
  %65 = add i32 %64, %56
  %66 = mul i32 %65, 2
  %67 = mul i32 %65, 2
  %68 = add i32 2, %67
  %69 = mul i32 %66, %68
  %70 = srem i32 %69, 4
  %71 = icmp eq i32 %70, 0
  %72 = mul i32 %65, %65
  %73 = add i32 %72, %65
  %74 = srem i32 %73, 2
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %71, %75
  br i1 %76, label %22, label %39

77:                                               ; preds = %22
  %78 = fcmp olt double %27, 6.280000e+00
  br i1 %78, label %19, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %19, %77
  %.ph = phi i32 [ %20, %19 ], [ %23, %77 ]
  br label %79

79:                                               ; preds = %.loopexit, %7
  %80 = phi i32 [ %8, %7 ], [ %.ph, %.loopexit ]
  %81 = phi i1 [ true, %7 ], [ %78, %.loopexit ]
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  br label %85

85:                                               ; preds = %82, %79, %4
  %86 = phi i32 [ %80, %79 ], [ %5, %4 ], [ %84, %82 ]
  ret i32 %86
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #6 {
  %1 = call i32 @"\01_usleep"(i32 30000) #10
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #7 {
  %6 = icmp eq float* %1, null
  %7 = icmp eq float* %2, null
  %8 = select i1 %6, i1 true, i1 %7
  %9 = icmp eq i8* %3, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq float* %4, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %100, label %13

13:                                               ; preds = %5
  %14 = fpext float %0 to double
  %15 = call double @llvm.cos.f64(double %14)
  %16 = fptrunc double %15 to float
  %17 = call double @llvm.sin.f64(double %14)
  %18 = fptrunc double %17 to float
  %19 = fadd float %16, 2.000000e+00
  br label %20

20:                                               ; preds = %95, %13
  %21 = phi double [ 0.000000e+00, %13 ], [ %98, %95 ]
  %22 = call double @llvm.sin.f64(double %21)
  %23 = fptrunc double %22 to float
  %24 = load float, float* %1, align 4, !tbaa !10
  %25 = fpext float %24 to double
  %26 = call double @llvm.sin.f64(double %25)
  %27 = fptrunc double %26 to float
  %28 = call double @llvm.cos.f64(double %25)
  %29 = fptrunc double %28 to float
  %30 = fmul float %19, %23
  %31 = fmul float %30, %27
  %32 = fmul float %18, %29
  %33 = fadd float %31, %32
  %34 = fadd float %33, 5.000000e+00
  %35 = fdiv float 1.000000e+00, %34
  %36 = call double @llvm.cos.f64(double %21)
  %37 = fptrunc double %36 to float
  %38 = load float, float* %2, align 4, !tbaa !10
  %39 = fpext float %38 to double
  %40 = call double @llvm.cos.f64(double %39)
  %41 = fptrunc double %40 to float
  %42 = call double @llvm.sin.f64(double %39)
  %43 = fptrunc double %42 to float
  %44 = fmul float %30, %29
  %45 = fmul float %18, %27
  %46 = fsub float %44, %45
  %47 = fmul float %35, 3.000000e+01
  %48 = fmul float %19, %37
  %49 = fmul float %48, %41
  %50 = fmul float %46, %43
  %51 = fsub float %49, %50
  %52 = fmul float %51, %47
  %53 = fadd float %52, 4.000000e+01
  %54 = fptosi float %53 to i32
  %55 = fmul float %35, 1.500000e+01
  %56 = fmul float %48, %43
  %57 = fmul float %46, %41
  %58 = fadd float %56, %57
  %59 = fmul float %58, %55
  %60 = fadd float %59, 1.200000e+01
  %61 = fptosi float %60 to i32
  %62 = fmul float %16, %23
  %63 = fmul float %62, %29
  %64 = fsub float %45, %63
  %65 = fmul float %64, %41
  %66 = fmul float %62, %27
  %67 = fsub float %65, %66
  %68 = fsub float %67, %32
  %69 = fmul float %16, %37
  %70 = fmul float %69, %43
  %71 = fsub float %68, %70
  %72 = fmul float %71, 8.000000e+00
  %73 = fptosi float %72 to i32
  %74 = add i32 %61, -1
  %75 = icmp ult i32 %74, 21
  %76 = icmp sgt i32 %54, 0
  %77 = select i1 %75, i1 %76, i1 false
  %78 = icmp slt i32 %54, 80
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %95

80:                                               ; preds = %20
  %81 = mul nsw i32 %61, 80
  %82 = add nsw i32 %81, %54
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %4, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !10
  %86 = fcmp ogt float %35, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  store float %35, float* %84, align 4, !tbaa !10
  %88 = load i8*, i8** @CHARS, align 8, !tbaa !20
  %89 = icmp sgt i32 %73, 0
  %90 = select i1 %89, i32 %73, i32 0
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1, !tbaa !17
  %94 = getelementptr inbounds i8, i8* %3, i64 %83
  store i8 %93, i8* %94, align 1, !tbaa !17
  br label %95

95:                                               ; preds = %87, %80, %20
  %96 = fadd double %21, 2.000000e-02
  %97 = fptrunc double %96 to float
  %98 = fpext float %97 to double
  %99 = fcmp olt double %98, 6.280000e+00
  br i1 %99, label %20, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %95
  br label %100

100:                                              ; preds = %.loopexit, %5
  %101 = phi i32 [ 2, %5 ], [ 0, %.loopexit ]
  ret i32 %101
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #8

declare i32 @"\01_usleep"(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree noinline nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
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
!13 = !{!"Simple C/C++ TBAA"}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!12, !12, i64 0}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !15, !16}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !12, i64 0}
!22 = distinct !{!22, !15, !16}

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
@.str.2 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1

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
  br i1 %5, label %.preheader, label %70

.preheader:                                       ; preds = %4
  %6 = and i64 %3, 1
  %7 = icmp eq i64 %6, 1
  %8 = mul i64 %3, %3
  %9 = add i64 %8, %3
  %10 = srem i64 %9, 2
  %11 = icmp eq i64 %10, 0
  %12 = or i1 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %.preheader
  br label %24

14:                                               ; preds = %.preheader
  br label %55

15:                                               ; preds = %64
  %16 = icmp eq i64 %69, 1761
  %17 = and i32 %58, 1
  %18 = icmp eq i32 %17, 1
  %19 = mul i32 %58, %58
  %20 = add i32 %19, %58
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %18, %22
  br i1 %23, label %54, label %24

24:                                               ; preds = %13, %24, %15
  %25 = sub i32 110, 94
  %26 = add i32 59, 89
  %27 = mul i32 83, 48
  %28 = add i32 101, 8
  %29 = add i32 95, 33
  %30 = mul i32 30, 43
  %31 = mul i32 %28, 24
  %32 = sub i32 %30, 76
  %33 = add i32 %27, 107
  %34 = sub i32 %29, 31
  %35 = sdiv i32 %29, 6
  %36 = add i32 %30, 110
  %37 = sub i32 %29, 101
  %38 = sdiv i32 %28, 62
  %39 = add i32 0, %31
  %40 = add i32 %39, %32
  %41 = add i32 %40, %33
  %42 = add i32 %41, %34
  %43 = add i32 %42, %35
  %44 = add i32 %43, %36
  %45 = add i32 %44, %37
  %46 = add i32 %45, %38
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 1
  %49 = mul i32 %46, %46
  %50 = add i32 %49, %46
  %51 = srem i32 %50, 2
  %52 = icmp eq i32 %51, 0
  %53 = or i1 %48, %52
  br i1 %53, label %55, label %24

54:                                               ; preds = %15
  br i1 %16, label %.loopexit, label %55, !llvm.loop !14

55:                                               ; preds = %24, %14, %54
  %56 = phi i64 [ %69, %54 ], [ 0, %14 ], [ 0, %24 ]
  %57 = trunc i64 %56 to i32
  %58 = urem i32 %57, 80
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds i8, i8* %2, i64 %56
  %62 = load i8, i8* %61, align 1, !tbaa !17
  %63 = sext i8 %62 to i32
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i32 [ %63, %60 ], [ 10, %55 ]
  %66 = call i32 @putchar(i32 %65)
  %67 = call i32 @update(float* %0, float* %1)
  %68 = icmp eq i32 %67, 0
  %69 = add nuw nsw i64 %56, 1
  br i1 %68, label %15, label %.loopexit

.loopexit:                                        ; preds = %54, %64
  %.ph = phi i32 [ 0, %54 ], [ %67, %64 ]
  br label %70

70:                                               ; preds = %.loopexit, %4
  %71 = phi i32 [ 2, %4 ], [ %.ph, %.loopexit ]
  ret i32 %71
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
  %11 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %.preheader, label %23

.preheader:                                       ; preds = %0
  %13 = and i32 %11, 1
  %14 = icmp eq i32 %13, 0
  %15 = mul i32 %11, %11
  %16 = add i32 %15, %11
  %17 = mul i32 %16, 3
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %14, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %.preheader
  br label %39

22:                                               ; preds = %.preheader
  br label %25

.loopexit:                                        ; preds = %75
  br label %23

23:                                               ; preds = %.loopexit, %0
  %24 = phi i32 [ %11, %0 ], [ %26, %.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  ret i32 %24

25:                                               ; preds = %39, %22, %75
  call fastcc void @wait()
  %26 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %27 = icmp eq i32 %26, 0
  %28 = mul i32 %9, 2
  %29 = mul i32 %9, 2
  %30 = add i32 2, %29
  %31 = mul i32 %28, %30
  %32 = srem i32 %31, 4
  %33 = icmp eq i32 %32, 0
  %34 = mul i32 %9, %9
  %35 = add i32 %34, %9
  %36 = srem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = and i1 %33, %37
  br i1 %38, label %75, label %39

39:                                               ; preds = %21, %39, %25
  %40 = sub i32 66, 11
  %41 = sub i32 94, 78
  %42 = sdiv i32 80, 120
  %43 = sdiv i32 89, 118
  %44 = sdiv i32 28, 27
  %45 = mul i32 43, 40
  %46 = sub i32 %43, 31
  %47 = add i32 %43, 38
  %48 = mul i32 %43, 125
  %49 = sub i32 %42, 103
  %50 = mul i32 %41, 0
  %51 = sdiv i32 %41, 112
  %52 = sub i32 %44, 17
  %53 = add i32 %41, 22
  %54 = add i32 %42, 50
  %55 = add i32 0, %46
  %56 = add i32 %55, %47
  %57 = add i32 %56, %48
  %58 = add i32 %57, %49
  %59 = add i32 %58, %50
  %60 = add i32 %59, %51
  %61 = add i32 %60, %52
  %62 = add i32 %61, %53
  %63 = add i32 %62, %54
  %64 = mul i32 %63, 2
  %65 = mul i32 %63, 2
  %66 = add i32 2, %65
  %67 = mul i32 %64, %66
  %68 = srem i32 %67, 4
  %69 = icmp eq i32 %68, 0
  %70 = mul i32 %63, %63
  %71 = add i32 %70, %63
  %72 = srem i32 %71, 2
  %73 = icmp eq i32 %72, 0
  %74 = and i1 %69, %73
  br i1 %74, label %25, label %39

75:                                               ; preds = %25
  br i1 %27, label %25, label %.loopexit, !llvm.loop !18
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %93

7:                                                ; preds = %4
  %8 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %.preheader, label %87

.preheader:                                       ; preds = %7
  %10 = mul i32 %5, 2
  %11 = mul i32 %5, 2
  %12 = add i32 2, %11
  %13 = mul i32 %10, %12
  %14 = srem i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = mul i32 %5, %5
  %17 = add i32 %16, %5
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %15, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %.preheader
  br label %37

22:                                               ; preds = %.preheader
  br label %80

23:                                               ; preds = %80
  %24 = call fastcc i32 @inner_loop(float %84, float* %0, float* %1, i8* %2, float* %3)
  %25 = icmp eq i32 %24, 0
  %26 = mul i32 %81, 2
  %27 = mul i32 %81, 2
  %28 = add i32 2, %27
  %29 = mul i32 %26, %28
  %30 = srem i32 %29, 4
  %31 = icmp eq i32 %30, 0
  %32 = mul i32 %81, %81
  %33 = add i32 %32, %81
  %34 = srem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %31, %35
  br i1 %36, label %79, label %37

37:                                               ; preds = %21, %37, %23
  %38 = mul i32 116, 23
  %39 = add i32 112, 84
  %40 = sdiv i32 92, 96
  %41 = mul i32 47, 87
  %42 = sub i32 1, 108
  %43 = mul i32 15, 118
  %44 = add i32 120, 9
  %45 = sub i32 85, 54
  %46 = sub i32 49, 108
  %47 = sdiv i32 22, 105
  %48 = mul i32 %39, 87
  %49 = mul i32 %41, 18
  %50 = sdiv i32 %40, 97
  %51 = sub i32 %46, 31
  %52 = add i32 %45, 106
  %53 = mul i32 %44, 70
  %54 = mul i32 %38, 101
  %55 = sdiv i32 %45, 82
  %56 = add i32 %45, 12
  %57 = sdiv i32 %42, 103
  %58 = add i32 0, %48
  %59 = add i32 %58, %49
  %60 = add i32 %59, %50
  %61 = add i32 %60, %51
  %62 = add i32 %61, %52
  %63 = add i32 %62, %53
  %64 = add i32 %63, %54
  %65 = add i32 %64, %55
  %66 = add i32 %65, %56
  %67 = add i32 %66, %57
  %68 = mul i32 %67, 2
  %69 = mul i32 %67, 2
  %70 = add i32 2, %69
  %71 = mul i32 %68, %70
  %72 = srem i32 %71, 4
  %73 = icmp eq i32 %72, 0
  %74 = mul i32 %67, %67
  %75 = add i32 %74, %67
  %76 = srem i32 %75, 2
  %77 = icmp eq i32 %76, 0
  %78 = or i1 %73, %77
  br i1 %78, label %80, label %37

79:                                               ; preds = %23
  br i1 %25, label %80, label %.loopexit, !llvm.loop !19

80:                                               ; preds = %37, %22, %79
  %81 = phi i32 [ %24, %79 ], [ %8, %22 ], [ 0, %37 ]
  %82 = phi double [ %85, %79 ], [ 0.000000e+00, %22 ], [ 0.000000e+00, %37 ]
  %83 = fadd double %82, 7.000000e-02
  %84 = fptrunc double %83 to float
  %85 = fpext float %84 to double
  %86 = fcmp olt double %85, 6.280000e+00
  br i1 %86, label %23, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %79, %80
  %.ph = phi i32 [ %24, %79 ], [ %81, %80 ]
  br label %87

87:                                               ; preds = %.loopexit, %7
  %88 = phi i32 [ %8, %7 ], [ %.ph, %.loopexit ]
  %89 = phi i1 [ true, %7 ], [ %86, %.loopexit ]
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %92 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  br label %93

93:                                               ; preds = %90, %87, %4
  %94 = phi i32 [ %88, %87 ], [ %5, %4 ], [ %92, %90 ]
  ret i32 %94
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #5 {
  %1 = call i32 @"\01_usleep"(i32 30000) #10
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #6 {
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
declare double @llvm.sin.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #7

declare i32 @"\01_usleep"(i32) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nofree noinline nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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

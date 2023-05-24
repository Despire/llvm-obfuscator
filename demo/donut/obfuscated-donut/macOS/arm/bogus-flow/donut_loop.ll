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
  br i1 %5, label %8, label %23

6:                                                ; preds = %17
  %7 = icmp eq i64 %22, 1761
  br i1 %7, label %23, label %8, !llvm.loop !14

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %22, %6 ], [ 0, %4 ]
  %10 = trunc i64 %9 to i32
  %11 = urem i32 %10, 80
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, i8* %2, i64 %9
  %15 = load i8, i8* %14, align 1, !tbaa !17
  %16 = sext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32 [ %16, %13 ], [ 10, %8 ]
  %19 = call i32 @putchar(i32 %18)
  %20 = call i32 @update(float* %0, float* %1)
  %21 = icmp eq i32 %20, 0
  %22 = add nuw nsw i64 %9, 1
  br i1 %21, label %6, label %23

23:                                               ; preds = %43, %17, %6, %4
  %24 = phi i32 [ 2, %4 ], [ %20, %17 ], [ 0, %6 ], [ 0, %43 ]
  %25 = srem i64 %3, 2
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %55

28:                                               ; preds = %23
  %29 = sub i64 51, 101
  %30 = sub i64 96, 2
  %31 = sub i64 42, 109
  %32 = mul i64 22, 123
  %33 = mul i64 96, 2
  %34 = srem i32 %24, 2
  %35 = icmp eq i32 %34, 0
  %36 = and i64 %3, 1
  %37 = icmp eq i64 %36, 1
  %38 = mul i64 %3, %3
  %39 = add i64 %38, %3
  %40 = srem i64 %39, 2
  %41 = icmp eq i64 %40, 0
  %42 = or i1 %37, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %28
  %44 = add i64 100, 63
  %45 = add i64 32, 166
  %46 = add i64 69, -71
  br i1 %42, label %51, label %23

47:                                               ; preds = %28
  %48 = add i64 100, 63
  %49 = add i64 115, 83
  %50 = sub i64 69, 71
  br label %51

51:                                               ; preds = %43, %47
  %52 = phi i64 [ %48, %47 ], [ %44, %43 ]
  %53 = phi i64 [ %49, %47 ], [ %45, %43 ]
  %54 = phi i64 [ %50, %47 ], [ %46, %43 ]
  br label %55

55:                                               ; preds = %51, %27
  ret i32 %24
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
  br i1 %7, label %65, label %8

8:                                                ; preds = %4
  %9 = icmp ne i64 %1, 1760
  %10 = icmp ne i64 %3, 7040
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %65, label %12

12:                                               ; preds = %31, %8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #10
  %13 = bitcast float* %2 to i8*
  %14 = srem i64 %1, 2
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %13, i8 0, i64 7040, i1 false) #10
  br label %64

17:                                               ; preds = %12
  %18 = srem i64 %3, 2
  %19 = icmp eq i64 %18, 0
  %20 = mul i64 %1, 2
  %21 = mul i64 %1, 2
  %22 = add i64 2, %21
  %23 = mul i64 %20, %22
  %24 = srem i64 %23, 4
  %25 = icmp eq i64 %24, 0
  %26 = mul i64 %1, %1
  %27 = add i64 %26, %1
  %28 = srem i64 %27, 2
  %29 = icmp eq i64 %28, 0
  %30 = or i1 %25, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %17
  %32 = sdiv i64 78, 54
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %13, i8 0, i64 7040, i1 false) #10
  %33 = sdiv i64 27, 115
  %34 = mul i64 70, 78
  %35 = sdiv i64 19, 20
  %36 = mul i64 58, 78
  %37 = add i64 44, 2
  %38 = sdiv i64 65, 110
  %39 = sub i64 -9206452467217002688, -9206452467217002792
  %40 = mul i64 6, 73
  %41 = mul i64 106, 26
  br i1 %30, label %53, label %12

42:                                               ; preds = %17
  %43 = sdiv i64 78, 54
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %13, i8 0, i64 7040, i1 false) #10
  %44 = sdiv i64 27, 115
  %45 = mul i64 70, 78
  %46 = sdiv i64 19, 20
  %47 = mul i64 58, 78
  %48 = add i64 44, 2
  %49 = sdiv i64 65, 110
  %50 = add i64 66, 38
  %51 = mul i64 6, 73
  %52 = mul i64 106, 26
  br label %53

53:                                               ; preds = %31, %42
  %54 = phi i64 [ %43, %42 ], [ %32, %31 ]
  %55 = phi i64 [ %44, %42 ], [ %33, %31 ]
  %56 = phi i64 [ %45, %42 ], [ %34, %31 ]
  %57 = phi i64 [ %46, %42 ], [ %35, %31 ]
  %58 = phi i64 [ %47, %42 ], [ %36, %31 ]
  %59 = phi i64 [ %48, %42 ], [ %37, %31 ]
  %60 = phi i64 [ %49, %42 ], [ %38, %31 ]
  %61 = phi i64 [ %50, %42 ], [ %39, %31 ]
  %62 = phi i64 [ %51, %42 ], [ %40, %31 ]
  %63 = phi i64 [ %52, %42 ], [ %41, %31 ]
  br label %64

64:                                               ; preds = %53, %16
  br label %65

65:                                               ; preds = %88, %64, %8, %4
  %66 = phi i32 [ 0, %64 ], [ 2, %4 ], [ 2, %8 ], [ 0, %88 ]
  %67 = srem i64 %1, 2
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %94

70:                                               ; preds = %65
  %71 = mul i64 49, 63
  %72 = sdiv i64 28, 47
  %73 = sdiv i64 18, 113
  %74 = mul i64 19, 7
  %75 = mul i64 118, 28
  %76 = sdiv i64 2, 76
  %77 = sdiv i64 22, 45
  %78 = mul i64 84, 42
  %79 = srem i64 %67, 2
  %80 = icmp eq i64 %79, 0
  %81 = and i32 %66, 1
  %82 = icmp eq i32 %81, 1
  %83 = mul i32 %66, %66
  %84 = add i32 %83, %66
  %85 = srem i32 %84, 2
  %86 = icmp eq i32 %85, 0
  %87 = or i1 %82, %86
  br i1 %87, label %90, label %88

88:                                               ; preds = %70
  %89 = sub i64 48, 7
  br i1 %87, label %92, label %65

90:                                               ; preds = %70
  %91 = add i64 48, -7
  br label %92

92:                                               ; preds = %88, %90
  %93 = phi i64 [ %91, %90 ], [ %89, %88 ]
  br label %94

94:                                               ; preds = %92, %69
  ret i32 %66
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

11:                                               ; preds = %39, %53, %0
  %12 = phi i32 [ 0, %0 ], [ %54, %53 ], [ 0, %39 ]
  %13 = call i64 @"\01_clock"() #10
  %14 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %15 = srem i32 %9, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = mul i64 93, 117
  %19 = icmp eq i32 %14, 0
  %20 = sdiv i64 0, 102
  %21 = add i64 20, 122
  %22 = sub i64 26, 56
  %23 = sub i64 0, 34
  %24 = srem i32 %15, 2
  %25 = icmp eq i32 %24, 0
  %26 = mul i32 %14, 2
  %27 = mul i32 %14, 2
  %28 = add i32 2, %27
  %29 = mul i32 %26, %28
  %30 = srem i32 %29, 4
  %31 = icmp eq i32 %30, 0
  %32 = mul i32 %14, %14
  %33 = add i32 %32, %14
  %34 = srem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = sub i64 6278736629982561172, 6278736629982561110
  br label %41

39:                                               ; preds = %17
  %40 = sub i64 67, 5
  br i1 %36, label %41, label %11

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %40, %39 ], [ %38, %37 ]
  br label %45

43:                                               ; preds = %11
  %44 = icmp eq i32 %14, 0
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i1 [ %44, %43 ], [ %19, %41 ]
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = call i64 @"\01_clock"() #10
  %49 = sub i64 %48, %13
  %50 = uitofp i64 %49 to double
  %51 = fdiv double %50, 1.000000e+06
  %52 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), double %51)
  call fastcc void @wait()
  br label %53

53:                                               ; preds = %47, %45
  %54 = phi i32 [ %12, %47 ], [ %14, %45 ]
  br i1 %46, label %11, label %55, !llvm.loop !18

55:                                               ; preds = %75, %53
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  %56 = srem i32 %9, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  br label %93

59:                                               ; preds = %55
  %60 = mul i64 29, 119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  %61 = sub i64 122, 114
  %62 = srem i32 %12, 2
  %63 = icmp eq i32 %62, 0
  %64 = mul i64 %13, 2
  %65 = mul i64 %13, 2
  %66 = add i64 2, %65
  %67 = mul i64 %64, %66
  %68 = srem i64 %67, 4
  %69 = icmp eq i64 %68, 0
  %70 = mul i64 %13, %13
  %71 = add i64 %70, %13
  %72 = srem i64 %71, 2
  %73 = icmp eq i64 %72, 0
  %74 = and i1 %69, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %59
  %76 = mul i64 98, 75
  %77 = sdiv i64 16, 57
  %78 = sub i64 0, 47
  %79 = sub i64 121, 4
  %80 = sub i64 50, 63
  br i1 %74, label %87, label %55

81:                                               ; preds = %59
  %82 = mul i64 98, 75
  %83 = sdiv i64 16, 57
  %84 = sub i64 7804054636626002388, 7804054636626002435
  %85 = sub i64 121, 4
  %86 = sub i64 50, 63
  br label %87

87:                                               ; preds = %75, %81
  %88 = phi i64 [ %82, %81 ], [ %76, %75 ]
  %89 = phi i64 [ %83, %81 ], [ %77, %75 ]
  %90 = phi i64 [ %84, %81 ], [ %78, %75 ]
  %91 = phi i64 [ %85, %81 ], [ %79, %75 ]
  %92 = phi i64 [ %86, %81 ], [ %80, %75 ]
  br label %93

93:                                               ; preds = %87, %58
  ret i32 %54
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare i64 @"\01_clock"() local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %20

10:                                               ; preds = %13
  %11 = call fastcc i32 @inner_loop(float %17, float* %0, float* %1, i8* %2, float* %3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20, !llvm.loop !19

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %11, %10 ], [ %8, %7 ]
  %15 = phi double [ %18, %10 ], [ 0.000000e+00, %7 ]
  %16 = fadd double %15, 7.000000e-02
  %17 = fptrunc double %16 to float
  %18 = fpext float %17 to double
  %19 = fcmp olt double %18, 6.280000e+00
  br i1 %19, label %10, label %20, !llvm.loop !19

20:                                               ; preds = %13, %10, %7
  %21 = phi i32 [ %8, %7 ], [ %14, %13 ], [ %11, %10 ]
  %22 = phi i1 [ true, %7 ], [ %19, %10 ], [ %19, %13 ]
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  br label %26

26:                                               ; preds = %23, %20, %4
  %27 = phi i32 [ %21, %20 ], [ %5, %4 ], [ %25, %23 ]
  ret i32 %27
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
  br i1 %12, label %154, label %13

13:                                               ; preds = %5
  %14 = fpext float %0 to double
  %15 = call double @llvm.cos.f64(double %14)
  %16 = fptrunc double %15 to float
  %17 = call double @llvm.sin.f64(double %14)
  %18 = fptrunc double %17 to float
  %19 = fadd float %16, 2.000000e+00
  br label %20

20:                                               ; preds = %150, %13
  %21 = phi double [ 0.000000e+00, %13 ], [ %152, %150 ]
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

95:                                               ; preds = %117, %87, %80, %20
  %96 = fadd double %21, 2.000000e-02
  %97 = srem i32 %73, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = fptrunc double %96 to float
  %101 = fpext float %100 to double
  %102 = fcmp olt double %101, 6.280000e+00
  br label %150

103:                                              ; preds = %95
  %104 = sdiv i64 98, 18
  %105 = fptrunc double %96 to float
  %106 = mul i64 14, 74
  %107 = srem i32 %54, 2
  %108 = icmp eq i32 %107, 0
  %109 = and i32 %54, 1
  %110 = icmp eq i32 %109, 0
  %111 = mul i32 %54, %54
  %112 = add i32 %111, %54
  %113 = mul i32 %112, 3
  %114 = srem i32 %113, 2
  %115 = icmp eq i32 %114, 0
  %116 = or i1 %110, %115
  br i1 %116, label %128, label %117

117:                                              ; preds = %103
  %118 = fpext float %105 to double
  %119 = add i64 94, 67
  %120 = fcmp olt double %118, 6.280000e+00
  %121 = mul i64 117, 100
  %122 = mul i64 71, 12
  %123 = add i64 94, 111
  %124 = sdiv i64 30, 46
  %125 = add i64 122, 38
  %126 = sdiv i64 20, 20
  %127 = sub i64 119, 92
  br i1 %116, label %139, label %95

128:                                              ; preds = %103
  %129 = fpext float %105 to double
  %130 = add i64 94, 67
  %131 = fcmp olt double %129, 6.280000e+00
  %132 = mul i64 117, 100
  %133 = mul i64 71, 12
  %134 = add i64 -5570552346246155605, 5570552346246155810
  %135 = sdiv i64 30, 46
  %136 = add i64 122, 38
  %137 = sdiv i64 20, 20
  %138 = sub i64 119, 92
  br label %139

139:                                              ; preds = %117, %128
  %140 = phi double [ %129, %128 ], [ %118, %117 ]
  %141 = phi i64 [ %130, %128 ], [ %119, %117 ]
  %142 = phi i1 [ %131, %128 ], [ %120, %117 ]
  %143 = phi i64 [ %132, %128 ], [ %121, %117 ]
  %144 = phi i64 [ %133, %128 ], [ %122, %117 ]
  %145 = phi i64 [ %134, %128 ], [ %123, %117 ]
  %146 = phi i64 [ %135, %128 ], [ %124, %117 ]
  %147 = phi i64 [ %136, %128 ], [ %125, %117 ]
  %148 = phi i64 [ %137, %128 ], [ %126, %117 ]
  %149 = phi i64 [ %138, %128 ], [ %127, %117 ]
  br label %150

150:                                              ; preds = %139, %99
  %151 = phi float [ %105, %139 ], [ %100, %99 ]
  %152 = phi double [ %140, %139 ], [ %101, %99 ]
  %153 = phi i1 [ %142, %139 ], [ %102, %99 ]
  br i1 %153, label %20, label %154, !llvm.loop !22

154:                                              ; preds = %150, %5
  %155 = phi i32 [ 2, %5 ], [ 0, %150 ]
  ret i32 %155
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

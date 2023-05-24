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

23:                                               ; preds = %17, %6, %4
  %24 = phi i32 [ 2, %4 ], [ %20, %17 ], [ 0, %6 ]
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
  %16 = and i1 %11, %15
  %17 = xor i1 %11, %15
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = sub i64 9, 66
  %21 = add i64 85, 18
  %22 = mul i64 19, 126
  %23 = sdiv i64 81, 109
  %24 = sdiv i64 46, 32
  %25 = sdiv i64 88, 4
  %26 = add i64 40, 53
  br label %27

27:                                               ; preds = %4, %19
  %28 = icmp eq float* %2, null
  %29 = select i1 %5, i1 true, i1 %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = icmp ne i64 %1, 1760
  %32 = icmp ne i64 %3, 7040
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #10
  %35 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %35, i8 0, i64 7040, i1 false) #10
  br label %36

36:                                               ; preds = %34, %30, %27
  %37 = phi i32 [ 0, %34 ], [ 2, %27 ], [ 2, %30 ]
  ret i32 %37
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

11:                                               ; preds = %64, %0
  %12 = phi i32 [ 0, %0 ], [ %59, %64 ]
  %13 = call i64 @"\01_clock"() #10
  %14 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %15 = icmp eq i32 %14, 0
  %16 = mul i32 %9, 2
  %17 = mul i32 %9, 2
  %18 = add i32 2, %17
  %19 = mul i32 %16, %18
  %20 = srem i32 %19, 4
  %21 = icmp eq i32 %20, 0
  %22 = mul i32 %9, %9
  %23 = add i32 %22, %9
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = xor i1 %21, true
  %27 = xor i1 %25, true
  %28 = or i1 %26, %27
  %29 = xor i1 %28, true
  %30 = and i1 %29, true
  %31 = xor i1 %15, true
  %32 = or i1 %31, %30
  %33 = xor i1 %15, true
  %34 = and i32 %9, 1
  %35 = icmp eq i32 %34, 1
  %36 = mul i32 %9, %9
  %37 = add i32 %36, %9
  %38 = srem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = and i1 %35, %39
  %41 = xor i1 %35, %39
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %11
  %44 = sdiv i32 74, 68
  %45 = sub i32 99, 99
  %46 = add i32 82, 86
  %47 = sdiv i32 75, 83
  %48 = sub i32 71, 32
  %49 = sub i32 83, 47
  br label %50

50:                                               ; preds = %11, %43
  %51 = sub i1 %32, %33
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = call i64 @"\01_clock"() #10
  %54 = sub i64 %53, %13
  %55 = uitofp i64 %54 to double
  %56 = fdiv double %55, 1.000000e+06
  %57 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), double %56)
  call fastcc void @wait()
  br label %58

58:                                               ; preds = %52, %50
  %59 = phi i32 [ %12, %52 ], [ %14, %50 ]
  %60 = srem i32 %19, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %64

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %62
  br i1 %15, label %11, label %65, !llvm.loop !18

65:                                               ; preds = %64
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  %66 = srem i32 %37, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %70

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %68
  ret i32 %59
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare i64 @"\01_clock"() local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %79

7:                                                ; preds = %4
  %8 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %42

10:                                               ; preds = %35
  %11 = call fastcc i32 @inner_loop(float %39, float* %0, float* %1, i8* %2, float* %3)
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  %14 = mul i32 %5, %5
  %15 = add i32 %14, %5
  %16 = mul i32 %15, 3
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %13, %18
  %20 = xor i1 %13, %18
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %10
  %23 = sub i32 36, 110
  %24 = sdiv i32 38, 84
  %25 = add i32 75, 114
  %26 = sub i32 25, 23
  %27 = mul i32 113, 13
  %28 = add i32 102, 28
  %29 = sub i32 36, 54
  %30 = sub i32 27, 16
  %31 = sdiv i32 17, 22
  %32 = mul i32 81, 69
  br label %33

33:                                               ; preds = %10, %22
  %34 = icmp eq i32 %11, 0
  br i1 %34, label %35, label %42, !llvm.loop !19

35:                                               ; preds = %33, %7
  %36 = phi i32 [ %11, %33 ], [ %8, %7 ]
  %37 = phi double [ %40, %33 ], [ 0.000000e+00, %7 ]
  %38 = fadd double %37, 7.000000e-02
  %39 = fptrunc double %38 to float
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 6.280000e+00
  br i1 %41, label %10, label %42, !llvm.loop !19

42:                                               ; preds = %35, %33, %7
  %43 = phi i32 [ %8, %7 ], [ %36, %35 ], [ %11, %33 ]
  %44 = phi i1 [ true, %7 ], [ %41, %33 ], [ %41, %35 ]
  %45 = and i32 %5, 1
  %46 = icmp eq i32 %45, 1
  %47 = mul i32 %5, %5
  %48 = add i32 %47, %5
  %49 = srem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  %51 = xor i1 %46, true
  %52 = and i1 %51, true
  %53 = and i1 %46, false
  %54 = or i1 %52, %53
  %55 = xor i1 %50, true
  %56 = and i1 %55, true
  %57 = and i1 %50, false
  %58 = or i1 %56, %57
  %59 = xor i1 %54, %58
  %60 = xor i1 %46, true
  %61 = xor i1 %50, true
  %62 = or i1 %60, %61
  %63 = xor i1 %62, true
  %64 = and i1 %63, true
  %65 = or i1 %59, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %42
  %67 = add i32 3, 96
  %68 = sdiv i32 23, 52
  %69 = sdiv i32 36, 68
  %70 = add i32 64, 40
  %71 = sub i32 14, 95
  %72 = add i32 25, 59
  %73 = add i32 31, 124
  %74 = add i32 39, 25
  br label %75

75:                                               ; preds = %42, %66
  br i1 %44, label %79, label %76

76:                                               ; preds = %75
  %77 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  br label %79

79:                                               ; preds = %76, %75, %4
  %80 = phi i32 [ %43, %75 ], [ %5, %4 ], [ %78, %76 ]
  %81 = and i32 %5, 1
  %82 = icmp eq i32 %81, 0
  %83 = mul i32 %5, %5
  %84 = add i32 %83, %5
  %85 = mul i32 %84, 3
  %86 = srem i32 %85, 2
  %87 = icmp eq i32 %86, 0
  %88 = xor i1 %82, true
  %89 = and i1 %88, false
  %90 = and i1 %82, true
  %91 = or i1 %89, %90
  %92 = xor i1 %87, true
  %93 = and i1 %92, false
  %94 = and i1 %87, true
  %95 = or i1 %93, %94
  %96 = xor i1 %91, %95
  %97 = xor i1 %82, true
  %98 = xor i1 %87, true
  %99 = or i1 %97, %98
  %100 = xor i1 %99, true
  %101 = and i1 %100, true
  %102 = or i1 %96, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %79
  %104 = sdiv i32 26, 121
  %105 = add i32 16, 91
  %106 = sdiv i32 8, 110
  %107 = add i32 39, 99
  %108 = mul i32 5, 12
  %109 = sdiv i32 30, 55
  %110 = sdiv i32 100, 67
  %111 = add i32 91, 2
  br label %112

112:                                              ; preds = %79, %103
  ret i32 %80
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
  br i1 %12, label %125, label %13

13:                                               ; preds = %5
  %14 = fpext float %0 to double
  %15 = call double @llvm.cos.f64(double %14)
  %16 = fptrunc double %15 to float
  %17 = call double @llvm.sin.f64(double %14)
  %18 = fptrunc double %17 to float
  %19 = fadd float %16, 2.000000e+00
  br label %20

20:                                               ; preds = %122, %13
  %21 = phi double [ 0.000000e+00, %13 ], [ %123, %122 ]
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
  %98 = mul i32 %74, 2
  %99 = mul i32 %74, 2
  %100 = add i32 2, %99
  %101 = mul i32 %98, %100
  %102 = srem i32 %101, 4
  %103 = icmp eq i32 %102, 0
  %104 = mul i32 %74, %74
  %105 = mul i32 %104, %74
  %106 = add i32 %105, %74
  %107 = srem i32 %106, 2
  %108 = icmp eq i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %103, %109
  %111 = and i1 %110, %103
  br i1 %111, label %112, label %122

112:                                              ; preds = %95
  %113 = add i32 27, 89
  %114 = sdiv i32 56, 0
  %115 = mul i32 19, 58
  %116 = sub i32 86, 3
  %117 = mul i32 79, 113
  %118 = mul i32 23, 95
  %119 = sdiv i32 80, 5
  %120 = mul i32 77, 99
  %121 = add i32 104, 2
  br label %122

122:                                              ; preds = %95, %112
  %123 = fpext float %97 to double
  %124 = fcmp olt double %123, 6.280000e+00
  br i1 %124, label %20, label %125, !llvm.loop !22

125:                                              ; preds = %122, %5
  %126 = phi i32 [ 2, %5 ], [ 0, %122 ]
  ret i32 %126
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

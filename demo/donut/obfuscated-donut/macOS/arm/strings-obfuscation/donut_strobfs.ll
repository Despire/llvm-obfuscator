; ModuleID = '../../../../donut.ll'
source_filename = "donut_deobfuscated.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@Z_SIZE = local_unnamed_addr constant i64 1760, align 8
@B_SIZE = local_unnamed_addr constant i64 1760, align 8
@WAIT_TIME = local_unnamed_addr constant i64 30000, align 8
@.str = private unnamed_addr global [13 x i8] c"\01\01\01\00\00\00\00\00\01\01\00\01\00", align 1
@CHARS = local_unnamed_addr global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr global [5 x i8] c"\00\01\01\01\01", align 1
@.str.2 = private unnamed_addr global [4 x i8] c"\00\00\01\01", align 1
@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @init6224431178885537903, i8* null }]

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
  br i1 %12, label %15, label %13

13:                                               ; preds = %15, %0
  %14 = phi i32 [ %11, %0 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  ret i32 %14

15:                                               ; preds = %15, %0
  call fastcc void @wait()
  %16 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %15, label %13, !llvm.loop !18
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

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
  %24 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  br label %26

26:                                               ; preds = %23, %20, %4
  %27 = phi i32 [ %21, %20 ], [ %5, %4 ], [ %25, %23 ]
  ret i32 %27
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
  br i1 %99, label %20, label %100, !llvm.loop !22

100:                                              ; preds = %95, %5
  %101 = phi i32 [ 2, %5 ], [ 0, %95 ]
  ret i32 %101
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #7

declare i32 @"\01_usleep"(i32) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

define void @decode10328833750349563204(i8* %0, i32 %1, i8* %2, i32* %3, i8* %4) {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = zext i32 %1 to i64
  br label %10

9:                                                ; preds = %10, %5
  ret void

10:                                               ; preds = %10, %7
  %11 = phi i64 [ 0, %7 ], [ %24, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %23, %10 ]
  %13 = getelementptr inbounds i8, i8* %0, i64 %11
  %14 = load i8, i8* %13, align 1
  %15 = shl i32 %12, 1
  %16 = sext i8 %14 to i32
  %17 = add nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %4, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = getelementptr inbounds i8, i8* %2, i64 %11
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds i32, i32* %3, i64 %18
  %23 = load i32, i32* %22, align 4
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %9, label %10
}

define internal void @init6224431178885537903() {
  %outArray = alloca [26 x i8], align 1
  %1 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 0
  store i8 44, i8* %1, align 1
  %2 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 1
  store i8 46, i8* %2, align 1
  %3 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 2
  store i8 58, i8* %3, align 1
  %4 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 3
  store i8 44, i8* %4, align 1
  %5 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 4
  store i8 61, i8* %5, align 1
  %6 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 5
  store i8 45, i8* %6, align 1
  %7 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 6
  store i8 126, i8* %7, align 1
  %8 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 7
  store i8 42, i8* %8, align 1
  %9 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 8
  store i8 58, i8* %9, align 1
  %10 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 9
  store i8 45, i8* %10, align 1
  %11 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 10
  store i8 59, i8* %11, align 1
  %12 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 11
  store i8 46, i8* %12, align 1
  %13 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 12
  store i8 61, i8* %13, align 1
  %14 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 13
  store i8 46, i8* %14, align 1
  %15 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 14
  store i8 33, i8* %15, align 1
  %16 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 15
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 16
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 17
  store i8 42, i8* %18, align 1
  %19 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 18
  store i8 64, i8* %19, align 1
  %20 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 19
  store i8 35, i8* %20, align 1
  %21 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 20
  store i8 36, i8* %21, align 1
  %22 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 21
  store i8 58, i8* %22, align 1
  %23 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 22
  store i8 64, i8* %23, align 1
  %24 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 23
  store i8 64, i8* %24, align 1
  %25 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 24
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 25
  store i8 45, i8* %26, align 1
  %nextArray = alloca [26 x i32], align 4
  %27 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 0
  store i32 2, i32* %27, align 4
  %28 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 2
  store i32 5, i32* %29, align 4
  %30 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 3
  store i32 2, i32* %30, align 4
  %31 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 4
  store i32 7, i32* %31, align 4
  %32 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 5
  store i32 3, i32* %32, align 4
  %33 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 6
  store i32 4, i32* %33, align 4
  %34 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 7
  store i32 9, i32* %34, align 4
  %35 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 8
  store i32 5, i32* %35, align 4
  %36 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 9
  store i32 3, i32* %36, align 4
  %37 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 10
  store i32 6, i32* %37, align 4
  %38 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 11
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 12
  store i32 7, i32* %39, align 4
  %40 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 13
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 14
  store i32 8, i32* %41, align 4
  %42 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 15
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 16
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 17
  store i32 9, i32* %44, align 4
  %45 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 18
  store i32 12, i32* %45, align 4
  %46 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 19
  store i32 10, i32* %46, align 4
  %47 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 20
  store i32 11, i32* %47, align 4
  %48 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 21
  store i32 5, i32* %48, align 4
  %49 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 22
  store i32 12, i32* %49, align 4
  %50 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 23
  store i32 12, i32* %50, align 4
  %51 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 24
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 25
  store i32 3, i32* %52, align 4
  %53 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray, i32 0, i32 0
  %54 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray, i32 0, i32 0
  br label %55

55:                                               ; preds = %0
  call void @decode10328833750349563204(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32* %53, i8* %54)
  %outArray1 = alloca [10 x i8], align 1
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 0
  store i8 27, i8* %56, align 1
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 1
  store i8 91, i8* %57, align 1
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 2
  store i8 74, i8* %58, align 1
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 3
  store i8 91, i8* %59, align 1
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 4
  store i8 50, i8* %60, align 1
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 5
  store i8 50, i8* %61, align 1
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 6
  store i8 74, i8* %62, align 1
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 7
  store i8 74, i8* %63, align 1
  %64 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 8
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 9
  store i8 0, i8* %65, align 1
  %nextArray2 = alloca [10 x i32], align 4
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 1
  store i32 2, i32* %67, align 4
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 2
  store i32 4, i32* %68, align 4
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 3
  store i32 2, i32* %69, align 4
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 4
  store i32 3, i32* %70, align 4
  %71 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 5
  store i32 3, i32* %71, align 4
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 6
  store i32 4, i32* %72, align 4
  %73 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 7
  store i32 4, i32* %73, align 4
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 8
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 9
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %nextArray2, i32 0, i32 0
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %outArray1, i32 0, i32 0
  br label %78

78:                                               ; preds = %55
  call void @decode10328833750349563204(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* %76, i8* %77)
  %outArray3 = alloca [8 x i8], align 1
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %outArray3, i32 0, i32 0
  store i8 27, i8* %79, align 1
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %outArray3, i32 0, i32 1
  store i8 91, i8* %80, align 1
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %outArray3, i32 0, i32 2
  store i8 91, i8* %81, align 1
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %outArray3, i32 0, i32 3
  store i8 91, i8* %82, align 1
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %outArray3, i32 0, i32 4
  store i8 91, i8* %83, align 1
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %outArray3, i32 0, i32 5
  store i8 72, i8* %84, align 1
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %outArray3, i32 0, i32 6
  store i8 27, i8* %85, align 1
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %outArray3, i32 0, i32 7
  store i8 0, i8* %86, align 1
  %nextArray4 = alloca [8 x i32], align 4
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %nextArray4, i32 0, i32 0
  store i32 1, i32* %87, align 4
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %nextArray4, i32 0, i32 1
  store i32 2, i32* %88, align 4
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %nextArray4, i32 0, i32 2
  store i32 2, i32* %89, align 4
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %nextArray4, i32 0, i32 3
  store i32 2, i32* %90, align 4
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %nextArray4, i32 0, i32 4
  store i32 2, i32* %91, align 4
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %nextArray4, i32 0, i32 5
  store i32 3, i32* %92, align 4
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %nextArray4, i32 0, i32 6
  store i32 1, i32* %93, align 4
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %nextArray4, i32 0, i32 7
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %nextArray4, i32 0, i32 0
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %outArray3, i32 0, i32 0
  br label %97

97:                                               ; preds = %78
  call void @decode10328833750349563204(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32* %95, i8* %96)
  ret void
}

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

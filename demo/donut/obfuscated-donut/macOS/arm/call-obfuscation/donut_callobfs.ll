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
@obfsfuncAddrLookupTable17926936027230796971 = private global [2 x i8*] zeroinitializer
@obfsfuncAddrLookupTable10817243319387547622 = private global [4 x i8*] zeroinitializer
@obfsfuncAddrLookupTable16816458749504168419 = private global [5 x i8*] zeroinitializer
@obfsfuncAddrLookupTable192538758559452859 = private global [1 x i8*] zeroinitializer
@llvm.compiler.used = appending global [9 x i8*] [i8* bitcast (i64 (i64)* @m15576621493755782620 to i8*), i8* bitcast ([2 x i8*]* @obfsfuncAddrLookupTable17926936027230796971 to i8*), i8* bitcast (i8** (i64*)* @lk4001227115549819585 to i8*), i8* bitcast ([4 x i8*]* @obfsfuncAddrLookupTable10817243319387547622 to i8*), i8* bitcast (i8** (i64*)* @lk18316660559584017645 to i8*), i8* bitcast ([5 x i8*]* @obfsfuncAddrLookupTable16816458749504168419 to i8*), i8* bitcast (i8** (i64*)* @lk4998789123989950006 to i8*), i8* bitcast ([1 x i8*]* @obfsfuncAddrLookupTable192538758559452859 to i8*), i8* bitcast (i8** (i64*)* @lk3617530595358267259 to i8*)], section "llvm.metadata"

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
  %5 = alloca i64, align 8
  %6 = call i64 @m15576621493755782620(i64 1291265340011534979)
  %7 = getelementptr [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable17926936027230796971, i32 0, i64 %6
  store i8* bitcast (i32 (i32)* @putchar to i8*), i8** %7, align 8
  %8 = call i64 @m15576621493755782620(i64 1291265340011534978)
  %9 = getelementptr [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable17926936027230796971, i32 0, i64 %8
  store i8* bitcast (i32 (float*, float*)* @update to i8*), i8** %9, align 8
  %10 = icmp eq i64 %3, 1760
  br i1 %10, label %13, label %34

11:                                               ; preds = %22
  %12 = icmp eq i64 %33, 1761
  br i1 %12, label %34, label %13, !llvm.loop !14

13:                                               ; preds = %11, %4
  %14 = phi i64 [ %33, %11 ], [ 0, %4 ]
  %15 = trunc i64 %14 to i32
  %16 = urem i32 %15, 80
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %2, i64 %14
  %20 = load i8, i8* %19, align 1, !tbaa !17
  %21 = sext i8 %20 to i32
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i32 [ %21, %18 ], [ 10, %13 ]
  store i64 1291265340011534979, i64* %5, align 8
  %24 = call i8** @lk4001227115549819585(i64* %5)
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to i32 (i32)*
  %27 = call i32 %26(i32 %23)
  store i64 1291265340011534978, i64* %5, align 8
  %28 = call i8** @lk4001227115549819585(i64* %5)
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to i32 (float*, float*)*
  %31 = call i32 %30(float* %0, float* %1)
  %32 = icmp eq i32 %31, 0
  %33 = add nuw nsw i64 %14, 1
  br i1 %32, label %11, label %34

34:                                               ; preds = %22, %11, %4
  %35 = phi i32 [ 2, %4 ], [ %31, %22 ], [ 0, %11 ]
  ret i32 %35
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
  %1 = alloca i64, align 8
  %2 = call i64 @m15576621493755782620(i64 1291265340011534978)
  %3 = getelementptr [4 x i8*], [4 x i8*]* @obfsfuncAddrLookupTable10817243319387547622, i32 0, i64 %2
  store i8* bitcast (i32 (i8*, ...)* @printf to i8*), i8** %3, align 8
  %4 = call i64 @m15576621493755782620(i64 1291265340011534979)
  %5 = getelementptr [4 x i8*], [4 x i8*]* @obfsfuncAddrLookupTable10817243319387547622, i32 0, i64 %4
  store i8* bitcast (i32 (float*, float*, i8*, float*)* @main_loop to i8*), i8** %5, align 8
  %6 = call i64 @m15576621493755782620(i64 1291265340011534976)
  %7 = getelementptr [4 x i8*], [4 x i8*]* @obfsfuncAddrLookupTable10817243319387547622, i32 0, i64 %6
  store i8* bitcast (void ()* @wait to i8*), i8** %7, align 8
  %8 = call i64 @m15576621493755782620(i64 1291265340011534977)
  %9 = getelementptr [4 x i8*], [4 x i8*]* @obfsfuncAddrLookupTable10817243319387547622, i32 0, i64 %8
  store i8* bitcast (i32 (float*, float*, i8*, float*)* @main_loop to i8*), i8** %9, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [1760 x float], align 4
  %13 = alloca [1760 x i8], align 1
  %14 = bitcast float* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #10
  store float 0.000000e+00, float* %10, align 4, !tbaa !10
  %15 = bitcast float* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #10
  store float 0.000000e+00, float* %11, align 4, !tbaa !10
  %16 = bitcast [1760 x float]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %16) #10
  %17 = getelementptr inbounds [1760 x i8], [1760 x i8]* %13, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %17) #10
  store i64 1291265340011534978, i64* %1, align 8
  %18 = call i8** @lk18316660559584017645(i64* %1)
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32 (i8*, ...)*
  %21 = call i32 (i8*, ...) %20(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = getelementptr inbounds [1760 x float], [1760 x float]* %12, i64 0, i64 0
  store i64 1291265340011534979, i64* %1, align 8
  %23 = call i8** @lk18316660559584017645(i64* %1)
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32 (float*, float*, i8*, float*)*
  %26 = call i32 %25(float* %10, float* %11, i8* %17, float* %22)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %30, %0
  %29 = phi i32 [ %26, %0 ], [ %37, %30 ]
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %17) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %16) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #10
  ret i32 %29

30:                                               ; preds = %30, %0
  store i64 1291265340011534976, i64* %1, align 8
  %31 = call i8** @lk18316660559584017645(i64* %1)
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to void ()*
  call void %33()
  store i64 1291265340011534977, i64* %1, align 8
  %34 = call i8** @lk18316660559584017645(i64* %1)
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to i32 (float*, float*, i8*, float*)*
  %37 = call i32 %36(float* %10, float* %11, i8* %17, float* %22)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %30, label %28, !llvm.loop !18
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = alloca i64, align 8
  %6 = call i64 @m15576621493755782620(i64 1291265340011534979)
  %7 = getelementptr [5 x i8*], [5 x i8*]* @obfsfuncAddrLookupTable16816458749504168419, i32 0, i64 %6
  store i8* bitcast (i32 (i8*, i64, float*, i64)* @clear to i8*), i8** %7, align 8
  %8 = call i64 @m15576621493755782620(i64 1291265340011534978)
  %9 = getelementptr [5 x i8*], [5 x i8*]* @obfsfuncAddrLookupTable16816458749504168419, i32 0, i64 %8
  store i8* bitcast (i32 (float, float*, float*, i8*, float*)* @inner_loop to i8*), i8** %9, align 8
  %10 = call i64 @m15576621493755782620(i64 1291265340011534976)
  %11 = getelementptr [5 x i8*], [5 x i8*]* @obfsfuncAddrLookupTable16816458749504168419, i32 0, i64 %10
  store i8* bitcast (i32 (float, float*, float*, i8*, float*)* @inner_loop to i8*), i8** %11, align 8
  %12 = call i64 @m15576621493755782620(i64 1291265340011534977)
  %13 = getelementptr [5 x i8*], [5 x i8*]* @obfsfuncAddrLookupTable16816458749504168419, i32 0, i64 %12
  store i8* bitcast (i32 (i8*, ...)* @printf to i8*), i8** %13, align 8
  %14 = call i64 @m15576621493755782620(i64 1291265340011534982)
  %15 = getelementptr [5 x i8*], [5 x i8*]* @obfsfuncAddrLookupTable16816458749504168419, i32 0, i64 %14
  store i8* bitcast (i32 (float*, float*, i8*, i64)* @render to i8*), i8** %15, align 8
  store i64 1291265340011534979, i64* %5, align 8
  %16 = call i8** @lk4998789123989950006(i64* %5)
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32 (i8*, i64, float*, i64)*
  %19 = call i32 %18(i8* %2, i64 1760, float* %3, i64 7040)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %4
  store i64 1291265340011534978, i64* %5, align 8
  %22 = call i8** @lk4998789123989950006(i64* %5)
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to i32 (float, float*, float*, i8*, float*)*
  %25 = call i32 %24(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %40

27:                                               ; preds = %33
  store i64 1291265340011534976, i64* %5, align 8
  %28 = call i8** @lk4998789123989950006(i64* %5)
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to i32 (float, float*, float*, i8*, float*)*
  %31 = call i32 %30(float %37, float* %0, float* %1, i8* %2, float* %3)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40, !llvm.loop !19

33:                                               ; preds = %27, %21
  %34 = phi i32 [ %31, %27 ], [ %25, %21 ]
  %35 = phi double [ %38, %27 ], [ 0.000000e+00, %21 ]
  %36 = fadd double %35, 7.000000e-02
  %37 = fptrunc double %36 to float
  %38 = fpext float %37 to double
  %39 = fcmp olt double %38, 6.280000e+00
  br i1 %39, label %27, label %40, !llvm.loop !19

40:                                               ; preds = %33, %27, %21
  %41 = phi i32 [ %25, %21 ], [ %34, %33 ], [ %31, %27 ]
  %42 = phi i1 [ true, %21 ], [ %39, %27 ], [ %39, %33 ]
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  store i64 1291265340011534977, i64* %5, align 8
  %44 = call i8** @lk4998789123989950006(i64* %5)
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast i8* %45 to i32 (i8*, ...)*
  %47 = call i32 (i8*, ...) %46(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i64 1291265340011534982, i64* %5, align 8
  %48 = call i8** @lk4998789123989950006(i64* %5)
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to i32 (float*, float*, i8*, i64)*
  %51 = call i32 %50(float* %0, float* %1, i8* %2, i64 1760)
  br label %52

52:                                               ; preds = %43, %40, %4
  %53 = phi i32 [ %41, %40 ], [ %19, %4 ], [ %51, %43 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #5 {
  %1 = alloca i64, align 8
  %2 = call i64 @m15576621493755782620(i64 1291265340011534978)
  %3 = getelementptr [1 x i8*], [1 x i8*]* @obfsfuncAddrLookupTable192538758559452859, i32 0, i64 %2
  store i8* bitcast (i32 (i32)* @"\01_usleep" to i8*), i8** %3, align 8
  store i64 1291265340011534978, i64* %1, align 8
  %4 = call i8** @lk3617530595358267259(i64* %1)
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to i32 (i32)*
  %7 = call i32 %6(i32 30000)
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

define private i64 @m15576621493755782620(i64 %0) {
  %2 = xor i64 1291265340011534978, %0
  ret i64 %2
}

define private i8** @lk4001227115549819585(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m15576621493755782620(i64 %2)
  %4 = getelementptr inbounds [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable17926936027230796971, i32 0, i64 %3
  ret i8** %4
}

define private i8** @lk18316660559584017645(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m15576621493755782620(i64 %2)
  %4 = getelementptr inbounds [4 x i8*], [4 x i8*]* @obfsfuncAddrLookupTable10817243319387547622, i32 0, i64 %3
  ret i8** %4
}

define private i8** @lk4998789123989950006(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m15576621493755782620(i64 %2)
  %4 = getelementptr inbounds [5 x i8*], [5 x i8*]* @obfsfuncAddrLookupTable16816458749504168419, i32 0, i64 %3
  ret i8** %4
}

define private i8** @lk3617530595358267259(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m15576621493755782620(i64 %2)
  %4 = getelementptr inbounds [1 x i8*], [1 x i8*]* @obfsfuncAddrLookupTable192538758559452859, i32 0, i64 %3
  ret i8** %4
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

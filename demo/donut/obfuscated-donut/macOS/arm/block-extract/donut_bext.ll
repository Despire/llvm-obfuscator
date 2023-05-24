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
  br i1 %5, label %6, label %codeRepl

codeRepl:                                         ; preds = %2
  call void @update.extracted(float* %0, float* %1)
  br label %6

6:                                                ; preds = %codeRepl, %2
  %7 = phi i32 [ 0, %codeRepl ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @render(float* %0, float* %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #1 {
  %.loc = alloca i32, align 4
  %5 = icmp eq i64 %3, 1760
  br i1 %5, label %8, label %19

6:                                                ; preds = %13
  %7 = icmp eq i64 %18, 1761
  br i1 %7, label %19, label %8, !llvm.loop !10

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %18, %6 ], [ 0, %4 ]
  %10 = trunc i64 %9 to i32
  %11 = urem i32 %10, 80
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %codeRepl

codeRepl:                                         ; preds = %8
  %lt.cast = bitcast i32* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  call void @render.extracted(i8* %2, i64 %9, i32* %.loc)
  %.reload = load i32, i32* %.loc, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  br label %13

13:                                               ; preds = %codeRepl, %8
  %14 = phi i32 [ %.reload, %codeRepl ], [ 10, %8 ]
  %15 = call i32 @putchar(i32 %14)
  %16 = call i32 @update(float* %0, float* %1)
  %17 = icmp eq i32 %16, 0
  %18 = add nuw nsw i64 %9, 1
  br i1 %17, label %6, label %19

19:                                               ; preds = %13, %6, %4
  %20 = phi i32 [ 2, %4 ], [ %16, %13 ], [ 0, %6 ]
  ret i32 %20
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
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #11
  %13 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %13, i8 0, i64 7040, i1 false) #11
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i32 [ 0, %12 ], [ 2, %4 ], [ 2, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
  %.loc2 = alloca i1, align 1
  %.loc1 = alloca i32, align 4
  %.loc = alloca i64, align 8
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca [1760 x float], align 4
  %4 = alloca [1760 x i8], align 1
  %5 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #11
  store float 0.000000e+00, float* %1, align 4, !tbaa !13
  %6 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11
  store float 0.000000e+00, float* %2, align 4, !tbaa !13
  %7 = bitcast [1760 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %7) #11
  %8 = getelementptr inbounds [1760 x i8], [1760 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %8) #11
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [1760 x float], [1760 x float]* %3, i64 0, i64 0
  br label %11

11:                                               ; preds = %19, %0
  %12 = phi i32 [ 0, %0 ], [ %20, %19 ]
  br label %codeRepl

codeRepl:                                         ; preds = %11
  %lt.cast = bitcast i64* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  %lt.cast5 = bitcast i32* %.loc1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast5)
  %lt.cast6 = bitcast i1* %.loc2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast6)
  %targetBlock = call i1 @main..split(float* %1, float* %2, i8* %8, float* %10, i64* %.loc, i32* %.loc1, i1* %.loc2)
  %.reload = load i64, i64* %.loc, align 8
  %.reload3 = load i32, i32* %.loc1, align 4
  %.reload4 = load i1, i1* %.loc2, align 1
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast5)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast6)
  br i1 %targetBlock, label %13, label %19

13:                                               ; preds = %codeRepl
  %14 = call i64 @"\01_clock"() #11
  %15 = sub i64 %14, %.reload
  %16 = uitofp i64 %15 to double
  %17 = fdiv double %16, 1.000000e+06
  %18 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), double %17)
  call fastcc void @wait()
  br label %19

19:                                               ; preds = %codeRepl, %13
  %20 = phi i32 [ %12, %13 ], [ %.reload3, %codeRepl ]
  br i1 %.reload4, label %11, label %21, !llvm.loop !17

21:                                               ; preds = %19
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #11
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #11
  ret i32 %20
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare i64 @"\01_clock"() local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %.loc2 = alloca i32, align 4
  %.loc = alloca i32, align 4
  %5 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %codeRepl, label %20

codeRepl:                                         ; preds = %4
  %lt.cast = bitcast i32* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  %targetBlock = call i1 @main_loop.extracted(float* %0, float* %1, i8* %2, float* %3, i32* %.loc)
  %.reload = load i32, i32* %.loc, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  br i1 %targetBlock, label %7, label %14

codeRepl1:                                        ; preds = %7
  %lt.cast5 = bitcast i32* %.loc2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast5)
  %targetBlock3 = call i1 @main_loop.extracted.1(float %11, float* %0, float* %1, i8* %2, float* %3, i32* %.loc2)
  %.reload4 = load i32, i32* %.loc2, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast5)
  br i1 %targetBlock3, label %7, label %14

7:                                                ; preds = %codeRepl1, %codeRepl
  %8 = phi i32 [ %.reload4, %codeRepl1 ], [ %.reload, %codeRepl ]
  %9 = phi double [ %12, %codeRepl1 ], [ 0.000000e+00, %codeRepl ]
  %10 = fadd double %9, 7.000000e-02
  %11 = fptrunc double %10 to float
  %12 = fpext float %11 to double
  %13 = fcmp olt double %12, 6.280000e+00
  br i1 %13, label %codeRepl1, label %14, !llvm.loop !18

14:                                               ; preds = %codeRepl1, %codeRepl, %7
  %15 = phi i32 [ %.reload, %codeRepl ], [ %8, %7 ], [ %.reload4, %codeRepl1 ]
  %16 = phi i1 [ true, %codeRepl ], [ %13, %codeRepl1 ], [ %13, %7 ]
  br label %codeRepl6

codeRepl6:                                        ; preds = %14
  %targetBlock7 = call i1 @main_loop..split(i1 %16)
  br i1 %targetBlock7, label %20, label %17

17:                                               ; preds = %codeRepl6
  %18 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  br label %20

20:                                               ; preds = %codeRepl6, %17, %4
  %21 = phi i32 [ %15, %codeRepl6 ], [ %5, %4 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #6 {
  %1 = call i32 @"\01_usleep"(i32 30000) #11
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #7 {
  %.loc3 = alloca i32, align 4
  %.loc2 = alloca i32, align 4
  %.loc1 = alloca i32, align 4
  %.loc = alloca float, align 4
  %6 = icmp eq float* %1, null
  %7 = icmp eq float* %2, null
  %8 = select i1 %6, i1 true, i1 %7
  %9 = icmp eq i8* %3, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq float* %4, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %42, label %13

13:                                               ; preds = %5
  %14 = fpext float %0 to double
  %15 = call double @llvm.cos.f64(double %14)
  %16 = fptrunc double %15 to float
  %17 = call double @llvm.sin.f64(double %14)
  %18 = fptrunc double %17 to float
  %19 = fadd float %16, 2.000000e+00
  br label %20

20:                                               ; preds = %37, %13
  %21 = phi double [ 0.000000e+00, %13 ], [ %40, %37 ]
  br label %codeRepl

codeRepl:                                         ; preds = %20
  %lt.cast = bitcast float* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  %lt.cast7 = bitcast i32* %.loc1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast7)
  %lt.cast8 = bitcast i32* %.loc2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast8)
  %lt.cast9 = bitcast i32* %.loc3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast9)
  %targetBlock = call i1 @inner_loop..split(double %21, float* %1, float %19, float %18, float* %2, float %16, float* %.loc, i32* %.loc1, i32* %.loc2, i32* %.loc3)
  %.reload = load float, float* %.loc, align 4
  %.reload4 = load i32, i32* %.loc1, align 4
  %.reload5 = load i32, i32* %.loc2, align 4
  %.reload6 = load i32, i32* %.loc3, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast7)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast8)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast9)
  br i1 %targetBlock, label %22, label %37

22:                                               ; preds = %codeRepl
  %23 = mul nsw i32 %.reload5, 80
  %24 = add nsw i32 %23, %.reload4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %4, i64 %25
  %27 = load float, float* %26, align 4, !tbaa !13
  %28 = fcmp ogt float %.reload, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  store float %.reload, float* %26, align 4, !tbaa !13
  %30 = load i8*, i8** @CHARS, align 8, !tbaa !19
  %31 = icmp sgt i32 %.reload6, 0
  %32 = select i1 %31, i32 %.reload6, i32 0
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1, !tbaa !21
  %36 = getelementptr inbounds i8, i8* %3, i64 %25
  store i8 %35, i8* %36, align 1, !tbaa !21
  br label %37

37:                                               ; preds = %codeRepl, %29, %22
  %38 = fadd double %21, 2.000000e-02
  %39 = fptrunc double %38 to float
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 6.280000e+00
  br i1 %41, label %20, label %42, !llvm.loop !22

42:                                               ; preds = %37, %5
  %43 = phi i32 [ 2, %5 ], [ 0, %37 ]
  ret i32 %43
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #8

declare i32 @"\01_usleep"(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal void @update.extracted(float* %0, float* %1) #10 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  %3 = load float, float* %0, align 4, !tbaa !13
  %4 = fpext float %3 to double
  %5 = fadd double %4, 4.000000e-05
  %6 = fptrunc double %5 to float
  store float %6, float* %0, align 4, !tbaa !13
  %7 = load float, float* %1, align 4, !tbaa !13
  %8 = fpext float %7 to double
  %9 = fadd double %8, 2.000000e-05
  %10 = fptrunc double %9 to float
  store float %10, float* %1, align 4, !tbaa !13
  br label %codeRepl

codeRepl:                                         ; preds = %2
  call void @update.extracted.extracted()
  br label %.exitStub

.exitStub:                                        ; preds = %codeRepl
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal void @update.extracted.extracted() #10 {
newFuncRoot:
  br label %0

0:                                                ; preds = %newFuncRoot
  br label %.exitStub.exitStub

.exitStub.exitStub:                               ; preds = %0
  ret void
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal void @render.extracted(i8* %0, i64 %1, i32* %.out) #1 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  %3 = getelementptr inbounds i8, i8* %0, i64 %1
  %4 = load i8, i8* %3, align 1, !tbaa !21
  %5 = sext i8 %4 to i32
  store i32 %5, i32* %.out, align 4
  br label %.exitStub

.exitStub:                                        ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i1 @main..split(float* %0, float* %1, i8* %2, float* %3, i64* %.out, i32* %.out1, i1* %.out2) #6 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  br label %codeRepl

codeRepl:                                         ; preds = %.split
  %targetBlock = call i1 @main..split.extracted(i64* %.out, float* %0, float* %1, i8* %2, float* %3, i32* %.out1, i1* %.out2)
  br i1 %targetBlock, label %.exitStub, label %.exitStub3

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub3:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i1 @main..split.extracted(i64* %.out, float* %0, float* %1, i8* %2, float* %3, i32* %.out1, i1* %.out2) #6 {
newFuncRoot:
  br label %4

4:                                                ; preds = %newFuncRoot
  %5 = call i64 @"\01_clock"() #11
  store i64 %5, i64* %.out, align 8
  %6 = call fastcc i32 @main_loop(float* nonnull %0, float* nonnull %1, i8* nonnull %2, float* nonnull %3)
  store i32 %6, i32* %.out1, align 4
  %7 = icmp eq i32 %6, 0
  store i1 %7, i1* %.out2, align 1
  br i1 %7, label %.exitStub.exitStub, label %.exitStub3.exitStub

.exitStub.exitStub:                               ; preds = %4
  ret i1 true

.exitStub3.exitStub:                              ; preds = %4
  ret i1 false
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @main_loop.extracted(float* %0, float* %1, i8* %2, float* %3, i32* %.out) #1 {
newFuncRoot:
  br label %4

4:                                                ; preds = %newFuncRoot
  %5 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  store i32 %5, i32* %.out, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %.exitStub, label %.exitStub1

.exitStub:                                        ; preds = %4
  ret i1 true

.exitStub1:                                       ; preds = %4
  ret i1 false
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @main_loop.extracted.1(float %0, float* %1, float* %2, i8* %3, float* %4, i32* %.out) #1 {
newFuncRoot:
  br label %5

5:                                                ; preds = %newFuncRoot
  %6 = call fastcc i32 @inner_loop(float %0, float* %1, float* %2, i8* %3, float* %4)
  store i32 %6, i32* %.out, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %.exitStub, label %.exitStub1, !llvm.loop !18

.exitStub:                                        ; preds = %5
  ret i1 true

.exitStub1:                                       ; preds = %5
  ret i1 false
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @main_loop..split(i1 %0) #1 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  br i1 %0, label %.exitStub, label %.exitStub1

.exitStub:                                        ; preds = %.split
  ret i1 true

.exitStub1:                                       ; preds = %.split
  ret i1 false
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @inner_loop..split(double %0, float* %1, float %2, float %3, float* %4, float %5, float* %.out, i32* %.out1, i32* %.out2, i32* %.out3) #1 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %6 = call double @llvm.sin.f64(double %0)
  %7 = fptrunc double %6 to float
  %8 = load float, float* %1, align 4, !tbaa !13
  %9 = fpext float %8 to double
  %10 = call double @llvm.sin.f64(double %9)
  %11 = fptrunc double %10 to float
  %12 = call double @llvm.cos.f64(double %9)
  %13 = fptrunc double %12 to float
  %14 = fmul float %2, %7
  %15 = fmul float %14, %11
  %16 = fmul float %3, %13
  %17 = fadd float %15, %16
  %18 = fadd float %17, 5.000000e+00
  %19 = fdiv float 1.000000e+00, %18
  store float %19, float* %.out, align 4
  %20 = call double @llvm.cos.f64(double %0)
  %21 = fptrunc double %20 to float
  %22 = load float, float* %4, align 4, !tbaa !13
  %23 = fpext float %22 to double
  %24 = call double @llvm.cos.f64(double %23)
  %25 = fptrunc double %24 to float
  %26 = call double @llvm.sin.f64(double %23)
  %27 = fptrunc double %26 to float
  %28 = fmul float %14, %13
  %29 = fmul float %3, %11
  %30 = fsub float %28, %29
  %31 = fmul float %19, 3.000000e+01
  %32 = fmul float %2, %21
  %33 = fmul float %32, %25
  %34 = fmul float %30, %27
  %35 = fsub float %33, %34
  %36 = fmul float %35, %31
  %37 = fadd float %36, 4.000000e+01
  %38 = fptosi float %37 to i32
  store i32 %38, i32* %.out1, align 4
  %39 = fmul float %19, 1.500000e+01
  %40 = fmul float %32, %27
  %41 = fmul float %30, %25
  %42 = fadd float %40, %41
  %43 = fmul float %42, %39
  %44 = fadd float %43, 1.200000e+01
  %45 = fptosi float %44 to i32
  store i32 %45, i32* %.out2, align 4
  %46 = fmul float %5, %7
  %47 = fmul float %46, %13
  %48 = fsub float %29, %47
  %49 = fmul float %48, %25
  %50 = fmul float %46, %11
  %51 = fsub float %49, %50
  %52 = fsub float %51, %16
  %53 = fmul float %5, %21
  %54 = fmul float %53, %27
  %55 = fsub float %52, %54
  br label %codeRepl

codeRepl:                                         ; preds = %.split
  %targetBlock = call i1 @inner_loop..split.extracted(float %55, i32* %.out3, i32 %45, i32 %38)
  br i1 %targetBlock, label %.exitStub, label %.exitStub4

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub4:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @inner_loop..split.extracted(float %0, i32* %.out3, i32 %1, i32 %2) #1 {
newFuncRoot:
  br label %3

3:                                                ; preds = %newFuncRoot
  %4 = fmul float %0, 8.000000e+00
  %5 = fptosi float %4 to i32
  store i32 %5, i32* %.out3, align 4
  %6 = add i32 %1, -1
  %7 = icmp ult i32 %6, 21
  %8 = icmp sgt i32 %2, 0
  %9 = select i1 %7, i1 %8, i1 false
  %10 = icmp slt i32 %2, 80
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %.exitStub.exitStub, label %.exitStub4.exitStub

.exitStub.exitStub:                               ; preds = %3
  ret i1 true

.exitStub4.exitStub:                              ; preds = %3
  ret i1 false
}

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
attributes #10 = { mustprogress nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { nounwind }

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !11, !12}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !15, i64 0}
!21 = !{!15, !15, i64 0}
!22 = distinct !{!22, !11, !12}

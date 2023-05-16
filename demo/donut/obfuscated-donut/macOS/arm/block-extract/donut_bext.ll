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
  br label %codeRepl

codeRepl:                                         ; preds = %2
  %targetBlock = call i1 @update..split(float* %0, float* %1)
  br i1 %targetBlock, label %12, label %3

3:                                                ; preds = %codeRepl
  %4 = load float, float* %0, align 4, !tbaa !10
  %5 = fpext float %4 to double
  %6 = fadd double %5, 4.000000e-05
  %7 = fptrunc double %6 to float
  store float %7, float* %0, align 4, !tbaa !10
  %8 = load float, float* %1, align 4, !tbaa !10
  %9 = fpext float %8 to double
  %10 = fadd double %9, 2.000000e-05
  %11 = fptrunc double %10 to float
  store float %11, float* %1, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %codeRepl, %3
  %13 = phi i32 [ 0, %3 ], [ 2, %codeRepl ]
  ret i32 %13
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @render(float* %0, float* %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #1 {
  %.loc3 = alloca i64, align 8
  %.loc2 = alloca i32, align 4
  %.loc = alloca i32, align 4
  %5 = icmp eq i64 %3, 1760
  br i1 %5, label %8, label %15

6:                                                ; preds = %codeRepl1
  %7 = icmp eq i64 %.reload5, 1761
  br i1 %7, label %15, label %8, !llvm.loop !14

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %.reload5, %6 ], [ 0, %4 ]
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
  br label %codeRepl1

codeRepl1:                                        ; preds = %13
  %lt.cast6 = bitcast i32* %.loc2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast6)
  %lt.cast7 = bitcast i64* %.loc3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast7)
  %targetBlock = call i1 @render..split(i32 %14, float* %0, float* %1, i64 %9, i32* %.loc2, i64* %.loc3)
  %.reload4 = load i32, i32* %.loc2, align 4
  %.reload5 = load i64, i64* %.loc3, align 8
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast6)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast7)
  br i1 %targetBlock, label %6, label %15

15:                                               ; preds = %codeRepl1, %6, %4
  %16 = phi i32 [ 2, %4 ], [ %.reload4, %codeRepl1 ], [ 0, %6 ]
  ret i32 %16
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
  br i1 %7, label %8, label %codeRepl

codeRepl:                                         ; preds = %4
  %targetBlock = call i1 @clear.extracted(i64 %1, i64 %3)
  br i1 %targetBlock, label %8, label %codeRepl1

codeRepl1:                                        ; preds = %codeRepl
  call void @clear.extracted.1(i8* %0, float* %2)
  br label %8

8:                                                ; preds = %codeRepl1, %codeRepl, %4
  %9 = phi i32 [ 0, %codeRepl1 ], [ 2, %4 ], [ 2, %codeRepl ]
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca [1760 x float], align 4
  %4 = alloca [1760 x i8], align 1
  %5 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #11
  store float 0.000000e+00, float* %1, align 4, !tbaa !10
  %6 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11
  store float 0.000000e+00, float* %2, align 4, !tbaa !10
  %7 = bitcast [1760 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %7) #11
  %8 = getelementptr inbounds [1760 x i8], [1760 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %8) #11
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [1760 x float], [1760 x float]* %3, i64 0, i64 0
  %11 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %15, %0
  %14 = phi i32 [ %11, %0 ], [ %16, %15 ]
  br label %codeRepl

codeRepl:                                         ; preds = %13
  call void @main..split(i8* %8, i8* %7, i8* %6, i8* %5)
  br label %.ret

.ret:                                             ; preds = %codeRepl
  ret i32 %14

15:                                               ; preds = %15, %0
  call fastcc void @wait()
  %16 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %15, label %13, !llvm.loop !17
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %.loc7 = alloca i32, align 4
  %.loc2 = alloca i32, align 4
  %.loc = alloca i32, align 4
  br label %codeRepl

codeRepl:                                         ; preds = %4
  %lt.cast = bitcast i32* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  %targetBlock = call i1 @main_loop..split(i8* %2, float* %3, i32* %.loc)
  %.reload = load i32, i32* %.loc, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  br i1 %targetBlock, label %codeRepl1, label %18

codeRepl1:                                        ; preds = %codeRepl
  %lt.cast5 = bitcast i32* %.loc2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast5)
  %targetBlock3 = call i1 @main_loop.extracted(float* %0, float* %1, i8* %2, float* %3, i32* %.loc2)
  %.reload4 = load i32, i32* %.loc2, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast5)
  br i1 %targetBlock3, label %5, label %12

codeRepl6:                                        ; preds = %5
  %lt.cast10 = bitcast i32* %.loc7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast10)
  %targetBlock8 = call i1 @main_loop.extracted.2(float %9, float* %0, float* %1, i8* %2, float* %3, i32* %.loc7)
  %.reload9 = load i32, i32* %.loc7, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast10)
  br i1 %targetBlock8, label %5, label %12

5:                                                ; preds = %codeRepl6, %codeRepl1
  %6 = phi i32 [ %.reload9, %codeRepl6 ], [ %.reload4, %codeRepl1 ]
  %7 = phi double [ %10, %codeRepl6 ], [ 0.000000e+00, %codeRepl1 ]
  %8 = fadd double %7, 7.000000e-02
  %9 = fptrunc double %8 to float
  %10 = fpext float %9 to double
  %11 = fcmp olt double %10, 6.280000e+00
  br i1 %11, label %codeRepl6, label %12, !llvm.loop !18

12:                                               ; preds = %codeRepl6, %codeRepl1, %5
  %13 = phi i32 [ %.reload4, %codeRepl1 ], [ %6, %5 ], [ %.reload9, %codeRepl6 ]
  %14 = phi i1 [ true, %codeRepl1 ], [ %11, %codeRepl6 ], [ %11, %5 ]
  br label %codeRepl11

codeRepl11:                                       ; preds = %12
  %targetBlock12 = call i1 @main_loop..split.3(i1 %14)
  br i1 %targetBlock12, label %18, label %15

15:                                               ; preds = %codeRepl11
  %16 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  br label %18

18:                                               ; preds = %codeRepl11, %codeRepl, %15
  %19 = phi i32 [ %13, %codeRepl11 ], [ %.reload, %codeRepl ], [ %17, %15 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #5 {
  %1 = call i32 @"\01_usleep"(i32 30000) #11
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #6 {
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
  %27 = load float, float* %26, align 4, !tbaa !10
  %28 = fcmp ogt float %.reload, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  store float %.reload, float* %26, align 4, !tbaa !10
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
declare double @llvm.sin.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #7

declare i32 @"\01_usleep"(i32) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal i1 @update..split(float* %0, float* %1) #10 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %2 = icmp eq float* %0, null
  %3 = icmp eq float* %1, null
  %4 = select i1 %2, i1 true, i1 %3
  br i1 %4, label %.exitStub, label %.exitStub1

.exitStub:                                        ; preds = %.split
  ret i1 true

.exitStub1:                                       ; preds = %.split
  ret i1 false
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

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @render..split(i32 %0, float* %1, float* %2, i64 %3, i32* %.out, i64* %.out1) #1 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %4 = call i32 @putchar(i32 %0)
  %5 = call i32 @update(float* %1, float* %2)
  br label %codeRepl

codeRepl:                                         ; preds = %.split
  %targetBlock = call i1 @render..split.extracted(i32 %5, i32* %.out, i64 %3, i64* %.out1)
  br i1 %targetBlock, label %.exitStub, label %.exitStub2

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub2:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @render..split.extracted(i32 %0, i32* %.out, i64 %1, i64* %.out1) #1 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  store i32 %0, i32* %.out, align 4
  %3 = icmp eq i32 %0, 0
  %4 = add nuw nsw i64 %1, 1
  store i64 %4, i64* %.out1, align 8
  br i1 %3, label %.exitStub.exitStub, label %.exitStub2.exitStub

.exitStub.exitStub:                               ; preds = %2
  ret i1 true

.exitStub2.exitStub:                              ; preds = %2
  ret i1 false
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @clear.extracted(i64 %0, i64 %1) #1 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  %3 = icmp ne i64 %0, 1760
  %4 = icmp ne i64 %1, 7040
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %.exitStub, label %.exitStub1

.exitStub:                                        ; preds = %2
  ret i1 true

.exitStub1:                                       ; preds = %2
  ret i1 false
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal void @clear.extracted.1(i8* %0, float* %1) #1 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #11
  %3 = bitcast float* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %3, i8 0, i64 7040, i1 false) #11
  br label %.exitStub

.exitStub:                                        ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @main..split(i8* %0, i8* %1, i8* %2, i8* %3) #5 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  br label %.ret.exitStub

.ret.exitStub:                                    ; preds = %.split
  ret void
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @main_loop..split(i8* %0, float* %1, i32* %.out) #1 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %2 = call i32 @clear(i8* %0, i64 1760, float* %1, i64 7040)
  store i32 %2, i32* %.out, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %.exitStub, label %.exitStub1

.exitStub:                                        ; preds = %.split
  ret i1 true

.exitStub1:                                       ; preds = %.split
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
define internal i1 @main_loop.extracted.2(float %0, float* %1, float* %2, i8* %3, float* %4, i32* %.out) #1 {
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
define internal i1 @main_loop..split.3(i1 %0) #1 {
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
  %8 = load float, float* %1, align 4, !tbaa !10
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
  %22 = load float, float* %4, align 4, !tbaa !10
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
  br label %codeRepl

codeRepl:                                         ; preds = %.split
  %targetBlock = call i1 @inner_loop..split.extracted(float %49, float %50, float %16, float %5, float %21, float %27, i32* %.out3, i32 %45, i32 %38)
  br i1 %targetBlock, label %.exitStub, label %.exitStub4

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub4:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal i1 @inner_loop..split.extracted(float %0, float %1, float %2, float %3, float %4, float %5, i32* %.out3, i32 %6, i32 %7) #1 {
newFuncRoot:
  br label %8

8:                                                ; preds = %newFuncRoot
  %9 = fsub float %0, %1
  %10 = fsub float %9, %2
  %11 = fmul float %3, %4
  %12 = fmul float %11, %5
  %13 = fsub float %10, %12
  %14 = fmul float %13, 8.000000e+00
  %15 = fptosi float %14 to i32
  store i32 %15, i32* %.out3, align 4
  %16 = add i32 %6, -1
  %17 = icmp ult i32 %16, 21
  %18 = icmp sgt i32 %7, 0
  %19 = select i1 %17, i1 %18, i1 false
  %20 = icmp slt i32 %7, 80
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %.exitStub.exitStub, label %.exitStub4.exitStub

.exitStub.exitStub:                               ; preds = %8
  ret i1 true

.exitStub4.exitStub:                              ; preds = %8
  ret i1 false
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
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !15, !16}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !12, i64 0}
!21 = !{!12, !12, i64 0}
!22 = distinct !{!22, !15, !16}

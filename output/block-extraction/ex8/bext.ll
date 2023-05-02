; ModuleID = 'output/block-extraction/ex8/ex8.ll'
source_filename = "input/block-extraction/ex8/ex8.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %7

6:                                                ; preds = %13
  ret void

7:                                                ; preds = %13, %4
  %8 = phi i64 [ 0, %4 ], [ %24, %13 ]
  br label %codeRepl

codeRepl:                                         ; preds = %7
  %targetBlock = call i1 @_Z7displayPKcRfS1_i..split(i64 %8)
  br i1 %targetBlock, label %13, label %9

9:                                                ; preds = %codeRepl
  %10 = getelementptr inbounds i8, i8* %0, i64 %8
  %11 = load i8, i8* %10, align 1, !tbaa !10
  %12 = sext i8 %11 to i32
  br label %13

13:                                               ; preds = %codeRepl, %9
  %14 = phi i32 [ %12, %9 ], [ 10, %codeRepl ]
  %15 = call i32 @putchar(i32 %14)
  %16 = load float, float* %1, align 4, !tbaa !13
  %17 = fpext float %16 to double
  %18 = fadd double %17, 4.000000e-05
  %19 = fptrunc double %18 to float
  store float %19, float* %1, align 4, !tbaa !13
  %20 = load float, float* %2, align 4, !tbaa !13
  %21 = fpext float %20 to double
  %22 = fadd double %21, 2.000000e-05
  %23 = fptrunc double %22 to float
  store float %23, float* %2, align 4, !tbaa !13
  %24 = add nuw nsw i64 %8, 1
  %25 = icmp eq i64 %24, 1761
  br i1 %25, label %6, label %7, !llvm.loop !15
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
  %.loc41 = alloca double, align 8
  %.loc40 = alloca float, align 4
  %.loc29 = alloca i32, align 4
  %.loc28 = alloca i32, align 4
  %.loc27 = alloca i32, align 4
  %.loc26 = alloca float, align 4
  %.loc8 = alloca float, align 4
  %.loc7 = alloca float, align 4
  %.loc6 = alloca float, align 4
  %.loc5 = alloca float, align 4
  %.loc4 = alloca float, align 4
  %.loc3 = alloca float, align 4
  %.loc2 = alloca float, align 4
  %.loc1 = alloca float, align 4
  %.loc = alloca float, align 4
  br label %codeRepl

codeRepl:                                         ; preds = %7
  %lt.cast = bitcast float* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  %lt.cast17 = bitcast float* %.loc1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast17)
  %lt.cast18 = bitcast float* %.loc2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast18)
  %lt.cast19 = bitcast float* %.loc3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast19)
  %lt.cast20 = bitcast float* %.loc4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast20)
  %lt.cast21 = bitcast float* %.loc5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast21)
  %lt.cast22 = bitcast float* %.loc6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast22)
  %lt.cast23 = bitcast float* %.loc7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast23)
  %lt.cast24 = bitcast float* %.loc8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast24)
  call void @_Z6renderffiPfPcii..split(i32 %6, i32 %2, i8* %4, float* %3, i32 %5, float %0, float %1, float* %.loc, float* %.loc1, float* %.loc2, float* %.loc3, float* %.loc4, float* %.loc5, float* %.loc6, float* %.loc7, float* %.loc8)
  %.reload = load float, float* %.loc, align 4
  %.reload9 = load float, float* %.loc1, align 4
  %.reload10 = load float, float* %.loc2, align 4
  %.reload11 = load float, float* %.loc3, align 4
  %.reload12 = load float, float* %.loc4, align 4
  %.reload13 = load float, float* %.loc5, align 4
  %.reload14 = load float, float* %.loc6, align 4
  %.reload15 = load float, float* %.loc7, align 4
  %.reload16 = load float, float* %.loc8, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast17)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast18)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast19)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast20)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast21)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast22)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast23)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast24)
  br label %9

8:                                                ; preds = %codeRepl39
  ret void

9:                                                ; preds = %codeRepl39, %codeRepl
  %10 = phi double [ 0.000000e+00, %codeRepl ], [ %.reload44, %codeRepl39 ]
  %11 = phi float [ 0.000000e+00, %codeRepl ], [ %.reload43, %codeRepl39 ]
  br label %codeRepl25

codeRepl25:                                       ; preds = %9
  %lt.cast34 = bitcast float* %.loc26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast34)
  %lt.cast35 = bitcast i32* %.loc27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast35)
  %lt.cast36 = bitcast i32* %.loc28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast36)
  %lt.cast37 = bitcast i32* %.loc29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast37)
  %targetBlock = call i1 @_Z6renderffiPfPcii..split.1(float %11, float %.reload, float %.reload11, float %.reload13, float %.reload12, float %.reload14, float %.reload16, float %.reload15, float %.reload10, float %.reload9, i32 %5, i32 %6, float* %.loc26, i32* %.loc27, i32* %.loc28, i32* %.loc29)
  %.reload30 = load float, float* %.loc26, align 4
  %.reload31 = load i32, i32* %.loc27, align 4
  %.reload32 = load i32, i32* %.loc28, align 4
  %.reload33 = load i32, i32* %.loc29, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast34)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast35)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast36)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast37)
  br i1 %targetBlock, label %12, label %codeRepl39

12:                                               ; preds = %codeRepl25
  %13 = mul nsw i32 %.reload31, %6
  %14 = add nsw i32 %13, %.reload32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %3, i64 %15
  %17 = load float, float* %16, align 4, !tbaa !13
  %18 = fcmp ogt float %.reload30, %17
  br i1 %18, label %codeRepl38, label %codeRepl39

codeRepl38:                                       ; preds = %12
  call void @_Z6renderffiPfPcii.extracted(float %.reload30, float* %16, i32 %.reload33, i8* %4, i64 %15)
  br label %codeRepl39

codeRepl39:                                       ; preds = %12, %codeRepl25, %codeRepl38
  %lt.cast45 = bitcast float* %.loc40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast45)
  %lt.cast46 = bitcast double* %.loc41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast46)
  %targetBlock42 = call i1 @_Z6renderffiPfPcii.extracted.2(double %10, float* %.loc40, double* %.loc41)
  %.reload43 = load float, float* %.loc40, align 4
  %.reload44 = load double, double* %.loc41, align 8
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast45)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast46)
  br i1 %targetBlock42, label %9, label %8
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #10
  store float 0.000000e+00, float* %1, align 4, !tbaa !13
  %4 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10
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
  br i1 %16, label %18, label %11, !llvm.loop !18

17:                                               ; preds = %18
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #10
  ret i32 %29

18:                                               ; preds = %18, %11
  %19 = phi i64 [ %30, %18 ], [ 0, %11 ]
  %20 = phi i32 [ %29, %18 ], [ 0, %11 ]
  %21 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %19
  %22 = load i8, i8* %21, align 1, !tbaa !10
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %20, %23
  %25 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %19
  %26 = load float, float* %25, align 4, !tbaa !13
  %27 = sitofp i32 %24 to float
  %28 = fadd float %26, %27
  %29 = fptosi float %28 to i32
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 1760
  br i1 %31, label %17, label %18, !llvm.loop !19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #8

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z7displayPKcRfS1_i..split(i64 %0) #9 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %1 = trunc i64 %0 to i32
  %2 = urem i32 %1, 80
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %.exitStub, label %.exitStub1

.exitStub:                                        ; preds = %.split
  ret i1 true

.exitStub1:                                       ; preds = %.split
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal void @_Z6renderffiPfPcii..split(i32 %0, i32 %1, i8* %2, float* %3, i32 %4, float %5, float %6, float* %.out, float* %.out1, float* %.out2, float* %.out3, float* %.out4, float* %.out5, float* %.out6, float* %.out7, float* %.out8) #9 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %7 = sdiv i32 %0, 40
  %8 = sext i32 %1 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 32, i64 %8, i1 false)
  %9 = bitcast float* %3 to i8*
  %10 = shl nsw i64 %8, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 %10, i1 false)
  %11 = sitofp i32 %7 to float
  store float %11, float* %.out, align 4
  %12 = sdiv i32 %0, 2
  %13 = sitofp i32 %12 to float
  store float %13, float* %.out1, align 4
  %14 = sdiv i32 %4, 2
  %15 = add nsw i32 %14, 1
  %16 = sitofp i32 %15 to float
  store float %16, float* %.out2, align 4
  %17 = call fastcc float @_ZL3sinf(float 5.000000e-01) #10
  store float %17, float* %.out3, align 4
  %18 = call fastcc float @_ZL3sinf(float %5) #10
  store float %18, float* %.out4, align 4
  %19 = call fastcc float @_ZL3cosf(float %5) #10
  store float %19, float* %.out5, align 4
  %20 = call fastcc float @_ZL3cosf(float 5.000000e-01) #10
  br label %codeRepl

codeRepl:                                         ; preds = %.split
  call void @_Z6renderffiPfPcii..split.extracted(float %20, float* %.out6, float %6, float* %.out7, float* %.out8)
  br label %.exitStub

.exitStub:                                        ; preds = %codeRepl
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii..split.1(float %0, float %.reload, float %.reload11, float %.reload13, float %.reload12, float %.reload14, float %.reload16, float %.reload15, float %.reload10, float %.reload9, i32 %1, i32 %2, float* %.out, i32* %.out1, i32* %.out2, i32* %.out3) #9 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %3 = call fastcc float @_ZL3cosf(float %0) #10
  %4 = call fastcc float @_ZL3sinf(float %0) #10
  %5 = fadd float %3, %.reload
  %6 = fmul float %.reload11, %5
  %7 = fmul float %6, %.reload13
  %8 = fmul float %.reload12, %4
  %9 = fsub float %7, %8
  %10 = fmul float %.reload12, %6
  %11 = fmul float %4, %.reload13
  %12 = fadd float %10, %11
  %13 = fadd float %12, 5.000000e+00
  %14 = fdiv float 1.000000e+00, %13
  store float %14, float* %.out, align 4
  br label %codeRepl

codeRepl:                                         ; preds = %.split
  %targetBlock = call i1 @_Z6renderffiPfPcii..split.1.extracted(float %5, float %.reload14, float %14, float %.reload16, float %9, float %.reload15, float %.reload10, i32* %.out1, float %.reload11, float %3, float %.reload13, float %8, float %.reload12, float %11, float %.reload9, i32* %.out2, i32* %.out3, i32 %1, i32 %2)
  br i1 %targetBlock, label %.exitStub, label %.exitStub4

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub4:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal void @_Z6renderffiPfPcii.extracted(float %.reload30, float* %0, i32 %.reload33, i8* %1, i64 %2) #9 {
newFuncRoot:
  br label %3

3:                                                ; preds = %newFuncRoot
  store float %.reload30, float* %0, align 4, !tbaa !13
  %4 = icmp sgt i32 %.reload33, 0
  %5 = select i1 %4, i32 %.reload33, i32 0
  %6 = zext i32 %5 to i64
  br label %codeRepl

codeRepl:                                         ; preds = %3
  call void @_Z6renderffiPfPcii.extracted.extracted(i64 %6, i8* %1, i64 %2)
  br label %.exitStub

.exitStub:                                        ; preds = %codeRepl
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii.extracted.2(double %0, float* %.out, double* %.out1) #9 {
newFuncRoot:
  br label %1

1:                                                ; preds = %newFuncRoot
  %2 = fadd double %0, 7.000000e-02
  %3 = fptrunc double %2 to float
  store float %3, float* %.out, align 4
  %4 = fpext float %3 to double
  store double %4, double* %.out1, align 8
  %5 = fcmp olt double %4, 6.280000e+00
  br label %codeRepl

codeRepl:                                         ; preds = %1
  %targetBlock = call i1 @_Z6renderffiPfPcii.extracted.2.extracted(i1 %5)
  br i1 %targetBlock, label %.exitStub, label %.exitStub2

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub2:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal void @_Z6renderffiPfPcii..split.extracted(float %0, float* %.out6, float %1, float* %.out7, float* %.out8) #9 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  store float %0, float* %.out6, align 4
  %3 = call fastcc float @_ZL3cosf(float %1) #10
  store float %3, float* %.out7, align 4
  %4 = call fastcc float @_ZL3sinf(float %1) #10
  store float %4, float* %.out8, align 4
  br label %.exitStub.exitStub

.exitStub.exitStub:                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii..split.1.extracted(float %0, float %.reload14, float %1, float %.reload16, float %2, float %.reload15, float %.reload10, i32* %.out1, float %.reload11, float %3, float %.reload13, float %4, float %.reload12, float %5, float %.reload9, i32* %.out2, i32* %.out3, i32 %6, i32 %7) #9 {
newFuncRoot:
  br label %8

8:                                                ; preds = %newFuncRoot
  %9 = fmul float %0, %.reload14
  %10 = fmul float %1, 1.500000e+01
  %11 = fmul float %9, %.reload16
  %12 = fmul float %2, %.reload15
  %13 = fsub float %11, %12
  %14 = fmul float %10, %13
  %15 = fadd float %14, %.reload10
  %16 = fptosi float %15 to i32
  store i32 %16, i32* %.out1, align 4
  %17 = fmul float %.reload11, %3
  %18 = fmul float %17, %.reload13
  %19 = fsub float %4, %18
  %20 = fmul float %19, %.reload15
  %21 = fmul float %17, %.reload12
  %22 = fsub float %20, %21
  %23 = fsub float %22, %5
  %24 = fmul float %3, %.reload14
  %25 = fmul float %24, %.reload16
  %26 = fsub float %23, %25
  %27 = fmul float %26, 8.000000e+00
  %28 = fmul float %1, 3.000000e+01
  %29 = fmul float %9, %.reload15
  %30 = fmul float %2, %.reload16
  %31 = fadd float %29, %30
  %32 = fmul float %28, %31
  %33 = fadd float %32, %.reload9
  %34 = fptosi float %33 to i32
  store i32 %34, i32* %.out2, align 4
  %35 = fptosi float %27 to i32
  store i32 %35, i32* %.out3, align 4
  %36 = icmp slt i32 %16, %6
  %37 = icmp sgt i32 %16, 0
  %38 = and i1 %36, %37
  %39 = icmp sgt i32 %34, 0
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp slt i32 %34, %7
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %.exitStub.exitStub, label %.exitStub4.exitStub

.exitStub.exitStub:                               ; preds = %8
  ret i1 true

.exitStub4.exitStub:                              ; preds = %8
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal void @_Z6renderffiPfPcii.extracted.extracted(i64 %0, i8* %1, i64 %2) #9 {
newFuncRoot:
  br label %3

3:                                                ; preds = %newFuncRoot
  %4 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %0
  %5 = load i8, i8* %4, align 1, !tbaa !10
  %6 = getelementptr inbounds i8, i8* %1, i64 %2
  store i8 %5, i8* %6, align 1, !tbaa !10
  br label %.exitStub.exitStub

.exitStub.exitStub:                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii.extracted.2.extracted(i1 %0) #9 {
newFuncRoot:
  br label %1

1:                                                ; preds = %newFuncRoot
  br i1 %0, label %.exitStub.exitStub, label %.exitStub2.exitStub, !llvm.loop !20

.exitStub.exitStub:                               ; preds = %1
  ret i1 true

.exitStub2.exitStub:                              ; preds = %1
  ret i1 false
}

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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

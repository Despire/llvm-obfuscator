; ModuleID = 'output/block-extraction/ex9/ex9.ll'
source_filename = "input/block-extraction/ex9/ex9.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z6renderffiPfPcii(float %0, float %1, i32 %2, float* nocapture %3, i8* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %.loc58 = alloca double, align 8
  %.loc57 = alloca float, align 4
  %.loc50 = alloca float*, align 8
  %.loc49 = alloca i64, align 8
  %.loc36 = alloca i32, align 4
  %.loc35 = alloca i32, align 4
  %.loc34 = alloca i32, align 4
  %.loc33 = alloca float, align 4
  %.loc32 = alloca i32, align 4
  %.loc26 = alloca double, align 8
  %.loc25 = alloca float, align 4
  %.loc21 = alloca float, align 4
  %.loc17 = alloca float, align 4
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
  %lt.cast11 = bitcast float* %.loc1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast11)
  %lt.cast12 = bitcast float* %.loc2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast12)
  %lt.cast13 = bitcast float* %.loc3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast13)
  %lt.cast14 = bitcast float* %.loc4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast14)
  %lt.cast15 = bitcast float* %.loc5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast15)
  call void @_Z6renderffiPfPcii..split(i32 %6, i32 %2, i8* %4, float* %3, i32 %5, float %1, float* %.loc, float* %.loc1, float* %.loc2, float* %.loc3, float* %.loc4, float* %.loc5)
  %.reload = load float, float* %.loc, align 4
  %.reload6 = load float, float* %.loc1, align 4
  %.reload7 = load float, float* %.loc2, align 4
  %.reload8 = load float, float* %.loc3, align 4
  %.reload9 = load float, float* %.loc4, align 4
  %.reload10 = load float, float* %.loc5, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast11)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast12)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast13)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast14)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast15)
  br label %15

8:                                                ; preds = %codeRepl24
  %9 = call fastcc float @_ZL3sinf(float 5.000000e-01) #8
  %10 = call fastcc float @_ZL3sinf(float %0) #8
  %11 = fcmp une float %10, 0.000000e+00
  %12 = fmul float %10, 2.000000e+00
  %13 = select i1 %11, float %12, float %10
  %14 = call fastcc float @_ZL3cosf(float %0) #8
  br label %119

15:                                               ; preds = %codeRepl24, %codeRepl
  %16 = phi double [ 0.000000e+00, %codeRepl ], [ %.reload28, %codeRepl24 ]
  %17 = phi float [ 0.000000e+00, %codeRepl ], [ %.reload27, %codeRepl24 ]
  %18 = fptosi float %17 to i32
  switch i32 %18, label %55 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %23
    i32 3, label %27
    i32 4, label %31
    i32 5, label %37
    i32 6, label %44
  ]

19:                                               ; preds = %15
  %20 = call fastcc float @_ZL3sinf(float 5.000000e-01) #8
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi float [ 0.000000e+00, %15 ], [ %20, %19 ]
  br label %codeRepl16

codeRepl16:                                       ; preds = %21
  %lt.cast19 = bitcast float* %.loc17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast19)
  call void @_Z6renderffiPfPcii..split.1(float %17, float* %.loc17)
  %.reload18 = load float, float* %.loc17, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast19)
  br label %23

23:                                               ; preds = %codeRepl16, %15
  %24 = phi float [ 0.000000e+00, %15 ], [ %.reload18, %codeRepl16 ]
  %25 = phi float [ 0.000000e+00, %15 ], [ %22, %codeRepl16 ]
  %26 = call fastcc float @_ZL3sinf(float %0) #8
  br label %27

27:                                               ; preds = %23, %15
  %28 = phi float [ 0.000000e+00, %15 ], [ %26, %23 ]
  %29 = phi float [ 0.000000e+00, %15 ], [ %24, %23 ]
  %30 = phi float [ 0.000000e+00, %15 ], [ %25, %23 ]
  br label %codeRepl20

codeRepl20:                                       ; preds = %27
  %lt.cast23 = bitcast float* %.loc21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast23)
  call void @_Z6renderffiPfPcii..split.2(float %17, float* %.loc21)
  %.reload22 = load float, float* %.loc21, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast23)
  br label %31

31:                                               ; preds = %codeRepl20, %15
  %32 = phi float [ 0.000000e+00, %15 ], [ %.reload22, %codeRepl20 ]
  %33 = phi float [ 0.000000e+00, %15 ], [ %28, %codeRepl20 ]
  %34 = phi float [ 0.000000e+00, %15 ], [ %29, %codeRepl20 ]
  %35 = phi float [ 0.000000e+00, %15 ], [ %30, %codeRepl20 ]
  %36 = call fastcc float @_ZL3cosf(float %0) #8
  br label %37

37:                                               ; preds = %31, %15
  %38 = phi float [ 0.000000e+00, %15 ], [ %36, %31 ]
  %39 = phi float [ 0.000000e+00, %15 ], [ %32, %31 ]
  %40 = phi float [ 0.000000e+00, %15 ], [ %33, %31 ]
  %41 = phi float [ 0.000000e+00, %15 ], [ %34, %31 ]
  %42 = phi float [ 0.000000e+00, %15 ], [ %35, %31 ]
  %43 = fadd float %41, %.reload
  br label %44

44:                                               ; preds = %37, %15
  %45 = phi float [ 0.000000e+00, %15 ], [ %43, %37 ]
  %46 = phi float [ 0.000000e+00, %15 ], [ %38, %37 ]
  %47 = phi float [ 0.000000e+00, %15 ], [ %39, %37 ]
  %48 = phi float [ 0.000000e+00, %15 ], [ %40, %37 ]
  %49 = phi float [ 0.000000e+00, %15 ], [ %41, %37 ]
  %50 = phi float [ 0.000000e+00, %15 ], [ %42, %37 ]
  %51 = fmul float %45, %50
  %52 = fmul float %46, %51
  %53 = fmul float %47, %48
  %54 = fsub float %52, %53
  br label %55

55:                                               ; preds = %44, %15
  %56 = phi float [ 0.000000e+00, %15 ], [ %54, %44 ]
  %57 = phi float [ 0.000000e+00, %15 ], [ %45, %44 ]
  %58 = phi float [ 0.000000e+00, %15 ], [ %46, %44 ]
  %59 = phi float [ 0.000000e+00, %15 ], [ %47, %44 ]
  %60 = phi float [ 0.000000e+00, %15 ], [ %48, %44 ]
  %61 = phi float [ 0.000000e+00, %15 ], [ %49, %44 ]
  %62 = phi float [ 0.000000e+00, %15 ], [ %50, %44 ]
  %63 = fmul float %57, %62
  %64 = fmul float %60, %63
  %65 = fmul float %58, %59
  %66 = fadd float %65, %64
  %67 = fadd float %66, 5.000000e+00
  %68 = fdiv float 1.000000e+00, %67
  %69 = fmul float %68, 3.000000e+01
  %70 = fmul float %57, %.reload8
  %71 = fmul float %70, %.reload9
  %72 = fmul float %56, %.reload10
  %73 = fadd float %71, %72
  %74 = fmul float %73, %69
  %75 = fadd float %74, %.reload6
  %76 = fptosi float %75 to i32
  %77 = fmul float %68, 1.500000e+01
  %78 = fmul float %70, %.reload10
  %79 = fmul float %56, %.reload9
  %80 = fsub float %78, %79
  %81 = fmul float %80, %77
  %82 = fadd float %81, %.reload7
  %83 = fptosi float %82 to i32
  %84 = fmul float %59, %60
  %85 = fmul float %61, %62
  %86 = fmul float %58, %85
  %87 = fsub float %84, %86
  %88 = fmul float %.reload9, %87
  %89 = fmul float %60, %85
  %90 = fsub float %88, %89
  %91 = fsub float %90, %65
  %92 = fmul float %61, %.reload8
  %93 = fmul float %92, %.reload10
  %94 = fsub float %91, %93
  %95 = fmul float %94, 8.000000e+00
  %96 = fptosi float %95 to i32
  %97 = icmp slt i32 %83, %5
  %98 = icmp sgt i32 %83, 0
  %99 = and i1 %97, %98
  %100 = icmp sgt i32 %76, 0
  %101 = select i1 %99, i1 %100, i1 false
  %102 = icmp slt i32 %76, %6
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %codeRepl24

104:                                              ; preds = %55
  %105 = mul nsw i32 %83, %6
  %106 = add nsw i32 %105, %76
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %3, i64 %107
  %109 = load float, float* %108, align 4, !tbaa !10
  %110 = fcmp ogt float %68, %109
  br i1 %110, label %111, label %codeRepl24

111:                                              ; preds = %104
  store float %68, float* %108, align 4, !tbaa !10
  %112 = icmp sgt i32 %96, 0
  %113 = select i1 %112, i32 %96, i32 0
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [13 x i8], [13 x i8]* @.str, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1, !tbaa !14
  %117 = getelementptr inbounds i8, i8* %4, i64 %107
  store i8 %116, i8* %117, align 1, !tbaa !14
  br label %codeRepl24

codeRepl24:                                       ; preds = %55, %104, %111
  %lt.cast29 = bitcast float* %.loc25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast29)
  %lt.cast30 = bitcast double* %.loc26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast30)
  %targetBlock = call i1 @_Z6renderffiPfPcii.extracted(double %16, float* %.loc25, double* %.loc26)
  %.reload27 = load float, float* %.loc25, align 4
  %.reload28 = load double, double* %.loc26, align 8
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast29)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast30)
  br i1 %targetBlock, label %15, label %8

118:                                              ; preds = %codeRepl56
  ret void

119:                                              ; preds = %codeRepl56, %8
  %120 = phi double [ 0.000000e+00, %8 ], [ %.reload61, %codeRepl56 ]
  %121 = phi i32 [ 0, %8 ], [ %.reload38, %codeRepl56 ]
  %122 = phi float [ 0.000000e+00, %8 ], [ %.reload60, %codeRepl56 ]
  br label %codeRepl31

codeRepl31:                                       ; preds = %119
  %lt.cast43 = bitcast i32* %.loc32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast43)
  %lt.cast44 = bitcast float* %.loc33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast44)
  %lt.cast45 = bitcast i32* %.loc34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast45)
  %lt.cast46 = bitcast i32* %.loc35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast46)
  %lt.cast47 = bitcast i32* %.loc36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast47)
  %targetBlock37 = call i1 @_Z6renderffiPfPcii..split.3(i32 %121, float %9, float %122, i1 %11, float %.reload, float %14, float %13, float %.reload8, float %.reload9, float %.reload10, float %.reload6, float %.reload7, i32 %5, i32 %6, i32* %.loc32, float* %.loc33, i32* %.loc34, i32* %.loc35, i32* %.loc36)
  %.reload38 = load i32, i32* %.loc32, align 4
  %.reload39 = load float, float* %.loc33, align 4
  %.reload40 = load i32, i32* %.loc34, align 4
  %.reload41 = load i32, i32* %.loc35, align 4
  %.reload42 = load i32, i32* %.loc36, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast43)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast44)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast45)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast46)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast47)
  br i1 %targetBlock37, label %codeRepl48, label %codeRepl56

codeRepl48:                                       ; preds = %codeRepl31
  %lt.cast54 = bitcast i64* %.loc49 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast54)
  %lt.cast55 = bitcast float** %.loc50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast55)
  %targetBlock51 = call i1 @_Z6renderffiPfPcii.extracted.4(i32 %.reload41, i32 %6, i32 %.reload40, float* %3, float %.reload39, i64* %.loc49, float** %.loc50)
  %.reload52 = load i64, i64* %.loc49, align 8
  %.reload53 = load float*, float** %.loc50, align 8
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast54)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast55)
  br i1 %targetBlock51, label %123, label %codeRepl56

123:                                              ; preds = %codeRepl48
  store float %.reload39, float* %.reload53, align 4, !tbaa !10
  %124 = icmp sgt i32 %.reload42, 0
  %125 = select i1 %124, i32 %.reload42, i32 0
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [13 x i8], [13 x i8]* @.str, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1, !tbaa !14
  %129 = getelementptr inbounds i8, i8* %4, i64 %.reload52
  store i8 %128, i8* %129, align 1, !tbaa !14
  br label %codeRepl56

codeRepl56:                                       ; preds = %123, %codeRepl31, %codeRepl48
  %lt.cast62 = bitcast float* %.loc57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast62)
  %lt.cast63 = bitcast double* %.loc58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast63)
  %targetBlock59 = call i1 @_Z6renderffiPfPcii.extracted.5(double %120, i32 %.reload38, float* %.loc57, double* %.loc58)
  %.reload60 = load float, float* %.loc57, align 4
  %.reload61 = load double, double* %.loc58, align 8
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast62)
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast63)
  br i1 %targetBlock59, label %118, label %119
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3sinf(float %0) unnamed_addr #2 {
  %2 = call float @llvm.sin.f32(float %0)
  ret float %2
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3cosf(float %0) unnamed_addr #2 {
  %2 = call float @llvm.cos.f32(float %0)
  ret float %2
}

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #3 {
  %1 = alloca [1760 x float], align 4
  %2 = alloca [1760 x i8], align 1
  %3 = getelementptr inbounds [1760 x i8], [1760 x i8]* %2, i64 0, i64 0
  %4 = getelementptr inbounds [1760 x float], [1760 x float]* %1, i64 0, i64 0
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %6

6:                                                ; preds = %6, %0
  %7 = phi i32 [ 5, %0 ], [ %8, %6 ]
  call void @_Z6renderffiPfPcii(float 0.000000e+00, float 0.000000e+00, i32 1760, float* nonnull %4, i8* nonnull %3, i32 22, i32 80)
  %8 = add nuw nsw i32 %7, 1
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %11, label %6, !llvm.loop !15

10:                                               ; preds = %11
  ret i32 %22

11:                                               ; preds = %11, %6
  %12 = phi i64 [ %23, %11 ], [ 0, %6 ]
  %13 = phi i32 [ %22, %11 ], [ 0, %6 ]
  %14 = getelementptr inbounds [1760 x i8], [1760 x i8]* %2, i64 0, i64 %12
  %15 = load i8, i8* %14, align 1, !tbaa !14
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %13, %16
  %18 = getelementptr inbounds [1760 x float], [1760 x float]* %1, i64 0, i64 %12
  %19 = load float, float* %18, align 4, !tbaa !10
  %20 = sitofp i32 %17 to float
  %21 = fadd float %19, %20
  %22 = fptosi float %21 to i32
  %23 = add nuw nsw i64 %12, 1
  %24 = icmp eq i64 %23, 1760
  br i1 %24, label %10, label %11, !llvm.loop !18
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #5

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal void @_Z6renderffiPfPcii..split(i32 %0, i32 %1, i8* %2, float* %3, i32 %4, float %5, float* %.out, float* %.out1, float* %.out2, float* %.out3, float* %.out4, float* %.out5) #6 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %6 = sdiv i32 %0, 40
  br label %codeRepl

codeRepl:                                         ; preds = %.split
  call void @_Z6renderffiPfPcii..split.extracted(i32 %1, i8* %2, float* %3, i32 %6, float* %.out, i32 %0, float* %.out1, i32 %4, float* %.out2, float* %.out3, float %5, float* %.out4, float* %.out5)
  br label %.exitStub

.exitStub:                                        ; preds = %codeRepl
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal void @_Z6renderffiPfPcii..split.1(float %0, float* %.out) #6 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %1 = call fastcc float @_ZL3cosf(float %0) #8
  store float %1, float* %.out, align 4
  br label %.exitStub

.exitStub:                                        ; preds = %.split
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal void @_Z6renderffiPfPcii..split.2(float %0, float* %.out) #6 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %1 = call fastcc float @_ZL3sinf(float %0) #8
  store float %1, float* %.out, align 4
  br label %.exitStub

.exitStub:                                        ; preds = %.split
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii.extracted(double %0, float* %.out, double* %.out1) #6 {
newFuncRoot:
  br label %1

1:                                                ; preds = %newFuncRoot
  %2 = fadd double %0, 7.000000e-02
  %3 = fptrunc double %2 to float
  store float %3, float* %.out, align 4
  %4 = fpext float %3 to double
  br label %codeRepl

codeRepl:                                         ; preds = %1
  %targetBlock = call i1 @_Z6renderffiPfPcii.extracted.extracted(double %4, double* %.out1)
  br i1 %targetBlock, label %.exitStub, label %.exitStub2

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub2:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii..split.3(i32 %0, float %1, float %2, i1 %3, float %.reload, float %4, float %5, float %.reload8, float %.reload9, float %.reload10, float %.reload6, float %.reload7, i32 %6, i32 %7, i32* %.out, float* %.out1, i32* %.out2, i32* %.out3, i32* %.out4) #6 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %8 = add nuw nsw i32 %0, 1
  store i32 %8, i32* %.out, align 4
  %9 = sitofp i32 %0 to float
  %10 = fadd float %1, %9
  %11 = call fastcc float @_ZL3cosf(float %2) #8
  %12 = fcmp une float %10, 0.000000e+00
  %13 = fmul float %10, 2.000000e+00
  %14 = fmul float %11, 2.000000e+00
  %15 = select i1 %12, float %13, float %10
  %16 = select i1 %12, float %11, float %14
  %17 = call fastcc float @_ZL3sinf(float %2) #8
  %18 = fmul float %17, 2.000000e+00
  %19 = select i1 %3, float %17, float %18
  %20 = fadd float %16, %.reload
  %21 = fmul float %15, %20
  %22 = fmul float %4, %21
  %23 = fmul float %5, %19
  %24 = fsub float %22, %23
  %25 = fcmp une float %20, 0.000000e+00
  %26 = fmul float %24, 2.000000e+00
  %27 = fmul float %20, 2.000000e+00
  %28 = select i1 %25, float %20, float %27
  %29 = select i1 %25, float %26, float %24
  %30 = fmul float %15, %28
  %31 = fmul float %5, %30
  %32 = fmul float %4, %19
  %33 = fadd float %32, %31
  %34 = fadd float %33, 5.000000e+00
  %35 = fdiv float 1.000000e+00, %34
  store float %35, float* %.out1, align 4
  %36 = fmul float %35, 3.000000e+01
  %37 = fmul float %.reload8, %28
  %38 = fmul float %.reload9, %37
  %39 = fmul float %.reload10, %29
  %40 = fadd float %38, %39
  %41 = fmul float %40, %36
  %42 = fadd float %41, %.reload6
  %43 = fptosi float %42 to i32
  store i32 %43, i32* %.out2, align 4
  %44 = fmul float %35, 1.500000e+01
  %45 = fmul float %37, %.reload10
  %46 = fmul float %.reload9, %29
  %47 = fsub float %45, %46
  %48 = fmul float %47, %44
  %49 = fadd float %48, %.reload7
  %50 = fptosi float %49 to i32
  store i32 %50, i32* %.out3, align 4
  %51 = fmul float %15, %16
  %52 = fmul float %51, %4
  %53 = fsub float %23, %52
  %54 = fmul float %.reload9, %53
  %55 = fmul float %51, %5
  %56 = fsub float %54, %55
  %57 = fsub float %56, %32
  %58 = fmul float %16, %.reload8
  %59 = fmul float %58, %.reload10
  %60 = fsub float %57, %59
  %61 = fmul float %60, 8.000000e+00
  %62 = fptosi float %61 to i32
  store i32 %62, i32* %.out4, align 4
  %63 = icmp slt i32 %50, %6
  %64 = icmp sgt i32 %50, 0
  %65 = and i1 %63, %64
  %66 = icmp sgt i32 %43, 0
  %67 = select i1 %65, i1 %66, i1 false
  %68 = icmp slt i32 %43, %7
  br label %codeRepl

codeRepl:                                         ; preds = %.split
  %targetBlock = call i1 @_Z6renderffiPfPcii..split.3.extracted(i1 %67, i1 %68)
  br i1 %targetBlock, label %.exitStub, label %.exitStub5

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub5:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii.extracted.4(i32 %.reload41, i32 %0, i32 %.reload40, float* %1, float %.reload39, i64* %.out, float** %.out1) #6 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  br label %codeRepl

codeRepl:                                         ; preds = %2
  %targetBlock = call i1 @_Z6renderffiPfPcii.extracted.4.extracted(i32 %.reload41, i32 %0, i32 %.reload40, i64* %.out, float* %1, float** %.out1, float %.reload39)
  br i1 %targetBlock, label %.exitStub, label %.exitStub2

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub2:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii.extracted.5(double %0, i32 %.reload38, float* %.out, double* %.out1) #6 {
newFuncRoot:
  br label %1

1:                                                ; preds = %newFuncRoot
  br label %codeRepl

codeRepl:                                         ; preds = %1
  %targetBlock = call i1 @_Z6renderffiPfPcii.extracted.5.extracted(double %0, float* %.out, double* %.out1, i32 %.reload38)
  br i1 %targetBlock, label %.exitStub, label %.exitStub2

.exitStub:                                        ; preds = %codeRepl
  ret i1 true

.exitStub2:                                       ; preds = %codeRepl
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal void @_Z6renderffiPfPcii..split.extracted(i32 %0, i8* %1, float* %2, i32 %3, float* %.out, i32 %4, float* %.out1, i32 %5, float* %.out2, float* %.out3, float %6, float* %.out4, float* %.out5) #6 {
newFuncRoot:
  br label %7

7:                                                ; preds = %newFuncRoot
  %8 = sext i32 %0 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 32, i64 %8, i1 false)
  %9 = bitcast float* %2 to i8*
  %10 = shl nsw i64 %8, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 %10, i1 false)
  %11 = sitofp i32 %3 to float
  store float %11, float* %.out, align 4
  %12 = sdiv i32 %4, 2
  %13 = sitofp i32 %12 to float
  store float %13, float* %.out1, align 4
  %14 = sdiv i32 %5, 2
  %15 = add nsw i32 %14, 1
  %16 = sitofp i32 %15 to float
  store float %16, float* %.out2, align 4
  %17 = call fastcc float @_ZL3cosf(float 5.000000e-01) #8
  store float %17, float* %.out3, align 4
  %18 = call fastcc float @_ZL3cosf(float %6) #8
  store float %18, float* %.out4, align 4
  %19 = call fastcc float @_ZL3sinf(float %6) #8
  store float %19, float* %.out5, align 4
  br label %.exitStub.exitStub

.exitStub.exitStub:                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii.extracted.extracted(double %0, double* %.out1) #6 {
newFuncRoot:
  br label %1

1:                                                ; preds = %newFuncRoot
  store double %0, double* %.out1, align 8
  %2 = fcmp olt double %0, 6.280000e+00
  br i1 %2, label %.exitStub.exitStub, label %.exitStub2.exitStub, !llvm.loop !19

.exitStub.exitStub:                               ; preds = %1
  ret i1 true

.exitStub2.exitStub:                              ; preds = %1
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii..split.3.extracted(i1 %0, i1 %1) #6 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  %3 = select i1 %0, i1 %1, i1 false
  br i1 %3, label %.exitStub.exitStub, label %.exitStub5.exitStub

.exitStub.exitStub:                               ; preds = %2
  ret i1 true

.exitStub5.exitStub:                              ; preds = %2
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii.extracted.4.extracted(i32 %.reload41, i32 %0, i32 %.reload40, i64* %.out, float* %1, float** %.out1, float %.reload39) #6 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  %3 = mul nsw i32 %.reload41, %0
  %4 = add nsw i32 %3, %.reload40
  %5 = sext i32 %4 to i64
  store i64 %5, i64* %.out, align 8
  %6 = getelementptr inbounds float, float* %1, i64 %5
  store float* %6, float** %.out1, align 8
  %7 = load float, float* %6, align 4, !tbaa !10
  %8 = fcmp ogt float %.reload39, %7
  br i1 %8, label %.exitStub.exitStub, label %.exitStub2.exitStub

.exitStub.exitStub:                               ; preds = %2
  ret i1 true

.exitStub2.exitStub:                              ; preds = %2
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline nounwind ssp uwtable
define internal i1 @_Z6renderffiPfPcii.extracted.5.extracted(double %0, float* %.out, double* %.out1, i32 %.reload38) #6 {
newFuncRoot:
  br label %1

1:                                                ; preds = %newFuncRoot
  %2 = fadd double %0, 7.000000e-02
  %3 = fptrunc double %2 to float
  store float %3, float* %.out, align 4
  %4 = fpext float %3 to double
  store double %4, double* %.out1, align 8
  %5 = icmp eq i32 %.reload38, 90
  br i1 %5, label %.exitStub.exitStub, label %.exitStub2.exitStub, !llvm.loop !20

.exitStub.exitStub:                               ; preds = %1
  ret i1 true

.exitStub2.exitStub:                              ; preds = %1
  ret i1 false
}

attributes #0 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #2 = { inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }

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
!14 = !{!12, !12, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}

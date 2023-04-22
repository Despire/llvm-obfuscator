; ModuleID = 'output/cff/ex7/ex7.ll'
source_filename = "input/cff/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
entry:
  %.reg2mem6 = alloca i32, align 4
  %.reg2mem4 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %lookupTable = alloca [10 x i32], align 4
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %3, align 4
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %4, align 4
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %5, align 4
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %8, align 4
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %9, align 4
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 8
  store i32 5, i32* %11, align 4
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  store i32 6, i32* %12, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %19
    i32 2, label %20
    i32 3, label %35
    i32 4, label %44
    i32 5, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %13 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %15, %17
  store i32 %18, i32* %dispatcher, align 4
  store i64 0, i64* %.reg2mem4, align 8
  br label %loopEnd

19:                                               ; preds = %loopStart
  ret void

20:                                               ; preds = %loopStart
  %.reload5 = load i64, i64* %.reg2mem4, align 8
  store i64 %.reload5, i64* %.reg2mem, align 8
  %.reload3 = load i64, i64* %.reg2mem, align 8
  %21 = trunc i64 %.reload3 to i32
  %22 = urem i32 %21, 80
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = srem i32 %25, %27
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %30, %32
  %34 = select i1 %23, i32 %28, i32 %33
  store i32 %34, i32* %dispatcher, align 4
  store i32 10, i32* %.reg2mem6, align 4
  br label %loopEnd

35:                                               ; preds = %loopStart
  %.reload2 = load i64, i64* %.reg2mem, align 8
  %36 = getelementptr inbounds i8, i8* %0, i64 %.reload2
  %37 = load i8, i8* %36, align 1, !tbaa !10
  %38 = sext i8 %37 to i32
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %40, %42
  store i32 %43, i32* %dispatcher, align 4
  store i32 %38, i32* %.reg2mem6, align 4
  br label %loopEnd

44:                                               ; preds = %loopStart
  %.reload7 = load i32, i32* %.reg2mem6, align 4
  %45 = call i32 @putchar(i32 %.reload7)
  %46 = load float, float* %1, align 4, !tbaa !13
  %47 = fpext float %46 to double
  %48 = fadd double %47, 4.000000e-05
  %49 = fptrunc double %48 to float
  store float %49, float* %1, align 4, !tbaa !13
  %50 = load float, float* %2, align 4, !tbaa !13
  %51 = fpext float %50 to double
  %52 = fadd double %51, 2.000000e-05
  %53 = fptrunc double %52 to float
  store float %53, float* %2, align 4, !tbaa !13
  %.reload = load i64, i64* %.reg2mem, align 8
  %54 = add nuw nsw i64 %.reload, 1
  %55 = icmp eq i64 %54, 1761
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %57, %59
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %62, %64
  %66 = select i1 %55, i32 %60, i32 %65
  store i32 %66, i32* %dispatcher, align 4
  store i64 %54, i64* %.reg2mem4, align 8
  br label %loopEnd

BogusBasicBlock:                                  ; preds = %loopStart
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %67, align 4
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %69, align 4
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %70, align 4
  %71 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %71, align 4
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %44, %35, %20, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z6renderffiPfPcii(float %0, float %1, i32 %2, float* nocapture %3, i8* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #3 {
entry:
  %.reg2mem67 = alloca float, align 4
  %.reg2mem65 = alloca double, align 8
  %.reg2mem63 = alloca float, align 4
  %.reg2mem61 = alloca double, align 8
  %.reg2mem58 = alloca float*, align 8
  %.reg2mem55 = alloca i64, align 8
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem44 = alloca i32, align 4
  %.reg2mem39 = alloca float, align 4
  %.reg2mem37 = alloca double, align 8
  %.reg2mem34 = alloca float, align 4
  %.reg2mem31 = alloca float, align 4
  %.reg2mem28 = alloca float, align 4
  %.reg2mem24 = alloca float, align 4
  %.reg2mem22 = alloca double, align 8
  %.reg2mem18 = alloca float, align 4
  %.reg2mem14 = alloca float, align 4
  %.reg2mem10 = alloca float, align 4
  %.reg2mem6 = alloca float, align 4
  %.reg2mem4 = alloca float, align 4
  %.reg2mem2 = alloca float, align 4
  %.reg2mem = alloca float, align 4
  %lookupTable = alloca [13 x i32], align 4
  %7 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %7, align 4
  %8 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %8, align 4
  %9 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %9, align 4
  %10 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %12, align 4
  %13 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %13, align 4
  %14 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %14, align 4
  %15 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 8
  store i32 5, i32* %15, align 4
  %16 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 9
  store i32 6, i32* %16, align 4
  %17 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 10
  store i32 7, i32* %17, align 4
  %18 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 11
  store i32 8, i32* %18, align 4
  %19 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 12
  store i32 9, i32* %19, align 4
  %20 = sdiv i32 %6, 40
  %21 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 32, i64 %21, i1 false)
  %22 = bitcast float* %3 to i8*
  %23 = shl nsw i64 %21, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 %23, i1 false)
  %24 = sitofp i32 %20 to float
  store float %24, float* %.reg2mem, align 4
  %25 = sdiv i32 %6, 2
  %26 = sitofp i32 %25 to float
  store float %26, float* %.reg2mem2, align 4
  %27 = sdiv i32 %5, 2
  %28 = add nsw i32 %27, 1
  %29 = sitofp i32 %28 to float
  store float %29, float* %.reg2mem4, align 4
  %30 = call fastcc float @_ZL3sinf(float %0) #8
  store float %30, float* %.reg2mem6, align 4
  %31 = call fastcc float @_ZL3cosf(float %0) #8
  store float %31, float* %.reg2mem10, align 4
  %32 = call fastcc float @_ZL3cosf(float %1) #8
  store float %32, float* %.reg2mem14, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %39
    i32 2, label %50
    i32 3, label %51
    i32 4, label %67
    i32 5, label %122
    i32 6, label %140
    i32 7, label %152
    i32 8, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %33 = call fastcc float @_ZL3sinf(float %1) #8
  store float %33, float* %.reg2mem18, align 4
  %34 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %35, %37
  store i32 %38, i32* %dispatcher, align 4
  store double 0.000000e+00, double* %.reg2mem61, align 8
  store float 0.000000e+00, float* %.reg2mem63, align 4
  br label %loopEnd

39:                                               ; preds = %loopStart
  %.reload64 = load float, float* %.reg2mem63, align 4
  %.reload62 = load double, double* %.reg2mem61, align 8
  store double %.reload62, double* %.reg2mem22, align 8
  %40 = call fastcc float @_ZL3cosf(float %.reload64) #8
  store float %40, float* %.reg2mem24, align 4
  %41 = call fastcc float @_ZL3sinf(float %.reload64) #8
  %.reload = load float, float* %.reg2mem, align 4
  %.reload27 = load float, float* %.reg2mem24, align 4
  %42 = fadd float %.reload27, %.reload
  store float %42, float* %.reg2mem28, align 4
  %.reload9 = load float, float* %.reg2mem6, align 4
  %43 = fmul float %.reload9, %41
  store float %43, float* %.reg2mem31, align 4
  %.reload13 = load float, float* %.reg2mem10, align 4
  %44 = fmul float %41, %.reload13
  store float %44, float* %.reg2mem34, align 4
  %45 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %46, %48
  store i32 %49, i32* %dispatcher, align 4
  store double 0.000000e+00, double* %.reg2mem65, align 8
  store float 0.000000e+00, float* %.reg2mem67, align 4
  br label %loopEnd

50:                                               ; preds = %loopStart
  ret void

51:                                               ; preds = %loopStart
  %.reload23 = load double, double* %.reg2mem22, align 8
  %52 = fadd double %.reload23, 7.000000e-02
  %53 = fptrunc double %52 to float
  %54 = fpext float %53 to double
  %55 = fcmp olt double %54, 6.280000e+00
  %56 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %57, %59
  %61 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %62, %64
  %66 = select i1 %55, i32 %60, i32 %65
  store i32 %66, i32* %dispatcher, align 4
  store double %54, double* %.reg2mem61, align 8
  store float %53, float* %.reg2mem63, align 4
  br label %loopEnd

67:                                               ; preds = %loopStart
  %.reload68 = load float, float* %.reg2mem67, align 4
  %.reload66 = load double, double* %.reg2mem65, align 8
  store double %.reload66, double* %.reg2mem37, align 8
  %68 = call fastcc float @_ZL3sinf(float %.reload68) #8
  %.reload30 = load float, float* %.reg2mem28, align 4
  %69 = fmul float %68, %.reload30
  %.reload12 = load float, float* %.reg2mem10, align 4
  %70 = fmul float %69, %.reload12
  %.reload33 = load float, float* %.reg2mem31, align 4
  %71 = fsub float %70, %.reload33
  %.reload8 = load float, float* %.reg2mem6, align 4
  %72 = fmul float %.reload8, %69
  %.reload36 = load float, float* %.reg2mem34, align 4
  %73 = fadd float %72, %.reload36
  %74 = fadd float %73, 5.000000e+00
  %75 = fdiv float 1.000000e+00, %74
  store float %75, float* %.reg2mem39, align 4
  %76 = call fastcc float @_ZL3cosf(float %.reload68) #8
  %.reload43 = load float, float* %.reg2mem39, align 4
  %77 = fmul float %.reload43, 3.000000e+01
  %.reload29 = load float, float* %.reg2mem28, align 4
  %78 = fmul float %.reload29, %76
  %.reload17 = load float, float* %.reg2mem14, align 4
  %79 = fmul float %78, %.reload17
  %.reload21 = load float, float* %.reg2mem18, align 4
  %80 = fmul float %71, %.reload21
  %81 = fadd float %79, %80
  %82 = fmul float %77, %81
  %.reload3 = load float, float* %.reg2mem2, align 4
  %83 = fadd float %82, %.reload3
  %84 = fptosi float %83 to i32
  store i32 %84, i32* %.reg2mem44, align 4
  %.reload42 = load float, float* %.reg2mem39, align 4
  %85 = fmul float %.reload42, 1.500000e+01
  %.reload20 = load float, float* %.reg2mem18, align 4
  %86 = fmul float %78, %.reload20
  %.reload16 = load float, float* %.reg2mem14, align 4
  %87 = fmul float %71, %.reload16
  %88 = fsub float %86, %87
  %89 = fmul float %85, %88
  %.reload5 = load float, float* %.reg2mem4, align 4
  %90 = fadd float %89, %.reload5
  %91 = fptosi float %90 to i32
  store i32 %91, i32* %.reg2mem48, align 4
  %.reload26 = load float, float* %.reg2mem24, align 4
  %92 = fmul float %68, %.reload26
  %.reload11 = load float, float* %.reg2mem10, align 4
  %93 = fmul float %92, %.reload11
  %.reload32 = load float, float* %.reg2mem31, align 4
  %94 = fsub float %.reload32, %93
  %.reload15 = load float, float* %.reg2mem14, align 4
  %95 = fmul float %94, %.reload15
  %.reload7 = load float, float* %.reg2mem6, align 4
  %96 = fmul float %92, %.reload7
  %97 = fsub float %95, %96
  %.reload35 = load float, float* %.reg2mem34, align 4
  %98 = fsub float %97, %.reload35
  %.reload25 = load float, float* %.reg2mem24, align 4
  %99 = fmul float %.reload25, %76
  %.reload19 = load float, float* %.reg2mem18, align 4
  %100 = fmul float %99, %.reload19
  %101 = fsub float %98, %100
  %102 = fmul float %101, 8.000000e+00
  %103 = fptosi float %102 to i32
  store i32 %103, i32* %.reg2mem52, align 4
  %.reload51 = load i32, i32* %.reg2mem48, align 4
  %104 = icmp slt i32 %.reload51, %5
  %.reload50 = load i32, i32* %.reg2mem48, align 4
  %105 = icmp sgt i32 %.reload50, 0
  %106 = and i1 %104, %105
  %.reload47 = load i32, i32* %.reg2mem44, align 4
  %107 = icmp sgt i32 %.reload47, 0
  %108 = select i1 %106, i1 %107, i1 false
  %.reload46 = load i32, i32* %.reg2mem44, align 4
  %109 = icmp slt i32 %.reload46, %6
  %110 = select i1 %108, i1 %109, i1 false
  %111 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 12
  %114 = load i32, i32* %113, align 4
  %115 = srem i32 %112, %114
  %116 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %117, %119
  %121 = select i1 %110, i32 %115, i32 %120
  store i32 %121, i32* %dispatcher, align 4
  br label %loopEnd

122:                                              ; preds = %loopStart
  %.reload49 = load i32, i32* %.reg2mem48, align 4
  %123 = mul nsw i32 %.reload49, %6
  %.reload45 = load i32, i32* %.reg2mem44, align 4
  %124 = add nsw i32 %123, %.reload45
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %.reg2mem55, align 8
  %.reload57 = load i64, i64* %.reg2mem55, align 8
  %126 = getelementptr inbounds float, float* %3, i64 %.reload57
  store float* %126, float** %.reg2mem58, align 8
  %.reload60 = load float*, float** %.reg2mem58, align 8
  %127 = load float, float* %.reload60, align 4, !tbaa !13
  %.reload41 = load float, float* %.reg2mem39, align 4
  %128 = fcmp ogt float %.reload41, %127
  %129 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 12
  %132 = load i32, i32* %131, align 4
  %133 = srem i32 %130, %132
  %134 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = sub i32 %135, %137
  %139 = select i1 %128, i32 %133, i32 %138
  store i32 %139, i32* %dispatcher, align 4
  br label %loopEnd

140:                                              ; preds = %loopStart
  %.reload40 = load float, float* %.reg2mem39, align 4
  %.reload59 = load float*, float** %.reg2mem58, align 8
  store float %.reload40, float* %.reload59, align 4, !tbaa !13
  %.reload54 = load i32, i32* %.reg2mem52, align 4
  %141 = icmp sgt i32 %.reload54, 0
  %.reload53 = load i32, i32* %.reg2mem52, align 4
  %142 = select i1 %141, i32 %.reload53, i32 0
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1, !tbaa !10
  %.reload56 = load i64, i64* %.reg2mem55, align 8
  %146 = getelementptr inbounds i8, i8* %4, i64 %.reload56
  store i8 %145, i8* %146, align 1, !tbaa !10
  %147 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = add i32 %148, %150
  store i32 %151, i32* %dispatcher, align 4
  br label %loopEnd

152:                                              ; preds = %loopStart
  %.reload38 = load double, double* %.reg2mem37, align 8
  %153 = fadd double %.reload38, 2.000000e-02
  %154 = fptrunc double %153 to float
  %155 = fpext float %154 to double
  %156 = fcmp olt double %155, 6.280000e+00
  %157 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 12
  %160 = load i32, i32* %159, align 4
  %161 = srem i32 %158, %160
  %162 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %163, %165
  %167 = select i1 %156, i32 %161, i32 %166
  store i32 %167, i32* %dispatcher, align 4
  store double %155, double* %.reg2mem65, align 8
  store float %154, float* %.reg2mem67, align 4
  br label %loopEnd

BogusBasicBlock:                                  ; preds = %loopStart
  %168 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %168, align 4
  %169 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %169, align 4
  %170 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %170, align 4
  %171 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %171, align 4
  %172 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %172, align 4
  %173 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 10
  store i32 9, i32* %173, align 4
  %174 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 12
  store i32 11, i32* %174, align 4
  %175 = getelementptr inbounds [13 x i32], [13 x i32]* %lookupTable, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %152, %140, %122, %67, %51, %39, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
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

; Function Attrs: mustprogress nofree norecurse noreturn nounwind ssp uwtable
define i32 @main() local_unnamed_addr #6 {
entry:
  %.reg2mem3 = alloca float*, align 8
  %.reg2mem = alloca i8*, align 8
  %lookupTable = alloca [7 x i32], align 4
  %0 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %0, align 4
  %1 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %1, align 4
  %2 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %2, align 4
  %3 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %5, align 4
  %6 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %6, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = bitcast float* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #8
  store float 0.000000e+00, float* %7, align 4, !tbaa !13
  %10 = bitcast float* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #8
  store float 0.000000e+00, float* %8, align 4, !tbaa !13
  %11 = alloca [1760 x float], align 4
  %12 = alloca [1760 x i8], align 1
  %13 = getelementptr inbounds [1760 x i8], [1760 x i8]* %12, i64 0, i64 0
  store i8* %13, i8** %.reg2mem, align 8
  %14 = getelementptr inbounds [1760 x float], [1760 x float]* %11, i64 0, i64 0
  store float* %14, float** %.reg2mem3, align 8
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %21
    i32 2, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %15 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %16 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %17, %19
  store i32 %20, i32* %dispatcher, align 4
  br label %loopEnd

21:                                               ; preds = %loopStart
  %22 = load float, float* %7, align 4, !tbaa !13
  %23 = load float, float* %8, align 4, !tbaa !13
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  %.reload4 = load float*, float** %.reg2mem3, align 8
  call void @_Z6renderffiPfPcii(float %22, float %23, i32 1760, float* nonnull %.reload4, i8* nonnull %.reload2, i32 22, i32 80)
  %.reload = load i8*, i8** %.reg2mem, align 8
  call void @_Z7displayPKcRfS1_(i8* nonnull %.reload, float* nonnull align 4 dereferenceable(4) %7, float* nonnull align 4 dereferenceable(4) %8)
  %24 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %25, %27
  store i32 %28, i32* %dispatcher, align 4
  br label %loopEnd

BogusBasicBlock:                                  ; preds = %loopStart
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %31, align 4
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %32, align 4
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %21, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #7

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !11, i64 0}

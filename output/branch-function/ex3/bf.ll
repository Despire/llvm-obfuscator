; ModuleID = 'output/branch-function/ex3/ex3.ll'
source_filename = "input/branch-function/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@CHARS = local_unnamed_addr global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@obfsblockAddrLookupTable9455691429180515042 = private global [10 x i8*] zeroinitializer
@obfsblockAddrLookupTable14933117115443261389 = private global [6 x i8*] zeroinitializer
@obfsblockAddrLookupTable8087287215503827521 = private global [4 x i8*] zeroinitializer
@obfsblockAddrLookupTable18360685361522945674 = private global [11 x i8*] zeroinitializer
@obfsblockAddrLookupTable1190399871476562411 = private global [8 x i8*] zeroinitializer
@llvm.compiler.used = appending global [11 x i8*] [i8* bitcast (i64 (i64)* @h5672634085375599500 to i8*), i8* bitcast ([10 x i8*]* @obfsblockAddrLookupTable9455691429180515042 to i8*), i8* bitcast (i8** (i32*)* @bf2297577340762235155 to i8*), i8* bitcast ([6 x i8*]* @obfsblockAddrLookupTable14933117115443261389 to i8*), i8* bitcast (i8** (i32*)* @bf7460833816370257249 to i8*), i8* bitcast ([4 x i8*]* @obfsblockAddrLookupTable8087287215503827521 to i8*), i8* bitcast (i8** (i32*)* @bf678997811367950786 to i8*), i8* bitcast ([11 x i8*]* @obfsblockAddrLookupTable18360685361522945674 to i8*), i8* bitcast (i8** (i32*)* @bf10836966524592585900 to i8*), i8* bitcast ([8 x i8*]* @obfsblockAddrLookupTable1190399871476562411 to i8*), i8* bitcast (i8** (i32*)* @bf12702309945230050596 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @_Z6updatePfS_(float* %0, float* %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i64 @h5672634085375599500(i64 166137971)
  %5 = getelementptr [10 x i8*], [10 x i8*]* @obfsblockAddrLookupTable9455691429180515042, i32 0, i64 %4
  store i8* blockaddress(@_Z6updatePfS_, %38), i8** %5, align 8
  %6 = call i64 @h5672634085375599500(i64 166137974)
  %7 = getelementptr [10 x i8*], [10 x i8*]* @obfsblockAddrLookupTable9455691429180515042, i32 0, i64 %6
  store i8* blockaddress(@_Z6updatePfS_, %15), i8** %7, align 8
  %8 = icmp eq float* %0, null
  %9 = icmp eq float* %1, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = select i1 %10, i32 166137974, i32 166137971
  %12 = xor i32 %11, 5
  store i32 %12, i32* %3, align 4
  %13 = call i8** @bf2297577340762235155(i32* %3)
  %14 = load i8*, i8** %13, align 8
  indirectbr i8* %14, [label %38, label %15]

15:                                               ; preds = %15, %2
  %16 = load float, float* %0, align 4, !tbaa !10
  %17 = fpext float %16 to double
  %18 = fadd double %17, 4.000000e-05
  %19 = fptrunc double %18 to float
  store float %19, float* %0, align 4, !tbaa !10
  %20 = load float, float* %1, align 4, !tbaa !10
  %21 = fpext float %20 to double
  %22 = fadd double %21, 2.000000e-05
  %23 = fptrunc double %22 to float
  store float %23, float* %1, align 4, !tbaa !10
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  %28 = mul i8 %25, %25
  %29 = add i8 %28, %25
  %30 = mul i8 %29, 3
  %31 = srem i8 %30, 2
  %32 = icmp eq i8 %31, 0
  %33 = or i1 %27, %32
  %34 = select i1 %33, i32 166137974, i32 166137971
  %35 = xor i32 %34, 5
  store i32 %35, i32* %3, align 4
  %36 = call i8** @bf2297577340762235155(i32* %3)
  %37 = load i8*, i8** %36, align 8
  indirectbr i8* %37, [label %38, label %15]

38:                                               ; preds = %15, %2
  %39 = phi i32 [ 0, %15 ], [ 2, %2 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable
define i32 @_Z6renderPfS_Pcm(float* %0, float* %1, i8* nocapture %2, i64 %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = call i64 @h5672634085375599500(i64 166137975)
  %7 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable14933117115443261389, i32 0, i64 %6
  store i8* blockaddress(@_Z6renderPfS_Pcm, %66), i8** %7, align 8
  %8 = call i64 @h5672634085375599500(i64 166137969)
  %9 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable14933117115443261389, i32 0, i64 %8
  store i8* blockaddress(@_Z6renderPfS_Pcm, %56), i8** %9, align 8
  %10 = call i64 @h5672634085375599500(i64 166137970)
  %11 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable14933117115443261389, i32 0, i64 %10
  store i8* blockaddress(@_Z6renderPfS_Pcm, %36), i8** %11, align 8
  %12 = call i64 @h5672634085375599500(i64 166137971)
  %13 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable14933117115443261389, i32 0, i64 %12
  store i8* blockaddress(@_Z6renderPfS_Pcm, %27), i8** %13, align 8
  %14 = call i64 @h5672634085375599500(i64 166137968)
  %15 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable14933117115443261389, i32 0, i64 %14
  store i8* blockaddress(@_Z6renderPfS_Pcm, %21), i8** %15, align 8
  %16 = icmp eq i64 %3, 1760
  %17 = select i1 %16, i32 166137975, i32 166137971
  %18 = xor i32 %17, 4
  store i32 %18, i32* %5, align 4
  %19 = call i8** @bf7460833816370257249(i32* %5)
  %20 = load i8*, i8** %19, align 8
  indirectbr i8* %20, [label %27, label %66]

21:                                               ; preds = %56
  %22 = icmp eq i64 %61, 1760
  %23 = select i1 %22, i32 166137971, i32 166137975
  %24 = xor i32 %23, 4
  store i32 %24, i32* %5, align 4
  %25 = call i8** @bf7460833816370257249(i32* %5)
  %26 = load i8*, i8** %25, align 8
  indirectbr i8* %26, [label %66, label %27]

27:                                               ; preds = %21, %4
  %28 = phi i64 [ %61, %21 ], [ 0, %4 ]
  %29 = trunc i64 %28 to i32
  %30 = urem i32 %29, 80
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 166137970, i32 166137969
  %33 = xor i32 %32, 3
  store i32 %33, i32* %5, align 4
  %34 = call i8** @bf7460833816370257249(i32* %5)
  %35 = load i8*, i8** %34, align 8
  indirectbr i8* %35, [label %56, label %36]

36:                                               ; preds = %36, %27
  %37 = getelementptr inbounds i8, i8* %2, i64 %28
  %38 = load i8, i8* %37, align 1, !tbaa !14
  %39 = load i8*, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = mul i8 %40, 2
  %42 = mul i8 %40, 2
  %43 = add i8 2, %42
  %44 = mul i8 %41, %43
  %45 = srem i8 %44, 4
  %46 = icmp eq i8 %45, 0
  %47 = mul i8 %40, %40
  %48 = add i8 %47, %40
  %49 = srem i8 %48, 2
  %50 = icmp eq i8 %49, 0
  %51 = or i1 %46, %50
  %52 = select i1 %51, i32 166137969, i32 166137969
  %53 = xor i32 %52, 0
  store i32 %53, i32* %5, align 4
  %54 = call i8** @bf7460833816370257249(i32* %5)
  %55 = load i8*, i8** %54, align 8
  indirectbr i8* %55, [label %56, label %36]

56:                                               ; preds = %36, %27
  %57 = phi i8 [ %38, %36 ], [ 10, %27 ]
  %58 = getelementptr inbounds i8, i8* %2, i64 %28
  store i8 %57, i8* %58, align 1, !tbaa !14
  %59 = call i32 @_Z6updatePfS_(float* %0, float* %1)
  %60 = icmp eq i32 %59, 0
  %61 = add nuw nsw i64 %28, 1
  %62 = select i1 %60, i32 166137975, i32 166137968
  %63 = xor i32 %62, 7
  store i32 %63, i32* %5, align 4
  %64 = call i8** @bf7460833816370257249(i32* %5)
  %65 = load i8*, i8** %64, align 8
  indirectbr i8* %65, [label %21, label %66]

66:                                               ; preds = %56, %21, %4
  %67 = phi i32 [ 2, %4 ], [ %59, %56 ], [ 0, %21 ]
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind ssp willreturn writeonly uwtable
define i32 @_Z5clearPcmPfm(i8* %0, i64 %1, float* %2, i64 %3) local_unnamed_addr #3 {
  %5 = alloca i32, align 4
  %6 = call i64 @h5672634085375599500(i64 166137970)
  %7 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable8087287215503827521, i32 0, i64 %6
  store i8* blockaddress(@_Z5clearPcmPfm, %46), i8** %7, align 8
  %8 = call i64 @h5672634085375599500(i64 166137968)
  %9 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable8087287215503827521, i32 0, i64 %8
  store i8* blockaddress(@_Z5clearPcmPfm, %27), i8** %9, align 8
  %10 = call i64 @h5672634085375599500(i64 166137969)
  %11 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable8087287215503827521, i32 0, i64 %10
  store i8* blockaddress(@_Z5clearPcmPfm, %19), i8** %11, align 8
  %12 = icmp eq i8* %0, null
  %13 = icmp eq float* %2, null
  %14 = select i1 %12, i1 true, i1 %13
  %15 = select i1 %14, i32 166137969, i32 166137970
  %16 = xor i32 %15, 3
  store i32 %16, i32* %5, align 4
  %17 = call i8** @bf678997811367950786(i32* %5)
  %18 = load i8*, i8** %17, align 8
  indirectbr i8* %18, [label %46, label %19]

19:                                               ; preds = %4
  %20 = icmp ne i64 %1, 1760
  %21 = icmp ne i64 %3, 7040
  %22 = select i1 %20, i1 true, i1 %21
  %23 = select i1 %22, i32 166137968, i32 166137970
  %24 = xor i32 %23, 2
  store i32 %24, i32* %5, align 4
  %25 = call i8** @bf678997811367950786(i32* %5)
  %26 = load i8*, i8** %25, align 8
  indirectbr i8* %26, [label %46, label %27]

27:                                               ; preds = %27, %19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false)
  %28 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(7040) %28, i8 0, i64 7040, i1 false)
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = mul i8 %30, 2
  %32 = mul i8 %30, 2
  %33 = add i8 2, %32
  %34 = mul i8 %31, %33
  %35 = srem i8 %34, 4
  %36 = icmp eq i8 %35, 0
  %37 = mul i8 %30, %30
  %38 = add i8 %37, %30
  %39 = srem i8 %38, 2
  %40 = icmp eq i8 %39, 0
  %41 = and i1 %36, %40
  %42 = select i1 %41, i32 166137970, i32 166137970
  %43 = xor i32 %42, 0
  store i32 %43, i32* %5, align 4
  %44 = call i8** @bf678997811367950786(i32* %5)
  %45 = load i8*, i8** %44, align 8
  indirectbr i8* %45, [label %46, label %27]

46:                                               ; preds = %27, %19, %4
  %47 = phi i32 [ 0, %27 ], [ 2, %4 ], [ 2, %19 ]
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #5 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca [1760 x float], align 4
  %5 = alloca [1760 x i8], align 1
  %6 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11
  store float 0.000000e+00, float* %2, align 4, !tbaa !10
  %7 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #11
  store float 0.000000e+00, float* %3, align 4, !tbaa !10
  %8 = bitcast [1760 x float]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %8) #11
  %9 = getelementptr inbounds [1760 x i8], [1760 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %9) #11
  %10 = getelementptr inbounds [1760 x float], [1760 x float]* %4, i64 0, i64 0
  %11 = call fastcc i32 @_ZL9main_loopPfS_PcS_mm(float* nonnull %2, float* nonnull %3, i8* nonnull %9, float* nonnull %10, i64 1760, i64 7040)
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %9) #11
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %8) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal fastcc i32 @_ZL9main_loopPfS_PcS_mm(float* %0, float* %1, i8* %2, float* %3, i64 %4, i64 %5) unnamed_addr #6 {
  %7 = alloca i32, align 4
  %8 = call i64 @h5672634085375599500(i64 166137973)
  %9 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %8
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %143), i8** %9, align 8
  %10 = call i64 @h5672634085375599500(i64 166137979)
  %11 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %10
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %116), i8** %11, align 8
  %12 = call i64 @h5672634085375599500(i64 166137970)
  %13 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %12
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %111), i8** %13, align 8
  %14 = call i64 @h5672634085375599500(i64 166137971)
  %15 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %14
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %159), i8** %15, align 8
  %16 = call i64 @h5672634085375599500(i64 166137968)
  %17 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %16
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %94), i8** %17, align 8
  %18 = call i64 @h5672634085375599500(i64 166137972)
  %19 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %18
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %84), i8** %19, align 8
  %20 = call i64 @h5672634085375599500(i64 166137969)
  %21 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %20
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %69), i8** %21, align 8
  %22 = call i64 @h5672634085375599500(i64 166137978)
  %23 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %22
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %59), i8** %23, align 8
  %24 = call i64 @h5672634085375599500(i64 166137976)
  %25 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %24
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %124), i8** %25, align 8
  %26 = call i64 @h5672634085375599500(i64 166137975)
  %27 = getelementptr [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %26
  store i8* blockaddress(@_ZL9main_loopPfS_PcS_mm, %34), i8** %27, align 8
  %28 = call i32 @_Z5clearPcmPfm(i8* %2, i64 %4, float* %3, i64 %5)
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 166137971, i32 166137975
  %31 = xor i32 %30, 4
  store i32 %31, i32* %7, align 4
  %32 = call i8** @bf10836966524592585900(i32* %7)
  %33 = load i8*, i8** %32, align 8
  indirectbr i8* %33, [label %34, label %159]

34:                                               ; preds = %34, %6
  %35 = load i8, i8* %2, align 1, !tbaa !14
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, i8* %2, i64 1
  %38 = load i8, i8* %37, align 1, !tbaa !14
  %39 = zext i8 %38 to i32
  %40 = add nuw nsw i32 %39, %36
  %41 = load i8*, i8** %25, align 8
  %42 = load i8, i8* %41, align 1
  %43 = mul i8 %42, 2
  %44 = mul i8 %42, 2
  %45 = add i8 2, %44
  %46 = mul i8 %43, %45
  %47 = srem i8 %46, 4
  %48 = icmp eq i8 %47, 0
  %49 = mul i8 %42, %42
  %50 = mul i8 %49, %42
  %51 = add i8 %50, %42
  %52 = srem i8 %51, 2
  %53 = icmp eq i8 %52, 0
  %54 = and i1 %48, %53
  %55 = select i1 %54, i32 166137972, i32 166137978
  %56 = xor i32 %55, 14
  store i32 %56, i32* %7, align 4
  %57 = call i8** @bf10836966524592585900(i32* %7)
  %58 = load i8*, i8** %57, align 8
  indirectbr i8* %58, [label %59, label %34]

59:                                               ; preds = %94, %34
  %60 = phi double [ 0.000000e+00, %34 ], [ %105, %94 ]
  %61 = phi float [ 0.000000e+00, %34 ], [ %104, %94 ]
  %62 = phi i32 [ %40, %34 ], [ %101, %94 ]
  %63 = call fastcc i32 @_ZL10inner_loopfPfS_PcS_mm(float %61, float* %0, float* %1, i8* nonnull %2, float* %3, i64 %4, i64 %5)
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 166137969, i32 166137972
  %66 = xor i32 %65, 5
  store i32 %66, i32* %7, align 4
  %67 = call i8** @bf10836966524592585900(i32* %7)
  %68 = load i8*, i8** %67, align 8
  indirectbr i8* %68, [label %84, label %69]

69:                                               ; preds = %69, %59
  %70 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i8*, i8** %23, align 8
  %72 = load i8, i8* %71, align 1
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 1
  %75 = mul i8 %72, %72
  %76 = add i8 %75, %72
  %77 = srem i8 %76, 2
  %78 = icmp eq i8 %77, 0
  %79 = or i1 %74, %78
  %80 = select i1 %79, i32 166137968, i32 166137970
  %81 = xor i32 %80, 2
  store i32 %81, i32* %7, align 4
  %82 = call i8** @bf10836966524592585900(i32* %7)
  %83 = load i8*, i8** %82, align 8
  indirectbr i8* %83, [label %111, label %69]

84:                                               ; preds = %59
  %85 = add i32 %62, 1
  %86 = load i8, i8* %2, align 1, !tbaa !14
  %87 = sdiv i8 %86, 10
  store i8 %87, i8* %2, align 1, !tbaa !14
  %88 = add i8 %86, 9
  %89 = icmp ult i8 %88, 19
  %90 = select i1 %89, i32 166137968, i32 166137970
  %91 = xor i32 %90, 2
  store i32 %91, i32* %7, align 4
  %92 = call i8** @bf10836966524592585900(i32* %7)
  %93 = load i8*, i8** %92, align 8
  indirectbr i8* %93, [label %111, label %94]

94:                                               ; preds = %84
  %95 = add i8 %86, 19
  %96 = icmp ult i8 %95, 10
  %97 = shl i32 %62, 1
  %98 = mul i32 %97, %85
  %99 = trunc i32 %98 to i8
  %100 = select i1 %96, i8 1, i8 %99
  %101 = select i1 %96, i32 %85, i32 %62
  %102 = add i8 %100, %87
  store i8 %102, i8* %2, align 1, !tbaa !14
  %103 = fadd double %60, 7.000000e-02
  %104 = fptrunc double %103 to float
  %105 = fpext float %104 to double
  %106 = fcmp olt double %105, 6.280000e+00
  %107 = select i1 %106, i32 166137970, i32 166137978
  %108 = xor i32 %107, 8
  store i32 %108, i32* %7, align 4
  %109 = call i8** @bf10836966524592585900(i32* %7)
  %110 = load i8*, i8** %109, align 8
  indirectbr i8* %110, [label %59, label %111]

111:                                              ; preds = %94, %84, %69
  %112 = select i1 %64, i32 166137971, i32 166137979
  %113 = xor i32 %112, 8
  store i32 %113, i32* %7, align 4
  %114 = call i8** @bf10836966524592585900(i32* %7)
  %115 = load i8*, i8** %114, align 8
  indirectbr i8* %115, [label %116, label %159]

116:                                              ; preds = %111
  %117 = load i8, i8* %2, align 1, !tbaa !14
  %118 = add i8 %117, 9
  %119 = icmp ult i8 %118, 19
  %120 = select i1 %119, i32 166137976, i32 166137973
  %121 = xor i32 %120, 13
  store i32 %121, i32* %7, align 4
  %122 = call i8** @bf10836966524592585900(i32* %7)
  %123 = load i8*, i8** %122, align 8
  indirectbr i8* %123, [label %143, label %124]

124:                                              ; preds = %124, %116
  %125 = sdiv i8 %117, 10
  %126 = sext i8 %125 to i32
  %127 = load i8*, i8** %11, align 8
  %128 = load i8, i8* %127, align 1
  %129 = mul i8 %128, %128
  %130 = add i8 %129, %128
  %131 = mul i8 %130, 3
  %132 = srem i8 %131, 2
  %133 = icmp eq i8 %132, 0
  %134 = mul i8 %128, %128
  %135 = add i8 %134, %128
  %136 = srem i8 %135, 2
  %137 = icmp eq i8 %136, 0
  %138 = and i1 %133, %137
  %139 = select i1 %138, i32 166137973, i32 166137971
  %140 = xor i32 %139, 6
  store i32 %140, i32* %7, align 4
  %141 = call i8** @bf10836966524592585900(i32* %7)
  %142 = load i8*, i8** %141, align 8
  indirectbr i8* %142, [label %159, label %124]

143:                                              ; preds = %143, %116
  %144 = call i32 @_Z6renderPfS_Pcm(float* %0, float* %1, i8* nonnull %2, i64 %4)
  %145 = load i8*, i8** %9, align 8
  %146 = load i8, i8* %145, align 1
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  %149 = mul i8 %146, %146
  %150 = add i8 %149, %146
  %151 = mul i8 %150, 3
  %152 = srem i8 %151, 2
  %153 = icmp eq i8 %152, 0
  %154 = or i1 %148, %153
  %155 = select i1 %154, i32 166137970, i32 166137971
  %156 = xor i32 %155, 1
  store i32 %156, i32* %7, align 4
  %157 = call i8** @bf10836966524592585900(i32* %7)
  %158 = load i8*, i8** %157, align 8
  indirectbr i8* %158, [label %159, label %143]

159:                                              ; preds = %143, %124, %111, %6
  %160 = phi i32 [ %28, %6 ], [ %126, %124 ], [ %63, %111 ], [ %144, %143 ]
  ret i32 %160
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable
define internal fastcc i32 @_ZL10inner_loopfPfS_PcS_mm(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4, i64 %5, i64 %6) unnamed_addr #1 {
  %8 = alloca i32, align 4
  %9 = call i64 @h5672634085375599500(i64 166137968)
  %10 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1190399871476562411, i32 0, i64 %9
  store i8* blockaddress(@_ZL10inner_loopfPfS_PcS_mm, %128), i8** %10, align 8
  %11 = call i64 @h5672634085375599500(i64 166137973)
  %12 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1190399871476562411, i32 0, i64 %11
  store i8* blockaddress(@_ZL10inner_loopfPfS_PcS_mm, %117), i8** %12, align 8
  %13 = call i64 @h5672634085375599500(i64 166137969)
  %14 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1190399871476562411, i32 0, i64 %13
  store i8* blockaddress(@_ZL10inner_loopfPfS_PcS_mm, %154), i8** %14, align 8
  %15 = call i64 @h5672634085375599500(i64 166137974)
  %16 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1190399871476562411, i32 0, i64 %15
  store i8* blockaddress(@_ZL10inner_loopfPfS_PcS_mm, %60), i8** %16, align 8
  %17 = call i64 @h5672634085375599500(i64 166137971)
  %18 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1190399871476562411, i32 0, i64 %17
  store i8* blockaddress(@_ZL10inner_loopfPfS_PcS_mm, %42), i8** %18, align 8
  %19 = call i64 @h5672634085375599500(i64 166137970)
  %20 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1190399871476562411, i32 0, i64 %19
  store i8* blockaddress(@_ZL10inner_loopfPfS_PcS_mm, %163), i8** %20, align 8
  %21 = call i64 @h5672634085375599500(i64 166137972)
  %22 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1190399871476562411, i32 0, i64 %21
  store i8* blockaddress(@_ZL10inner_loopfPfS_PcS_mm, %34), i8** %22, align 8
  %23 = icmp eq float* %1, null
  %24 = icmp eq float* %2, null
  %25 = select i1 %23, i1 true, i1 %24
  %26 = icmp eq i8* %3, null
  %27 = select i1 %25, i1 true, i1 %26
  %28 = icmp eq float* %4, null
  %29 = select i1 %27, i1 true, i1 %28
  %30 = select i1 %29, i32 166137972, i32 166137970
  %31 = xor i32 %30, 6
  store i32 %31, i32* %8, align 4
  %32 = call i8** @bf12702309945230050596(i32* %8)
  %33 = load i8*, i8** %32, align 8
  indirectbr i8* %33, [label %163, label %34]

34:                                               ; preds = %7
  %35 = icmp ne i64 %5, 1760
  %36 = icmp ne i64 %6, 7040
  %37 = select i1 %35, i1 true, i1 %36
  %38 = select i1 %37, i32 166137971, i32 166137970
  %39 = xor i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = call i8** @bf12702309945230050596(i32* %8)
  %41 = load i8*, i8** %40, align 8
  indirectbr i8* %41, [label %163, label %42]

42:                                               ; preds = %42, %34
  %43 = call fastcc float @_ZL3cosf(float %0) #11
  %44 = call fastcc float @_ZL3sinf(float %0) #11
  %45 = fadd float %43, 2.000000e+00
  %46 = load i8*, i8** %22, align 8
  %47 = load i8, i8* %46, align 1
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  %50 = mul i8 %47, %47
  %51 = add i8 %50, %47
  %52 = mul i8 %51, 3
  %53 = srem i8 %52, 2
  %54 = icmp eq i8 %53, 0
  %55 = or i1 %49, %54
  %56 = select i1 %55, i32 166137973, i32 166137974
  %57 = xor i32 %56, 3
  store i32 %57, i32* %8, align 4
  %58 = call i8** @bf12702309945230050596(i32* %8)
  %59 = load i8*, i8** %58, align 8
  indirectbr i8* %59, [label %60, label %42]

60:                                               ; preds = %154, %42
  %61 = phi double [ 0.000000e+00, %42 ], [ %157, %154 ]
  %62 = phi float [ 0.000000e+00, %42 ], [ %156, %154 ]
  %63 = call fastcc float @_ZL3sinf(float %62) #11
  %64 = load float, float* %1, align 4, !tbaa !10
  %65 = call fastcc float @_ZL3sinf(float %64) #11
  %66 = call fastcc float @_ZL3cosf(float %64) #11
  %67 = fmul float %63, %45
  %68 = fmul float %67, %65
  %69 = fmul float %44, %66
  %70 = fadd float %68, %69
  %71 = fadd float %70, 5.000000e+00
  %72 = fdiv float 1.000000e+00, %71
  %73 = call fastcc float @_ZL3cosf(float %62) #11
  %74 = load float, float* %2, align 4, !tbaa !10
  %75 = call fastcc float @_ZL3cosf(float %74) #11
  %76 = call fastcc float @_ZL3sinf(float %74) #11
  %77 = fmul float %67, %66
  %78 = fmul float %65, %44
  %79 = fsub float %77, %78
  %80 = fmul float %72, 3.000000e+01
  %81 = fmul float %45, %73
  %82 = fmul float %81, %75
  %83 = fmul float %79, %76
  %84 = fsub float %82, %83
  %85 = fmul float %80, %84
  %86 = fadd float %85, 4.000000e+01
  %87 = fptosi float %86 to i32
  %88 = fmul float %72, 1.500000e+01
  %89 = fmul float %81, %76
  %90 = fmul float %79, %75
  %91 = fadd float %90, %89
  %92 = fmul float %88, %91
  %93 = fadd float %92, 1.200000e+01
  %94 = fptosi float %93 to i32
  %95 = fmul float %63, %43
  %96 = fmul float %95, %66
  %97 = fsub float %78, %96
  %98 = fmul float %97, %75
  %99 = fmul float %95, %65
  %100 = fsub float %98, %99
  %101 = fsub float %100, %69
  %102 = fmul float %43, %73
  %103 = fmul float %102, %76
  %104 = fsub float %101, %103
  %105 = fmul float %104, 8.000000e+00
  %106 = fptosi float %105 to i32
  %107 = add i32 %94, -1
  %108 = icmp ult i32 %107, 21
  %109 = icmp sgt i32 %87, 0
  %110 = select i1 %108, i1 %109, i1 false
  %111 = icmp slt i32 %87, 80
  %112 = select i1 %110, i1 %111, i1 false
  %113 = select i1 %112, i32 166137969, i32 166137973
  %114 = xor i32 %113, 4
  store i32 %114, i32* %8, align 4
  %115 = call i8** @bf12702309945230050596(i32* %8)
  %116 = load i8*, i8** %115, align 8
  indirectbr i8* %116, [label %117, label %154]

117:                                              ; preds = %60
  %118 = mul nsw i32 %94, 80
  %119 = add nsw i32 %118, %87
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %4, i64 %120
  %122 = load float, float* %121, align 4, !tbaa !10
  %123 = fcmp ogt float %72, %122
  %124 = select i1 %123, i32 166137969, i32 166137968
  %125 = xor i32 %124, 1
  store i32 %125, i32* %8, align 4
  %126 = call i8** @bf12702309945230050596(i32* %8)
  %127 = load i8*, i8** %126, align 8
  indirectbr i8* %127, [label %128, label %154]

128:                                              ; preds = %128, %117
  store float %72, float* %121, align 4, !tbaa !10
  %129 = load i8*, i8** @CHARS, align 8, !tbaa !15
  %130 = icmp sgt i32 %106, 0
  %131 = select i1 %130, i32 %106, i32 0
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1, !tbaa !14
  %135 = getelementptr inbounds i8, i8* %3, i64 %120
  store i8 %134, i8* %135, align 1, !tbaa !14
  %136 = load i8*, i8** %10, align 8
  %137 = load i8, i8* %136, align 1
  %138 = mul i8 %137, 2
  %139 = mul i8 %137, 2
  %140 = add i8 2, %139
  %141 = mul i8 %138, %140
  %142 = srem i8 %141, 4
  %143 = icmp eq i8 %142, 0
  %144 = mul i8 %137, %137
  %145 = mul i8 %144, %137
  %146 = add i8 %145, %137
  %147 = srem i8 %146, 2
  %148 = icmp eq i8 %147, 0
  %149 = and i1 %143, %148
  %150 = select i1 %149, i32 166137973, i32 166137969
  %151 = xor i32 %150, 4
  store i32 %151, i32* %8, align 4
  %152 = call i8** @bf12702309945230050596(i32* %8)
  %153 = load i8*, i8** %152, align 8
  indirectbr i8* %153, [label %154, label %128]

154:                                              ; preds = %128, %117, %60
  %155 = fadd double %61, 2.000000e-02
  %156 = fptrunc double %155 to float
  %157 = fpext float %156 to double
  %158 = fcmp olt double %157, 6.280000e+00
  %159 = select i1 %158, i32 166137970, i32 166137974
  %160 = xor i32 %159, 4
  store i32 %160, i32* %8, align 4
  %161 = call i8** @bf12702309945230050596(i32* %8)
  %162 = load i8*, i8** %161, align 8
  indirectbr i8* %162, [label %60, label %163]

163:                                              ; preds = %154, %34, %7
  %164 = phi i32 [ 2, %7 ], [ 2, %34 ], [ 0, %154 ]
  ret i32 %164
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3sinf(float %0) unnamed_addr #8 {
  %2 = alloca i32, align 4
  %3 = call float @llvm.sin.f32(float %0)
  ret float %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3cosf(float %0) unnamed_addr #8 {
  %2 = alloca i32, align 4
  %3 = call float @llvm.cos.f32(float %0)
  ret float %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #9

; Function Attrs: noinline
define internal i64 @h5672634085375599500(i64 %0) #10 {
  %2 = alloca i32, align 4
  %3 = xor i64 166137970, %0
  ret i64 %3
}

; Function Attrs: noinline
define internal i8** @bf2297577340762235155(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h5672634085375599500(i64 %4)
  %6 = getelementptr inbounds [10 x i8*], [10 x i8*]* @obfsblockAddrLookupTable9455691429180515042, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf7460833816370257249(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h5672634085375599500(i64 %4)
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable14933117115443261389, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf678997811367950786(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h5672634085375599500(i64 %4)
  %6 = getelementptr inbounds [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable8087287215503827521, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf10836966524592585900(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h5672634085375599500(i64 %4)
  %6 = getelementptr inbounds [11 x i8*], [11 x i8*]* @obfsblockAddrLookupTable18360685361522945674, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf12702309945230050596(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h5672634085375599500(i64 %4)
  %6 = getelementptr inbounds [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1190399871476562411, i32 0, i64 %5
  ret i8** %6
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind ssp willreturn writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { noinline }
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
!13 = !{!"Simple C++ TBAA"}
!14 = !{!12, !12, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}

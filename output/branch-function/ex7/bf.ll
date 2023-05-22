; ModuleID = 'output/branch-function/ex7/ex7.ll'
source_filename = "input/branch-function/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@obfsblockAddrLookupTable2258101817177289375 = private global [7 x i8*] zeroinitializer
@obfsblockAddrLookupTable16136151155851199132 = private global [5 x i8*] zeroinitializer
@obfsblockAddrLookupTable5005690463610171248 = private global [8 x i8*] zeroinitializer
@obfsblockAddrLookupTable16876233353213285682 = private global [2 x i8*] zeroinitializer
@llvm.compiler.used = appending global [9 x i8*] [i8* bitcast (i64 (i64)* @h7878203167742361351 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable2258101817177289375 to i8*), i8* bitcast (i8** (i32*)* @bf6730854074131324590 to i8*), i8* bitcast ([5 x i8*]* @obfsblockAddrLookupTable16136151155851199132 to i8*), i8* bitcast (i8** (i32*)* @bf14416387451948154761 to i8*), i8* bitcast ([8 x i8*]* @obfsblockAddrLookupTable5005690463610171248 to i8*), i8* bitcast (i8** (i32*)* @bf14510841862575562673 to i8*), i8* bitcast ([2 x i8*]* @obfsblockAddrLookupTable16876233353213285682 to i8*), i8* bitcast (i8** (i32*)* @bf7367135471562249364 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = call i64 @h7878203167742361351(i64 859390432)
  %6 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable16136151155851199132, i32 0, i64 %5
  store i8* blockaddress(@_Z7displayPKcRfS1_, %48), i8** %6, align 8
  %7 = call i64 @h7878203167742361351(i64 859390436)
  %8 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable16136151155851199132, i32 0, i64 %7
  store i8* blockaddress(@_Z7displayPKcRfS1_, %26), i8** %8, align 8
  %9 = call i64 @h7878203167742361351(i64 859390433)
  %10 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable16136151155851199132, i32 0, i64 %9
  store i8* blockaddress(@_Z7displayPKcRfS1_, %17), i8** %10, align 8
  %11 = call i64 @h7878203167742361351(i64 859390435)
  %12 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable16136151155851199132, i32 0, i64 %11
  store i8* blockaddress(@_Z7displayPKcRfS1_, %16), i8** %12, align 8
  %13 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 859390433, i32* %4, align 4
  %14 = call i8** @bf14416387451948154761(i32* %4)
  %15 = load i8*, i8** %14, align 8
  indirectbr i8* %15, [label %17]

16:                                               ; preds = %48
  ret void

17:                                               ; preds = %48, %3
  %18 = phi i64 [ 0, %3 ], [ %59, %48 ]
  %19 = trunc i64 %18 to i32
  %20 = urem i32 %19, 80
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 859390436, i32 859390432
  %23 = xor i32 %22, 4
  store i32 %23, i32* %4, align 4
  %24 = call i8** @bf14416387451948154761(i32* %4)
  %25 = load i8*, i8** %24, align 8
  indirectbr i8* %25, [label %48, label %26]

26:                                               ; preds = %26, %17
  %27 = getelementptr inbounds i8, i8* %0, i64 %18
  %28 = load i8, i8* %27, align 1, !tbaa !10
  %29 = sext i8 %28 to i32
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = mul i8 %31, 2
  %33 = mul i8 %31, 2
  %34 = add i8 2, %33
  %35 = mul i8 %32, %34
  %36 = srem i8 %35, 4
  %37 = icmp eq i8 %36, 0
  %38 = mul i8 %31, %31
  %39 = mul i8 %38, %31
  %40 = add i8 %39, %31
  %41 = srem i8 %40, 2
  %42 = icmp eq i8 %41, 0
  %43 = and i1 %37, %42
  %44 = select i1 %43, i32 859390435, i32 859390432
  %45 = xor i32 %44, 3
  store i32 %45, i32* %4, align 4
  %46 = call i8** @bf14416387451948154761(i32* %4)
  %47 = load i8*, i8** %46, align 8
  indirectbr i8* %47, [label %48, label %26]

48:                                               ; preds = %26, %17
  %49 = phi i32 [ %29, %26 ], [ 10, %17 ]
  %50 = call i32 @putchar(i32 %49)
  %51 = load float, float* %1, align 4, !tbaa !13
  %52 = fpext float %51 to double
  %53 = fadd double %52, 4.000000e-05
  %54 = fptrunc double %53 to float
  store float %54, float* %1, align 4, !tbaa !13
  %55 = load float, float* %2, align 4, !tbaa !13
  %56 = fpext float %55 to double
  %57 = fadd double %56, 2.000000e-05
  %58 = fptrunc double %57 to float
  store float %58, float* %2, align 4, !tbaa !13
  %59 = add nuw nsw i64 %18, 1
  %60 = icmp eq i64 %59, 1761
  %61 = select i1 %60, i32 859390433, i32 859390435
  %62 = xor i32 %61, 2
  store i32 %62, i32* %4, align 4
  %63 = call i8** @bf14416387451948154761(i32* %4)
  %64 = load i8*, i8** %63, align 8
  indirectbr i8* %64, [label %16, label %17]
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z6renderffiPfPcii(float %0, float %1, i32 %2, float* nocapture %3, i8* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #3 {
  %8 = alloca i32, align 4
  %9 = call i64 @h7878203167742361351(i64 859390435)
  %10 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable5005690463610171248, i32 0, i64 %9
  store i8* blockaddress(@_Z6renderffiPfPcii, %155), i8** %10, align 8
  %11 = call i64 @h7878203167742361351(i64 859390433)
  %12 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable5005690463610171248, i32 0, i64 %11
  store i8* blockaddress(@_Z6renderffiPfPcii, %134), i8** %12, align 8
  %13 = call i64 @h7878203167742361351(i64 859390439)
  %14 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable5005690463610171248, i32 0, i64 %13
  store i8* blockaddress(@_Z6renderffiPfPcii, %63), i8** %14, align 8
  %15 = call i64 @h7878203167742361351(i64 859390438)
  %16 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable5005690463610171248, i32 0, i64 %15
  store i8* blockaddress(@_Z6renderffiPfPcii, %73), i8** %16, align 8
  %17 = call i64 @h7878203167742361351(i64 859390434)
  %18 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable5005690463610171248, i32 0, i64 %17
  store i8* blockaddress(@_Z6renderffiPfPcii, %64), i8** %18, align 8
  %19 = call i64 @h7878203167742361351(i64 859390437)
  %20 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable5005690463610171248, i32 0, i64 %19
  store i8* blockaddress(@_Z6renderffiPfPcii, %123), i8** %20, align 8
  %21 = call i64 @h7878203167742361351(i64 859390432)
  %22 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable5005690463610171248, i32 0, i64 %21
  store i8* blockaddress(@_Z6renderffiPfPcii, %39), i8** %22, align 8
  %23 = sdiv i32 %6, 40
  %24 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 32, i64 %24, i1 false)
  %25 = bitcast float* %3 to i8*
  %26 = shl nsw i64 %24, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 %26, i1 false)
  %27 = sitofp i32 %23 to float
  %28 = sdiv i32 %6, 2
  %29 = sitofp i32 %28 to float
  %30 = sdiv i32 %5, 2
  %31 = add nsw i32 %30, 1
  %32 = sitofp i32 %31 to float
  %33 = call fastcc float @_ZL3sinf(float %0) #9
  %34 = call fastcc float @_ZL3cosf(float %0) #9
  %35 = call fastcc float @_ZL3cosf(float %1) #9
  %36 = call fastcc float @_ZL3sinf(float %1) #9
  store i32 859390432, i32* %8, align 4
  %37 = call i8** @bf14510841862575562673(i32* %8)
  %38 = load i8*, i8** %37, align 8
  indirectbr i8* %38, [label %39]

39:                                               ; preds = %64, %39, %7
  %40 = phi double [ 0.000000e+00, %7 ], [ %67, %64 ], [ 0.000000e+00, %39 ]
  %41 = phi float [ 0.000000e+00, %7 ], [ %66, %64 ], [ 0.000000e+00, %39 ]
  %42 = call fastcc float @_ZL3cosf(float %41) #9
  %43 = call fastcc float @_ZL3sinf(float %41) #9
  %44 = fadd float %42, %27
  %45 = fmul float %33, %43
  %46 = fmul float %43, %34
  %47 = load i8*, i8** %20, align 8
  %48 = load i8, i8* %47, align 1
  %49 = mul i8 %48, %48
  %50 = add i8 %49, %48
  %51 = mul i8 %50, 3
  %52 = srem i8 %51, 2
  %53 = icmp eq i8 %52, 0
  %54 = mul i8 %48, %48
  %55 = add i8 %54, %48
  %56 = srem i8 %55, 2
  %57 = icmp eq i8 %56, 0
  %58 = and i1 %53, %57
  %59 = select i1 %58, i32 859390435, i32 859390438
  %60 = xor i32 %59, 5
  store i32 %60, i32* %8, align 4
  %61 = call i8** @bf14510841862575562673(i32* %8)
  %62 = load i8*, i8** %61, align 8
  indirectbr i8* %62, [label %73, label %39]

63:                                               ; preds = %64
  ret void

64:                                               ; preds = %155
  %65 = fadd double %40, 7.000000e-02
  %66 = fptrunc double %65 to float
  %67 = fpext float %66 to double
  %68 = fcmp olt double %67, 6.280000e+00
  %69 = select i1 %68, i32 859390439, i32 859390432
  %70 = xor i32 %69, 7
  store i32 %70, i32* %8, align 4
  %71 = call i8** @bf14510841862575562673(i32* %8)
  %72 = load i8*, i8** %71, align 8
  indirectbr i8* %72, [label %39, label %63]

73:                                               ; preds = %155, %39
  %74 = phi double [ 0.000000e+00, %39 ], [ %158, %155 ]
  %75 = phi float [ 0.000000e+00, %39 ], [ %157, %155 ]
  %76 = call fastcc float @_ZL3sinf(float %75) #9
  %77 = fmul float %76, %44
  %78 = fmul float %77, %34
  %79 = fsub float %78, %45
  %80 = fmul float %33, %77
  %81 = fadd float %80, %46
  %82 = fadd float %81, 5.000000e+00
  %83 = fdiv float 1.000000e+00, %82
  %84 = call fastcc float @_ZL3cosf(float %75) #9
  %85 = fmul float %83, 3.000000e+01
  %86 = fmul float %44, %84
  %87 = fmul float %86, %35
  %88 = fmul float %79, %36
  %89 = fadd float %87, %88
  %90 = fmul float %85, %89
  %91 = fadd float %90, %29
  %92 = fptosi float %91 to i32
  %93 = fmul float %83, 1.500000e+01
  %94 = fmul float %86, %36
  %95 = fmul float %79, %35
  %96 = fsub float %94, %95
  %97 = fmul float %93, %96
  %98 = fadd float %97, %32
  %99 = fptosi float %98 to i32
  %100 = fmul float %76, %42
  %101 = fmul float %100, %34
  %102 = fsub float %45, %101
  %103 = fmul float %102, %35
  %104 = fmul float %100, %33
  %105 = fsub float %103, %104
  %106 = fsub float %105, %46
  %107 = fmul float %42, %84
  %108 = fmul float %107, %36
  %109 = fsub float %106, %108
  %110 = fmul float %109, 8.000000e+00
  %111 = fptosi float %110 to i32
  %112 = icmp slt i32 %99, %5
  %113 = icmp sgt i32 %99, 0
  %114 = and i1 %112, %113
  %115 = icmp sgt i32 %92, 0
  %116 = select i1 %114, i1 %115, i1 false
  %117 = icmp slt i32 %92, %6
  %118 = select i1 %116, i1 %117, i1 false
  %119 = select i1 %118, i32 859390435, i32 859390437
  %120 = xor i32 %119, 6
  store i32 %120, i32* %8, align 4
  %121 = call i8** @bf14510841862575562673(i32* %8)
  %122 = load i8*, i8** %121, align 8
  indirectbr i8* %122, [label %123, label %155]

123:                                              ; preds = %73
  %124 = mul nsw i32 %99, %6
  %125 = add nsw i32 %124, %92
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %3, i64 %126
  %128 = load float, float* %127, align 4, !tbaa !13
  %129 = fcmp ogt float %83, %128
  %130 = select i1 %129, i32 859390435, i32 859390433
  %131 = xor i32 %130, 2
  store i32 %131, i32* %8, align 4
  %132 = call i8** @bf14510841862575562673(i32* %8)
  %133 = load i8*, i8** %132, align 8
  indirectbr i8* %133, [label %134, label %155]

134:                                              ; preds = %134, %123
  store float %83, float* %127, align 4, !tbaa !13
  %135 = icmp sgt i32 %111, 0
  %136 = select i1 %135, i32 %111, i32 0
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1, !tbaa !10
  %140 = getelementptr inbounds i8, i8* %4, i64 %126
  store i8 %139, i8* %140, align 1, !tbaa !10
  %141 = load i8*, i8** %22, align 8
  %142 = load i8, i8* %141, align 1
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  %145 = mul i8 %142, %142
  %146 = add i8 %145, %142
  %147 = mul i8 %146, 3
  %148 = srem i8 %147, 2
  %149 = icmp eq i8 %148, 0
  %150 = or i1 %144, %149
  %151 = select i1 %150, i32 859390438, i32 859390435
  %152 = xor i32 %151, 5
  store i32 %152, i32* %8, align 4
  %153 = call i8** @bf14510841862575562673(i32* %8)
  %154 = load i8*, i8** %153, align 8
  indirectbr i8* %154, [label %155, label %134]

155:                                              ; preds = %134, %123, %73
  %156 = fadd double %74, 2.000000e-02
  %157 = fptrunc double %156 to float
  %158 = fpext float %157 to double
  %159 = fcmp olt double %158, 6.280000e+00
  %160 = select i1 %159, i32 859390434, i32 859390438
  %161 = xor i32 %160, 4
  store i32 %161, i32* %8, align 4
  %162 = call i8** @bf14510841862575562673(i32* %8)
  %163 = load i8*, i8** %162, align 8
  indirectbr i8* %163, [label %73, label %64]
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3sinf(float %0) unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = call float @llvm.sin.f32(float %0)
  ret float %3
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3cosf(float %0) unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = call float @llvm.cos.f32(float %0)
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse noreturn nounwind ssp uwtable
define i32 @main() local_unnamed_addr #6 {
  %1 = alloca i32, align 4
  %2 = call i64 @h7878203167742361351(i64 859390433)
  %3 = getelementptr [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable16876233353213285682, i32 0, i64 %2
  store i8* blockaddress(@main, %15), i8** %3, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0.000000e+00, float* %4, align 4, !tbaa !13
  %7 = bitcast float* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  store float 0.000000e+00, float* %5, align 4, !tbaa !13
  %8 = alloca [1760 x float], align 4
  %9 = alloca [1760 x i8], align 1
  %10 = getelementptr inbounds [1760 x i8], [1760 x i8]* %9, i64 0, i64 0
  %11 = getelementptr inbounds [1760 x float], [1760 x float]* %8, i64 0, i64 0
  %12 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 859390433, i32* %1, align 4
  %13 = call i8** @bf7367135471562249364(i32* %1)
  %14 = load i8*, i8** %13, align 8
  indirectbr i8* %14, [label %15]

15:                                               ; preds = %15, %15, %0
  %16 = load float, float* %4, align 4, !tbaa !13
  %17 = load float, float* %5, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %16, float %17, i32 1760, float* nonnull %11, i8* nonnull %10, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_(i8* nonnull %10, float* nonnull align 4 dereferenceable(4) %4, float* nonnull align 4 dereferenceable(4) %5)
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = mul i8 %19, %19
  %23 = add i8 %22, %19
  %24 = mul i8 %23, 3
  %25 = srem i8 %24, 2
  %26 = icmp eq i8 %25, 0
  %27 = or i1 %21, %26
  %28 = select i1 %27, i32 859390433, i32 859390433
  %29 = xor i32 %28, 0
  store i32 %29, i32* %1, align 4
  %30 = call i8** @bf7367135471562249364(i32* %1)
  %31 = load i8*, i8** %30, align 8
  indirectbr i8* %31, [label %15, label %15]
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #7

; Function Attrs: noinline
define internal i64 @h7878203167742361351(i64 %0) #8 {
  %2 = alloca i32, align 4
  %3 = xor i64 859390432, %0
  ret i64 %3
}

; Function Attrs: noinline
define internal i8** @bf6730854074131324590(i32* %0) #8 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h7878203167742361351(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable2258101817177289375, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf14416387451948154761(i32* %0) #8 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h7878203167742361351(i64 %4)
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable16136151155851199132, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf14510841862575562673(i32* %0) #8 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h7878203167742361351(i64 %4)
  %6 = getelementptr inbounds [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable5005690463610171248, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf7367135471562249364(i32* %0) #8 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h7878203167742361351(i64 %4)
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable16876233353213285682, i32 0, i64 %5
  ret i8** %6
}

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { noinline }
attributes #9 = { nounwind }

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

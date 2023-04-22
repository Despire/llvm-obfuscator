; ModuleID = 'output/branch-function/ex7/ex7.ll'
source_filename = "input/branch-function/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@obfsblockAddrLookupTable11683278124375186667 = private global [7 x i8*] zeroinitializer
@obfsblockAddrLookupTable11626737490988026003 = private global [5 x i8*] zeroinitializer
@obfsblockAddrLookupTable1921676717395573813 = private global [8 x i8*] zeroinitializer
@obfsblockAddrLookupTable4457814833751532472 = private global [2 x i8*] zeroinitializer
@llvm.compiler.used = appending global [9 x i8*] [i8* bitcast (i64 (i64)* @h7776145976669301884 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable11683278124375186667 to i8*), i8* bitcast (i8** (i32*)* @bf16932449065014725323 to i8*), i8* bitcast ([5 x i8*]* @obfsblockAddrLookupTable11626737490988026003 to i8*), i8* bitcast (i8** (i32*)* @bf6534839024012340920 to i8*), i8* bitcast ([8 x i8*]* @obfsblockAddrLookupTable1921676717395573813 to i8*), i8* bitcast (i8** (i32*)* @bf1885562343049896620 to i8*), i8* bitcast ([2 x i8*]* @obfsblockAddrLookupTable4457814833751532472 to i8*), i8* bitcast (i8** (i32*)* @bf6429819117546320589 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = call i64 @h7776145976669301884(i64 1212403464)
  %6 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable11626737490988026003, i32 0, i64 %5
  store i8* blockaddress(@_Z7displayPKcRfS1_, %47), i8** %6, align 8
  %7 = call i64 @h7776145976669301884(i64 1212403466)
  %8 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable11626737490988026003, i32 0, i64 %7
  store i8* blockaddress(@_Z7displayPKcRfS1_, %26), i8** %8, align 8
  %9 = call i64 @h7776145976669301884(i64 1212403467)
  %10 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable11626737490988026003, i32 0, i64 %9
  store i8* blockaddress(@_Z7displayPKcRfS1_, %17), i8** %10, align 8
  %11 = call i64 @h7776145976669301884(i64 1212403465)
  %12 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable11626737490988026003, i32 0, i64 %11
  store i8* blockaddress(@_Z7displayPKcRfS1_, %16), i8** %12, align 8
  %13 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 1212403467, i32* %4, align 4
  %14 = call i8** @bf6534839024012340920(i32* %4)
  %15 = load i8*, i8** %14, align 8
  indirectbr i8* %15, [label %17]

16:                                               ; preds = %47
  ret void

17:                                               ; preds = %47, %3
  %18 = phi i64 [ 0, %3 ], [ %58, %47 ]
  %19 = trunc i64 %18 to i32
  %20 = urem i32 %19, 80
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1212403466, i32 1212403464
  %23 = xor i32 %22, 2
  store i32 %23, i32* %4, align 4
  %24 = call i8** @bf6534839024012340920(i32* %4)
  %25 = load i8*, i8** %24, align 8
  indirectbr i8* %25, [label %47, label %26]

26:                                               ; preds = %26, %17
  %27 = getelementptr inbounds i8, i8* %0, i64 %18
  %28 = load i8, i8* %27, align 1, !tbaa !10
  %29 = sext i8 %28 to i32
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = mul i8 %31, 2
  %33 = mul i8 %31, 2
  %34 = add i8 2, %33
  %35 = mul i8 %32, %34
  %36 = srem i8 %35, 4
  %37 = icmp eq i8 %36, 0
  %38 = mul i8 %31, %31
  %39 = add i8 %38, %31
  %40 = srem i8 %39, 2
  %41 = icmp eq i8 %40, 0
  %42 = and i1 %37, %41
  %43 = select i1 %42, i32 1212403466, i32 1212403464
  %44 = xor i32 %43, 2
  store i32 %44, i32* %4, align 4
  %45 = call i8** @bf6534839024012340920(i32* %4)
  %46 = load i8*, i8** %45, align 8
  indirectbr i8* %46, [label %47, label %26]

47:                                               ; preds = %26, %17
  %48 = phi i32 [ %29, %26 ], [ 10, %17 ]
  %49 = call i32 @putchar(i32 %48)
  %50 = load float, float* %1, align 4, !tbaa !13
  %51 = fpext float %50 to double
  %52 = fadd double %51, 4.000000e-05
  %53 = fptrunc double %52 to float
  store float %53, float* %1, align 4, !tbaa !13
  %54 = load float, float* %2, align 4, !tbaa !13
  %55 = fpext float %54 to double
  %56 = fadd double %55, 2.000000e-05
  %57 = fptrunc double %56 to float
  store float %57, float* %2, align 4, !tbaa !13
  %58 = add nuw nsw i64 %18, 1
  %59 = icmp eq i64 %58, 1761
  %60 = select i1 %59, i32 1212403467, i32 1212403465
  %61 = xor i32 %60, 2
  store i32 %61, i32* %4, align 4
  %62 = call i8** @bf6534839024012340920(i32* %4)
  %63 = load i8*, i8** %62, align 8
  indirectbr i8* %63, [label %16, label %17]
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
  %9 = call i64 @h7776145976669301884(i64 1212403468)
  %10 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1921676717395573813, i32 0, i64 %9
  store i8* blockaddress(@_Z6renderffiPfPcii, %152), i8** %10, align 8
  %11 = call i64 @h7776145976669301884(i64 1212403471)
  %12 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1921676717395573813, i32 0, i64 %11
  store i8* blockaddress(@_Z6renderffiPfPcii, %120), i8** %12, align 8
  %13 = call i64 @h7776145976669301884(i64 1212403470)
  %14 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1921676717395573813, i32 0, i64 %13
  store i8* blockaddress(@_Z6renderffiPfPcii, %131), i8** %14, align 8
  %15 = call i64 @h7776145976669301884(i64 1212403466)
  %16 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1921676717395573813, i32 0, i64 %15
  store i8* blockaddress(@_Z6renderffiPfPcii, %70), i8** %16, align 8
  %17 = call i64 @h7776145976669301884(i64 1212403464)
  %18 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1921676717395573813, i32 0, i64 %17
  store i8* blockaddress(@_Z6renderffiPfPcii, %61), i8** %18, align 8
  %19 = call i64 @h7776145976669301884(i64 1212403465)
  %20 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1921676717395573813, i32 0, i64 %19
  store i8* blockaddress(@_Z6renderffiPfPcii, %60), i8** %20, align 8
  %21 = call i64 @h7776145976669301884(i64 1212403469)
  %22 = getelementptr [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1921676717395573813, i32 0, i64 %21
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
  %33 = call fastcc float @_ZL3sinf(float %0) #8
  %34 = call fastcc float @_ZL3cosf(float %0) #8
  %35 = call fastcc float @_ZL3cosf(float %1) #8
  %36 = call fastcc float @_ZL3sinf(float %1) #8
  store i32 1212403469, i32* %8, align 4
  %37 = call i8** @bf1885562343049896620(i32* %8)
  %38 = load i8*, i8** %37, align 8
  indirectbr i8* %38, [label %39]

39:                                               ; preds = %61, %39, %7
  %40 = phi double [ 0.000000e+00, %7 ], [ %64, %61 ], [ 0.000000e+00, %39 ]
  %41 = phi float [ 0.000000e+00, %7 ], [ %63, %61 ], [ 0.000000e+00, %39 ]
  %42 = call fastcc float @_ZL3cosf(float %41) #8
  %43 = call fastcc float @_ZL3sinf(float %41) #8
  %44 = fadd float %42, %27
  %45 = fmul float %33, %43
  %46 = fmul float %43, %34
  %47 = load i8*, i8** %20, align 8
  %48 = load i8, i8* %47, align 1
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 1
  %51 = mul i8 %48, %48
  %52 = add i8 %51, %48
  %53 = srem i8 %52, 2
  %54 = icmp eq i8 %53, 0
  %55 = or i1 %50, %54
  %56 = select i1 %55, i32 1212403465, i32 1212403466
  %57 = xor i32 %56, 3
  store i32 %57, i32* %8, align 4
  %58 = call i8** @bf1885562343049896620(i32* %8)
  %59 = load i8*, i8** %58, align 8
  indirectbr i8* %59, [label %70, label %39]

60:                                               ; preds = %61
  ret void

61:                                               ; preds = %152
  %62 = fadd double %40, 7.000000e-02
  %63 = fptrunc double %62 to float
  %64 = fpext float %63 to double
  %65 = fcmp olt double %64, 6.280000e+00
  %66 = select i1 %65, i32 1212403465, i32 1212403469
  %67 = xor i32 %66, 4
  store i32 %67, i32* %8, align 4
  %68 = call i8** @bf1885562343049896620(i32* %8)
  %69 = load i8*, i8** %68, align 8
  indirectbr i8* %69, [label %39, label %60]

70:                                               ; preds = %152, %39
  %71 = phi double [ 0.000000e+00, %39 ], [ %155, %152 ]
  %72 = phi float [ 0.000000e+00, %39 ], [ %154, %152 ]
  %73 = call fastcc float @_ZL3sinf(float %72) #8
  %74 = fmul float %73, %44
  %75 = fmul float %74, %34
  %76 = fsub float %75, %45
  %77 = fmul float %33, %74
  %78 = fadd float %77, %46
  %79 = fadd float %78, 5.000000e+00
  %80 = fdiv float 1.000000e+00, %79
  %81 = call fastcc float @_ZL3cosf(float %72) #8
  %82 = fmul float %80, 3.000000e+01
  %83 = fmul float %44, %81
  %84 = fmul float %83, %35
  %85 = fmul float %76, %36
  %86 = fadd float %84, %85
  %87 = fmul float %82, %86
  %88 = fadd float %87, %29
  %89 = fptosi float %88 to i32
  %90 = fmul float %80, 1.500000e+01
  %91 = fmul float %83, %36
  %92 = fmul float %76, %35
  %93 = fsub float %91, %92
  %94 = fmul float %90, %93
  %95 = fadd float %94, %32
  %96 = fptosi float %95 to i32
  %97 = fmul float %73, %42
  %98 = fmul float %97, %34
  %99 = fsub float %45, %98
  %100 = fmul float %99, %35
  %101 = fmul float %97, %33
  %102 = fsub float %100, %101
  %103 = fsub float %102, %46
  %104 = fmul float %42, %81
  %105 = fmul float %104, %36
  %106 = fsub float %103, %105
  %107 = fmul float %106, 8.000000e+00
  %108 = fptosi float %107 to i32
  %109 = icmp slt i32 %96, %5
  %110 = icmp sgt i32 %96, 0
  %111 = and i1 %109, %110
  %112 = icmp sgt i32 %89, 0
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp slt i32 %89, %6
  %115 = select i1 %113, i1 %114, i1 false
  %116 = select i1 %115, i32 1212403468, i32 1212403471
  %117 = xor i32 %116, 3
  store i32 %117, i32* %8, align 4
  %118 = call i8** @bf1885562343049896620(i32* %8)
  %119 = load i8*, i8** %118, align 8
  indirectbr i8* %119, [label %120, label %152]

120:                                              ; preds = %70
  %121 = mul nsw i32 %96, %6
  %122 = add nsw i32 %121, %89
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %3, i64 %123
  %125 = load float, float* %124, align 4, !tbaa !13
  %126 = fcmp ogt float %80, %125
  %127 = select i1 %126, i32 1212403468, i32 1212403470
  %128 = xor i32 %127, 2
  store i32 %128, i32* %8, align 4
  %129 = call i8** @bf1885562343049896620(i32* %8)
  %130 = load i8*, i8** %129, align 8
  indirectbr i8* %130, [label %131, label %152]

131:                                              ; preds = %131, %120
  store float %80, float* %124, align 4, !tbaa !13
  %132 = icmp sgt i32 %108, 0
  %133 = select i1 %132, i32 %108, i32 0
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %134
  %136 = load i8, i8* %135, align 1, !tbaa !10
  %137 = getelementptr inbounds i8, i8* %4, i64 %123
  store i8 %136, i8* %137, align 1, !tbaa !10
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %138, align 1
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  %142 = mul i8 %139, %139
  %143 = add i8 %142, %139
  %144 = mul i8 %143, 3
  %145 = srem i8 %144, 2
  %146 = icmp eq i8 %145, 0
  %147 = or i1 %141, %146
  %148 = select i1 %147, i32 1212403464, i32 1212403468
  %149 = xor i32 %148, 4
  store i32 %149, i32* %8, align 4
  %150 = call i8** @bf1885562343049896620(i32* %8)
  %151 = load i8*, i8** %150, align 8
  indirectbr i8* %151, [label %152, label %131]

152:                                              ; preds = %131, %120, %70
  %153 = fadd double %71, 2.000000e-02
  %154 = fptrunc double %153 to float
  %155 = fpext float %154 to double
  %156 = fcmp olt double %155, 6.280000e+00
  %157 = select i1 %156, i32 1212403464, i32 1212403466
  %158 = xor i32 %157, 2
  store i32 %158, i32* %8, align 4
  %159 = call i8** @bf1885562343049896620(i32* %8)
  %160 = load i8*, i8** %159, align 8
  indirectbr i8* %160, [label %70, label %61]
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
  %2 = call i64 @h7776145976669301884(i64 1212403464)
  %3 = getelementptr [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable4457814833751532472, i32 0, i64 %2
  store i8* blockaddress(@main, %15), i8** %3, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8
  store float 0.000000e+00, float* %4, align 4, !tbaa !13
  %7 = bitcast float* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #8
  store float 0.000000e+00, float* %5, align 4, !tbaa !13
  %8 = alloca [1760 x float], align 4
  %9 = alloca [1760 x i8], align 1
  %10 = getelementptr inbounds [1760 x i8], [1760 x i8]* %9, i64 0, i64 0
  %11 = getelementptr inbounds [1760 x float], [1760 x float]* %8, i64 0, i64 0
  %12 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 1212403464, i32* %1, align 4
  %13 = call i8** @bf6429819117546320589(i32* %1)
  %14 = load i8*, i8** %13, align 8
  indirectbr i8* %14, [label %15]

15:                                               ; preds = %15, %15, %0
  %16 = load float, float* %4, align 4, !tbaa !13
  %17 = load float, float* %5, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %16, float %17, i32 1760, float* nonnull %11, i8* nonnull %10, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_(i8* nonnull %10, float* nonnull align 4 dereferenceable(4) %4, float* nonnull align 4 dereferenceable(4) %5)
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = mul i8 %19, 2
  %21 = mul i8 %19, 2
  %22 = add i8 2, %21
  %23 = mul i8 %20, %22
  %24 = srem i8 %23, 4
  %25 = icmp eq i8 %24, 0
  %26 = mul i8 %19, %19
  %27 = add i8 %26, %19
  %28 = srem i8 %27, 2
  %29 = icmp eq i8 %28, 0
  %30 = or i1 %25, %29
  %31 = select i1 %30, i32 1212403464, i32 1212403464
  %32 = xor i32 %31, 0
  store i32 %32, i32* %1, align 4
  %33 = call i8** @bf6429819117546320589(i32* %1)
  %34 = load i8*, i8** %33, align 8
  indirectbr i8* %34, [label %15, label %15]
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #7

define private i64 @h7776145976669301884(i64 %0) {
  %2 = alloca i32, align 4
  %3 = xor i64 1212403464, %0
  ret i64 %3
}

define private i8** @bf16932449065014725323(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h7776145976669301884(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable11683278124375186667, i32 0, i64 %5
  ret i8** %6
}

define private i8** @bf6534839024012340920(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h7776145976669301884(i64 %4)
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable11626737490988026003, i32 0, i64 %5
  ret i8** %6
}

define private i8** @bf1885562343049896620(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h7776145976669301884(i64 %4)
  %6 = getelementptr inbounds [8 x i8*], [8 x i8*]* @obfsblockAddrLookupTable1921676717395573813, i32 0, i64 %5
  ret i8** %6
}

define private i8** @bf6429819117546320589(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h7776145976669301884(i64 %4)
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable4457814833751532472, i32 0, i64 %5
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

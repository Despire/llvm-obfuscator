; ModuleID = 'output/branch-function/ex7/ex7.ll'
source_filename = "input/branch-function/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@obfsblockAddrLookupTable17197823175935251745 = private global [7 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @h490647221915446645 to i8*), i8* bitcast (i8** (i32*)* @bf1031131890144267901 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable17197823175935251745 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = call i64 @h490647221915446645(i64 2147483647)
  %6 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %5
  store i8* blockaddress(@_Z7displayPKcRfS1_, %17), i8** %6, align 8
  %7 = call i64 @h490647221915446645(i64 2147483646)
  %8 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %7
  store i8* blockaddress(@_Z7displayPKcRfS1_, %46), i8** %8, align 8
  %9 = call i64 @h490647221915446645(i64 2147483643)
  %10 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %9
  store i8* blockaddress(@_Z7displayPKcRfS1_, %26), i8** %10, align 8
  %11 = call i64 @h490647221915446645(i64 2147483641)
  %12 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %11
  store i8* blockaddress(@_Z7displayPKcRfS1_, %16), i8** %12, align 8
  %13 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 2147483647, i32* %4, align 4
  %14 = call i8** @bf1031131890144267901(i32* %4)
  %15 = load i8*, i8** %14, align 8
  indirectbr i8* %15, [label %17]

16:                                               ; preds = %46
  ret void

17:                                               ; preds = %46, %3
  %18 = phi i64 [ 0, %3 ], [ %57, %46 ]
  %19 = trunc i64 %18 to i32
  %20 = urem i32 %19, 80
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2147483643, i32 2147483646
  %23 = xor i32 %22, 5
  store i32 %23, i32* %4, align 4
  %24 = call i8** @bf1031131890144267901(i32* %4)
  %25 = load i8*, i8** %24, align 8
  indirectbr i8* %25, [label %46, label %26]

26:                                               ; preds = %26, %17
  %27 = getelementptr inbounds i8, i8* %0, i64 %18
  %28 = load i8, i8* %27, align 1, !tbaa !10
  %29 = sext i8 %28 to i32
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = mul i8 %31, %31
  %33 = add i8 %32, %31
  %34 = mul i8 %33, 3
  %35 = srem i8 %34, 2
  %36 = icmp eq i8 %35, 0
  %37 = mul i8 %31, %31
  %38 = add i8 %37, %31
  %39 = srem i8 %38, 2
  %40 = icmp eq i8 %39, 0
  %41 = and i1 %36, %40
  %42 = select i1 %41, i32 2147483643, i32 2147483646
  %43 = xor i32 %42, 5
  store i32 %43, i32* %4, align 4
  %44 = call i8** @bf1031131890144267901(i32* %4)
  %45 = load i8*, i8** %44, align 8
  indirectbr i8* %45, [label %46, label %26]

46:                                               ; preds = %26, %17
  %47 = phi i32 [ %29, %26 ], [ 10, %17 ]
  %48 = call i32 @putchar(i32 %47)
  %49 = load float, float* %1, align 4, !tbaa !13
  %50 = fpext float %49 to double
  %51 = fadd double %50, 4.000000e-05
  %52 = fptrunc double %51 to float
  store float %52, float* %1, align 4, !tbaa !13
  %53 = load float, float* %2, align 4, !tbaa !13
  %54 = fpext float %53 to double
  %55 = fadd double %54, 2.000000e-05
  %56 = fptrunc double %55 to float
  store float %56, float* %2, align 4, !tbaa !13
  %57 = add nuw nsw i64 %18, 1
  %58 = icmp eq i64 %57, 1761
  %59 = select i1 %58, i32 2147483647, i32 2147483641
  %60 = xor i32 %59, 6
  store i32 %60, i32* %4, align 4
  %61 = call i8** @bf1031131890144267901(i32* %4)
  %62 = load i8*, i8** %61, align 8
  indirectbr i8* %62, [label %16, label %17]
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
  %9 = call i64 @h490647221915446645(i64 2147483641)
  %10 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %9
  store i8* blockaddress(@_Z6renderffiPfPcii, %156), i8** %10, align 8
  %11 = call i64 @h490647221915446645(i64 2147483646)
  %12 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %11
  store i8* blockaddress(@_Z6renderffiPfPcii, %132), i8** %12, align 8
  %13 = call i64 @h490647221915446645(i64 2147483645)
  %14 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %13
  store i8* blockaddress(@_Z6renderffiPfPcii, %71), i8** %14, align 8
  %15 = call i64 @h490647221915446645(i64 2147483647)
  %16 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %15
  store i8* blockaddress(@_Z6renderffiPfPcii, %121), i8** %16, align 8
  %17 = call i64 @h490647221915446645(i64 2147483642)
  %18 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %17
  store i8* blockaddress(@_Z6renderffiPfPcii, %62), i8** %18, align 8
  %19 = call i64 @h490647221915446645(i64 2147483643)
  %20 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %19
  store i8* blockaddress(@_Z6renderffiPfPcii, %61), i8** %20, align 8
  %21 = call i64 @h490647221915446645(i64 2147483644)
  %22 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %21
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
  store i32 2147483644, i32* %8, align 4
  %37 = call i8** @bf1031131890144267901(i32* %8)
  %38 = load i8*, i8** %37, align 8
  indirectbr i8* %38, [label %39]

39:                                               ; preds = %62, %39, %7
  %40 = phi double [ 0.000000e+00, %7 ], [ %65, %62 ], [ 0.000000e+00, %39 ]
  %41 = phi float [ 0.000000e+00, %7 ], [ %64, %62 ], [ 0.000000e+00, %39 ]
  %42 = call fastcc float @_ZL3cosf(float %41) #8
  %43 = call fastcc float @_ZL3sinf(float %41) #8
  %44 = fadd float %42, %27
  %45 = fmul float %33, %43
  %46 = fmul float %43, %34
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  %51 = mul i8 %48, %48
  %52 = add i8 %51, %48
  %53 = mul i8 %52, 3
  %54 = srem i8 %53, 2
  %55 = icmp eq i8 %54, 0
  %56 = or i1 %50, %55
  %57 = select i1 %56, i32 2147483644, i32 2147483645
  %58 = xor i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = call i8** @bf1031131890144267901(i32* %8)
  %60 = load i8*, i8** %59, align 8
  indirectbr i8* %60, [label %71, label %39]

61:                                               ; preds = %62
  ret void

62:                                               ; preds = %156
  %63 = fadd double %40, 7.000000e-02
  %64 = fptrunc double %63 to float
  %65 = fpext float %64 to double
  %66 = fcmp olt double %65, 6.280000e+00
  %67 = select i1 %66, i32 2147483643, i32 2147483644
  %68 = xor i32 %67, 7
  store i32 %68, i32* %8, align 4
  %69 = call i8** @bf1031131890144267901(i32* %8)
  %70 = load i8*, i8** %69, align 8
  indirectbr i8* %70, [label %39, label %61]

71:                                               ; preds = %156, %39
  %72 = phi double [ 0.000000e+00, %39 ], [ %159, %156 ]
  %73 = phi float [ 0.000000e+00, %39 ], [ %158, %156 ]
  %74 = call fastcc float @_ZL3sinf(float %73) #8
  %75 = fmul float %74, %44
  %76 = fmul float %75, %34
  %77 = fsub float %76, %45
  %78 = fmul float %33, %75
  %79 = fadd float %78, %46
  %80 = fadd float %79, 5.000000e+00
  %81 = fdiv float 1.000000e+00, %80
  %82 = call fastcc float @_ZL3cosf(float %73) #8
  %83 = fmul float %81, 3.000000e+01
  %84 = fmul float %44, %82
  %85 = fmul float %84, %35
  %86 = fmul float %77, %36
  %87 = fadd float %85, %86
  %88 = fmul float %83, %87
  %89 = fadd float %88, %29
  %90 = fptosi float %89 to i32
  %91 = fmul float %81, 1.500000e+01
  %92 = fmul float %84, %36
  %93 = fmul float %77, %35
  %94 = fsub float %92, %93
  %95 = fmul float %91, %94
  %96 = fadd float %95, %32
  %97 = fptosi float %96 to i32
  %98 = fmul float %74, %42
  %99 = fmul float %98, %34
  %100 = fsub float %45, %99
  %101 = fmul float %100, %35
  %102 = fmul float %98, %33
  %103 = fsub float %101, %102
  %104 = fsub float %103, %46
  %105 = fmul float %42, %82
  %106 = fmul float %105, %36
  %107 = fsub float %104, %106
  %108 = fmul float %107, 8.000000e+00
  %109 = fptosi float %108 to i32
  %110 = icmp slt i32 %97, %5
  %111 = icmp sgt i32 %97, 0
  %112 = and i1 %110, %111
  %113 = icmp sgt i32 %90, 0
  %114 = select i1 %112, i1 %113, i1 false
  %115 = icmp slt i32 %90, %6
  %116 = select i1 %114, i1 %115, i1 false
  %117 = select i1 %116, i32 2147483641, i32 2147483647
  %118 = xor i32 %117, 6
  store i32 %118, i32* %8, align 4
  %119 = call i8** @bf1031131890144267901(i32* %8)
  %120 = load i8*, i8** %119, align 8
  indirectbr i8* %120, [label %121, label %156]

121:                                              ; preds = %71
  %122 = mul nsw i32 %97, %6
  %123 = add nsw i32 %122, %90
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %3, i64 %124
  %126 = load float, float* %125, align 4, !tbaa !13
  %127 = fcmp ogt float %81, %126
  %128 = select i1 %127, i32 2147483641, i32 2147483646
  %129 = xor i32 %128, 7
  store i32 %129, i32* %8, align 4
  %130 = call i8** @bf1031131890144267901(i32* %8)
  %131 = load i8*, i8** %130, align 8
  indirectbr i8* %131, [label %132, label %156]

132:                                              ; preds = %132, %121
  store float %81, float* %125, align 4, !tbaa !13
  %133 = icmp sgt i32 %109, 0
  %134 = select i1 %133, i32 %109, i32 0
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1, !tbaa !10
  %138 = getelementptr inbounds i8, i8* %4, i64 %124
  store i8 %137, i8* %138, align 1, !tbaa !10
  %139 = load i8*, i8** %20, align 8
  %140 = load i8, i8* %139, align 1
  %141 = mul i8 %140, 2
  %142 = mul i8 %140, 2
  %143 = add i8 2, %142
  %144 = mul i8 %141, %143
  %145 = srem i8 %144, 4
  %146 = icmp eq i8 %145, 0
  %147 = mul i8 %140, %140
  %148 = add i8 %147, %140
  %149 = srem i8 %148, 2
  %150 = icmp eq i8 %149, 0
  %151 = or i1 %146, %150
  %152 = select i1 %151, i32 2147483644, i32 2147483641
  %153 = xor i32 %152, 5
  store i32 %153, i32* %8, align 4
  %154 = call i8** @bf1031131890144267901(i32* %8)
  %155 = load i8*, i8** %154, align 8
  indirectbr i8* %155, [label %156, label %132]

156:                                              ; preds = %132, %121, %71
  %157 = fadd double %72, 2.000000e-02
  %158 = fptrunc double %157 to float
  %159 = fpext float %158 to double
  %160 = fcmp olt double %159, 6.280000e+00
  %161 = select i1 %160, i32 2147483642, i32 2147483645
  %162 = xor i32 %161, 7
  store i32 %162, i32* %8, align 4
  %163 = call i8** @bf1031131890144267901(i32* %8)
  %164 = load i8*, i8** %163, align 8
  indirectbr i8* %164, [label %71, label %62]
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
  %2 = call i64 @h490647221915446645(i64 2147483645)
  %3 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %2
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
  store i32 2147483645, i32* %1, align 4
  %13 = call i8** @bf1031131890144267901(i32* %1)
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
  %30 = and i1 %25, %29
  %31 = select i1 %30, i32 2147483645, i32 2147483645
  %32 = xor i32 %31, 0
  store i32 %32, i32* %1, align 4
  %33 = call i8** @bf1031131890144267901(i32* %1)
  %34 = load i8*, i8** %33, align 8
  indirectbr i8* %34, [label %15, label %15]
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #7

define private i64 @h490647221915446645(i64 %0) {
  %2 = alloca i32, align 4
  %3 = xor i64 2147483647, %0
  ret i64 %3
}

define private i8** @bf1031131890144267901(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h490647221915446645(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17197823175935251745, i32 0, i64 %5
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

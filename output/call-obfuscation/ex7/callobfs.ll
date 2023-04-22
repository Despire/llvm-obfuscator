; ModuleID = 'output/call-obfuscation/ex7/ex7.ll'
source_filename = "input/call-obfuscation/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@obfsfuncAddrLookupTable16276618621666968793 = private global [2 x i8*] zeroinitializer
@obfsfuncAddrLookupTable2364638279921518402 = private global [8 x i8*] zeroinitializer
@obfsfuncAddrLookupTable12349221757206148404 = private global [3 x i8*] zeroinitializer
@llvm.compiler.used = appending global [7 x i8*] [i8* bitcast (i64 (i64)* @m9859981207937995329 to i8*), i8* bitcast ([2 x i8*]* @obfsfuncAddrLookupTable16276618621666968793 to i8*), i8* bitcast (i8** (i64*)* @lk18420389345282509939 to i8*), i8* bitcast ([8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402 to i8*), i8* bitcast (i8** (i64*)* @lk13198321042205016032 to i8*), i8* bitcast ([3 x i8*]* @obfsfuncAddrLookupTable12349221757206148404 to i8*), i8* bitcast (i8** (i64*)* @lk11715391998855818140 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = call i64 @m9859981207937995329(i64 -1028640395964598348)
  %6 = getelementptr [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable16276618621666968793, i32 0, i64 %5
  store i8* bitcast (i32 (i8*, ...)* @printf to i8*), i8** %6, align 8
  %7 = call i64 @m9859981207937995329(i64 -1028640395964598347)
  %8 = getelementptr [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable16276618621666968793, i32 0, i64 %7
  store i8* bitcast (i32 (i32)* @putchar to i8*), i8** %8, align 8
  store i64 -1028640395964598348, i64* %4, align 8
  %9 = call i8** @lk18420389345282509939(i64* %4)
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to i32 (i8*, ...)*
  %12 = call i32 (i8*, ...) %11(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %14

13:                                               ; preds = %23
  ret void

14:                                               ; preds = %23, %3
  %15 = phi i64 [ 0, %3 ], [ %37, %23 ]
  %16 = trunc i64 %15 to i32
  %17 = urem i32 %16, 80
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, i8* %0, i64 %15
  %21 = load i8, i8* %20, align 1, !tbaa !10
  %22 = sext i8 %21 to i32
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %22, %19 ], [ 10, %14 ]
  store i64 -1028640395964598347, i64* %4, align 8
  %25 = call i8** @lk18420389345282509939(i64* %4)
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to i32 (i32)*
  %28 = call i32 %27(i32 %24)
  %29 = load float, float* %1, align 4, !tbaa !13
  %30 = fpext float %29 to double
  %31 = fadd double %30, 4.000000e-05
  %32 = fptrunc double %31 to float
  store float %32, float* %1, align 4, !tbaa !13
  %33 = load float, float* %2, align 4, !tbaa !13
  %34 = fpext float %33 to double
  %35 = fadd double %34, 2.000000e-05
  %36 = fptrunc double %35 to float
  store float %36, float* %2, align 4, !tbaa !13
  %37 = add nuw nsw i64 %15, 1
  %38 = icmp eq i64 %37, 1761
  br i1 %38, label %13, label %14, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z6renderffiPfPcii(float %0, float %1, i32 %2, float* nocapture %3, i8* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #3 {
  %8 = alloca i64, align 8
  %9 = call i64 @m9859981207937995329(i64 -1028640395964598345)
  %10 = getelementptr [8 x i8*], [8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402, i32 0, i64 %9
  store i8* bitcast (float (float)* @_ZL3sinf to i8*), i8** %10, align 8
  %11 = call i64 @m9859981207937995329(i64 -1028640395964598350)
  %12 = getelementptr [8 x i8*], [8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402, i32 0, i64 %11
  store i8* bitcast (float (float)* @_ZL3cosf to i8*), i8** %12, align 8
  %13 = call i64 @m9859981207937995329(i64 -1028640395964598347)
  %14 = getelementptr [8 x i8*], [8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402, i32 0, i64 %13
  store i8* bitcast (float (float)* @_ZL3cosf to i8*), i8** %14, align 8
  %15 = call i64 @m9859981207937995329(i64 -1028640395964598349)
  %16 = getelementptr [8 x i8*], [8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402, i32 0, i64 %15
  store i8* bitcast (float (float)* @_ZL3sinf to i8*), i8** %16, align 8
  %17 = call i64 @m9859981207937995329(i64 -1028640395964598352)
  %18 = getelementptr [8 x i8*], [8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402, i32 0, i64 %17
  store i8* bitcast (float (float)* @_ZL3cosf to i8*), i8** %18, align 8
  %19 = call i64 @m9859981207937995329(i64 -1028640395964598346)
  %20 = getelementptr [8 x i8*], [8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402, i32 0, i64 %19
  store i8* bitcast (float (float)* @_ZL3sinf to i8*), i8** %20, align 8
  %21 = call i64 @m9859981207937995329(i64 -1028640395964598348)
  %22 = getelementptr [8 x i8*], [8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402, i32 0, i64 %21
  store i8* bitcast (float (float)* @_ZL3sinf to i8*), i8** %22, align 8
  %23 = call i64 @m9859981207937995329(i64 -1028640395964598351)
  %24 = getelementptr [8 x i8*], [8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402, i32 0, i64 %23
  store i8* bitcast (float (float)* @_ZL3cosf to i8*), i8** %24, align 8
  %25 = sdiv i32 %6, 40
  %26 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 32, i64 %26, i1 false)
  %27 = bitcast float* %3 to i8*
  %28 = shl nsw i64 %26, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 %28, i1 false)
  %29 = sitofp i32 %25 to float
  %30 = sdiv i32 %6, 2
  %31 = sitofp i32 %30 to float
  %32 = sdiv i32 %5, 2
  %33 = add nsw i32 %32, 1
  %34 = sitofp i32 %33 to float
  store i64 -1028640395964598345, i64* %8, align 8
  %35 = call i8** @lk13198321042205016032(i64* %8)
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to float (float)*
  %38 = call float %37(float %0)
  store i64 -1028640395964598350, i64* %8, align 8
  %39 = call i8** @lk13198321042205016032(i64* %8)
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to float (float)*
  %42 = call float %41(float %0)
  store i64 -1028640395964598347, i64* %8, align 8
  %43 = call i8** @lk13198321042205016032(i64* %8)
  %44 = load i8*, i8** %43, align 8
  %45 = bitcast i8* %44 to float (float)*
  %46 = call float %45(float %1)
  store i64 -1028640395964598349, i64* %8, align 8
  %47 = call i8** @lk13198321042205016032(i64* %8)
  %48 = load i8*, i8** %47, align 8
  %49 = bitcast i8* %48 to float (float)*
  %50 = call float %49(float %1)
  br label %51

51:                                               ; preds = %66, %7
  %52 = phi double [ 0.000000e+00, %7 ], [ %69, %66 ]
  %53 = phi float [ 0.000000e+00, %7 ], [ %68, %66 ]
  store i64 -1028640395964598352, i64* %8, align 8
  %54 = call i8** @lk13198321042205016032(i64* %8)
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to float (float)*
  %57 = call float %56(float %53)
  store i64 -1028640395964598346, i64* %8, align 8
  %58 = call i8** @lk13198321042205016032(i64* %8)
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to float (float)*
  %61 = call float %60(float %53)
  %62 = fadd float %57, %29
  %63 = fmul float %38, %61
  %64 = fmul float %61, %42
  br label %71

65:                                               ; preds = %66
  ret void

66:                                               ; preds = %137
  %67 = fadd double %52, 7.000000e-02
  %68 = fptrunc double %67 to float
  %69 = fpext float %68 to double
  %70 = fcmp olt double %69, 6.280000e+00
  br i1 %70, label %51, label %65, !llvm.loop !18

71:                                               ; preds = %137, %51
  %72 = phi double [ 0.000000e+00, %51 ], [ %140, %137 ]
  %73 = phi float [ 0.000000e+00, %51 ], [ %139, %137 ]
  store i64 -1028640395964598348, i64* %8, align 8
  %74 = call i8** @lk13198321042205016032(i64* %8)
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to float (float)*
  %77 = call float %76(float %73)
  %78 = fmul float %77, %62
  %79 = fmul float %78, %42
  %80 = fsub float %79, %63
  %81 = fmul float %38, %78
  %82 = fadd float %81, %64
  %83 = fadd float %82, 5.000000e+00
  %84 = fdiv float 1.000000e+00, %83
  store i64 -1028640395964598351, i64* %8, align 8
  %85 = call i8** @lk13198321042205016032(i64* %8)
  %86 = load i8*, i8** %85, align 8
  %87 = bitcast i8* %86 to float (float)*
  %88 = call float %87(float %73)
  %89 = fmul float %84, 3.000000e+01
  %90 = fmul float %62, %88
  %91 = fmul float %90, %46
  %92 = fmul float %80, %50
  %93 = fadd float %91, %92
  %94 = fmul float %89, %93
  %95 = fadd float %94, %31
  %96 = fptosi float %95 to i32
  %97 = fmul float %84, 1.500000e+01
  %98 = fmul float %90, %50
  %99 = fmul float %80, %46
  %100 = fsub float %98, %99
  %101 = fmul float %97, %100
  %102 = fadd float %101, %34
  %103 = fptosi float %102 to i32
  %104 = fmul float %77, %57
  %105 = fmul float %104, %42
  %106 = fsub float %63, %105
  %107 = fmul float %106, %46
  %108 = fmul float %104, %38
  %109 = fsub float %107, %108
  %110 = fsub float %109, %64
  %111 = fmul float %57, %88
  %112 = fmul float %111, %50
  %113 = fsub float %110, %112
  %114 = fmul float %113, 8.000000e+00
  %115 = fptosi float %114 to i32
  %116 = icmp slt i32 %103, %5
  %117 = icmp sgt i32 %103, 0
  %118 = and i1 %116, %117
  %119 = icmp sgt i32 %96, 0
  %120 = select i1 %118, i1 %119, i1 false
  %121 = icmp slt i32 %96, %6
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %123, label %137

123:                                              ; preds = %71
  %124 = mul nsw i32 %103, %6
  %125 = add nsw i32 %124, %96
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %3, i64 %126
  %128 = load float, float* %127, align 4, !tbaa !13
  %129 = fcmp ogt float %84, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  store float %84, float* %127, align 4, !tbaa !13
  %131 = icmp sgt i32 %115, 0
  %132 = select i1 %131, i32 %115, i32 0
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1, !tbaa !10
  %136 = getelementptr inbounds i8, i8* %4, i64 %126
  store i8 %135, i8* %136, align 1, !tbaa !10
  br label %137

137:                                              ; preds = %130, %123, %71
  %138 = fadd double %72, 2.000000e-02
  %139 = fptrunc double %138 to float
  %140 = fpext float %139 to double
  %141 = fcmp olt double %140, 6.280000e+00
  br i1 %141, label %71, label %66, !llvm.loop !19
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
  %1 = alloca i64, align 8
  %2 = call i64 @m9859981207937995329(i64 -1028640395964598345)
  %3 = getelementptr [3 x i8*], [3 x i8*]* @obfsfuncAddrLookupTable12349221757206148404, i32 0, i64 %2
  store i8* bitcast (i32 (i8*, ...)* @printf to i8*), i8** %3, align 8
  %4 = call i64 @m9859981207937995329(i64 -1028640395964598347)
  %5 = getelementptr [3 x i8*], [3 x i8*]* @obfsfuncAddrLookupTable12349221757206148404, i32 0, i64 %4
  store i8* bitcast (void (float, float, i32, float*, i8*, i32, i32)* @_Z6renderffiPfPcii to i8*), i8** %5, align 8
  %6 = call i64 @m9859981207937995329(i64 -1028640395964598348)
  %7 = getelementptr [3 x i8*], [3 x i8*]* @obfsfuncAddrLookupTable12349221757206148404, i32 0, i64 %6
  store i8* bitcast (void (i8*, float*, float*)* @_Z7displayPKcRfS1_ to i8*), i8** %7, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = bitcast float* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #8
  store float 0.000000e+00, float* %8, align 4, !tbaa !13
  %11 = bitcast float* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #8
  store float 0.000000e+00, float* %9, align 4, !tbaa !13
  %12 = alloca [1760 x float], align 4
  %13 = alloca [1760 x i8], align 1
  %14 = getelementptr inbounds [1760 x i8], [1760 x i8]* %13, i64 0, i64 0
  %15 = getelementptr inbounds [1760 x float], [1760 x float]* %12, i64 0, i64 0
  store i64 -1028640395964598345, i64* %1, align 8
  %16 = call i8** @lk11715391998855818140(i64* %1)
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32 (i8*, ...)*
  %19 = call i32 (i8*, ...) %18(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %20, %0
  %21 = load float, float* %8, align 4, !tbaa !13
  %22 = load float, float* %9, align 4, !tbaa !13
  store i64 -1028640395964598347, i64* %1, align 8
  %23 = call i8** @lk11715391998855818140(i64* %1)
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to void (float, float, i32, float*, i8*, i32, i32)*
  call void %25(float %21, float %22, i32 1760, float* %15, i8* %14, i32 22, i32 80)
  store i64 -1028640395964598348, i64* %1, align 8
  %26 = call i8** @lk11715391998855818140(i64* %1)
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to void (i8*, float*, float*)*
  call void %28(i8* %14, float* %8, float* %9)
  br label %20, !llvm.loop !20
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #7

define private i64 @m9859981207937995329(i64 %0) {
  %2 = xor i64 -1028640395964598347, %0
  ret i64 %2
}

define private i8** @lk18420389345282509939(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m9859981207937995329(i64 %2)
  %4 = getelementptr inbounds [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable16276618621666968793, i32 0, i64 %3
  ret i8** %4
}

define private i8** @lk13198321042205016032(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m9859981207937995329(i64 %2)
  %4 = getelementptr inbounds [8 x i8*], [8 x i8*]* @obfsfuncAddrLookupTable2364638279921518402, i32 0, i64 %3
  ret i8** %4
}

define private i8** @lk11715391998855818140(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m9859981207937995329(i64 %2)
  %4 = getelementptr inbounds [3 x i8*], [3 x i8*]* @obfsfuncAddrLookupTable12349221757206148404, i32 0, i64 %3
  ret i8** %4
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
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}

; ModuleID = 'output/opaque-predicates/ex8/ex8.ll'
source_filename = "input/opaque-predicates/ex8/ex8.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %7

6:                                                ; preds = %42
  ret void

7:                                                ; preds = %42, %4
  %8 = phi i64 [ 0, %4 ], [ %53, %42 ]
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 80
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 1
  %14 = mul i32 %5, %5
  %15 = add i32 %14, %5
  %16 = srem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = xor i1 %13, true
  %19 = and i1 %18, false
  %20 = and i1 %13, true
  %21 = or i1 %19, %20
  %22 = xor i1 %17, true
  %23 = and i1 %22, false
  %24 = and i1 %17, true
  %25 = or i1 %23, %24
  %26 = xor i1 %21, %25
  %27 = xor i1 %13, true
  %28 = xor i1 %17, true
  %29 = or i1 %27, %28
  %30 = xor i1 %29, true
  %31 = and i1 %30, true
  %32 = or i1 %26, %31
  %33 = xor i1 %11, true
  %34 = xor i1 %32, true
  %35 = or i1 %33, %34
  %36 = xor i1 %35, true
  %37 = and i1 %36, true
  br i1 %37, label %42, label %38

38:                                               ; preds = %7
  %39 = getelementptr inbounds i8, i8* %0, i64 %8
  %40 = load i8, i8* %39, align 1, !tbaa !10
  %41 = sext i8 %40 to i32
  br label %42

42:                                               ; preds = %38, %7
  %43 = phi i32 [ %41, %38 ], [ 10, %7 ]
  %44 = call i32 @putchar(i32 %43)
  %45 = load float, float* %1, align 4, !tbaa !13
  %46 = fpext float %45 to double
  %47 = fadd double %46, 4.000000e-05
  %48 = fptrunc double %47 to float
  store float %48, float* %1, align 4, !tbaa !13
  %49 = load float, float* %2, align 4, !tbaa !13
  %50 = fpext float %49 to double
  %51 = fadd double %50, 2.000000e-05
  %52 = fptrunc double %51 to float
  store float %52, float* %2, align 4, !tbaa !13
  %53 = add nuw nsw i64 %8, 1
  %54 = icmp eq i64 %53, 1761
  br i1 %54, label %6, label %7, !llvm.loop !15
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
  %8 = sdiv i32 %6, 40
  %9 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 32, i64 %9, i1 false)
  %10 = bitcast float* %3 to i8*
  %11 = shl nsw i64 %9, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 %11, i1 false)
  %12 = sitofp i32 %8 to float
  %13 = sdiv i32 %6, 2
  %14 = sitofp i32 %13 to float
  %15 = sdiv i32 %5, 2
  %16 = add nsw i32 %15, 1
  %17 = sitofp i32 %16 to float
  %18 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %19 = call fastcc float @_ZL3sinf(float %0) #9
  %20 = call fastcc float @_ZL3cosf(float %0) #9
  %21 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %22 = call fastcc float @_ZL3cosf(float %1) #9
  %23 = call fastcc float @_ZL3sinf(float %1) #9
  br label %25

24:                                               ; preds = %106
  ret void

25:                                               ; preds = %106, %7
  %26 = phi double [ 0.000000e+00, %7 ], [ %109, %106 ]
  %27 = phi float [ 0.000000e+00, %7 ], [ %108, %106 ]
  %28 = call fastcc float @_ZL3cosf(float %27) #9
  %29 = call fastcc float @_ZL3sinf(float %27) #9
  %30 = fadd float %28, %12
  %31 = fmul float %18, %30
  %32 = fmul float %31, %20
  %33 = fmul float %19, %29
  %34 = fsub float %32, %33
  %35 = fmul float %19, %31
  %36 = fmul float %29, %20
  %37 = fadd float %35, %36
  %38 = fadd float %37, 5.000000e+00
  %39 = fdiv float 1.000000e+00, %38
  %40 = fmul float %30, %21
  %41 = fmul float %39, 1.500000e+01
  %42 = fmul float %40, %23
  %43 = fmul float %34, %22
  %44 = fsub float %42, %43
  %45 = fmul float %41, %44
  %46 = fadd float %45, %17
  %47 = fptosi float %46 to i32
  %48 = fmul float %18, %28
  %49 = fmul float %48, %20
  %50 = fsub float %33, %49
  %51 = fmul float %50, %22
  %52 = fmul float %48, %19
  %53 = fsub float %51, %52
  %54 = fsub float %53, %36
  %55 = fmul float %28, %21
  %56 = fmul float %55, %23
  %57 = fsub float %54, %56
  %58 = fmul float %57, 8.000000e+00
  %59 = fmul float %39, 3.000000e+01
  %60 = fmul float %40, %22
  %61 = fmul float %34, %23
  %62 = fadd float %60, %61
  %63 = fmul float %59, %62
  %64 = fadd float %63, %14
  %65 = fptosi float %64 to i32
  %66 = fptosi float %58 to i32
  %67 = icmp slt i32 %47, %5
  %68 = icmp sgt i32 %47, 0
  %69 = and i1 %67, %68
  %70 = icmp sgt i32 %65, 0
  %71 = select i1 %69, i1 %70, i1 false
  %72 = icmp slt i32 %65, %6
  %73 = select i1 %71, i1 %72, i1 false
  %74 = mul i64 %11, 2
  %75 = mul i64 %11, 2
  %76 = add i64 2, %75
  %77 = mul i64 %74, %76
  %78 = srem i64 %77, 4
  %79 = icmp eq i64 %78, 0
  %80 = mul i64 %11, %11
  %81 = mul i64 %80, %11
  %82 = add i64 %81, %11
  %83 = srem i64 %82, 2
  %84 = icmp eq i64 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %79, %85
  %87 = and i1 %86, %79
  %88 = xor i1 %73, true
  %89 = or i1 %88, %87
  %90 = xor i1 %73, true
  %91 = sub i1 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %25
  %93 = mul nsw i32 %47, %6
  %94 = add nsw i32 %93, %65
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %3, i64 %95
  %97 = load float, float* %96, align 4, !tbaa !13
  %98 = fcmp ogt float %39, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  store float %39, float* %96, align 4, !tbaa !13
  %100 = icmp sgt i32 %66, 0
  %101 = select i1 %100, i32 %66, i32 0
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1, !tbaa !10
  %105 = getelementptr inbounds i8, i8* %4, i64 %95
  store i8 %104, i8* %105, align 1, !tbaa !10
  br label %106

106:                                              ; preds = %99, %92, %25
  %107 = fadd double %26, 7.000000e-02
  %108 = fptrunc double %107 to float
  %109 = fpext float %108 to double
  %110 = fcmp olt double %109, 6.280000e+00
  br i1 %110, label %25, label %24, !llvm.loop !18
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  store float 0.000000e+00, float* %1, align 4, !tbaa !13
  %4 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
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
  %17 = mul i32 %10, 2
  %18 = mul i32 %10, 2
  %19 = add i32 2, %18
  %20 = mul i32 %17, %19
  %21 = srem i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = mul i32 %10, %10
  %24 = add i32 %23, %10
  %25 = srem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %22, %27
  %29 = and i1 %28, %22
  %30 = xor i1 %16, true
  %31 = or i1 %30, %29
  %32 = xor i1 %16, true
  %33 = sub i1 %31, %32
  br i1 %33, label %35, label %11, !llvm.loop !19

34:                                               ; preds = %35
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %46

35:                                               ; preds = %35, %11
  %36 = phi i64 [ %47, %35 ], [ 0, %11 ]
  %37 = phi i32 [ %46, %35 ], [ 0, %11 ]
  %38 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %36
  %39 = load i8, i8* %38, align 1, !tbaa !10
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %37, %40
  %42 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %36
  %43 = load float, float* %42, align 4, !tbaa !13
  %44 = sitofp i32 %41 to float
  %45 = fadd float %43, %44
  %46 = fptosi float %45 to i32
  %47 = add nuw nsw i64 %36, 1
  %48 = icmp eq i64 %47, 1760
  %49 = and i32 %15, 1
  %50 = icmp eq i32 %49, 0
  %51 = mul i32 %15, %15
  %52 = add i32 %51, %15
  %53 = mul i32 %52, 3
  %54 = srem i32 %53, 2
  %55 = icmp eq i32 %54, 0
  %56 = xor i1 %50, true
  %57 = and i1 %56, false
  %58 = and i1 %50, true
  %59 = or i1 %57, %58
  %60 = xor i1 %55, true
  %61 = and i1 %60, false
  %62 = and i1 %55, true
  %63 = or i1 %61, %62
  %64 = xor i1 %59, %63
  %65 = xor i1 %50, true
  %66 = xor i1 %55, true
  %67 = or i1 %65, %66
  %68 = xor i1 %67, true
  %69 = and i1 %68, true
  %70 = or i1 %64, %69
  %71 = xor i1 %70, true
  %72 = xor i1 %48, %71
  %73 = and i1 %72, %48
  br i1 %73, label %34, label %35, !llvm.loop !20
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #8

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}

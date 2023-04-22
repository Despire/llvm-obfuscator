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

6:                                                ; preds = %33
  ret void

7:                                                ; preds = %33, %4
  %8 = phi i64 [ 0, %4 ], [ %44, %33 ]
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 80
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %5, 2
  %13 = mul i32 %5, 2
  %14 = add i32 2, %13
  %15 = mul i32 %12, %14
  %16 = srem i32 %15, 4
  %17 = icmp eq i32 %16, 0
  %18 = mul i32 %5, %5
  %19 = add i32 %18, %5
  %20 = srem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %17, %21
  %23 = xor i1 %17, %21
  %24 = or i1 %22, %23
  %25 = xor i1 %11, true
  %26 = or i1 %25, %24
  %27 = xor i1 %11, true
  %28 = sub i1 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %7
  %30 = getelementptr inbounds i8, i8* %0, i64 %8
  %31 = load i8, i8* %30, align 1, !tbaa !10
  %32 = sext i8 %31 to i32
  br label %33

33:                                               ; preds = %29, %7
  %34 = phi i32 [ %32, %29 ], [ 10, %7 ]
  %35 = call i32 @putchar(i32 %34)
  %36 = load float, float* %1, align 4, !tbaa !13
  %37 = fpext float %36 to double
  %38 = fadd double %37, 4.000000e-05
  %39 = fptrunc double %38 to float
  store float %39, float* %1, align 4, !tbaa !13
  %40 = load float, float* %2, align 4, !tbaa !13
  %41 = fpext float %40 to double
  %42 = fadd double %41, 2.000000e-05
  %43 = fptrunc double %42 to float
  store float %43, float* %2, align 4, !tbaa !13
  %44 = add nuw nsw i64 %8, 1
  %45 = icmp eq i64 %44, 1761
  br i1 %45, label %6, label %7, !llvm.loop !15
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

24:                                               ; preds = %104
  ret void

25:                                               ; preds = %104, %7
  %26 = phi double [ 0.000000e+00, %7 ], [ %107, %104 ]
  %27 = phi float [ 0.000000e+00, %7 ], [ %106, %104 ]
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
  %74 = mul i32 %8, %8
  %75 = add i32 %74, %8
  %76 = mul i32 %75, 3
  %77 = srem i32 %76, 2
  %78 = icmp eq i32 %77, 0
  %79 = mul i32 %8, %8
  %80 = add i32 %79, %8
  %81 = srem i32 %80, 2
  %82 = icmp eq i32 %81, 0
  %83 = xor i1 %78, true
  %84 = or i1 %83, %82
  %85 = xor i1 %78, true
  %86 = sub i1 %84, %85
  %87 = xor i1 %86, true
  %88 = xor i1 %73, %87
  %89 = and i1 %88, %73
  br i1 %89, label %90, label %104

90:                                               ; preds = %25
  %91 = mul nsw i32 %47, %6
  %92 = add nsw i32 %91, %65
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %3, i64 %93
  %95 = load float, float* %94, align 4, !tbaa !13
  %96 = fcmp ogt float %39, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  store float %39, float* %94, align 4, !tbaa !13
  %98 = icmp sgt i32 %66, 0
  %99 = select i1 %98, i32 %66, i32 0
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !10
  %103 = getelementptr inbounds i8, i8* %4, i64 %93
  store i8 %102, i8* %103, align 1, !tbaa !10
  br label %104

104:                                              ; preds = %97, %90, %25
  %105 = fadd double %26, 7.000000e-02
  %106 = fptrunc double %105 to float
  %107 = fpext float %106 to double
  %108 = fcmp olt double %107, 6.280000e+00
  br i1 %108, label %25, label %24, !llvm.loop !18
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
  %27 = and i1 %22, %26
  %28 = xor i1 %22, %26
  %29 = or i1 %27, %28
  %30 = xor i1 %16, true
  %31 = xor i1 %29, true
  %32 = or i1 %30, %31
  %33 = xor i1 %32, true
  %34 = and i1 %33, true
  br i1 %34, label %36, label %11, !llvm.loop !19

35:                                               ; preds = %36
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %47

36:                                               ; preds = %36, %11
  %37 = phi i64 [ %48, %36 ], [ 0, %11 ]
  %38 = phi i32 [ %47, %36 ], [ 0, %11 ]
  %39 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %37
  %40 = load i8, i8* %39, align 1, !tbaa !10
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %38, %41
  %43 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %37
  %44 = load float, float* %43, align 4, !tbaa !13
  %45 = sitofp i32 %42 to float
  %46 = fadd float %44, %45
  %47 = fptosi float %46 to i32
  %48 = add nuw nsw i64 %37, 1
  %49 = icmp eq i64 %48, 1760
  %50 = mul i32 %15, 2
  %51 = mul i32 %15, 2
  %52 = add i32 2, %51
  %53 = mul i32 %50, %52
  %54 = srem i32 %53, 4
  %55 = icmp eq i32 %54, 0
  %56 = mul i32 %15, %15
  %57 = add i32 %56, %15
  %58 = srem i32 %57, 2
  %59 = icmp eq i32 %58, 0
  %60 = xor i1 %55, true
  %61 = or i1 %60, %59
  %62 = xor i1 %55, true
  %63 = sub i1 %61, %62
  %64 = xor i1 %49, true
  %65 = xor i1 %63, true
  %66 = or i1 %64, %65
  %67 = xor i1 %66, true
  %68 = and i1 %67, true
  br i1 %68, label %35, label %36, !llvm.loop !20
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

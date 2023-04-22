; ModuleID = 'output/jump-into-loop/ex8/ex8.ll'
source_filename = "input/jump-into-loop/ex8/ex8.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = mul i32 %3, %3
  %7 = add i32 %6, %3
  %8 = mul i32 %7, 3
  %9 = srem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = mul i32 %3, %3
  %12 = add i32 %11, %3
  %13 = srem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %10, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %28

17:                                               ; preds = %4
  br label %19

18:                                               ; preds = %28
  ret void

19:                                               ; preds = %28, %17
  %20 = phi i64 [ 0, %17 ], [ %40, %28 ]
  %21 = trunc i64 %20 to i32
  %22 = urem i32 %21, 80
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, i8* %0, i64 %20
  %26 = load i8, i8* %25, align 1, !tbaa !10
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %16, %24, %19
  %29 = phi i32 [ %27, %24 ], [ 10, %19 ], [ 0, %16 ]
  %30 = phi i64 [ %20, %19 ], [ %20, %24 ], [ 0, %16 ]
  %31 = call i32 @putchar(i32 %29)
  %32 = load float, float* %1, align 4, !tbaa !13
  %33 = fpext float %32 to double
  %34 = fadd double %33, 4.000000e-05
  %35 = fptrunc double %34 to float
  store float %35, float* %1, align 4, !tbaa !13
  %36 = load float, float* %2, align 4, !tbaa !13
  %37 = fpext float %36 to double
  %38 = fadd double %37, 2.000000e-05
  %39 = fptrunc double %38 to float
  store float %39, float* %2, align 4, !tbaa !13
  %40 = add nuw nsw i64 %30, 1
  %41 = icmp eq i64 %40, 1761
  br i1 %41, label %18, label %19, !llvm.loop !15
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
  %24 = mul i32 %6, 2
  %25 = mul i32 %6, 2
  %26 = add i32 2, %25
  %27 = mul i32 %24, %26
  %28 = srem i32 %27, 4
  %29 = icmp eq i32 %28, 0
  %30 = mul i32 %6, %6
  %31 = mul i32 %30, %6
  %32 = add i32 %31, %6
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = and i1 %29, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %7
  br label %39

37:                                               ; preds = %7
  br label %39

38:                                               ; preds = %102
  ret void

39:                                               ; preds = %36, %102, %37
  %40 = phi double [ 0.000000e+00, %37 ], [ %105, %102 ], [ 0.000000e+00, %36 ]
  %41 = phi float [ 0.000000e+00, %37 ], [ %104, %102 ], [ 0.000000e+00, %36 ]
  %42 = call fastcc float @_ZL3cosf(float %41) #9
  %43 = call fastcc float @_ZL3sinf(float %41) #9
  %44 = fadd float %42, %12
  %45 = fmul float %18, %44
  %46 = fmul float %45, %20
  %47 = fmul float %19, %43
  %48 = fsub float %46, %47
  %49 = fmul float %19, %45
  %50 = fmul float %43, %20
  %51 = fadd float %49, %50
  %52 = fadd float %51, 5.000000e+00
  %53 = fdiv float 1.000000e+00, %52
  %54 = fmul float %44, %21
  %55 = fmul float %53, 1.500000e+01
  %56 = fmul float %54, %23
  %57 = fmul float %48, %22
  %58 = fsub float %56, %57
  %59 = fmul float %55, %58
  %60 = fadd float %59, %17
  %61 = fptosi float %60 to i32
  %62 = fmul float %18, %42
  %63 = fmul float %62, %20
  %64 = fsub float %47, %63
  %65 = fmul float %64, %22
  %66 = fmul float %62, %19
  %67 = fsub float %65, %66
  %68 = fsub float %67, %50
  %69 = fmul float %42, %21
  %70 = fmul float %69, %23
  %71 = fsub float %68, %70
  %72 = fmul float %71, 8.000000e+00
  %73 = fmul float %53, 3.000000e+01
  %74 = fmul float %54, %22
  %75 = fmul float %48, %23
  %76 = fadd float %74, %75
  %77 = fmul float %73, %76
  %78 = fadd float %77, %14
  %79 = fptosi float %78 to i32
  %80 = fptosi float %72 to i32
  %81 = icmp slt i32 %61, %5
  %82 = icmp sgt i32 %61, 0
  %83 = and i1 %81, %82
  %84 = icmp sgt i32 %79, 0
  %85 = select i1 %83, i1 %84, i1 false
  %86 = icmp slt i32 %79, %6
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %102

88:                                               ; preds = %39
  %89 = mul nsw i32 %61, %6
  %90 = add nsw i32 %89, %79
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %3, i64 %91
  %93 = load float, float* %92, align 4, !tbaa !13
  %94 = fcmp ogt float %53, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  store float %53, float* %92, align 4, !tbaa !13
  %96 = icmp sgt i32 %80, 0
  %97 = select i1 %96, i32 %80, i32 0
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1, !tbaa !10
  %101 = getelementptr inbounds i8, i8* %4, i64 %91
  store i8 %100, i8* %101, align 1, !tbaa !10
  br label %102

102:                                              ; preds = %95, %88, %39
  %103 = fadd double %40, 7.000000e-02
  %104 = fptrunc double %103 to float
  %105 = fpext float %104 to double
  %106 = fcmp olt double %105, 6.280000e+00
  br i1 %106, label %39, label %38, !llvm.loop !18
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
  br i1 %16, label %.preheader, label %11, !llvm.loop !19

.preheader:                                       ; preds = %11
  %17 = mul i32 %15, %15
  %18 = add i32 %17, %15
  %19 = mul i32 %18, 3
  %20 = srem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = mul i32 %15, %15
  %23 = add i32 %22, %15
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i1 %21, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %.preheader
  br label %30

28:                                               ; preds = %.preheader
  br label %30

29:                                               ; preds = %30
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %41

30:                                               ; preds = %27, %28, %30
  %31 = phi i64 [ %42, %30 ], [ 0, %28 ], [ 0, %27 ]
  %32 = phi i32 [ %41, %30 ], [ 0, %28 ], [ 0, %27 ]
  %33 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %31
  %34 = load i8, i8* %33, align 1, !tbaa !10
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 %32, %35
  %37 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %31
  %38 = load float, float* %37, align 4, !tbaa !13
  %39 = sitofp i32 %36 to float
  %40 = fadd float %38, %39
  %41 = fptosi float %40 to i32
  %42 = add nuw nsw i64 %31, 1
  %43 = icmp eq i64 %42, 1760
  br i1 %43, label %29, label %30, !llvm.loop !20
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

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
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  %8 = mul i32 %3, %3
  %9 = add i32 %8, %3
  %10 = mul i32 %9, 3
  %11 = srem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %7, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %17

15:                                               ; preds = %4
  br label %17

16:                                               ; preds = %26
  ret void

17:                                               ; preds = %14, %26, %15
  %18 = phi i64 [ 0, %15 ], [ %37, %26 ], [ 0, %14 ]
  %19 = trunc i64 %18 to i32
  %20 = urem i32 %19, 80
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, i8* %0, i64 %18
  %24 = load i8, i8* %23, align 1, !tbaa !10
  %25 = sext i8 %24 to i32
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %25, %22 ], [ 10, %17 ]
  %28 = call i32 @putchar(i32 %27)
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
  %37 = add nuw nsw i64 %18, 1
  %38 = icmp eq i64 %37, 1761
  br i1 %38, label %16, label %17, !llvm.loop !15
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
  %24 = mul i32 %2, 2
  %25 = mul i32 %2, 2
  %26 = add i32 2, %25
  %27 = mul i32 %24, %26
  %28 = srem i32 %27, 4
  %29 = icmp eq i32 %28, 0
  %30 = mul i32 %2, %2
  %31 = add i32 %30, %2
  %32 = srem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = and i1 %29, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %7
  br label %38

36:                                               ; preds = %7
  br label %38

37:                                               ; preds = %101
  ret void

38:                                               ; preds = %35, %101, %36
  %39 = phi double [ 0.000000e+00, %36 ], [ %104, %101 ], [ 0.000000e+00, %35 ]
  %40 = phi float [ 0.000000e+00, %36 ], [ %103, %101 ], [ 0.000000e+00, %35 ]
  %41 = call fastcc float @_ZL3cosf(float %40) #9
  %42 = call fastcc float @_ZL3sinf(float %40) #9
  %43 = fadd float %41, %12
  %44 = fmul float %18, %43
  %45 = fmul float %44, %20
  %46 = fmul float %19, %42
  %47 = fsub float %45, %46
  %48 = fmul float %19, %44
  %49 = fmul float %42, %20
  %50 = fadd float %48, %49
  %51 = fadd float %50, 5.000000e+00
  %52 = fdiv float 1.000000e+00, %51
  %53 = fmul float %43, %21
  %54 = fmul float %52, 1.500000e+01
  %55 = fmul float %53, %23
  %56 = fmul float %47, %22
  %57 = fsub float %55, %56
  %58 = fmul float %54, %57
  %59 = fadd float %58, %17
  %60 = fptosi float %59 to i32
  %61 = fmul float %18, %41
  %62 = fmul float %61, %20
  %63 = fsub float %46, %62
  %64 = fmul float %63, %22
  %65 = fmul float %61, %19
  %66 = fsub float %64, %65
  %67 = fsub float %66, %49
  %68 = fmul float %41, %21
  %69 = fmul float %68, %23
  %70 = fsub float %67, %69
  %71 = fmul float %70, 8.000000e+00
  %72 = fmul float %52, 3.000000e+01
  %73 = fmul float %53, %22
  %74 = fmul float %47, %23
  %75 = fadd float %73, %74
  %76 = fmul float %72, %75
  %77 = fadd float %76, %14
  %78 = fptosi float %77 to i32
  %79 = fptosi float %71 to i32
  %80 = icmp slt i32 %60, %5
  %81 = icmp sgt i32 %60, 0
  %82 = and i1 %80, %81
  %83 = icmp sgt i32 %78, 0
  %84 = select i1 %82, i1 %83, i1 false
  %85 = icmp slt i32 %78, %6
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %101

87:                                               ; preds = %38
  %88 = mul nsw i32 %60, %6
  %89 = add nsw i32 %88, %78
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %3, i64 %90
  %92 = load float, float* %91, align 4, !tbaa !13
  %93 = fcmp ogt float %52, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  store float %52, float* %91, align 4, !tbaa !13
  %95 = icmp sgt i32 %79, 0
  %96 = select i1 %95, i32 %79, i32 0
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1, !tbaa !10
  %100 = getelementptr inbounds i8, i8* %4, i64 %90
  store i8 %99, i8* %100, align 1, !tbaa !10
  br label %101

101:                                              ; preds = %94, %87, %38
  %102 = fadd double %39, 7.000000e-02
  %103 = fptrunc double %102 to float
  %104 = fpext float %103 to double
  %105 = fcmp olt double %104, 6.280000e+00
  br i1 %105, label %38, label %37, !llvm.loop !18
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
  br label %18

17:                                               ; preds = %18
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %29

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ %30, %18 ], [ 0, %.preheader ]
  %20 = phi i32 [ %29, %18 ], [ 0, %.preheader ]
  %21 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %19
  %22 = load i8, i8* %21, align 1, !tbaa !10
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %20, %23
  %25 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %19
  %26 = load float, float* %25, align 4, !tbaa !13
  %27 = sitofp i32 %24 to float
  %28 = fadd float %26, %27
  %29 = fptosi float %28 to i32
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 1760
  br i1 %31, label %17, label %18, !llvm.loop !20
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

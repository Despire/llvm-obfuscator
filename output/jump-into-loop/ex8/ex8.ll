; ModuleID = 'input/jump-into-loop/ex8/ex8.cpp'
source_filename = "input/jump-into-loop/ex8/ex8.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %7

6:                                                ; preds = %16
  ret void

7:                                                ; preds = %4, %16
  %8 = phi i64 [ 0, %4 ], [ %27, %16 ]
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 80
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %0, i64 %8
  %14 = load i8, i8* %13, align 1, !tbaa !10
  %15 = sext i8 %14 to i32
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi i32 [ %15, %12 ], [ 10, %7 ]
  %18 = call i32 @putchar(i32 %17)
  %19 = load float, float* %1, align 4, !tbaa !13
  %20 = fpext float %19 to double
  %21 = fadd double %20, 4.000000e-05
  %22 = fptrunc double %21 to float
  store float %22, float* %1, align 4, !tbaa !13
  %23 = load float, float* %2, align 4, !tbaa !13
  %24 = fpext float %23 to double
  %25 = fadd double %24, 2.000000e-05
  %26 = fptrunc double %25 to float
  store float %26, float* %2, align 4, !tbaa !13
  %27 = add nuw nsw i64 %8, 1
  %28 = icmp eq i64 %27, 1761
  br i1 %28, label %6, label %7, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
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

24:                                               ; preds = %88
  ret void

25:                                               ; preds = %7, %88
  %26 = phi double [ 0.000000e+00, %7 ], [ %91, %88 ]
  %27 = phi float [ 0.000000e+00, %7 ], [ %90, %88 ]
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
  br i1 %73, label %74, label %88

74:                                               ; preds = %25
  %75 = mul nsw i32 %47, %6
  %76 = add nsw i32 %75, %65
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %3, i64 %77
  %79 = load float, float* %78, align 4, !tbaa !13
  %80 = fcmp ogt float %39, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  store float %39, float* %78, align 4, !tbaa !13
  %82 = icmp sgt i32 %66, 0
  %83 = select i1 %82, i32 %66, i32 0
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1, !tbaa !10
  %87 = getelementptr inbounds i8, i8* %4, i64 %77
  store i8 %86, i8* %87, align 1, !tbaa !10
  br label %88

88:                                               ; preds = %81, %74, %25
  %89 = fadd double %26, 7.000000e-02
  %90 = fptrunc double %89 to float
  %91 = fpext float %90 to double
  %92 = fcmp olt double %91, 6.280000e+00
  br i1 %92, label %25, label %24, !llvm.loop !18
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp uwtable willreturn
define internal fastcc float @_ZL3sinf(float %0) unnamed_addr #5 {
  %2 = call float @llvm.sin.f32(float %0)
  ret float %2
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp uwtable willreturn
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

11:                                               ; preds = %0, %11
  %12 = phi i32 [ 5, %0 ], [ %15, %11 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %18, label %11, !llvm.loop !19

17:                                               ; preds = %18
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %29

18:                                               ; preds = %11, %18
  %19 = phi i64 [ %30, %18 ], [ 0, %11 ]
  %20 = phi i32 [ %29, %18 ], [ 0, %11 ]
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

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #8

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #8

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
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

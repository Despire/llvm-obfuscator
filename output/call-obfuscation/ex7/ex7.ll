; ModuleID = 'input/call-obfuscation/ex7/ex7.cpp'
source_filename = "input/call-obfuscation/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
  %4 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %6

5:                                                ; preds = %15
  ret void

6:                                                ; preds = %3, %15
  %7 = phi i64 [ 0, %3 ], [ %26, %15 ]
  %8 = trunc i64 %7 to i32
  %9 = urem i32 %8, 80
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %0, i64 %7
  %13 = load i8, i8* %12, align 1, !tbaa !10
  %14 = sext i8 %13 to i32
  br label %15

15:                                               ; preds = %6, %11
  %16 = phi i32 [ %14, %11 ], [ 10, %6 ]
  %17 = call i32 @putchar(i32 %16)
  %18 = load float, float* %1, align 4, !tbaa !13
  %19 = fpext float %18 to double
  %20 = fadd double %19, 4.000000e-05
  %21 = fptrunc double %20 to float
  store float %21, float* %1, align 4, !tbaa !13
  %22 = load float, float* %2, align 4, !tbaa !13
  %23 = fpext float %22 to double
  %24 = fadd double %23, 2.000000e-05
  %25 = fptrunc double %24 to float
  store float %25, float* %2, align 4, !tbaa !13
  %26 = add nuw nsw i64 %7, 1
  %27 = icmp eq i64 %26, 1761
  br i1 %27, label %5, label %6, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

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
  %18 = call fastcc float @_ZL3sinf(float %0) #8
  %19 = call fastcc float @_ZL3cosf(float %0) #8
  %20 = call fastcc float @_ZL3cosf(float %1) #8
  %21 = call fastcc float @_ZL3sinf(float %1) #8
  br label %22

22:                                               ; preds = %7, %31
  %23 = phi double [ 0.000000e+00, %7 ], [ %34, %31 ]
  %24 = phi float [ 0.000000e+00, %7 ], [ %33, %31 ]
  %25 = call fastcc float @_ZL3cosf(float %24) #8
  %26 = call fastcc float @_ZL3sinf(float %24) #8
  %27 = fadd float %25, %12
  %28 = fmul float %18, %26
  %29 = fmul float %26, %19
  br label %36

30:                                               ; preds = %31
  ret void

31:                                               ; preds = %96
  %32 = fadd double %23, 7.000000e-02
  %33 = fptrunc double %32 to float
  %34 = fpext float %33 to double
  %35 = fcmp olt double %34, 6.280000e+00
  br i1 %35, label %22, label %30, !llvm.loop !18

36:                                               ; preds = %22, %96
  %37 = phi double [ 0.000000e+00, %22 ], [ %99, %96 ]
  %38 = phi float [ 0.000000e+00, %22 ], [ %98, %96 ]
  %39 = call fastcc float @_ZL3sinf(float %38) #8
  %40 = fmul float %39, %27
  %41 = fmul float %40, %19
  %42 = fsub float %41, %28
  %43 = fmul float %18, %40
  %44 = fadd float %43, %29
  %45 = fadd float %44, 5.000000e+00
  %46 = fdiv float 1.000000e+00, %45
  %47 = call fastcc float @_ZL3cosf(float %38) #8
  %48 = fmul float %46, 3.000000e+01
  %49 = fmul float %27, %47
  %50 = fmul float %49, %20
  %51 = fmul float %42, %21
  %52 = fadd float %50, %51
  %53 = fmul float %48, %52
  %54 = fadd float %53, %14
  %55 = fptosi float %54 to i32
  %56 = fmul float %46, 1.500000e+01
  %57 = fmul float %49, %21
  %58 = fmul float %42, %20
  %59 = fsub float %57, %58
  %60 = fmul float %56, %59
  %61 = fadd float %60, %17
  %62 = fptosi float %61 to i32
  %63 = fmul float %39, %25
  %64 = fmul float %63, %19
  %65 = fsub float %28, %64
  %66 = fmul float %65, %20
  %67 = fmul float %63, %18
  %68 = fsub float %66, %67
  %69 = fsub float %68, %29
  %70 = fmul float %25, %47
  %71 = fmul float %70, %21
  %72 = fsub float %69, %71
  %73 = fmul float %72, 8.000000e+00
  %74 = fptosi float %73 to i32
  %75 = icmp slt i32 %62, %5
  %76 = icmp sgt i32 %62, 0
  %77 = and i1 %75, %76
  %78 = icmp sgt i32 %55, 0
  %79 = select i1 %77, i1 %78, i1 false
  %80 = icmp slt i32 %55, %6
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %96

82:                                               ; preds = %36
  %83 = mul nsw i32 %62, %6
  %84 = add nsw i32 %83, %55
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %3, i64 %85
  %87 = load float, float* %86, align 4, !tbaa !13
  %88 = fcmp ogt float %46, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  store float %46, float* %86, align 4, !tbaa !13
  %90 = icmp sgt i32 %74, 0
  %91 = select i1 %90, i32 %74, i32 0
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1, !tbaa !10
  %95 = getelementptr inbounds i8, i8* %4, i64 %85
  store i8 %94, i8* %95, align 1, !tbaa !10
  br label %96

96:                                               ; preds = %89, %82, %36
  %97 = fadd double %37, 2.000000e-02
  %98 = fptrunc double %97 to float
  %99 = fpext float %98 to double
  %100 = fcmp olt double %99, 6.280000e+00
  br i1 %100, label %36, label %31, !llvm.loop !19
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

; Function Attrs: mustprogress nofree norecurse noreturn nounwind ssp uwtable
define i32 @main() local_unnamed_addr #6 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8
  store float 0.000000e+00, float* %1, align 4, !tbaa !13
  %4 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8
  store float 0.000000e+00, float* %2, align 4, !tbaa !13
  %5 = alloca [1760 x float], align 4
  %6 = alloca [1760 x i8], align 1
  %7 = getelementptr inbounds [1760 x i8], [1760 x i8]* %6, i64 0, i64 0
  %8 = getelementptr inbounds [1760 x float], [1760 x float]* %5, i64 0, i64 0
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %10

10:                                               ; preds = %10, %0
  %11 = load float, float* %1, align 4, !tbaa !13
  %12 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %11, float %12, i32 1760, float* nonnull %8, i8* nonnull %7, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_(i8* nonnull %7, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2)
  br label %10, !llvm.loop !20
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #7

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #7

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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

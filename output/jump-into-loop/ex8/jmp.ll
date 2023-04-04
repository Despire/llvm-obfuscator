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
  %6 = add i32 %3, 1
  %7 = mul i32 3, %6
  %8 = add i32 %3, 2
  %9 = mul i32 %7, %8
  %10 = srem i32 %9, 6
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %3, %3
  %13 = add i32 %12, %3
  %14 = srem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = and i1 %11, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %25

18:                                               ; preds = %4
  br label %20

19:                                               ; preds = %30
  ret void

20:                                               ; preds = %30, %18
  %21 = phi i64 [ 0, %18 ], [ %42, %30 ]
  %22 = trunc i64 %21 to i32
  %23 = urem i32 %22, 80
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17, %20
  %26 = phi i64 [ %21, %20 ], [ 0, %17 ]
  %27 = getelementptr inbounds i8, i8* %0, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !10
  %29 = sext i8 %28 to i32
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %29, %25 ], [ 10, %20 ]
  %32 = phi i64 [ %21, %20 ], [ %26, %25 ]
  %33 = call i32 @putchar(i32 %31)
  %34 = load float, float* %1, align 4, !tbaa !13
  %35 = fpext float %34 to double
  %36 = fadd double %35, 4.000000e-05
  %37 = fptrunc double %36 to float
  store float %37, float* %1, align 4, !tbaa !13
  %38 = load float, float* %2, align 4, !tbaa !13
  %39 = fpext float %38 to double
  %40 = fadd double %39, 2.000000e-05
  %41 = fptrunc double %40 to float
  store float %41, float* %2, align 4, !tbaa !13
  %42 = add nuw nsw i64 %32, 1
  %43 = icmp eq i64 %42, 1761
  br i1 %43, label %19, label %20, !llvm.loop !15
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
  %24 = and i32 %2, 1
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %2, 1
  %27 = mul i32 3, %26
  %28 = add i32 %2, 2
  %29 = mul i32 %27, %28
  %30 = srem i32 %29, 6
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %25, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %7
  br label %85

34:                                               ; preds = %7
  br label %36

35:                                               ; preds = %104
  ret void

36:                                               ; preds = %104, %34
  %37 = phi double [ 0.000000e+00, %34 ], [ %112, %104 ]
  %38 = phi float [ 0.000000e+00, %34 ], [ %111, %104 ]
  %39 = call fastcc float @_ZL3cosf(float %38) #9
  %40 = call fastcc float @_ZL3sinf(float %38) #9
  %41 = fadd float %39, %12
  %42 = fmul float %18, %41
  %43 = fmul float %42, %20
  %44 = fmul float %19, %40
  %45 = fsub float %43, %44
  %46 = fmul float %19, %42
  %47 = fmul float %40, %20
  %48 = fadd float %46, %47
  %49 = fadd float %48, 5.000000e+00
  %50 = fdiv float 1.000000e+00, %49
  %51 = fmul float %41, %21
  %52 = fmul float %50, 1.500000e+01
  %53 = fmul float %51, %23
  %54 = fmul float %45, %22
  %55 = fsub float %53, %54
  %56 = fmul float %52, %55
  %57 = fadd float %56, %17
  %58 = fptosi float %57 to i32
  %59 = fmul float %18, %39
  %60 = fmul float %59, %20
  %61 = fsub float %44, %60
  %62 = fmul float %61, %22
  %63 = fmul float %59, %19
  %64 = fsub float %62, %63
  %65 = fsub float %64, %47
  %66 = fmul float %39, %21
  %67 = fmul float %66, %23
  %68 = fsub float %65, %67
  %69 = fmul float %68, 8.000000e+00
  %70 = fmul float %50, 3.000000e+01
  %71 = fmul float %51, %22
  %72 = fmul float %45, %23
  %73 = fadd float %71, %72
  %74 = fmul float %70, %73
  %75 = fadd float %74, %14
  %76 = fptosi float %75 to i32
  %77 = fptosi float %69 to i32
  %78 = icmp slt i32 %58, %5
  %79 = icmp sgt i32 %58, 0
  %80 = and i1 %78, %79
  %81 = icmp sgt i32 %76, 0
  %82 = select i1 %80, i1 %81, i1 false
  %83 = icmp slt i32 %76, %6
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %104

85:                                               ; preds = %33, %36
  %86 = phi i32 [ %58, %36 ], [ 0, %33 ]
  %87 = phi i32 [ %76, %36 ], [ 0, %33 ]
  %88 = phi i32 [ %77, %36 ], [ 0, %33 ]
  %89 = phi float [ %50, %36 ], [ 0.000000e+00, %33 ]
  %90 = phi double [ %37, %36 ], [ 0.000000e+00, %33 ]
  %91 = mul nsw i32 %86, %6
  %92 = add nsw i32 %91, %87
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %3, i64 %93
  %95 = load float, float* %94, align 4, !tbaa !13
  %96 = fcmp ogt float %89, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %85
  store float %89, float* %94, align 4, !tbaa !13
  %98 = icmp sgt i32 %88, 0
  %99 = select i1 %98, i32 %88, i32 0
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !10
  %103 = getelementptr inbounds i8, i8* %4, i64 %93
  store i8 %102, i8* %103, align 1, !tbaa !10
  br label %104

104:                                              ; preds = %97, %85, %36
  %105 = phi i32 [ %58, %36 ], [ %86, %85 ], [ %86, %97 ]
  %106 = phi i32 [ %76, %36 ], [ %87, %85 ], [ %87, %97 ]
  %107 = phi i32 [ %77, %36 ], [ %88, %85 ], [ %88, %97 ]
  %108 = phi float [ %50, %36 ], [ %89, %85 ], [ %89, %97 ]
  %109 = phi double [ %37, %36 ], [ %90, %85 ], [ %90, %97 ]
  %110 = fadd double %109, 7.000000e-02
  %111 = fptrunc double %110 to float
  %112 = fpext float %111 to double
  %113 = fcmp olt double %112, 6.280000e+00
  br i1 %113, label %36, label %35, !llvm.loop !18
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

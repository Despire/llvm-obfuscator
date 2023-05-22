; ModuleID = 'output/merge-funcs/ex5/ex5.ll'
source_filename = "input/merge-funcs/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@CHARS = local_unnamed_addr global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @_Z6updatePfS_(float* %0, float* %1) local_unnamed_addr #0 {
  %3 = icmp eq float* %0, null
  %4 = icmp eq float* %1, null
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = load float, float* %0, align 4, !tbaa !10
  %8 = fpext float %7 to double
  %9 = fadd double %8, 4.000000e-05
  %10 = fptrunc double %9 to float
  store float %10, float* %0, align 4, !tbaa !10
  %11 = load float, float* %1, align 4, !tbaa !10
  %12 = fpext float %11 to double
  %13 = fadd double %12, 2.000000e-05
  %14 = fptrunc double %13 to float
  store float %14, float* %1, align 4, !tbaa !10
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %6 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable
define i32 @_Z6renderPfS_Pcm(float* %0, float* %1, i8* nocapture %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 1760
  br i1 %5, label %8, label %22

6:                                                ; preds = %16
  %7 = icmp eq i64 %21, 1760
  br i1 %7, label %22, label %8, !llvm.loop !14

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %21, %6 ], [ 0, %4 ]
  %10 = trunc i64 %9 to i32
  %11 = urem i32 %10, 80
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, i8* %2, i64 %9
  %15 = load i8, i8* %14, align 1, !tbaa !17
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i8 [ %15, %13 ], [ 10, %8 ]
  %18 = getelementptr inbounds i8, i8* %2, i64 %9
  store i8 %17, i8* %18, align 1, !tbaa !17
  %19 = call i32 @_Z6updatePfS_(float* %0, float* %1)
  %20 = icmp eq i32 %19, 0
  %21 = add nuw nsw i64 %9, 1
  br i1 %20, label %6, label %22

22:                                               ; preds = %16, %6, %4
  %23 = phi i32 [ 2, %4 ], [ %19, %16 ], [ 0, %6 ]
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind ssp willreturn writeonly uwtable
define i32 @_Z5clearPcmPfm(i8* %0, i64 %1, float* %2, i64 %3) local_unnamed_addr #3 {
  %5 = icmp eq i8* %0, null
  %6 = icmp eq float* %2, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = icmp ne i64 %1, 1760
  %10 = icmp ne i64 %3, 7040
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false)
  %13 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(7040) %13, i8 0, i64 7040, i1 false)
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i32 [ 0, %12 ], [ 2, %4 ], [ 2, %8 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #5 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca [1760 x float], align 4
  %4 = alloca [1760 x i8], align 1
  %5 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10
  store float 0.000000e+00, float* %1, align 4, !tbaa !10
  %6 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10
  store float 0.000000e+00, float* %2, align 4, !tbaa !10
  %7 = bitcast [1760 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %7) #10
  %8 = getelementptr inbounds [1760 x i8], [1760 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %8) #10
  %9 = getelementptr inbounds [1760 x float], [1760 x float]* %3, i64 0, i64 0
  %10 = call fastcc i32 @_ZL9main_loopPfS_PcS_mm(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %9, i64 1760, i64 7040)
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal fastcc i32 @_ZL9main_loopPfS_PcS_mm(float* %0, float* %1, i8* %2, float* %3, i64 %4, i64 %5) unnamed_addr #6 {
  %7 = call i32 @_Z5clearPcmPfm(i8* %2, i64 %4, float* %3, i64 %5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %6
  %10 = load i8, i8* %2, align 1, !tbaa !17
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, i8* %2, i64 1
  %13 = load i8, i8* %12, align 1, !tbaa !17
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %14, %11
  br label %16

16:                                               ; preds = %30, %9
  %17 = phi double [ 0.000000e+00, %9 ], [ %41, %30 ]
  %18 = phi float [ 0.000000e+00, %9 ], [ %40, %30 ]
  %19 = phi i32 [ %15, %9 ], [ %37, %30 ]
  %20 = call fastcc i32 @_ZL10inner_loopfPfS_PcS_mm(float %18, float* %0, float* %1, i8* nonnull %2, float* %3, i64 %4, i64 %5)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %43

24:                                               ; preds = %16
  %25 = add i32 %19, 1
  %26 = load i8, i8* %2, align 1, !tbaa !17
  %27 = sdiv i8 %26, 10
  store i8 %27, i8* %2, align 1, !tbaa !17
  %28 = add i8 %26, 9
  %29 = icmp ult i8 %28, 19
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = add i8 %26, 19
  %32 = icmp ult i8 %31, 10
  %33 = shl i32 %19, 1
  %34 = mul i32 %33, %25
  %35 = trunc i32 %34 to i8
  %36 = select i1 %32, i8 1, i8 %35
  %37 = select i1 %32, i32 %25, i32 %19
  %38 = add i8 %36, %27
  store i8 %38, i8* %2, align 1, !tbaa !17
  %39 = fadd double %17, 7.000000e-02
  %40 = fptrunc double %39 to float
  %41 = fpext float %40 to double
  %42 = fcmp olt double %41, 6.280000e+00
  br i1 %42, label %16, label %43, !llvm.loop !18

43:                                               ; preds = %30, %24, %22
  br i1 %21, label %44, label %53

44:                                               ; preds = %43
  %45 = load i8, i8* %2, align 1, !tbaa !17
  %46 = add i8 %45, 9
  %47 = icmp ult i8 %46, 19
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = sdiv i8 %45, 10
  %50 = sext i8 %49 to i32
  br label %53

51:                                               ; preds = %44
  %52 = call i32 @_Z6renderPfS_Pcm(float* %0, float* %1, i8* nonnull %2, i64 %4)
  br label %53

53:                                               ; preds = %51, %48, %43, %6
  %54 = phi i32 [ %7, %6 ], [ %50, %48 ], [ %20, %43 ], [ %52, %51 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable
define internal fastcc i32 @_ZL10inner_loopfPfS_PcS_mm(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4, i64 %5, i64 %6) unnamed_addr #1 {
  %8 = icmp eq float* %1, null
  %9 = icmp eq float* %2, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq i8* %3, null
  %12 = select i1 %10, i1 true, i1 %11
  %13 = icmp eq float* %4, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %96, label %15

15:                                               ; preds = %7
  %16 = icmp ne i64 %5, 1760
  %17 = icmp ne i64 %6, 7040
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %96, label %19

19:                                               ; preds = %15
  %20 = call fastcc float @_ZL3cosf(float %0) #10
  %21 = call fastcc float @_ZL3sinf(float %0) #10
  %22 = fadd float %20, 2.000000e+00
  br label %23

23:                                               ; preds = %91, %19
  %24 = phi double [ 0.000000e+00, %19 ], [ %94, %91 ]
  %25 = phi float [ 0.000000e+00, %19 ], [ %93, %91 ]
  %26 = call fastcc float @_ZL3sinf(float %25) #10
  %27 = load float, float* %1, align 4, !tbaa !10
  %28 = call fastcc float @_ZL3sinf(float %27) #10
  %29 = call fastcc float @_ZL3cosf(float %27) #10
  %30 = fmul float %26, %22
  %31 = fmul float %30, %28
  %32 = fmul float %21, %29
  %33 = fadd float %31, %32
  %34 = fadd float %33, 5.000000e+00
  %35 = fdiv float 1.000000e+00, %34
  %36 = call fastcc float @_ZL3cosf(float %25) #10
  %37 = load float, float* %2, align 4, !tbaa !10
  %38 = call fastcc float @_ZL3cosf(float %37) #10
  %39 = call fastcc float @_ZL3sinf(float %37) #10
  %40 = fmul float %30, %29
  %41 = fmul float %28, %21
  %42 = fsub float %40, %41
  %43 = fmul float %35, 3.000000e+01
  %44 = fmul float %22, %36
  %45 = fmul float %44, %38
  %46 = fmul float %42, %39
  %47 = fsub float %45, %46
  %48 = fmul float %43, %47
  %49 = fadd float %48, 4.000000e+01
  %50 = fptosi float %49 to i32
  %51 = fmul float %35, 1.500000e+01
  %52 = fmul float %44, %39
  %53 = fmul float %42, %38
  %54 = fadd float %53, %52
  %55 = fmul float %51, %54
  %56 = fadd float %55, 1.200000e+01
  %57 = fptosi float %56 to i32
  %58 = fmul float %26, %20
  %59 = fmul float %58, %29
  %60 = fsub float %41, %59
  %61 = fmul float %60, %38
  %62 = fmul float %58, %28
  %63 = fsub float %61, %62
  %64 = fsub float %63, %32
  %65 = fmul float %20, %36
  %66 = fmul float %65, %39
  %67 = fsub float %64, %66
  %68 = fmul float %67, 8.000000e+00
  %69 = fptosi float %68 to i32
  %70 = add i32 %57, -1
  %71 = icmp ult i32 %70, 21
  %72 = icmp sgt i32 %50, 0
  %73 = select i1 %71, i1 %72, i1 false
  %74 = icmp slt i32 %50, 80
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %91

76:                                               ; preds = %23
  %77 = mul nsw i32 %57, 80
  %78 = add nsw i32 %77, %50
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %4, i64 %79
  %81 = load float, float* %80, align 4, !tbaa !10
  %82 = fcmp ogt float %35, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  store float %35, float* %80, align 4, !tbaa !10
  %84 = load i8*, i8** @CHARS, align 8, !tbaa !19
  %85 = icmp sgt i32 %69, 0
  %86 = select i1 %85, i32 %69, i32 0
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1, !tbaa !17
  %90 = getelementptr inbounds i8, i8* %3, i64 %79
  store i8 %89, i8* %90, align 1, !tbaa !17
  br label %91

91:                                               ; preds = %83, %76, %23
  %92 = fadd double %24, 2.000000e-02
  %93 = fptrunc double %92 to float
  %94 = fpext float %93 to double
  %95 = fcmp olt double %94, 6.280000e+00
  br i1 %95, label %23, label %96, !llvm.loop !21

96:                                               ; preds = %91, %15, %7
  %97 = phi i32 [ 2, %7 ], [ 2, %15 ], [ 0, %91 ]
  ret i32 %97
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3sinf(float %0) unnamed_addr #8 {
  %2 = call float @llvm.sin.f32(float %0)
  ret float %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3cosf(float %0) unnamed_addr #8 {
  %2 = call float @llvm.cos.f32(float %0)
  ret float %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind ssp willreturn writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

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
!11 = !{!"float", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!12, !12, i64 0}
!18 = distinct !{!18, !15, !16}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !12, i64 0}
!21 = distinct !{!21, !15, !16}

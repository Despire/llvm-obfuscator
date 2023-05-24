; ModuleID = '../../../../donut.ll'
source_filename = "donut_deobfuscated.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@Z_SIZE = local_unnamed_addr constant i64 1760, align 8
@B_SIZE = local_unnamed_addr constant i64 1760, align 8
@WAIT_TIME = local_unnamed_addr constant i64 30000, align 8
@.str = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@CHARS = local_unnamed_addr global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"time to render frame: %f seconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @update(float* %0, float* %1) local_unnamed_addr #0 {
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

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @render(float* %0, float* %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 1760
  br i1 %5, label %8, label %23

6:                                                ; preds = %17
  %7 = icmp eq i64 %22, 1761
  br i1 %7, label %23, label %8, !llvm.loop !14

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %22, %6 ], [ 0, %4 ]
  %10 = trunc i64 %9 to i32
  %11 = urem i32 %10, 80
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, i8* %2, i64 %9
  %15 = load i8, i8* %14, align 1, !tbaa !17
  %16 = sext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32 [ %16, %13 ], [ 10, %8 ]
  %19 = call i32 @putchar(i32 %18)
  %20 = call i32 @update(float* %0, float* %1)
  %21 = icmp eq i32 %20, 0
  %22 = add nuw nsw i64 %9, 1
  br i1 %21, label %6, label %23

23:                                               ; preds = %17, %6, %4
  %24 = phi i32 [ 2, %4 ], [ %20, %17 ], [ 0, %6 ]
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @clear(i8* %0, i64 %1, float* %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i8* %0, null
  %6 = icmp eq float* %2, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %49, label %8

8:                                                ; preds = %4
  %9 = or i64 %1, 4425339036703849578
  %10 = and i64 4425339036703849578, %1
  %11 = xor i64 4425339036703849578, %1
  %12 = or i64 %10, %11
  %13 = add i64 %1, -7530298480652840497
  %14 = sub i64 0, %1
  %15 = sub i64 -7530298480652840497, %14
  %16 = add i64 %1, -3728876314971721844
  %17 = add i64 -3532431282686185959, %1
  %18 = add i64 %17, -196445032285535885
  %19 = xor i64 %9, %15
  %20 = xor i64 %19, %12
  %21 = xor i64 %20, 422539366183810013
  %22 = xor i64 %21, %18
  %23 = xor i64 %22, %13
  %24 = xor i64 %23, %16
  %25 = or i64 %3, -3393537927527284966
  %26 = xor i64 %3, -1
  %27 = and i64 %26, 8463364762024678871
  %28 = and i64 %3, -8463364762024678872
  %29 = or i64 %27, %28
  %30 = xor i64 -6515492235522233651, %29
  %31 = xor i64 %3, -1
  %32 = or i64 3393537927527284965, %31
  %33 = xor i64 %32, -1
  %34 = and i64 %33, -1
  %35 = or i64 %30, %34
  %36 = and i64 %3, 4107341928335166707
  %37 = or i64 -4107341928335166708, %3
  %38 = sub i64 %37, -4107341928335166708
  %39 = xor i64 %35, %36
  %40 = xor i64 %39, %38
  %41 = xor i64 %40, 3158349078084953184
  %42 = xor i64 %41, %25
  %43 = mul i64 %24, %42
  %44 = icmp ne i64 %1, %43
  %45 = icmp ne i64 %3, 7040
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #10
  %48 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %48, i8 0, i64 7040, i1 false) #10
  br label %49

49:                                               ; preds = %47, %8, %4
  %50 = phi i32 [ 0, %47 ], [ 2, %4 ], [ 2, %8 ]
  ret i32 %50
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
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
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [1760 x float], [1760 x float]* %3, i64 0, i64 0
  br label %11

11:                                               ; preds = %22, %0
  %12 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %13 = call i64 @"\01_clock"() #10
  %14 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = call i64 @"\01_clock"() #10
  %18 = sub i64 %17, %13
  %19 = uitofp i64 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  %21 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), double %20)
  call fastcc void @wait()
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi i32 [ %12, %16 ], [ %14, %11 ]
  br i1 %15, label %11, label %24, !llvm.loop !18

24:                                               ; preds = %22
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  ret i32 %23
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare i64 @"\01_clock"() local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %20

10:                                               ; preds = %13
  %11 = call fastcc i32 @inner_loop(float %17, float* %0, float* %1, i8* %2, float* %3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20, !llvm.loop !19

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %11, %10 ], [ %8, %7 ]
  %15 = phi double [ %18, %10 ], [ 0.000000e+00, %7 ]
  %16 = fadd double %15, 7.000000e-02
  %17 = fptrunc double %16 to float
  %18 = fpext float %17 to double
  %19 = fcmp olt double %18, 6.280000e+00
  br i1 %19, label %10, label %20, !llvm.loop !19

20:                                               ; preds = %13, %10, %7
  %21 = phi i32 [ %8, %7 ], [ %14, %13 ], [ %11, %10 ]
  %22 = phi i1 [ true, %7 ], [ %19, %10 ], [ %19, %13 ]
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  br label %26

26:                                               ; preds = %23, %20, %4
  %27 = phi i32 [ %21, %20 ], [ %5, %4 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #6 {
  %1 = call i32 @"\01_usleep"(i32 30000) #10
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #7 {
  %6 = icmp eq float* %1, null
  %7 = icmp eq float* %2, null
  %8 = select i1 %6, i1 true, i1 %7
  %9 = icmp eq i8* %3, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq float* %4, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %100, label %13

13:                                               ; preds = %5
  %14 = fpext float %0 to double
  %15 = call double @llvm.cos.f64(double %14)
  %16 = fptrunc double %15 to float
  %17 = call double @llvm.sin.f64(double %14)
  %18 = fptrunc double %17 to float
  %19 = fadd float %16, 2.000000e+00
  br label %20

20:                                               ; preds = %95, %13
  %21 = phi double [ 0.000000e+00, %13 ], [ %98, %95 ]
  %22 = call double @llvm.sin.f64(double %21)
  %23 = fptrunc double %22 to float
  %24 = load float, float* %1, align 4, !tbaa !10
  %25 = fpext float %24 to double
  %26 = call double @llvm.sin.f64(double %25)
  %27 = fptrunc double %26 to float
  %28 = call double @llvm.cos.f64(double %25)
  %29 = fptrunc double %28 to float
  %30 = fmul float %19, %23
  %31 = fmul float %30, %27
  %32 = fmul float %18, %29
  %33 = fadd float %31, %32
  %34 = fadd float %33, 5.000000e+00
  %35 = fdiv float 1.000000e+00, %34
  %36 = call double @llvm.cos.f64(double %21)
  %37 = fptrunc double %36 to float
  %38 = load float, float* %2, align 4, !tbaa !10
  %39 = fpext float %38 to double
  %40 = call double @llvm.cos.f64(double %39)
  %41 = fptrunc double %40 to float
  %42 = call double @llvm.sin.f64(double %39)
  %43 = fptrunc double %42 to float
  %44 = fmul float %30, %29
  %45 = fmul float %18, %27
  %46 = fsub float %44, %45
  %47 = fmul float %35, 3.000000e+01
  %48 = fmul float %19, %37
  %49 = fmul float %48, %41
  %50 = fmul float %46, %43
  %51 = fsub float %49, %50
  %52 = fmul float %51, %47
  %53 = fadd float %52, 4.000000e+01
  %54 = fptosi float %53 to i32
  %55 = fmul float %35, 1.500000e+01
  %56 = fmul float %48, %43
  %57 = fmul float %46, %41
  %58 = fadd float %56, %57
  %59 = fmul float %58, %55
  %60 = fadd float %59, 1.200000e+01
  %61 = fptosi float %60 to i32
  %62 = fmul float %16, %23
  %63 = fmul float %62, %29
  %64 = fsub float %45, %63
  %65 = fmul float %64, %41
  %66 = fmul float %62, %27
  %67 = fsub float %65, %66
  %68 = fsub float %67, %32
  %69 = fmul float %16, %37
  %70 = fmul float %69, %43
  %71 = fsub float %68, %70
  %72 = fmul float %71, 8.000000e+00
  %73 = fptosi float %72 to i32
  %74 = add i32 %61, -1
  %75 = icmp ult i32 %74, 21
  %76 = icmp sgt i32 %54, 0
  %77 = select i1 %75, i1 %76, i1 false
  %78 = icmp slt i32 %54, 80
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %95

80:                                               ; preds = %20
  %81 = mul nsw i32 %61, 80
  %82 = add nsw i32 %81, %54
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %4, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !10
  %86 = fcmp ogt float %35, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  store float %35, float* %84, align 4, !tbaa !10
  %88 = load i8*, i8** @CHARS, align 8, !tbaa !20
  %89 = icmp sgt i32 %73, 0
  %90 = select i1 %89, i32 %73, i32 0
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1, !tbaa !17
  %94 = getelementptr inbounds i8, i8* %3, i64 %83
  store i8 %93, i8* %94, align 1, !tbaa !17
  br label %95

95:                                               ; preds = %87, %80, %20
  %96 = fadd double %21, 2.000000e-02
  %97 = fptrunc double %96 to float
  %98 = fpext float %97 to double
  %99 = fcmp olt double %98, 6.280000e+00
  br i1 %99, label %20, label %100, !llvm.loop !22

100:                                              ; preds = %95, %5
  %101 = phi i32 [ 2, %5 ], [ 0, %95 ]
  ret i32 %101
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #8

declare i32 @"\01_usleep"(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree noinline nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
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
!13 = !{!"Simple C/C++ TBAA"}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!12, !12, i64 0}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !15, !16}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !12, i64 0}
!22 = distinct !{!22, !15, !16}

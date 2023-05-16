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
@.str.2 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1

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
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = icmp ne i64 %1, 1760
  %10 = icmp ne i64 %3, 7040
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #10
  %13 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %13, i8 0, i64 7040, i1 false) #10
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i32 [ 0, %12 ], [ 2, %4 ], [ 2, %8 ]
  ret i32 %15
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
  %11 = alloca i32, align 4
  call void @"10326168725417349201"(i32 1, float 0.000000e+00, float* null, float* null, i8* null, float* null, i32* null, float* %1, float* %2, i8* %8, float* %10, i32* %11)
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %16, %0
  %15 = phi i32 [ %12, %0 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  ret i32 %15

16:                                               ; preds = %16, %0
  call fastcc void @wait()
  %17 = alloca i32, align 4
  call void @"10326168725417349201"(i32 1, float 0.000000e+00, float* null, float* null, i8* null, float* null, i32* null, float* %1, float* %2, i8* %8, float* %10, i32* %17)
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %16, label %14, !llvm.loop !18
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #5 {
  %1 = call i32 @"\01_usleep"(i32 30000) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #6

declare i32 @"\01_usleep"(i32) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

define internal fastcc void @"10326168725417349201"(i32 %0, float %1, float* %2, float* %3, i8* %4, float* %5, i32* %6, float* %7, float* %8, i8* %9, float* %10, i32* %11) unnamed_addr #9 {
  switch i32 %0, label %13 [
    i32 0, label %14
    i32 1, label %111
  ]

13:                                               ; preds = %12
  ret void

14:                                               ; preds = %12
  %15 = icmp eq float* %2, null
  %16 = icmp eq float* %3, null
  %17 = select i1 %15, i1 true, i1 %16
  %18 = icmp eq i8* %4, null
  %19 = select i1 %17, i1 true, i1 %18
  %20 = icmp eq float* %5, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %109, label %22

22:                                               ; preds = %14
  %23 = fpext float %1 to double
  %24 = call double @llvm.cos.f64(double %23)
  %25 = fptrunc double %24 to float
  %26 = call double @llvm.sin.f64(double %23)
  %27 = fptrunc double %26 to float
  %28 = fadd float %25, 2.000000e+00
  br label %29

29:                                               ; preds = %104, %22
  %30 = phi double [ 0.000000e+00, %22 ], [ %107, %104 ]
  %31 = call double @llvm.sin.f64(double %30)
  %32 = fptrunc double %31 to float
  %33 = load float, float* %2, align 4, !tbaa !10
  %34 = fpext float %33 to double
  %35 = call double @llvm.sin.f64(double %34)
  %36 = fptrunc double %35 to float
  %37 = call double @llvm.cos.f64(double %34)
  %38 = fptrunc double %37 to float
  %39 = fmul float %28, %32
  %40 = fmul float %39, %36
  %41 = fmul float %27, %38
  %42 = fadd float %40, %41
  %43 = fadd float %42, 5.000000e+00
  %44 = fdiv float 1.000000e+00, %43
  %45 = call double @llvm.cos.f64(double %30)
  %46 = fptrunc double %45 to float
  %47 = load float, float* %3, align 4, !tbaa !10
  %48 = fpext float %47 to double
  %49 = call double @llvm.cos.f64(double %48)
  %50 = fptrunc double %49 to float
  %51 = call double @llvm.sin.f64(double %48)
  %52 = fptrunc double %51 to float
  %53 = fmul float %39, %38
  %54 = fmul float %27, %36
  %55 = fsub float %53, %54
  %56 = fmul float %44, 3.000000e+01
  %57 = fmul float %28, %46
  %58 = fmul float %57, %50
  %59 = fmul float %55, %52
  %60 = fsub float %58, %59
  %61 = fmul float %60, %56
  %62 = fadd float %61, 4.000000e+01
  %63 = fptosi float %62 to i32
  %64 = fmul float %44, 1.500000e+01
  %65 = fmul float %57, %52
  %66 = fmul float %55, %50
  %67 = fadd float %65, %66
  %68 = fmul float %67, %64
  %69 = fadd float %68, 1.200000e+01
  %70 = fptosi float %69 to i32
  %71 = fmul float %25, %32
  %72 = fmul float %71, %38
  %73 = fsub float %54, %72
  %74 = fmul float %73, %50
  %75 = fmul float %71, %36
  %76 = fsub float %74, %75
  %77 = fsub float %76, %41
  %78 = fmul float %25, %46
  %79 = fmul float %78, %52
  %80 = fsub float %77, %79
  %81 = fmul float %80, 8.000000e+00
  %82 = fptosi float %81 to i32
  %83 = add i32 %70, -1
  %84 = icmp ult i32 %83, 21
  %85 = icmp sgt i32 %63, 0
  %86 = select i1 %84, i1 %85, i1 false
  %87 = icmp slt i32 %63, 80
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %104

89:                                               ; preds = %29
  %90 = mul nsw i32 %70, 80
  %91 = add nsw i32 %90, %63
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %5, i64 %92
  %94 = load float, float* %93, align 4, !tbaa !10
  %95 = fcmp ogt float %44, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  store float %44, float* %93, align 4, !tbaa !10
  %97 = load i8*, i8** @CHARS, align 8, !tbaa !19
  %98 = icmp sgt i32 %82, 0
  %99 = select i1 %98, i32 %82, i32 0
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !17
  %103 = getelementptr inbounds i8, i8* %4, i64 %92
  store i8 %102, i8* %103, align 1, !tbaa !17
  br label %104

104:                                              ; preds = %96, %89, %29
  %105 = fadd double %30, 2.000000e-02
  %106 = fptrunc double %105 to float
  %107 = fpext float %106 to double
  %108 = fcmp olt double %107, 6.280000e+00
  br i1 %108, label %29, label %109, !llvm.loop !21

109:                                              ; preds = %104, %14
  %110 = phi i32 [ 2, %14 ], [ 0, %104 ]
  store i32 %110, i32* %6, align 4
  ret void

111:                                              ; preds = %12
  %112 = call i32 @clear(i8* %9, i64 1760, float* %10, i64 7040)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %111
  %115 = alloca i32, align 4
  call void @"10326168725417349201"(i32 0, float 0.000000e+00, float* %7, float* %8, i8* %9, float* %10, i32* %115, float* null, float* null, i8* null, float* null, i32* null)
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %129

118:                                              ; preds = %122
  %119 = alloca i32, align 4
  call void @"10326168725417349201"(i32 0, float %126, float* %7, float* %8, i8* %9, float* %10, i32* %119, float* null, float* null, i8* null, float* null, i32* null)
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129, !llvm.loop !22

122:                                              ; preds = %118, %114
  %123 = phi i32 [ %120, %118 ], [ %116, %114 ]
  %124 = phi double [ %127, %118 ], [ 0.000000e+00, %114 ]
  %125 = fadd double %124, 7.000000e-02
  %126 = fptrunc double %125 to float
  %127 = fpext float %126 to double
  %128 = fcmp olt double %127, 6.280000e+00
  br i1 %128, label %118, label %129, !llvm.loop !22

129:                                              ; preds = %122, %118, %114
  %130 = phi i32 [ %116, %114 ], [ %123, %122 ], [ %120, %118 ]
  %131 = phi i1 [ true, %114 ], [ %128, %118 ], [ %128, %122 ]
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %134 = call i32 @render(float* %7, float* %8, i8* %9, i64 1760)
  br label %135

135:                                              ; preds = %132, %129, %111
  %136 = phi i32 [ %130, %129 ], [ %112, %111 ], [ %134, %132 ]
  store i32 %136, i32* %11, align 4
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #9 = { "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !12, i64 0}
!21 = distinct !{!21, !15, !16}
!22 = distinct !{!22, !15, !16}

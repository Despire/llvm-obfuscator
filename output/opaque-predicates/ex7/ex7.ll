; ModuleID = 'input/opaque-predicates/ex7/ex7.cpp'
source_filename = "input/opaque-predicates/ex7/ex7.cpp"
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
  br label %28

24:                                               ; preds = %91
  %25 = fcmp une float %19, 0.000000e+00
  %26 = fmul float %19, 2.000000e+00
  %27 = select i1 %25, float %26, float %19
  br label %97

28:                                               ; preds = %7, %91
  %29 = phi double [ 0.000000e+00, %7 ], [ %94, %91 ]
  %30 = phi float [ 0.000000e+00, %7 ], [ %93, %91 ]
  %31 = call fastcc float @_ZL3cosf(float %30) #9
  %32 = call fastcc float @_ZL3sinf(float %30) #9
  %33 = fadd float %31, %12
  %34 = fmul float %18, %33
  %35 = fmul float %34, %20
  %36 = fmul float %19, %32
  %37 = fsub float %35, %36
  %38 = fmul float %19, %34
  %39 = fmul float %32, %20
  %40 = fadd float %38, %39
  %41 = fadd float %40, 5.000000e+00
  %42 = fdiv float 1.000000e+00, %41
  %43 = fmul float %42, 3.000000e+01
  %44 = fmul float %33, %21
  %45 = fmul float %44, %22
  %46 = fmul float %37, %23
  %47 = fadd float %45, %46
  %48 = fmul float %43, %47
  %49 = fadd float %48, %14
  %50 = fptosi float %49 to i32
  %51 = fmul float %42, 1.500000e+01
  %52 = fmul float %44, %23
  %53 = fmul float %37, %22
  %54 = fsub float %52, %53
  %55 = fmul float %51, %54
  %56 = fadd float %55, %17
  %57 = fptosi float %56 to i32
  %58 = fmul float %18, %31
  %59 = fmul float %58, %20
  %60 = fsub float %36, %59
  %61 = fmul float %60, %22
  %62 = fmul float %58, %19
  %63 = fsub float %61, %62
  %64 = fsub float %63, %39
  %65 = fmul float %31, %21
  %66 = fmul float %65, %23
  %67 = fsub float %64, %66
  %68 = fmul float %67, 8.000000e+00
  %69 = fptosi float %68 to i32
  %70 = icmp slt i32 %57, %5
  %71 = icmp sgt i32 %57, 0
  %72 = and i1 %70, %71
  %73 = icmp sgt i32 %50, 0
  %74 = select i1 %72, i1 %73, i1 false
  %75 = icmp slt i32 %50, %6
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %91

77:                                               ; preds = %28
  %78 = mul nsw i32 %57, %6
  %79 = add nsw i32 %78, %50
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %3, i64 %80
  %82 = load float, float* %81, align 4, !tbaa !13
  %83 = fcmp ogt float %42, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  store float %42, float* %81, align 4, !tbaa !13
  %85 = icmp sgt i32 %69, 0
  %86 = select i1 %85, i32 %69, i32 0
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1, !tbaa !10
  %90 = getelementptr inbounds i8, i8* %4, i64 %80
  store i8 %89, i8* %90, align 1, !tbaa !10
  br label %91

91:                                               ; preds = %84, %77, %28
  %92 = fadd double %29, 7.000000e-02
  %93 = fptrunc double %92 to float
  %94 = fpext float %93 to double
  %95 = fcmp olt double %94, 6.280000e+00
  br i1 %95, label %28, label %24, !llvm.loop !18

96:                                               ; preds = %177
  ret void

97:                                               ; preds = %24, %177
  %98 = phi double [ 0.000000e+00, %24 ], [ %180, %177 ]
  %99 = phi i32 [ 0, %24 ], [ %101, %177 ]
  %100 = phi float [ 0.000000e+00, %24 ], [ %179, %177 ]
  %101 = add nuw nsw i32 %99, 1
  %102 = sitofp i32 %99 to float
  %103 = fadd float %18, %102
  %104 = call fastcc float @_ZL3cosf(float %100) #9
  %105 = fcmp une float %103, 0.000000e+00
  %106 = fmul float %103, 2.000000e+00
  %107 = fmul float %104, 2.000000e+00
  %108 = select i1 %105, float %104, float %107
  %109 = select i1 %105, float %106, float %103
  %110 = call fastcc float @_ZL3sinf(float %100) #9
  %111 = fmul float %110, 2.000000e+00
  %112 = select i1 %25, float %110, float %111
  %113 = fadd float %108, %12
  %114 = fmul float %109, %113
  %115 = fmul float %20, %114
  %116 = fmul float %27, %112
  %117 = fsub float %115, %116
  %118 = fcmp une float %113, 0.000000e+00
  %119 = fmul float %117, 2.000000e+00
  %120 = fmul float %113, 2.000000e+00
  %121 = select i1 %118, float %119, float %117
  %122 = select i1 %118, float %113, float %120
  %123 = fmul float %109, %122
  %124 = fmul float %27, %123
  %125 = fmul float %20, %112
  %126 = fadd float %125, %124
  %127 = fadd float %126, 5.000000e+00
  %128 = fdiv float 1.000000e+00, %127
  %129 = fmul float %128, 3.000000e+01
  %130 = fmul float %21, %122
  %131 = fmul float %22, %130
  %132 = fmul float %23, %121
  %133 = fadd float %131, %132
  %134 = fmul float %133, %129
  %135 = fadd float %134, %14
  %136 = fptosi float %135 to i32
  %137 = fmul float %128, 1.500000e+01
  %138 = fmul float %130, %23
  %139 = fmul float %22, %121
  %140 = fsub float %138, %139
  %141 = fmul float %140, %137
  %142 = fadd float %141, %17
  %143 = fptosi float %142 to i32
  %144 = fmul float %109, %108
  %145 = fmul float %144, %20
  %146 = fsub float %116, %145
  %147 = fmul float %22, %146
  %148 = fmul float %144, %27
  %149 = fsub float %147, %148
  %150 = fsub float %149, %125
  %151 = fmul float %108, %21
  %152 = fmul float %151, %23
  %153 = fsub float %150, %152
  %154 = fmul float %153, 8.000000e+00
  %155 = fptosi float %154 to i32
  %156 = icmp slt i32 %143, %5
  %157 = icmp sgt i32 %143, 0
  %158 = and i1 %156, %157
  %159 = icmp sgt i32 %136, 0
  %160 = select i1 %158, i1 %159, i1 false
  %161 = icmp slt i32 %136, %6
  %162 = select i1 %160, i1 %161, i1 false
  br i1 %162, label %163, label %177

163:                                              ; preds = %97
  %164 = mul nsw i32 %143, %6
  %165 = add nsw i32 %164, %136
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %3, i64 %166
  %168 = load float, float* %167, align 4, !tbaa !13
  %169 = fcmp ogt float %128, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  store float %128, float* %167, align 4, !tbaa !13
  %171 = icmp sgt i32 %155, 0
  %172 = select i1 %171, i32 %155, i32 0
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1, !tbaa !10
  %176 = getelementptr inbounds i8, i8* %4, i64 %166
  store i8 %175, i8* %176, align 1, !tbaa !10
  br label %177

177:                                              ; preds = %170, %163, %97
  %178 = fadd double %98, 7.000000e-02
  %179 = fptrunc double %178 to float
  %180 = fpext float %179 to double
  %181 = icmp eq i32 %101, 90
  br i1 %181, label %96, label %97, !llvm.loop !19
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
  br i1 %16, label %18, label %11, !llvm.loop !20

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
  br i1 %31, label %17, label %18, !llvm.loop !21
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
!21 = distinct !{!21, !16, !17}

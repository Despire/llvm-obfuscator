; ModuleID = 'output/jump-into-loop/ex5/ex5.ll'
source_filename = "input/jump-into-loop/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load i32, i32* %2, align 4, !tbaa !10
  br label %23

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %0, 7
  %9 = lshr i32 %8, 3
  %10 = mul i32 %0, 2
  %11 = mul i32 %0, 2
  %12 = add i32 2, %11
  %13 = mul i32 %10, %12
  %14 = srem i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = mul i32 %0, %0
  %17 = add i32 %16, %0
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %15, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  br label %28

22:                                               ; preds = %7
  br label %28

.loopexit:                                        ; preds = %28
  br label %23

23:                                               ; preds = %.loopexit, %5
  %24 = phi i32 [ %6, %5 ], [ %30, %.loopexit ]
  %25 = load i32, i32* %1, align 4, !tbaa !10
  %26 = add nsw i32 %25, %0
  %27 = add nsw i32 %26, %24
  ret i32 %27

28:                                               ; preds = %21, %28, %22
  %29 = phi i32 [ %32, %28 ], [ 0, %22 ], [ 0, %21 ]
  %30 = load i32, i32* %1, align 4, !tbaa !10
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4, !tbaa !10
  store i32 %30, i32* %2, align 4, !tbaa !10
  %32 = add nuw nsw i32 %29, 1
  %33 = icmp eq i32 %32, %9
  br i1 %33, label %.loopexit, label %28, !llvm.loop !14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #1 {
  ret i32 54
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}

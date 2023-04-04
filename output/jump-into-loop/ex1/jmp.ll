; ModuleID = 'output/jump-into-loop/ex1/ex1.ll'
source_filename = "input/jump-into-loop/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi i32 [ %0, %1 ], [ %16, %15 ]
  %4 = phi i32 [ 0, %1 ], [ %17, %15 ]
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %.preheader, label %15

.preheader:                                       ; preds = %2
  br label %6

6:                                                ; preds = %.preheader, %6
  %7 = phi i32 [ %13, %6 ], [ %4, %.preheader ]
  %8 = phi i32 [ %10, %6 ], [ %3, %.preheader ]
  %9 = freeze i32 %8
  %10 = sdiv i32 %9, 10
  %11 = mul i32 %10, 10
  %12 = sub i32 %9, %11
  %13 = add nsw i32 %7, %12
  %14 = icmp sgt i32 %8, 9
  br i1 %14, label %6, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %6
  br label %15

15:                                               ; preds = %.loopexit, %2
  %16 = phi i32 [ %3, %2 ], [ %10, %.loopexit ]
  %17 = phi i32 [ %4, %2 ], [ %13, %.loopexit ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %2, !llvm.loop !13

19:                                               ; preds = %15
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = call i32 @_Z8digitSumi(i32 25)
  %5 = add nsw i32 %4, %3
  ret i32 %5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}

; ModuleID = 'output/opaque-predicates/ex2/ex2.ll'
source_filename = "input/opaque-predicates/ex2/ex2.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
"0":
  br label %"1"

"1":                                              ; preds = %splitBB, %splitBB1, %"0"
  %1 = phi i32 [ %0, %"0" ], [ %7, %splitBB1 ], [ %6, %splitBB ]
  %2 = phi i32 [ 0, %"0" ], [ %6, %splitBB1 ], [ %6, %splitBB ]
  %3 = icmp eq i32 %0, 0
  %4 = icmp ne i32 %0, 0
  %5 = or i1 %3, %4
  %6 = add nuw nsw i32 %2, 1
  %7 = sdiv i32 %1, 10
  br i1 %5, label %splitBB, label %"2"

splitBB:                                          ; preds = %"1"
  %8 = icmp eq i1 %4, false
  %9 = icmp ne i1 %4, false
  %10 = or i1 %8, %9
  %11 = add i32 %1, 9
  %12 = icmp ult i32 %11, 19
  br i1 %10, label %splitBB1, label %"1"

splitBB1:                                         ; preds = %splitBB
  br i1 %12, label %"2", label %"1", !llvm.loop !10

"2":                                              ; preds = %"1", %splitBB1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
"0":
  %2 = call i32 @_Z8digitSumi(i32 15)
  %3 = call i32 @_Z8digitSumi(i32 25)
  %4 = add nsw i32 %3, %2
  ret i32 %4
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

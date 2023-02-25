; ModuleID = 'input/substitution/xors/ex1/ex1.cpp'
source_filename = "input/substitution/xors/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @_Z10xor_valuesiiii(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = xor i32 %1, %0
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, %3
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @_Z3sumii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %8, %4 ], [ %0, %2 ]
  %6 = phi i32 [ %9, %4 ], [ %1, %2 ]
  %7 = and i32 %5, %6
  %8 = xor i32 %5, %6
  %9 = shl i32 %7, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %4, !llvm.loop !10

11:                                               ; preds = %4, %2
  %12 = phi i32 [ %0, %2 ], [ %8, %4 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @main() local_unnamed_addr #0 {
  %1 = call i32 @_Z10xor_valuesiiii(i32 1, i32 2, i32 3, i32 4)
  %2 = call i32 @_Z3sumii(i32 1, i32 2)
  %3 = xor i32 %2, %1
  %4 = call i32 @_Z3sumii(i32 3, i32 4)
  %5 = xor i32 %3, %4
  %6 = call i32 @_Z3sumii(i32 1, i32 1)
  %7 = xor i32 %5, %6
  ret i32 %7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}

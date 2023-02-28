; ModuleID = 'output/substitution/and/ex1/ex1.ll'
source_filename = "input/substitution/and/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z10and_valuesiiii(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = xor i32 %1, -1
  %6 = xor i32 %0, -1
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = and i32 %8, -1
  %10 = xor i32 %9, -1
  %11 = or i32 %10, %2
  %12 = xor i32 %9, -1
  %13 = sub i32 %11, %12
  %14 = xor i32 %3, -1
  %15 = xor i32 %13, %14
  %16 = and i32 %15, %13
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z12countSetBitsi(i32 %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ %10, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %11, %3 ], [ %0, %1 ]
  %6 = xor i32 %5, -2
  %7 = and i32 %6, %5
  %8 = add i32 %4, -744077546
  %9 = add i32 %8, %7
  %10 = sub i32 %9, -744077546
  %11 = ashr i32 %5, 1
  %12 = icmp ult i32 %5, 2
  br i1 %12, label %13, label %3, !llvm.loop !10

13:                                               ; preds = %3, %1
  %14 = phi i32 [ 0, %1 ], [ %10, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main() local_unnamed_addr #0 {
  %1 = call i32 @_Z12countSetBitsi(i32 3)
  %2 = call i32 @_Z12countSetBitsi(i32 7)
  %3 = call i32 @_Z12countSetBitsi(i32 5)
  %4 = call i32 @_Z10and_valuesiiii(i32 %1, i32 %2, i32 %3, i32 %1)
  %5 = call i32 @_Z10and_valuesiiii(i32 %1, i32 %3, i32 %2, i32 %1)
  %6 = xor i32 %5, -1
  %7 = xor i32 %4, -1
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %9, -1
  ret i32 %10
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

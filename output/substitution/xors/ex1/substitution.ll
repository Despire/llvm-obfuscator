; ModuleID = 'output/substitution/xors/ex1/ex1.ll'
source_filename = "input/substitution/xors/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z10xor_valuesiiii(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = xor i32 %1, -1
  %6 = and i32 %5, %0
  %7 = xor i32 %0, -1
  %8 = and i32 %1, %7
  %9 = or i32 %6, %8
  %10 = xor i32 %9, 1245218734
  %11 = xor i32 %2, 1245218734
  %12 = xor i32 %10, %11
  %13 = or i32 %12, %3
  %14 = and i32 %12, %3
  %15 = sub i32 %13, %14
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z3sumii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %18, %4 ], [ %0, %2 ]
  %6 = phi i32 [ %19, %4 ], [ %1, %2 ]
  %7 = xor i32 %6, -1
  %8 = xor i32 %5, %7
  %9 = and i32 %8, %5
  %10 = xor i32 %5, -1
  %11 = and i32 %10, -465311070
  %12 = and i32 %5, 465311069
  %13 = or i32 %11, %12
  %14 = xor i32 %6, -1
  %15 = and i32 %14, -465311070
  %16 = and i32 %6, 465311069
  %17 = or i32 %15, %16
  %18 = xor i32 %13, %17
  %19 = shl i32 %9, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %4, !llvm.loop !10

21:                                               ; preds = %4, %2
  %22 = phi i32 [ %0, %2 ], [ %18, %4 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main() local_unnamed_addr #0 {
  %1 = call i32 @_Z10xor_valuesiiii(i32 1, i32 2, i32 3, i32 4)
  %2 = call i32 @_Z3sumii(i32 1, i32 2)
  %3 = xor i32 %2, -1
  %4 = and i32 %3, -854411631
  %5 = and i32 %2, 854411630
  %6 = or i32 %4, %5
  %7 = xor i32 %1, -1
  %8 = and i32 %7, -854411631
  %9 = and i32 %1, 854411630
  %10 = or i32 %8, %9
  %11 = xor i32 %6, %10
  %12 = call i32 @_Z3sumii(i32 3, i32 4)
  %13 = or i32 %11, %12
  %14 = and i32 %11, %12
  %15 = sub i32 %13, %14
  %16 = call i32 @_Z3sumii(i32 1, i32 1)
  %17 = xor i32 %15, -1
  %18 = and i32 %17, %16
  %19 = xor i32 %16, -1
  %20 = and i32 %15, %19
  %21 = or i32 %18, %20
  ret i32 %21
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

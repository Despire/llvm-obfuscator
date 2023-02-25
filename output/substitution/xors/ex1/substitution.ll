; ModuleID = 'output/substitution/xors/ex1/ex1.ll'
source_filename = "input/substitution/xors/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z10xor_valuesiiii(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = xor i32 %1, -1
  %6 = and i32 %5, 1216134227
  %7 = and i32 %1, -1216134228
  %8 = or i32 %6, %7
  %9 = xor i32 %0, -1
  %10 = and i32 %9, 1216134227
  %11 = and i32 %0, -1216134228
  %12 = or i32 %10, %11
  %13 = xor i32 %8, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %14, 353314596
  %16 = and i32 %13, -353314597
  %17 = or i32 %15, %16
  %18 = xor i32 %2, -1
  %19 = and i32 %18, 353314596
  %20 = and i32 %2, -353314597
  %21 = or i32 %19, %20
  %22 = xor i32 %17, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %23, %3
  %25 = xor i32 %3, -1
  %26 = and i32 %22, %25
  %27 = or i32 %24, %26
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z3sumii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %13, %4 ], [ %0, %2 ]
  %6 = phi i32 [ %14, %4 ], [ %1, %2 ]
  %7 = xor i32 %5, -1
  %8 = or i32 %7, %6
  %9 = xor i32 %5, -1
  %10 = sub i32 %8, %9
  %11 = xor i32 %5, -1288176828
  %12 = xor i32 %6, -1288176828
  %13 = xor i32 %11, %12
  %14 = shl i32 %10, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %4, !llvm.loop !10

16:                                               ; preds = %4, %2
  %17 = phi i32 [ %0, %2 ], [ %13, %4 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main() local_unnamed_addr #0 {
  %1 = call i32 @_Z10xor_valuesiiii(i32 1, i32 2, i32 3, i32 4)
  %2 = call i32 @_Z3sumii(i32 1, i32 2)
  %3 = or i32 %2, %1
  %4 = and i32 %2, %1
  %5 = sub i32 %3, %4
  %6 = call i32 @_Z3sumii(i32 3, i32 4)
  %7 = xor i32 %5, -1
  %8 = and i32 %7, %6
  %9 = xor i32 %6, -1
  %10 = and i32 %5, %9
  %11 = or i32 %8, %10
  %12 = call i32 @_Z3sumii(i32 1, i32 1)
  %13 = xor i32 %11, 336143350
  %14 = xor i32 %12, 336143350
  %15 = xor i32 %13, %14
  ret i32 %15
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

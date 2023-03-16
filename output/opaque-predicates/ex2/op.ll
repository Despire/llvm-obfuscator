; ModuleID = 'output/opaque-predicates/ex2/ex2.ll'
source_filename = "input/opaque-predicates/ex2/ex2.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %31, %1
  %3 = phi i32 [ %0, %1 ], [ %6, %31 ]
  %4 = phi i32 [ 0, %1 ], [ %5, %31 ]
  %5 = add nuw nsw i32 %4, 1
  %6 = sdiv i32 %3, 10
  %7 = icmp eq i32 %0, 0
  %8 = icmp ne i32 %0, 0
  %9 = xor i1 %7, true
  %10 = and i1 %9, false
  %11 = and i1 %7, true
  %12 = or i1 %10, %11
  %13 = xor i1 %8, true
  %14 = and i1 %13, false
  %15 = and i1 %8, true
  %16 = or i1 %14, %15
  %17 = xor i1 %12, %16
  %18 = xor i1 %7, true
  %19 = xor i1 %8, true
  %20 = or i1 %18, %19
  %21 = xor i1 %20, true
  %22 = and i1 %21, true
  %23 = or i1 %17, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = add i32 %0, %0
  %26 = mul i32 %0, %0
  %27 = add i32 %0, %0
  %28 = sub i32 %0, %0
  %29 = sdiv i32 %0, %0
  %30 = sub i32 %0, %0
  br label %31

31:                                               ; preds = %2, %24
  %32 = add i32 %3, 9
  %33 = icmp ult i32 %32, 19
  br i1 %33, label %34, label %2, !llvm.loop !10

34:                                               ; preds = %31
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = call i32 @_Z8digitSumi(i32 25)
  %5 = icmp sge i32 %0, %0
  %6 = icmp sle i32 %0, %0
  %7 = xor i1 %6, true
  %8 = xor i1 %5, %7
  %9 = and i1 %8, %5
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = mul i32 %0, %0
  %12 = sdiv i32 %0, %0
  %13 = add i32 %0, %0
  %14 = sdiv i32 %0, %0
  %15 = mul i32 %0, %0
  %16 = add i32 %0, %0
  %17 = sub i32 %0, %0
  %18 = mul i32 %0, %0
  br label %19

19:                                               ; preds = %2, %10
  %20 = add nsw i32 %4, %3
  ret i32 %20
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

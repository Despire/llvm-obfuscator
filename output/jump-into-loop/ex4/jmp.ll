; ModuleID = 'output/jump-into-loop/ex4/ex4.ll'
source_filename = "input/jump-into-loop/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 1
  %5 = mul i32 %1, %1
  %6 = add i32 %5, %1
  %7 = srem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = or i1 %4, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %26

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %13
  unreachable

13:                                               ; preds = %26, %11
  %14 = phi i32 [ %0, %11 ], [ %27, %26 ]
  %15 = phi i32 [ 0, %11 ], [ %28, %26 ]
  switch i32 %15, label %12 [
    i32 0, label %16
    i32 1, label %21
    i32 2, label %29
    i32 3, label %32
  ], !llvm.loop !10

16:                                               ; preds = %13
  %17 = icmp slt i32 %14, %1
  %18 = select i1 %17, i32 %1, i32 0
  %19 = add nsw i32 %18, %14
  %20 = select i1 %17, i32 3, i32 1
  br label %26

21:                                               ; preds = %13
  %22 = icmp eq i32 %14, %1
  %23 = sub nsw i32 %1, %14
  %24 = select i1 %22, i32 %23, i32 %14
  %25 = select i1 %22, i32 3, i32 2
  br label %26

26:                                               ; preds = %10, %29, %21, %16
  %27 = phi i32 [ %31, %29 ], [ %19, %16 ], [ %24, %21 ], [ 0, %10 ]
  %28 = phi i32 [ 3, %29 ], [ %20, %16 ], [ %25, %21 ], [ 0, %10 ]
  br label %13, !llvm.loop !13

29:                                               ; preds = %13
  %30 = shl i32 %14, 1
  %31 = sub i32 %30, %1
  br label %26

32:                                               ; preds = %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %3
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

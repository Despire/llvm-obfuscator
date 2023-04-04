; ModuleID = 'output/jump-into-loop/ex4/ex4.ll'
source_filename = "input/jump-into-loop/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 1
  %4 = icmp eq i32 %3, 0
  %5 = add i32 %0, 1
  %6 = mul i32 3, %5
  %7 = add i32 %0, 2
  %8 = mul i32 %6, %7
  %9 = srem i32 %8, 6
  %10 = icmp eq i32 %9, 0
  %11 = or i1 %4, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %18

13:                                               ; preds = %2
  br label %15

14:                                               ; preds = %15
  unreachable

15:                                               ; preds = %29, %13
  %16 = phi i32 [ %0, %13 ], [ %30, %29 ]
  %17 = phi i32 [ 0, %13 ], [ %31, %29 ]
  switch i32 %17, label %14 [
    i32 0, label %18
    i32 1, label %24
    i32 2, label %33
    i32 3, label %36
  ], !llvm.loop !10

18:                                               ; preds = %12, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %12 ]
  %20 = icmp slt i32 %19, %1
  %21 = select i1 %20, i32 %1, i32 0
  %22 = add nsw i32 %21, %19
  %23 = select i1 %20, i32 3, i32 1
  br label %29

24:                                               ; preds = %15
  %25 = icmp eq i32 %16, %1
  %26 = sub nsw i32 %1, %16
  %27 = select i1 %25, i32 %26, i32 %16
  %28 = select i1 %25, i32 3, i32 2
  br label %29

29:                                               ; preds = %33, %24, %18
  %30 = phi i32 [ %35, %33 ], [ %22, %18 ], [ %27, %24 ]
  %31 = phi i32 [ 3, %33 ], [ %23, %18 ], [ %28, %24 ]
  %32 = phi i32 [ %19, %18 ], [ %16, %24 ], [ %16, %33 ]
  br label %15, !llvm.loop !13

33:                                               ; preds = %15
  %34 = shl i32 %16, 1
  %35 = sub i32 %34, %1
  br label %29

36:                                               ; preds = %15
  ret i32 %16
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

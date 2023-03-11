; ModuleID = 'output/opaque-predicates/ex1/ex1.ll'
source_filename = "input/opaque-predicates/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
"0":
  br label %"1"

"1":                                              ; preds = %"3", %splitBB6, %"0"
  %1 = phi i32 [ %0, %"0" ], [ %30, %splitBB6 ], [ %0, %"3" ]
  %2 = phi i32 [ 0, %"0" ], [ %31, %splitBB6 ], [ %0, %"3" ]
  %3 = icmp eq i32 %0, 0
  %4 = icmp ne i32 %0, 0
  %5 = or i1 %3, %4
  %6 = icmp sgt i32 %1, 0
  br i1 %5, label %splitBB, label %"3"

splitBB:                                          ; preds = %"1"
  br i1 %6, label %"2", label %"3"

"2":                                              ; preds = %splitBB3, %splitBB2, %splitBB1, %"2", %splitBB5, %splitBB
  %7 = phi i32 [ %19, %splitBB5 ], [ %2, %splitBB ], [ %0, %"2" ], [ %13, %splitBB1 ], [ %13, %splitBB2 ], [ %13, %splitBB3 ]
  %8 = phi i32 [ %13, %splitBB5 ], [ %1, %splitBB ], [ %0, %"2" ], [ %13, %splitBB1 ], [ %13, %splitBB2 ], [ %13, %splitBB3 ]
  %9 = icmp eq i1 %5, false
  %10 = icmp ne i1 %5, false
  %11 = or i1 %9, %10
  %12 = freeze i32 %8
  %13 = sdiv i32 %12, 10
  br i1 %11, label %splitBB1, label %"2"

splitBB1:                                         ; preds = %"2"
  %14 = icmp eq i32 %1, 0
  %15 = icmp ne i32 %1, 0
  %16 = or i1 %14, %15
  %17 = mul i32 %13, 10
  %18 = sub i32 %12, %17
  %19 = add nsw i32 %7, %18
  br i1 %16, label %splitBB2, label %"2"

splitBB2:                                         ; preds = %splitBB1
  %20 = icmp eq i32 %12, 0
  %21 = icmp ne i32 %12, 0
  %22 = or i1 %20, %21
  br i1 %22, label %splitBB3, label %"2"

splitBB3:                                         ; preds = %splitBB2
  %23 = icmp eq i32 %1, 0
  %24 = icmp ne i32 %1, 0
  %25 = or i1 %23, %24
  br i1 %25, label %splitBB4, label %"2"

splitBB4:                                         ; preds = %splitBB3
  %26 = icmp eq i1 %21, false
  %27 = icmp ne i1 %21, false
  %28 = or i1 %26, %27
  %29 = icmp sgt i32 %8, 9
  br i1 %28, label %splitBB5, label %"3"

splitBB5:                                         ; preds = %splitBB4
  br i1 %29, label %"2", label %"3", !llvm.loop !10

"3":                                              ; preds = %splitBB4, %"1", %splitBB5, %splitBB
  %30 = phi i32 [ %1, %splitBB ], [ %13, %splitBB5 ], [ %0, %"1" ], [ %13, %splitBB4 ]
  %31 = phi i32 [ %2, %splitBB ], [ %19, %splitBB5 ], [ %0, %"1" ], [ %13, %splitBB4 ]
  %32 = icmp eq i1 %6, false
  %33 = icmp ne i1 %6, false
  %34 = or i1 %32, %33
  %35 = icmp eq i32 %30, 0
  br i1 %34, label %splitBB6, label %"1"

splitBB6:                                         ; preds = %"3"
  br i1 %35, label %"4", label %"1", !llvm.loop !13

"4":                                              ; preds = %splitBB6
  ret i32 %31
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
!13 = distinct !{!13, !11, !12}

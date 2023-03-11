; ModuleID = 'output/opaque-predicates/ex4/ex4.ll'
source_filename = "input/opaque-predicates/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
"0":
  br label %"2"

"1":                                              ; preds = %splitBB
  unreachable

"2":                                              ; preds = %"5", %splitBB10, %"0"
  %2 = phi i32 [ %0, %"0" ], [ %42, %splitBB10 ], [ %1, %"5" ]
  %3 = phi i32 [ 0, %"0" ], [ %43, %splitBB10 ], [ %1, %"5" ]
  %4 = icmp eq i32 %0, 0
  %5 = icmp ne i32 %0, 0
  %6 = or i1 %4, %5
  br i1 %6, label %splitBB, label %"4"

splitBB:                                          ; preds = %"2"
  switch i32 %3, label %"1" [
    i32 0, label %"3"
    i32 1, label %"4"
    i32 2, label %"6"
    i32 3, label %"7"
  ], !llvm.loop !10

"3":                                              ; preds = %splitBB
  %7 = icmp eq i1 %6, false
  %8 = icmp ne i1 %6, false
  %9 = or i1 %7, %8
  %10 = icmp slt i32 %2, %1
  %11 = select i1 %10, i32 %1, i32 0
  br i1 %9, label %splitBB1, label %"5"

splitBB1:                                         ; preds = %"3"
  %12 = icmp eq i1 %5, false
  %13 = icmp ne i1 %5, false
  %14 = or i1 %12, %13
  br i1 %14, label %splitBB2, label %"5"

splitBB2:                                         ; preds = %splitBB1
  %15 = icmp eq i32 %2, 0
  %16 = icmp ne i32 %2, 0
  %17 = or i1 %15, %16
  %18 = add nsw i32 %11, %2
  %19 = select i1 %10, i32 3, i32 1
  br i1 %17, label %splitBB3, label %"5"

splitBB3:                                         ; preds = %splitBB2
  br label %"5"

"4":                                              ; preds = %"2", %splitBB
  %20 = icmp eq i1 %4, false
  %21 = icmp ne i1 %4, false
  %22 = or i1 %20, %21
  %23 = icmp eq i32 %2, %1
  br i1 %22, label %splitBB4, label %"5"

splitBB4:                                         ; preds = %"4"
  %24 = icmp eq i1 %23, false
  %25 = icmp ne i1 %23, false
  %26 = or i1 %24, %25
  br i1 %26, label %splitBB5, label %"5"

splitBB5:                                         ; preds = %splitBB4
  %27 = icmp eq i1 %23, false
  %28 = icmp ne i1 %23, false
  %29 = or i1 %27, %28
  %30 = sub nsw i32 %1, %2
  br i1 %29, label %splitBB6, label %"5"

splitBB6:                                         ; preds = %splitBB5
  %31 = icmp eq i1 %26, false
  %32 = icmp ne i1 %26, false
  %33 = or i1 %31, %32
  br i1 %33, label %splitBB7, label %"5"

splitBB7:                                         ; preds = %splitBB6
  %34 = icmp eq i1 %27, false
  %35 = icmp ne i1 %27, false
  %36 = or i1 %34, %35
  br i1 %36, label %splitBB8, label %"5"

splitBB8:                                         ; preds = %splitBB7
  %37 = icmp eq i1 %23, false
  %38 = icmp ne i1 %23, false
  %39 = or i1 %37, %38
  %40 = select i1 %23, i32 %30, i32 %2
  %41 = select i1 %23, i32 3, i32 2
  br i1 %39, label %splitBB9, label %"5"

splitBB9:                                         ; preds = %splitBB8
  br label %"5"

"5":                                              ; preds = %splitBB13, %splitBB12, %splitBB11, %"6", %splitBB8, %splitBB7, %splitBB6, %splitBB5, %splitBB4, %"4", %splitBB2, %splitBB1, %"3", %splitBB14, %splitBB9, %splitBB3
  %42 = phi i32 [ %60, %splitBB14 ], [ %18, %splitBB3 ], [ %40, %splitBB9 ], [ %1, %"3" ], [ %1, %splitBB1 ], [ %1, %splitBB2 ], [ %1, %"4" ], [ %1, %splitBB4 ], [ %1, %splitBB5 ], [ %1, %splitBB6 ], [ %1, %splitBB7 ], [ %1, %splitBB8 ], [ %1, %"6" ], [ %1, %splitBB11 ], [ %1, %splitBB12 ], [ %1, %splitBB13 ]
  %43 = phi i32 [ 3, %splitBB14 ], [ %19, %splitBB3 ], [ %41, %splitBB9 ], [ %1, %"3" ], [ %1, %splitBB1 ], [ %1, %splitBB2 ], [ %1, %"4" ], [ %1, %splitBB4 ], [ %1, %splitBB5 ], [ %1, %splitBB6 ], [ %1, %splitBB7 ], [ %1, %splitBB8 ], [ %1, %"6" ], [ %1, %splitBB11 ], [ %1, %splitBB12 ], [ %1, %splitBB13 ]
  %44 = icmp eq i32 %2, 0
  %45 = icmp ne i32 %2, 0
  %46 = or i1 %44, %45
  br i1 %46, label %splitBB10, label %"2"

splitBB10:                                        ; preds = %"5"
  br label %"2", !llvm.loop !10

"6":                                              ; preds = %splitBB
  %47 = icmp eq i32 %0, 0
  %48 = icmp ne i32 %0, 0
  %49 = or i1 %47, %48
  br i1 %49, label %splitBB11, label %"5"

splitBB11:                                        ; preds = %"6"
  %50 = icmp eq i1 %6, false
  %51 = icmp ne i1 %6, false
  %52 = or i1 %50, %51
  %53 = shl i32 %2, 1
  br i1 %52, label %splitBB12, label %"5"

splitBB12:                                        ; preds = %splitBB11
  %54 = icmp eq i32 %1, 0
  %55 = icmp ne i32 %1, 0
  %56 = or i1 %54, %55
  br i1 %56, label %splitBB13, label %"5"

splitBB13:                                        ; preds = %splitBB12
  %57 = icmp eq i32 %53, 0
  %58 = icmp ne i32 %53, 0
  %59 = or i1 %57, %58
  %60 = sub i32 %53, %1
  br i1 %59, label %splitBB14, label %"5"

splitBB14:                                        ; preds = %splitBB13
  br label %"5"

"7":                                              ; preds = %splitBB
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
"0":
  %2 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %2
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

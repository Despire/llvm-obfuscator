; ModuleID = 'output/opaque-predicates/ex3/ex3.ll'
source_filename = "input/opaque-predicates/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
"0":
  %2 = icmp eq i32 %1, 0
  %3 = icmp ne i32 %1, 0
  %4 = or i1 %2, %3
  %5 = icmp slt i32 %0, %1
  br i1 %4, label %splitBB, label %"2"

splitBB:                                          ; preds = %"0"
  br i1 %5, label %"1", label %"2"

"1":                                              ; preds = %splitBB
  %6 = icmp eq i1 %2, false
  %7 = icmp ne i1 %2, false
  %8 = or i1 %6, %7
  %9 = add nsw i32 %1, %0
  br i1 %8, label %splitBB1, label %"5"

splitBB1:                                         ; preds = %"1"
  br label %"5"

"2":                                              ; preds = %"0", %splitBB
  %10 = icmp eq i1 %4, false
  %11 = icmp ne i1 %4, false
  %12 = or i1 %10, %11
  %13 = icmp eq i32 %0, %1
  br i1 %12, label %splitBB2, label %"4"

splitBB2:                                         ; preds = %"2"
  br i1 %13, label %"3", label %"4"

"3":                                              ; preds = %splitBB2
  %14 = icmp eq i1 %2, false
  %15 = icmp ne i1 %2, false
  %16 = or i1 %14, %15
  br i1 %16, label %splitBB3, label %"5"

splitBB3:                                         ; preds = %"3"
  %17 = icmp eq i1 %16, false
  %18 = icmp ne i1 %16, false
  %19 = or i1 %17, %18
  br i1 %19, label %splitBB4, label %"5"

splitBB4:                                         ; preds = %splitBB3
  %20 = icmp eq i1 %16, false
  %21 = icmp ne i1 %16, false
  %22 = or i1 %20, %21
  br i1 %22, label %splitBB5, label %"5"

splitBB5:                                         ; preds = %splitBB4
  %23 = icmp eq i1 %10, false
  %24 = icmp ne i1 %10, false
  %25 = or i1 %23, %24
  br i1 %25, label %splitBB6, label %"5"

splitBB6:                                         ; preds = %splitBB5
  %26 = icmp eq i1 %21, false
  %27 = icmp ne i1 %21, false
  %28 = or i1 %26, %27
  br i1 %28, label %splitBB7, label %"5"

splitBB7:                                         ; preds = %splitBB6
  %29 = icmp eq i1 %19, false
  %30 = icmp ne i1 %19, false
  %31 = or i1 %29, %30
  br i1 %31, label %splitBB8, label %"5"

splitBB8:                                         ; preds = %splitBB7
  %32 = icmp eq i1 %20, false
  %33 = icmp ne i1 %20, false
  %34 = or i1 %32, %33
  br i1 %34, label %splitBB9, label %"5"

splitBB9:                                         ; preds = %splitBB8
  %35 = icmp eq i1 %17, false
  %36 = icmp ne i1 %17, false
  %37 = or i1 %35, %36
  %38 = mul i32 %1, -2
  br i1 %37, label %splitBB10, label %"5"

splitBB10:                                        ; preds = %splitBB9
  br label %"5"

"4":                                              ; preds = %"2", %splitBB2
  %39 = icmp eq i1 %11, false
  %40 = icmp ne i1 %11, false
  %41 = or i1 %39, %40
  br i1 %41, label %splitBB11, label %"5"

splitBB11:                                        ; preds = %"4"
  %42 = icmp eq i1 %2, false
  %43 = icmp ne i1 %2, false
  %44 = or i1 %42, %43
  br i1 %44, label %splitBB12, label %"5"

splitBB12:                                        ; preds = %splitBB11
  %45 = icmp eq i32 %0, 0
  %46 = icmp ne i32 %0, 0
  %47 = or i1 %45, %46
  br i1 %47, label %splitBB13, label %"5"

splitBB13:                                        ; preds = %splitBB12
  %48 = icmp eq i1 %46, false
  %49 = icmp ne i1 %46, false
  %50 = or i1 %48, %49
  %51 = shl i32 %0, 1
  %52 = sub i32 %51, %1
  br i1 %50, label %splitBB14, label %"5"

splitBB14:                                        ; preds = %splitBB13
  br label %"5"

"5":                                              ; preds = %splitBB13, %splitBB12, %splitBB11, %"4", %splitBB9, %splitBB8, %splitBB7, %splitBB6, %splitBB5, %splitBB4, %splitBB3, %"3", %"1", %splitBB14, %splitBB10, %splitBB1
  %53 = phi i32 [ %9, %splitBB1 ], [ %38, %splitBB10 ], [ %52, %splitBB14 ], [ %0, %"1" ], [ %0, %"3" ], [ %0, %splitBB3 ], [ %0, %splitBB4 ], [ %0, %splitBB5 ], [ %0, %splitBB6 ], [ %0, %splitBB7 ], [ %0, %splitBB8 ], [ %0, %splitBB9 ], [ %0, %"4" ], [ %0, %splitBB11 ], [ %0, %splitBB12 ], [ %0, %splitBB13 ]
  ret i32 %53
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

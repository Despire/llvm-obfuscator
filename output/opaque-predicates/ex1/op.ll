; ModuleID = 'output/opaque-predicates/ex1/ex1.ll'
source_filename = "input/opaque-predicates/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %63, %1
  %3 = phi i32 [ %0, %1 ], [ %48, %63 ]
  %4 = phi i32 [ 0, %1 ], [ %49, %63 ]
  %5 = icmp sgt i32 %3, 0
  %6 = icmp eq i32 %0, 0
  %7 = icmp ne i32 %0, 0
  %8 = and i1 %6, %7
  %9 = xor i1 %6, %7
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = mul i32 %0, %0
  %13 = sub i32 %0, %0
  %14 = sdiv i32 %0, %0
  %15 = mul i32 %0, %0
  %16 = mul i32 %0, %0
  %17 = sub i32 %0, %0
  %18 = mul i32 %0, %0
  %19 = mul i32 %0, %0
  br label %20

20:                                               ; preds = %2, %11
  br i1 %5, label %21, label %47

21:                                               ; preds = %45, %20
  %22 = phi i32 [ %28, %45 ], [ %4, %20 ]
  %23 = phi i32 [ %25, %45 ], [ %3, %20 ]
  %24 = freeze i32 %23
  %25 = sdiv i32 %24, 10
  %26 = mul i32 %25, 10
  %27 = sub i32 %24, %26
  %28 = add nsw i32 %22, %27
  %29 = icmp sge i32 %3, %3
  %30 = icmp sle i32 %3, %3
  %31 = xor i1 %29, true
  %32 = or i1 %31, %30
  %33 = xor i1 %29, true
  %34 = sub i1 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %21
  %36 = mul i1 %9, %9
  %37 = mul i1 %6, %6
  %38 = sdiv i32 %0, %0
  %39 = sub i1 %9, %9
  %40 = sub i1 %8, %8
  %41 = sub i1 %5, %5
  %42 = add i32 %3, %3
  %43 = sdiv i1 %10, %10
  %44 = mul i32 %3, %3
  br label %45

45:                                               ; preds = %21, %35
  %46 = icmp sgt i32 %23, 9
  br i1 %46, label %21, label %47, !llvm.loop !10

47:                                               ; preds = %45, %20
  %48 = phi i32 [ %3, %20 ], [ %25, %45 ]
  %49 = phi i32 [ %4, %20 ], [ %28, %45 ]
  %50 = icmp eq i1 %8, false
  %51 = icmp ne i1 %8, false
  %52 = xor i1 %51, true
  %53 = and i1 %50, %52
  %54 = add i1 %53, %51
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = sdiv i1 %7, %7
  %57 = sub i32 %0, %0
  %58 = add i1 %8, %8
  %59 = mul i1 %5, %5
  %60 = sdiv i1 %8, %8
  %61 = add i1 %9, %9
  %62 = sub i1 %10, %10
  br label %63

63:                                               ; preds = %47, %55
  %64 = icmp eq i32 %48, 0
  br i1 %64, label %65, label %2, !llvm.loop !13

65:                                               ; preds = %63
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = icmp eq i32 %0, 0
  %5 = icmp ne i32 %0, 0
  %6 = xor i1 %5, true
  %7 = and i1 %4, %6
  %8 = add i1 %7, %5
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = sdiv i32 %0, %0
  %11 = sub i32 %0, %0
  %12 = sdiv i32 %0, %0
  %13 = sdiv i32 %0, %0
  %14 = add i32 %0, %0
  %15 = mul i32 %0, %0
  br label %16

16:                                               ; preds = %2, %9
  %17 = call i32 @_Z8digitSumi(i32 25)
  %18 = add nsw i32 %17, %3
  ret i32 %18
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

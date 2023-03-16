; ModuleID = 'output/opaque-predicates/ex4/ex4.ll'
source_filename = "input/opaque-predicates/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  br label %4

3:                                                ; preds = %23
  unreachable

4:                                                ; preds = %86, %2
  %5 = phi i32 [ %0, %2 ], [ %70, %86 ]
  %6 = phi i32 [ 0, %2 ], [ %71, %86 ]
  %7 = icmp eq i32 %0, 0
  %8 = icmp ne i32 %0, 0
  %9 = and i1 %7, %8
  %10 = xor i1 %7, %8
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = sub i32 %1, %1
  %14 = add i32 %0, %0
  %15 = sub i32 %1, %1
  %16 = add i32 %0, %0
  %17 = sdiv i32 %0, %0
  %18 = sdiv i32 %0, %0
  %19 = sub i32 %0, %0
  %20 = sub i32 %1, %1
  %21 = mul i32 %1, %1
  %22 = sdiv i32 %0, %0
  br label %23

23:                                               ; preds = %4, %12
  switch i32 %6, label %3 [
    i32 0, label %24
    i32 1, label %47
    i32 2, label %87
    i32 3, label %107
  ], !llvm.loop !10

24:                                               ; preds = %23
  %25 = icmp slt i32 %5, %1
  %26 = select i1 %25, i32 %1, i32 0
  %27 = icmp sge i1 %9, %9
  %28 = icmp sle i1 %9, %9
  %29 = xor i1 %27, true
  %30 = or i1 %29, %28
  %31 = xor i1 %27, true
  %32 = sub i1 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = sub i1 %11, %11
  %35 = mul i32 %0, %0
  %36 = sub i1 %8, %8
  %37 = add i32 %5, %5
  %38 = sub i1 %8, %8
  %39 = sub i1 %11, %11
  %40 = add i32 %0, %0
  %41 = mul i1 %7, %7
  %42 = add i32 %1, %1
  %43 = mul i32 %0, %0
  br label %44

44:                                               ; preds = %24, %33
  %45 = add nsw i32 %26, %5
  %46 = select i1 %25, i32 3, i32 1
  br label %69

47:                                               ; preds = %23
  %48 = icmp eq i32 %5, %1
  %49 = sub nsw i32 %1, %5
  %50 = select i1 %48, i32 %49, i32 %5
  %51 = icmp sge i32 %6, %6
  %52 = icmp sle i32 %6, %6
  %53 = xor i1 %52, true
  %54 = xor i1 %51, %53
  %55 = and i1 %54, %51
  br i1 %55, label %56, label %67

56:                                               ; preds = %47
  %57 = add i1 %8, %8
  %58 = add i1 %7, %7
  %59 = sub i1 %11, %11
  %60 = sub i32 %5, %5
  %61 = add i1 %10, %10
  %62 = sub i32 %5, %5
  %63 = sdiv i32 %5, %5
  %64 = sdiv i32 %5, %5
  %65 = sub i32 %1, %1
  %66 = mul i32 %5, %5
  br label %67

67:                                               ; preds = %47, %56
  %68 = select i1 %48, i32 3, i32 2
  br label %69

69:                                               ; preds = %104, %67, %44
  %70 = phi i32 [ %106, %104 ], [ %45, %44 ], [ %50, %67 ]
  %71 = phi i32 [ 3, %104 ], [ %46, %44 ], [ %68, %67 ]
  %72 = icmp sge i1 %7, %7
  %73 = icmp sle i1 %7, %7
  %74 = xor i1 %73, true
  %75 = xor i1 %72, %74
  %76 = and i1 %75, %72
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = sdiv i32 %0, %0
  %79 = add i1 %10, %10
  %80 = mul i32 %6, %6
  %81 = sub i1 %8, %8
  %82 = add i32 %0, %0
  %83 = mul i1 %7, %7
  %84 = sdiv i32 %1, %1
  %85 = add i1 %7, %7
  br label %86

86:                                               ; preds = %69, %77
  br label %4, !llvm.loop !10

87:                                               ; preds = %23
  %88 = icmp sge i32 %0, %0
  %89 = icmp sle i32 %0, %0
  %90 = xor i1 %88, true
  %91 = xor i1 %89, true
  %92 = or i1 %90, %91
  %93 = xor i1 %92, true
  %94 = and i1 %93, true
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = mul i1 %9, %9
  %97 = mul i1 %8, %8
  %98 = sdiv i32 %0, %0
  %99 = mul i32 %5, %5
  %100 = add i32 %0, %0
  %101 = add i32 %0, %0
  %102 = add i1 %10, %10
  %103 = mul i1 %8, %8
  br label %104

104:                                              ; preds = %87, %95
  %105 = shl i32 %5, 1
  %106 = sub i32 %105, %1
  br label %69

107:                                              ; preds = %23
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = icmp sge i32 %0, %0
  %4 = icmp sle i32 %0, %0
  %5 = xor i1 %4, true
  %6 = xor i1 %3, %5
  %7 = and i1 %6, %3
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = mul i32 %0, %0
  %10 = add i32 %0, %0
  %11 = mul i32 %0, %0
  %12 = add i32 %0, %0
  %13 = add i32 %0, %0
  %14 = sdiv i32 %0, %0
  %15 = sub i32 %0, %0
  br label %16

16:                                               ; preds = %2, %8
  %17 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %17
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

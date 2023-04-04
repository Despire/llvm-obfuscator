; ModuleID = 'output/opaque-predicates/ex4/ex4.ll'
source_filename = "input/opaque-predicates/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp sge i32 %0, %0
  %4 = mul i32 %0, %0
  %5 = add i32 %4, %0
  %6 = srem i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %3, %8
  %10 = and i1 %9, %3
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = sdiv i32 114, 86
  %13 = sub i32 67, 25
  %14 = add i32 39, 13
  %15 = sdiv i32 118, 88
  %16 = sdiv i32 118, 42
  %17 = sdiv i32 42, 98
  %18 = mul i32 107, 87
  %19 = add i32 8, 74
  br label %20

20:                                               ; preds = %2, %11
  br label %27

21:                                               ; preds = %50
  %22 = srem i32 %4, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %26

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %24
  unreachable

27:                                               ; preds = %88, %20
  %28 = phi i32 [ %0, %20 ], [ %82, %88 ]
  %29 = phi i32 [ 0, %20 ], [ %83, %88 ]
  %30 = add i32 %5, 1
  %31 = mul i32 3, %30
  %32 = add i32 %5, 2
  %33 = mul i32 %31, %32
  %34 = srem i32 %33, 6
  %35 = icmp eq i32 %34, 0
  %36 = mul i32 %5, %5
  %37 = add i32 %36, %5
  %38 = srem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %35, %40
  %42 = and i1 %41, %35
  br i1 %42, label %43, label %50

43:                                               ; preds = %27
  %44 = add i32 68, 106
  %45 = mul i32 59, 1
  %46 = add i32 63, 93
  %47 = add i32 34, 47
  %48 = sub i32 119, 85
  %49 = mul i32 94, 102
  br label %50

50:                                               ; preds = %27, %43
  switch i32 %29, label %21 [
    i32 0, label %51
    i32 1, label %61
    i32 2, label %89
    i32 3, label %97
  ], !llvm.loop !10

51:                                               ; preds = %50
  %52 = icmp slt i32 %28, %1
  %53 = select i1 %52, i32 %1, i32 0
  %54 = add nsw i32 %53, %28
  %55 = select i1 %52, i32 3, i32 1
  %56 = srem i32 %28, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %58
  br label %81

61:                                               ; preds = %50
  %62 = srem i32 %31, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = icmp eq i32 %28, %1
  %66 = add i32 %1, -322030813
  %67 = sub i32 %66, %28
  %68 = sub i32 %67, -322030813
  %69 = select i1 %65, i32 %68, i32 %28
  %70 = select i1 %65, i32 3, i32 2
  br label %76

71:                                               ; preds = %61
  %72 = icmp eq i32 %28, %1
  %73 = sub nsw i32 %1, %28
  %74 = select i1 %72, i32 %73, i32 %28
  %75 = select i1 %72, i32 3, i32 2
  br label %76

76:                                               ; preds = %71, %64
  %77 = phi i1 [ %72, %71 ], [ %65, %64 ]
  %78 = phi i32 [ %73, %71 ], [ %68, %64 ]
  %79 = phi i32 [ %74, %71 ], [ %69, %64 ]
  %80 = phi i32 [ %75, %71 ], [ %70, %64 ]
  br label %81

81:                                               ; preds = %96, %76, %60
  %82 = phi i32 [ %91, %96 ], [ %54, %60 ], [ %79, %76 ]
  %83 = phi i32 [ 3, %96 ], [ %55, %60 ], [ %80, %76 ]
  %84 = srem i32 %29, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %88

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %86
  br label %27, !llvm.loop !10

89:                                               ; preds = %50
  %90 = shl i32 %28, 1
  %91 = sub i32 %90, %1
  %92 = srem i32 %30, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %96

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %94
  br label %81

97:                                               ; preds = %50
  %98 = add i32 %5, 1
  %99 = mul i32 3, %98
  %100 = add i32 %5, 2
  %101 = mul i32 %99, %100
  %102 = srem i32 %101, 6
  %103 = icmp eq i32 %102, 0
  %104 = mul i32 %5, %5
  %105 = add i32 %104, %5
  %106 = srem i32 %105, 2
  %107 = icmp eq i32 %106, 0
  %108 = and i1 %103, %107
  %109 = xor i1 %103, %107
  %110 = or i1 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %97
  %112 = sub i32 53, 92
  %113 = mul i32 23, 45
  %114 = mul i32 27, 80
  %115 = sdiv i32 75, 88
  %116 = mul i32 6, 19
  %117 = sub i32 76, 90
  %118 = sdiv i32 80, 78
  %119 = sdiv i32 24, 13
  br label %120

120:                                              ; preds = %97, %111
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  %4 = srem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %6
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

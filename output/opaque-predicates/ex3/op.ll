; ModuleID = 'output/opaque-predicates/ex3/ex3.ll'
source_filename = "input/opaque-predicates/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = mul i32 3, %3
  %5 = add i32 %1, 2
  %6 = mul i32 %4, %5
  %7 = srem i32 %6, 6
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %1, %1
  %10 = add i32 %9, %1
  %11 = srem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = and i1 %8, %12
  %14 = xor i1 %8, %12
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = mul i32 19, 90
  %18 = mul i32 30, 63
  %19 = sub i32 78, 96
  %20 = add i32 75, 81
  %21 = sub i32 40, 12
  %22 = add i32 49, 13
  %23 = sub i32 28, 103
  %24 = sub i32 22, 101
  %25 = mul i32 23, 86
  br label %26

26:                                               ; preds = %2, %16
  %27 = icmp slt i32 %0, %1
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = add nsw i32 %1, %0
  %30 = srem i32 %10, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %32
  br label %104

35:                                               ; preds = %26
  %36 = srem i32 %1, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = icmp eq i32 %0, %1
  br label %42

40:                                               ; preds = %35
  %41 = icmp eq i32 %0, %1
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i1 [ %41, %40 ], [ %39, %38 ]
  br i1 %43, label %44, label %81

44:                                               ; preds = %42
  %45 = mul i32 %1, -2
  %46 = and i32 %6, 1
  %47 = icmp eq i32 %46, 0
  %48 = add i32 %6, 1
  %49 = mul i32 3, %48
  %50 = add i32 %6, 2
  %51 = mul i32 %49, %50
  %52 = srem i32 %51, 6
  %53 = icmp eq i32 %52, 0
  %54 = xor i1 %47, true
  %55 = and i1 %54, true
  %56 = and i1 %47, false
  %57 = or i1 %55, %56
  %58 = xor i1 %53, true
  %59 = and i1 %58, true
  %60 = and i1 %53, false
  %61 = or i1 %59, %60
  %62 = xor i1 %57, %61
  %63 = xor i1 %47, true
  %64 = xor i1 %53, true
  %65 = or i1 %63, %64
  %66 = xor i1 %65, true
  %67 = and i1 %66, true
  %68 = or i1 %62, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %44
  %70 = sdiv i32 115, 54
  %71 = sub i32 97, 102
  %72 = add i32 7, 121
  %73 = sub i32 39, 104
  %74 = add i32 51, 71
  %75 = add i32 98, 27
  %76 = sub i32 102, 121
  %77 = sub i32 78, 91
  %78 = mul i32 82, 80
  %79 = add i32 36, 32
  br label %80

80:                                               ; preds = %44, %69
  br label %104

81:                                               ; preds = %42
  %82 = and i32 %4, 1
  %83 = icmp eq i32 %82, 1
  %84 = mul i32 %4, %4
  %85 = add i32 %84, %4
  %86 = srem i32 %85, 2
  %87 = icmp eq i32 %86, 0
  %88 = xor i1 %87, true
  %89 = and i1 %83, %88
  %90 = add i1 %89, %87
  br i1 %90, label %91, label %101

91:                                               ; preds = %81
  %92 = add i32 60, 73
  %93 = mul i32 105, 9
  %94 = mul i32 92, 48
  %95 = add i32 59, 119
  %96 = sub i32 70, 39
  %97 = add i32 104, 53
  %98 = sdiv i32 49, 67
  %99 = sub i32 67, 40
  %100 = sub i32 101, 62
  br label %101

101:                                              ; preds = %81, %91
  %102 = shl i32 %0, 1
  %103 = sub i32 %102, %1
  br label %104

104:                                              ; preds = %101, %80, %34
  %105 = phi i32 [ %29, %34 ], [ %45, %80 ], [ %103, %101 ]
  %106 = add i32 %3, 1
  %107 = mul i32 3, %106
  %108 = add i32 %3, 2
  %109 = mul i32 %107, %108
  %110 = srem i32 %109, 6
  %111 = icmp eq i32 %110, 0
  %112 = mul i32 %3, %3
  %113 = add i32 %112, %3
  %114 = srem i32 %113, 2
  %115 = icmp eq i32 %114, 0
  %116 = xor i1 %111, true
  %117 = or i1 %116, %115
  %118 = xor i1 %111, true
  %119 = sub i1 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %104
  %121 = add i32 74, 126
  %122 = sub i32 39, 20
  %123 = add i32 73, 108
  %124 = sub i32 32, 109
  %125 = add i32 32, 88
  %126 = mul i32 62, 25
  br label %127

127:                                              ; preds = %104, %120
  ret i32 %105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = icmp sge i32 %0, %0
  %4 = mul i32 %0, %0
  %5 = add i32 %4, %0
  %6 = srem i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = xor i1 %3, true
  %9 = xor i1 %7, true
  %10 = or i1 %8, %9
  %11 = xor i1 %10, true
  %12 = and i1 %11, true
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = sdiv i32 83, 56
  %15 = sdiv i32 7, 111
  %16 = mul i32 64, 97
  %17 = add i32 10, 15
  %18 = mul i32 67, 74
  %19 = mul i32 126, 51
  %20 = sdiv i32 26, 94
  %21 = add i32 119, 116
  br label %22

22:                                               ; preds = %2, %13
  %23 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %23
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

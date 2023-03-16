; ModuleID = 'output/opaque-predicates/ex3/ex3.ll'
source_filename = "input/opaque-predicates/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, %1
  %4 = icmp sge i32 %1, %1
  %5 = icmp sle i32 %1, %1
  %6 = xor i1 %5, true
  %7 = xor i1 %4, %6
  %8 = and i1 %7, %4
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = sdiv i32 %0, %0
  %11 = add i32 %1, %1
  %12 = add i32 %0, %0
  %13 = add i32 %0, %0
  %14 = mul i32 %0, %0
  %15 = sub i32 %1, %1
  %16 = sdiv i32 %1, %1
  %17 = sub i32 %0, %0
  br label %18

18:                                               ; preds = %2, %9
  br i1 %3, label %19, label %38

19:                                               ; preds = %18
  %20 = icmp sge i1 %8, %8
  %21 = icmp sle i1 %8, %8
  %22 = xor i1 %20, true
  %23 = xor i1 %21, true
  %24 = or i1 %22, %23
  %25 = xor i1 %24, true
  %26 = and i1 %25, true
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = add i1 %4, %4
  %29 = mul i1 %5, %5
  %30 = sdiv i1 %6, %6
  %31 = mul i32 %1, %1
  %32 = mul i32 %0, %0
  %33 = sub i1 %6, %6
  %34 = sdiv i32 %0, %0
  %35 = sub i1 %8, %8
  br label %36

36:                                               ; preds = %19, %27
  %37 = add nsw i32 %1, %0
  br label %105

38:                                               ; preds = %18
  %39 = icmp eq i1 %5, false
  %40 = icmp ne i1 %5, false
  %41 = xor i1 %40, true
  %42 = and i1 %39, %41
  %43 = add i1 %42, %40
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = mul i32 %1, %1
  %46 = add i1 %8, %8
  %47 = sub i32 %0, %0
  %48 = mul i1 %5, %5
  %49 = add i1 %6, %6
  %50 = mul i1 %5, %5
  %51 = sub i1 %3, %3
  %52 = sdiv i1 %7, %7
  %53 = sdiv i32 %0, %0
  %54 = sdiv i1 %3, %3
  br label %55

55:                                               ; preds = %38, %44
  %56 = icmp eq i32 %0, %1
  br i1 %56, label %57, label %73

57:                                               ; preds = %55
  %58 = icmp eq i32 %1, 0
  %59 = icmp ne i32 %1, 0
  %60 = xor i1 %59, true
  %61 = and i1 %58, %60
  %62 = add i1 %61, %59
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = sdiv i32 %1, %1
  %65 = sub i1 %6, %6
  %66 = sub i1 %40, %40
  %67 = mul i1 %6, %6
  %68 = mul i1 %39, %39
  %69 = sdiv i1 %40, %40
  %70 = sdiv i32 %0, %0
  br label %71

71:                                               ; preds = %57, %63
  %72 = mul i32 %1, -2
  br label %105

73:                                               ; preds = %55
  %74 = shl i32 %0, 1
  %75 = sub i32 %74, %1
  %76 = icmp eq i1 %43, false
  %77 = icmp ne i1 %43, false
  %78 = xor i1 %76, true
  %79 = and i1 %78, false
  %80 = and i1 %76, true
  %81 = or i1 %79, %80
  %82 = xor i1 %77, true
  %83 = and i1 %82, false
  %84 = and i1 %77, true
  %85 = or i1 %83, %84
  %86 = xor i1 %81, %85
  %87 = xor i1 %76, true
  %88 = xor i1 %77, true
  %89 = or i1 %87, %88
  %90 = xor i1 %89, true
  %91 = and i1 %90, true
  %92 = or i1 %86, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %73
  %94 = add i1 %6, %6
  %95 = sub i1 %42, %42
  %96 = sdiv i32 %1, %1
  %97 = add i1 %56, %56
  %98 = sdiv i1 %40, %40
  %99 = sdiv i1 %41, %41
  %100 = add i1 %41, %41
  %101 = sub i1 %3, %3
  %102 = mul i1 %42, %42
  %103 = mul i1 %3, %3
  br label %104

104:                                              ; preds = %73, %93
  br label %105

105:                                              ; preds = %104, %71, %36
  %106 = phi i32 [ %37, %36 ], [ %72, %71 ], [ %75, %104 ]
  %107 = icmp sge i1 %3, %3
  %108 = icmp sle i1 %3, %3
  %109 = xor i1 %107, true
  %110 = or i1 %109, %108
  %111 = xor i1 %107, true
  %112 = sub i1 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = sdiv i1 %6, %6
  %115 = sdiv i1 %3, %3
  %116 = mul i1 %4, %4
  %117 = sub i1 %4, %4
  %118 = sdiv i32 %1, %1
  %119 = add i1 %8, %8
  br label %120

120:                                              ; preds = %105, %113
  ret i32 %106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  %4 = icmp sge i32 %0, %0
  %5 = icmp sle i32 %0, %0
  %6 = xor i1 %5, true
  %7 = xor i1 %4, %6
  %8 = and i1 %7, %4
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = sdiv i32 %0, %0
  %11 = add i32 %0, %0
  %12 = sub i32 %0, %0
  %13 = sdiv i32 %0, %0
  %14 = add i32 %0, %0
  %15 = sub i32 %0, %0
  %16 = mul i32 %0, %0
  %17 = sub i32 %0, %0
  br label %18

18:                                               ; preds = %2, %9
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

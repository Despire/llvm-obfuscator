; ModuleID = 'output/opaque-predicates/ex5/ex5.ll'
source_filename = "input/opaque-predicates/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %0, 0
  %5 = add i32 %0, 1
  %6 = mul i32 3, %5
  %7 = add i32 %0, 2
  %8 = mul i32 %6, %7
  %9 = srem i32 %8, 6
  %10 = icmp eq i32 %9, 0
  %11 = mul i32 %0, %0
  %12 = add i32 %11, %0
  %13 = srem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = xor i1 %14, true
  %16 = and i1 %10, %15
  %17 = add i1 %16, %14
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = sdiv i32 31, 125
  %20 = add i32 111, 38
  %21 = sub i32 111, 66
  %22 = mul i32 80, 7
  %23 = mul i32 113, 2
  %24 = sdiv i32 20, 107
  %25 = sdiv i32 33, 91
  %26 = mul i32 12, 74
  %27 = mul i32 83, 68
  br label %28

28:                                               ; preds = %3, %18
  br i1 %4, label %47, label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %2, align 4, !tbaa !10
  %31 = icmp sge i32 %0, %0
  %32 = mul i32 %0, %0
  %33 = add i32 %32, %0
  %34 = srem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %31, %36
  %38 = and i1 %37, %31
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = sdiv i32 19, 12
  %41 = sdiv i32 93, 68
  %42 = sdiv i32 97, 1
  %43 = sdiv i32 105, 39
  %44 = sdiv i32 58, 77
  %45 = add i32 109, 113
  br label %46

46:                                               ; preds = %29, %39
  br label %70

47:                                               ; preds = %28
  %48 = icmp sge i32 %9, %9
  %49 = mul i32 %9, %9
  %50 = add i32 %49, %9
  %51 = srem i32 %50, 2
  %52 = icmp eq i32 %51, 0
  %53 = xor i1 %48, true
  %54 = or i1 %53, %52
  %55 = xor i1 %48, true
  %56 = sub i1 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = add i32 49, 109
  %59 = mul i32 86, 45
  %60 = mul i32 6, 43
  %61 = mul i32 11, 82
  %62 = mul i32 103, 50
  %63 = mul i32 11, 108
  %64 = sub i32 13, 101
  %65 = sub i32 58, 4
  %66 = sdiv i32 92, 70
  br label %67

67:                                               ; preds = %47, %57
  %68 = add nuw nsw i32 %0, 7
  %69 = lshr i32 %68, 3
  br label %97

70:                                               ; preds = %116, %46
  %71 = phi i32 [ %30, %46 ], [ %99, %116 ]
  %72 = load i32, i32* %1, align 4, !tbaa !10
  %73 = add nsw i32 %72, %0
  %74 = and i32 %13, 1
  %75 = icmp eq i32 %74, 0
  %76 = add i32 %13, 1
  %77 = mul i32 3, %76
  %78 = add i32 %13, 2
  %79 = mul i32 %77, %78
  %80 = srem i32 %79, 6
  %81 = icmp eq i32 %80, 0
  %82 = and i1 %75, %81
  %83 = xor i1 %75, %81
  %84 = or i1 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %70
  %86 = mul i32 36, 42
  %87 = sub i32 89, 80
  %88 = mul i32 38, 94
  %89 = add i32 119, 69
  %90 = mul i32 73, 91
  %91 = sub i32 71, 112
  %92 = mul i32 113, 67
  %93 = sub i32 54, 108
  %94 = sdiv i32 75, 120
  br label %95

95:                                               ; preds = %70, %85
  %96 = add nsw i32 %73, %71
  ret i32 %96

97:                                               ; preds = %116, %67
  %98 = phi i32 [ %117, %116 ], [ 0, %67 ]
  %99 = load i32, i32* %1, align 4, !tbaa !10
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %1, align 4, !tbaa !10
  %101 = icmp sge i32 %0, %0
  %102 = mul i32 %0, %0
  %103 = add i32 %102, %0
  %104 = srem i32 %103, 2
  %105 = icmp eq i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %101, %106
  %108 = and i1 %107, %101
  br i1 %108, label %109, label %116

109:                                              ; preds = %97
  %110 = sdiv i32 66, 118
  %111 = sdiv i32 6, 123
  %112 = sub i32 95, 23
  %113 = sub i32 99, 61
  %114 = sdiv i32 69, 105
  %115 = sub i32 78, 110
  br label %116

116:                                              ; preds = %97, %109
  store i32 %99, i32* %2, align 4, !tbaa !10
  %117 = add nuw nsw i32 %98, 1
  %118 = icmp eq i32 %117, %69
  %119 = add i32 %0, 1
  %120 = mul i32 3, %119
  %121 = add i32 %0, 2
  %122 = mul i32 %120, %121
  %123 = srem i32 %122, 6
  %124 = icmp eq i32 %123, 0
  %125 = mul i32 %0, %0
  %126 = add i32 %125, %0
  %127 = srem i32 %126, 2
  %128 = icmp eq i32 %127, 0
  %129 = xor i1 %124, true
  %130 = xor i1 %128, true
  %131 = or i1 %129, %130
  %132 = xor i1 %131, true
  %133 = and i1 %132, true
  %134 = xor i1 %133, true
  %135 = xor i1 %118, %134
  %136 = and i1 %135, %118
  br i1 %136, label %70, label %97, !llvm.loop !14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #1 {
  %3 = and i32 %0, 1
  %4 = icmp eq i32 %3, 0
  %5 = add i32 %0, 1
  %6 = mul i32 3, %5
  %7 = add i32 %0, 2
  %8 = mul i32 %6, %7
  %9 = srem i32 %8, 6
  %10 = icmp eq i32 %9, 0
  %11 = xor i1 %10, true
  %12 = and i1 %4, %11
  %13 = add i1 %12, %10
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = sub i32 69, 122
  %16 = mul i32 101, 96
  %17 = add i32 19, 69
  %18 = sub i32 2, 63
  %19 = sdiv i32 118, 20
  %20 = mul i32 14, 57
  %21 = sdiv i32 111, 14
  %22 = sdiv i32 13, 51
  %23 = sdiv i32 16, 7
  %24 = add i32 20, 82
  br label %25

25:                                               ; preds = %2, %14
  ret i32 54
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}

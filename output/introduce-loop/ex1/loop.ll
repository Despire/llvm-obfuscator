; ModuleID = 'output/introduce-loop/ex1/ex1.ll'
source_filename = "input/introduce-loop/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = srem i32 %0, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %42

6:                                                ; preds = %27, %1
  %7 = add i32 22, 79
  %8 = add i32 106, 49
  %9 = add i32 88, 97
  %10 = add i32 97, 71
  %11 = add i32 124, 29
  %12 = add i32 83, 110
  %13 = srem i32 %3, 2
  %14 = icmp eq i32 %13, 0
  %15 = mul i32 %0, 2
  %16 = mul i32 %0, 2
  %17 = add i32 2, %16
  %18 = mul i32 %15, %17
  %19 = srem i32 %18, 4
  %20 = icmp eq i32 %19, 0
  %21 = mul i32 %0, %0
  %22 = mul i32 %21, %0
  %23 = add i32 %22, %0
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i1 %20, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %6
  %28 = mul i32 48, 112
  %29 = add i32 98, -94
  %30 = sub i32 126, -79
  %31 = sub i32 88, -62
  br i1 %26, label %37, label %6

32:                                               ; preds = %6
  %33 = mul i32 48, 112
  %34 = sub i32 98, 94
  %35 = add i32 126, 79
  %36 = add i32 88, 62
  br label %37

37:                                               ; preds = %27, %32
  %38 = phi i32 [ %33, %32 ], [ %28, %27 ]
  %39 = phi i32 [ %34, %32 ], [ %29, %27 ]
  %40 = phi i32 [ %35, %32 ], [ %30, %27 ]
  %41 = phi i32 [ %36, %32 ], [ %31, %27 ]
  br label %42

42:                                               ; preds = %37, %5
  br i1 %2, label %82, label %43

43:                                               ; preds = %73, %81, %42
  %44 = phi i32 [ %46, %81 ], [ 0, %42 ], [ 0, %73 ]
  %45 = phi i32 [ %47, %81 ], [ %0, %42 ], [ 0, %73 ]
  %46 = add nuw nsw i32 %44, 1
  %47 = sdiv i32 %45, 10
  %48 = add i32 %45, 9
  %49 = icmp ult i32 %48, 19
  %50 = srem i32 %0, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %81

53:                                               ; preds = %43
  %54 = add i32 97, 40
  %55 = mul i32 52, 96
  %56 = mul i32 22, 99
  %57 = sub i32 4, 112
  %58 = sub i32 60, 77
  %59 = sub i32 63, 22
  %60 = srem i32 %50, 2
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %3, 1
  %63 = icmp eq i32 %62, 1
  %64 = mul i32 %3, %3
  %65 = add i32 %64, %3
  %66 = srem i32 %65, 2
  %67 = icmp eq i32 %66, 0
  %68 = or i1 %63, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = sdiv i32 115, 83
  %71 = sdiv i32 75, 51
  %72 = mul i32 39, 5
  br label %77

73:                                               ; preds = %53
  %74 = sdiv i32 115, 83
  %75 = sdiv i32 75, 51
  %76 = mul i32 39, 5
  br i1 %68, label %77, label %43

77:                                               ; preds = %73, %69
  %78 = phi i32 [ %74, %73 ], [ %70, %69 ]
  %79 = phi i32 [ %75, %73 ], [ %71, %69 ]
  %80 = phi i32 [ %76, %73 ], [ %72, %69 ]
  br label %81

81:                                               ; preds = %77, %52
  br i1 %49, label %82, label %43, !llvm.loop !10

82:                                               ; preds = %99, %81, %42
  %83 = phi i32 [ 0, %42 ], [ %46, %81 ], [ 0, %99 ]
  %84 = srem i32 %3, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %126

86:                                               ; preds = %82
  %87 = add i32 3, 16
  %88 = mul i32 82, 86
  %89 = srem i32 %84, 2
  %90 = icmp eq i32 %89, 0
  %91 = and i32 %3, 1
  %92 = icmp eq i32 %91, 0
  %93 = mul i32 %3, %3
  %94 = add i32 %93, %3
  %95 = mul i32 %94, 3
  %96 = srem i32 %95, 2
  %97 = icmp eq i32 %96, 0
  %98 = or i1 %92, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %86
  %100 = add i32 66, 26
  %101 = sub i32 64, 21
  %102 = sdiv i32 35, 80
  %103 = mul i32 10, 30
  %104 = sub i32 56, 97
  %105 = sdiv i32 115, 3
  %106 = add i32 51, 21
  %107 = sdiv i32 35, 29
  br i1 %98, label %117, label %82

108:                                              ; preds = %86
  %109 = sub i32 381863180, 381863088
  %110 = sub i32 206407021, 206406978
  %111 = sdiv i32 35, 80
  %112 = mul i32 10, 30
  %113 = add i32 56, -97
  %114 = sdiv i32 115, 3
  %115 = add i32 38, 34
  %116 = sdiv i32 35, 29
  br label %117

117:                                              ; preds = %99, %108
  %118 = phi i32 [ %109, %108 ], [ %100, %99 ]
  %119 = phi i32 [ %110, %108 ], [ %101, %99 ]
  %120 = phi i32 [ %111, %108 ], [ %102, %99 ]
  %121 = phi i32 [ %112, %108 ], [ %103, %99 ]
  %122 = phi i32 [ %113, %108 ], [ %104, %99 ]
  %123 = phi i32 [ %114, %108 ], [ %105, %99 ]
  %124 = phi i32 [ %115, %108 ], [ %106, %99 ]
  %125 = phi i32 [ %116, %108 ], [ %107, %99 ]
  br label %127

126:                                              ; preds = %82
  br label %127

127:                                              ; preds = %126, %117
  ret i32 %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main() local_unnamed_addr #0 {
  %1 = call i32 @_Z8digitSumi(i32 15)
  %2 = call i32 @_Z8digitSumi(i32 25)
  %3 = add nsw i32 %2, %1
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

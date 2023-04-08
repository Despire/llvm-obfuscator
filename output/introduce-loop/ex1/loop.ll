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
  br label %27

6:                                                ; preds = %25, %1
  %7 = sub i32 121, 95
  %8 = add i32 103, 47
  %9 = mul i32 2, 76
  %10 = add i32 1, 93
  %11 = sub i32 123, 115
  %12 = add i32 92, 42
  %13 = sdiv i32 125, 65
  %14 = srem i32 %0, 2
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  %18 = mul i32 %3, %3
  %19 = add i32 %18, %3
  %20 = mul i32 %19, 3
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %26

25:                                               ; preds = %6
  br i1 %23, label %26, label %6

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %5
  br i1 %2, label %77, label %28

28:                                               ; preds = %62, %74, %27
  %29 = phi i32 [ %31, %74 ], [ 0, %27 ], [ 0, %62 ]
  %30 = phi i32 [ %32, %74 ], [ %0, %27 ], [ 0, %62 ]
  %31 = add nuw nsw i32 %29, 1
  %32 = sdiv i32 %30, 10
  %33 = srem i32 %0, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = add i32 %30, -264188309
  %37 = add i32 %36, 9
  %38 = sub i32 %37, -264188309
  %39 = icmp ult i32 %38, 19
  br label %74

40:                                               ; preds = %28
  %41 = sdiv i32 72, 122
  %42 = add i32 %30, 9
  %43 = sdiv i32 8, 33
  %44 = icmp ult i32 %42, 19
  %45 = add i32 72, 102
  %46 = mul i32 3, 70
  %47 = srem i32 %3, 2
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %3, 1
  %50 = icmp eq i32 %49, 1
  %51 = mul i32 %3, %3
  %52 = add i32 %51, %3
  %53 = srem i32 %52, 2
  %54 = icmp eq i32 %53, 0
  %55 = or i1 %50, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %40
  %57 = sub i32 -598233910, -598234001
  %58 = sub i32 -1166096384, -1166096543
  %59 = sub i32 1256809535, 1256809436
  %60 = sdiv i32 93, 22
  %61 = mul i32 86, 91
  br label %68

62:                                               ; preds = %40
  %63 = add i32 85, 6
  %64 = add i32 98, 61
  %65 = add i32 64, 35
  %66 = sdiv i32 93, 22
  %67 = mul i32 86, 91
  br i1 %55, label %68, label %28

68:                                               ; preds = %62, %56
  %69 = phi i32 [ %63, %62 ], [ %57, %56 ]
  %70 = phi i32 [ %64, %62 ], [ %58, %56 ]
  %71 = phi i32 [ %65, %62 ], [ %59, %56 ]
  %72 = phi i32 [ %66, %62 ], [ %60, %56 ]
  %73 = phi i32 [ %67, %62 ], [ %61, %56 ]
  br label %74

74:                                               ; preds = %68, %35
  %75 = phi i32 [ %42, %68 ], [ %38, %35 ]
  %76 = phi i1 [ %44, %68 ], [ %39, %35 ]
  br i1 %76, label %77, label %28, !llvm.loop !10

77:                                               ; preds = %102, %74, %27
  %78 = phi i32 [ 0, %27 ], [ %31, %74 ], [ 0, %102 ]
  %79 = srem i32 %3, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %118

82:                                               ; preds = %77
  %83 = mul i32 85, 3
  %84 = sdiv i32 18, 45
  %85 = srem i32 %0, 2
  %86 = icmp eq i32 %85, 0
  %87 = and i32 %3, 1
  %88 = icmp eq i32 %87, 1
  %89 = mul i32 %3, %3
  %90 = add i32 %89, %3
  %91 = srem i32 %90, 2
  %92 = icmp eq i32 %91, 0
  %93 = or i1 %88, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %82
  %95 = mul i32 76, 33
  %96 = sdiv i32 16, 19
  %97 = sdiv i32 54, 93
  %98 = sub i32 87, 106
  %99 = mul i32 107, 24
  %100 = sdiv i32 103, 14
  %101 = sub i32 104, 116
  br label %110

102:                                              ; preds = %82
  %103 = mul i32 76, 33
  %104 = sdiv i32 16, 19
  %105 = sdiv i32 54, 93
  %106 = add i32 -333555429, 333555410
  %107 = mul i32 107, 24
  %108 = sdiv i32 103, 14
  %109 = add i32 104, -116
  br i1 %93, label %110, label %77

110:                                              ; preds = %102, %94
  %111 = phi i32 [ %103, %102 ], [ %95, %94 ]
  %112 = phi i32 [ %104, %102 ], [ %96, %94 ]
  %113 = phi i32 [ %105, %102 ], [ %97, %94 ]
  %114 = phi i32 [ %106, %102 ], [ %98, %94 ]
  %115 = phi i32 [ %107, %102 ], [ %99, %94 ]
  %116 = phi i32 [ %108, %102 ], [ %100, %94 ]
  %117 = phi i32 [ %109, %102 ], [ %101, %94 ]
  br label %118

118:                                              ; preds = %110, %81
  ret i32 %78
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

; ModuleID = 'output/introduce-loop/ex1/ex1.ll'
source_filename = "input/introduce-loop/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  %2 = srem i32 %0, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %39

4:                                                ; preds = %21, %1
  %5 = sdiv i32 74, 101
  %6 = icmp eq i32 %0, 0
  %7 = add i32 94, 72
  %8 = srem i32 %0, 2
  %9 = icmp eq i32 %8, 0
  %10 = mul i32 %2, 2
  %11 = mul i32 %2, 2
  %12 = add i32 2, %11
  %13 = mul i32 %10, %12
  %14 = srem i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = mul i32 %2, %2
  %17 = add i32 %16, %2
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %15, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = sub i32 -1739865246, -1739865279
  %23 = add i32 91, -113
  %24 = add i32 120, -105
  %25 = sub i32 0, -78
  %26 = sdiv i32 104, 89
  br i1 %20, label %33, label %4

27:                                               ; preds = %4
  %28 = sub i32 123, 90
  %29 = sub i32 91, 113
  %30 = sub i32 120, 105
  %31 = add i32 63, 15
  %32 = sdiv i32 104, 89
  br label %33

33:                                               ; preds = %21, %27
  %34 = phi i32 [ %28, %27 ], [ %22, %21 ]
  %35 = phi i32 [ %29, %27 ], [ %23, %21 ]
  %36 = phi i32 [ %30, %27 ], [ %24, %21 ]
  %37 = phi i32 [ %31, %27 ], [ %25, %21 ]
  %38 = phi i32 [ %32, %27 ], [ %26, %21 ]
  br label %41

39:                                               ; preds = %1
  %40 = icmp eq i32 %0, 0
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi i1 [ %40, %39 ], [ %6, %33 ]
  br i1 %42, label %89, label %43

43:                                               ; preds = %63, %88, %41
  %44 = phi i32 [ %46, %88 ], [ 0, %41 ], [ 0, %63 ]
  %45 = phi i32 [ %47, %88 ], [ %0, %41 ], [ 0, %63 ]
  %46 = add nuw nsw i32 %44, 1
  %47 = sdiv i32 %45, 10
  %48 = add i32 %45, 9
  %49 = icmp ult i32 %48, 19
  %50 = srem i32 %0, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %43
  %53 = mul i32 27, 55
  %54 = srem i32 %47, 2
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %47, 1
  %57 = icmp eq i32 %56, 1
  %58 = mul i32 %47, %47
  %59 = add i32 %58, %47
  %60 = srem i32 %59, 2
  %61 = icmp eq i32 %60, 0
  %62 = or i1 %57, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %52
  %64 = sdiv i32 33, 67
  %65 = mul i32 110, 2
  %66 = sdiv i32 33, 78
  %67 = add i32 -1382781549, 1382781667
  %68 = add i32 20, -38
  %69 = add i32 30, -80
  %70 = mul i32 32, 10
  br i1 %62, label %79, label %43

71:                                               ; preds = %52
  %72 = sdiv i32 33, 67
  %73 = mul i32 110, 2
  %74 = sdiv i32 33, 78
  %75 = sub i32 120, 2
  %76 = sub i32 20, 38
  %77 = sub i32 30, 80
  %78 = mul i32 32, 10
  br label %79

79:                                               ; preds = %63, %71
  %80 = phi i32 [ %72, %71 ], [ %64, %63 ]
  %81 = phi i32 [ %73, %71 ], [ %65, %63 ]
  %82 = phi i32 [ %74, %71 ], [ %66, %63 ]
  %83 = phi i32 [ %75, %71 ], [ %67, %63 ]
  %84 = phi i32 [ %76, %71 ], [ %68, %63 ]
  %85 = phi i32 [ %77, %71 ], [ %69, %63 ]
  %86 = phi i32 [ %78, %71 ], [ %70, %63 ]
  br label %88

87:                                               ; preds = %43
  br label %88

88:                                               ; preds = %87, %79
  br i1 %49, label %89, label %43, !llvm.loop !10

89:                                               ; preds = %107, %88, %41
  %90 = phi i32 [ 0, %41 ], [ %46, %88 ], [ 0, %107 ]
  %91 = srem i32 %0, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %128

94:                                               ; preds = %89
  %95 = add i32 80, 116
  %96 = mul i32 116, 108
  %97 = srem i32 %2, 2
  %98 = icmp eq i32 %97, 0
  %99 = and i32 %91, 1
  %100 = icmp eq i32 %99, 0
  %101 = mul i32 %91, %91
  %102 = add i32 %101, %91
  %103 = mul i32 %102, 3
  %104 = srem i32 %103, 2
  %105 = icmp eq i32 %104, 0
  %106 = or i1 %100, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %94
  %108 = sub i32 84, 22
  %109 = sdiv i32 102, 63
  %110 = sub i32 53, 56
  %111 = mul i32 13, 49
  %112 = mul i32 108, 110
  %113 = sdiv i32 33, 27
  br i1 %106, label %121, label %89

114:                                              ; preds = %94
  %115 = add i32 84, -22
  %116 = sdiv i32 102, 63
  %117 = add i32 1111628117, -1111628120
  %118 = mul i32 13, 49
  %119 = mul i32 108, 110
  %120 = sdiv i32 33, 27
  br label %121

121:                                              ; preds = %107, %114
  %122 = phi i32 [ %115, %114 ], [ %108, %107 ]
  %123 = phi i32 [ %116, %114 ], [ %109, %107 ]
  %124 = phi i32 [ %117, %114 ], [ %110, %107 ]
  %125 = phi i32 [ %118, %114 ], [ %111, %107 ]
  %126 = phi i32 [ %119, %114 ], [ %112, %107 ]
  %127 = phi i32 [ %120, %114 ], [ %113, %107 ]
  br label %128

128:                                              ; preds = %121, %93
  ret i32 %90
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

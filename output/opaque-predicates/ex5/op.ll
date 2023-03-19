; ModuleID = 'output/opaque-predicates/ex5/ex5.ll'
source_filename = "input/opaque-predicates/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = icmp sge i32 %0, %0
  %5 = icmp sle i32 %0, %0
  %6 = xor i1 %4, true
  %7 = xor i1 %5, true
  %8 = or i1 %6, %7
  %9 = xor i1 %8, true
  %10 = and i1 %9, true
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = sdiv i32 -1727424018, -141755844
  %13 = sub i32 1859084428, 1043959996
  %14 = add i32 1827797720, 611243596
  %15 = sub i32 2036073099, 1898341139
  %16 = sdiv i32 -1387466854, 1696776938
  %17 = mul i32 -1337427973, -1836473426
  %18 = mul i32 746730281, 2109898523
  %19 = sub i32 887782262, 2077350723
  %20 = mul i32 -1067493047, -245497356
  br label %21

21:                                               ; preds = %3, %11
  %22 = icmp sgt i32 %0, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %2, align 4, !tbaa !10
  %25 = srem i1 %4, false
  %26 = icmp eq i1 %25, false
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %27
  br label %54

30:                                               ; preds = %21
  %31 = add nuw nsw i32 %0, 7
  %32 = lshr i32 %31, 3
  %33 = icmp sge i1 %5, %5
  %34 = icmp sle i1 %5, %5
  %35 = xor i1 %34, true
  %36 = xor i1 %33, %35
  %37 = and i1 %36, %33
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = sub i32 1369892096, 642415511
  %40 = sdiv i32 -1266056454, 798842481
  %41 = add i32 1893795731, 1152705410
  %42 = sub i32 53124465, -477754130
  %43 = mul i32 -710099788, 1889814179
  %44 = mul i32 -36608102, 173460807
  %45 = sdiv i32 -765387886, 1884526610
  %46 = sdiv i32 -2137288719, 1502628878
  %47 = mul i32 -1690646716, -915168250
  br label %48

48:                                               ; preds = %30, %38
  br label %64

.loopexit:                                        ; preds = %133
  %49 = srem i1 %139, false
  %50 = icmp eq i1 %49, false
  br i1 %50, label %51, label %52

51:                                               ; preds = %.loopexit
  br label %53

52:                                               ; preds = %.loopexit
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %29
  %55 = phi i32 [ %24, %29 ], [ %66, %53 ]
  %56 = load i32, i32* %1, align 4, !tbaa !10
  %57 = add nsw i32 %56, %0
  %58 = add nsw i32 %57, %55
  %59 = srem i32 %0, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %63

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %61
  ret i32 %58

64:                                               ; preds = %133, %48
  %65 = phi i32 [ %134, %133 ], [ 0, %48 ]
  %66 = load i32, i32* %1, align 4, !tbaa !10
  %67 = add nsw i32 %66, 1
  %68 = srem i1 %7, false
  %69 = icmp eq i1 %68, false
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  store i32 %67, i32* %1, align 4, !tbaa !10
  store i32 %66, i32* %2, align 4, !tbaa !10
  %71 = add nuw nsw i32 %65, 1
  %72 = icmp eq i32 %71, %32
  %73 = sub i32 0, %31
  %74 = icmp ne i32 %31, %73
  %75 = xor i32 %31, %31
  %76 = icmp eq i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %74, %77
  %79 = and i1 %78, %74
  %80 = xor i1 %72, true
  %81 = xor i1 %79, true
  %82 = or i1 %80, %81
  %83 = xor i1 %82, true
  %84 = and i1 %83, true
  br label %133

85:                                               ; preds = %64
  store i32 %67, i32* %1, align 4, !tbaa !10
  store i32 %66, i32* %2, align 4, !tbaa !10
  %86 = sub i32 %65, -1
  %87 = icmp eq i32 %86, %32
  %88 = sub i32 0, %31
  %89 = add i32 0, %88
  %90 = icmp ne i32 %31, %89
  %91 = or i32 %31, %31
  %92 = and i32 %31, %31
  %93 = sub i32 %91, %92
  %94 = icmp eq i32 %93, 0
  %95 = or i1 %94, true
  %96 = and i1 %94, true
  %97 = sub i1 %95, %96
  %98 = xor i1 %90, false
  %99 = xor i1 %97, false
  %100 = xor i1 %98, %99
  %101 = xor i1 %90, true
  %102 = xor i1 %100, %101
  %103 = and i1 %102, %100
  %104 = xor i1 %87, true
  %105 = and i1 %104, true
  %106 = and i1 %87, false
  %107 = or i1 %105, %106
  %108 = xor i1 %107, false
  %109 = xor i1 %103, false
  %110 = xor i1 %109, true
  %111 = xor i1 %108, true
  %112 = and i1 %111, false
  %113 = and i1 %108, true
  %114 = or i1 %112, %113
  %115 = xor i1 %110, true
  %116 = and i1 %115, false
  %117 = and i1 %110, true
  %118 = or i1 %116, %117
  %119 = xor i1 %114, %118
  %120 = xor i1 %108, true
  %121 = xor i1 %110, true
  %122 = or i1 %120, %121
  %123 = xor i1 %122, true
  %124 = and i1 %123, true
  %125 = or i1 %119, %124
  %126 = or i1 %125, true
  %127 = and i1 %125, true
  %128 = sub i1 %126, %127
  %129 = xor i1 %128, true
  %130 = or i1 %129, false
  %131 = xor i1 %130, true
  %132 = and i1 %131, true
  br label %133

133:                                              ; preds = %85, %70
  %134 = phi i32 [ %86, %85 ], [ %71, %70 ]
  %135 = phi i1 [ %87, %85 ], [ %72, %70 ]
  %136 = phi i32 [ %89, %85 ], [ %73, %70 ]
  %137 = phi i1 [ %90, %85 ], [ %74, %70 ]
  %138 = phi i32 [ %93, %85 ], [ %75, %70 ]
  %139 = phi i1 [ %94, %85 ], [ %76, %70 ]
  %140 = phi i1 [ %97, %85 ], [ %77, %70 ]
  %141 = phi i1 [ %100, %85 ], [ %78, %70 ]
  %142 = phi i1 [ %103, %85 ], [ %79, %70 ]
  %143 = phi i1 [ %108, %85 ], [ %80, %70 ]
  %144 = phi i1 [ %110, %85 ], [ %81, %70 ]
  %145 = phi i1 [ %125, %85 ], [ %82, %70 ]
  %146 = phi i1 [ %128, %85 ], [ %83, %70 ]
  %147 = phi i1 [ %132, %85 ], [ %84, %70 ]
  br i1 %147, label %.loopexit, label %64, !llvm.loop !14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #1 {
  %3 = srem i32 %0, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %5
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

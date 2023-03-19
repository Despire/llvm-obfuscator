; ModuleID = 'output/opaque-predicates/ex1/ex1.ll'
source_filename = "input/opaque-predicates/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  %2 = icmp sge i32 %0, %0
  %3 = icmp sle i32 %0, %0
  %4 = xor i1 %2, true
  %5 = or i1 %4, %3
  %6 = xor i1 %2, true
  %7 = sub i1 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = mul i32 -1117797285, -1052559785
  %10 = sub i32 174423983, 350695686
  %11 = sdiv i32 812449399, 1338477154
  %12 = add i32 1286038170, -2107561705
  %13 = add i32 1467822575, -1561366118
  %14 = add i32 545266998, 1440726309
  %15 = sub i32 1756666901, -1064316043
  %16 = mul i32 -524582067, -1689623602
  br label %17

17:                                               ; preds = %1, %8
  br label %18

18:                                               ; preds = %147, %17
  %19 = phi i32 [ %0, %17 ], [ %119, %147 ]
  %20 = phi i32 [ 0, %17 ], [ %120, %147 ]
  %21 = icmp sgt i32 %19, 0
  %22 = sub i32 0, %0
  %23 = icmp ne i32 %0, %22
  %24 = xor i32 %0, %0
  %25 = icmp eq i32 %24, 0
  %26 = xor i1 %23, true
  %27 = or i1 %26, %25
  %28 = xor i1 %23, true
  %29 = icmp sge i1 %7, %7
  %30 = icmp sle i1 %7, %7
  %31 = xor i1 %30, true
  %32 = xor i1 %29, %31
  %33 = and i1 %32, %29
  br i1 %33, label %34, label %45

34:                                               ; preds = %18
  %35 = sdiv i32 -1962728762, 569122395
  %36 = sdiv i32 -1955132856, 339540069
  %37 = sub i32 -1731230219, 451870949
  %38 = mul i32 815956327, -1226501579
  %39 = sdiv i32 -627043306, -1868481759
  %40 = sdiv i32 1128106293, 949943809
  %41 = sdiv i32 1152124051, 1558777137
  %42 = mul i32 -1407886954, 1730312162
  %43 = sdiv i32 -607227073, 1498913561
  %44 = sdiv i32 1701317498, 867041931
  br label %45

45:                                               ; preds = %18, %34
  %46 = sub i1 %27, %28
  %47 = xor i1 %21, true
  %48 = xor i1 %46, true
  %49 = or i1 %47, %48
  %50 = xor i1 %49, true
  %51 = and i1 %50, true
  br i1 %51, label %.preheader, label %118

.preheader:                                       ; preds = %45
  %52 = icmp eq i32 %19, 0
  %53 = icmp ne i32 %19, 0
  %54 = xor i1 %53, true
  %55 = and i1 %52, %54
  %56 = add i1 %55, %53
  br i1 %56, label %57, label %65

57:                                               ; preds = %.preheader
  %58 = sub i32 -666971967, 395231339
  %59 = add i32 1037187966, -29078055
  %60 = mul i32 1443751313, -1322359924
  %61 = mul i32 1229771780, -1472740253
  %62 = sub i32 -569484469, -1663191400
  %63 = add i32 113538480, 1911928386
  %64 = sdiv i32 1070013758, 845132400
  br label %65

65:                                               ; preds = %.preheader, %57
  br label %66

66:                                               ; preds = %65, %89
  %67 = phi i32 [ %73, %89 ], [ %20, %65 ]
  %68 = phi i32 [ %70, %89 ], [ %19, %65 ]
  %69 = freeze i32 %68
  %70 = sdiv i32 %69, 10
  %71 = mul i32 %70, 10
  %72 = sub i32 %69, %71
  %73 = add nsw i32 %67, %72
  %74 = icmp sgt i32 %68, 9
  %75 = icmp sge i1 %54, %54
  %76 = icmp sle i1 %54, %54
  %77 = xor i1 %75, true
  %78 = xor i1 %76, true
  %79 = or i1 %77, %78
  %80 = xor i1 %79, true
  %81 = and i1 %80, true
  br i1 %81, label %82, label %89

82:                                               ; preds = %66
  %83 = sub i32 -272702953, -1259765411
  %84 = add i32 -127781151, 1522011654
  %85 = sub i32 -1090047272, 1308695402
  %86 = mul i32 -29353386, -129946413
  %87 = add i32 2119431492, 1019189303
  %88 = sub i32 -52241036, 1487290374
  br label %89

89:                                               ; preds = %66, %82
  %90 = and i1 %21, true
  %91 = icmp eq i1 %90, false
  %92 = and i1 %21, true
  %93 = icmp eq i1 %92, true
  %94 = xor i1 %91, true
  %95 = and i1 %94, false
  %96 = and i1 %91, true
  %97 = or i1 %95, %96
  %98 = xor i1 %93, true
  %99 = and i1 %98, false
  %100 = and i1 %93, true
  %101 = or i1 %99, %100
  %102 = xor i1 %97, %101
  %103 = xor i1 %91, true
  %104 = xor i1 %93, true
  %105 = or i1 %103, %104
  %106 = xor i1 %105, true
  %107 = and i1 %106, true
  %108 = or i1 %102, %107
  %109 = xor i1 %74, true
  %110 = or i1 %109, %108
  %111 = xor i1 %74, true
  %112 = sub i1 %110, %111
  br i1 %112, label %66, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %89
  %113 = srem i1 %30, false
  %114 = icmp eq i1 %113, false
  br i1 %114, label %115, label %116

115:                                              ; preds = %.loopexit
  br label %117

116:                                              ; preds = %.loopexit
  br label %117

117:                                              ; preds = %116, %115
  br label %118

118:                                              ; preds = %117, %45
  %119 = phi i32 [ %19, %45 ], [ %70, %117 ]
  %120 = phi i32 [ %20, %45 ], [ %73, %117 ]
  %121 = icmp eq i32 %119, 0
  %122 = icmp eq i1 %31, false
  %123 = icmp ne i1 %31, false
  %124 = xor i1 %122, true
  %125 = and i1 %124, true
  %126 = and i1 %122, false
  %127 = or i1 %125, %126
  %128 = xor i1 %123, true
  %129 = and i1 %128, true
  %130 = and i1 %123, false
  %131 = or i1 %129, %130
  %132 = xor i1 %127, %131
  %133 = xor i1 %122, true
  %134 = xor i1 %123, true
  %135 = or i1 %133, %134
  %136 = xor i1 %135, true
  %137 = and i1 %136, true
  %138 = or i1 %132, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %118
  %140 = sub i32 -1644756434, 1612019498
  %141 = add i32 1328153698, -221933552
  %142 = sdiv i32 -524941046, -1133040295
  %143 = sdiv i32 -93511178, 1559470728
  %144 = sub i32 239946756, 954076172
  %145 = sdiv i32 1167984135, -242530664
  %146 = add i32 -1646852073, -258429228
  br label %147

147:                                              ; preds = %118, %139
  br i1 %121, label %148, label %18, !llvm.loop !13

148:                                              ; preds = %147
  %149 = srem i1 %135, false
  %150 = icmp eq i1 %149, false
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %153

152:                                              ; preds = %148
  br label %153

153:                                              ; preds = %152, %151
  ret i32 %120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = call i32 @_Z8digitSumi(i32 25)
  %5 = icmp sge i32 %0, %0
  %6 = icmp sle i32 %0, %0
  %7 = xor i1 %6, true
  %8 = xor i1 %5, %7
  %9 = and i1 %8, %5
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = add i32 -832368584, 1653918606
  %12 = sdiv i32 -631892784, 2136281194
  %13 = sub i32 1968613272, -1808969939
  %14 = sub i32 -1787096457, 1178578062
  %15 = sub i32 -495667856, -880332556
  %16 = mul i32 -1867113492, -1999445189
  %17 = sdiv i32 -88211570, -463617997
  %18 = sdiv i32 -1903661559, 193177997
  %19 = sdiv i32 -139305650, 559106782
  br label %20

20:                                               ; preds = %2, %10
  %21 = add nsw i32 %4, %3
  ret i32 %21
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

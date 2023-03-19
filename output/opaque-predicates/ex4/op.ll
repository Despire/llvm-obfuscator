; ModuleID = 'output/opaque-predicates/ex4/ex4.ll'
source_filename = "input/opaque-predicates/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  %6 = xor i1 %3, %4
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = add i32 1393880919, -181125551
  %10 = sub i32 -2059102843, -1203909233
  %11 = add i32 -69874292, 127260586
  %12 = mul i32 1616455716, -1116138966
  %13 = sub i32 -1359182232, -1808964668
  %14 = mul i32 -1861178330, 1114002866
  %15 = sub i32 -351618052, -775259015
  %16 = add i32 -628729462, -1805487318
  %17 = add i32 530576503, -1829563939
  %18 = mul i32 -198020993, 1805070066
  br label %19

19:                                               ; preds = %2, %8
  br label %36

20:                                               ; preds = %52
  %21 = icmp sge i32 %37, %37
  %22 = icmp sle i32 %37, %37
  %23 = xor i1 %21, true
  %24 = xor i1 %22, true
  %25 = or i1 %23, %24
  %26 = xor i1 %25, true
  %27 = and i1 %26, true
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = mul i32 -1618423814, -1282556426
  %30 = sdiv i32 601136041, 969514436
  %31 = mul i32 -2049840105, 60964695
  %32 = sdiv i32 1304798750, 660918385
  %33 = sdiv i32 -1683872496, 837352402
  %34 = sdiv i32 1369479404, -2035841267
  br label %35

35:                                               ; preds = %20, %28
  unreachable

36:                                               ; preds = %113, %19
  %37 = phi i32 [ %0, %19 ], [ %93, %113 ]
  %38 = phi i32 [ 0, %19 ], [ %94, %113 ]
  %39 = icmp sge i1 %6, %6
  %40 = icmp sle i1 %6, %6
  %41 = xor i1 %40, true
  %42 = xor i1 %39, %41
  %43 = and i1 %42, %39
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = add i32 2093195524, -1940761304
  %46 = add i32 1494388036, -1653067059
  %47 = sub i32 -1171291847, -560551806
  %48 = sdiv i32 808415906, -1597331719
  %49 = sub i32 345933726, -1825541710
  %50 = sdiv i32 1335934490, 221450883
  %51 = sdiv i32 -1288746532, 817696714
  br label %52

52:                                               ; preds = %36, %44
  switch i32 %38, label %20 [
    i32 0, label %53
    i32 1, label %71
    i32 2, label %114
    i32 3, label %127
  ], !llvm.loop !10

53:                                               ; preds = %52
  %54 = icmp sge i1 %5, %5
  %55 = icmp sle i1 %5, %5
  %56 = xor i1 %55, true
  %57 = xor i1 %54, %56
  %58 = and i1 %57, %54
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = sub i32 394099958, -1894738812
  %61 = sdiv i32 -1200645259, -875241077
  %62 = sub i32 918565070, -706265678
  %63 = sdiv i32 1711573670, 62035453
  %64 = sub i32 -780350002, 959900756
  %65 = sub i32 199724620, 1625642478
  br label %66

66:                                               ; preds = %53, %59
  %67 = icmp slt i32 %37, %1
  %68 = select i1 %67, i32 %1, i32 0
  %69 = add nsw i32 %68, %37
  %70 = select i1 %67, i32 3, i32 1
  br label %92

71:                                               ; preds = %52
  %72 = icmp eq i32 %37, 0
  %73 = icmp ne i32 %37, 0
  %74 = and i1 %72, %73
  %75 = xor i1 %72, %73
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = sub i32 1336259474, 1125210867
  %79 = sdiv i32 189496899, -1782962664
  %80 = sub i32 228918515, -420915255
  %81 = sub i32 594965449, 575121209
  %82 = add i32 427242895, -129627196
  %83 = sub i32 -1209008922, -1369859934
  %84 = sdiv i32 -284034561, -1613403121
  %85 = sub i32 890685250, -413063173
  %86 = add i32 253859168, 1684751916
  br label %87

87:                                               ; preds = %71, %77
  %88 = icmp eq i32 %37, %1
  %89 = sub nsw i32 %1, %37
  %90 = select i1 %88, i32 %89, i32 %37
  %91 = select i1 %88, i32 3, i32 2
  br label %92

92:                                               ; preds = %124, %87, %66
  %93 = phi i32 [ %126, %124 ], [ %69, %66 ], [ %90, %87 ]
  %94 = phi i32 [ 3, %124 ], [ %70, %66 ], [ %91, %87 ]
  %95 = icmp sge i1 %39, %39
  %96 = icmp sle i1 %39, %39
  %97 = xor i1 %95, true
  %98 = xor i1 %96, true
  %99 = or i1 %97, %98
  %100 = xor i1 %99, true
  %101 = and i1 %100, true
  br i1 %101, label %102, label %113

102:                                              ; preds = %92
  %103 = sdiv i32 -545642763, -1500737567
  %104 = mul i32 -1930834052, 1941723543
  %105 = sdiv i32 -1601422091, -1230590103
  %106 = mul i32 -640932287, -1464790616
  %107 = sdiv i32 1347741987, -2038771795
  %108 = sdiv i32 -827707962, -1147654921
  %109 = add i32 1711379064, 1108010177
  %110 = sub i32 1913586296, 1357520978
  %111 = sdiv i32 1475497016, 1368413119
  %112 = sub i32 -403464498, 1174613344
  br label %113

113:                                              ; preds = %92, %102
  br label %36, !llvm.loop !10

114:                                              ; preds = %52
  %115 = srem i1 %43, false
  %116 = icmp eq i1 %115, false
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = shl i32 %37, 1
  %119 = sub i32 %118, %1
  br label %124

120:                                              ; preds = %114
  %121 = shl i32 %37, 1
  %122 = sub i32 0, %1
  %123 = add i32 %121, %122
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi i32 [ %121, %120 ], [ %118, %117 ]
  %126 = phi i32 [ %123, %120 ], [ %119, %117 ]
  br label %92

127:                                              ; preds = %52
  %128 = srem i1 %39, false
  %129 = icmp eq i1 %128, false
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %132

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131, %130
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  %4 = icmp eq i32 %0, 0
  %5 = icmp ne i32 %0, 0
  %6 = xor i1 %5, true
  %7 = and i1 %4, %6
  %8 = add i1 %7, %5
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = mul i32 1623513867, -92684661
  %11 = mul i32 -1554133021, 572940020
  %12 = add i32 -1914005013, -297115393
  %13 = mul i32 -135041455, -2118182412
  %14 = mul i32 -1472318466, -406317058
  %15 = add i32 408292949, -1863509074
  %16 = sub i32 -1680849788, 154413213
  %17 = add i32 531812810, 2014533061
  %18 = mul i32 -316903325, -2052585090
  %19 = sub i32 1177133028, 752037329
  br label %20

20:                                               ; preds = %2, %9
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

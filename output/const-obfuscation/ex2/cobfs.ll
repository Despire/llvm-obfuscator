; ModuleID = 'output/const-obfuscation/ex2/ex2.ll'
source_filename = "input/const-obfuscation/ex2/ex2.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ %0, %1 ], [ %95, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %58, %2 ]
  %5 = sext i32 %0 to i64
  %6 = and i64 %5, -6632957918170235512
  %7 = xor i64 %5, -1
  %8 = or i64 6632957918170235511, %7
  %9 = xor i64 %8, -1
  %10 = and i64 %9, -1
  %11 = sext i32 %0 to i64
  %12 = or i64 %11, 3040658119125040608
  %13 = xor i64 %11, -1
  %14 = and i64 %13, -111035402300454369
  %15 = and i64 %11, 111035402300454368
  %16 = or i64 %14, %15
  %17 = xor i64 -3150527901607561217, %16
  %18 = xor i64 %11, -1
  %19 = or i64 -3040658119125040609, %18
  %20 = xor i64 %19, -1
  %21 = and i64 %20, -1
  %22 = or i64 %17, %21
  %23 = sext i32 %0 to i64
  %24 = or i64 %23, 8560654125594404261
  %25 = xor i64 %23, -1
  %26 = and i64 %25, -2379295174495105554
  %27 = and i64 %23, 2379295174495105553
  %28 = or i64 %26, %27
  %29 = xor i64 -6325721054784100277, %28
  %30 = xor i64 %23, -1
  %31 = or i64 -8560654125594404262, %30
  %32 = xor i64 %31, -1
  %33 = and i64 %32, -1
  %34 = or i64 %29, %33
  %35 = xor i64 %34, %24
  %36 = xor i64 %35, %10
  %37 = xor i64 %36, 7527933623603593611
  %38 = xor i64 %37, %6
  %39 = xor i64 %38, %12
  %40 = xor i64 %39, %22
  %41 = sext i32 %0 to i64
  %42 = and i64 %41, -2599096082504810357
  %43 = xor i64 %41, -1
  %44 = or i64 2599096082504810356, %43
  %45 = xor i64 %44, -1
  %46 = and i64 %45, -1
  %47 = sext i32 %0 to i64
  %48 = or i64 %47, 4310189379511967115
  %49 = and i64 4310189379511967115, %47
  %50 = xor i64 4310189379511967115, %47
  %51 = or i64 %49, %50
  %52 = xor i64 %51, %48
  %53 = xor i64 %52, %46
  %54 = xor i64 %53, -6067087046419931613
  %55 = xor i64 %54, %42
  %56 = mul i64 %40, %55
  %57 = trunc i64 %56 to i32
  %58 = add nuw nsw i32 %4, %57
  %59 = sext i32 %0 to i64
  %60 = and i64 %59, -7823207610453346686
  %61 = or i64 7823207610453346685, %59
  %62 = sub i64 %61, 7823207610453346685
  %63 = sext i32 %0 to i64
  %64 = and i64 %63, 6373833503102783928
  %65 = xor i64 %63, -1
  %66 = or i64 -6373833503102783929, %65
  %67 = xor i64 %66, -1
  %68 = and i64 %67, -1
  %69 = sext i32 %0 to i64
  %70 = add i64 %69, -3345065174080505827
  %71 = sub i64 0, %69
  %72 = sub i64 -3345065174080505827, %71
  %73 = xor i64 -2857758861991432983, %68
  %74 = xor i64 %73, %72
  %75 = xor i64 %74, %62
  %76 = xor i64 %75, %60
  %77 = xor i64 %76, %64
  %78 = xor i64 %77, %70
  %79 = sext i32 %0 to i64
  %80 = and i64 %79, -4902463439338566841
  %81 = xor i64 %79, -1
  %82 = xor i64 -4902463439338566841, %81
  %83 = and i64 %82, -4902463439338566841
  %84 = sext i32 %0 to i64
  %85 = add i64 %84, -6985614119235370293
  %86 = and i64 -6985614119235370293, %84
  %87 = or i64 -6985614119235370293, %84
  %88 = add i64 %86, %87
  %89 = xor i64 %88, %83
  %90 = xor i64 %89, -5200291990200045190
  %91 = xor i64 %90, %80
  %92 = xor i64 %91, %85
  %93 = mul i64 %78, %92
  %94 = trunc i64 %93 to i32
  %95 = sdiv i32 %3, %94
  %96 = sext i32 %0 to i64
  %97 = and i64 %96, 4589259134581956829
  %98 = or i64 -4589259134581956830, %96
  %99 = sub i64 %98, -4589259134581956830
  %100 = sext i32 %0 to i64
  %101 = add i64 %100, 6747156292365852850
  %102 = add i64 5224410147525309043, %100
  %103 = sub i64 %102, -1522746144840543807
  %104 = xor i64 %97, %103
  %105 = xor i64 %104, -7768304738459972039
  %106 = xor i64 %105, %101
  %107 = xor i64 %106, %99
  %108 = sext i32 %0 to i64
  %109 = or i64 %108, -1810850571913022484
  %110 = xor i64 %108, -1
  %111 = and i64 -1810850571913022484, %110
  %112 = add i64 %111, %108
  %113 = sext i32 %0 to i64
  %114 = add i64 %113, 4637401759878025047
  %115 = xor i64 4637401759878025047, %113
  %116 = and i64 4637401759878025047, %113
  %117 = mul i64 2, %116
  %118 = add i64 %115, %117
  %119 = xor i64 %118, %114
  %120 = xor i64 %119, %109
  %121 = xor i64 %120, %112
  %122 = xor i64 %121, 4350673928387788881
  %123 = mul i64 %107, %122
  %124 = trunc i64 %123 to i32
  %125 = add i32 %3, %124
  %126 = sext i32 %0 to i64
  %127 = or i64 %126, -1761041215463182101
  %128 = and i64 -1761041215463182101, %126
  %129 = xor i64 -1761041215463182101, %126
  %130 = or i64 %128, %129
  %131 = sext i32 %0 to i64
  %132 = and i64 %131, 5933863717444815369
  %133 = xor i64 %131, -1
  %134 = xor i64 5933863717444815369, %133
  %135 = and i64 %134, 5933863717444815369
  %136 = sext i32 %0 to i64
  %137 = and i64 %136, -9005728669622362900
  %138 = xor i64 %136, -1
  %139 = or i64 9005728669622362899, %138
  %140 = xor i64 %139, -1
  %141 = and i64 %140, -1
  %142 = xor i64 %135, %137
  %143 = xor i64 %142, 6001043199734417331
  %144 = xor i64 %143, %130
  %145 = xor i64 %144, %141
  %146 = xor i64 %145, %127
  %147 = xor i64 %146, %132
  %148 = sext i32 %0 to i64
  %149 = and i64 %148, -1648850755739301258
  %150 = xor i64 %148, -1
  %151 = or i64 1648850755739301257, %150
  %152 = xor i64 %151, -1
  %153 = and i64 %152, -1
  %154 = sext i32 %0 to i64
  %155 = or i64 %154, -4528084214327611959
  %156 = and i64 -4528084214327611959, %154
  %157 = xor i64 -4528084214327611959, %154
  %158 = or i64 %156, %157
  %159 = sext i32 %0 to i64
  %160 = or i64 %159, -4187766778882302729
  %161 = and i64 -4187766778882302729, %159
  %162 = xor i64 -4187766778882302729, %159
  %163 = or i64 %161, %162
  %164 = xor i64 %155, %158
  %165 = xor i64 %164, -4712435713484032479
  %166 = xor i64 %165, %160
  %167 = xor i64 %166, %163
  %168 = xor i64 %167, %149
  %169 = xor i64 %168, %153
  %170 = mul i64 %147, %169
  %171 = trunc i64 %170 to i32
  %172 = icmp ult i32 %125, %171
  br i1 %172, label %173, label %2, !llvm.loop !10

173:                                              ; preds = %2
  ret i32 %58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = or i64 %3, 3227291635468578017
  %5 = xor i64 %3, -1
  %6 = and i64 3227291635468578017, %5
  %7 = add i64 %6, %3
  %8 = sext i32 %0 to i64
  %9 = and i64 %8, -7330552394481927553
  %10 = xor i64 %8, -1
  %11 = xor i64 -7330552394481927553, %10
  %12 = and i64 %11, -7330552394481927553
  %13 = xor i64 %12, %7
  %14 = xor i64 %13, %4
  %15 = xor i64 %14, %9
  %16 = xor i64 %15, -5520550898518419319
  %17 = sext i32 %0 to i64
  %18 = and i64 %17, 3564736656828634311
  %19 = or i64 -3564736656828634312, %17
  %20 = sub i64 %19, -3564736656828634312
  %21 = sext i32 %0 to i64
  %22 = add i64 %21, 6920256274351266512
  %23 = sub i64 0, %21
  %24 = add i64 -6920256274351266512, %23
  %25 = sub i64 0, %24
  %26 = sext i32 %0 to i64
  %27 = add i64 %26, -6257477299389302965
  %28 = xor i64 -6257477299389302965, %26
  %29 = and i64 -6257477299389302965, %26
  %30 = mul i64 2, %29
  %31 = add i64 %28, %30
  %32 = xor i64 %20, 5112296743420394967
  %33 = xor i64 %32, %27
  %34 = xor i64 %33, %22
  %35 = xor i64 %34, %18
  %36 = xor i64 %35, %25
  %37 = xor i64 %36, %31
  %38 = mul i64 %16, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @_Z8digitSumi(i32 %39)
  %41 = sext i32 %0 to i64
  %42 = and i64 %41, 2571320612965157881
  %43 = xor i64 %41, -1
  %44 = or i64 -2571320612965157882, %43
  %45 = xor i64 %44, -1
  %46 = and i64 %45, -1
  %47 = sext i32 %0 to i64
  %48 = or i64 %47, -7227732778330699303
  %49 = xor i64 %47, -1
  %50 = and i64 %49, 5333628229338158049
  %51 = and i64 %47, -5333628229338158050
  %52 = or i64 %50, %51
  %53 = xor i64 -3335700812841838024, %52
  %54 = xor i64 %47, -1
  %55 = or i64 7227732778330699302, %54
  %56 = xor i64 %55, -1
  %57 = and i64 %56, -1
  %58 = or i64 %53, %57
  %59 = xor i64 %58, %48
  %60 = xor i64 %59, 4718468338915794141
  %61 = xor i64 %60, %42
  %62 = xor i64 %61, %46
  %63 = sext i32 %0 to i64
  %64 = and i64 %63, -5265885914540737389
  %65 = or i64 5265885914540737388, %63
  %66 = sub i64 %65, 5265885914540737388
  %67 = sext i32 %0 to i64
  %68 = and i64 %67, -2326520821608528915
  %69 = xor i64 %67, -1
  %70 = or i64 2326520821608528914, %69
  %71 = xor i64 %70, -1
  %72 = and i64 %71, -1
  %73 = sext i32 %0 to i64
  %74 = add i64 %73, 6409830163858476693
  %75 = and i64 6409830163858476693, %73
  %76 = or i64 6409830163858476693, %73
  %77 = add i64 %75, %76
  %78 = xor i64 %64, %66
  %79 = xor i64 %78, %72
  %80 = xor i64 %79, %68
  %81 = xor i64 %80, -9033523578700075411
  %82 = xor i64 %81, %77
  %83 = xor i64 %82, %74
  %84 = mul i64 %62, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @_Z8digitSumi(i32 %85)
  %87 = add nsw i32 %86, %40
  ret i32 %87
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

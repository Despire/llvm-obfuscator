; ModuleID = 'output/introduce-loop/ex5/ex5.ll'
source_filename = "input/introduce-loop/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = srem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = icmp sgt i32 %0, 0
  br label %48

8:                                                ; preds = %32, %3
  %9 = sdiv i32 41, 18
  %10 = icmp sgt i32 %0, 0
  %11 = add i32 58, 44
  %12 = srem i32 %0, 2
  %13 = icmp eq i32 %12, 0
  %14 = mul i32 %4, %4
  %15 = add i32 %14, %4
  %16 = mul i32 %15, 3
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = mul i32 %4, %4
  %20 = add i32 %19, %4
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %18, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %8
  %25 = mul i32 75, 72
  %26 = mul i32 21, 72
  %27 = mul i32 99, 125
  %28 = sub i32 23, 64
  %29 = add i32 0, 61
  %30 = add i32 95, 13
  %31 = mul i32 13, 124
  br label %40

32:                                               ; preds = %8
  %33 = mul i32 75, 72
  %34 = mul i32 21, 72
  %35 = mul i32 99, 125
  %36 = add i32 2062322504, -2062322545
  %37 = sub i32 0, -61
  %38 = sub i32 0, -108
  %39 = mul i32 13, 124
  br i1 %23, label %40, label %8

40:                                               ; preds = %32, %24
  %41 = phi i32 [ %33, %32 ], [ %25, %24 ]
  %42 = phi i32 [ %34, %32 ], [ %26, %24 ]
  %43 = phi i32 [ %35, %32 ], [ %27, %24 ]
  %44 = phi i32 [ %36, %32 ], [ %28, %24 ]
  %45 = phi i32 [ %37, %32 ], [ %29, %24 ]
  %46 = phi i32 [ %38, %32 ], [ %30, %24 ]
  %47 = phi i32 [ %39, %32 ], [ %31, %24 ]
  br label %48

48:                                               ; preds = %40, %6
  %49 = phi i1 [ %10, %40 ], [ %7, %6 ]
  br i1 %49, label %78, label %50

50:                                               ; preds = %74, %48
  %51 = load i32, i32* %2, align 4, !tbaa !10
  %52 = srem i32 %0, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %77

55:                                               ; preds = %50
  %56 = mul i32 120, 71
  %57 = sdiv i32 28, 81
  %58 = sdiv i32 39, 5
  %59 = sub i32 18, 50
  %60 = sdiv i32 115, 28
  %61 = sub i32 20, 41
  %62 = sub i32 34, 121
  %63 = sdiv i32 14, 102
  %64 = srem i32 %0, 2
  %65 = icmp eq i32 %64, 0
  %66 = and i32 %51, 1
  %67 = icmp eq i32 %66, 0
  %68 = mul i32 %51, %51
  %69 = add i32 %68, %51
  %70 = mul i32 %69, 3
  %71 = srem i32 %70, 2
  %72 = icmp eq i32 %71, 0
  %73 = or i1 %67, %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %55
  br i1 %73, label %76, label %50

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %74, %75
  br label %77

77:                                               ; preds = %76, %54
  br label %112

78:                                               ; preds = %102, %48
  %79 = add nuw nsw i32 %0, 7
  %80 = srem i32 %0, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = add i32 40, 40
  %84 = lshr i32 %79, 3
  %85 = mul i32 5, 39
  %86 = add i32 91, 43
  %87 = mul i32 53, 49
  %88 = add i32 122, 80
  %89 = srem i32 %4, 2
  %90 = icmp eq i32 %89, 0
  %91 = mul i32 %0, 2
  %92 = mul i32 %0, 2
  %93 = add i32 2, %92
  %94 = mul i32 %91, %93
  %95 = srem i32 %94, 4
  %96 = icmp eq i32 %95, 0
  %97 = mul i32 %0, %0
  %98 = add i32 %97, %0
  %99 = srem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = and i1 %96, %100
  br i1 %101, label %104, label %102

102:                                              ; preds = %82
  %103 = sub i32 0, -83
  br i1 %101, label %106, label %78

104:                                              ; preds = %82
  %105 = add i32 34, 49
  br label %106

106:                                              ; preds = %102, %104
  %107 = phi i32 [ %105, %104 ], [ %103, %102 ]
  br label %110

108:                                              ; preds = %78
  %109 = lshr i32 %79, 3
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %109, %108 ], [ %84, %106 ]
  br label %164

112:                                              ; preds = %135, %196, %77
  %113 = phi i32 [ %51, %77 ], [ %166, %196 ], [ 0, %135 ]
  %114 = load i32, i32* %1, align 4, !tbaa !10
  %115 = add nsw i32 %114, %0
  %116 = srem i32 %4, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %160

118:                                              ; preds = %112
  %119 = mul i32 19, 29
  %120 = sub i32 0, %113
  %121 = mul i32 57, 105
  %122 = srem i32 %113, 2
  %123 = icmp eq i32 %122, 0
  %124 = mul i32 %0, 2
  %125 = mul i32 %0, 2
  %126 = add i32 2, %125
  %127 = mul i32 %124, %126
  %128 = srem i32 %127, 4
  %129 = icmp eq i32 %128, 0
  %130 = mul i32 %0, %0
  %131 = add i32 %130, %0
  %132 = srem i32 %131, 2
  %133 = icmp eq i32 %132, 0
  %134 = and i1 %129, %133
  br i1 %134, label %144, label %135

135:                                              ; preds = %118
  %136 = sub i32 0, %120
  %137 = add i32 %115, %136
  %138 = sdiv i32 76, 55
  %139 = mul i32 0, 15
  %140 = add i32 52, -97
  %141 = mul i32 57, 119
  %142 = add i32 1385574752, -1385574706
  %143 = mul i32 118, 98
  br i1 %134, label %152, label %112

144:                                              ; preds = %118
  %145 = sub i32 %115, %120
  %146 = sdiv i32 76, 55
  %147 = mul i32 0, 15
  %148 = sub i32 52, 97
  %149 = mul i32 57, 119
  %150 = sub i32 86, 40
  %151 = mul i32 118, 98
  br label %152

152:                                              ; preds = %135, %144
  %153 = phi i32 [ %145, %144 ], [ %137, %135 ]
  %154 = phi i32 [ %146, %144 ], [ %138, %135 ]
  %155 = phi i32 [ %147, %144 ], [ %139, %135 ]
  %156 = phi i32 [ %148, %144 ], [ %140, %135 ]
  %157 = phi i32 [ %149, %144 ], [ %141, %135 ]
  %158 = phi i32 [ %150, %144 ], [ %142, %135 ]
  %159 = phi i32 [ %151, %144 ], [ %143, %135 ]
  br label %162

160:                                              ; preds = %112
  %161 = add nsw i32 %115, %113
  br label %162

162:                                              ; preds = %160, %152
  %163 = phi i32 [ %161, %160 ], [ %153, %152 ]
  ret i32 %163

164:                                              ; preds = %188, %196, %110
  %165 = phi i32 [ %168, %196 ], [ 0, %110 ], [ 0, %188 ]
  %166 = load i32, i32* %1, align 4, !tbaa !10
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %1, align 4, !tbaa !10
  store i32 %166, i32* %2, align 4, !tbaa !10
  %168 = add nuw nsw i32 %165, 1
  %169 = srem i32 %80, 2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %164
  %172 = add i32 45, 104
  %173 = icmp eq i32 %168, %111
  %174 = mul i32 110, 84
  %175 = mul i32 96, 10
  %176 = add i32 78, 15
  %177 = sdiv i32 24, 124
  %178 = srem i32 %111, 2
  %179 = icmp eq i32 %178, 0
  %180 = and i32 %166, 1
  %181 = icmp eq i32 %180, 0
  %182 = mul i32 %166, %166
  %183 = add i32 %182, %166
  %184 = mul i32 %183, 3
  %185 = srem i32 %184, 2
  %186 = icmp eq i32 %185, 0
  %187 = or i1 %181, %186
  br i1 %187, label %190, label %188

188:                                              ; preds = %171
  %189 = sdiv i32 84, 10
  br i1 %187, label %192, label %164

190:                                              ; preds = %171
  %191 = sdiv i32 84, 10
  br label %192

192:                                              ; preds = %188, %190
  %193 = phi i32 [ %191, %190 ], [ %189, %188 ]
  br label %196

194:                                              ; preds = %164
  %195 = icmp eq i32 %168, %111
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i1 [ %195, %194 ], [ %173, %192 ]
  br i1 %197, label %112, label %164, !llvm.loop !14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #1 {
  %3 = srem i32 %0, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %36

6:                                                ; preds = %18, %2
  %7 = sub i32 99, 74
  %8 = srem i32 %0, 2
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %3, 1
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %3, %3
  %13 = add i32 %12, %3
  %14 = mul i32 %13, 3
  %15 = srem i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %11, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = mul i32 82, 53
  %20 = mul i32 85, 92
  %21 = add i32 23, 33
  %22 = mul i32 115, 1
  %23 = add i32 49, 16
  br i1 %17, label %30, label %6

24:                                               ; preds = %6
  %25 = mul i32 82, 53
  %26 = mul i32 85, 92
  %27 = add i32 54, 2
  %28 = mul i32 115, 1
  %29 = sub i32 1638185500, 1638185435
  br label %30

30:                                               ; preds = %18, %24
  %31 = phi i32 [ %25, %24 ], [ %19, %18 ]
  %32 = phi i32 [ %26, %24 ], [ %20, %18 ]
  %33 = phi i32 [ %27, %24 ], [ %21, %18 ]
  %34 = phi i32 [ %28, %24 ], [ %22, %18 ]
  %35 = phi i32 [ %29, %24 ], [ %23, %18 ]
  br label %36

36:                                               ; preds = %30, %5
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

; ModuleID = 'output/opaque-predicates/ex1/ex1.ll'
source_filename = "input/opaque-predicates/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = mul i32 3, %2
  %4 = add i32 %0, 2
  %5 = mul i32 %3, %4
  %6 = srem i32 %5, 6
  %7 = icmp eq i32 %6, 0
  %8 = mul i32 %0, %0
  %9 = add i32 %8, %0
  %10 = srem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = xor i1 %7, true
  %13 = xor i1 %11, true
  %14 = or i1 %12, %13
  %15 = xor i1 %14, true
  %16 = and i1 %15, true
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = sdiv i32 45, 125
  %19 = sub i32 1, 124
  %20 = sub i32 97, 78
  %21 = add i32 1, 125
  %22 = add i32 4, 109
  %23 = sub i32 73, 108
  %24 = sdiv i32 68, 26
  br label %25

25:                                               ; preds = %1, %17
  br label %26

26:                                               ; preds = %172, %25
  %27 = phi i32 [ %0, %25 ], [ %164, %172 ]
  %28 = phi i32 [ 0, %25 ], [ %165, %172 ]
  %29 = icmp sgt i32 %27, 0
  %30 = add i32 %0, 1
  %31 = srem i32 %4, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = mul i32 3, %30
  %35 = add i32 %0, 2
  %36 = mul i32 %34, %35
  %37 = srem i32 %36, 6
  %38 = icmp eq i32 %37, 0
  %39 = mul i32 %0, %0
  %40 = add i32 %39, %0
  %41 = srem i32 %40, 2
  %42 = icmp eq i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %38, %43
  %45 = and i1 %44, %38
  %46 = xor i1 %29, true
  %47 = or i1 %46, %45
  %48 = xor i1 %29, true
  %49 = sub i1 %47, %48
  br label %101

50:                                               ; preds = %26
  %51 = mul i32 3, %30
  %52 = add i32 %0, -681440613
  %53 = add i32 %52, 2
  %54 = sub i32 %53, -681440613
  %55 = mul i32 %51, %54
  %56 = srem i32 %55, 6
  %57 = icmp eq i32 %56, 0
  %58 = mul i32 %0, %0
  %59 = sub i32 %58, -74612515
  %60 = add i32 %59, %0
  %61 = add i32 %60, -74612515
  %62 = srem i32 %61, 2
  %63 = icmp eq i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, false
  %66 = xor i1 %57, false
  %67 = xor i1 %65, false
  %68 = xor i1 %66, %67
  %69 = xor i1 %68, true
  %70 = or i1 %69, %57
  %71 = xor i1 %68, true
  %72 = sub i1 %70, %71
  %73 = xor i1 %29, true
  %74 = and i1 %73, false
  %75 = and i1 %29, true
  %76 = or i1 %74, %75
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = and i1 %78, true
  %80 = and i1 %77, false
  %81 = or i1 %79, %80
  %82 = xor i1 %72, true
  %83 = and i1 %82, true
  %84 = and i1 %72, false
  %85 = or i1 %83, %84
  %86 = xor i1 %81, %85
  %87 = xor i1 %77, true
  %88 = xor i1 %72, true
  %89 = or i1 %87, %88
  %90 = xor i1 %89, true
  %91 = and i1 %90, true
  %92 = or i1 %86, %91
  %93 = xor i1 %29, true
  %94 = and i1 %93, true
  %95 = and i1 %29, false
  %96 = or i1 %94, %95
  %97 = xor i1 %96, false
  %98 = add i1 %92, true
  %99 = sub i1 %98, %97
  %100 = sub i1 %99, true
  br label %101

101:                                              ; preds = %50, %33
  %102 = phi i32 [ %51, %50 ], [ %34, %33 ]
  %103 = phi i32 [ %54, %50 ], [ %35, %33 ]
  %104 = phi i32 [ %55, %50 ], [ %36, %33 ]
  %105 = phi i32 [ %56, %50 ], [ %37, %33 ]
  %106 = phi i1 [ %57, %50 ], [ %38, %33 ]
  %107 = phi i32 [ %58, %50 ], [ %39, %33 ]
  %108 = phi i32 [ %61, %50 ], [ %40, %33 ]
  %109 = phi i32 [ %62, %50 ], [ %41, %33 ]
  %110 = phi i1 [ %63, %50 ], [ %42, %33 ]
  %111 = phi i1 [ %65, %50 ], [ %43, %33 ]
  %112 = phi i1 [ %68, %50 ], [ %44, %33 ]
  %113 = phi i1 [ %72, %50 ], [ %45, %33 ]
  %114 = phi i1 [ %77, %50 ], [ %46, %33 ]
  %115 = phi i1 [ %92, %50 ], [ %47, %33 ]
  %116 = phi i1 [ %97, %50 ], [ %48, %33 ]
  %117 = phi i1 [ %100, %50 ], [ %49, %33 ]
  br i1 %117, label %118, label %163

118:                                              ; preds = %157, %101
  %119 = phi i32 [ %125, %157 ], [ %28, %101 ]
  %120 = phi i32 [ %122, %157 ], [ %27, %101 ]
  %121 = freeze i32 %120
  %122 = sdiv i32 %121, 10
  %123 = mul i32 %122, 10
  %124 = sub i32 %121, %123
  %125 = add nsw i32 %119, %124
  %126 = icmp sgt i32 %120, 9
  %127 = icmp sge i32 %27, %27
  %128 = mul i32 %27, %27
  %129 = add i32 %128, %27
  %130 = srem i32 %129, 2
  %131 = icmp eq i32 %130, 0
  %132 = xor i1 %127, true
  %133 = xor i1 %131, true
  %134 = or i1 %132, %133
  %135 = xor i1 %134, true
  %136 = and i1 %135, true
  %137 = icmp sge i32 %31, %31
  %138 = mul i32 %31, %31
  %139 = add i32 %138, %31
  %140 = srem i32 %139, 2
  %141 = icmp eq i32 %140, 0
  %142 = xor i1 %137, true
  %143 = or i1 %142, %141
  %144 = xor i1 %137, true
  %145 = sub i1 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %118
  %147 = sdiv i32 75, 29
  %148 = sub i32 61, 105
  %149 = add i32 47, 114
  %150 = mul i32 53, 118
  %151 = sdiv i32 49, 101
  %152 = mul i32 82, 55
  %153 = sdiv i32 44, 92
  %154 = sdiv i32 16, 102
  %155 = sdiv i32 67, 82
  %156 = add i32 94, 99
  br label %157

157:                                              ; preds = %118, %146
  %158 = xor i1 %126, true
  %159 = xor i1 %136, true
  %160 = or i1 %158, %159
  %161 = xor i1 %160, true
  %162 = and i1 %161, true
  br i1 %162, label %118, label %163, !llvm.loop !10

163:                                              ; preds = %157, %101
  %164 = phi i32 [ %27, %101 ], [ %122, %157 ]
  %165 = phi i32 [ %28, %101 ], [ %125, %157 ]
  %166 = srem i32 %6, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = icmp eq i32 %164, 0
  br label %172

170:                                              ; preds = %163
  %171 = icmp eq i32 %164, 0
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i1 [ %171, %170 ], [ %169, %168 ]
  br i1 %173, label %174, label %26, !llvm.loop !13

174:                                              ; preds = %172
  %175 = srem i32 %105, 2
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %179

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178, %177
  ret i32 %165
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 1
  %4 = icmp eq i32 %3, 1
  %5 = mul i32 %0, %0
  %6 = add i32 %5, %0
  %7 = srem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = xor i1 %8, true
  %10 = and i1 %4, %9
  %11 = add i1 %10, %8
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = add i32 68, 82
  %14 = mul i32 63, 118
  %15 = sub i32 74, 61
  %16 = sub i32 21, 77
  %17 = sub i32 10, 3
  %18 = sub i32 113, 44
  br label %19

19:                                               ; preds = %2, %12
  %20 = call i32 @_Z8digitSumi(i32 15)
  %21 = call i32 @_Z8digitSumi(i32 25)
  %22 = add nsw i32 %21, %20
  ret i32 %22
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

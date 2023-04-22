; ModuleID = 'output/introduce-loop/ex5/ex5.ll'
source_filename = "input/introduce-loop/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %0, 0
  %5 = srem i32 %0, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %28, %3
  %8 = add i32 31, 40
  %9 = sdiv i32 75, 111
  %10 = sdiv i32 64, 63
  %11 = mul i32 122, 69
  %12 = sub i32 1, 75
  %13 = add i32 30, 56
  %14 = add i32 101, 92
  %15 = sdiv i32 13, 34
  %16 = mul i32 61, 20
  %17 = mul i32 96, 105
  %18 = srem i32 %0, 2
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %0, 1
  %21 = icmp eq i32 %20, 1
  %22 = mul i32 %0, %0
  %23 = add i32 %22, %0
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = or i1 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  br label %29

28:                                               ; preds = %7
  br i1 %26, label %29, label %7

29:                                               ; preds = %28, %27
  br label %31

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %30, %29
  br i1 %4, label %67, label %32

32:                                               ; preds = %57, %31
  %33 = load i32, i32* %2, align 4, !tbaa !10
  %34 = srem i32 %5, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %66

37:                                               ; preds = %32
  %38 = sdiv i32 107, 17
  %39 = add i32 41, 121
  %40 = sub i32 52, 58
  %41 = mul i32 24, 111
  %42 = mul i32 110, 15
  %43 = sub i32 12, 54
  %44 = srem i32 %33, 2
  %45 = icmp eq i32 %44, 0
  %46 = mul i32 %0, 2
  %47 = mul i32 %0, 2
  %48 = add i32 2, %47
  %49 = mul i32 %46, %48
  %50 = srem i32 %49, 4
  %51 = icmp eq i32 %50, 0
  %52 = mul i32 %0, %0
  %53 = add i32 %52, %0
  %54 = srem i32 %53, 2
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %51, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %37
  %58 = sdiv i32 71, 62
  %59 = sub i32 -753408236, -753408308
  br i1 %56, label %63, label %32

60:                                               ; preds = %37
  %61 = sdiv i32 71, 62
  %62 = add i32 64, 8
  br label %63

63:                                               ; preds = %57, %60
  %64 = phi i32 [ %61, %60 ], [ %58, %57 ]
  %65 = phi i32 [ %62, %60 ], [ %59, %57 ]
  br label %66

66:                                               ; preds = %63, %36
  br label %121

67:                                               ; preds = %99, %31
  %68 = add nuw nsw i32 %0, 7
  %69 = srem i32 %5, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = lshr i32 %68, 3
  br label %119

73:                                               ; preds = %67
  %74 = sub i32 30, 77
  %75 = lshr i32 %68, 3
  %76 = srem i32 %5, 2
  %77 = icmp eq i32 %76, 0
  %78 = mul i32 %68, 2
  %79 = mul i32 %68, 2
  %80 = add i32 2, %79
  %81 = mul i32 %78, %80
  %82 = srem i32 %81, 4
  %83 = icmp eq i32 %82, 0
  %84 = mul i32 %68, %68
  %85 = add i32 %84, %68
  %86 = srem i32 %85, 2
  %87 = icmp eq i32 %86, 0
  %88 = or i1 %83, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %73
  %90 = mul i32 9, 26
  %91 = add i32 6, 126
  %92 = add i32 2, 55
  %93 = add i32 113, -103
  %94 = sub i32 27, -108
  %95 = add i32 1156675499, -1156675461
  %96 = mul i32 110, 46
  %97 = sub i32 95, -90
  %98 = sdiv i32 13, 76
  br label %109

99:                                               ; preds = %73
  %100 = mul i32 9, 26
  %101 = add i32 22, 110
  %102 = add i32 22, 35
  %103 = sub i32 113, 103
  %104 = add i32 27, 108
  %105 = sub i32 99, 61
  %106 = mul i32 110, 46
  %107 = add i32 95, 90
  %108 = sdiv i32 13, 76
  br i1 %88, label %109, label %67

109:                                              ; preds = %99, %89
  %110 = phi i32 [ %100, %99 ], [ %90, %89 ]
  %111 = phi i32 [ %101, %99 ], [ %91, %89 ]
  %112 = phi i32 [ %102, %99 ], [ %92, %89 ]
  %113 = phi i32 [ %103, %99 ], [ %93, %89 ]
  %114 = phi i32 [ %104, %99 ], [ %94, %89 ]
  %115 = phi i32 [ %105, %99 ], [ %95, %89 ]
  %116 = phi i32 [ %106, %99 ], [ %96, %89 ]
  %117 = phi i32 [ %107, %99 ], [ %97, %89 ]
  %118 = phi i32 [ %108, %99 ], [ %98, %89 ]
  br label %119

119:                                              ; preds = %109, %71
  %120 = phi i32 [ %75, %109 ], [ %72, %71 ]
  br label %161

121:                                              ; preds = %153, %209, %66
  %122 = phi i32 [ %33, %66 ], [ %163, %209 ], [ 0, %153 ]
  %123 = load i32, i32* %1, align 4, !tbaa !10
  %124 = srem i32 %5, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %121
  %127 = sdiv i32 111, 90
  %128 = and i32 %123, %0
  %129 = mul i32 71, 93
  %130 = or i32 %123, %0
  %131 = mul i32 40, 18
  %132 = add i32 %128, %130
  %133 = sub i32 42, 45
  %134 = sub i32 0, %122
  %135 = add i32 119, 30
  %136 = sub i32 %132, %134
  %137 = sdiv i32 2, 41
  %138 = mul i32 101, 99
  %139 = srem i32 %0, 2
  %140 = icmp eq i32 %139, 0
  %141 = mul i32 %124, 2
  %142 = mul i32 %124, 2
  %143 = add i32 2, %142
  %144 = mul i32 %141, %143
  %145 = srem i32 %144, 4
  %146 = icmp eq i32 %145, 0
  %147 = mul i32 %124, %124
  %148 = add i32 %147, %124
  %149 = srem i32 %148, 2
  %150 = icmp eq i32 %149, 0
  %151 = and i1 %146, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %126
  br label %154

153:                                              ; preds = %126
  br i1 %151, label %154, label %121

154:                                              ; preds = %153, %152
  br label %158

155:                                              ; preds = %121
  %156 = add nsw i32 %123, %0
  %157 = add nsw i32 %156, %122
  br label %158

158:                                              ; preds = %155, %154
  %159 = phi i32 [ %156, %155 ], [ %132, %154 ]
  %160 = phi i32 [ %157, %155 ], [ %136, %154 ]
  ret i32 %160

161:                                              ; preds = %191, %209, %119
  %162 = phi i32 [ %165, %209 ], [ 0, %119 ], [ 0, %191 ]
  %163 = load i32, i32* %1, align 4, !tbaa !10
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %1, align 4, !tbaa !10
  store i32 %163, i32* %2, align 4, !tbaa !10
  %165 = add nuw nsw i32 %162, 1
  %166 = srem i32 %69, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = icmp eq i32 %165, %120
  br label %209

170:                                              ; preds = %161
  %171 = sub i32 89, 90
  %172 = icmp eq i32 %165, %120
  %173 = add i32 40, 68
  %174 = sub i32 57, 0
  %175 = add i32 84, 14
  %176 = sub i32 25, 41
  %177 = srem i32 %0, 2
  %178 = icmp eq i32 %177, 0
  %179 = mul i32 %68, 2
  %180 = mul i32 %68, 2
  %181 = add i32 2, %180
  %182 = mul i32 %179, %181
  %183 = srem i32 %182, 4
  %184 = icmp eq i32 %183, 0
  %185 = mul i32 %68, %68
  %186 = mul i32 %185, %68
  %187 = add i32 %186, %68
  %188 = srem i32 %187, 2
  %189 = icmp eq i32 %188, 0
  %190 = and i1 %184, %189
  br i1 %190, label %197, label %191

191:                                              ; preds = %170
  %192 = mul i32 1, 78
  %193 = sdiv i32 75, 46
  %194 = sdiv i32 123, 99
  %195 = add i32 -2088246201, 2088246257
  %196 = add i32 0, 77
  br i1 %190, label %203, label %161

197:                                              ; preds = %170
  %198 = mul i32 1, 78
  %199 = sdiv i32 75, 46
  %200 = sdiv i32 123, 99
  %201 = sub i32 126, 70
  %202 = add i32 9, 68
  br label %203

203:                                              ; preds = %191, %197
  %204 = phi i32 [ %198, %197 ], [ %192, %191 ]
  %205 = phi i32 [ %199, %197 ], [ %193, %191 ]
  %206 = phi i32 [ %200, %197 ], [ %194, %191 ]
  %207 = phi i32 [ %201, %197 ], [ %195, %191 ]
  %208 = phi i32 [ %202, %197 ], [ %196, %191 ]
  br label %209

209:                                              ; preds = %203, %168
  %210 = phi i1 [ %172, %203 ], [ %169, %168 ]
  br i1 %210, label %121, label %161, !llvm.loop !14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #1 {
  %3 = srem i32 %0, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %35

6:                                                ; preds = %23, %2
  %7 = sdiv i32 72, 38
  %8 = srem i32 %3, 2
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %0, 1
  %11 = icmp eq i32 %10, 1
  %12 = mul i32 %0, %0
  %13 = add i32 %12, %0
  %14 = srem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %11, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = mul i32 17, 91
  %19 = sdiv i32 98, 120
  %20 = sub i32 84, 94
  %21 = sub i32 10, 100
  %22 = sdiv i32 18, 108
  br label %29

23:                                               ; preds = %6
  %24 = mul i32 17, 91
  %25 = sdiv i32 98, 120
  %26 = sub i32 -176758420, -176758410
  %27 = add i32 1108485535, -1108485625
  %28 = sdiv i32 18, 108
  br i1 %16, label %29, label %6

29:                                               ; preds = %23, %17
  %30 = phi i32 [ %24, %23 ], [ %18, %17 ]
  %31 = phi i32 [ %25, %23 ], [ %19, %17 ]
  %32 = phi i32 [ %26, %23 ], [ %20, %17 ]
  %33 = phi i32 [ %27, %23 ], [ %21, %17 ]
  %34 = phi i32 [ %28, %23 ], [ %22, %17 ]
  br label %35

35:                                               ; preds = %29, %5
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

; ModuleID = 'output/introduce-loop/ex5/ex5.ll'
source_filename = "input/introduce-loop/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %0, 0
  %5 = srem i32 %0, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %41

8:                                                ; preds = %33, %3
  %9 = mul i32 29, 87
  %10 = sub i32 70, 117
  %11 = sub i32 40, 2
  %12 = sdiv i32 9, 36
  %13 = sub i32 94, 10
  %14 = mul i32 85, 108
  %15 = srem i32 %0, 2
  %16 = icmp eq i32 %15, 0
  %17 = mul i32 %5, 2
  %18 = mul i32 %5, 2
  %19 = add i32 2, %18
  %20 = mul i32 %17, %19
  %21 = srem i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = mul i32 %5, %5
  %24 = mul i32 %23, %5
  %25 = add i32 %24, %5
  %26 = srem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %22, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = add i32 89, -108
  %31 = mul i32 74, 94
  %32 = add i32 36, 61
  br label %37

33:                                               ; preds = %8
  %34 = sub i32 89, 108
  %35 = mul i32 74, 94
  %36 = add i32 37, 60
  br i1 %28, label %37, label %8

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %34, %33 ], [ %30, %29 ]
  %39 = phi i32 [ %35, %33 ], [ %31, %29 ]
  %40 = phi i32 [ %36, %33 ], [ %32, %29 ]
  br label %41

41:                                               ; preds = %37, %7
  br i1 %4, label %83, label %42

42:                                               ; preds = %69, %41
  %43 = srem i32 %5, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4, !tbaa !10
  br label %81

47:                                               ; preds = %42
  %48 = mul i32 82, 2
  %49 = load i32, i32* %2, align 4, !tbaa !10
  %50 = srem i32 %5, 2
  %51 = icmp eq i32 %50, 0
  %52 = mul i32 %5, 2
  %53 = mul i32 %5, 2
  %54 = add i32 2, %53
  %55 = mul i32 %52, %54
  %56 = srem i32 %55, 4
  %57 = icmp eq i32 %56, 0
  %58 = mul i32 %5, %5
  %59 = add i32 %58, %5
  %60 = srem i32 %59, 2
  %61 = icmp eq i32 %60, 0
  %62 = and i1 %57, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %47
  %64 = sdiv i32 72, 47
  %65 = sub i32 45, 35
  %66 = mul i32 33, 92
  %67 = sub i32 29, 59
  %68 = mul i32 72, 13
  br label %75

69:                                               ; preds = %47
  %70 = sdiv i32 72, 47
  %71 = sub i32 -478973624, -478973634
  %72 = mul i32 33, 92
  %73 = add i32 279482334, -279482364
  %74 = mul i32 72, 13
  br i1 %62, label %75, label %42

75:                                               ; preds = %69, %63
  %76 = phi i32 [ %70, %69 ], [ %64, %63 ]
  %77 = phi i32 [ %71, %69 ], [ %65, %63 ]
  %78 = phi i32 [ %72, %69 ], [ %66, %63 ]
  %79 = phi i32 [ %73, %69 ], [ %67, %63 ]
  %80 = phi i32 [ %74, %69 ], [ %68, %63 ]
  br label %81

81:                                               ; preds = %75, %45
  %82 = phi i32 [ %49, %75 ], [ %46, %45 ]
  br label %143

83:                                               ; preds = %101, %41
  %84 = srem i32 %0, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = add nuw nsw i32 %0, 7
  %88 = lshr i32 %87, 3
  br label %140

89:                                               ; preds = %83
  %90 = sub i32 5, 60
  %91 = sub i32 0, %0
  %92 = srem i32 %0, 2
  %93 = icmp eq i32 %92, 0
  %94 = and i32 %5, 1
  %95 = icmp eq i32 %94, 1
  %96 = mul i32 %5, %5
  %97 = add i32 %96, %5
  %98 = srem i32 %97, 2
  %99 = icmp eq i32 %98, 0
  %100 = or i1 %95, %99
  br i1 %100, label %116, label %101

101:                                              ; preds = %89
  %102 = add i32 105, -26
  %103 = and i32 %91, -7
  %104 = or i32 %91, -7
  %105 = add i32 %103, %104
  %106 = add i32 43, -71
  %107 = sub i32 1785439082, %105
  %108 = add i32 %107, -1785439082
  %109 = sub i32 1329651257, 1329651298
  %110 = lshr i32 %108, 3
  %111 = sdiv i32 75, 51
  %112 = sub i32 -1738061720, -1738061672
  %113 = sdiv i32 70, 55
  %114 = add i32 -1970141233, 1970141215
  %115 = sdiv i32 96, 58
  br i1 %100, label %128, label %83

116:                                              ; preds = %89
  %117 = sub i32 105, 26
  %118 = add i32 %91, -7
  %119 = sub i32 43, 71
  %120 = sub i32 0, %118
  %121 = sub i32 66, 107
  %122 = lshr i32 %120, 3
  %123 = sdiv i32 75, 51
  %124 = sub i32 22, 70
  %125 = sdiv i32 70, 55
  %126 = sub i32 94, 112
  %127 = sdiv i32 96, 58
  br label %128

128:                                              ; preds = %101, %116
  %129 = phi i32 [ %117, %116 ], [ %102, %101 ]
  %130 = phi i32 [ %118, %116 ], [ %105, %101 ]
  %131 = phi i32 [ %119, %116 ], [ %106, %101 ]
  %132 = phi i32 [ %120, %116 ], [ %108, %101 ]
  %133 = phi i32 [ %121, %116 ], [ %109, %101 ]
  %134 = phi i32 [ %122, %116 ], [ %110, %101 ]
  %135 = phi i32 [ %123, %116 ], [ %111, %101 ]
  %136 = phi i32 [ %124, %116 ], [ %112, %101 ]
  %137 = phi i32 [ %125, %116 ], [ %113, %101 ]
  %138 = phi i32 [ %126, %116 ], [ %114, %101 ]
  %139 = phi i32 [ %127, %116 ], [ %115, %101 ]
  br label %140

140:                                              ; preds = %128, %86
  %141 = phi i32 [ %132, %128 ], [ %87, %86 ]
  %142 = phi i32 [ %134, %128 ], [ %88, %86 ]
  br label %208

143:                                              ; preds = %162, %260, %81
  %144 = phi i32 [ %82, %81 ], [ %210, %260 ], [ 0, %162 ]
  %145 = srem i32 %5, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %197

147:                                              ; preds = %143
  %148 = sdiv i32 110, 31
  %149 = srem i32 %144, 2
  %150 = icmp eq i32 %149, 0
  %151 = mul i32 %0, 2
  %152 = mul i32 %0, 2
  %153 = add i32 2, %152
  %154 = mul i32 %151, %153
  %155 = srem i32 %154, 4
  %156 = icmp eq i32 %155, 0
  %157 = mul i32 %0, %0
  %158 = add i32 %157, %0
  %159 = srem i32 %158, 2
  %160 = icmp eq i32 %159, 0
  %161 = or i1 %156, %160
  br i1 %161, label %177, label %162

162:                                              ; preds = %147
  %163 = load i32, i32* %1, align 4, !tbaa !10
  %164 = add i32 1, 107
  %165 = sub i32 %163, -693685470
  %166 = add i32 %165, %0
  %167 = add i32 %166, -693685470
  %168 = mul i32 16, 95
  %169 = sub i32 0, %167
  %170 = sub i32 0, %144
  %171 = add i32 %169, %170
  %172 = sub i32 0, %171
  %173 = sub i32 0, -33
  %174 = add i32 990206562, -990206454
  %175 = add i32 8, 121
  %176 = sdiv i32 72, 46
  br i1 %161, label %187, label %143

177:                                              ; preds = %147
  %178 = load i32, i32* %1, align 4, !tbaa !10
  %179 = add i32 11, 97
  %180 = add nsw i32 %178, %0
  %181 = mul i32 16, 95
  %182 = add nsw i32 %180, %144
  %183 = add i32 19, 14
  %184 = sub i32 123, 15
  %185 = add i32 56, 73
  %186 = sdiv i32 72, 46
  br label %187

187:                                              ; preds = %162, %177
  %188 = phi i32 [ %178, %177 ], [ %163, %162 ]
  %189 = phi i32 [ %179, %177 ], [ %164, %162 ]
  %190 = phi i32 [ %180, %177 ], [ %167, %162 ]
  %191 = phi i32 [ %181, %177 ], [ %168, %162 ]
  %192 = phi i32 [ %182, %177 ], [ %172, %162 ]
  %193 = phi i32 [ %183, %177 ], [ %173, %162 ]
  %194 = phi i32 [ %184, %177 ], [ %174, %162 ]
  %195 = phi i32 [ %185, %177 ], [ %175, %162 ]
  %196 = phi i32 [ %186, %177 ], [ %176, %162 ]
  br label %204

197:                                              ; preds = %143
  %198 = load i32, i32* %1, align 4, !tbaa !10
  %199 = sub i32 0, %0
  %200 = sub i32 %198, %199
  %201 = and i32 %200, %144
  %202 = or i32 %200, %144
  %203 = add i32 %201, %202
  br label %204

204:                                              ; preds = %197, %187
  %205 = phi i32 [ %198, %197 ], [ %188, %187 ]
  %206 = phi i32 [ %200, %197 ], [ %190, %187 ]
  %207 = phi i32 [ %203, %197 ], [ %192, %187 ]
  ret i32 %207

208:                                              ; preds = %230, %260, %140
  %209 = phi i32 [ %212, %260 ], [ 0, %140 ], [ 0, %230 ]
  %210 = load i32, i32* %1, align 4, !tbaa !10
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %1, align 4, !tbaa !10
  store i32 %210, i32* %2, align 4, !tbaa !10
  %212 = add nuw nsw i32 %209, 1
  %213 = srem i32 %84, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = icmp eq i32 %212, %142
  br label %260

217:                                              ; preds = %208
  %218 = srem i32 %211, 2
  %219 = icmp eq i32 %218, 0
  %220 = mul i32 %213, %213
  %221 = add i32 %220, %213
  %222 = mul i32 %221, 3
  %223 = srem i32 %222, 2
  %224 = icmp eq i32 %223, 0
  %225 = mul i32 %213, %213
  %226 = add i32 %225, %213
  %227 = srem i32 %226, 2
  %228 = icmp eq i32 %227, 0
  %229 = and i1 %224, %228
  br i1 %229, label %240, label %230

230:                                              ; preds = %217
  %231 = sdiv i32 60, 104
  %232 = icmp eq i32 %212, %142
  %233 = sub i32 19, 112
  %234 = mul i32 63, 99
  %235 = mul i32 100, 91
  %236 = mul i32 35, 24
  %237 = sdiv i32 35, 34
  %238 = mul i32 62, 2
  %239 = sub i32 114, 123
  br i1 %229, label %250, label %208

240:                                              ; preds = %217
  %241 = sdiv i32 60, 104
  %242 = icmp eq i32 %212, %142
  %243 = add i32 19, -112
  %244 = mul i32 63, 99
  %245 = mul i32 100, 91
  %246 = mul i32 35, 24
  %247 = sdiv i32 35, 34
  %248 = mul i32 62, 2
  %249 = add i32 114, -123
  br label %250

250:                                              ; preds = %230, %240
  %251 = phi i32 [ %241, %240 ], [ %231, %230 ]
  %252 = phi i1 [ %242, %240 ], [ %232, %230 ]
  %253 = phi i32 [ %243, %240 ], [ %233, %230 ]
  %254 = phi i32 [ %244, %240 ], [ %234, %230 ]
  %255 = phi i32 [ %245, %240 ], [ %235, %230 ]
  %256 = phi i32 [ %246, %240 ], [ %236, %230 ]
  %257 = phi i32 [ %247, %240 ], [ %237, %230 ]
  %258 = phi i32 [ %248, %240 ], [ %238, %230 ]
  %259 = phi i32 [ %249, %240 ], [ %239, %230 ]
  br label %260

260:                                              ; preds = %250, %215
  %261 = phi i1 [ %252, %250 ], [ %216, %215 ]
  br i1 %261, label %143, label %208, !llvm.loop !14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #1 {
  %3 = srem i32 %0, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %26, %2
  %6 = srem i32 %0, 2
  %7 = icmp eq i32 %6, 0
  %8 = mul i32 %0, 2
  %9 = mul i32 %0, 2
  %10 = add i32 2, %9
  %11 = mul i32 %8, %10
  %12 = srem i32 %11, 4
  %13 = icmp eq i32 %12, 0
  %14 = mul i32 %0, %0
  %15 = add i32 %14, %0
  %16 = srem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %13, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = add i32 23, 35
  %21 = sdiv i32 22, 88
  %22 = sdiv i32 20, 107
  %23 = sdiv i32 10, 9
  %24 = add i32 118, 40
  %25 = mul i32 79, 43
  br label %33

26:                                               ; preds = %5
  %27 = sub i32 23, -35
  %28 = sdiv i32 22, 88
  %29 = sdiv i32 20, 107
  %30 = sdiv i32 10, 9
  %31 = sub i32 1518336838, 1518336680
  %32 = mul i32 79, 43
  br i1 %18, label %33, label %5

33:                                               ; preds = %26, %19
  %34 = phi i32 [ %27, %26 ], [ %20, %19 ]
  %35 = phi i32 [ %28, %26 ], [ %21, %19 ]
  %36 = phi i32 [ %29, %26 ], [ %22, %19 ]
  %37 = phi i32 [ %30, %26 ], [ %23, %19 ]
  %38 = phi i32 [ %31, %26 ], [ %24, %19 ]
  %39 = phi i32 [ %32, %26 ], [ %25, %19 ]
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %33
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

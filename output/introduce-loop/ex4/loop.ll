; ModuleID = 'output/introduce-loop/ex4/ex4.ll'
source_filename = "input/introduce-loop/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = srem i32 %0, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %35

6:                                                ; preds = %31, %2
  %7 = sdiv i32 106, 11
  %8 = add i32 31, 44
  %9 = mul i32 84, 62
  %10 = add i32 52, 27
  %11 = add i32 73, 7
  %12 = sub i32 56, 112
  %13 = sdiv i32 86, 59
  %14 = sdiv i32 101, 26
  %15 = add i32 14, 49
  %16 = srem i32 %3, 2
  %17 = icmp eq i32 %16, 0
  %18 = mul i32 %0, 2
  %19 = mul i32 %0, 2
  %20 = add i32 2, %19
  %21 = mul i32 %18, %20
  %22 = srem i32 %21, 4
  %23 = icmp eq i32 %22, 0
  %24 = mul i32 %0, %0
  %25 = add i32 %24, %0
  %26 = srem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = or i1 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = mul i32 80, 40
  br label %33

31:                                               ; preds = %6
  %32 = mul i32 80, 40
  br i1 %28, label %33, label %6

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %32, %31 ], [ %30, %29 ]
  br label %35

35:                                               ; preds = %33, %5
  br label %69

36:                                               ; preds = %59, %109
  %37 = srem i32 %1, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %68

40:                                               ; preds = %36
  %41 = sub i32 112, 123
  %42 = sdiv i32 1, 101
  %43 = sub i32 45, 45
  %44 = add i32 99, 51
  %45 = add i32 90, 19
  %46 = srem i32 %71, 2
  %47 = icmp eq i32 %46, 0
  %48 = mul i32 %3, 2
  %49 = mul i32 %3, 2
  %50 = add i32 2, %49
  %51 = mul i32 %48, %50
  %52 = srem i32 %51, 4
  %53 = icmp eq i32 %52, 0
  %54 = mul i32 %3, %3
  %55 = add i32 %54, %3
  %56 = srem i32 %55, 2
  %57 = icmp eq i32 %56, 0
  %58 = or i1 %53, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %40
  %60 = add i32 80, 88
  %61 = sub i32 419851044, 419850983
  br i1 %58, label %65, label %36

62:                                               ; preds = %40
  %63 = add i32 124, 44
  %64 = sub i32 84, 23
  br label %65

65:                                               ; preds = %59, %62
  %66 = phi i32 [ %63, %62 ], [ %60, %59 ]
  %67 = phi i32 [ %64, %62 ], [ %61, %59 ]
  br label %68

68:                                               ; preds = %65, %39
  unreachable

69:                                               ; preds = %95, %246, %35
  %70 = phi i32 [ %0, %35 ], [ %201, %246 ], [ 0, %95 ]
  %71 = phi i32 [ 0, %35 ], [ %202, %246 ], [ 0, %95 ]
  %72 = srem i32 %3, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %109

75:                                               ; preds = %69
  %76 = add i32 87, 64
  %77 = add i32 106, 113
  %78 = sub i32 103, 110
  %79 = srem i32 %3, 2
  %80 = icmp eq i32 %79, 0
  %81 = and i32 %71, 1
  %82 = icmp eq i32 %81, 1
  %83 = mul i32 %71, %71
  %84 = add i32 %83, %71
  %85 = srem i32 %84, 2
  %86 = icmp eq i32 %85, 0
  %87 = or i1 %82, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = sdiv i32 85, 101
  %90 = add i32 2, 115
  %91 = add i32 88, 63
  %92 = sub i32 93, 76
  %93 = sdiv i32 109, 11
  %94 = sub i32 54, 48
  br label %102

95:                                               ; preds = %75
  %96 = sdiv i32 85, 101
  %97 = add i32 2, 115
  %98 = add i32 1506002458, -1506002307
  %99 = add i32 93, -76
  %100 = sdiv i32 109, 11
  %101 = add i32 54, -48
  br i1 %87, label %102, label %69

102:                                              ; preds = %95, %88
  %103 = phi i32 [ %96, %95 ], [ %89, %88 ]
  %104 = phi i32 [ %97, %95 ], [ %90, %88 ]
  %105 = phi i32 [ %98, %95 ], [ %91, %88 ]
  %106 = phi i32 [ %99, %95 ], [ %92, %88 ]
  %107 = phi i32 [ %100, %95 ], [ %93, %88 ]
  %108 = phi i32 [ %101, %95 ], [ %94, %88 ]
  br label %109

109:                                              ; preds = %102, %74
  switch i32 %71, label %36 [
    i32 0, label %110
    i32 1, label %159
    i32 2, label %247
    i32 3, label %308
  ], !llvm.loop !10

110:                                              ; preds = %138, %109
  %111 = icmp slt i32 %70, %1
  %112 = select i1 %111, i32 %1, i32 0
  %113 = srem i32 %0, 2
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = add i32 %112, 437666129
  %117 = add i32 %116, %70
  %118 = sub i32 %117, 437666129
  %119 = select i1 %111, i32 3, i32 1
  br label %156

120:                                              ; preds = %110
  %121 = mul i32 14, 17
  %122 = add nsw i32 %112, %70
  %123 = sub i32 36, 34
  %124 = select i1 %111, i32 3, i32 1
  %125 = add i32 1, 109
  %126 = srem i32 %70, 2
  %127 = icmp eq i32 %126, 0
  %128 = mul i32 %71, %71
  %129 = add i32 %128, %71
  %130 = mul i32 %129, 3
  %131 = srem i32 %130, 2
  %132 = icmp eq i32 %131, 0
  %133 = mul i32 %71, %71
  %134 = add i32 %133, %71
  %135 = srem i32 %134, 2
  %136 = icmp eq i32 %135, 0
  %137 = and i1 %132, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %120
  %139 = mul i32 34, 125
  %140 = mul i32 30, 109
  %141 = sub i32 71, 39
  %142 = sdiv i32 84, 2
  %143 = mul i32 44, 88
  br i1 %137, label %150, label %110

144:                                              ; preds = %120
  %145 = mul i32 34, 125
  %146 = mul i32 30, 109
  %147 = sub i32 1856044428, 1856044396
  %148 = sdiv i32 84, 2
  %149 = mul i32 44, 88
  br label %150

150:                                              ; preds = %138, %144
  %151 = phi i32 [ %145, %144 ], [ %139, %138 ]
  %152 = phi i32 [ %146, %144 ], [ %140, %138 ]
  %153 = phi i32 [ %147, %144 ], [ %141, %138 ]
  %154 = phi i32 [ %148, %144 ], [ %142, %138 ]
  %155 = phi i32 [ %149, %144 ], [ %143, %138 ]
  br label %156

156:                                              ; preds = %150, %115
  %157 = phi i32 [ %122, %150 ], [ %118, %115 ]
  %158 = phi i32 [ %124, %150 ], [ %119, %115 ]
  br label %200

159:                                              ; preds = %187, %109
  %160 = icmp eq i32 %70, %1
  %161 = sub nsw i32 %1, %70
  %162 = select i1 %160, i32 %161, i32 %70
  %163 = select i1 %160, i32 3, i32 2
  %164 = srem i32 %70, 2
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %199

167:                                              ; preds = %159
  %168 = sdiv i32 35, 9
  %169 = sdiv i32 125, 91
  %170 = sdiv i32 58, 70
  %171 = mul i32 73, 115
  %172 = mul i32 106, 126
  %173 = srem i32 %71, 2
  %174 = icmp eq i32 %173, 0
  %175 = mul i32 %71, 2
  %176 = mul i32 %71, 2
  %177 = add i32 2, %176
  %178 = mul i32 %175, %177
  %179 = srem i32 %178, 4
  %180 = icmp eq i32 %179, 0
  %181 = mul i32 %71, %71
  %182 = mul i32 %181, %71
  %183 = add i32 %182, %71
  %184 = srem i32 %183, 2
  %185 = icmp eq i32 %184, 0
  %186 = and i1 %180, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %167
  %188 = mul i32 104, 50
  %189 = sub i32 1247533837, 1247533912
  %190 = sdiv i32 46, 10
  br i1 %186, label %195, label %159

191:                                              ; preds = %167
  %192 = mul i32 104, 50
  %193 = sub i32 40, 115
  %194 = sdiv i32 46, 10
  br label %195

195:                                              ; preds = %187, %191
  %196 = phi i32 [ %192, %191 ], [ %188, %187 ]
  %197 = phi i32 [ %193, %191 ], [ %189, %187 ]
  %198 = phi i32 [ %194, %191 ], [ %190, %187 ]
  br label %199

199:                                              ; preds = %195, %166
  br label %200

200:                                              ; preds = %229, %305, %199, %156
  %201 = phi i32 [ %307, %305 ], [ %157, %156 ], [ %162, %199 ], [ 0, %229 ]
  %202 = phi i32 [ 3, %305 ], [ %158, %156 ], [ %163, %199 ], [ 0, %229 ]
  %203 = srem i32 %72, 2
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %245

205:                                              ; preds = %200
  %206 = sub i32 49, 49
  %207 = add i32 103, 56
  %208 = srem i32 %202, 2
  %209 = icmp eq i32 %208, 0
  %210 = mul i32 %203, 2
  %211 = mul i32 %203, 2
  %212 = add i32 2, %211
  %213 = mul i32 %210, %212
  %214 = srem i32 %213, 4
  %215 = icmp eq i32 %214, 0
  %216 = mul i32 %203, %203
  %217 = add i32 %216, %203
  %218 = srem i32 %217, 2
  %219 = icmp eq i32 %218, 0
  %220 = or i1 %215, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %205
  %222 = mul i32 31, 106
  %223 = mul i32 109, 27
  %224 = sdiv i32 76, 20
  %225 = add i32 23, 19
  %226 = add i32 108, 91
  %227 = add i32 69, 27
  %228 = add i32 103, 59
  br label %237

229:                                              ; preds = %205
  %230 = mul i32 31, 106
  %231 = mul i32 109, 27
  %232 = sdiv i32 76, 20
  %233 = add i32 -1538721348, 1538721390
  %234 = sub i32 -491360196, -491360395
  %235 = sub i32 -2121278257, -2121278353
  %236 = add i32 92, 70
  br i1 %220, label %237, label %200

237:                                              ; preds = %229, %221
  %238 = phi i32 [ %230, %229 ], [ %222, %221 ]
  %239 = phi i32 [ %231, %229 ], [ %223, %221 ]
  %240 = phi i32 [ %232, %229 ], [ %224, %221 ]
  %241 = phi i32 [ %233, %229 ], [ %225, %221 ]
  %242 = phi i32 [ %234, %229 ], [ %226, %221 ]
  %243 = phi i32 [ %235, %229 ], [ %227, %221 ]
  %244 = phi i32 [ %236, %229 ], [ %228, %221 ]
  br label %246

245:                                              ; preds = %200
  br label %246

246:                                              ; preds = %245, %237
  br label %69, !llvm.loop !10

247:                                              ; preds = %283, %109
  %248 = srem i32 %3, 2
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = shl i32 %70, 1
  %252 = sub i32 %251, %1
  br label %305

253:                                              ; preds = %247
  %254 = add i32 14, 46
  %255 = srem i32 %71, 2
  %256 = icmp eq i32 %255, 0
  %257 = and i32 %1, 1
  %258 = icmp eq i32 %257, 0
  %259 = mul i32 %1, %1
  %260 = add i32 %259, %1
  %261 = mul i32 %260, 3
  %262 = srem i32 %261, 2
  %263 = icmp eq i32 %262, 0
  %264 = or i1 %258, %263
  br i1 %264, label %265, label %283

265:                                              ; preds = %253
  %266 = shl i32 %70, 1
  %267 = add i32 81, 88
  %268 = xor i32 %266, 348509352
  %269 = and i32 %266, 348509352
  %270 = mul i32 2, %269
  %271 = add i32 %268, %270
  %272 = mul i32 90, 86
  %273 = add i32 %271, -1769663168
  %274 = sub i32 %273, %1
  %275 = sub i32 %274, -1769663168
  %276 = mul i32 45, 123
  %277 = sub i32 %275, -1864226393
  %278 = sub i32 %277, 348509352
  %279 = add i32 %278, -1864226393
  %280 = sdiv i32 107, 46
  %281 = add i32 79354479, -79354459
  %282 = sub i32 1813649433, 1813649408
  br label %294

283:                                              ; preds = %253
  %284 = shl i32 %70, 1
  %285 = add i32 45, 124
  %286 = add i32 %284, 348509352
  %287 = mul i32 90, 86
  %288 = sub i32 %286, %1
  %289 = mul i32 45, 123
  %290 = sub i32 %288, 348509352
  %291 = sdiv i32 107, 46
  %292 = add i32 15, 5
  %293 = sub i32 73, 48
  br i1 %264, label %294, label %247

294:                                              ; preds = %283, %265
  %295 = phi i32 [ %284, %283 ], [ %266, %265 ]
  %296 = phi i32 [ %285, %283 ], [ %267, %265 ]
  %297 = phi i32 [ %286, %283 ], [ %271, %265 ]
  %298 = phi i32 [ %287, %283 ], [ %272, %265 ]
  %299 = phi i32 [ %288, %283 ], [ %275, %265 ]
  %300 = phi i32 [ %289, %283 ], [ %276, %265 ]
  %301 = phi i32 [ %290, %283 ], [ %279, %265 ]
  %302 = phi i32 [ %291, %283 ], [ %280, %265 ]
  %303 = phi i32 [ %292, %283 ], [ %281, %265 ]
  %304 = phi i32 [ %293, %283 ], [ %282, %265 ]
  br label %305

305:                                              ; preds = %294, %250
  %306 = phi i32 [ %295, %294 ], [ %251, %250 ]
  %307 = phi i32 [ %301, %294 ], [ %252, %250 ]
  br label %200

308:                                              ; preds = %337, %109
  %309 = srem i32 %3, 2
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %349

311:                                              ; preds = %308
  %312 = add i32 115, 46
  %313 = mul i32 78, 29
  %314 = mul i32 23, 102
  %315 = mul i32 91, 75
  %316 = sub i32 37, 111
  %317 = srem i32 %0, 2
  %318 = icmp eq i32 %317, 0
  %319 = mul i32 %72, 2
  %320 = mul i32 %72, 2
  %321 = add i32 2, %320
  %322 = mul i32 %319, %321
  %323 = srem i32 %322, 4
  %324 = icmp eq i32 %323, 0
  %325 = mul i32 %72, %72
  %326 = mul i32 %325, %72
  %327 = add i32 %326, %72
  %328 = srem i32 %327, 2
  %329 = icmp eq i32 %328, 0
  %330 = and i1 %324, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %311
  %332 = add i32 64, 18
  %333 = sub i32 100, 8
  %334 = sub i32 63, 49
  %335 = mul i32 92, 7
  %336 = mul i32 2, 119
  br label %343

337:                                              ; preds = %311
  %338 = sub i32 -1375999426, -1375999508
  %339 = sub i32 1758606476, 1758606384
  %340 = add i32 -1434257585, 1434257599
  %341 = mul i32 92, 7
  %342 = mul i32 2, 119
  br i1 %330, label %343, label %308

343:                                              ; preds = %337, %331
  %344 = phi i32 [ %338, %337 ], [ %332, %331 ]
  %345 = phi i32 [ %339, %337 ], [ %333, %331 ]
  %346 = phi i32 [ %340, %337 ], [ %334, %331 ]
  %347 = phi i32 [ %341, %337 ], [ %335, %331 ]
  %348 = phi i32 [ %342, %337 ], [ %336, %331 ]
  br label %350

349:                                              ; preds = %308
  br label %350

350:                                              ; preds = %349, %343
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = srem i32 %0, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %46

5:                                                ; preds = %30, %2
  %6 = sub i32 85, 93
  %7 = call i32 @_Z6decideii(i32 15, i32 25)
  %8 = sdiv i32 106, 122
  %9 = mul i32 68, 94
  %10 = srem i32 %3, 2
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %0, %0
  %13 = add i32 %12, %0
  %14 = mul i32 %13, 3
  %15 = srem i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = mul i32 %0, %0
  %18 = add i32 %17, %0
  %19 = srem i32 %18, 2
  %20 = icmp eq i32 %19, 0
  %21 = and i1 %16, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = sub i32 -799228173, -799228174
  %24 = mul i32 26, 29
  %25 = add i32 422260037, -422260032
  %26 = mul i32 120, 14
  %27 = add i32 -1653113110, 1653113025
  %28 = sdiv i32 22, 17
  %29 = mul i32 75, 89
  br label %38

30:                                               ; preds = %5
  %31 = sub i32 74, 73
  %32 = mul i32 26, 29
  %33 = sub i32 95, 90
  %34 = mul i32 120, 14
  %35 = sub i32 9, 94
  %36 = sdiv i32 22, 17
  %37 = mul i32 75, 89
  br i1 %21, label %38, label %5

38:                                               ; preds = %30, %22
  %39 = phi i32 [ %31, %30 ], [ %23, %22 ]
  %40 = phi i32 [ %32, %30 ], [ %24, %22 ]
  %41 = phi i32 [ %33, %30 ], [ %25, %22 ]
  %42 = phi i32 [ %34, %30 ], [ %26, %22 ]
  %43 = phi i32 [ %35, %30 ], [ %27, %22 ]
  %44 = phi i32 [ %36, %30 ], [ %28, %22 ]
  %45 = phi i32 [ %37, %30 ], [ %29, %22 ]
  br label %48

46:                                               ; preds = %2
  %47 = call i32 @_Z6decideii(i32 15, i32 25)
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi i32 [ %47, %46 ], [ %7, %38 ]
  ret i32 %49
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

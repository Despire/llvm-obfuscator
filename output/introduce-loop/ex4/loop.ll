; ModuleID = 'output/introduce-loop/ex4/ex4.ll'
source_filename = "input/introduce-loop/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = srem i32 %1, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %34

6:                                                ; preds = %31, %2
  %7 = mul i32 120, 112
  %8 = add i32 96, 53
  %9 = sdiv i32 31, 16
  %10 = sub i32 66, 24
  %11 = add i32 85, 116
  %12 = sub i32 84, 32
  %13 = sdiv i32 61, 23
  %14 = sdiv i32 1, 104
  %15 = sdiv i32 31, 43
  %16 = sdiv i32 80, 55
  %17 = srem i32 %3, 2
  %18 = icmp eq i32 %17, 0
  %19 = mul i32 %3, 2
  %20 = mul i32 %3, 2
  %21 = add i32 2, %20
  %22 = mul i32 %19, %21
  %23 = srem i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = mul i32 %3, %3
  %26 = mul i32 %25, %3
  %27 = add i32 %26, %3
  %28 = srem i32 %27, 2
  %29 = icmp eq i32 %28, 0
  %30 = and i1 %24, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %6
  br i1 %30, label %33, label %6

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %31, %32
  br label %34

34:                                               ; preds = %33, %5
  br label %82

35:                                               ; preds = %62, %118
  %36 = srem i32 %83, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = sub i32 74, 75
  %40 = srem i32 %3, 2
  %41 = icmp eq i32 %40, 0
  %42 = mul i32 %1, 2
  %43 = mul i32 %1, 2
  %44 = add i32 2, %43
  %45 = mul i32 %42, %44
  %46 = srem i32 %45, 4
  %47 = icmp eq i32 %46, 0
  %48 = mul i32 %1, %1
  %49 = add i32 %48, %1
  %50 = srem i32 %49, 2
  %51 = icmp eq i32 %50, 0
  %52 = or i1 %47, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %38
  %54 = mul i32 62, 0
  %55 = mul i32 61, 22
  %56 = add i32 -1529606865, 1529606811
  %57 = mul i32 34, 83
  %58 = add i32 1724608689, -1724608723
  %59 = add i32 8, 62
  %60 = sub i32 95, -98
  %61 = sub i32 327195955, 327195830
  br label %71

62:                                               ; preds = %38
  %63 = mul i32 62, 0
  %64 = mul i32 61, 22
  %65 = sub i32 49, 103
  %66 = mul i32 34, 83
  %67 = sub i32 34, 68
  %68 = add i32 58, 12
  %69 = add i32 95, 98
  %70 = add i32 58, 67
  br i1 %52, label %71, label %35

71:                                               ; preds = %62, %53
  %72 = phi i32 [ %63, %62 ], [ %54, %53 ]
  %73 = phi i32 [ %64, %62 ], [ %55, %53 ]
  %74 = phi i32 [ %65, %62 ], [ %56, %53 ]
  %75 = phi i32 [ %66, %62 ], [ %57, %53 ]
  %76 = phi i32 [ %67, %62 ], [ %58, %53 ]
  %77 = phi i32 [ %68, %62 ], [ %59, %53 ]
  %78 = phi i32 [ %69, %62 ], [ %60, %53 ]
  %79 = phi i32 [ %70, %62 ], [ %61, %53 ]
  br label %81

80:                                               ; preds = %35
  br label %81

81:                                               ; preds = %80, %71
  unreachable

82:                                               ; preds = %111, %290, %34
  %83 = phi i32 [ %0, %34 ], [ %240, %290 ], [ 0, %111 ]
  %84 = phi i32 [ 0, %34 ], [ %241, %290 ], [ 0, %111 ]
  %85 = srem i32 %0, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %82
  %88 = sdiv i32 101, 101
  %89 = sdiv i32 61, 63
  %90 = sdiv i32 25, 96
  %91 = sdiv i32 52, 102
  %92 = add i32 50, 81
  %93 = sub i32 83, 65
  %94 = sdiv i32 122, 73
  %95 = srem i32 %85, 2
  %96 = icmp eq i32 %95, 0
  %97 = mul i32 %1, 2
  %98 = mul i32 %1, 2
  %99 = add i32 2, %98
  %100 = mul i32 %97, %99
  %101 = srem i32 %100, 4
  %102 = icmp eq i32 %101, 0
  %103 = mul i32 %1, %1
  %104 = add i32 %103, %1
  %105 = srem i32 %104, 2
  %106 = icmp eq i32 %105, 0
  %107 = or i1 %102, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %87
  %109 = mul i32 99, 68
  %110 = add i32 735304313, -735304200
  br label %114

111:                                              ; preds = %87
  %112 = mul i32 99, 68
  %113 = add i32 33, 80
  br i1 %107, label %114, label %82

114:                                              ; preds = %111, %108
  %115 = phi i32 [ %112, %111 ], [ %109, %108 ]
  %116 = phi i32 [ %113, %111 ], [ %110, %108 ]
  br label %118

117:                                              ; preds = %82
  br label %118

118:                                              ; preds = %117, %114
  switch i32 %84, label %35 [
    i32 0, label %119
    i32 1, label %189
    i32 2, label %291
    i32 3, label %329
  ], !llvm.loop !10

119:                                              ; preds = %158, %118
  %120 = icmp slt i32 %83, %1
  %121 = select i1 %120, i32 %1, i32 0
  %122 = srem i32 %84, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = add nsw i32 %121, %83
  %126 = select i1 %120, i32 3, i32 1
  br label %186

127:                                              ; preds = %119
  %128 = srem i32 %0, 2
  %129 = icmp eq i32 %128, 0
  %130 = and i32 %84, 1
  %131 = icmp eq i32 %130, 1
  %132 = mul i32 %84, %84
  %133 = add i32 %132, %84
  %134 = srem i32 %133, 2
  %135 = icmp eq i32 %134, 0
  %136 = or i1 %131, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %127
  %138 = add i32 115, 24
  %139 = sub i32 0, %121
  %140 = add i32 %139, -1295699318
  %141 = sub i32 0, %140
  %142 = mul i32 89, 96
  %143 = xor i32 %141, %83
  %144 = and i32 %141, %83
  %145 = mul i32 2, %144
  %146 = add i32 %143, %145
  %147 = sub i32 -608040303, -608040363
  %148 = sub i32 %146, 1136623963
  %149 = sub i32 %148, 1295699318
  %150 = add i32 %149, 1136623963
  %151 = mul i32 7, 95
  %152 = select i1 %120, i32 3, i32 1
  %153 = sdiv i32 64, 108
  %154 = add i32 81636574, -81636535
  %155 = add i32 -948552842, 948552864
  %156 = sub i32 0, -79
  %157 = sdiv i32 116, 118
  br label %172

158:                                              ; preds = %127
  %159 = add i32 47, 92
  %160 = add i32 %121, 1295699318
  %161 = mul i32 89, 96
  %162 = add i32 %160, %83
  %163 = sub i32 105, 45
  %164 = sub i32 %162, 1295699318
  %165 = mul i32 7, 95
  %166 = select i1 %120, i32 3, i32 1
  %167 = sdiv i32 64, 108
  %168 = sub i32 99, 60
  %169 = sub i32 77, 55
  %170 = add i32 39, 40
  %171 = sdiv i32 116, 118
  br i1 %136, label %172, label %119

172:                                              ; preds = %158, %137
  %173 = phi i32 [ %159, %158 ], [ %138, %137 ]
  %174 = phi i32 [ %160, %158 ], [ %141, %137 ]
  %175 = phi i32 [ %161, %158 ], [ %142, %137 ]
  %176 = phi i32 [ %162, %158 ], [ %146, %137 ]
  %177 = phi i32 [ %163, %158 ], [ %147, %137 ]
  %178 = phi i32 [ %164, %158 ], [ %150, %137 ]
  %179 = phi i32 [ %165, %158 ], [ %151, %137 ]
  %180 = phi i32 [ %166, %158 ], [ %152, %137 ]
  %181 = phi i32 [ %167, %158 ], [ %153, %137 ]
  %182 = phi i32 [ %168, %158 ], [ %154, %137 ]
  %183 = phi i32 [ %169, %158 ], [ %155, %137 ]
  %184 = phi i32 [ %170, %158 ], [ %156, %137 ]
  %185 = phi i32 [ %171, %158 ], [ %157, %137 ]
  br label %186

186:                                              ; preds = %172, %124
  %187 = phi i32 [ %178, %172 ], [ %125, %124 ]
  %188 = phi i32 [ %180, %172 ], [ %126, %124 ]
  br label %239

189:                                              ; preds = %216, %118
  %190 = srem i32 %83, 2
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %228

192:                                              ; preds = %189
  %193 = add i32 104, 54
  %194 = icmp eq i32 %83, %1
  %195 = mul i32 21, 31
  %196 = sub nsw i32 %1, %83
  %197 = add i32 20, 87
  %198 = select i1 %194, i32 %196, i32 %83
  %199 = sdiv i32 84, 65
  %200 = srem i32 %83, 2
  %201 = icmp eq i32 %200, 0
  %202 = and i32 %1, 1
  %203 = icmp eq i32 %202, 0
  %204 = mul i32 %1, %1
  %205 = add i32 %204, %1
  %206 = mul i32 %205, 3
  %207 = srem i32 %206, 2
  %208 = icmp eq i32 %207, 0
  %209 = or i1 %203, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %192
  %211 = select i1 %194, i32 3, i32 2
  %212 = mul i32 55, 109
  %213 = sdiv i32 105, 100
  %214 = mul i32 97, 68
  %215 = sub i32 -704179258, -704179357
  br label %222

216:                                              ; preds = %192
  %217 = select i1 %194, i32 3, i32 2
  %218 = mul i32 55, 109
  %219 = sdiv i32 105, 100
  %220 = mul i32 97, 68
  %221 = add i32 31, 68
  br i1 %209, label %222, label %189

222:                                              ; preds = %216, %210
  %223 = phi i32 [ %217, %216 ], [ %211, %210 ]
  %224 = phi i32 [ %218, %216 ], [ %212, %210 ]
  %225 = phi i32 [ %219, %216 ], [ %213, %210 ]
  %226 = phi i32 [ %220, %216 ], [ %214, %210 ]
  %227 = phi i32 [ %221, %216 ], [ %215, %210 ]
  br label %234

228:                                              ; preds = %189
  %229 = icmp eq i32 %83, %1
  %230 = sub i32 0, %83
  %231 = add i32 %1, %230
  %232 = select i1 %229, i32 %231, i32 %83
  %233 = select i1 %229, i32 3, i32 2
  br label %234

234:                                              ; preds = %228, %222
  %235 = phi i1 [ %229, %228 ], [ %194, %222 ]
  %236 = phi i32 [ %231, %228 ], [ %196, %222 ]
  %237 = phi i32 [ %232, %228 ], [ %198, %222 ]
  %238 = phi i32 [ %233, %228 ], [ %223, %222 ]
  br label %239

239:                                              ; preds = %260, %327, %234, %186
  %240 = phi i32 [ %328, %327 ], [ %187, %186 ], [ %237, %234 ], [ 0, %260 ]
  %241 = phi i32 [ 3, %327 ], [ %188, %186 ], [ %238, %234 ], [ 0, %260 ]
  %242 = srem i32 %3, 2
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %290

245:                                              ; preds = %239
  %246 = sdiv i32 77, 119
  %247 = srem i32 %1, 2
  %248 = icmp eq i32 %247, 0
  %249 = mul i32 %3, 2
  %250 = mul i32 %3, 2
  %251 = add i32 2, %250
  %252 = mul i32 %249, %251
  %253 = srem i32 %252, 4
  %254 = icmp eq i32 %253, 0
  %255 = mul i32 %3, %3
  %256 = add i32 %255, %3
  %257 = srem i32 %256, 2
  %258 = icmp eq i32 %257, 0
  %259 = or i1 %254, %258
  br i1 %259, label %270, label %260

260:                                              ; preds = %245
  %261 = sub i32 116, -18
  %262 = mul i32 121, 54
  %263 = add i32 4, 109
  %264 = add i32 68, 117
  %265 = sdiv i32 115, 108
  %266 = mul i32 52, 91
  %267 = sub i32 1381000443, 1381000484
  %268 = add i32 -448863868, 448864002
  %269 = sdiv i32 55, 101
  br i1 %259, label %280, label %239

270:                                              ; preds = %245
  %271 = add i32 116, 18
  %272 = mul i32 121, 54
  %273 = add i32 101, 12
  %274 = add i32 116, 69
  %275 = sdiv i32 115, 108
  %276 = mul i32 52, 91
  %277 = sub i32 69, 110
  %278 = add i32 66, 68
  %279 = sdiv i32 55, 101
  br label %280

280:                                              ; preds = %260, %270
  %281 = phi i32 [ %271, %270 ], [ %261, %260 ]
  %282 = phi i32 [ %272, %270 ], [ %262, %260 ]
  %283 = phi i32 [ %273, %270 ], [ %263, %260 ]
  %284 = phi i32 [ %274, %270 ], [ %264, %260 ]
  %285 = phi i32 [ %275, %270 ], [ %265, %260 ]
  %286 = phi i32 [ %276, %270 ], [ %266, %260 ]
  %287 = phi i32 [ %277, %270 ], [ %267, %260 ]
  %288 = phi i32 [ %278, %270 ], [ %268, %260 ]
  %289 = phi i32 [ %279, %270 ], [ %269, %260 ]
  br label %290

290:                                              ; preds = %280, %244
  br label %82, !llvm.loop !10

291:                                              ; preds = %319, %118
  %292 = shl i32 %83, 1
  %293 = srem i32 %3, 2
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %291
  %296 = add i32 %292, -1064572763
  %297 = sub i32 %296, %1
  %298 = sub i32 %297, -1064572763
  br label %327

299:                                              ; preds = %291
  %300 = sdiv i32 30, 23
  %301 = sub i32 %292, %1
  %302 = sdiv i32 91, 11
  %303 = sdiv i32 121, 61
  %304 = sdiv i32 32, 20
  %305 = srem i32 %292, 2
  %306 = icmp eq i32 %305, 0
  %307 = and i32 %292, 1
  %308 = icmp eq i32 %307, 0
  %309 = mul i32 %292, %292
  %310 = add i32 %309, %292
  %311 = mul i32 %310, 3
  %312 = srem i32 %311, 2
  %313 = icmp eq i32 %312, 0
  %314 = or i1 %308, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %299
  %316 = sub i32 29, -52
  %317 = mul i32 97, 64
  %318 = mul i32 29, 98
  br label %323

319:                                              ; preds = %299
  %320 = add i32 29, 52
  %321 = mul i32 97, 64
  %322 = mul i32 29, 98
  br i1 %314, label %323, label %291

323:                                              ; preds = %319, %315
  %324 = phi i32 [ %320, %319 ], [ %316, %315 ]
  %325 = phi i32 [ %321, %319 ], [ %317, %315 ]
  %326 = phi i32 [ %322, %319 ], [ %318, %315 ]
  br label %327

327:                                              ; preds = %323, %295
  %328 = phi i32 [ %301, %323 ], [ %298, %295 ]
  br label %239

329:                                              ; preds = %356, %118
  %330 = srem i32 %3, 2
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %370

332:                                              ; preds = %329
  %333 = sdiv i32 59, 94
  %334 = add i32 89, 63
  %335 = add i32 59, 68
  %336 = srem i32 %85, 2
  %337 = icmp eq i32 %336, 0
  %338 = mul i32 %83, 2
  %339 = mul i32 %83, 2
  %340 = add i32 2, %339
  %341 = mul i32 %338, %340
  %342 = srem i32 %341, 4
  %343 = icmp eq i32 %342, 0
  %344 = mul i32 %83, %83
  %345 = add i32 %344, %83
  %346 = srem i32 %345, 2
  %347 = icmp eq i32 %346, 0
  %348 = or i1 %343, %347
  br i1 %348, label %349, label %356

349:                                              ; preds = %332
  %350 = mul i32 48, 82
  %351 = sdiv i32 95, 8
  %352 = mul i32 0, 29
  %353 = sub i32 35, 26
  %354 = mul i32 72, 102
  %355 = mul i32 5, 7
  br label %363

356:                                              ; preds = %332
  %357 = mul i32 48, 82
  %358 = sdiv i32 95, 8
  %359 = mul i32 0, 29
  %360 = add i32 35, -26
  %361 = mul i32 72, 102
  %362 = mul i32 5, 7
  br i1 %348, label %363, label %329

363:                                              ; preds = %356, %349
  %364 = phi i32 [ %357, %356 ], [ %350, %349 ]
  %365 = phi i32 [ %358, %356 ], [ %351, %349 ]
  %366 = phi i32 [ %359, %356 ], [ %352, %349 ]
  %367 = phi i32 [ %360, %356 ], [ %353, %349 ]
  %368 = phi i32 [ %361, %356 ], [ %354, %349 ]
  %369 = phi i32 [ %362, %356 ], [ %355, %349 ]
  br label %371

370:                                              ; preds = %329
  br label %371

371:                                              ; preds = %370, %363
  ret i32 %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  %4 = srem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %31, %2
  %7 = sdiv i32 100, 66
  %8 = sub i32 83, 95
  %9 = sub i32 118, 37
  %10 = add i32 64, 43
  %11 = mul i32 117, 53
  %12 = mul i32 103, 112
  %13 = sdiv i32 80, 4
  %14 = mul i32 114, 118
  %15 = sub i32 2, 102
  %16 = srem i32 %0, 2
  %17 = icmp eq i32 %16, 0
  %18 = mul i32 %3, 2
  %19 = mul i32 %3, 2
  %20 = add i32 2, %19
  %21 = mul i32 %18, %20
  %22 = srem i32 %21, 4
  %23 = icmp eq i32 %22, 0
  %24 = mul i32 %3, %3
  %25 = add i32 %24, %3
  %26 = srem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = mul i32 12, 5
  br label %33

31:                                               ; preds = %6
  %32 = mul i32 12, 5
  br i1 %28, label %33, label %6

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %32, %31 ], [ %30, %29 ]
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %33
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

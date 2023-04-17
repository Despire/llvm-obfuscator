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
  br label %32

6:                                                ; preds = %30, %2
  %7 = sub i32 32, 6
  %8 = sub i32 76, 83
  %9 = sub i32 18, 11
  %10 = sub i32 47, 13
  %11 = sdiv i32 116, 53
  %12 = mul i32 7, 56
  %13 = mul i32 25, 23
  %14 = mul i32 103, 79
  %15 = sub i32 24, 33
  %16 = srem i32 %1, 2
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
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  br label %31

30:                                               ; preds = %6
  br i1 %28, label %31, label %6

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %5
  br label %68

33:                                               ; preds = %60, %114
  %34 = srem i32 %69, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = add i32 37, 121
  %38 = sub i32 90, 83
  %39 = sdiv i32 123, 8
  %40 = sdiv i32 67, 15
  %41 = mul i32 51, 68
  %42 = mul i32 74, 89
  %43 = mul i32 36, 68
  %44 = sub i32 100, 72
  %45 = srem i32 %34, 2
  %46 = icmp eq i32 %45, 0
  %47 = mul i32 %70, %70
  %48 = add i32 %47, %70
  %49 = mul i32 %48, 3
  %50 = srem i32 %49, 2
  %51 = icmp eq i32 %50, 0
  %52 = mul i32 %70, %70
  %53 = add i32 %52, %70
  %54 = srem i32 %53, 2
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %36
  %58 = mul i32 101, 80
  %59 = sub i32 70, 23
  br label %63

60:                                               ; preds = %36
  %61 = mul i32 101, 80
  %62 = add i32 688833169, -688833122
  br i1 %56, label %63, label %33

63:                                               ; preds = %60, %57
  %64 = phi i32 [ %61, %60 ], [ %58, %57 ]
  %65 = phi i32 [ %62, %60 ], [ %59, %57 ]
  br label %67

66:                                               ; preds = %33
  br label %67

67:                                               ; preds = %66, %63
  unreachable

68:                                               ; preds = %95, %261, %32
  %69 = phi i32 [ %0, %32 ], [ %225, %261 ], [ 0, %95 ]
  %70 = phi i32 [ 0, %32 ], [ %226, %261 ], [ 0, %95 ]
  %71 = srem i32 %1, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %68
  %74 = srem i32 %69, 2
  %75 = icmp eq i32 %74, 0
  %76 = mul i32 %70, %70
  %77 = add i32 %76, %70
  %78 = mul i32 %77, 3
  %79 = srem i32 %78, 2
  %80 = icmp eq i32 %79, 0
  %81 = mul i32 %70, %70
  %82 = add i32 %81, %70
  %83 = srem i32 %82, 2
  %84 = icmp eq i32 %83, 0
  %85 = and i1 %80, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %73
  %87 = sub i32 72, 51
  %88 = sdiv i32 19, 47
  %89 = add i32 56, 85
  %90 = sdiv i32 83, 114
  %91 = sdiv i32 5, 7
  %92 = sdiv i32 115, 23
  %93 = add i32 68, 63
  %94 = sub i32 104, 27
  br label %104

95:                                               ; preds = %73
  %96 = sub i32 -1801930117, -1801930138
  %97 = sdiv i32 19, 47
  %98 = add i32 16, 125
  %99 = sdiv i32 83, 114
  %100 = sdiv i32 5, 7
  %101 = sdiv i32 115, 23
  %102 = add i32 4, 127
  %103 = add i32 1363177900, -1363177823
  br i1 %85, label %104, label %68

104:                                              ; preds = %95, %86
  %105 = phi i32 [ %96, %95 ], [ %87, %86 ]
  %106 = phi i32 [ %97, %95 ], [ %88, %86 ]
  %107 = phi i32 [ %98, %95 ], [ %89, %86 ]
  %108 = phi i32 [ %99, %95 ], [ %90, %86 ]
  %109 = phi i32 [ %100, %95 ], [ %91, %86 ]
  %110 = phi i32 [ %101, %95 ], [ %92, %86 ]
  %111 = phi i32 [ %102, %95 ], [ %93, %86 ]
  %112 = phi i32 [ %103, %95 ], [ %94, %86 ]
  br label %114

113:                                              ; preds = %68
  br label %114

114:                                              ; preds = %113, %104
  switch i32 %70, label %33 [
    i32 0, label %115
    i32 1, label %164
    i32 2, label %262
    i32 3, label %317
  ], !llvm.loop !10

115:                                              ; preds = %147, %114
  %116 = srem i32 %70, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = icmp slt i32 %69, %1
  %120 = select i1 %119, i32 %1, i32 0
  %121 = add nsw i32 %120, %69
  %122 = select i1 %119, i32 3, i32 1
  br label %159

123:                                              ; preds = %115
  %124 = add i32 31, 108
  %125 = icmp slt i32 %69, %1
  %126 = sub i32 15, 70
  %127 = select i1 %125, i32 %1, i32 0
  %128 = add i32 73, 70
  %129 = xor i32 %127, %69
  %130 = mul i32 98, 21
  %131 = and i32 %127, %69
  %132 = sub i32 70, 40
  %133 = srem i32 %69, 2
  %134 = icmp eq i32 %133, 0
  %135 = and i32 %3, 1
  %136 = icmp eq i32 %135, 1
  %137 = mul i32 %3, %3
  %138 = add i32 %137, %3
  %139 = srem i32 %138, 2
  %140 = icmp eq i32 %139, 0
  %141 = or i1 %136, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %123
  %143 = mul i32 2, %131
  %144 = sdiv i32 23, 102
  %145 = add i32 %129, %143
  %146 = select i1 %125, i32 3, i32 1
  br label %154

147:                                              ; preds = %123
  %148 = mul i32 2, %131
  %149 = sdiv i32 23, 102
  %150 = and i32 %129, %148
  %151 = or i32 %129, %148
  %152 = add i32 %150, %151
  %153 = select i1 %125, i32 3, i32 1
  br i1 %141, label %154, label %115

154:                                              ; preds = %147, %142
  %155 = phi i32 [ %148, %147 ], [ %143, %142 ]
  %156 = phi i32 [ %149, %147 ], [ %144, %142 ]
  %157 = phi i32 [ %152, %147 ], [ %145, %142 ]
  %158 = phi i32 [ %153, %147 ], [ %146, %142 ]
  br label %159

159:                                              ; preds = %154, %118
  %160 = phi i1 [ %125, %154 ], [ %119, %118 ]
  %161 = phi i32 [ %127, %154 ], [ %120, %118 ]
  %162 = phi i32 [ %157, %154 ], [ %121, %118 ]
  %163 = phi i32 [ %158, %154 ], [ %122, %118 ]
  br label %224

164:                                              ; preds = %200, %114
  %165 = icmp eq i32 %69, %1
  %166 = srem i32 %70, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = sub nsw i32 %1, %69
  %170 = select i1 %165, i32 %169, i32 %69
  %171 = select i1 %165, i32 3, i32 2
  br label %220

172:                                              ; preds = %164
  %173 = mul i32 37, 51
  %174 = sub i32 %1, -354293992
  %175 = mul i32 30, 87
  %176 = sub i32 %174, %69
  %177 = mul i32 87, 99
  %178 = srem i32 %0, 2
  %179 = icmp eq i32 %178, 0
  %180 = mul i32 %70, 2
  %181 = mul i32 %70, 2
  %182 = add i32 2, %181
  %183 = mul i32 %180, %182
  %184 = srem i32 %183, 4
  %185 = icmp eq i32 %184, 0
  %186 = mul i32 %70, %70
  %187 = add i32 %186, %70
  %188 = srem i32 %187, 2
  %189 = icmp eq i32 %188, 0
  %190 = or i1 %185, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %172
  %192 = add i32 %176, -354293992
  %193 = mul i32 23, 103
  %194 = select i1 %165, i32 %192, i32 %69
  %195 = mul i32 47, 55
  %196 = select i1 %165, i32 3, i32 2
  %197 = add i32 10, 12
  %198 = mul i32 35, 28
  %199 = sub i32 24, 102
  br label %211

200:                                              ; preds = %172
  %201 = and i32 %176, -354293992
  %202 = or i32 %176, -354293992
  %203 = add i32 %201, %202
  %204 = mul i32 23, 103
  %205 = select i1 %165, i32 %203, i32 %69
  %206 = mul i32 47, 55
  %207 = select i1 %165, i32 3, i32 2
  %208 = sub i32 10, -12
  %209 = mul i32 35, 28
  %210 = add i32 24, -102
  br i1 %190, label %211, label %164

211:                                              ; preds = %200, %191
  %212 = phi i32 [ %203, %200 ], [ %192, %191 ]
  %213 = phi i32 [ %204, %200 ], [ %193, %191 ]
  %214 = phi i32 [ %205, %200 ], [ %194, %191 ]
  %215 = phi i32 [ %206, %200 ], [ %195, %191 ]
  %216 = phi i32 [ %207, %200 ], [ %196, %191 ]
  %217 = phi i32 [ %208, %200 ], [ %197, %191 ]
  %218 = phi i32 [ %209, %200 ], [ %198, %191 ]
  %219 = phi i32 [ %210, %200 ], [ %199, %191 ]
  br label %220

220:                                              ; preds = %211, %168
  %221 = phi i32 [ %212, %211 ], [ %169, %168 ]
  %222 = phi i32 [ %214, %211 ], [ %170, %168 ]
  %223 = phi i32 [ %216, %211 ], [ %171, %168 ]
  br label %224

224:                                              ; preds = %251, %315, %220, %159
  %225 = phi i32 [ %316, %315 ], [ %162, %159 ], [ %222, %220 ], [ 0, %251 ]
  %226 = phi i32 [ 3, %315 ], [ %163, %159 ], [ %223, %220 ], [ 0, %251 ]
  %227 = srem i32 %70, 2
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %261

230:                                              ; preds = %224
  %231 = sub i32 19, 13
  %232 = sdiv i32 111, 84
  %233 = srem i32 %227, 2
  %234 = icmp eq i32 %233, 0
  %235 = mul i32 %70, 2
  %236 = mul i32 %70, 2
  %237 = add i32 2, %236
  %238 = mul i32 %235, %237
  %239 = srem i32 %238, 4
  %240 = icmp eq i32 %239, 0
  %241 = mul i32 %70, %70
  %242 = add i32 %241, %70
  %243 = srem i32 %242, 2
  %244 = icmp eq i32 %243, 0
  %245 = and i1 %240, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %230
  %247 = add i32 27, 35
  %248 = add i32 32, 69
  %249 = mul i32 21, 120
  %250 = add i32 41, 95
  br label %256

251:                                              ; preds = %230
  %252 = sub i32 0, -62
  %253 = add i32 2082305320, -2082305219
  %254 = mul i32 21, 120
  %255 = sub i32 -1570967521, -1570967657
  br i1 %245, label %256, label %224

256:                                              ; preds = %251, %246
  %257 = phi i32 [ %252, %251 ], [ %247, %246 ]
  %258 = phi i32 [ %253, %251 ], [ %248, %246 ]
  %259 = phi i32 [ %254, %251 ], [ %249, %246 ]
  %260 = phi i32 [ %255, %251 ], [ %250, %246 ]
  br label %261

261:                                              ; preds = %256, %229
  br label %68, !llvm.loop !10

262:                                              ; preds = %293, %114
  %263 = shl i32 %69, 1
  %264 = srem i32 %0, 2
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = sub i32 0, %1
  %268 = add i32 %263, %267
  br label %315

269:                                              ; preds = %262
  %270 = add i32 50, 55
  %271 = srem i32 %1, 2
  %272 = icmp eq i32 %271, 0
  %273 = and i32 %0, 1
  %274 = icmp eq i32 %273, 1
  %275 = mul i32 %0, %0
  %276 = add i32 %275, %0
  %277 = srem i32 %276, 2
  %278 = icmp eq i32 %277, 0
  %279 = or i1 %274, %278
  br i1 %279, label %280, label %293

280:                                              ; preds = %269
  %281 = sub i32 %263, 832505568
  %282 = sub i32 %281, %1
  %283 = add i32 %282, 832505568
  %284 = mul i32 38, 55
  %285 = sdiv i32 53, 109
  %286 = sub i32 401109427, 401109346
  %287 = mul i32 2, 10
  %288 = mul i32 31, 9
  %289 = sub i32 -670434547, -670434648
  %290 = mul i32 42, 10
  %291 = sdiv i32 110, 126
  %292 = sub i32 1339923064, 1339923122
  br label %304

293:                                              ; preds = %269
  %294 = sub i32 %263, %1
  %295 = mul i32 38, 55
  %296 = sdiv i32 53, 109
  %297 = add i32 61, 20
  %298 = mul i32 2, 10
  %299 = mul i32 31, 9
  %300 = add i32 51, 50
  %301 = mul i32 42, 10
  %302 = sdiv i32 110, 126
  %303 = sub i32 68, 126
  br i1 %279, label %304, label %262

304:                                              ; preds = %293, %280
  %305 = phi i32 [ %294, %293 ], [ %283, %280 ]
  %306 = phi i32 [ %295, %293 ], [ %284, %280 ]
  %307 = phi i32 [ %296, %293 ], [ %285, %280 ]
  %308 = phi i32 [ %297, %293 ], [ %286, %280 ]
  %309 = phi i32 [ %298, %293 ], [ %287, %280 ]
  %310 = phi i32 [ %299, %293 ], [ %288, %280 ]
  %311 = phi i32 [ %300, %293 ], [ %289, %280 ]
  %312 = phi i32 [ %301, %293 ], [ %290, %280 ]
  %313 = phi i32 [ %302, %293 ], [ %291, %280 ]
  %314 = phi i32 [ %303, %293 ], [ %292, %280 ]
  br label %315

315:                                              ; preds = %304, %266
  %316 = phi i32 [ %305, %304 ], [ %268, %266 ]
  br label %224

317:                                              ; preds = %343, %114
  %318 = srem i32 %69, 2
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  br label %349

321:                                              ; preds = %317
  %322 = sub i32 123, 95
  %323 = sdiv i32 38, 94
  %324 = mul i32 107, 123
  %325 = sdiv i32 70, 112
  %326 = add i32 111, 45
  %327 = sub i32 94, 10
  %328 = sdiv i32 90, 9
  %329 = sub i32 92, 12
  %330 = srem i32 %70, 2
  %331 = icmp eq i32 %330, 0
  %332 = mul i32 %71, 2
  %333 = mul i32 %71, 2
  %334 = add i32 2, %333
  %335 = mul i32 %332, %334
  %336 = srem i32 %335, 4
  %337 = icmp eq i32 %336, 0
  %338 = mul i32 %71, %71
  %339 = add i32 %338, %71
  %340 = srem i32 %339, 2
  %341 = icmp eq i32 %340, 0
  %342 = or i1 %337, %341
  br i1 %342, label %345, label %343

343:                                              ; preds = %321
  %344 = add i32 1855716612, -1855716629
  br i1 %342, label %347, label %317

345:                                              ; preds = %321
  %346 = sub i32 66, 83
  br label %347

347:                                              ; preds = %343, %345
  %348 = phi i32 [ %346, %345 ], [ %344, %343 ]
  br label %349

349:                                              ; preds = %347, %320
  ret i32 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  %4 = srem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %54

6:                                                ; preds = %32, %2
  %7 = srem i32 %3, 2
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %0, 2
  %10 = mul i32 %0, 2
  %11 = add i32 2, %10
  %12 = mul i32 %9, %11
  %13 = srem i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = mul i32 %0, %0
  %16 = mul i32 %15, %0
  %17 = add i32 %16, %0
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %14, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %6
  %22 = mul i32 84, 21
  %23 = sdiv i32 40, 95
  %24 = add i32 46, 68
  %25 = add i32 35, 118
  %26 = add i32 77, 68
  %27 = sdiv i32 70, 114
  %28 = mul i32 20, 27
  %29 = sub i32 83, 12
  %30 = sdiv i32 64, 41
  %31 = mul i32 5, 110
  br label %43

32:                                               ; preds = %6
  %33 = mul i32 84, 21
  %34 = sdiv i32 40, 95
  %35 = add i32 106, 8
  %36 = add i32 -180343618, 180343771
  %37 = add i32 9, 136
  %38 = sdiv i32 70, 114
  %39 = mul i32 20, 27
  %40 = add i32 83, -12
  %41 = sdiv i32 64, 41
  %42 = mul i32 5, 110
  br i1 %20, label %43, label %6

43:                                               ; preds = %32, %21
  %44 = phi i32 [ %33, %32 ], [ %22, %21 ]
  %45 = phi i32 [ %34, %32 ], [ %23, %21 ]
  %46 = phi i32 [ %35, %32 ], [ %24, %21 ]
  %47 = phi i32 [ %36, %32 ], [ %25, %21 ]
  %48 = phi i32 [ %37, %32 ], [ %26, %21 ]
  %49 = phi i32 [ %38, %32 ], [ %27, %21 ]
  %50 = phi i32 [ %39, %32 ], [ %28, %21 ]
  %51 = phi i32 [ %40, %32 ], [ %29, %21 ]
  %52 = phi i32 [ %41, %32 ], [ %30, %21 ]
  %53 = phi i32 [ %42, %32 ], [ %31, %21 ]
  br label %55

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %54, %43
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

; ModuleID = 'output/opaque-predicates/ex9/ex9.ll'
source_filename = "input/opaque-predicates/ex9/ex9.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = srem i32 %3, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %8
  br label %17

11:                                               ; preds = %116
  %12 = srem i32 %92, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %14
  ret void

17:                                               ; preds = %116, %10
  %18 = phi i64 [ 0, %10 ], [ %125, %116 ]
  %19 = trunc i64 %18 to i32
  %20 = urem i32 %19, 80
  %21 = icmp eq i32 %20, 0
  %22 = add i32 %3, 1
  %23 = mul i32 3, %22
  %24 = add i32 %3, 2
  %25 = add i32 %5, 1
  %26 = mul i32 3, %25
  %27 = add i32 %5, 2
  %28 = mul i32 %26, %27
  %29 = srem i32 %28, 6
  %30 = icmp eq i32 %29, 0
  %31 = mul i32 %5, %5
  %32 = add i32 %31, %5
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = xor i1 %30, true
  %36 = xor i1 %34, true
  %37 = or i1 %35, %36
  %38 = xor i1 %37, true
  %39 = and i1 %38, true
  br i1 %39, label %40, label %48

40:                                               ; preds = %17
  %41 = mul i32 101, 59
  %42 = mul i32 30, 116
  %43 = mul i32 92, 28
  %44 = add i32 41, 6
  %45 = add i32 91, 120
  %46 = mul i32 97, 54
  %47 = mul i32 49, 103
  br label %48

48:                                               ; preds = %17, %40
  %49 = mul i32 %23, %24
  %50 = srem i32 %49, 6
  %51 = icmp eq i32 %50, 0
  %52 = mul i32 %3, %3
  %53 = add i32 %52, %3
  %54 = srem i32 %53, 2
  %55 = icmp eq i32 %54, 0
  %56 = xor i1 %51, true
  %57 = or i1 %56, %55
  %58 = xor i1 %51, true
  %59 = sub i1 %57, %58
  %60 = xor i1 %59, true
  %61 = xor i1 %21, %60
  %62 = and i1 %61, %21
  br i1 %62, label %90, label %63

63:                                               ; preds = %48
  %64 = getelementptr inbounds i8, i8* %0, i64 %18
  %65 = add i32 %52, 1
  %66 = mul i32 3, %65
  %67 = add i32 %52, 2
  %68 = mul i32 %66, %67
  %69 = srem i32 %68, 6
  %70 = icmp eq i32 %69, 0
  %71 = mul i32 %52, %52
  %72 = add i32 %71, %52
  %73 = srem i32 %72, 2
  %74 = icmp eq i32 %73, 0
  %75 = xor i1 %70, true
  %76 = xor i1 %74, true
  %77 = or i1 %75, %76
  %78 = xor i1 %77, true
  %79 = and i1 %78, true
  br i1 %79, label %80, label %87

80:                                               ; preds = %63
  %81 = mul i32 19, 120
  %82 = sdiv i32 85, 44
  %83 = sdiv i32 32, 18
  %84 = sub i32 22, 84
  %85 = mul i32 35, 82
  %86 = add i32 81, 91
  br label %87

87:                                               ; preds = %63, %80
  %88 = load i8, i8* %64, align 1, !tbaa !10
  %89 = sext i8 %88 to i32
  br label %90

90:                                               ; preds = %87, %48
  %91 = phi i32 [ %89, %87 ], [ 10, %48 ]
  %92 = call i32 @putchar(i32 %91)
  %93 = add i32 %27, 1
  %94 = mul i32 3, %93
  %95 = add i32 %27, 2
  %96 = mul i32 %94, %95
  %97 = srem i32 %96, 6
  %98 = icmp eq i32 %97, 0
  %99 = mul i32 %27, %27
  %100 = add i32 %99, %27
  %101 = srem i32 %100, 2
  %102 = icmp eq i32 %101, 0
  %103 = xor i1 %102, true
  %104 = and i1 %98, %103
  %105 = add i1 %104, %102
  br i1 %105, label %106, label %116

106:                                              ; preds = %90
  %107 = add i32 16, 54
  %108 = sdiv i32 126, 82
  %109 = mul i32 24, 69
  %110 = add i32 65, 109
  %111 = sub i32 70, 13
  %112 = mul i32 113, 112
  %113 = sub i32 64, 21
  %114 = sdiv i32 82, 108
  %115 = add i32 90, 91
  br label %116

116:                                              ; preds = %90, %106
  %117 = load float, float* %1, align 4, !tbaa !13
  %118 = fpext float %117 to double
  %119 = fadd double %118, 4.000000e-05
  %120 = fptrunc double %119 to float
  store float %120, float* %1, align 4, !tbaa !13
  %121 = load float, float* %2, align 4, !tbaa !13
  %122 = fpext float %121 to double
  %123 = fadd double %122, 2.000000e-05
  %124 = fptrunc double %123 to float
  store float %124, float* %2, align 4, !tbaa !13
  %125 = add nuw nsw i64 %18, 1
  %126 = icmp eq i64 %125, 1761
  br i1 %126, label %11, label %17, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z6renderffiPfPcii(float %0, float %1, i32 %2, float* nocapture %3, i8* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #3 {
  %8 = sdiv i32 %6, 40
  %9 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 32, i64 %9, i1 false)
  %10 = bitcast float* %3 to i8*
  %11 = shl nsw i64 %9, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 %11, i1 false)
  %12 = sitofp i32 %8 to float
  %13 = and i32 %6, 1
  %14 = icmp eq i32 %13, 0
  %15 = add i32 %6, 1
  %16 = mul i32 3, %15
  %17 = add i32 %6, 2
  %18 = mul i32 %16, %17
  %19 = srem i32 %18, 6
  %20 = icmp eq i32 %19, 0
  %21 = xor i1 %20, true
  %22 = and i1 %14, %21
  %23 = add i1 %22, %20
  br i1 %23, label %24, label %35

24:                                               ; preds = %7
  %25 = mul i32 125, 28
  %26 = mul i32 46, 123
  %27 = mul i32 15, 68
  %28 = mul i32 74, 69
  %29 = sdiv i32 123, 94
  %30 = add i32 66, 90
  %31 = sub i32 78, 13
  %32 = sub i32 84, 121
  %33 = sdiv i32 27, 46
  %34 = sub i32 59, 68
  br label %35

35:                                               ; preds = %7, %24
  %36 = sdiv i32 %6, 2
  %37 = sitofp i32 %36 to float
  %38 = sdiv i32 %5, 2
  %39 = add nsw i32 %38, 1
  %40 = sitofp i32 %39 to float
  %41 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %42 = call fastcc float @_ZL3cosf(float %1) #9
  %43 = call fastcc float @_ZL3sinf(float %1) #9
  br label %58

44:                                               ; preds = %409
  %45 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %46 = call fastcc float @_ZL3sinf(float %0) #9
  %47 = fcmp une float %46, 0.000000e+00
  %48 = fmul float %46, 2.000000e+00
  %49 = select i1 %47, float %48, float %46
  %50 = srem i32 %17, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call fastcc float @_ZL3cosf(float %0) #9
  br label %56

54:                                               ; preds = %44
  %55 = call fastcc float @_ZL3cosf(float %0) #9
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi float [ %55, %54 ], [ %53, %52 ]
  br label %417

58:                                               ; preds = %409, %35
  %59 = phi double [ 0.000000e+00, %35 ], [ %402, %409 ]
  %60 = phi float [ 0.000000e+00, %35 ], [ %401, %409 ]
  %61 = fptosi float %60 to i32
  %62 = and i32 %38, 1
  %63 = icmp eq i32 %62, 0
  %64 = add i32 %38, 1
  %65 = mul i32 3, %64
  %66 = add i32 %38, 2
  %67 = mul i32 %65, %66
  %68 = srem i32 %67, 6
  %69 = icmp eq i32 %68, 0
  %70 = xor i1 %63, true
  %71 = and i1 %70, false
  %72 = and i1 %63, true
  %73 = or i1 %71, %72
  %74 = xor i1 %69, true
  %75 = and i1 %74, false
  %76 = and i1 %69, true
  %77 = or i1 %75, %76
  %78 = xor i1 %73, %77
  %79 = xor i1 %63, true
  %80 = xor i1 %69, true
  %81 = or i1 %79, %80
  %82 = xor i1 %81, true
  %83 = and i1 %82, true
  %84 = or i1 %78, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %58
  %86 = add i32 1, 52
  %87 = mul i32 58, 2
  %88 = sdiv i32 60, 59
  %89 = add i32 124, 26
  %90 = mul i32 30, 31
  %91 = sub i32 90, 58
  br label %92

92:                                               ; preds = %58, %85
  switch i32 %61, label %229 [
    i32 0, label %93
    i32 1, label %100
    i32 2, label %121
    i32 3, label %132
    i32 4, label %144
    i32 5, label %171
    i32 6, label %197
  ]

93:                                               ; preds = %92
  %94 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %95 = srem i32 %39, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %99

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %97
  br label %100

100:                                              ; preds = %99, %92
  %101 = phi float [ 0.000000e+00, %92 ], [ %94, %99 ]
  %102 = call fastcc float @_ZL3cosf(float %60) #9
  %103 = icmp sge i64 %11, %11
  %104 = mul i64 %11, %11
  %105 = add i64 %104, %11
  %106 = srem i64 %105, 2
  %107 = icmp eq i64 %106, 0
  %108 = xor i1 %103, true
  %109 = or i1 %108, %107
  %110 = xor i1 %103, true
  %111 = sub i1 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = mul i32 93, 21
  %114 = sub i32 3, 42
  %115 = sub i32 124, 47
  %116 = sdiv i32 71, 74
  %117 = sub i32 88, 90
  %118 = sdiv i32 32, 41
  %119 = add i32 85, 58
  br label %120

120:                                              ; preds = %100, %112
  br label %121

121:                                              ; preds = %120, %92
  %122 = phi float [ 0.000000e+00, %92 ], [ %102, %120 ]
  %123 = phi float [ 0.000000e+00, %92 ], [ %101, %120 ]
  %124 = srem i32 %6, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call fastcc float @_ZL3sinf(float %0) #9
  br label %130

128:                                              ; preds = %121
  %129 = call fastcc float @_ZL3sinf(float %0) #9
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi float [ %129, %128 ], [ %127, %126 ]
  br label %132

132:                                              ; preds = %130, %92
  %133 = phi float [ 0.000000e+00, %92 ], [ %131, %130 ]
  %134 = phi float [ 0.000000e+00, %92 ], [ %122, %130 ]
  %135 = phi float [ 0.000000e+00, %92 ], [ %123, %130 ]
  %136 = srem i32 %65, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = call fastcc float @_ZL3sinf(float %60) #9
  br label %142

140:                                              ; preds = %132
  %141 = call fastcc float @_ZL3sinf(float %60) #9
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi float [ %141, %140 ], [ %139, %138 ]
  br label %144

144:                                              ; preds = %142, %92
  %145 = phi float [ 0.000000e+00, %92 ], [ %143, %142 ]
  %146 = phi float [ 0.000000e+00, %92 ], [ %133, %142 ]
  %147 = phi float [ 0.000000e+00, %92 ], [ %134, %142 ]
  %148 = phi float [ 0.000000e+00, %92 ], [ %135, %142 ]
  %149 = icmp sge i32 %17, %17
  %150 = mul i32 %17, %17
  %151 = add i32 %150, %17
  %152 = srem i32 %151, 2
  %153 = icmp eq i32 %152, 0
  %154 = xor i1 %149, true
  %155 = or i1 %154, %153
  %156 = xor i1 %149, true
  %157 = sub i1 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %144
  %159 = sdiv i32 36, 40
  %160 = mul i32 115, 52
  %161 = add i32 91, 32
  %162 = sub i32 81, 53
  %163 = sdiv i32 56, 93
  %164 = add i32 53, 70
  %165 = add i32 11, 23
  %166 = sub i32 33, 37
  %167 = mul i32 123, 96
  %168 = sub i32 84, 107
  br label %169

169:                                              ; preds = %144, %158
  %170 = call fastcc float @_ZL3cosf(float %0) #9
  br label %171

171:                                              ; preds = %169, %92
  %172 = phi float [ 0.000000e+00, %92 ], [ %170, %169 ]
  %173 = phi float [ 0.000000e+00, %92 ], [ %145, %169 ]
  %174 = phi float [ 0.000000e+00, %92 ], [ %146, %169 ]
  %175 = phi float [ 0.000000e+00, %92 ], [ %147, %169 ]
  %176 = phi float [ 0.000000e+00, %92 ], [ %148, %169 ]
  %177 = icmp sge i32 %18, %18
  %178 = mul i32 %18, %18
  %179 = add i32 %178, %18
  %180 = srem i32 %179, 2
  %181 = icmp eq i32 %180, 0
  %182 = xor i1 %177, true
  %183 = xor i1 %181, true
  %184 = or i1 %182, %183
  %185 = xor i1 %184, true
  %186 = and i1 %185, true
  br i1 %186, label %187, label %195

187:                                              ; preds = %171
  %188 = mul i32 50, 91
  %189 = sdiv i32 0, 82
  %190 = sdiv i32 3, 95
  %191 = add i32 45, 26
  %192 = mul i32 36, 105
  %193 = add i32 123, 87
  %194 = mul i32 52, 112
  br label %195

195:                                              ; preds = %171, %187
  %196 = fadd float %175, %12
  br label %197

197:                                              ; preds = %195, %92
  %198 = phi float [ 0.000000e+00, %92 ], [ %196, %195 ]
  %199 = phi float [ 0.000000e+00, %92 ], [ %172, %195 ]
  %200 = phi float [ 0.000000e+00, %92 ], [ %173, %195 ]
  %201 = phi float [ 0.000000e+00, %92 ], [ %174, %195 ]
  %202 = phi float [ 0.000000e+00, %92 ], [ %175, %195 ]
  %203 = phi float [ 0.000000e+00, %92 ], [ %176, %195 ]
  %204 = fmul float %198, %203
  %205 = fmul float %199, %204
  %206 = fmul float %200, %201
  %207 = fsub float %205, %206
  %208 = add i32 %17, 1
  %209 = mul i32 3, %208
  %210 = add i32 %17, 2
  %211 = mul i32 %209, %210
  %212 = srem i32 %211, 6
  %213 = icmp eq i32 %212, 0
  %214 = mul i32 %17, %17
  %215 = add i32 %214, %17
  %216 = srem i32 %215, 2
  %217 = icmp eq i32 %216, 0
  %218 = xor i1 %217, true
  %219 = xor i1 %213, %218
  %220 = and i1 %219, %213
  br i1 %220, label %221, label %228

221:                                              ; preds = %197
  %222 = add i32 1, 105
  %223 = sub i32 120, 118
  %224 = sdiv i32 13, 19
  %225 = mul i32 114, 15
  %226 = mul i32 4, 43
  %227 = sub i32 1, 68
  br label %228

228:                                              ; preds = %197, %221
  br label %229

229:                                              ; preds = %228, %92
  %230 = phi float [ 0.000000e+00, %92 ], [ %207, %228 ]
  %231 = phi float [ 0.000000e+00, %92 ], [ %198, %228 ]
  %232 = phi float [ 0.000000e+00, %92 ], [ %199, %228 ]
  %233 = phi float [ 0.000000e+00, %92 ], [ %200, %228 ]
  %234 = phi float [ 0.000000e+00, %92 ], [ %201, %228 ]
  %235 = phi float [ 0.000000e+00, %92 ], [ %202, %228 ]
  %236 = phi float [ 0.000000e+00, %92 ], [ %203, %228 ]
  %237 = fmul float %231, %236
  %238 = fmul float %234, %237
  %239 = srem i64 %11, 2
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %283

241:                                              ; preds = %229
  %242 = fmul float %232, %233
  %243 = fadd float %242, %238
  %244 = fadd float %243, 5.000000e+00
  %245 = fdiv float 1.000000e+00, %244
  %246 = fmul float %245, 3.000000e+01
  %247 = fmul float %231, %41
  %248 = fmul float %247, %42
  %249 = fmul float %230, %43
  %250 = fadd float %248, %249
  %251 = fmul float %250, %246
  %252 = fadd float %251, %37
  %253 = fptosi float %252 to i32
  %254 = fmul float %245, 1.500000e+01
  %255 = fmul float %247, %43
  %256 = fmul float %230, %42
  %257 = fsub float %255, %256
  %258 = fmul float %257, %254
  %259 = fadd float %258, %40
  %260 = fptosi float %259 to i32
  %261 = fmul float %233, %234
  %262 = fmul float %235, %236
  %263 = fmul float %232, %262
  %264 = fsub float %261, %263
  %265 = fmul float %42, %264
  %266 = fmul float %234, %262
  %267 = fsub float %265, %266
  %268 = fsub float %267, %242
  %269 = fmul float %235, %41
  %270 = fmul float %269, %43
  %271 = fsub float %268, %270
  %272 = fmul float %271, 8.000000e+00
  %273 = fptosi float %272 to i32
  %274 = icmp slt i32 %260, %5
  %275 = icmp sgt i32 %260, 0
  %276 = xor i1 %275, true
  %277 = xor i1 %274, %276
  %278 = and i1 %277, %274
  %279 = icmp sgt i32 %253, 0
  %280 = select i1 %278, i1 %279, i1 false
  %281 = icmp slt i32 %253, %6
  %282 = select i1 %280, i1 %281, i1 false
  br label %323

283:                                              ; preds = %229
  %284 = fmul float %232, %233
  %285 = fadd float %284, %238
  %286 = fadd float %285, 5.000000e+00
  %287 = fdiv float 1.000000e+00, %286
  %288 = fmul float %287, 3.000000e+01
  %289 = fmul float %231, %41
  %290 = fmul float %289, %42
  %291 = fmul float %230, %43
  %292 = fadd float %290, %291
  %293 = fmul float %292, %288
  %294 = fadd float %293, %37
  %295 = fptosi float %294 to i32
  %296 = fmul float %287, 1.500000e+01
  %297 = fmul float %289, %43
  %298 = fmul float %230, %42
  %299 = fsub float %297, %298
  %300 = fmul float %299, %296
  %301 = fadd float %300, %40
  %302 = fptosi float %301 to i32
  %303 = fmul float %233, %234
  %304 = fmul float %235, %236
  %305 = fmul float %232, %304
  %306 = fsub float %303, %305
  %307 = fmul float %42, %306
  %308 = fmul float %234, %304
  %309 = fsub float %307, %308
  %310 = fsub float %309, %284
  %311 = fmul float %235, %41
  %312 = fmul float %311, %43
  %313 = fsub float %310, %312
  %314 = fmul float %313, 8.000000e+00
  %315 = fptosi float %314 to i32
  %316 = icmp slt i32 %302, %5
  %317 = icmp sgt i32 %302, 0
  %318 = and i1 %316, %317
  %319 = icmp sgt i32 %295, 0
  %320 = select i1 %318, i1 %319, i1 false
  %321 = icmp slt i32 %295, %6
  %322 = select i1 %320, i1 %321, i1 false
  br label %323

323:                                              ; preds = %283, %241
  %324 = phi float [ %284, %283 ], [ %242, %241 ]
  %325 = phi float [ %285, %283 ], [ %243, %241 ]
  %326 = phi float [ %286, %283 ], [ %244, %241 ]
  %327 = phi float [ %287, %283 ], [ %245, %241 ]
  %328 = phi float [ %288, %283 ], [ %246, %241 ]
  %329 = phi float [ %289, %283 ], [ %247, %241 ]
  %330 = phi float [ %290, %283 ], [ %248, %241 ]
  %331 = phi float [ %291, %283 ], [ %249, %241 ]
  %332 = phi float [ %292, %283 ], [ %250, %241 ]
  %333 = phi float [ %293, %283 ], [ %251, %241 ]
  %334 = phi float [ %294, %283 ], [ %252, %241 ]
  %335 = phi i32 [ %295, %283 ], [ %253, %241 ]
  %336 = phi float [ %296, %283 ], [ %254, %241 ]
  %337 = phi float [ %297, %283 ], [ %255, %241 ]
  %338 = phi float [ %298, %283 ], [ %256, %241 ]
  %339 = phi float [ %299, %283 ], [ %257, %241 ]
  %340 = phi float [ %300, %283 ], [ %258, %241 ]
  %341 = phi float [ %301, %283 ], [ %259, %241 ]
  %342 = phi i32 [ %302, %283 ], [ %260, %241 ]
  %343 = phi float [ %303, %283 ], [ %261, %241 ]
  %344 = phi float [ %304, %283 ], [ %262, %241 ]
  %345 = phi float [ %305, %283 ], [ %263, %241 ]
  %346 = phi float [ %306, %283 ], [ %264, %241 ]
  %347 = phi float [ %307, %283 ], [ %265, %241 ]
  %348 = phi float [ %308, %283 ], [ %266, %241 ]
  %349 = phi float [ %309, %283 ], [ %267, %241 ]
  %350 = phi float [ %310, %283 ], [ %268, %241 ]
  %351 = phi float [ %311, %283 ], [ %269, %241 ]
  %352 = phi float [ %312, %283 ], [ %270, %241 ]
  %353 = phi float [ %313, %283 ], [ %271, %241 ]
  %354 = phi float [ %314, %283 ], [ %272, %241 ]
  %355 = phi i32 [ %315, %283 ], [ %273, %241 ]
  %356 = phi i1 [ %316, %283 ], [ %274, %241 ]
  %357 = phi i1 [ %317, %283 ], [ %275, %241 ]
  %358 = phi i1 [ %318, %283 ], [ %278, %241 ]
  %359 = phi i1 [ %319, %283 ], [ %279, %241 ]
  %360 = phi i1 [ %320, %283 ], [ %280, %241 ]
  %361 = phi i1 [ %321, %283 ], [ %281, %241 ]
  %362 = phi i1 [ %322, %283 ], [ %282, %241 ]
  br i1 %362, label %363, label %399

363:                                              ; preds = %323
  %364 = mul nsw i32 %342, %6
  %365 = add nsw i32 %364, %335
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, float* %3, i64 %366
  %368 = load float, float* %367, align 4, !tbaa !13
  %369 = srem i64 %9, 2
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %363
  %372 = fcmp ogt float %327, %368
  br label %375

373:                                              ; preds = %363
  %374 = fcmp ogt float %327, %368
  br label %375

375:                                              ; preds = %373, %371
  %376 = phi i1 [ %374, %373 ], [ %372, %371 ]
  br i1 %376, label %377, label %399

377:                                              ; preds = %375
  store float %327, float* %367, align 4, !tbaa !13
  %378 = icmp sgt i32 %355, 0
  %379 = srem i32 %15, 2
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %387

381:                                              ; preds = %377
  %382 = select i1 %378, i32 %355, i32 0
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %383
  %385 = load i8, i8* %384, align 1, !tbaa !10
  %386 = getelementptr inbounds i8, i8* %4, i64 %366
  store i8 %385, i8* %386, align 1, !tbaa !10
  br label %393

387:                                              ; preds = %377
  %388 = select i1 %378, i32 %355, i32 0
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %389
  %391 = load i8, i8* %390, align 1, !tbaa !10
  %392 = getelementptr inbounds i8, i8* %4, i64 %366
  store i8 %391, i8* %392, align 1, !tbaa !10
  br label %393

393:                                              ; preds = %387, %381
  %394 = phi i32 [ %388, %387 ], [ %382, %381 ]
  %395 = phi i64 [ %389, %387 ], [ %383, %381 ]
  %396 = phi i8* [ %390, %387 ], [ %384, %381 ]
  %397 = phi i8 [ %391, %387 ], [ %385, %381 ]
  %398 = phi i8* [ %392, %387 ], [ %386, %381 ]
  br label %399

399:                                              ; preds = %393, %375, %323
  %400 = fadd double %59, 7.000000e-02
  %401 = fptrunc double %400 to float
  %402 = fpext float %401 to double
  %403 = srem i32 %18, 2
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %399
  %406 = fcmp olt double %402, 6.280000e+00
  br label %409

407:                                              ; preds = %399
  %408 = fcmp olt double %402, 6.280000e+00
  br label %409

409:                                              ; preds = %407, %405
  %410 = phi i1 [ %408, %407 ], [ %406, %405 ]
  br i1 %410, label %58, label %44, !llvm.loop !18

411:                                              ; preds = %585
  %412 = srem i64 %9, 2
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  br label %416

415:                                              ; preds = %411
  br label %416

416:                                              ; preds = %415, %414
  ret void

417:                                              ; preds = %585, %56
  %418 = phi double [ 0.000000e+00, %56 ], [ %586, %585 ]
  %419 = phi i32 [ 0, %56 ], [ %421, %585 ]
  %420 = phi float [ 0.000000e+00, %56 ], [ %576, %585 ]
  %421 = add nuw nsw i32 %419, 1
  %422 = sitofp i32 %419 to float
  %423 = fadd float %45, %422
  %424 = call fastcc float @_ZL3cosf(float %420) #9
  %425 = fcmp une float %423, 0.000000e+00
  %426 = fmul float %423, 2.000000e+00
  %427 = fmul float %424, 2.000000e+00
  %428 = select i1 %425, float %426, float %423
  %429 = select i1 %425, float %424, float %427
  %430 = call fastcc float @_ZL3sinf(float %420) #9
  %431 = fmul float %430, 2.000000e+00
  %432 = select i1 %47, float %430, float %431
  %433 = fadd float %429, %12
  %434 = fmul float %428, %433
  %435 = fmul float %57, %434
  %436 = fmul float %49, %432
  %437 = fsub float %435, %436
  %438 = fcmp une float %433, 0.000000e+00
  %439 = fmul float %437, 2.000000e+00
  %440 = fmul float %433, 2.000000e+00
  %441 = select i1 %438, float %433, float %440
  %442 = select i1 %438, float %439, float %437
  %443 = fmul float %428, %441
  %444 = fmul float %49, %443
  %445 = fmul float %57, %432
  %446 = fadd float %445, %444
  %447 = fadd float %446, 5.000000e+00
  %448 = fdiv float 1.000000e+00, %447
  %449 = fmul float %448, 3.000000e+01
  %450 = fmul float %41, %441
  %451 = fmul float %42, %450
  %452 = add i32 %38, 1
  %453 = mul i32 3, %452
  %454 = add i32 %38, 2
  %455 = mul i32 %453, %454
  %456 = srem i32 %455, 6
  %457 = icmp eq i32 %456, 0
  %458 = mul i32 %38, %38
  %459 = add i32 %458, %38
  %460 = srem i32 %459, 2
  %461 = icmp eq i32 %460, 0
  %462 = xor i1 %457, true
  %463 = or i1 %462, %461
  %464 = xor i1 %457, true
  %465 = sub i1 %463, %464
  br i1 %465, label %466, label %474

466:                                              ; preds = %417
  %467 = add i32 101, 8
  %468 = sdiv i32 87, 110
  %469 = mul i32 79, 43
  %470 = mul i32 92, 30
  %471 = sdiv i32 125, 88
  %472 = add i32 112, 62
  %473 = sub i32 62, 14
  br label %474

474:                                              ; preds = %417, %466
  %475 = fmul float %43, %442
  %476 = fadd float %451, %475
  %477 = fmul float %476, %449
  %478 = fadd float %477, %37
  %479 = fptosi float %478 to i32
  %480 = fmul float %448, 1.500000e+01
  %481 = fmul float %450, %43
  %482 = fmul float %42, %442
  %483 = fsub float %481, %482
  %484 = fmul float %483, %480
  %485 = fadd float %484, %40
  %486 = fptosi float %485 to i32
  %487 = fmul float %428, %429
  %488 = fmul float %487, %57
  %489 = fsub float %436, %488
  %490 = fmul float %42, %489
  %491 = fmul float %487, %49
  %492 = fsub float %490, %491
  %493 = fsub float %492, %445
  %494 = fmul float %429, %41
  %495 = fmul float %494, %43
  %496 = fsub float %493, %495
  %497 = fmul float %496, 8.000000e+00
  %498 = fptosi float %497 to i32
  %499 = icmp slt i32 %486, %5
  %500 = icmp sgt i32 %486, 0
  %501 = and i1 %499, %500
  %502 = icmp sgt i32 %479, 0
  %503 = select i1 %501, i1 %502, i1 false
  %504 = icmp slt i32 %479, %6
  %505 = select i1 %503, i1 %504, i1 false
  %506 = icmp sge i64 %9, %9
  %507 = mul i64 %9, %9
  %508 = add i64 %507, %9
  %509 = srem i64 %508, 2
  %510 = icmp eq i64 %509, 0
  %511 = xor i1 %506, true
  %512 = xor i1 %510, true
  %513 = or i1 %511, %512
  %514 = xor i1 %513, true
  %515 = and i1 %514, true
  %516 = xor i1 %505, true
  %517 = xor i1 %515, true
  %518 = or i1 %516, %517
  %519 = xor i1 %518, true
  %520 = and i1 %519, true
  br i1 %520, label %521, label %574

521:                                              ; preds = %474
  %522 = mul nsw i32 %486, %6
  %523 = add nsw i32 %522, %479
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds float, float* %3, i64 %524
  %526 = add i32 %66, 1
  %527 = mul i32 3, %526
  %528 = add i32 %66, 2
  %529 = mul i32 %527, %528
  %530 = srem i32 %529, 6
  %531 = icmp eq i32 %530, 0
  %532 = mul i32 %66, %66
  %533 = add i32 %532, %66
  %534 = srem i32 %533, 2
  %535 = icmp eq i32 %534, 0
  %536 = xor i1 %531, true
  %537 = or i1 %536, %535
  %538 = xor i1 %531, true
  %539 = sub i1 %537, %538
  br i1 %539, label %540, label %551

540:                                              ; preds = %521
  %541 = sub i32 117, 99
  %542 = add i32 35, 121
  %543 = sub i32 71, 73
  %544 = sdiv i32 117, 7
  %545 = mul i32 57, 59
  %546 = add i32 41, 112
  %547 = mul i32 78, 74
  %548 = sdiv i32 126, 36
  %549 = mul i32 21, 116
  %550 = add i32 9, 24
  br label %551

551:                                              ; preds = %521, %540
  %552 = load float, float* %525, align 4, !tbaa !13
  %553 = fcmp ogt float %448, %552
  br i1 %553, label %554, label %574

554:                                              ; preds = %551
  store float %448, float* %525, align 4, !tbaa !13
  %555 = icmp sgt i32 %498, 0
  %556 = select i1 %555, i32 %498, i32 0
  %557 = srem i32 %532, 2
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %564

559:                                              ; preds = %554
  %560 = zext i32 %556 to i64
  %561 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %560
  %562 = load i8, i8* %561, align 1, !tbaa !10
  %563 = getelementptr inbounds i8, i8* %4, i64 %524
  store i8 %562, i8* %563, align 1, !tbaa !10
  br label %569

564:                                              ; preds = %554
  %565 = zext i32 %556 to i64
  %566 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %565
  %567 = load i8, i8* %566, align 1, !tbaa !10
  %568 = getelementptr inbounds i8, i8* %4, i64 %524
  store i8 %567, i8* %568, align 1, !tbaa !10
  br label %569

569:                                              ; preds = %564, %559
  %570 = phi i64 [ %565, %564 ], [ %560, %559 ]
  %571 = phi i8* [ %566, %564 ], [ %561, %559 ]
  %572 = phi i8 [ %567, %564 ], [ %562, %559 ]
  %573 = phi i8* [ %568, %564 ], [ %563, %559 ]
  br label %574

574:                                              ; preds = %569, %551, %474
  %575 = fadd double %418, 7.000000e-02
  %576 = fptrunc double %575 to float
  %577 = srem i32 %498, 2
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %582

579:                                              ; preds = %574
  %580 = fpext float %576 to double
  %581 = icmp eq i32 %421, 90
  br label %585

582:                                              ; preds = %574
  %583 = fpext float %576 to double
  %584 = icmp eq i32 %421, 90
  br label %585

585:                                              ; preds = %582, %579
  %586 = phi double [ %583, %582 ], [ %580, %579 ]
  %587 = phi i1 [ %584, %582 ], [ %581, %579 ]
  br i1 %587, label %411, label %417, !llvm.loop !19
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3sinf(float %0) unnamed_addr #5 {
  %2 = call float @llvm.sin.f32(float %0)
  ret float %2
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable
define internal fastcc float @_ZL3cosf(float %0) unnamed_addr #5 {
  %2 = call float @llvm.cos.f32(float %0)
  ret float %2
}

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #6 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  store float 0.000000e+00, float* %1, align 4, !tbaa !13
  %4 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0.000000e+00, float* %2, align 4, !tbaa !13
  %5 = call i8* @llvm.stacksave()
  %6 = alloca [1760 x float], align 4
  %7 = alloca [1760 x i8], align 1
  %8 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 0
  %9 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 0
  %10 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %56, %0
  %12 = phi i32 [ 5, %0 ], [ %15, %56 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp eq i32 %15, 10
  %17 = and i32 %10, 1
  %18 = icmp eq i32 %17, 1
  %19 = mul i32 %10, %10
  %20 = add i32 %19, %10
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = xor i1 %18, true
  %24 = and i1 %23, false
  %25 = and i1 %18, true
  %26 = or i1 %24, %25
  %27 = xor i1 %22, true
  %28 = and i1 %27, false
  %29 = and i1 %22, true
  %30 = or i1 %28, %29
  %31 = xor i1 %26, %30
  %32 = xor i1 %18, true
  %33 = xor i1 %22, true
  %34 = or i1 %32, %33
  %35 = xor i1 %34, true
  %36 = and i1 %35, true
  %37 = or i1 %31, %36
  %38 = xor i1 %16, true
  %39 = xor i1 %37, true
  %40 = or i1 %38, %39
  %41 = srem i32 %10, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %11
  %44 = xor i1 %40, true
  %45 = and i1 %44, true
  br label %56

46:                                               ; preds = %11
  %47 = xor i1 %40, true
  %48 = and i1 %47, false
  %49 = and i1 %40, true
  %50 = or i1 %48, %49
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = or i1 %52, true
  %54 = xor i1 %51, true
  %55 = sub i1 %53, %54
  br label %56

56:                                               ; preds = %46, %43
  %57 = phi i1 [ %51, %46 ], [ %44, %43 ]
  %58 = phi i1 [ %55, %46 ], [ %45, %43 ]
  br i1 %58, label %80, label %11, !llvm.loop !20

59:                                               ; preds = %134
  call void @llvm.stackrestore(i8* %5)
  %60 = icmp sge i32 %96, %96
  %61 = mul i32 %96, %96
  %62 = add i32 %61, %96
  %63 = srem i32 %62, 2
  %64 = icmp eq i32 %63, 0
  %65 = xor i1 %60, true
  %66 = xor i1 %64, true
  %67 = or i1 %65, %66
  %68 = xor i1 %67, true
  %69 = and i1 %68, true
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = sub i32 43, 94
  %72 = mul i32 29, 18
  %73 = sub i32 81, 18
  %74 = sdiv i32 19, 50
  %75 = mul i32 107, 73
  %76 = mul i32 68, 100
  %77 = add i32 50, 89
  %78 = add i32 1, 57
  br label %79

79:                                               ; preds = %59, %70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %91

80:                                               ; preds = %134, %56
  %81 = phi i64 [ %92, %134 ], [ 0, %56 ]
  %82 = phi i32 [ %91, %134 ], [ 0, %56 ]
  %83 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %81
  %84 = load i8, i8* %83, align 1, !tbaa !10
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %82, %85
  %87 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %81
  %88 = load float, float* %87, align 4, !tbaa !13
  %89 = sitofp i32 %86 to float
  %90 = fadd float %88, %89
  %91 = fptosi float %90 to i32
  %92 = add nuw nsw i64 %81, 1
  %93 = icmp eq i64 %92, 1760
  %94 = add i32 %12, 1
  %95 = mul i32 3, %94
  %96 = add i32 %12, 2
  %97 = mul i32 %95, %96
  %98 = srem i32 %97, 6
  %99 = icmp eq i32 %98, 0
  %100 = mul i32 %12, %12
  %101 = add i32 %100, %12
  %102 = srem i32 %101, 2
  %103 = icmp eq i32 %102, 0
  %104 = xor i1 %99, true
  %105 = and i1 %104, false
  %106 = and i1 %99, true
  %107 = or i1 %105, %106
  %108 = xor i1 %103, true
  %109 = and i1 %108, false
  %110 = and i1 %103, true
  %111 = or i1 %109, %110
  %112 = xor i1 %107, %111
  %113 = xor i1 %99, true
  %114 = xor i1 %103, true
  %115 = and i32 %12, 1
  %116 = icmp eq i32 %115, 0
  %117 = add i32 %12, 1
  %118 = mul i32 3, %117
  %119 = add i32 %12, 2
  %120 = mul i32 %118, %119
  %121 = srem i32 %120, 6
  %122 = icmp eq i32 %121, 0
  %123 = xor i1 %122, true
  %124 = and i1 %116, %123
  %125 = add i1 %124, %122
  br i1 %125, label %126, label %134

126:                                              ; preds = %80
  %127 = mul i32 114, 22
  %128 = sdiv i32 72, 35
  %129 = sdiv i32 117, 114
  %130 = mul i32 63, 95
  %131 = sdiv i32 111, 7
  %132 = mul i32 45, 73
  %133 = add i32 14, 34
  br label %134

134:                                              ; preds = %80, %126
  %135 = or i1 %113, %114
  %136 = xor i1 %135, true
  %137 = and i1 %136, true
  %138 = or i1 %112, %137
  %139 = xor i1 %93, true
  %140 = or i1 %139, %138
  %141 = xor i1 %93, true
  %142 = sub i1 %140, %141
  br i1 %142, label %59, label %80, !llvm.loop !21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #8

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !11, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}

; ModuleID = '../../../../donut.ll'
source_filename = "donut_deobfuscated.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@Z_SIZE = local_unnamed_addr constant i64 1760, align 8
@B_SIZE = local_unnamed_addr constant i64 1760, align 8
@WAIT_TIME = local_unnamed_addr constant i64 30000, align 8
@.str = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@CHARS = local_unnamed_addr global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @update(float* %0, float* %1) local_unnamed_addr #0 {
  %3 = icmp eq float* %0, null
  %4 = icmp eq float* %1, null
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = load float, float* %0, align 4, !tbaa !10
  %8 = fpext float %7 to double
  %9 = fadd double %8, 4.000000e-05
  %10 = fptrunc double %9 to float
  store float %10, float* %0, align 4, !tbaa !10
  %11 = load float, float* %1, align 4, !tbaa !10
  %12 = fpext float %11 to double
  %13 = fadd double %12, 2.000000e-05
  %14 = fptrunc double %13 to float
  store float %14, float* %1, align 4, !tbaa !10
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %6 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @render(float* %0, float* %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #1 {
  %5 = srem i64 %3, 2
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %20, %4
  %8 = sdiv i32 40, 97
  %9 = icmp eq i64 %3, 1760
  %10 = mul i32 55, 95
  %11 = srem i64 %5, 2
  %12 = icmp eq i64 %11, 0
  %13 = and i64 %3, 1
  %14 = icmp eq i64 %13, 1
  %15 = mul i64 %3, %3
  %16 = add i64 %15, %3
  %17 = srem i64 %16, 2
  %18 = icmp eq i64 %17, 0
  %19 = or i1 %14, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %7
  %21 = sub i32 28, -116
  %22 = add i32 80, 0
  %23 = add i32 1305818506, -1305818571
  %24 = mul i32 107, 112
  %25 = sub i32 101, -18
  br i1 %19, label %32, label %7

26:                                               ; preds = %7
  %27 = add i32 28, 116
  %28 = sub i32 80, 0
  %29 = sub i32 33, 98
  %30 = mul i32 107, 112
  %31 = add i32 101, 18
  br label %32

32:                                               ; preds = %20, %26
  %33 = phi i32 [ %27, %26 ], [ %21, %20 ]
  %34 = phi i32 [ %28, %26 ], [ %22, %20 ]
  %35 = phi i32 [ %29, %26 ], [ %23, %20 ]
  %36 = phi i32 [ %30, %26 ], [ %24, %20 ]
  %37 = phi i32 [ %31, %26 ], [ %25, %20 ]
  br label %40

38:                                               ; preds = %4
  %39 = icmp eq i64 %3, 1760
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i1 [ %39, %38 ], [ %9, %32 ]
  br i1 %41, label %81, label %252

42:                                               ; preds = %64, %249
  %43 = srem i32 %183, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = icmp eq i64 %251, 1761
  br label %79

47:                                               ; preds = %42
  %48 = mul i32 42, 43
  %49 = icmp eq i64 %251, 1761
  %50 = sub i32 50, 12
  %51 = srem i32 %183, 2
  %52 = icmp eq i32 %51, 0
  %53 = mul i64 %82, 2
  %54 = mul i64 %82, 2
  %55 = add i64 2, %54
  %56 = mul i64 %53, %55
  %57 = srem i64 %56, 4
  %58 = icmp eq i64 %57, 0
  %59 = mul i64 %82, %82
  %60 = add i64 %59, %82
  %61 = srem i64 %60, 2
  %62 = icmp eq i64 %61, 0
  %63 = or i1 %58, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %47
  %65 = sub i32 65, 99
  %66 = sdiv i32 109, 30
  %67 = sdiv i32 27, 55
  %68 = mul i32 20, 1
  br i1 %63, label %74, label %42

69:                                               ; preds = %47
  %70 = add i32 65, -99
  %71 = sdiv i32 109, 30
  %72 = sdiv i32 27, 55
  %73 = mul i32 20, 1
  br label %74

74:                                               ; preds = %64, %69
  %75 = phi i32 [ %70, %69 ], [ %65, %64 ]
  %76 = phi i32 [ %71, %69 ], [ %66, %64 ]
  %77 = phi i32 [ %72, %69 ], [ %67, %64 ]
  %78 = phi i32 [ %73, %69 ], [ %68, %64 ]
  br label %79

79:                                               ; preds = %74, %45
  %80 = phi i1 [ %49, %74 ], [ %46, %45 ]
  br i1 %80, label %252, label %81, !llvm.loop !14

81:                                               ; preds = %100, %79, %40
  %82 = phi i64 [ %251, %79 ], [ 0, %40 ], [ 0, %100 ]
  %83 = srem i64 %5, 2
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %130

85:                                               ; preds = %81
  %86 = sdiv i32 22, 18
  %87 = srem i64 %82, 2
  %88 = icmp eq i64 %87, 0
  %89 = mul i64 %3, 2
  %90 = mul i64 %3, 2
  %91 = add i64 2, %90
  %92 = mul i64 %89, %91
  %93 = srem i64 %92, 4
  %94 = icmp eq i64 %93, 0
  %95 = mul i64 %3, %3
  %96 = add i64 %95, %3
  %97 = srem i64 %96, 2
  %98 = icmp eq i64 %97, 0
  %99 = and i1 %94, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %85
  %101 = trunc i64 %82 to i32
  %102 = sub i32 0, -237
  %103 = urem i32 %101, 80
  %104 = mul i32 49, 70
  %105 = icmp eq i32 %103, 0
  %106 = sdiv i32 89, 60
  %107 = mul i32 106, 100
  %108 = sub i32 -2070597310, -2070597325
  %109 = sdiv i32 34, 1
  br i1 %99, label %120, label %81

110:                                              ; preds = %85
  %111 = trunc i64 %82 to i32
  %112 = add i32 126, 111
  %113 = urem i32 %111, 80
  %114 = mul i32 49, 70
  %115 = icmp eq i32 %113, 0
  %116 = sdiv i32 89, 60
  %117 = mul i32 106, 100
  %118 = sub i32 17, 2
  %119 = sdiv i32 34, 1
  br label %120

120:                                              ; preds = %100, %110
  %121 = phi i32 [ %111, %110 ], [ %101, %100 ]
  %122 = phi i32 [ %112, %110 ], [ %102, %100 ]
  %123 = phi i32 [ %113, %110 ], [ %103, %100 ]
  %124 = phi i32 [ %114, %110 ], [ %104, %100 ]
  %125 = phi i1 [ %115, %110 ], [ %105, %100 ]
  %126 = phi i32 [ %116, %110 ], [ %106, %100 ]
  %127 = phi i32 [ %117, %110 ], [ %107, %100 ]
  %128 = phi i32 [ %118, %110 ], [ %108, %100 ]
  %129 = phi i32 [ %119, %110 ], [ %109, %100 ]
  br label %134

130:                                              ; preds = %81
  %131 = trunc i64 %82 to i32
  %132 = urem i32 %131, 80
  %133 = icmp eq i32 %132, 0
  br label %134

134:                                              ; preds = %130, %120
  %135 = phi i32 [ %131, %130 ], [ %121, %120 ]
  %136 = phi i32 [ %132, %130 ], [ %123, %120 ]
  %137 = phi i1 [ %133, %130 ], [ %125, %120 ]
  br i1 %137, label %182, label %138

138:                                              ; preds = %172, %134
  %139 = srem i32 %136, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = getelementptr inbounds i8, i8* %2, i64 %82
  %143 = load i8, i8* %142, align 1, !tbaa !17
  %144 = sext i8 %143 to i32
  br label %178

145:                                              ; preds = %138
  %146 = sub i32 10, 55
  %147 = getelementptr inbounds i8, i8* %2, i64 %82
  %148 = add i32 87, 86
  %149 = load i8, i8* %147, align 1, !tbaa !17
  %150 = add i32 43, 56
  %151 = sext i8 %149 to i32
  %152 = mul i32 108, 25
  %153 = sub i32 10, 31
  %154 = add i32 33, 30
  %155 = sub i32 82, 24
  %156 = srem i64 %83, 2
  %157 = icmp eq i64 %156, 0
  %158 = mul i64 %5, 2
  %159 = mul i64 %5, 2
  %160 = add i64 2, %159
  %161 = mul i64 %158, %160
  %162 = srem i64 %161, 4
  %163 = icmp eq i64 %162, 0
  %164 = mul i64 %5, %5
  %165 = add i64 %164, %5
  %166 = srem i64 %165, 2
  %167 = icmp eq i64 %166, 0
  %168 = or i1 %163, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %145
  %170 = mul i32 96, 87
  %171 = sdiv i32 34, 17
  br label %175

172:                                              ; preds = %145
  %173 = mul i32 96, 87
  %174 = sdiv i32 34, 17
  br i1 %168, label %175, label %138

175:                                              ; preds = %172, %169
  %176 = phi i32 [ %173, %172 ], [ %170, %169 ]
  %177 = phi i32 [ %174, %172 ], [ %171, %169 ]
  br label %178

178:                                              ; preds = %175, %141
  %179 = phi i8* [ %147, %175 ], [ %142, %141 ]
  %180 = phi i8 [ %149, %175 ], [ %143, %141 ]
  %181 = phi i32 [ %151, %175 ], [ %144, %141 ]
  br label %182

182:                                              ; preds = %215, %178, %134
  %183 = phi i32 [ %181, %178 ], [ 10, %134 ], [ 0, %215 ]
  %184 = call i32 @putchar(i32 %183)
  %185 = call i32 @update(float* %0, float* %1)
  %186 = srem i64 %83, 2
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %246

188:                                              ; preds = %182
  %189 = sub i32 33, 82
  %190 = icmp eq i32 %185, 0
  %191 = srem i32 %184, 2
  %192 = icmp eq i32 %191, 0
  %193 = mul i64 %186, %186
  %194 = add i64 %193, %186
  %195 = mul i64 %194, 3
  %196 = srem i64 %195, 2
  %197 = icmp eq i64 %196, 0
  %198 = mul i64 %186, %186
  %199 = add i64 %198, %186
  %200 = srem i64 %199, 2
  %201 = icmp eq i64 %200, 0
  %202 = and i1 %197, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %188
  %204 = sub i32 23, 51
  %205 = sub i64 %82, -1733711871655804553
  %206 = mul i32 20, 56
  %207 = add i64 %205, 1
  %208 = mul i32 101, 55
  %209 = add i64 %207, -1733711871655804553
  %210 = sdiv i32 62, 16
  %211 = sdiv i32 45, 125
  %212 = sub i32 124, 83
  %213 = sub i32 117, 17
  %214 = add i32 65, 8
  br label %234

215:                                              ; preds = %188
  %216 = add i32 -1154893061, 1154893033
  %217 = sub i64 %82, 8544670153248764876
  %218 = sub i64 %217, -1733711871655804553
  %219 = add i64 %218, 8544670153248764876
  %220 = mul i32 20, 56
  %221 = add i64 %219, 8584117525920968542
  %222 = add i64 %221, 1
  %223 = sub i64 %222, 8584117525920968542
  %224 = mul i32 101, 55
  %225 = xor i64 %223, -1733711871655804553
  %226 = and i64 %223, -1733711871655804553
  %227 = mul i64 2, %226
  %228 = add i64 %225, %227
  %229 = sdiv i32 62, 16
  %230 = sdiv i32 45, 125
  %231 = sub i32 1205723747, 1205723706
  %232 = add i32 117, -17
  %233 = add i32 0, 73
  br i1 %202, label %234, label %182

234:                                              ; preds = %215, %203
  %235 = phi i32 [ %216, %215 ], [ %204, %203 ]
  %236 = phi i64 [ %219, %215 ], [ %205, %203 ]
  %237 = phi i32 [ %220, %215 ], [ %206, %203 ]
  %238 = phi i64 [ %223, %215 ], [ %207, %203 ]
  %239 = phi i32 [ %224, %215 ], [ %208, %203 ]
  %240 = phi i64 [ %228, %215 ], [ %209, %203 ]
  %241 = phi i32 [ %229, %215 ], [ %210, %203 ]
  %242 = phi i32 [ %230, %215 ], [ %211, %203 ]
  %243 = phi i32 [ %231, %215 ], [ %212, %203 ]
  %244 = phi i32 [ %232, %215 ], [ %213, %203 ]
  %245 = phi i32 [ %233, %215 ], [ %214, %203 ]
  br label %249

246:                                              ; preds = %182
  %247 = icmp eq i32 %185, 0
  %248 = add nuw nsw i64 %82, 1
  br label %249

249:                                              ; preds = %246, %234
  %250 = phi i1 [ %247, %246 ], [ %190, %234 ]
  %251 = phi i64 [ %248, %246 ], [ %240, %234 ]
  br i1 %250, label %42, label %252

252:                                              ; preds = %277, %249, %79, %40
  %253 = phi i32 [ 2, %40 ], [ %185, %249 ], [ 0, %79 ], [ 0, %277 ]
  %254 = srem i64 %3, 2
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %283

257:                                              ; preds = %252
  %258 = mul i32 59, 105
  %259 = mul i32 84, 101
  %260 = sdiv i32 46, 79
  %261 = sub i32 27, 58
  %262 = srem i32 %253, 2
  %263 = icmp eq i32 %262, 0
  %264 = mul i32 %253, %253
  %265 = add i32 %264, %253
  %266 = mul i32 %265, 3
  %267 = srem i32 %266, 2
  %268 = icmp eq i32 %267, 0
  %269 = mul i32 %253, %253
  %270 = add i32 %269, %253
  %271 = srem i32 %270, 2
  %272 = icmp eq i32 %271, 0
  %273 = and i1 %268, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %257
  %275 = mul i32 123, 15
  %276 = sub i32 79, 57
  br label %280

277:                                              ; preds = %257
  %278 = mul i32 123, 15
  %279 = add i32 1281809779, -1281809757
  br i1 %273, label %280, label %252

280:                                              ; preds = %277, %274
  %281 = phi i32 [ %278, %277 ], [ %275, %274 ]
  %282 = phi i32 [ %279, %277 ], [ %276, %274 ]
  br label %283

283:                                              ; preds = %280, %256
  ret i32 %253
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @clear(i8* %0, i64 %1, float* %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i8* %0, null
  %6 = srem i64 %1, 2
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %19, %4
  %9 = sdiv i32 86, 5
  %10 = srem i64 %3, 2
  %11 = icmp eq i64 %10, 0
  %12 = and i64 %1, 1
  %13 = icmp eq i64 %12, 1
  %14 = mul i64 %1, %1
  %15 = add i64 %14, %1
  %16 = srem i64 %15, 2
  %17 = icmp eq i64 %16, 0
  %18 = or i1 %13, %17
  br i1 %18, label %30, label %19

19:                                               ; preds = %8
  %20 = icmp eq float* %2, null
  %21 = mul i32 70, 123
  %22 = select i1 %5, i1 true, i1 %20
  %23 = sdiv i32 19, 85
  %24 = add i32 50, 86
  %25 = sub i32 80, 108
  %26 = mul i32 13, 34
  %27 = sub i32 126, 68
  %28 = mul i32 91, 6
  %29 = sub i32 65, 90
  br i1 %18, label %41, label %8

30:                                               ; preds = %8
  %31 = icmp eq float* %2, null
  %32 = mul i32 70, 123
  %33 = select i1 %5, i1 true, i1 %31
  %34 = sdiv i32 19, 85
  %35 = sub i32 23098043, 23097907
  %36 = sub i32 -116864638, -116864610
  %37 = mul i32 13, 34
  %38 = add i32 126, -68
  %39 = mul i32 91, 6
  %40 = add i32 65, -90
  br label %41

41:                                               ; preds = %19, %30
  %42 = phi i1 [ %31, %30 ], [ %20, %19 ]
  %43 = phi i32 [ %32, %30 ], [ %21, %19 ]
  %44 = phi i1 [ %33, %30 ], [ %22, %19 ]
  %45 = phi i32 [ %34, %30 ], [ %23, %19 ]
  %46 = phi i32 [ %35, %30 ], [ %24, %19 ]
  %47 = phi i32 [ %36, %30 ], [ %25, %19 ]
  %48 = phi i32 [ %37, %30 ], [ %26, %19 ]
  %49 = phi i32 [ %38, %30 ], [ %27, %19 ]
  %50 = phi i32 [ %39, %30 ], [ %28, %19 ]
  %51 = phi i32 [ %40, %30 ], [ %29, %19 ]
  br label %55

52:                                               ; preds = %4
  %53 = icmp eq float* %2, null
  %54 = select i1 %5, i1 true, i1 %53
  br label %55

55:                                               ; preds = %52, %41
  %56 = phi i1 [ %53, %52 ], [ %42, %41 ]
  %57 = phi i1 [ %54, %52 ], [ %44, %41 ]
  br i1 %57, label %154, label %58

58:                                               ; preds = %77, %55
  %59 = srem i64 %1, 2
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = icmp ne i64 %1, 1760
  %63 = icmp ne i64 %3, 7040
  %64 = select i1 %62, i1 true, i1 %63
  br label %110

65:                                               ; preds = %58
  %66 = sub i32 71, 9
  %67 = srem i64 %3, 2
  %68 = icmp eq i64 %67, 0
  %69 = and i64 %3, 1
  %70 = icmp eq i64 %69, 0
  %71 = mul i64 %3, %3
  %72 = add i64 %71, %3
  %73 = mul i64 %72, 3
  %74 = srem i64 %73, 2
  %75 = icmp eq i64 %74, 0
  %76 = or i1 %70, %75
  br i1 %76, label %88, label %77

77:                                               ; preds = %65
  %78 = icmp ne i64 %1, 1760
  %79 = sub i32 0, -104
  %80 = icmp ne i64 %3, 7040
  %81 = sub i32 295372875, 295372944
  %82 = select i1 %78, i1 true, i1 %80
  %83 = mul i32 38, 83
  %84 = sub i32 18, -104
  %85 = add i32 77, 4
  %86 = mul i32 69, 94
  %87 = sub i32 -285431288, -285431244
  br i1 %76, label %99, label %58

88:                                               ; preds = %65
  %89 = icmp ne i64 %1, 1760
  %90 = add i32 33, 71
  %91 = icmp ne i64 %3, 7040
  %92 = sub i32 25, 94
  %93 = select i1 %89, i1 true, i1 %91
  %94 = mul i32 38, 83
  %95 = add i32 18, 104
  %96 = add i32 6, 75
  %97 = mul i32 69, 94
  %98 = sub i32 24, 68
  br label %99

99:                                               ; preds = %77, %88
  %100 = phi i1 [ %89, %88 ], [ %78, %77 ]
  %101 = phi i32 [ %90, %88 ], [ %79, %77 ]
  %102 = phi i1 [ %91, %88 ], [ %80, %77 ]
  %103 = phi i32 [ %92, %88 ], [ %81, %77 ]
  %104 = phi i1 [ %93, %88 ], [ %82, %77 ]
  %105 = phi i32 [ %94, %88 ], [ %83, %77 ]
  %106 = phi i32 [ %95, %88 ], [ %84, %77 ]
  %107 = phi i32 [ %96, %88 ], [ %85, %77 ]
  %108 = phi i32 [ %97, %88 ], [ %86, %77 ]
  %109 = phi i32 [ %98, %88 ], [ %87, %77 ]
  br label %110

110:                                              ; preds = %99, %61
  %111 = phi i1 [ %100, %99 ], [ %62, %61 ]
  %112 = phi i1 [ %102, %99 ], [ %63, %61 ]
  %113 = phi i1 [ %104, %99 ], [ %64, %61 ]
  br i1 %113, label %154, label %114

114:                                              ; preds = %135, %110
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #10
  %115 = srem i64 %3, 2
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %150

117:                                              ; preds = %114
  %118 = sub i32 41, 60
  %119 = bitcast float* %2 to i8*
  %120 = sub i32 23, 80
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %119, i8 0, i64 7040, i1 false) #10
  %121 = mul i32 100, 19
  %122 = srem i64 %59, 2
  %123 = icmp eq i64 %122, 0
  %124 = mul i64 %3, 2
  %125 = mul i64 %3, 2
  %126 = add i64 2, %125
  %127 = mul i64 %124, %126
  %128 = srem i64 %127, 4
  %129 = icmp eq i64 %128, 0
  %130 = mul i64 %3, %3
  %131 = add i64 %130, %3
  %132 = srem i64 %131, 2
  %133 = icmp eq i64 %132, 0
  %134 = and i1 %129, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %117
  %136 = add i32 42, -104
  %137 = sub i32 0, -223
  %138 = sub i32 -81567468, -81567668
  %139 = sdiv i32 70, 67
  br i1 %134, label %145, label %114

140:                                              ; preds = %117
  %141 = sub i32 42, 104
  %142 = add i32 115, 108
  %143 = add i32 76, 124
  %144 = sdiv i32 70, 67
  br label %145

145:                                              ; preds = %135, %140
  %146 = phi i32 [ %141, %140 ], [ %136, %135 ]
  %147 = phi i32 [ %142, %140 ], [ %137, %135 ]
  %148 = phi i32 [ %143, %140 ], [ %138, %135 ]
  %149 = phi i32 [ %144, %140 ], [ %139, %135 ]
  br label %152

150:                                              ; preds = %114
  %151 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %151, i8 0, i64 7040, i1 false) #10
  br label %152

152:                                              ; preds = %150, %145
  %153 = phi i8* [ %151, %150 ], [ %119, %145 ]
  br label %154

154:                                              ; preds = %176, %152, %110, %55
  %155 = phi i32 [ 0, %152 ], [ 2, %55 ], [ 2, %110 ], [ 0, %176 ]
  %156 = srem i64 %6, 2
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %203

159:                                              ; preds = %154
  %160 = sub i32 60, 24
  %161 = sub i32 117, 52
  %162 = srem i32 %155, 2
  %163 = icmp eq i32 %162, 0
  %164 = mul i64 %3, 2
  %165 = mul i64 %3, 2
  %166 = add i64 2, %165
  %167 = mul i64 %164, %166
  %168 = srem i64 %167, 4
  %169 = icmp eq i64 %168, 0
  %170 = mul i64 %3, %3
  %171 = mul i64 %170, %3
  %172 = add i64 %171, %3
  %173 = srem i64 %172, 2
  %174 = icmp eq i64 %173, 0
  %175 = and i1 %169, %174
  br i1 %175, label %185, label %176

176:                                              ; preds = %159
  %177 = mul i32 113, 64
  %178 = mul i32 111, 10
  %179 = add i32 52, -58
  %180 = add i32 17, 59
  %181 = sub i32 -1267202398, -1267202413
  %182 = mul i32 28, 29
  %183 = sub i32 119487532, 119487351
  %184 = add i32 28, -91
  br i1 %175, label %194, label %154

185:                                              ; preds = %159
  %186 = mul i32 113, 64
  %187 = mul i32 111, 10
  %188 = sub i32 52, 58
  %189 = add i32 25, 51
  %190 = sub i32 122, 107
  %191 = mul i32 28, 29
  %192 = add i32 61, 120
  %193 = sub i32 28, 91
  br label %194

194:                                              ; preds = %176, %185
  %195 = phi i32 [ %186, %185 ], [ %177, %176 ]
  %196 = phi i32 [ %187, %185 ], [ %178, %176 ]
  %197 = phi i32 [ %188, %185 ], [ %179, %176 ]
  %198 = phi i32 [ %189, %185 ], [ %180, %176 ]
  %199 = phi i32 [ %190, %185 ], [ %181, %176 ]
  %200 = phi i32 [ %191, %185 ], [ %182, %176 ]
  %201 = phi i32 [ %192, %185 ], [ %183, %176 ]
  %202 = phi i32 [ %193, %185 ], [ %184, %176 ]
  br label %203

203:                                              ; preds = %194, %158
  ret i32 %155
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca [1760 x float], align 4
  %4 = alloca [1760 x i8], align 1
  %5 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10
  store float 0.000000e+00, float* %1, align 4, !tbaa !10
  %6 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10
  store float 0.000000e+00, float* %2, align 4, !tbaa !10
  %7 = bitcast [1760 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %7) #10
  %8 = getelementptr inbounds [1760 x i8], [1760 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %8) #10
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [1760 x float], [1760 x float]* %3, i64 0, i64 0
  %11 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %31, %97, %0
  %14 = phi i32 [ %11, %0 ], [ %98, %97 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  %15 = srem i32 %11, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  br label %52

18:                                               ; preds = %13
  %19 = mul i32 35, 88
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  %20 = sdiv i32 73, 15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  %21 = srem i32 %15, 2
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %9, 1
  %24 = icmp eq i32 %23, 0
  %25 = mul i32 %9, %9
  %26 = add i32 %25, %9
  %27 = mul i32 %26, 3
  %28 = srem i32 %27, 2
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %24, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %18
  %32 = mul i32 112, 118
  %33 = mul i32 121, 119
  %34 = sdiv i32 87, 90
  %35 = mul i32 58, 33
  %36 = mul i32 12, 34
  %37 = sub i32 87, 60
  br i1 %30, label %45, label %13

38:                                               ; preds = %18
  %39 = mul i32 112, 118
  %40 = mul i32 121, 119
  %41 = sdiv i32 87, 90
  %42 = mul i32 58, 33
  %43 = mul i32 12, 34
  %44 = sub i32 -823496030, -823496057
  br label %45

45:                                               ; preds = %31, %38
  %46 = phi i32 [ %39, %38 ], [ %32, %31 ]
  %47 = phi i32 [ %40, %38 ], [ %33, %31 ]
  %48 = phi i32 [ %41, %38 ], [ %34, %31 ]
  %49 = phi i32 [ %42, %38 ], [ %35, %31 ]
  %50 = phi i32 [ %43, %38 ], [ %36, %31 ]
  %51 = phi i32 [ %44, %38 ], [ %37, %31 ]
  br label %52

52:                                               ; preds = %45, %17
  ret i32 %14

53:                                               ; preds = %67, %97, %0
  %54 = srem i32 %11, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %94

56:                                               ; preds = %53
  %57 = srem i32 %11, 2
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %11, 1
  %60 = icmp eq i32 %59, 0
  %61 = mul i32 %11, %11
  %62 = add i32 %61, %11
  %63 = mul i32 %62, 3
  %64 = srem i32 %63, 2
  %65 = icmp eq i32 %64, 0
  %66 = or i1 %60, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %56
  %68 = mul i32 121, 1
  call fastcc void @wait()
  %69 = sub i32 23, 37
  %70 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %71 = mul i32 19, 77
  %72 = icmp eq i32 %70, 0
  %73 = mul i32 76, 54
  %74 = add i32 44, 14
  %75 = mul i32 35, 92
  br i1 %66, label %85, label %53

76:                                               ; preds = %56
  %77 = mul i32 121, 1
  call fastcc void @wait()
  %78 = sub i32 1621223694, 1621223708
  %79 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %80 = mul i32 19, 77
  %81 = icmp eq i32 %79, 0
  %82 = mul i32 76, 54
  %83 = add i32 -212531086, 212531144
  %84 = mul i32 35, 92
  br label %85

85:                                               ; preds = %67, %76
  %86 = phi i32 [ %77, %76 ], [ %68, %67 ]
  %87 = phi i32 [ %78, %76 ], [ %69, %67 ]
  %88 = phi i32 [ %79, %76 ], [ %70, %67 ]
  %89 = phi i32 [ %80, %76 ], [ %71, %67 ]
  %90 = phi i1 [ %81, %76 ], [ %72, %67 ]
  %91 = phi i32 [ %82, %76 ], [ %73, %67 ]
  %92 = phi i32 [ %83, %76 ], [ %74, %67 ]
  %93 = phi i32 [ %84, %76 ], [ %75, %67 ]
  br label %97

94:                                               ; preds = %53
  call fastcc void @wait()
  %95 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %96 = icmp eq i32 %95, 0
  br label %97

97:                                               ; preds = %94, %85
  %98 = phi i32 [ %95, %94 ], [ %88, %85 ]
  %99 = phi i1 [ %96, %94 ], [ %90, %85 ]
  br i1 %99, label %53, label %13, !llvm.loop !18
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %226

7:                                                ; preds = %27, %4
  %8 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %9 = icmp eq i32 %8, 0
  %10 = srem i32 %5, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %7
  %13 = srem i32 %8, 2
  %14 = icmp eq i32 %13, 0
  %15 = mul i32 %10, 2
  %16 = mul i32 %10, 2
  %17 = add i32 2, %16
  %18 = mul i32 %15, %17
  %19 = srem i32 %18, 4
  %20 = icmp eq i32 %19, 0
  %21 = mul i32 %10, %10
  %22 = mul i32 %21, %10
  %23 = add i32 %22, %10
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i1 %20, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %12
  %28 = sdiv i32 26, 59
  %29 = add i32 57, 136
  %30 = sub i32 107, -48
  %31 = mul i32 59, 74
  %32 = mul i32 108, 119
  %33 = add i32 59, -44
  br i1 %26, label %41, label %7

34:                                               ; preds = %12
  %35 = sdiv i32 26, 59
  %36 = add i32 101, 92
  %37 = add i32 107, 48
  %38 = mul i32 59, 74
  %39 = mul i32 108, 119
  %40 = sub i32 59, 44
  br label %41

41:                                               ; preds = %27, %34
  %42 = phi i32 [ %35, %34 ], [ %28, %27 ]
  %43 = phi i32 [ %36, %34 ], [ %29, %27 ]
  %44 = phi i32 [ %37, %34 ], [ %30, %27 ]
  %45 = phi i32 [ %38, %34 ], [ %31, %27 ]
  %46 = phi i32 [ %39, %34 ], [ %32, %27 ]
  %47 = phi i32 [ %40, %34 ], [ %33, %27 ]
  br label %49

48:                                               ; preds = %7
  br label %49

49:                                               ; preds = %48, %41
  br i1 %9, label %89, label %128

50:                                               ; preds = %77, %126
  %51 = srem i32 %90, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call fastcc i32 @inner_loop(float %93, float* %0, float* %1, i8* %2, float* %3)
  %55 = icmp eq i32 %54, 0
  br label %86

56:                                               ; preds = %50
  %57 = mul i32 79, 104
  %58 = call fastcc i32 @inner_loop(float %93, float* %0, float* %1, i8* %2, float* %3)
  %59 = sdiv i32 92, 75
  %60 = icmp eq i32 %58, 0
  %61 = mul i32 75, 94
  %62 = mul i32 119, 35
  %63 = srem i32 %8, 2
  %64 = icmp eq i32 %63, 0
  %65 = mul i32 %51, 2
  %66 = mul i32 %51, 2
  %67 = add i32 2, %66
  %68 = mul i32 %65, %67
  %69 = srem i32 %68, 4
  %70 = icmp eq i32 %69, 0
  %71 = mul i32 %51, %51
  %72 = mul i32 %71, %51
  %73 = add i32 %72, %51
  %74 = srem i32 %73, 2
  %75 = icmp eq i32 %74, 0
  %76 = and i1 %70, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %56
  %78 = sdiv i32 121, 5
  %79 = sdiv i32 112, 65
  br i1 %76, label %83, label %50

80:                                               ; preds = %56
  %81 = sdiv i32 121, 5
  %82 = sdiv i32 112, 65
  br label %83

83:                                               ; preds = %77, %80
  %84 = phi i32 [ %81, %80 ], [ %78, %77 ]
  %85 = phi i32 [ %82, %80 ], [ %79, %77 ]
  br label %86

86:                                               ; preds = %83, %53
  %87 = phi i32 [ %58, %83 ], [ %54, %53 ]
  %88 = phi i1 [ %60, %83 ], [ %55, %53 ]
  br i1 %88, label %89, label %128, !llvm.loop !19

89:                                               ; preds = %122, %86, %49
  %90 = phi i32 [ %87, %86 ], [ %8, %49 ], [ 0, %122 ]
  %91 = phi double [ %94, %86 ], [ 0.000000e+00, %49 ], [ 0.000000e+00, %122 ]
  %92 = fadd double %91, 7.000000e-02
  %93 = fptrunc double %92 to float
  %94 = fpext float %93 to double
  %95 = srem i32 %10, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %89
  %98 = add i32 44, 119
  %99 = fcmp olt double %94, 6.280000e+00
  %100 = add i32 59, 94
  %101 = mul i32 62, 65
  %102 = mul i32 103, 12
  %103 = sub i32 34, 32
  %104 = add i32 120, 94
  %105 = sdiv i32 49, 121
  %106 = sub i32 121, 53
  %107 = srem i32 %95, 2
  %108 = icmp eq i32 %107, 0
  %109 = mul i32 %10, 2
  %110 = mul i32 %10, 2
  %111 = add i32 2, %110
  %112 = mul i32 %109, %111
  %113 = srem i32 %112, 4
  %114 = icmp eq i32 %113, 0
  %115 = mul i32 %10, %10
  %116 = mul i32 %115, %10
  %117 = add i32 %116, %10
  %118 = srem i32 %117, 2
  %119 = icmp eq i32 %118, 0
  %120 = and i1 %114, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %97
  br label %123

122:                                              ; preds = %97
  br i1 %120, label %123, label %89

123:                                              ; preds = %122, %121
  br label %126

124:                                              ; preds = %89
  %125 = fcmp olt double %94, 6.280000e+00
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi i1 [ %125, %124 ], [ %99, %123 ]
  br i1 %127, label %50, label %128, !llvm.loop !19

128:                                              ; preds = %153, %126, %86, %49
  %129 = phi i32 [ %8, %49 ], [ %90, %126 ], [ %87, %86 ], [ 0, %153 ]
  %130 = phi i1 [ true, %49 ], [ %127, %86 ], [ %127, %126 ], [ false, %153 ]
  %131 = srem i32 %8, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %174

134:                                              ; preds = %128
  %135 = sdiv i32 8, 57
  %136 = add i32 46, 12
  %137 = sdiv i32 40, 92
  %138 = mul i32 60, 16
  %139 = srem i32 %129, 2
  %140 = icmp eq i32 %139, 0
  %141 = mul i32 %129, 2
  %142 = mul i32 %129, 2
  %143 = add i32 2, %142
  %144 = mul i32 %141, %143
  %145 = srem i32 %144, 4
  %146 = icmp eq i32 %145, 0
  %147 = mul i32 %129, %129
  %148 = mul i32 %147, %129
  %149 = add i32 %148, %129
  %150 = srem i32 %149, 2
  %151 = icmp eq i32 %150, 0
  %152 = and i1 %146, %151
  br i1 %152, label %160, label %153

153:                                              ; preds = %134
  %154 = sub i32 -1309113283, -1309113273
  %155 = sdiv i32 12, 124
  %156 = sdiv i32 106, 106
  %157 = add i32 1072596795, -1072596802
  %158 = sdiv i32 111, 104
  %159 = add i32 116, -71
  br i1 %152, label %167, label %128

160:                                              ; preds = %134
  %161 = sub i32 49, 59
  %162 = sdiv i32 12, 124
  %163 = sdiv i32 106, 106
  %164 = sub i32 45, 52
  %165 = sdiv i32 111, 104
  %166 = sub i32 116, 71
  br label %167

167:                                              ; preds = %153, %160
  %168 = phi i32 [ %161, %160 ], [ %154, %153 ]
  %169 = phi i32 [ %162, %160 ], [ %155, %153 ]
  %170 = phi i32 [ %163, %160 ], [ %156, %153 ]
  %171 = phi i32 [ %164, %160 ], [ %157, %153 ]
  %172 = phi i32 [ %165, %160 ], [ %158, %153 ]
  %173 = phi i32 [ %166, %160 ], [ %159, %153 ]
  br label %174

174:                                              ; preds = %167, %133
  br i1 %130, label %226, label %175

175:                                              ; preds = %194, %174
  %176 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %177 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  %178 = srem i32 %131, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %224

180:                                              ; preds = %175
  %181 = srem i32 %178, 2
  %182 = icmp eq i32 %181, 0
  %183 = mul i32 %176, 2
  %184 = mul i32 %176, 2
  %185 = add i32 2, %184
  %186 = mul i32 %183, %185
  %187 = srem i32 %186, 4
  %188 = icmp eq i32 %187, 0
  %189 = mul i32 %176, %176
  %190 = add i32 %189, %176
  %191 = srem i32 %190, 2
  %192 = icmp eq i32 %191, 0
  %193 = or i1 %188, %192
  br i1 %193, label %204, label %194

194:                                              ; preds = %180
  %195 = mul i32 6, 57
  %196 = mul i32 30, 65
  %197 = add i32 32, 43
  %198 = sdiv i32 73, 75
  %199 = sdiv i32 53, 3
  %200 = add i32 1681350140, -1681349983
  %201 = add i32 60, -56
  %202 = sdiv i32 102, 43
  %203 = sdiv i32 120, 106
  br i1 %193, label %214, label %175

204:                                              ; preds = %180
  %205 = mul i32 6, 57
  %206 = mul i32 30, 65
  %207 = add i32 34, 41
  %208 = sdiv i32 73, 75
  %209 = sdiv i32 53, 3
  %210 = add i32 31, 126
  %211 = sub i32 60, 56
  %212 = sdiv i32 102, 43
  %213 = sdiv i32 120, 106
  br label %214

214:                                              ; preds = %194, %204
  %215 = phi i32 [ %205, %204 ], [ %195, %194 ]
  %216 = phi i32 [ %206, %204 ], [ %196, %194 ]
  %217 = phi i32 [ %207, %204 ], [ %197, %194 ]
  %218 = phi i32 [ %208, %204 ], [ %198, %194 ]
  %219 = phi i32 [ %209, %204 ], [ %199, %194 ]
  %220 = phi i32 [ %210, %204 ], [ %200, %194 ]
  %221 = phi i32 [ %211, %204 ], [ %201, %194 ]
  %222 = phi i32 [ %212, %204 ], [ %202, %194 ]
  %223 = phi i32 [ %213, %204 ], [ %203, %194 ]
  br label %225

224:                                              ; preds = %175
  br label %225

225:                                              ; preds = %224, %214
  br label %226

226:                                              ; preds = %249, %225, %174, %4
  %227 = phi i32 [ %129, %174 ], [ %5, %4 ], [ %177, %225 ], [ 0, %249 ]
  %228 = srem i32 %5, 2
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  br label %263

231:                                              ; preds = %226
  %232 = srem i32 %227, 2
  %233 = icmp eq i32 %232, 0
  %234 = and i32 %227, 1
  %235 = icmp eq i32 %234, 0
  %236 = mul i32 %227, %227
  %237 = add i32 %236, %227
  %238 = mul i32 %237, 3
  %239 = srem i32 %238, 2
  %240 = icmp eq i32 %239, 0
  %241 = or i1 %235, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %231
  %243 = mul i32 60, 121
  %244 = sdiv i32 25, 112
  %245 = sdiv i32 25, 66
  %246 = sdiv i32 117, 26
  %247 = add i32 89, 112
  %248 = sub i32 47, 77
  br label %256

249:                                              ; preds = %231
  %250 = mul i32 60, 121
  %251 = sdiv i32 25, 112
  %252 = sdiv i32 25, 66
  %253 = sdiv i32 117, 26
  %254 = sub i32 0, -201
  %255 = sub i32 992632114, 992632144
  br i1 %241, label %256, label %226

256:                                              ; preds = %249, %242
  %257 = phi i32 [ %250, %249 ], [ %243, %242 ]
  %258 = phi i32 [ %251, %249 ], [ %244, %242 ]
  %259 = phi i32 [ %252, %249 ], [ %245, %242 ]
  %260 = phi i32 [ %253, %249 ], [ %246, %242 ]
  %261 = phi i32 [ %254, %249 ], [ %247, %242 ]
  %262 = phi i32 [ %255, %249 ], [ %248, %242 ]
  br label %263

263:                                              ; preds = %256, %230
  ret i32 %227
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #5 {
  %1 = call i32 @"\01_usleep"(i32 30000) #10
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #6 {
  %6 = icmp eq float* %1, null
  %7 = icmp eq float* %2, null
  %8 = select i1 %6, i1 true, i1 %7
  %9 = icmp eq i8* %3, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq float* %4, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %216, label %13

13:                                               ; preds = %5
  %14 = fpext float %0 to double
  %15 = call double @llvm.cos.f64(double %14)
  %16 = fptrunc double %15 to float
  %17 = call double @llvm.sin.f64(double %14)
  %18 = fptrunc double %17 to float
  %19 = fadd float %16, 2.000000e+00
  br label %20

20:                                               ; preds = %214, %13
  %21 = phi double [ 0.000000e+00, %13 ], [ %174, %214 ]
  %22 = call double @llvm.sin.f64(double %21)
  %23 = fptrunc double %22 to float
  %24 = load float, float* %1, align 4, !tbaa !10
  %25 = fpext float %24 to double
  %26 = call double @llvm.sin.f64(double %25)
  %27 = fptrunc double %26 to float
  %28 = call double @llvm.cos.f64(double %25)
  %29 = fptrunc double %28 to float
  %30 = fmul float %19, %23
  %31 = fmul float %30, %27
  %32 = fmul float %18, %29
  %33 = fadd float %31, %32
  %34 = fadd float %33, 5.000000e+00
  %35 = fdiv float 1.000000e+00, %34
  %36 = call double @llvm.cos.f64(double %21)
  %37 = fptrunc double %36 to float
  %38 = load float, float* %2, align 4, !tbaa !10
  %39 = fpext float %38 to double
  %40 = call double @llvm.cos.f64(double %39)
  %41 = fptrunc double %40 to float
  %42 = call double @llvm.sin.f64(double %39)
  %43 = fptrunc double %42 to float
  %44 = fmul float %30, %29
  %45 = fmul float %18, %27
  %46 = fsub float %44, %45
  %47 = fmul float %35, 3.000000e+01
  %48 = fmul float %19, %37
  %49 = fmul float %48, %41
  %50 = fmul float %46, %43
  %51 = fsub float %49, %50
  %52 = fmul float %51, %47
  %53 = fadd float %52, 4.000000e+01
  %54 = fptosi float %53 to i32
  %55 = fmul float %35, 1.500000e+01
  %56 = fmul float %48, %43
  %57 = fmul float %46, %41
  %58 = fadd float %56, %57
  %59 = fmul float %58, %55
  %60 = fadd float %59, 1.200000e+01
  %61 = fptosi float %60 to i32
  %62 = fmul float %16, %23
  %63 = fmul float %62, %29
  %64 = fsub float %45, %63
  %65 = fmul float %64, %41
  %66 = fmul float %62, %27
  %67 = fsub float %65, %66
  %68 = fsub float %67, %32
  %69 = fmul float %16, %37
  %70 = fmul float %69, %43
  %71 = fsub float %68, %70
  %72 = fmul float %71, 8.000000e+00
  %73 = fptosi float %72 to i32
  %74 = add i32 %61, -1
  %75 = icmp ult i32 %74, 21
  %76 = icmp sgt i32 %54, 0
  %77 = select i1 %75, i1 %76, i1 false
  %78 = icmp slt i32 %54, 80
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %171

80:                                               ; preds = %113, %20
  %81 = mul nsw i32 %61, 80
  %82 = add nsw i32 %81, %54
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %4, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !10
  %86 = srem i32 %73, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = fcmp ogt float %35, %85
  br label %127

90:                                               ; preds = %80
  %91 = add i32 116, 42
  %92 = fcmp ogt float %35, %85
  %93 = mul i32 43, 124
  %94 = srem i32 %73, 2
  %95 = icmp eq i32 %94, 0
  %96 = mul i32 %74, %74
  %97 = add i32 %96, %74
  %98 = mul i32 %97, 3
  %99 = srem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = mul i32 %74, %74
  %102 = add i32 %101, %74
  %103 = srem i32 %102, 2
  %104 = icmp eq i32 %103, 0
  %105 = and i1 %100, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %90
  %107 = mul i32 6, 16
  %108 = mul i32 73, 101
  %109 = sub i32 56, 81
  %110 = mul i32 59, 87
  %111 = sub i32 72, 109
  %112 = add i32 11, 124
  br label %120

113:                                              ; preds = %90
  %114 = mul i32 6, 16
  %115 = mul i32 73, 101
  %116 = sub i32 282143808, 282143833
  %117 = mul i32 59, 87
  %118 = add i32 72, -109
  %119 = add i32 8, 127
  br i1 %105, label %120, label %80

120:                                              ; preds = %113, %106
  %121 = phi i32 [ %114, %113 ], [ %107, %106 ]
  %122 = phi i32 [ %115, %113 ], [ %108, %106 ]
  %123 = phi i32 [ %116, %113 ], [ %109, %106 ]
  %124 = phi i32 [ %117, %113 ], [ %110, %106 ]
  %125 = phi i32 [ %118, %113 ], [ %111, %106 ]
  %126 = phi i32 [ %119, %113 ], [ %112, %106 ]
  br label %127

127:                                              ; preds = %120, %88
  %128 = phi i1 [ %92, %120 ], [ %89, %88 ]
  br i1 %128, label %129, label %171

129:                                              ; preds = %158, %127
  store float %35, float* %84, align 4, !tbaa !10
  %130 = load i8*, i8** @CHARS, align 8, !tbaa !20
  %131 = icmp sgt i32 %73, 0
  %132 = select i1 %131, i32 %73, i32 0
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1, !tbaa !17
  %136 = getelementptr inbounds i8, i8* %3, i64 %83
  %137 = srem i32 %81, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  store i8 %135, i8* %136, align 1, !tbaa !17
  br label %170

140:                                              ; preds = %129
  %141 = sub i32 76, 33
  store i8 %135, i8* %136, align 1, !tbaa !17
  %142 = srem i32 %137, 2
  %143 = icmp eq i32 %142, 0
  %144 = and i32 %81, 1
  %145 = icmp eq i32 %144, 0
  %146 = mul i32 %81, %81
  %147 = add i32 %146, %81
  %148 = mul i32 %147, 3
  %149 = srem i32 %148, 2
  %150 = icmp eq i32 %149, 0
  %151 = or i1 %145, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %140
  %153 = sub i32 1, 65
  %154 = add i32 118, 35
  %155 = sdiv i32 124, 32
  %156 = mul i32 81, 61
  %157 = sdiv i32 18, 82
  br label %164

158:                                              ; preds = %140
  %159 = sub i32 1043388997, 1043389061
  %160 = sub i32 2027422740, 2027422587
  %161 = sdiv i32 124, 32
  %162 = mul i32 81, 61
  %163 = sdiv i32 18, 82
  br i1 %151, label %164, label %129

164:                                              ; preds = %158, %152
  %165 = phi i32 [ %159, %158 ], [ %153, %152 ]
  %166 = phi i32 [ %160, %158 ], [ %154, %152 ]
  %167 = phi i32 [ %161, %158 ], [ %155, %152 ]
  %168 = phi i32 [ %162, %158 ], [ %156, %152 ]
  %169 = phi i32 [ %163, %158 ], [ %157, %152 ]
  br label %170

170:                                              ; preds = %164, %139
  br label %171

171:                                              ; preds = %197, %170, %127, %20
  %172 = fadd double %21, 2.000000e-02
  %173 = fptrunc double %172 to float
  %174 = fpext float %173 to double
  %175 = srem i32 %73, 2
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %212

177:                                              ; preds = %171
  %178 = add i32 101, 43
  %179 = fcmp olt double %174, 6.280000e+00
  %180 = mul i32 6, 109
  %181 = mul i32 91, 52
  %182 = add i32 62, 67
  %183 = sub i32 24, 97
  %184 = sdiv i32 112, 114
  %185 = srem i32 %175, 2
  %186 = icmp eq i32 %185, 0
  %187 = mul i32 %61, %61
  %188 = add i32 %187, %61
  %189 = mul i32 %188, 3
  %190 = srem i32 %189, 2
  %191 = icmp eq i32 %190, 0
  %192 = mul i32 %61, %61
  %193 = add i32 %192, %61
  %194 = srem i32 %193, 2
  %195 = icmp eq i32 %194, 0
  %196 = and i1 %191, %195
  br i1 %196, label %202, label %197

197:                                              ; preds = %177
  %198 = mul i32 25, 104
  %199 = add i32 122, 28
  %200 = mul i32 90, 55
  %201 = add i32 28, 55
  br i1 %196, label %207, label %171

202:                                              ; preds = %177
  %203 = mul i32 25, 104
  %204 = add i32 102, 48
  %205 = mul i32 90, 55
  %206 = add i32 43, 40
  br label %207

207:                                              ; preds = %197, %202
  %208 = phi i32 [ %203, %202 ], [ %198, %197 ]
  %209 = phi i32 [ %204, %202 ], [ %199, %197 ]
  %210 = phi i32 [ %205, %202 ], [ %200, %197 ]
  %211 = phi i32 [ %206, %202 ], [ %201, %197 ]
  br label %214

212:                                              ; preds = %171
  %213 = fcmp olt double %174, 6.280000e+00
  br label %214

214:                                              ; preds = %212, %207
  %215 = phi i1 [ %213, %212 ], [ %179, %207 ]
  br i1 %215, label %20, label %216, !llvm.loop !22

216:                                              ; preds = %214, %5
  %217 = phi i32 [ 2, %5 ], [ 0, %214 ]
  ret i32 %217
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #7

declare i32 @"\01_usleep"(i32) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nofree noinline nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }

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
!11 = !{!"float", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!12, !12, i64 0}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !15, !16}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !12, i64 0}
!22 = distinct !{!22, !15, !16}

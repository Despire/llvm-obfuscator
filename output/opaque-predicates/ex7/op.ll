; ModuleID = 'output/opaque-predicates/ex7/ex7.ll'
source_filename = "input/opaque-predicates/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
  %4 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %23

5:                                                ; preds = %108
  %6 = icmp sge i64 %109, %109
  %7 = icmp sle i64 %109, %109
  %8 = xor i1 %7, true
  %9 = xor i1 %6, %8
  %10 = and i1 %9, %6
  br i1 %10, label %11, label %22

11:                                               ; preds = %5
  %12 = sdiv i32 -1227846629, -229632312
  %13 = mul i32 -1675403515, 1520159342
  %14 = mul i32 682304420, 2104066937
  %15 = add i32 1737860319, -160582504
  %16 = add i32 150262904, -1581473068
  %17 = sub i32 1633594282, -191526691
  %18 = sdiv i32 -700155969, -814982291
  %19 = sdiv i32 -528469045, 97261158
  %20 = mul i32 959621066, 2049167014
  %21 = sub i32 2087602635, 807688147
  br label %22

22:                                               ; preds = %5, %11
  ret void

23:                                               ; preds = %108, %3
  %24 = phi i64 [ 0, %3 ], [ %109, %108 ]
  %25 = trunc i64 %24 to i32
  %26 = urem i32 %25, 80
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %4, 1
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %4, 1
  %31 = icmp eq i32 %30, 1
  %32 = xor i1 %29, true
  %33 = and i1 %32, false
  %34 = and i1 %29, true
  %35 = or i1 %33, %34
  %36 = xor i1 %31, true
  %37 = and i1 %36, false
  %38 = and i1 %31, true
  %39 = or i1 %37, %38
  %40 = xor i1 %35, %39
  %41 = xor i1 %29, true
  %42 = icmp eq i32 %4, 0
  %43 = icmp ne i32 %4, 0
  %44 = xor i1 %42, true
  %45 = and i1 %44, true
  %46 = and i1 %42, false
  %47 = or i1 %45, %46
  %48 = xor i1 %43, true
  %49 = and i1 %48, true
  %50 = and i1 %43, false
  %51 = or i1 %49, %50
  %52 = xor i1 %47, %51
  %53 = xor i1 %42, true
  %54 = xor i1 %43, true
  %55 = or i1 %53, %54
  %56 = xor i1 %55, true
  %57 = and i1 %56, true
  %58 = or i1 %52, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %23
  %60 = sdiv i32 154826984, 1604190531
  %61 = mul i32 735724678, -763828079
  %62 = mul i32 -846979754, 1014379046
  %63 = sub i32 -608529861, 1332383996
  %64 = sdiv i32 1232117031, 249210982
  %65 = add i32 -650120694, 621187105
  %66 = sub i32 723655296, -1631931185
  %67 = mul i32 396194328, -986045488
  %68 = mul i32 -445215284, 152610922
  br label %69

69:                                               ; preds = %23, %59
  %70 = xor i1 %31, true
  %71 = or i1 %41, %70
  %72 = xor i1 %71, true
  %73 = and i1 %72, true
  %74 = or i1 %40, %73
  %75 = xor i1 %74, true
  %76 = xor i1 %27, %75
  %77 = and i1 %76, %27
  br i1 %77, label %87, label %78

78:                                               ; preds = %69
  %79 = getelementptr inbounds i8, i8* %0, i64 %24
  %80 = load i8, i8* %79, align 1, !tbaa !10
  %81 = sext i8 %80 to i32
  %82 = srem i1 %36, false
  %83 = icmp eq i1 %82, false
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %86

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %69
  %88 = phi i32 [ %81, %86 ], [ 10, %69 ]
  %89 = call i32 @putchar(i32 %88)
  %90 = load float, float* %1, align 4, !tbaa !13
  %91 = fpext float %90 to double
  %92 = fadd double %91, 4.000000e-05
  %93 = fptrunc double %92 to float
  store float %93, float* %1, align 4, !tbaa !13
  %94 = load float, float* %2, align 4, !tbaa !13
  %95 = fpext float %94 to double
  %96 = fadd double %95, 2.000000e-05
  %97 = fptrunc double %96 to float
  store float %97, float* %2, align 4, !tbaa !13
  %98 = srem i1 %33, false
  %99 = icmp eq i1 %98, false
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = add nuw nsw i64 %24, 1
  %102 = icmp eq i64 %101, 1761
  br label %108

103:                                              ; preds = %87
  %104 = add i64 %24, 7730572141651416252
  %105 = add i64 %104, 1
  %106 = sub i64 %105, 7730572141651416252
  %107 = icmp eq i64 %106, 1761
  br label %108

108:                                              ; preds = %103, %100
  %109 = phi i64 [ %106, %103 ], [ %101, %100 ]
  %110 = phi i1 [ %107, %103 ], [ %102, %100 ]
  br i1 %110, label %5, label %23, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z6renderffiPfPcii(float %0, float %1, i32 %2, float* nocapture %3, i8* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #3 {
  %8 = sdiv i32 %6, 40
  %9 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 32, i64 %9, i1 false)
  %10 = bitcast float* %3 to i8*
  %11 = shl nsw i64 %9, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 %11, i1 false)
  %12 = sitofp i32 %8 to float
  %13 = icmp sge i32 %6, %6
  %14 = icmp sle i32 %6, %6
  %15 = xor i1 %14, true
  %16 = xor i1 %13, %15
  %17 = and i1 %16, %13
  br i1 %17, label %18, label %29

18:                                               ; preds = %7
  %19 = add i32 -865063532, -1771089026
  %20 = sub i32 1291115711, 752216681
  %21 = add i32 534100075, 693368817
  %22 = sdiv i32 -99543507, -1628527739
  %23 = mul i32 -1306808003, 552126591
  %24 = sdiv i32 -474603401, 256928218
  %25 = add i32 615021577, 1630102820
  %26 = sub i32 -1962894930, -34228833
  %27 = sdiv i32 -11687099, -1567801147
  %28 = mul i32 416508108, -1591986748
  br label %29

29:                                               ; preds = %7, %18
  %30 = sdiv i32 %6, 2
  %31 = sitofp i32 %30 to float
  %32 = sdiv i32 %5, 2
  %33 = add nsw i32 %32, 1
  %34 = sitofp i32 %33 to float
  %35 = call fastcc float @_ZL3sinf(float %0) #8
  %36 = call fastcc float @_ZL3cosf(float %0) #8
  %37 = call fastcc float @_ZL3cosf(float %1) #8
  %38 = call fastcc float @_ZL3sinf(float %1) #8
  br label %39

39:                                               ; preds = %81, %29
  %40 = phi double [ 0.000000e+00, %29 ], [ %84, %81 ]
  %41 = phi float [ 0.000000e+00, %29 ], [ %83, %81 ]
  %42 = call fastcc float @_ZL3cosf(float %41) #8
  %43 = icmp sge i64 %11, %11
  %44 = icmp sle i64 %11, %11
  %45 = xor i1 %44, true
  %46 = xor i1 %43, %45
  %47 = and i1 %46, %43
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = add i32 1295993156, -1546293961
  %50 = sdiv i32 -838766811, 455704722
  %51 = add i32 823430713, 117711194
  %52 = sub i32 1224109612, -747171549
  %53 = add i32 -1443049774, -2018722425
  %54 = mul i32 415424866, -338111873
  %55 = add i32 668705601, -1392352154
  %56 = add i32 2033081944, -937879217
  br label %57

57:                                               ; preds = %39, %48
  %58 = call fastcc float @_ZL3sinf(float %41) #8
  %59 = fadd float %42, %12
  %60 = fmul float %35, %58
  %61 = fmul float %58, %36
  br label %86

62:                                               ; preds = %81
  %63 = srem i1 %220, false
  %64 = icmp eq i1 %63, false
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %65
  ret void

68:                                               ; preds = %294
  %69 = srem i1 %43, false
  %70 = icmp eq i1 %69, false
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = fadd double %40, 7.000000e-02
  %73 = fptrunc double %72 to float
  %74 = fpext float %73 to double
  %75 = fcmp olt double %74, 6.280000e+00
  br label %81

76:                                               ; preds = %68
  %77 = fadd double %40, 7.000000e-02
  %78 = fptrunc double %77 to float
  %79 = fpext float %78 to double
  %80 = fcmp olt double %79, 6.280000e+00
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi double [ %77, %76 ], [ %72, %71 ]
  %83 = phi float [ %78, %76 ], [ %73, %71 ]
  %84 = phi double [ %79, %76 ], [ %74, %71 ]
  %85 = phi i1 [ %80, %76 ], [ %75, %71 ]
  br i1 %85, label %39, label %62, !llvm.loop !18

86:                                               ; preds = %294, %57
  %87 = phi double [ 0.000000e+00, %57 ], [ %296, %294 ]
  %88 = phi float [ 0.000000e+00, %57 ], [ %295, %294 ]
  %89 = call fastcc float @_ZL3sinf(float %88) #8
  %90 = fmul float %89, %59
  %91 = fmul float %90, %36
  %92 = fsub float %91, %60
  %93 = fmul float %35, %90
  %94 = fadd float %93, %61
  %95 = fadd float %94, 5.000000e+00
  %96 = fdiv float 1.000000e+00, %95
  %97 = call fastcc float @_ZL3cosf(float %88) #8
  %98 = fmul float %96, 3.000000e+01
  %99 = fmul float %59, %97
  %100 = fmul float %99, %37
  %101 = fmul float %92, %38
  %102 = fadd float %100, %101
  %103 = fmul float %98, %102
  %104 = fadd float %103, %31
  %105 = fptosi float %104 to i32
  %106 = fmul float %96, 1.500000e+01
  %107 = fmul float %99, %38
  %108 = fmul float %92, %37
  %109 = fsub float %107, %108
  %110 = fmul float %106, %109
  %111 = fadd float %110, %34
  %112 = fptosi float %111 to i32
  %113 = fmul float %89, %42
  %114 = fmul float %113, %36
  %115 = fsub float %60, %114
  %116 = fmul float %115, %37
  %117 = srem i1 %45, false
  %118 = icmp eq i1 %117, false
  br i1 %118, label %119, label %148

119:                                              ; preds = %86
  %120 = fmul float %113, %35
  %121 = fsub float %116, %120
  %122 = fsub float %121, %61
  %123 = fmul float %42, %97
  %124 = fmul float %123, %38
  %125 = fsub float %122, %124
  %126 = fmul float %125, 8.000000e+00
  %127 = fptosi float %126 to i32
  %128 = icmp slt i32 %112, %5
  %129 = icmp sgt i32 %112, 0
  %130 = and i1 %128, %129
  %131 = icmp sgt i32 %105, 0
  %132 = select i1 %130, i1 %131, i1 false
  %133 = icmp slt i32 %105, %6
  %134 = select i1 %132, i1 %133, i1 false
  %135 = sub i32 0, %8
  %136 = icmp ne i32 %8, %135
  %137 = xor i32 %8, %8
  %138 = icmp eq i32 %137, 0
  %139 = xor i1 %136, true
  %140 = or i1 %139, %138
  %141 = xor i1 %136, true
  %142 = sub i1 %140, %141
  %143 = xor i1 %134, true
  %144 = xor i1 %142, true
  %145 = or i1 %143, %144
  %146 = xor i1 %145, true
  %147 = and i1 %146, true
  br label %209

148:                                              ; preds = %86
  %149 = fmul float %113, %35
  %150 = fsub float %116, %149
  %151 = fsub float %150, %61
  %152 = fmul float %42, %97
  %153 = fmul float %152, %38
  %154 = fsub float %151, %153
  %155 = fmul float %154, 8.000000e+00
  %156 = fptosi float %155 to i32
  %157 = icmp slt i32 %112, %5
  %158 = icmp sgt i32 %112, 0
  %159 = xor i1 %158, true
  %160 = xor i1 %157, %159
  %161 = and i1 %160, %157
  %162 = icmp sgt i32 %105, 0
  %163 = select i1 %161, i1 %162, i1 false
  %164 = icmp slt i32 %105, %6
  %165 = select i1 %163, i1 %164, i1 false
  %166 = sub i32 962090706, %8
  %167 = sub i32 %166, 962090706
  %168 = icmp ne i32 %8, %167
  %169 = xor i32 %8, -1042087208
  %170 = xor i32 %8, -1042087208
  %171 = xor i32 %169, %170
  %172 = icmp eq i32 %171, 0
  %173 = or i1 %168, true
  %174 = and i1 %168, true
  %175 = sub i1 %173, %174
  %176 = xor i1 %175, true
  %177 = and i1 %176, true
  %178 = and i1 %175, false
  %179 = or i1 %177, %178
  %180 = xor i1 %172, true
  %181 = and i1 %180, true
  %182 = and i1 %172, false
  %183 = or i1 %181, %182
  %184 = xor i1 %179, %183
  %185 = xor i1 %175, true
  %186 = xor i1 %172, true
  %187 = or i1 %185, %186
  %188 = xor i1 %187, true
  %189 = and i1 %188, true
  %190 = or i1 %184, %189
  %191 = xor i1 %168, true
  %192 = xor i1 %191, false
  %193 = sub i1 false, %192
  %194 = add i1 %190, %193
  %195 = or i1 %165, true
  %196 = and i1 %165, true
  %197 = sub i1 %195, %196
  %198 = xor i1 %194, false
  %199 = xor i1 %198, true
  %200 = and i1 %197, %199
  %201 = xor i1 %197, %199
  %202 = or i1 %200, %201
  %203 = xor i1 %202, false
  %204 = xor i1 %203, true
  %205 = xor i1 %204, true
  %206 = or i1 %205, false
  %207 = xor i1 %206, true
  %208 = and i1 %207, true
  br label %209

209:                                              ; preds = %148, %119
  %210 = phi float [ %149, %148 ], [ %120, %119 ]
  %211 = phi float [ %150, %148 ], [ %121, %119 ]
  %212 = phi float [ %151, %148 ], [ %122, %119 ]
  %213 = phi float [ %152, %148 ], [ %123, %119 ]
  %214 = phi float [ %153, %148 ], [ %124, %119 ]
  %215 = phi float [ %154, %148 ], [ %125, %119 ]
  %216 = phi float [ %155, %148 ], [ %126, %119 ]
  %217 = phi i32 [ %156, %148 ], [ %127, %119 ]
  %218 = phi i1 [ %157, %148 ], [ %128, %119 ]
  %219 = phi i1 [ %158, %148 ], [ %129, %119 ]
  %220 = phi i1 [ %161, %148 ], [ %130, %119 ]
  %221 = phi i1 [ %162, %148 ], [ %131, %119 ]
  %222 = phi i1 [ %163, %148 ], [ %132, %119 ]
  %223 = phi i1 [ %164, %148 ], [ %133, %119 ]
  %224 = phi i1 [ %165, %148 ], [ %134, %119 ]
  %225 = phi i32 [ %167, %148 ], [ %135, %119 ]
  %226 = phi i1 [ %168, %148 ], [ %136, %119 ]
  %227 = phi i32 [ %171, %148 ], [ %137, %119 ]
  %228 = phi i1 [ %172, %148 ], [ %138, %119 ]
  %229 = phi i1 [ %175, %148 ], [ %139, %119 ]
  %230 = phi i1 [ %190, %148 ], [ %140, %119 ]
  %231 = phi i1 [ %192, %148 ], [ %141, %119 ]
  %232 = phi i1 [ %194, %148 ], [ %142, %119 ]
  %233 = phi i1 [ %197, %148 ], [ %143, %119 ]
  %234 = phi i1 [ %199, %148 ], [ %144, %119 ]
  %235 = phi i1 [ %202, %148 ], [ %145, %119 ]
  %236 = phi i1 [ %204, %148 ], [ %146, %119 ]
  %237 = phi i1 [ %208, %148 ], [ %147, %119 ]
  br i1 %237, label %238, label %282

238:                                              ; preds = %209
  %239 = mul nsw i32 %112, %6
  %240 = srem i32 %2, 2
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %238
  %243 = add nsw i32 %239, %105
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %3, i64 %244
  %246 = load float, float* %245, align 4, !tbaa !13
  %247 = fcmp ogt float %96, %246
  br label %256

248:                                              ; preds = %238
  %249 = sub i32 %239, 1460204390
  %250 = add i32 %249, %105
  %251 = add i32 %250, 1460204390
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %3, i64 %252
  %254 = load float, float* %253, align 4, !tbaa !13
  %255 = fcmp ogt float %96, %254
  br label %256

256:                                              ; preds = %248, %242
  %257 = phi i32 [ %251, %248 ], [ %243, %242 ]
  %258 = phi i64 [ %252, %248 ], [ %244, %242 ]
  %259 = phi float* [ %253, %248 ], [ %245, %242 ]
  %260 = phi float [ %254, %248 ], [ %246, %242 ]
  %261 = phi i1 [ %255, %248 ], [ %247, %242 ]
  br i1 %261, label %262, label %282

262:                                              ; preds = %256
  %263 = icmp eq i1 %226, false
  %264 = icmp ne i1 %226, false
  %265 = and i1 %263, %264
  %266 = xor i1 %263, %264
  %267 = or i1 %265, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %262
  %269 = sdiv i32 570489877, 1298807543
  %270 = sdiv i32 -1366301916, 1378834090
  %271 = sub i32 1923349734, -1453138884
  %272 = sub i32 1516656510, 212889820
  %273 = add i32 2015582710, 1382398438
  %274 = add i32 9250407, 276496829
  br label %275

275:                                              ; preds = %262, %268
  store float %96, float* %259, align 4, !tbaa !13
  %276 = icmp sgt i32 %217, 0
  %277 = select i1 %276, i32 %217, i32 0
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %278
  %280 = load i8, i8* %279, align 1, !tbaa !10
  %281 = getelementptr inbounds i8, i8* %4, i64 %258
  store i8 %280, i8* %281, align 1, !tbaa !10
  br label %282

282:                                              ; preds = %275, %256, %209
  %283 = fadd double %87, 2.000000e-02
  %284 = srem i32 %33, 2
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %282
  %287 = fptrunc double %283 to float
  %288 = fpext float %287 to double
  %289 = fcmp olt double %288, 6.280000e+00
  br label %294

290:                                              ; preds = %282
  %291 = fptrunc double %283 to float
  %292 = fpext float %291 to double
  %293 = fcmp olt double %292, 6.280000e+00
  br label %294

294:                                              ; preds = %290, %286
  %295 = phi float [ %291, %290 ], [ %287, %286 ]
  %296 = phi double [ %292, %290 ], [ %288, %286 ]
  %297 = phi i1 [ %293, %290 ], [ %289, %286 ]
  br i1 %297, label %86, label %68, !llvm.loop !19
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

; Function Attrs: mustprogress nofree norecurse noreturn nounwind ssp uwtable
define i32 @main() local_unnamed_addr #6 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8
  store float 0.000000e+00, float* %1, align 4, !tbaa !13
  %4 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8
  store float 0.000000e+00, float* %2, align 4, !tbaa !13
  %5 = alloca [1760 x float], align 4
  %6 = alloca [1760 x i8], align 1
  %7 = getelementptr inbounds [1760 x i8], [1760 x i8]* %6, i64 0, i64 0
  %8 = getelementptr inbounds [1760 x float], [1760 x float]* %5, i64 0, i64 0
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %10

10:                                               ; preds = %37, %0
  %11 = load float, float* %1, align 4, !tbaa !13
  %12 = icmp eq i32 %9, 0
  %13 = icmp ne i32 %9, 0
  %14 = xor i1 %12, true
  %15 = and i1 %14, true
  %16 = and i1 %12, false
  %17 = or i1 %15, %16
  %18 = xor i1 %13, true
  %19 = and i1 %18, true
  %20 = and i1 %13, false
  %21 = or i1 %19, %20
  %22 = xor i1 %17, %21
  %23 = xor i1 %12, true
  %24 = xor i1 %13, true
  %25 = or i1 %23, %24
  %26 = xor i1 %25, true
  %27 = and i1 %26, true
  %28 = or i1 %22, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %10
  %30 = add i32 340695660, -1590415504
  %31 = sub i32 -1158259360, 487107086
  %32 = add i32 -1761996221, 441518190
  %33 = sub i32 -1328967040, -1448059374
  %34 = sub i32 -2007740970, -1753503417
  %35 = add i32 -1984417415, -863912982
  %36 = sdiv i32 -87407466, -1620665338
  br label %37

37:                                               ; preds = %10, %29
  %38 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %11, float %38, i32 1760, float* nonnull %8, i8* nonnull %7, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_(i8* nonnull %7, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2)
  br label %10, !llvm.loop !20
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #7

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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

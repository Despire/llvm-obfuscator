; ModuleID = 'output/introduce-loop/ex9/ex9.ll'
source_filename = "input/introduce-loop/ex9/ex9.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = srem i32 %3, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %28, %4
  %8 = srem i32 %3, 2
  %9 = icmp eq i32 %8, 0
  %10 = mul i32 %5, %5
  %11 = add i32 %10, %5
  %12 = mul i32 %11, 3
  %13 = srem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = mul i32 %5, %5
  %16 = add i32 %15, %5
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %14, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %7
  %21 = sdiv i32 10, 22
  %22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = sdiv i32 8, 36
  %24 = add i32 101, 0
  %25 = add i32 106, -30
  %26 = sdiv i32 87, 80
  %27 = mul i32 56, 24
  br label %36

28:                                               ; preds = %7
  %29 = sdiv i32 10, 22
  %30 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = sdiv i32 8, 36
  %32 = add i32 69, 32
  %33 = sub i32 106, 30
  %34 = sdiv i32 87, 80
  %35 = mul i32 56, 24
  br i1 %19, label %36, label %7

36:                                               ; preds = %28, %20
  %37 = phi i32 [ %29, %28 ], [ %21, %20 ]
  %38 = phi i32 [ %30, %28 ], [ %22, %20 ]
  %39 = phi i32 [ %31, %28 ], [ %23, %20 ]
  %40 = phi i32 [ %32, %28 ], [ %24, %20 ]
  %41 = phi i32 [ %33, %28 ], [ %25, %20 ]
  %42 = phi i32 [ %34, %28 ], [ %26, %20 ]
  %43 = phi i32 [ %35, %28 ], [ %27, %20 ]
  br label %46

44:                                               ; preds = %4
  %45 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi i32 [ %45, %44 ], [ %38, %36 ]
  br label %85

48:                                               ; preds = %68, %250
  %49 = srem i32 %124, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = sdiv i32 19, 0
  %53 = mul i32 80, 39
  %54 = srem i32 %47, 2
  %55 = icmp eq i32 %54, 0
  %56 = mul i64 %260, 2
  %57 = mul i64 %260, 2
  %58 = add i64 2, %57
  %59 = mul i64 %56, %58
  %60 = srem i64 %59, 4
  %61 = icmp eq i64 %60, 0
  %62 = mul i64 %260, %260
  %63 = mul i64 %62, %260
  %64 = add i64 %63, %260
  %65 = srem i64 %64, 2
  %66 = icmp eq i64 %65, 0
  %67 = and i1 %61, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %51
  %69 = sdiv i32 36, 99
  %70 = sub i32 0, -126
  %71 = mul i32 9, 109
  %72 = add i32 308352033, -308352049
  br i1 %67, label %78, label %48

73:                                               ; preds = %51
  %74 = sdiv i32 36, 99
  %75 = add i32 107, 19
  %76 = mul i32 9, 109
  %77 = sub i32 81, 97
  br label %78

78:                                               ; preds = %68, %73
  %79 = phi i32 [ %74, %73 ], [ %69, %68 ]
  %80 = phi i32 [ %75, %73 ], [ %70, %68 ]
  %81 = phi i32 [ %76, %73 ], [ %71, %68 ]
  %82 = phi i32 [ %77, %73 ], [ %72, %68 ]
  br label %84

83:                                               ; preds = %48
  br label %84

84:                                               ; preds = %83, %78
  ret void

85:                                               ; preds = %114, %250, %46
  %86 = phi i64 [ 0, %46 ], [ %260, %250 ], [ 0, %114 ]
  %87 = srem i32 %47, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = trunc i64 %86 to i32
  %91 = urem i32 %90, 80
  %92 = icmp eq i32 %91, 0
  br label %123

93:                                               ; preds = %85
  %94 = add i32 60, 3
  %95 = trunc i64 %86 to i32
  %96 = mul i32 19, 109
  %97 = urem i32 %95, 80
  %98 = mul i32 90, 96
  %99 = icmp eq i32 %97, 0
  %100 = sub i32 48, 61
  %101 = srem i32 %5, 2
  %102 = icmp eq i32 %101, 0
  %103 = mul i32 %87, 2
  %104 = mul i32 %87, 2
  %105 = add i32 2, %104
  %106 = mul i32 %103, %105
  %107 = srem i32 %106, 4
  %108 = icmp eq i32 %107, 0
  %109 = mul i32 %87, %87
  %110 = add i32 %109, %87
  %111 = srem i32 %110, 2
  %112 = icmp eq i32 %111, 0
  %113 = and i1 %108, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %93
  %115 = add i32 1, 123
  %116 = mul i32 85, 72
  br i1 %113, label %120, label %85

117:                                              ; preds = %93
  %118 = add i32 123, 1
  %119 = mul i32 85, 72
  br label %120

120:                                              ; preds = %114, %117
  %121 = phi i32 [ %118, %117 ], [ %115, %114 ]
  %122 = phi i32 [ %119, %117 ], [ %116, %114 ]
  br label %123

123:                                              ; preds = %120, %89
  %124 = phi i32 [ %95, %120 ], [ %90, %89 ]
  %125 = phi i32 [ %97, %120 ], [ %91, %89 ]
  %126 = phi i1 [ %99, %120 ], [ %92, %89 ]
  br i1 %126, label %181, label %127

127:                                              ; preds = %161, %123
  %128 = srem i32 %124, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = getelementptr inbounds i8, i8* %0, i64 %86
  %132 = load i8, i8* %131, align 1, !tbaa !10
  %133 = sext i8 %132 to i32
  br label %177

134:                                              ; preds = %127
  %135 = sdiv i32 88, 120
  %136 = getelementptr inbounds i8, i8* %0, i64 %86
  %137 = add i32 110, 48
  %138 = load i8, i8* %136, align 1, !tbaa !10
  %139 = sub i32 46, 3
  %140 = srem i64 %86, 2
  %141 = icmp eq i64 %140, 0
  %142 = mul i32 %47, 2
  %143 = mul i32 %47, 2
  %144 = add i32 2, %143
  %145 = mul i32 %142, %144
  %146 = srem i32 %145, 4
  %147 = icmp eq i32 %146, 0
  %148 = mul i32 %47, %47
  %149 = add i32 %148, %47
  %150 = srem i32 %149, 2
  %151 = icmp eq i32 %150, 0
  %152 = and i1 %147, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %134
  %154 = sext i8 %138 to i32
  %155 = sub i32 59, -100
  %156 = sdiv i32 3, 31
  %157 = sdiv i32 19, 15
  %158 = mul i32 12, 83
  %159 = sdiv i32 51, 104
  %160 = sub i32 -1704666021, -1704666198
  br label %169

161:                                              ; preds = %134
  %162 = sext i8 %138 to i32
  %163 = add i32 59, 100
  %164 = sdiv i32 3, 31
  %165 = sdiv i32 19, 15
  %166 = mul i32 12, 83
  %167 = sdiv i32 51, 104
  %168 = add i32 123, 54
  br i1 %152, label %169, label %127

169:                                              ; preds = %161, %153
  %170 = phi i32 [ %162, %161 ], [ %154, %153 ]
  %171 = phi i32 [ %163, %161 ], [ %155, %153 ]
  %172 = phi i32 [ %164, %161 ], [ %156, %153 ]
  %173 = phi i32 [ %165, %161 ], [ %157, %153 ]
  %174 = phi i32 [ %166, %161 ], [ %158, %153 ]
  %175 = phi i32 [ %167, %161 ], [ %159, %153 ]
  %176 = phi i32 [ %168, %161 ], [ %160, %153 ]
  br label %177

177:                                              ; preds = %169, %130
  %178 = phi i8* [ %136, %169 ], [ %131, %130 ]
  %179 = phi i8 [ %138, %169 ], [ %132, %130 ]
  %180 = phi i32 [ %170, %169 ], [ %133, %130 ]
  br label %181

181:                                              ; preds = %215, %177, %123
  %182 = phi i32 [ %180, %177 ], [ 10, %123 ], [ 0, %215 ]
  %183 = srem i32 %5, 2
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %235

185:                                              ; preds = %181
  %186 = sub i32 46, 44
  %187 = call i32 @putchar(i32 %182)
  %188 = sdiv i32 97, 122
  %189 = load float, float* %1, align 4, !tbaa !13
  %190 = add i32 2, 4
  %191 = fpext float %189 to double
  %192 = sub i32 35, 35
  %193 = fadd double %191, 4.000000e-05
  %194 = mul i32 84, 91
  %195 = fptrunc double %193 to float
  %196 = sub i32 65, 123
  store float %195, float* %1, align 4, !tbaa !13
  %197 = add i32 80, 10
  %198 = load float, float* %2, align 4, !tbaa !13
  %199 = mul i32 61, 59
  %200 = fpext float %198 to double
  %201 = add i32 85, 123
  %202 = srem i32 %47, 2
  %203 = icmp eq i32 %202, 0
  %204 = mul i32 %125, 2
  %205 = mul i32 %125, 2
  %206 = add i32 2, %205
  %207 = mul i32 %204, %206
  %208 = srem i32 %207, 4
  %209 = icmp eq i32 %208, 0
  %210 = mul i32 %125, %125
  %211 = add i32 %210, %125
  %212 = srem i32 %211, 2
  %213 = icmp eq i32 %212, 0
  %214 = and i1 %209, %213
  br i1 %214, label %223, label %215

215:                                              ; preds = %185
  %216 = fadd double %200, 2.000000e-05
  %217 = sdiv i32 67, 97
  %218 = fptrunc double %216 to float
  store float %218, float* %2, align 4, !tbaa !13
  %219 = add i64 %86, -4706366133941629016
  %220 = add i64 %219, 1
  %221 = sub i64 %220, -4706366133941629016
  %222 = icmp eq i64 %221, 1761
  br i1 %214, label %229, label %181

223:                                              ; preds = %185
  %224 = fadd double %200, 2.000000e-05
  %225 = sdiv i32 67, 97
  %226 = fptrunc double %224 to float
  store float %226, float* %2, align 4, !tbaa !13
  %227 = add nuw nsw i64 %86, 1
  %228 = icmp eq i64 %227, 1761
  br label %229

229:                                              ; preds = %215, %223
  %230 = phi double [ %224, %223 ], [ %216, %215 ]
  %231 = phi i32 [ %225, %223 ], [ %217, %215 ]
  %232 = phi float [ %226, %223 ], [ %218, %215 ]
  %233 = phi i64 [ %227, %223 ], [ %221, %215 ]
  %234 = phi i1 [ %228, %223 ], [ %222, %215 ]
  br label %250

235:                                              ; preds = %181
  %236 = call i32 @putchar(i32 %182)
  %237 = load float, float* %1, align 4, !tbaa !13
  %238 = fpext float %237 to double
  %239 = fadd double %238, 4.000000e-05
  %240 = fptrunc double %239 to float
  store float %240, float* %1, align 4, !tbaa !13
  %241 = load float, float* %2, align 4, !tbaa !13
  %242 = fpext float %241 to double
  %243 = fadd double %242, 2.000000e-05
  %244 = fptrunc double %243 to float
  store float %244, float* %2, align 4, !tbaa !13
  %245 = xor i64 %86, 1
  %246 = and i64 %86, 1
  %247 = mul i64 2, %246
  %248 = add i64 %245, %247
  %249 = icmp eq i64 %248, 1761
  br label %250

250:                                              ; preds = %235, %229
  %251 = phi i32 [ %236, %235 ], [ %187, %229 ]
  %252 = phi float [ %237, %235 ], [ %189, %229 ]
  %253 = phi double [ %238, %235 ], [ %191, %229 ]
  %254 = phi double [ %239, %235 ], [ %193, %229 ]
  %255 = phi float [ %240, %235 ], [ %195, %229 ]
  %256 = phi float [ %241, %235 ], [ %198, %229 ]
  %257 = phi double [ %242, %235 ], [ %200, %229 ]
  %258 = phi double [ %243, %235 ], [ %230, %229 ]
  %259 = phi float [ %244, %235 ], [ %232, %229 ]
  %260 = phi i64 [ %248, %235 ], [ %233, %229 ]
  %261 = phi i1 [ %249, %235 ], [ %234, %229 ]
  br i1 %261, label %48, label %85, !llvm.loop !15
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
  %13 = sdiv i32 %6, 2
  %14 = srem i32 %5, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %7
  %17 = sitofp i32 %13 to float
  %18 = sdiv i32 %5, 2
  %19 = add nsw i32 %18, 1
  %20 = sitofp i32 %19 to float
  %21 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %22 = call fastcc float @_ZL3cosf(float %1) #9
  %23 = call fastcc float @_ZL3sinf(float %1) #9
  br label %54

24:                                               ; preds = %48, %7
  %25 = mul i32 121, 44
  %26 = sitofp i32 %13 to float
  %27 = sub i32 96, 44
  %28 = sdiv i32 %5, 2
  %29 = sdiv i32 21, 36
  %30 = sub i32 %28, -1
  %31 = sdiv i32 104, 33
  %32 = sitofp i32 %30 to float
  %33 = sdiv i32 120, 72
  %34 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %35 = add i32 15, 78
  %36 = call fastcc float @_ZL3cosf(float %1) #9
  %37 = mul i32 22, 72
  %38 = call fastcc float @_ZL3sinf(float %1) #9
  %39 = srem i32 %6, 2
  %40 = icmp eq i32 %39, 0
  %41 = and i64 %11, 1
  %42 = icmp eq i64 %41, 1
  %43 = mul i64 %11, %11
  %44 = add i64 %43, %11
  %45 = srem i64 %44, 2
  %46 = icmp eq i64 %45, 0
  %47 = or i1 %42, %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %24
  %49 = sdiv i32 41, 26
  br i1 %47, label %52, label %24

50:                                               ; preds = %24
  %51 = sdiv i32 41, 26
  br label %52

52:                                               ; preds = %48, %50
  %53 = phi i32 [ %51, %50 ], [ %49, %48 ]
  br label %54

54:                                               ; preds = %52, %16
  %55 = phi float [ %26, %52 ], [ %17, %16 ]
  %56 = phi i32 [ %28, %52 ], [ %18, %16 ]
  %57 = phi i32 [ %30, %52 ], [ %19, %16 ]
  %58 = phi float [ %32, %52 ], [ %20, %16 ]
  %59 = phi float [ %34, %52 ], [ %21, %16 ]
  %60 = phi float [ %36, %52 ], [ %22, %16 ]
  %61 = phi float [ %38, %52 ], [ %23, %16 ]
  br label %114

62:                                               ; preds = %98, %749
  %63 = srem i32 %8, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %67 = call fastcc float @_ZL3sinf(float %0) #9
  %68 = fcmp une float %67, 0.000000e+00
  %69 = fmul float %67, 2.000000e+00
  %70 = select i1 %68, float %69, float %67
  %71 = call fastcc float @_ZL3cosf(float %0) #9
  br label %107

72:                                               ; preds = %62
  %73 = sdiv i32 123, 81
  %74 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %75 = add i32 30, 87
  %76 = call fastcc float @_ZL3sinf(float %0) #9
  %77 = sdiv i32 17, 32
  %78 = fcmp une float %76, 0.000000e+00
  %79 = mul i32 79, 28
  %80 = fmul float %76, 2.000000e+00
  %81 = sub i32 97, 31
  %82 = select i1 %78, float %80, float %76
  %83 = mul i32 24, 57
  %84 = call fastcc float @_ZL3cosf(float %0) #9
  %85 = srem i32 %148, 2
  %86 = icmp eq i32 %85, 0
  %87 = mul i32 %571, 2
  %88 = mul i32 %571, 2
  %89 = add i32 2, %88
  %90 = mul i32 %87, %89
  %91 = srem i32 %90, 4
  %92 = icmp eq i32 %91, 0
  %93 = mul i32 %571, %571
  %94 = add i32 %93, %571
  %95 = srem i32 %94, 2
  %96 = icmp eq i32 %95, 0
  %97 = and i1 %92, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %72
  %99 = sub i32 17, 70
  %100 = mul i32 9, 43
  br i1 %97, label %104, label %62

101:                                              ; preds = %72
  %102 = add i32 17, -70
  %103 = mul i32 9, 43
  br label %104

104:                                              ; preds = %98, %101
  %105 = phi i32 [ %102, %101 ], [ %99, %98 ]
  %106 = phi i32 [ %103, %101 ], [ %100, %98 ]
  br label %107

107:                                              ; preds = %104, %65
  %108 = phi float [ %74, %104 ], [ %66, %65 ]
  %109 = phi float [ %76, %104 ], [ %67, %65 ]
  %110 = phi i1 [ %78, %104 ], [ %68, %65 ]
  %111 = phi float [ %80, %104 ], [ %69, %65 ]
  %112 = phi float [ %82, %104 ], [ %70, %65 ]
  %113 = phi float [ %84, %104 ], [ %71, %65 ]
  br label %792

114:                                              ; preds = %142, %749, %54
  %115 = phi double [ 0.000000e+00, %54 ], [ %751, %749 ], [ 0.000000e+00, %142 ]
  %116 = phi float [ 0.000000e+00, %54 ], [ %750, %749 ], [ 0.000000e+00, %142 ]
  %117 = srem i32 %57, 2
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %114
  %120 = sdiv i32 107, 20
  %121 = fptosi float %116 to i32
  %122 = add i32 101, 31
  %123 = add i32 66, 58
  %124 = sdiv i32 17, 56
  %125 = sdiv i32 29, 112
  %126 = add i32 24, 93
  %127 = mul i32 121, 59
  %128 = mul i32 44, 66
  %129 = add i32 99, 55
  %130 = srem i32 %2, 2
  %131 = icmp eq i32 %130, 0
  %132 = mul i32 %56, %56
  %133 = add i32 %132, %56
  %134 = mul i32 %133, 3
  %135 = srem i32 %134, 2
  %136 = icmp eq i32 %135, 0
  %137 = mul i32 %56, %56
  %138 = add i32 %137, %56
  %139 = srem i32 %138, 2
  %140 = icmp eq i32 %139, 0
  %141 = and i1 %136, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %119
  br i1 %141, label %144, label %114

143:                                              ; preds = %119
  br label %144

144:                                              ; preds = %142, %143
  br label %147

145:                                              ; preds = %114
  %146 = fptosi float %116 to i32
  br label %147

147:                                              ; preds = %145, %144
  %148 = phi i32 [ %146, %145 ], [ %121, %144 ]
  switch i32 %148, label %452 [
    i32 0, label %149
    i32 1, label %184
    i32 2, label %225
    i32 3, label %266
    i32 4, label %306
    i32 5, label %351
    i32 6, label %389
  ]

149:                                              ; preds = %171, %147
  %150 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %151 = srem i32 %2, 2
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %183

154:                                              ; preds = %149
  %155 = sub i32 95, 93
  %156 = add i32 34, 79
  %157 = add i32 99, 19
  %158 = mul i32 81, 37
  %159 = sub i32 79, 45
  %160 = add i32 11, 100
  %161 = add i32 102, 52
  %162 = srem i32 %13, 2
  %163 = icmp eq i32 %162, 0
  %164 = and i32 %56, 1
  %165 = icmp eq i32 %164, 1
  %166 = mul i32 %56, %56
  %167 = add i32 %166, %56
  %168 = srem i32 %167, 2
  %169 = icmp eq i32 %168, 0
  %170 = or i1 %165, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %154
  %172 = add i32 1743676803, -1743676755
  %173 = mul i32 44, 55
  %174 = add i32 48, -113
  br i1 %170, label %179, label %149

175:                                              ; preds = %154
  %176 = add i32 45, 3
  %177 = mul i32 44, 55
  %178 = sub i32 48, 113
  br label %179

179:                                              ; preds = %171, %175
  %180 = phi i32 [ %176, %175 ], [ %172, %171 ]
  %181 = phi i32 [ %177, %175 ], [ %173, %171 ]
  %182 = phi i32 [ %178, %175 ], [ %174, %171 ]
  br label %183

183:                                              ; preds = %179, %153
  br label %184

184:                                              ; preds = %211, %183, %147
  %185 = phi float [ 0.000000e+00, %147 ], [ %150, %183 ], [ 0.000000e+00, %211 ]
  %186 = srem i32 %117, 2
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = call fastcc float @_ZL3cosf(float %116) #9
  br label %223

190:                                              ; preds = %184
  %191 = add i32 71, 29
  %192 = call fastcc float @_ZL3cosf(float %116) #9
  %193 = sdiv i32 94, 68
  %194 = add i32 55, 68
  %195 = srem i32 %56, 2
  %196 = icmp eq i32 %195, 0
  %197 = and i64 %9, 1
  %198 = icmp eq i64 %197, 0
  %199 = mul i64 %9, %9
  %200 = add i64 %199, %9
  %201 = mul i64 %200, 3
  %202 = srem i64 %201, 2
  %203 = icmp eq i64 %202, 0
  %204 = or i1 %198, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %190
  %206 = sub i32 12, 102
  %207 = mul i32 93, 117
  %208 = sdiv i32 24, 83
  %209 = sub i32 121, 13
  %210 = sub i32 107, 113
  br label %217

211:                                              ; preds = %190
  %212 = add i32 529628958, -529629048
  %213 = mul i32 93, 117
  %214 = sdiv i32 24, 83
  %215 = sub i32 1085951803, 1085951695
  %216 = sub i32 940416243, 940416249
  br i1 %204, label %217, label %184

217:                                              ; preds = %211, %205
  %218 = phi i32 [ %212, %211 ], [ %206, %205 ]
  %219 = phi i32 [ %213, %211 ], [ %207, %205 ]
  %220 = phi i32 [ %214, %211 ], [ %208, %205 ]
  %221 = phi i32 [ %215, %211 ], [ %209, %205 ]
  %222 = phi i32 [ %216, %211 ], [ %210, %205 ]
  br label %223

223:                                              ; preds = %217, %188
  %224 = phi float [ %192, %217 ], [ %189, %188 ]
  br label %225

225:                                              ; preds = %246, %223, %147
  %226 = phi float [ 0.000000e+00, %147 ], [ %224, %223 ], [ 0.000000e+00, %246 ]
  %227 = phi float [ 0.000000e+00, %147 ], [ %185, %223 ], [ 0.000000e+00, %246 ]
  %228 = call fastcc float @_ZL3sinf(float %0) #9
  %229 = srem i32 %8, 2
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %264

231:                                              ; preds = %225
  %232 = sdiv i32 31, 25
  %233 = sub i32 77, 81
  %234 = mul i32 34, 110
  %235 = add i32 30, 37
  %236 = srem i32 %56, 2
  %237 = icmp eq i32 %236, 0
  %238 = and i32 %148, 1
  %239 = icmp eq i32 %238, 0
  %240 = mul i32 %148, %148
  %241 = add i32 %240, %148
  %242 = mul i32 %241, 3
  %243 = srem i32 %242, 2
  %244 = icmp eq i32 %243, 0
  %245 = or i1 %239, %244
  br i1 %245, label %252, label %246

246:                                              ; preds = %231
  %247 = mul i32 63, 110
  %248 = sdiv i32 100, 103
  %249 = mul i32 42, 48
  %250 = sub i32 67, 39
  %251 = add i32 103, 56
  br i1 %245, label %258, label %225

252:                                              ; preds = %231
  %253 = mul i32 63, 110
  %254 = sdiv i32 100, 103
  %255 = mul i32 42, 48
  %256 = add i32 1272247342, -1272247314
  %257 = add i32 32, 127
  br label %258

258:                                              ; preds = %246, %252
  %259 = phi i32 [ %253, %252 ], [ %247, %246 ]
  %260 = phi i32 [ %254, %252 ], [ %248, %246 ]
  %261 = phi i32 [ %255, %252 ], [ %249, %246 ]
  %262 = phi i32 [ %256, %252 ], [ %250, %246 ]
  %263 = phi i32 [ %257, %252 ], [ %251, %246 ]
  br label %265

264:                                              ; preds = %225
  br label %265

265:                                              ; preds = %264, %258
  br label %266

266:                                              ; preds = %295, %265, %147
  %267 = phi float [ 0.000000e+00, %147 ], [ %228, %265 ], [ 0.000000e+00, %295 ]
  %268 = phi float [ 0.000000e+00, %147 ], [ %226, %265 ], [ 0.000000e+00, %295 ]
  %269 = phi float [ 0.000000e+00, %147 ], [ %227, %265 ], [ 0.000000e+00, %295 ]
  %270 = call fastcc float @_ZL3sinf(float %116) #9
  %271 = srem i32 %13, 2
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %305

274:                                              ; preds = %266
  %275 = add i32 33, 100
  %276 = mul i32 28, 126
  %277 = srem i32 %6, 2
  %278 = icmp eq i32 %277, 0
  %279 = mul i32 %2, 2
  %280 = mul i32 %2, 2
  %281 = add i32 2, %280
  %282 = mul i32 %279, %281
  %283 = srem i32 %282, 4
  %284 = icmp eq i32 %283, 0
  %285 = mul i32 %2, %2
  %286 = add i32 %285, %2
  %287 = srem i32 %286, 2
  %288 = icmp eq i32 %287, 0
  %289 = and i1 %284, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %274
  %291 = sub i32 99, 55
  %292 = sub i32 121, 118
  %293 = add i32 96, 5
  %294 = add i32 45, 61
  br label %300

295:                                              ; preds = %274
  %296 = sub i32 -1201290254, -1201290298
  %297 = add i32 121, -118
  %298 = add i32 101, 0
  %299 = add i32 45, 61
  br i1 %289, label %300, label %266

300:                                              ; preds = %295, %290
  %301 = phi i32 [ %296, %295 ], [ %291, %290 ]
  %302 = phi i32 [ %297, %295 ], [ %292, %290 ]
  %303 = phi i32 [ %298, %295 ], [ %293, %290 ]
  %304 = phi i32 [ %299, %295 ], [ %294, %290 ]
  br label %305

305:                                              ; preds = %300, %273
  br label %306

306:                                              ; preds = %333, %305, %147
  %307 = phi float [ 0.000000e+00, %147 ], [ %270, %305 ], [ 0.000000e+00, %333 ]
  %308 = phi float [ 0.000000e+00, %147 ], [ %267, %305 ], [ 0.000000e+00, %333 ]
  %309 = phi float [ 0.000000e+00, %147 ], [ %268, %305 ], [ 0.000000e+00, %333 ]
  %310 = phi float [ 0.000000e+00, %147 ], [ %269, %305 ], [ 0.000000e+00, %333 ]
  %311 = call fastcc float @_ZL3cosf(float %0) #9
  %312 = srem i32 %5, 2
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %349

314:                                              ; preds = %306
  %315 = sdiv i32 93, 100
  %316 = srem i32 %312, 2
  %317 = icmp eq i32 %316, 0
  %318 = and i32 %56, 1
  %319 = icmp eq i32 %318, 1
  %320 = mul i32 %56, %56
  %321 = add i32 %320, %56
  %322 = srem i32 %321, 2
  %323 = icmp eq i32 %322, 0
  %324 = or i1 %319, %323
  br i1 %324, label %325, label %333

325:                                              ; preds = %314
  %326 = sub i32 106, 49
  %327 = mul i32 73, 77
  %328 = mul i32 101, 26
  %329 = sub i32 100, 28
  %330 = add i32 3, 95
  %331 = sdiv i32 94, 12
  %332 = sdiv i32 105, 12
  br label %341

333:                                              ; preds = %314
  %334 = sub i32 -1060021333, -1060021390
  %335 = mul i32 73, 77
  %336 = mul i32 101, 26
  %337 = add i32 100, -28
  %338 = add i32 561042804, -561042706
  %339 = sdiv i32 94, 12
  %340 = sdiv i32 105, 12
  br i1 %324, label %341, label %306

341:                                              ; preds = %333, %325
  %342 = phi i32 [ %334, %333 ], [ %326, %325 ]
  %343 = phi i32 [ %335, %333 ], [ %327, %325 ]
  %344 = phi i32 [ %336, %333 ], [ %328, %325 ]
  %345 = phi i32 [ %337, %333 ], [ %329, %325 ]
  %346 = phi i32 [ %338, %333 ], [ %330, %325 ]
  %347 = phi i32 [ %339, %333 ], [ %331, %325 ]
  %348 = phi i32 [ %340, %333 ], [ %332, %325 ]
  br label %350

349:                                              ; preds = %306
  br label %350

350:                                              ; preds = %349, %341
  br label %351

351:                                              ; preds = %382, %350, %147
  %352 = phi float [ 0.000000e+00, %147 ], [ %311, %350 ], [ 0.000000e+00, %382 ]
  %353 = phi float [ 0.000000e+00, %147 ], [ %307, %350 ], [ 0.000000e+00, %382 ]
  %354 = phi float [ 0.000000e+00, %147 ], [ %308, %350 ], [ 0.000000e+00, %382 ]
  %355 = phi float [ 0.000000e+00, %147 ], [ %309, %350 ], [ 0.000000e+00, %382 ]
  %356 = phi float [ 0.000000e+00, %147 ], [ %310, %350 ], [ 0.000000e+00, %382 ]
  %357 = fadd float %355, %12
  %358 = srem i32 %56, 2
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %351
  br label %388

361:                                              ; preds = %351
  %362 = sdiv i32 119, 69
  %363 = add i32 57, 115
  %364 = mul i32 40, 17
  %365 = mul i32 48, 86
  %366 = srem i32 %14, 2
  %367 = icmp eq i32 %366, 0
  %368 = mul i32 %13, 2
  %369 = mul i32 %13, 2
  %370 = add i32 2, %369
  %371 = mul i32 %368, %370
  %372 = srem i32 %371, 4
  %373 = icmp eq i32 %372, 0
  %374 = mul i32 %13, %13
  %375 = add i32 %374, %13
  %376 = srem i32 %375, 2
  %377 = icmp eq i32 %376, 0
  %378 = or i1 %373, %377
  br i1 %378, label %379, label %382

379:                                              ; preds = %361
  %380 = add i32 -1596424031, 1596424019
  %381 = add i32 64, 127
  br label %385

382:                                              ; preds = %361
  %383 = sub i32 52, 64
  %384 = add i32 86, 105
  br i1 %378, label %385, label %351

385:                                              ; preds = %382, %379
  %386 = phi i32 [ %383, %382 ], [ %380, %379 ]
  %387 = phi i32 [ %384, %382 ], [ %381, %379 ]
  br label %388

388:                                              ; preds = %385, %360
  br label %389

389:                                              ; preds = %416, %388, %147
  %390 = phi float [ 0.000000e+00, %147 ], [ %357, %388 ], [ 0.000000e+00, %416 ]
  %391 = phi float [ 0.000000e+00, %147 ], [ %352, %388 ], [ 0.000000e+00, %416 ]
  %392 = phi float [ 0.000000e+00, %147 ], [ %353, %388 ], [ 0.000000e+00, %416 ]
  %393 = phi float [ 0.000000e+00, %147 ], [ %354, %388 ], [ 0.000000e+00, %416 ]
  %394 = phi float [ 0.000000e+00, %147 ], [ %355, %388 ], [ 0.000000e+00, %416 ]
  %395 = phi float [ 0.000000e+00, %147 ], [ %356, %388 ], [ 0.000000e+00, %416 ]
  %396 = fmul float %390, %395
  %397 = fmul float %391, %396
  %398 = srem i32 %57, 2
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %446

400:                                              ; preds = %389
  %401 = sub i32 35, 11
  %402 = srem i32 %13, 2
  %403 = icmp eq i32 %402, 0
  %404 = mul i32 %57, 2
  %405 = mul i32 %57, 2
  %406 = add i32 2, %405
  %407 = mul i32 %404, %406
  %408 = srem i32 %407, 4
  %409 = icmp eq i32 %408, 0
  %410 = mul i32 %57, %57
  %411 = mul i32 %410, %57
  %412 = add i32 %411, %57
  %413 = srem i32 %412, 2
  %414 = icmp eq i32 %413, 0
  %415 = and i1 %409, %414
  br i1 %415, label %426, label %416

416:                                              ; preds = %400
  %417 = fmul float %392, %393
  %418 = sub i32 -1934823351, -1934823403
  %419 = fsub float %397, %417
  %420 = mul i32 13, 3
  %421 = sub i32 83, -107
  %422 = mul i32 10, 118
  %423 = add i32 103, -102
  %424 = add i32 1341643632, -1341643444
  %425 = mul i32 66, 10
  br i1 %415, label %436, label %389

426:                                              ; preds = %400
  %427 = fmul float %392, %393
  %428 = sub i32 87, 35
  %429 = fsub float %397, %427
  %430 = mul i32 13, 3
  %431 = add i32 83, 107
  %432 = mul i32 10, 118
  %433 = sub i32 103, 102
  %434 = add i32 72, 116
  %435 = mul i32 66, 10
  br label %436

436:                                              ; preds = %416, %426
  %437 = phi float [ %427, %426 ], [ %417, %416 ]
  %438 = phi i32 [ %428, %426 ], [ %418, %416 ]
  %439 = phi float [ %429, %426 ], [ %419, %416 ]
  %440 = phi i32 [ %430, %426 ], [ %420, %416 ]
  %441 = phi i32 [ %431, %426 ], [ %421, %416 ]
  %442 = phi i32 [ %432, %426 ], [ %422, %416 ]
  %443 = phi i32 [ %433, %426 ], [ %423, %416 ]
  %444 = phi i32 [ %434, %426 ], [ %424, %416 ]
  %445 = phi i32 [ %435, %426 ], [ %425, %416 ]
  br label %449

446:                                              ; preds = %389
  %447 = fmul float %392, %393
  %448 = fsub float %397, %447
  br label %449

449:                                              ; preds = %446, %436
  %450 = phi float [ %447, %446 ], [ %437, %436 ]
  %451 = phi float [ %448, %446 ], [ %439, %436 ]
  br label %452

452:                                              ; preds = %525, %449, %147
  %453 = phi float [ 0.000000e+00, %147 ], [ %451, %449 ], [ 0.000000e+00, %525 ]
  %454 = phi float [ 0.000000e+00, %147 ], [ %390, %449 ], [ 0.000000e+00, %525 ]
  %455 = phi float [ 0.000000e+00, %147 ], [ %391, %449 ], [ 0.000000e+00, %525 ]
  %456 = phi float [ 0.000000e+00, %147 ], [ %392, %449 ], [ 0.000000e+00, %525 ]
  %457 = phi float [ 0.000000e+00, %147 ], [ %393, %449 ], [ 0.000000e+00, %525 ]
  %458 = phi float [ 0.000000e+00, %147 ], [ %394, %449 ], [ 0.000000e+00, %525 ]
  %459 = phi float [ 0.000000e+00, %147 ], [ %395, %449 ], [ 0.000000e+00, %525 ]
  %460 = fmul float %454, %459
  %461 = fmul float %457, %460
  %462 = fmul float %455, %456
  %463 = fadd float %462, %461
  %464 = fadd float %463, 5.000000e+00
  %465 = fdiv float 1.000000e+00, %464
  %466 = fmul float %465, 3.000000e+01
  %467 = fmul float %454, %59
  %468 = fmul float %467, %60
  %469 = fmul float %453, %61
  %470 = fadd float %468, %469
  %471 = fmul float %470, %466
  %472 = fadd float %471, %55
  %473 = srem i32 %117, 2
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %534

475:                                              ; preds = %452
  %476 = mul i32 75, 48
  %477 = fptosi float %472 to i32
  %478 = mul i32 45, 94
  %479 = fmul float %465, 1.500000e+01
  %480 = mul i32 83, 83
  %481 = fmul float %467, %61
  %482 = mul i32 80, 67
  %483 = fmul float %453, %60
  %484 = sdiv i32 34, 86
  %485 = fsub float %481, %483
  %486 = sdiv i32 62, 12
  %487 = fmul float %485, %479
  %488 = mul i32 26, 43
  %489 = fadd float %487, %58
  %490 = sub i32 42, 112
  %491 = fptosi float %489 to i32
  %492 = fmul float %456, %457
  %493 = fmul float %458, %459
  %494 = fmul float %455, %493
  %495 = fsub float %492, %494
  %496 = fmul float %60, %495
  %497 = fmul float %457, %493
  %498 = fsub float %496, %497
  %499 = fsub float %498, %462
  %500 = fmul float %458, %59
  %501 = fmul float %500, %61
  %502 = fsub float %499, %501
  %503 = fmul float %502, 8.000000e+00
  %504 = fptosi float %503 to i32
  %505 = icmp slt i32 %491, %5
  %506 = icmp sgt i32 %491, 0
  %507 = xor i1 %506, true
  %508 = xor i1 %505, %507
  %509 = and i1 %508, %505
  %510 = icmp sgt i32 %477, 0
  %511 = select i1 %509, i1 %510, i1 false
  %512 = srem i32 %13, 2
  %513 = icmp eq i32 %512, 0
  %514 = mul i32 %6, 2
  %515 = mul i32 %6, 2
  %516 = add i32 2, %515
  %517 = mul i32 %514, %516
  %518 = srem i32 %517, 4
  %519 = icmp eq i32 %518, 0
  %520 = mul i32 %6, %6
  %521 = add i32 %520, %6
  %522 = srem i32 %521, 2
  %523 = icmp eq i32 %522, 0
  %524 = or i1 %519, %523
  br i1 %524, label %528, label %525

525:                                              ; preds = %475
  %526 = icmp slt i32 %477, %6
  %527 = select i1 %511, i1 %526, i1 false
  br i1 %524, label %531, label %452

528:                                              ; preds = %475
  %529 = icmp slt i32 %477, %6
  %530 = select i1 %511, i1 %529, i1 false
  br label %531

531:                                              ; preds = %525, %528
  %532 = phi i1 [ %529, %528 ], [ %526, %525 ]
  %533 = phi i1 [ %530, %528 ], [ %527, %525 ]
  br label %563

534:                                              ; preds = %452
  %535 = fptosi float %472 to i32
  %536 = fmul float %465, 1.500000e+01
  %537 = fmul float %467, %61
  %538 = fmul float %453, %60
  %539 = fsub float %537, %538
  %540 = fmul float %539, %536
  %541 = fadd float %540, %58
  %542 = fptosi float %541 to i32
  %543 = fmul float %456, %457
  %544 = fmul float %458, %459
  %545 = fmul float %455, %544
  %546 = fsub float %543, %545
  %547 = fmul float %60, %546
  %548 = fmul float %457, %544
  %549 = fsub float %547, %548
  %550 = fsub float %549, %462
  %551 = fmul float %458, %59
  %552 = fmul float %551, %61
  %553 = fsub float %550, %552
  %554 = fmul float %553, 8.000000e+00
  %555 = fptosi float %554 to i32
  %556 = icmp slt i32 %542, %5
  %557 = icmp sgt i32 %542, 0
  %558 = and i1 %556, %557
  %559 = icmp sgt i32 %535, 0
  %560 = select i1 %558, i1 %559, i1 false
  %561 = icmp slt i32 %535, %6
  %562 = select i1 %560, i1 %561, i1 false
  br label %563

563:                                              ; preds = %534, %531
  %564 = phi i32 [ %535, %534 ], [ %477, %531 ]
  %565 = phi float [ %536, %534 ], [ %479, %531 ]
  %566 = phi float [ %537, %534 ], [ %481, %531 ]
  %567 = phi float [ %538, %534 ], [ %483, %531 ]
  %568 = phi float [ %539, %534 ], [ %485, %531 ]
  %569 = phi float [ %540, %534 ], [ %487, %531 ]
  %570 = phi float [ %541, %534 ], [ %489, %531 ]
  %571 = phi i32 [ %542, %534 ], [ %491, %531 ]
  %572 = phi float [ %543, %534 ], [ %492, %531 ]
  %573 = phi float [ %544, %534 ], [ %493, %531 ]
  %574 = phi float [ %545, %534 ], [ %494, %531 ]
  %575 = phi float [ %546, %534 ], [ %495, %531 ]
  %576 = phi float [ %547, %534 ], [ %496, %531 ]
  %577 = phi float [ %548, %534 ], [ %497, %531 ]
  %578 = phi float [ %549, %534 ], [ %498, %531 ]
  %579 = phi float [ %550, %534 ], [ %499, %531 ]
  %580 = phi float [ %551, %534 ], [ %500, %531 ]
  %581 = phi float [ %552, %534 ], [ %501, %531 ]
  %582 = phi float [ %553, %534 ], [ %502, %531 ]
  %583 = phi float [ %554, %534 ], [ %503, %531 ]
  %584 = phi i32 [ %555, %534 ], [ %504, %531 ]
  %585 = phi i1 [ %556, %534 ], [ %505, %531 ]
  %586 = phi i1 [ %557, %534 ], [ %506, %531 ]
  %587 = phi i1 [ %558, %534 ], [ %509, %531 ]
  %588 = phi i1 [ %559, %534 ], [ %510, %531 ]
  %589 = phi i1 [ %560, %534 ], [ %511, %531 ]
  %590 = phi i1 [ %561, %534 ], [ %532, %531 ]
  %591 = phi i1 [ %562, %534 ], [ %533, %531 ]
  br i1 %591, label %592, label %703

592:                                              ; preds = %627, %563
  %593 = mul nsw i32 %571, %6
  %594 = add nsw i32 %593, %564
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds float, float* %3, i64 %595
  %597 = load float, float* %596, align 4, !tbaa !13
  %598 = srem i32 %2, 2
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %602

600:                                              ; preds = %592
  %601 = fcmp ogt float %465, %597
  br label %651

602:                                              ; preds = %592
  %603 = srem i32 %564, 2
  %604 = icmp eq i32 %603, 0
  %605 = mul i32 %598, %598
  %606 = add i32 %605, %598
  %607 = mul i32 %606, 3
  %608 = srem i32 %607, 2
  %609 = icmp eq i32 %608, 0
  %610 = mul i32 %598, %598
  %611 = add i32 %610, %598
  %612 = srem i32 %611, 2
  %613 = icmp eq i32 %612, 0
  %614 = and i1 %609, %613
  br i1 %614, label %615, label %627

615:                                              ; preds = %602
  %616 = sub i32 1284527188, 1284527088
  %617 = fcmp ogt float %465, %597
  %618 = sub i32 -1855977679, -1855977598
  %619 = sdiv i32 22, 89
  %620 = add i32 -1133153713, 1133153755
  %621 = sdiv i32 21, 89
  %622 = add i32 6, 95
  %623 = sdiv i32 41, 42
  %624 = mul i32 116, 5
  %625 = add i32 942908309, -942908319
  %626 = sdiv i32 88, 23
  br label %639

627:                                              ; preds = %602
  %628 = sub i32 124, 24
  %629 = fcmp ogt float %465, %597
  %630 = sub i32 0, 81
  %631 = sdiv i32 22, 89
  %632 = sub i32 60, 18
  %633 = sdiv i32 21, 89
  %634 = add i32 94, 7
  %635 = sdiv i32 41, 42
  %636 = mul i32 116, 5
  %637 = sub i32 77, 87
  %638 = sdiv i32 88, 23
  br i1 %614, label %639, label %592

639:                                              ; preds = %627, %615
  %640 = phi i32 [ %628, %627 ], [ %616, %615 ]
  %641 = phi i1 [ %629, %627 ], [ %617, %615 ]
  %642 = phi i32 [ %630, %627 ], [ %618, %615 ]
  %643 = phi i32 [ %631, %627 ], [ %619, %615 ]
  %644 = phi i32 [ %632, %627 ], [ %620, %615 ]
  %645 = phi i32 [ %633, %627 ], [ %621, %615 ]
  %646 = phi i32 [ %634, %627 ], [ %622, %615 ]
  %647 = phi i32 [ %635, %627 ], [ %623, %615 ]
  %648 = phi i32 [ %636, %627 ], [ %624, %615 ]
  %649 = phi i32 [ %637, %627 ], [ %625, %615 ]
  %650 = phi i32 [ %638, %627 ], [ %626, %615 ]
  br label %651

651:                                              ; preds = %639, %600
  %652 = phi i1 [ %641, %639 ], [ %601, %600 ]
  br i1 %652, label %653, label %703

653:                                              ; preds = %676, %651
  store float %465, float* %596, align 4, !tbaa !13
  %654 = icmp sgt i32 %584, 0
  %655 = select i1 %654, i32 %584, i32 0
  %656 = zext i32 %655 to i64
  %657 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %656
  %658 = srem i32 %56, 2
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %697

660:                                              ; preds = %653
  %661 = sdiv i32 98, 93
  %662 = load i8, i8* %657, align 1, !tbaa !10
  %663 = sdiv i32 0, 74
  %664 = getelementptr inbounds i8, i8* %4, i64 %595
  %665 = mul i32 3, 0
  store i8 %662, i8* %664, align 1, !tbaa !10
  %666 = srem i32 %594, 2
  %667 = icmp eq i32 %666, 0
  %668 = and i32 %658, 1
  %669 = icmp eq i32 %668, 0
  %670 = mul i32 %658, %658
  %671 = add i32 %670, %658
  %672 = mul i32 %671, 3
  %673 = srem i32 %672, 2
  %674 = icmp eq i32 %673, 0
  %675 = or i1 %669, %674
  br i1 %675, label %683, label %676

676:                                              ; preds = %660
  %677 = mul i32 97, 82
  %678 = add i32 6, 63
  %679 = add i32 23, 91
  %680 = add i32 52, 63
  %681 = mul i32 87, 111
  %682 = mul i32 72, 24
  br i1 %675, label %690, label %653

683:                                              ; preds = %660
  %684 = mul i32 97, 82
  %685 = sub i32 0, -69
  %686 = sub i32 0, -114
  %687 = add i32 52, 63
  %688 = mul i32 87, 111
  %689 = mul i32 72, 24
  br label %690

690:                                              ; preds = %676, %683
  %691 = phi i32 [ %684, %683 ], [ %677, %676 ]
  %692 = phi i32 [ %685, %683 ], [ %678, %676 ]
  %693 = phi i32 [ %686, %683 ], [ %679, %676 ]
  %694 = phi i32 [ %687, %683 ], [ %680, %676 ]
  %695 = phi i32 [ %688, %683 ], [ %681, %676 ]
  %696 = phi i32 [ %689, %683 ], [ %682, %676 ]
  br label %700

697:                                              ; preds = %653
  %698 = load i8, i8* %657, align 1, !tbaa !10
  %699 = getelementptr inbounds i8, i8* %4, i64 %595
  store i8 %698, i8* %699, align 1, !tbaa !10
  br label %700

700:                                              ; preds = %697, %690
  %701 = phi i8 [ %698, %697 ], [ %662, %690 ]
  %702 = phi i8* [ %699, %697 ], [ %664, %690 ]
  br label %703

703:                                              ; preds = %737, %700, %651, %563
  %704 = fadd double %115, 7.000000e-02
  %705 = srem i32 %473, 2
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %707, label %711

707:                                              ; preds = %703
  %708 = fptrunc double %704 to float
  %709 = fpext float %708 to double
  %710 = fcmp olt double %709, 6.280000e+00
  br label %749

711:                                              ; preds = %703
  %712 = sub i32 69, 24
  %713 = fptrunc double %704 to float
  %714 = sdiv i32 16, 125
  %715 = fpext float %713 to double
  %716 = mul i32 79, 1
  %717 = srem i32 %56, 2
  %718 = icmp eq i32 %717, 0
  %719 = mul i32 %57, 2
  %720 = mul i32 %57, 2
  %721 = add i32 2, %720
  %722 = mul i32 %719, %721
  %723 = srem i32 %722, 4
  %724 = icmp eq i32 %723, 0
  %725 = mul i32 %57, %57
  %726 = mul i32 %725, %57
  %727 = add i32 %726, %57
  %728 = srem i32 %727, 2
  %729 = icmp eq i32 %728, 0
  %730 = and i1 %724, %729
  br i1 %730, label %731, label %737

731:                                              ; preds = %711
  %732 = fcmp olt double %715, 6.280000e+00
  %733 = sub i32 84, 105
  %734 = mul i32 59, 38
  %735 = sub i32 56, 73
  %736 = sdiv i32 63, 108
  br label %743

737:                                              ; preds = %711
  %738 = fcmp olt double %715, 6.280000e+00
  %739 = add i32 271339913, -271339934
  %740 = mul i32 59, 38
  %741 = sub i32 923622740, 923622757
  %742 = sdiv i32 63, 108
  br i1 %730, label %743, label %703

743:                                              ; preds = %737, %731
  %744 = phi i1 [ %738, %737 ], [ %732, %731 ]
  %745 = phi i32 [ %739, %737 ], [ %733, %731 ]
  %746 = phi i32 [ %740, %737 ], [ %734, %731 ]
  %747 = phi i32 [ %741, %737 ], [ %735, %731 ]
  %748 = phi i32 [ %742, %737 ], [ %736, %731 ]
  br label %749

749:                                              ; preds = %743, %707
  %750 = phi float [ %713, %743 ], [ %708, %707 ]
  %751 = phi double [ %715, %743 ], [ %709, %707 ]
  %752 = phi i1 [ %744, %743 ], [ %710, %707 ]
  br i1 %752, label %114, label %62, !llvm.loop !18

753:                                              ; preds = %772, %1222
  %754 = srem i64 %9, 2
  %755 = icmp eq i64 %754, 0
  br i1 %755, label %756, label %790

756:                                              ; preds = %753
  %757 = sub i32 98, 97
  %758 = srem i32 %148, 2
  %759 = icmp eq i32 %758, 0
  %760 = mul i32 %57, 2
  %761 = mul i32 %57, 2
  %762 = add i32 2, %761
  %763 = mul i32 %760, %762
  %764 = srem i32 %763, 4
  %765 = icmp eq i32 %764, 0
  %766 = mul i32 %57, %57
  %767 = mul i32 %766, %57
  %768 = add i32 %767, %57
  %769 = srem i32 %768, 2
  %770 = icmp eq i32 %769, 0
  %771 = and i1 %765, %770
  br i1 %771, label %778, label %772

772:                                              ; preds = %756
  %773 = mul i32 2, 117
  %774 = add i32 96, 34
  %775 = sub i32 70, 93
  %776 = sdiv i32 40, 18
  %777 = add i32 86, 13
  br i1 %771, label %784, label %753

778:                                              ; preds = %756
  %779 = mul i32 2, 117
  %780 = add i32 32, 98
  %781 = add i32 70, -93
  %782 = sdiv i32 40, 18
  %783 = add i32 91, 8
  br label %784

784:                                              ; preds = %772, %778
  %785 = phi i32 [ %779, %778 ], [ %773, %772 ]
  %786 = phi i32 [ %780, %778 ], [ %774, %772 ]
  %787 = phi i32 [ %781, %778 ], [ %775, %772 ]
  %788 = phi i32 [ %782, %778 ], [ %776, %772 ]
  %789 = phi i32 [ %783, %778 ], [ %777, %772 ]
  br label %791

790:                                              ; preds = %753
  br label %791

791:                                              ; preds = %790, %784
  ret void

792:                                              ; preds = %932, %1222, %107
  %793 = phi double [ 0.000000e+00, %107 ], [ %1223, %1222 ], [ 0.000000e+00, %932 ]
  %794 = phi i32 [ 0, %107 ], [ %796, %1222 ], [ 0, %932 ]
  %795 = phi float [ 0.000000e+00, %107 ], [ %1177, %1222 ], [ 0.000000e+00, %932 ]
  %796 = add nuw nsw i32 %794, 1
  %797 = sitofp i32 %794 to float
  %798 = fadd float %108, %797
  %799 = call fastcc float @_ZL3cosf(float %795) #9
  %800 = fcmp une float %798, 0.000000e+00
  %801 = fmul float %798, 2.000000e+00
  %802 = fmul float %799, 2.000000e+00
  %803 = select i1 %800, float %801, float %798
  %804 = select i1 %800, float %799, float %802
  %805 = call fastcc float @_ZL3sinf(float %795) #9
  %806 = fmul float %805, 2.000000e+00
  %807 = select i1 %110, float %805, float %806
  %808 = fadd float %804, %12
  %809 = fmul float %803, %808
  %810 = fmul float %113, %809
  %811 = fmul float %112, %807
  %812 = srem i32 %5, 2
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %863

814:                                              ; preds = %792
  %815 = fsub float %810, %811
  %816 = fcmp une float %808, 0.000000e+00
  %817 = fmul float %815, 2.000000e+00
  %818 = fmul float %808, 2.000000e+00
  %819 = select i1 %816, float %808, float %818
  %820 = select i1 %816, float %817, float %815
  %821 = fmul float %803, %819
  %822 = fmul float %112, %821
  %823 = fmul float %113, %807
  %824 = fadd float %823, %822
  %825 = fadd float %824, 5.000000e+00
  %826 = fdiv float 1.000000e+00, %825
  %827 = fmul float %826, 3.000000e+01
  %828 = fmul float %59, %819
  %829 = fmul float %60, %828
  %830 = fmul float %61, %820
  %831 = fadd float %829, %830
  %832 = fmul float %831, %827
  %833 = fadd float %832, %55
  %834 = fptosi float %833 to i32
  %835 = fmul float %826, 1.500000e+01
  %836 = fmul float %828, %61
  %837 = fmul float %60, %820
  %838 = fsub float %836, %837
  %839 = fmul float %838, %835
  %840 = fadd float %839, %58
  %841 = fptosi float %840 to i32
  %842 = fmul float %803, %804
  %843 = fmul float %842, %113
  %844 = fsub float %811, %843
  %845 = fmul float %60, %844
  %846 = fmul float %842, %112
  %847 = fsub float %845, %846
  %848 = fsub float %847, %823
  %849 = fmul float %804, %59
  %850 = fmul float %849, %61
  %851 = fsub float %848, %850
  %852 = fmul float %851, 8.000000e+00
  %853 = fptosi float %852 to i32
  %854 = icmp slt i32 %841, %5
  %855 = icmp sgt i32 %841, 0
  %856 = xor i1 %855, true
  %857 = xor i1 %854, %856
  %858 = and i1 %857, %854
  %859 = icmp sgt i32 %834, 0
  %860 = select i1 %858, i1 %859, i1 false
  %861 = icmp slt i32 %834, %6
  %862 = select i1 %860, i1 %861, i1 false
  br label %1016

863:                                              ; preds = %792
  %864 = sub i32 104, 113
  %865 = fsub float %810, %811
  %866 = sub i32 44, 5
  %867 = fcmp une float %808, 0.000000e+00
  %868 = add i32 77, 91
  %869 = fmul float %865, 2.000000e+00
  %870 = sdiv i32 2, 43
  %871 = fmul float %808, 2.000000e+00
  %872 = sub i32 17, 20
  %873 = select i1 %867, float %808, float %871
  %874 = mul i32 24, 112
  %875 = select i1 %867, float %869, float %865
  %876 = sub i32 112, 62
  %877 = fmul float %803, %873
  %878 = mul i32 75, 20
  %879 = srem i64 %9, 2
  %880 = icmp eq i64 %879, 0
  %881 = mul i32 %584, %584
  %882 = add i32 %881, %584
  %883 = mul i32 %882, 3
  %884 = srem i32 %883, 2
  %885 = icmp eq i32 %884, 0
  %886 = mul i32 %584, %584
  %887 = add i32 %886, %584
  %888 = srem i32 %887, 2
  %889 = icmp eq i32 %888, 0
  %890 = and i1 %885, %889
  br i1 %890, label %891, label %932

891:                                              ; preds = %863
  %892 = fmul float %112, %877
  %893 = mul i32 9, 50
  %894 = fmul float %113, %807
  %895 = fadd float %894, %892
  %896 = fadd float %895, 5.000000e+00
  %897 = fdiv float 1.000000e+00, %896
  %898 = fmul float %897, 3.000000e+01
  %899 = fmul float %59, %873
  %900 = fmul float %60, %899
  %901 = fmul float %61, %875
  %902 = fadd float %900, %901
  %903 = fmul float %902, %898
  %904 = fadd float %903, %55
  %905 = fptosi float %904 to i32
  %906 = fmul float %897, 1.500000e+01
  %907 = fmul float %899, %61
  %908 = fmul float %60, %875
  %909 = fsub float %907, %908
  %910 = fmul float %909, %906
  %911 = fadd float %910, %58
  %912 = fptosi float %911 to i32
  %913 = fmul float %803, %804
  %914 = fmul float %913, %113
  %915 = fsub float %811, %914
  %916 = fmul float %60, %915
  %917 = fmul float %913, %112
  %918 = fsub float %916, %917
  %919 = fsub float %918, %894
  %920 = fmul float %804, %59
  %921 = fmul float %920, %61
  %922 = fsub float %919, %921
  %923 = fmul float %922, 8.000000e+00
  %924 = fptosi float %923 to i32
  %925 = icmp slt i32 %912, %5
  %926 = icmp sgt i32 %912, 0
  %927 = and i1 %925, %926
  %928 = icmp sgt i32 %905, 0
  %929 = select i1 %927, i1 %928, i1 false
  %930 = icmp slt i32 %905, %6
  %931 = select i1 %929, i1 %930, i1 false
  br label %975

932:                                              ; preds = %863
  %933 = fmul float %112, %877
  %934 = mul i32 9, 50
  %935 = fmul float %113, %807
  %936 = fadd float %935, %933
  %937 = fadd float %936, 5.000000e+00
  %938 = fdiv float 1.000000e+00, %937
  %939 = fmul float %938, 3.000000e+01
  %940 = fmul float %59, %873
  %941 = fmul float %60, %940
  %942 = fmul float %61, %875
  %943 = fadd float %941, %942
  %944 = fmul float %943, %939
  %945 = fadd float %944, %55
  %946 = fptosi float %945 to i32
  %947 = fmul float %938, 1.500000e+01
  %948 = fmul float %940, %61
  %949 = fmul float %60, %875
  %950 = fsub float %948, %949
  %951 = fmul float %950, %947
  %952 = fadd float %951, %58
  %953 = fptosi float %952 to i32
  %954 = fmul float %803, %804
  %955 = fmul float %954, %113
  %956 = fsub float %811, %955
  %957 = fmul float %60, %956
  %958 = fmul float %954, %112
  %959 = fsub float %957, %958
  %960 = fsub float %959, %935
  %961 = fmul float %804, %59
  %962 = fmul float %961, %61
  %963 = fsub float %960, %962
  %964 = fmul float %963, 8.000000e+00
  %965 = fptosi float %964 to i32
  %966 = icmp slt i32 %953, %5
  %967 = icmp sgt i32 %953, 0
  %968 = xor i1 %967, true
  %969 = xor i1 %966, %968
  %970 = and i1 %969, %966
  %971 = icmp sgt i32 %946, 0
  %972 = select i1 %970, i1 %971, i1 false
  %973 = icmp slt i32 %946, %6
  %974 = select i1 %972, i1 %973, i1 false
  br i1 %890, label %975, label %792

975:                                              ; preds = %932, %891
  %976 = phi float [ %933, %932 ], [ %892, %891 ]
  %977 = phi i32 [ %934, %932 ], [ %893, %891 ]
  %978 = phi float [ %935, %932 ], [ %894, %891 ]
  %979 = phi float [ %936, %932 ], [ %895, %891 ]
  %980 = phi float [ %937, %932 ], [ %896, %891 ]
  %981 = phi float [ %938, %932 ], [ %897, %891 ]
  %982 = phi float [ %939, %932 ], [ %898, %891 ]
  %983 = phi float [ %940, %932 ], [ %899, %891 ]
  %984 = phi float [ %941, %932 ], [ %900, %891 ]
  %985 = phi float [ %942, %932 ], [ %901, %891 ]
  %986 = phi float [ %943, %932 ], [ %902, %891 ]
  %987 = phi float [ %944, %932 ], [ %903, %891 ]
  %988 = phi float [ %945, %932 ], [ %904, %891 ]
  %989 = phi i32 [ %946, %932 ], [ %905, %891 ]
  %990 = phi float [ %947, %932 ], [ %906, %891 ]
  %991 = phi float [ %948, %932 ], [ %907, %891 ]
  %992 = phi float [ %949, %932 ], [ %908, %891 ]
  %993 = phi float [ %950, %932 ], [ %909, %891 ]
  %994 = phi float [ %951, %932 ], [ %910, %891 ]
  %995 = phi float [ %952, %932 ], [ %911, %891 ]
  %996 = phi i32 [ %953, %932 ], [ %912, %891 ]
  %997 = phi float [ %954, %932 ], [ %913, %891 ]
  %998 = phi float [ %955, %932 ], [ %914, %891 ]
  %999 = phi float [ %956, %932 ], [ %915, %891 ]
  %1000 = phi float [ %957, %932 ], [ %916, %891 ]
  %1001 = phi float [ %958, %932 ], [ %917, %891 ]
  %1002 = phi float [ %959, %932 ], [ %918, %891 ]
  %1003 = phi float [ %960, %932 ], [ %919, %891 ]
  %1004 = phi float [ %961, %932 ], [ %920, %891 ]
  %1005 = phi float [ %962, %932 ], [ %921, %891 ]
  %1006 = phi float [ %963, %932 ], [ %922, %891 ]
  %1007 = phi float [ %964, %932 ], [ %923, %891 ]
  %1008 = phi i32 [ %965, %932 ], [ %924, %891 ]
  %1009 = phi i1 [ %966, %932 ], [ %925, %891 ]
  %1010 = phi i1 [ %967, %932 ], [ %926, %891 ]
  %1011 = phi i1 [ %970, %932 ], [ %927, %891 ]
  %1012 = phi i1 [ %971, %932 ], [ %928, %891 ]
  %1013 = phi i1 [ %972, %932 ], [ %929, %891 ]
  %1014 = phi i1 [ %973, %932 ], [ %930, %891 ]
  %1015 = phi i1 [ %974, %932 ], [ %931, %891 ]
  br label %1016

1016:                                             ; preds = %975, %814
  %1017 = phi float [ %865, %975 ], [ %815, %814 ]
  %1018 = phi i1 [ %867, %975 ], [ %816, %814 ]
  %1019 = phi float [ %869, %975 ], [ %817, %814 ]
  %1020 = phi float [ %871, %975 ], [ %818, %814 ]
  %1021 = phi float [ %873, %975 ], [ %819, %814 ]
  %1022 = phi float [ %875, %975 ], [ %820, %814 ]
  %1023 = phi float [ %877, %975 ], [ %821, %814 ]
  %1024 = phi float [ %976, %975 ], [ %822, %814 ]
  %1025 = phi float [ %978, %975 ], [ %823, %814 ]
  %1026 = phi float [ %979, %975 ], [ %824, %814 ]
  %1027 = phi float [ %980, %975 ], [ %825, %814 ]
  %1028 = phi float [ %981, %975 ], [ %826, %814 ]
  %1029 = phi float [ %982, %975 ], [ %827, %814 ]
  %1030 = phi float [ %983, %975 ], [ %828, %814 ]
  %1031 = phi float [ %984, %975 ], [ %829, %814 ]
  %1032 = phi float [ %985, %975 ], [ %830, %814 ]
  %1033 = phi float [ %986, %975 ], [ %831, %814 ]
  %1034 = phi float [ %987, %975 ], [ %832, %814 ]
  %1035 = phi float [ %988, %975 ], [ %833, %814 ]
  %1036 = phi i32 [ %989, %975 ], [ %834, %814 ]
  %1037 = phi float [ %990, %975 ], [ %835, %814 ]
  %1038 = phi float [ %991, %975 ], [ %836, %814 ]
  %1039 = phi float [ %992, %975 ], [ %837, %814 ]
  %1040 = phi float [ %993, %975 ], [ %838, %814 ]
  %1041 = phi float [ %994, %975 ], [ %839, %814 ]
  %1042 = phi float [ %995, %975 ], [ %840, %814 ]
  %1043 = phi i32 [ %996, %975 ], [ %841, %814 ]
  %1044 = phi float [ %997, %975 ], [ %842, %814 ]
  %1045 = phi float [ %998, %975 ], [ %843, %814 ]
  %1046 = phi float [ %999, %975 ], [ %844, %814 ]
  %1047 = phi float [ %1000, %975 ], [ %845, %814 ]
  %1048 = phi float [ %1001, %975 ], [ %846, %814 ]
  %1049 = phi float [ %1002, %975 ], [ %847, %814 ]
  %1050 = phi float [ %1003, %975 ], [ %848, %814 ]
  %1051 = phi float [ %1004, %975 ], [ %849, %814 ]
  %1052 = phi float [ %1005, %975 ], [ %850, %814 ]
  %1053 = phi float [ %1006, %975 ], [ %851, %814 ]
  %1054 = phi float [ %1007, %975 ], [ %852, %814 ]
  %1055 = phi i32 [ %1008, %975 ], [ %853, %814 ]
  %1056 = phi i1 [ %1009, %975 ], [ %854, %814 ]
  %1057 = phi i1 [ %1010, %975 ], [ %855, %814 ]
  %1058 = phi i1 [ %1011, %975 ], [ %858, %814 ]
  %1059 = phi i1 [ %1012, %975 ], [ %859, %814 ]
  %1060 = phi i1 [ %1013, %975 ], [ %860, %814 ]
  %1061 = phi i1 [ %1014, %975 ], [ %861, %814 ]
  %1062 = phi i1 [ %1015, %975 ], [ %862, %814 ]
  br i1 %1062, label %1063, label %1175

1063:                                             ; preds = %1097, %1016
  %1064 = mul nsw i32 %1043, %6
  %1065 = add nsw i32 %1064, %1036
  %1066 = srem i32 %1055, 2
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1068, label %1073

1068:                                             ; preds = %1063
  %1069 = sext i32 %1065 to i64
  %1070 = getelementptr inbounds float, float* %3, i64 %1069
  %1071 = load float, float* %1070, align 4, !tbaa !13
  %1072 = fcmp ogt float %1028, %1071
  br label %1121

1073:                                             ; preds = %1063
  %1074 = sdiv i32 66, 86
  %1075 = sext i32 %1065 to i64
  %1076 = srem i64 %9, 2
  %1077 = icmp eq i64 %1076, 0
  %1078 = and i32 %705, 1
  %1079 = icmp eq i32 %1078, 1
  %1080 = mul i32 %705, %705
  %1081 = add i32 %1080, %705
  %1082 = srem i32 %1081, 2
  %1083 = icmp eq i32 %1082, 0
  %1084 = or i1 %1079, %1083
  br i1 %1084, label %1085, label %1097

1085:                                             ; preds = %1073
  %1086 = add i32 102, 21
  %1087 = getelementptr inbounds float, float* %3, i64 %1075
  %1088 = mul i32 69, 107
  %1089 = load float, float* %1087, align 4, !tbaa !13
  %1090 = mul i32 112, 67
  %1091 = fcmp ogt float %1028, %1089
  %1092 = sub i32 117, 5
  %1093 = sub i32 79, 123
  %1094 = mul i32 57, 95
  %1095 = sub i32 49, 102
  %1096 = sdiv i32 59, 76
  br label %1109

1097:                                             ; preds = %1073
  %1098 = sub i32 434503098, 434502975
  %1099 = getelementptr inbounds float, float* %3, i64 %1075
  %1100 = mul i32 69, 107
  %1101 = load float, float* %1099, align 4, !tbaa !13
  %1102 = mul i32 112, 67
  %1103 = fcmp ogt float %1028, %1101
  %1104 = add i32 117, -5
  %1105 = sub i32 -627538796, -627538752
  %1106 = mul i32 57, 95
  %1107 = add i32 49, -102
  %1108 = sdiv i32 59, 76
  br i1 %1084, label %1109, label %1063

1109:                                             ; preds = %1097, %1085
  %1110 = phi i32 [ %1098, %1097 ], [ %1086, %1085 ]
  %1111 = phi float* [ %1099, %1097 ], [ %1087, %1085 ]
  %1112 = phi i32 [ %1100, %1097 ], [ %1088, %1085 ]
  %1113 = phi float [ %1101, %1097 ], [ %1089, %1085 ]
  %1114 = phi i32 [ %1102, %1097 ], [ %1090, %1085 ]
  %1115 = phi i1 [ %1103, %1097 ], [ %1091, %1085 ]
  %1116 = phi i32 [ %1104, %1097 ], [ %1092, %1085 ]
  %1117 = phi i32 [ %1105, %1097 ], [ %1093, %1085 ]
  %1118 = phi i32 [ %1106, %1097 ], [ %1094, %1085 ]
  %1119 = phi i32 [ %1107, %1097 ], [ %1095, %1085 ]
  %1120 = phi i32 [ %1108, %1097 ], [ %1096, %1085 ]
  br label %1121

1121:                                             ; preds = %1109, %1068
  %1122 = phi i64 [ %1075, %1109 ], [ %1069, %1068 ]
  %1123 = phi float* [ %1111, %1109 ], [ %1070, %1068 ]
  %1124 = phi float [ %1113, %1109 ], [ %1071, %1068 ]
  %1125 = phi i1 [ %1115, %1109 ], [ %1072, %1068 ]
  br i1 %1125, label %1126, label %1175

1126:                                             ; preds = %1155, %1121
  store float %1028, float* %1123, align 4, !tbaa !13
  %1127 = icmp sgt i32 %1055, 0
  %1128 = select i1 %1127, i32 %1055, i32 0
  %1129 = srem i32 %57, 2
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1131, label %1136

1131:                                             ; preds = %1126
  %1132 = zext i32 %1128 to i64
  %1133 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1132
  %1134 = load i8, i8* %1133, align 1, !tbaa !10
  %1135 = getelementptr inbounds i8, i8* %4, i64 %1122
  store i8 %1134, i8* %1135, align 1, !tbaa !10
  br label %1170

1136:                                             ; preds = %1126
  %1137 = sub i32 111, 21
  %1138 = zext i32 %1128 to i64
  %1139 = add i32 82, 21
  %1140 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1138
  %1141 = sdiv i32 73, 19
  %1142 = load i8, i8* %1140, align 1, !tbaa !10
  %1143 = add i32 30, 57
  %1144 = getelementptr inbounds i8, i8* %4, i64 %1122
  %1145 = add i32 101, 23
  store i8 %1142, i8* %1144, align 1, !tbaa !10
  %1146 = srem i32 %2, 2
  %1147 = icmp eq i32 %1146, 0
  %1148 = and i32 %1128, 1
  %1149 = icmp eq i32 %1148, 1
  %1150 = mul i32 %1128, %1128
  %1151 = add i32 %1150, %1128
  %1152 = srem i32 %1151, 2
  %1153 = icmp eq i32 %1152, 0
  %1154 = or i1 %1149, %1153
  br i1 %1154, label %1160, label %1155

1155:                                             ; preds = %1136
  %1156 = mul i32 51, 15
  %1157 = sub i32 93, 109
  %1158 = sub i32 61, 20
  %1159 = add i32 74, 124
  br i1 %1154, label %1165, label %1126

1160:                                             ; preds = %1136
  %1161 = mul i32 51, 15
  %1162 = add i32 1780465774, -1780465790
  %1163 = add i32 -1857187649, 1857187690
  %1164 = sub i32 74, -124
  br label %1165

1165:                                             ; preds = %1155, %1160
  %1166 = phi i32 [ %1161, %1160 ], [ %1156, %1155 ]
  %1167 = phi i32 [ %1162, %1160 ], [ %1157, %1155 ]
  %1168 = phi i32 [ %1163, %1160 ], [ %1158, %1155 ]
  %1169 = phi i32 [ %1164, %1160 ], [ %1159, %1155 ]
  br label %1170

1170:                                             ; preds = %1165, %1131
  %1171 = phi i64 [ %1138, %1165 ], [ %1132, %1131 ]
  %1172 = phi i8* [ %1140, %1165 ], [ %1133, %1131 ]
  %1173 = phi i8 [ %1142, %1165 ], [ %1134, %1131 ]
  %1174 = phi i8* [ %1144, %1165 ], [ %1135, %1131 ]
  br label %1175

1175:                                             ; preds = %1210, %1170, %1121, %1016
  %1176 = fadd double %793, 7.000000e-02
  %1177 = fptrunc double %1176 to float
  %1178 = srem i32 %5, 2
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1180, label %1183

1180:                                             ; preds = %1175
  %1181 = fpext float %1177 to double
  %1182 = icmp eq i32 %796, 90
  br label %1222

1183:                                             ; preds = %1175
  %1184 = sub i32 122, 95
  %1185 = fpext float %1177 to double
  %1186 = add i32 39, 119
  %1187 = icmp eq i32 %796, 90
  %1188 = sdiv i32 33, 114
  %1189 = sdiv i32 25, 14
  %1190 = add i32 84, 90
  %1191 = srem i32 %5, 2
  %1192 = icmp eq i32 %1191, 0
  %1193 = mul i32 %63, 2
  %1194 = mul i32 %63, 2
  %1195 = add i32 2, %1194
  %1196 = mul i32 %1193, %1195
  %1197 = srem i32 %1196, 4
  %1198 = icmp eq i32 %1197, 0
  %1199 = mul i32 %63, %63
  %1200 = add i32 %1199, %63
  %1201 = srem i32 %1200, 2
  %1202 = icmp eq i32 %1201, 0
  %1203 = and i1 %1198, %1202
  br i1 %1203, label %1204, label %1210

1204:                                             ; preds = %1183
  %1205 = sdiv i32 26, 73
  %1206 = add i32 113, 88
  %1207 = mul i32 80, 13
  %1208 = mul i32 85, 99
  %1209 = sub i32 0, 106
  br label %1216

1210:                                             ; preds = %1183
  %1211 = sdiv i32 26, 73
  %1212 = sub i32 0, -201
  %1213 = mul i32 80, 13
  %1214 = mul i32 85, 99
  %1215 = add i32 1268319527, -1268319633
  br i1 %1203, label %1216, label %1175

1216:                                             ; preds = %1210, %1204
  %1217 = phi i32 [ %1211, %1210 ], [ %1205, %1204 ]
  %1218 = phi i32 [ %1212, %1210 ], [ %1206, %1204 ]
  %1219 = phi i32 [ %1213, %1210 ], [ %1207, %1204 ]
  %1220 = phi i32 [ %1214, %1210 ], [ %1208, %1204 ]
  %1221 = phi i32 [ %1215, %1210 ], [ %1209, %1204 ]
  br label %1222

1222:                                             ; preds = %1216, %1180
  %1223 = phi double [ %1185, %1216 ], [ %1181, %1180 ]
  %1224 = phi i1 [ %1187, %1216 ], [ %1182, %1180 ]
  br i1 %1224, label %753, label %792, !llvm.loop !19
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

11:                                               ; preds = %30, %67, %0
  %12 = phi i32 [ 5, %0 ], [ %70, %67 ], [ 0, %30 ]
  %13 = srem i32 %10, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %11
  %16 = add i32 95, 76
  %17 = load float, float* %1, align 4, !tbaa !13
  %18 = sub i32 82, 126
  %19 = load float, float* %2, align 4, !tbaa !13
  %20 = srem i32 %12, 2
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %13, 1
  %23 = icmp eq i32 %22, 0
  %24 = mul i32 %13, %13
  %25 = add i32 %24, %13
  %26 = mul i32 %25, 3
  %27 = srem i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %23, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %15
  %31 = sub i32 85, 33
  call void @_Z6renderffiPfPcii(float %17, float %19, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  %32 = sdiv i32 55, 26
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %33 = mul i32 23, 3
  %34 = sub i32 0, %12
  %35 = sdiv i32 126, 64
  %36 = add i32 %34, -1
  %37 = sdiv i32 41, 57
  %38 = sub i32 0, %36
  %39 = icmp eq i32 %38, 10
  br i1 %29, label %52, label %11

40:                                               ; preds = %15
  %41 = add i32 85, -33
  call void @_Z6renderffiPfPcii(float %17, float %19, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  %42 = sdiv i32 55, 26
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %43 = mul i32 23, 3
  %44 = sub i32 -380465846, %12
  %45 = add i32 %44, 380465846
  %46 = sdiv i32 126, 64
  %47 = sub i32 %45, 1
  %48 = sdiv i32 41, 57
  %49 = sub i32 0, %47
  %50 = add i32 0, %49
  %51 = icmp eq i32 %50, 10
  br label %52

52:                                               ; preds = %30, %40
  %53 = phi i32 [ %41, %40 ], [ %31, %30 ]
  %54 = phi i32 [ %42, %40 ], [ %32, %30 ]
  %55 = phi i32 [ %43, %40 ], [ %33, %30 ]
  %56 = phi i32 [ %45, %40 ], [ %34, %30 ]
  %57 = phi i32 [ %46, %40 ], [ %35, %30 ]
  %58 = phi i32 [ %47, %40 ], [ %36, %30 ]
  %59 = phi i32 [ %48, %40 ], [ %37, %30 ]
  %60 = phi i32 [ %50, %40 ], [ %38, %30 ]
  %61 = phi i1 [ %51, %40 ], [ %39, %30 ]
  br label %67

62:                                               ; preds = %11
  %63 = load float, float* %1, align 4, !tbaa !13
  %64 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %63, float %64, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %65 = add nuw nsw i32 %12, 1
  %66 = icmp eq i32 %65, 10
  br label %67

67:                                               ; preds = %62, %52
  %68 = phi float [ %63, %62 ], [ %17, %52 ]
  %69 = phi float [ %64, %62 ], [ %19, %52 ]
  %70 = phi i32 [ %65, %62 ], [ %60, %52 ]
  %71 = phi i1 [ %66, %62 ], [ %61, %52 ]
  br i1 %71, label %100, label %11, !llvm.loop !20

72:                                               ; preds = %95, %179
  %73 = srem i64 %186, 2
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = mul i32 105, 66
  call void @llvm.stackrestore(i8* %5)
  %77 = sub i32 104, 71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %78 = add i32 42, 113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %79 = add i32 79, 78
  %80 = add i32 62, 46
  %81 = add i32 23, 53
  %82 = srem i32 %10, 2
  %83 = icmp eq i32 %82, 0
  %84 = mul i32 %10, 2
  %85 = mul i32 %10, 2
  %86 = add i32 2, %85
  %87 = mul i32 %84, %86
  %88 = srem i32 %87, 4
  %89 = icmp eq i32 %88, 0
  %90 = mul i32 %10, %10
  %91 = add i32 %90, %10
  %92 = srem i32 %91, 2
  %93 = icmp eq i32 %92, 0
  %94 = or i1 %89, %93
  br i1 %94, label %96, label %95

95:                                               ; preds = %75
  br i1 %94, label %97, label %72

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %95, %96
  br label %99

98:                                               ; preds = %72
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %99

99:                                               ; preds = %98, %97
  ret i32 %185

100:                                              ; preds = %126, %179, %67
  %101 = phi i64 [ %186, %179 ], [ 0, %67 ], [ 0, %126 ]
  %102 = phi i32 [ %185, %179 ], [ 0, %67 ], [ 0, %126 ]
  %103 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %101
  %104 = load i8, i8* %103, align 1, !tbaa !10
  %105 = sext i8 %104 to i32
  %106 = srem i32 %12, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %170

108:                                              ; preds = %100
  %109 = sub i32 88, 31
  %110 = and i32 %102, %105
  %111 = add i32 62, 101
  %112 = or i32 %102, %105
  %113 = sub i32 109, 4
  %114 = srem i32 %10, 2
  %115 = icmp eq i32 %114, 0
  %116 = mul i64 %101, %101
  %117 = add i64 %116, %101
  %118 = mul i64 %117, 3
  %119 = srem i64 %118, 2
  %120 = icmp eq i64 %119, 0
  %121 = mul i64 %101, %101
  %122 = add i64 %121, %101
  %123 = srem i64 %122, 2
  %124 = icmp eq i64 %123, 0
  %125 = and i1 %120, %124
  br i1 %125, label %142, label %126

126:                                              ; preds = %108
  %127 = add i32 %110, 1492127927
  %128 = add i32 %127, %112
  %129 = sub i32 %128, 1492127927
  %130 = sub i32 -1774024421, -1774024532
  %131 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %101
  %132 = add i32 53, -14
  %133 = load float, float* %131, align 4, !tbaa !13
  %134 = sub i32 0, -218
  %135 = sitofp i32 %129 to float
  %136 = add i32 -293076024, 293076012
  %137 = fadd float %133, %135
  %138 = mul i32 61, 106
  %139 = fptosi float %137 to i32
  %140 = add i64 %101, 1
  %141 = icmp eq i64 %140, 1760
  br i1 %125, label %156, label %100

142:                                              ; preds = %108
  %143 = add i32 %110, %112
  %144 = add i32 52, 59
  %145 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %101
  %146 = sub i32 53, 14
  %147 = load float, float* %145, align 4, !tbaa !13
  %148 = add i32 113, 105
  %149 = sitofp i32 %143 to float
  %150 = sub i32 87, 99
  %151 = fadd float %147, %149
  %152 = mul i32 61, 106
  %153 = fptosi float %151 to i32
  %154 = sub i64 %101, -1
  %155 = icmp eq i64 %154, 1760
  br label %156

156:                                              ; preds = %126, %142
  %157 = phi i32 [ %143, %142 ], [ %129, %126 ]
  %158 = phi i32 [ %144, %142 ], [ %130, %126 ]
  %159 = phi float* [ %145, %142 ], [ %131, %126 ]
  %160 = phi i32 [ %146, %142 ], [ %132, %126 ]
  %161 = phi float [ %147, %142 ], [ %133, %126 ]
  %162 = phi i32 [ %148, %142 ], [ %134, %126 ]
  %163 = phi float [ %149, %142 ], [ %135, %126 ]
  %164 = phi i32 [ %150, %142 ], [ %136, %126 ]
  %165 = phi float [ %151, %142 ], [ %137, %126 ]
  %166 = phi i32 [ %152, %142 ], [ %138, %126 ]
  %167 = phi i32 [ %153, %142 ], [ %139, %126 ]
  %168 = phi i64 [ %154, %142 ], [ %140, %126 ]
  %169 = phi i1 [ %155, %142 ], [ %141, %126 ]
  br label %179

170:                                              ; preds = %100
  %171 = add nsw i32 %102, %105
  %172 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %101
  %173 = load float, float* %172, align 4, !tbaa !13
  %174 = sitofp i32 %171 to float
  %175 = fadd float %173, %174
  %176 = fptosi float %175 to i32
  %177 = add nuw nsw i64 %101, 1
  %178 = icmp eq i64 %177, 1760
  br label %179

179:                                              ; preds = %170, %156
  %180 = phi i32 [ %171, %170 ], [ %157, %156 ]
  %181 = phi float* [ %172, %170 ], [ %159, %156 ]
  %182 = phi float [ %173, %170 ], [ %161, %156 ]
  %183 = phi float [ %174, %170 ], [ %163, %156 ]
  %184 = phi float [ %175, %170 ], [ %165, %156 ]
  %185 = phi i32 [ %176, %170 ], [ %167, %156 ]
  %186 = phi i64 [ %177, %170 ], [ %168, %156 ]
  %187 = phi i1 [ %178, %170 ], [ %169, %156 ]
  br i1 %187, label %72, label %100, !llvm.loop !21
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

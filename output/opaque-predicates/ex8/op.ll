; ModuleID = 'output/opaque-predicates/ex8/ex8.ll'
source_filename = "input/opaque-predicates/ex8/ex8.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = srem i32 %3, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %11

9:                                                ; preds = %4
  %10 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %10, %9 ], [ %8, %7 ]
  br label %19

13:                                               ; preds = %104
  %14 = srem i32 %24, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %18

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %16
  ret void

19:                                               ; preds = %104, %11
  %20 = phi i64 [ 0, %11 ], [ %110, %104 ]
  %21 = trunc i64 %20 to i32
  %22 = urem i32 %21, 80
  %23 = icmp eq i32 %22, 0
  %24 = add i32 %3, 1
  %25 = mul i32 3, %24
  %26 = add i32 %3, 2
  %27 = mul i32 %25, %26
  %28 = srem i32 %27, 6
  %29 = icmp eq i32 %28, 0
  %30 = mul i32 %3, %3
  %31 = add i32 %30, %3
  %32 = srem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = xor i1 %29, true
  %35 = or i1 %34, %33
  %36 = xor i1 %29, true
  %37 = sub i1 %35, %36
  %38 = srem i32 %5, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %19
  %41 = xor i1 %23, true
  %42 = and i1 %41, false
  %43 = and i1 %23, true
  %44 = or i1 %42, %43
  %45 = xor i1 %44, true
  %46 = xor i1 %37, true
  %47 = and i1 %45, %46
  %48 = add i1 %47, %37
  %49 = xor i1 %23, true
  %50 = and i1 %49, false
  %51 = and i1 %23, true
  %52 = or i1 %50, %51
  %53 = xor i1 %52, true
  %54 = sub i1 %48, false
  %55 = sub i1 %54, %53
  %56 = add i1 %55, false
  br label %62

57:                                               ; preds = %19
  %58 = xor i1 %23, true
  %59 = or i1 %58, %37
  %60 = xor i1 %23, true
  %61 = sub i1 %59, %60
  br label %62

62:                                               ; preds = %57, %40
  %63 = phi i1 [ %58, %57 ], [ %45, %40 ]
  %64 = phi i1 [ %59, %57 ], [ %48, %40 ]
  %65 = phi i1 [ %60, %57 ], [ %53, %40 ]
  %66 = phi i1 [ %61, %57 ], [ %56, %40 ]
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds i8, i8* %0, i64 %20
  %69 = srem i32 %12, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8, i8* %68, align 1, !tbaa !10
  %73 = sext i8 %72 to i32
  br label %77

74:                                               ; preds = %67
  %75 = load i8, i8* %68, align 1, !tbaa !10
  %76 = sext i8 %75 to i32
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i8 [ %75, %74 ], [ %72, %71 ]
  %79 = phi i32 [ %76, %74 ], [ %73, %71 ]
  br label %80

80:                                               ; preds = %77, %62
  %81 = phi i32 [ %79, %77 ], [ 10, %62 ]
  %82 = call i32 @putchar(i32 %81)
  %83 = load float, float* %1, align 4, !tbaa !13
  %84 = fpext float %83 to double
  %85 = fadd double %84, 4.000000e-05
  %86 = srem i32 %21, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = fptrunc double %85 to float
  store float %89, float* %1, align 4, !tbaa !13
  %90 = load float, float* %2, align 4, !tbaa !13
  %91 = fpext float %90 to double
  %92 = fadd double %91, 2.000000e-05
  %93 = fptrunc double %92 to float
  store float %93, float* %2, align 4, !tbaa !13
  %94 = add nuw nsw i64 %20, 1
  %95 = icmp eq i64 %94, 1761
  br label %104

96:                                               ; preds = %80
  %97 = fptrunc double %85 to float
  store float %97, float* %1, align 4, !tbaa !13
  %98 = load float, float* %2, align 4, !tbaa !13
  %99 = fpext float %98 to double
  %100 = fadd double %99, 2.000000e-05
  %101 = fptrunc double %100 to float
  store float %101, float* %2, align 4, !tbaa !13
  %102 = sub i64 %20, -1
  %103 = icmp eq i64 %102, 1761
  br label %104

104:                                              ; preds = %96, %88
  %105 = phi float [ %97, %96 ], [ %89, %88 ]
  %106 = phi float [ %98, %96 ], [ %90, %88 ]
  %107 = phi double [ %99, %96 ], [ %91, %88 ]
  %108 = phi double [ %100, %96 ], [ %92, %88 ]
  %109 = phi float [ %101, %96 ], [ %93, %88 ]
  %110 = phi i64 [ %102, %96 ], [ %94, %88 ]
  %111 = phi i1 [ %103, %96 ], [ %95, %88 ]
  br i1 %111, label %13, label %19, !llvm.loop !15
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
  %14 = sitofp i32 %13 to float
  %15 = sdiv i32 %5, 2
  %16 = add nsw i32 %15, 1
  %17 = sitofp i32 %16 to float
  %18 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %19 = call fastcc float @_ZL3sinf(float %0) #9
  %20 = call fastcc float @_ZL3cosf(float %0) #9
  %21 = add i32 %2, 1
  %22 = mul i32 3, %21
  %23 = add i32 %2, 2
  %24 = mul i32 %22, %23
  %25 = srem i32 %24, 6
  %26 = icmp eq i32 %25, 0
  %27 = mul i32 %2, %2
  %28 = add i32 %27, %2
  %29 = srem i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = xor i1 %26, true
  %32 = or i1 %31, %30
  %33 = xor i1 %26, true
  %34 = sub i1 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %7
  %36 = sdiv i32 41, 83
  %37 = add i32 67, 102
  %38 = add i32 122, 112
  %39 = add i32 36, 61
  %40 = sdiv i32 4, 68
  %41 = sdiv i32 62, 10
  %42 = add i32 14, 70
  %43 = add i32 41, 122
  %44 = add i32 53, 16
  br label %45

45:                                               ; preds = %7, %35
  %46 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %47 = call fastcc float @_ZL3cosf(float %1) #9
  %48 = call fastcc float @_ZL3sinf(float %1) #9
  br label %55

49:                                               ; preds = %257
  %50 = srem i32 %15, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %54

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %52
  ret void

55:                                               ; preds = %257, %45
  %56 = phi double [ 0.000000e+00, %45 ], [ %250, %257 ]
  %57 = phi float [ 0.000000e+00, %45 ], [ %249, %257 ]
  %58 = call fastcc float @_ZL3cosf(float %57) #9
  %59 = call fastcc float @_ZL3sinf(float %57) #9
  %60 = fadd float %58, %12
  %61 = fmul float %18, %60
  %62 = fmul float %61, %20
  %63 = fmul float %19, %59
  %64 = fsub float %62, %63
  %65 = fmul float %19, %61
  %66 = fmul float %59, %20
  %67 = fadd float %65, %66
  %68 = fadd float %67, 5.000000e+00
  %69 = fdiv float 1.000000e+00, %68
  %70 = fmul float %60, %46
  %71 = fmul float %69, 1.500000e+01
  %72 = fmul float %70, %48
  %73 = fmul float %64, %47
  %74 = fsub float %72, %73
  %75 = fmul float %71, %74
  %76 = fadd float %75, %17
  %77 = fptosi float %76 to i32
  %78 = fmul float %18, %58
  %79 = fmul float %78, %20
  %80 = fsub float %63, %79
  %81 = fmul float %80, %47
  %82 = fmul float %78, %19
  %83 = fsub float %81, %82
  %84 = fsub float %83, %66
  %85 = fmul float %58, %46
  %86 = fmul float %85, %48
  %87 = fsub float %84, %86
  %88 = fmul float %87, 8.000000e+00
  %89 = fmul float %69, 3.000000e+01
  %90 = fmul float %70, %47
  %91 = fmul float %64, %48
  %92 = fadd float %90, %91
  %93 = fmul float %89, %92
  %94 = fadd float %93, %14
  %95 = fptosi float %94 to i32
  %96 = srem i32 %25, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %55
  %99 = fptosi float %88 to i32
  %100 = icmp slt i32 %77, %5
  %101 = icmp sgt i32 %77, 0
  %102 = and i1 %100, %101
  %103 = icmp sgt i32 %95, 0
  %104 = select i1 %102, i1 %103, i1 false
  %105 = icmp slt i32 %95, %6
  %106 = select i1 %104, i1 %105, i1 false
  %107 = and i32 %6, 1
  %108 = icmp eq i32 %107, 1
  %109 = mul i32 %6, %6
  %110 = add i32 %109, %6
  %111 = srem i32 %110, 2
  %112 = icmp eq i32 %111, 0
  %113 = and i1 %108, %112
  %114 = xor i1 %108, %112
  %115 = or i1 %113, %114
  %116 = xor i1 %106, true
  %117 = xor i1 %115, true
  %118 = or i1 %116, %117
  %119 = xor i1 %118, true
  %120 = and i1 %119, true
  br label %174

121:                                              ; preds = %55
  %122 = fptosi float %88 to i32
  %123 = icmp slt i32 %77, %5
  %124 = icmp sgt i32 %77, 0
  %125 = xor i1 %123, true
  %126 = xor i1 %124, true
  %127 = or i1 %125, %126
  %128 = xor i1 %127, true
  %129 = and i1 %128, true
  %130 = icmp sgt i32 %95, 0
  %131 = select i1 %129, i1 %130, i1 false
  %132 = icmp slt i32 %95, %6
  %133 = select i1 %131, i1 %132, i1 false
  %134 = xor i32 %6, -1
  %135 = or i32 %134, -2
  %136 = xor i32 %135, -1
  %137 = and i32 %136, -1
  %138 = icmp eq i32 %137, 1
  %139 = mul i32 %6, %6
  %140 = sub i32 %139, 769189997
  %141 = add i32 %140, %6
  %142 = add i32 %141, 769189997
  %143 = srem i32 %142, 2
  %144 = icmp eq i32 %143, 0
  %145 = xor i1 %144, true
  %146 = xor i1 %138, %145
  %147 = and i1 %146, %138
  %148 = or i1 %138, %144
  %149 = and i1 %138, %144
  %150 = sub i1 %148, %149
  %151 = xor i1 %150, true
  %152 = and i1 %147, %151
  %153 = add i1 %152, %150
  %154 = or i1 %133, true
  %155 = and i1 %133, true
  %156 = sub i1 %154, %155
  %157 = xor i1 %153, true
  %158 = and i1 %157, false
  %159 = and i1 %153, true
  %160 = or i1 %158, %159
  %161 = xor i1 %160, true
  %162 = xor i1 %161, true
  %163 = and i1 %156, %162
  %164 = add i1 %163, %161
  %165 = xor i1 %164, true
  %166 = and i1 %165, false
  %167 = and i1 %164, true
  %168 = or i1 %166, %167
  %169 = xor i1 %168, true
  %170 = xor i1 %169, true
  %171 = or i1 %170, false
  %172 = xor i1 %171, true
  %173 = and i1 %172, true
  br label %174

174:                                              ; preds = %121, %98
  %175 = phi i32 [ %122, %121 ], [ %99, %98 ]
  %176 = phi i1 [ %123, %121 ], [ %100, %98 ]
  %177 = phi i1 [ %124, %121 ], [ %101, %98 ]
  %178 = phi i1 [ %129, %121 ], [ %102, %98 ]
  %179 = phi i1 [ %130, %121 ], [ %103, %98 ]
  %180 = phi i1 [ %131, %121 ], [ %104, %98 ]
  %181 = phi i1 [ %132, %121 ], [ %105, %98 ]
  %182 = phi i1 [ %133, %121 ], [ %106, %98 ]
  %183 = phi i32 [ %137, %121 ], [ %107, %98 ]
  %184 = phi i1 [ %138, %121 ], [ %108, %98 ]
  %185 = phi i32 [ %139, %121 ], [ %109, %98 ]
  %186 = phi i32 [ %142, %121 ], [ %110, %98 ]
  %187 = phi i32 [ %143, %121 ], [ %111, %98 ]
  %188 = phi i1 [ %144, %121 ], [ %112, %98 ]
  %189 = phi i1 [ %147, %121 ], [ %113, %98 ]
  %190 = phi i1 [ %150, %121 ], [ %114, %98 ]
  %191 = phi i1 [ %153, %121 ], [ %115, %98 ]
  %192 = phi i1 [ %156, %121 ], [ %116, %98 ]
  %193 = phi i1 [ %161, %121 ], [ %117, %98 ]
  %194 = phi i1 [ %164, %121 ], [ %118, %98 ]
  %195 = phi i1 [ %169, %121 ], [ %119, %98 ]
  %196 = phi i1 [ %173, %121 ], [ %120, %98 ]
  br i1 %196, label %197, label %247

197:                                              ; preds = %174
  %198 = mul nsw i32 %77, %6
  %199 = add nsw i32 %198, %95
  %200 = srem i32 %96, 2
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = sext i32 %199 to i64
  %204 = getelementptr inbounds float, float* %3, i64 %203
  %205 = load float, float* %204, align 4, !tbaa !13
  %206 = fcmp ogt float %69, %205
  br label %212

207:                                              ; preds = %197
  %208 = sext i32 %199 to i64
  %209 = getelementptr inbounds float, float* %3, i64 %208
  %210 = load float, float* %209, align 4, !tbaa !13
  %211 = fcmp ogt float %69, %210
  br label %212

212:                                              ; preds = %207, %202
  %213 = phi i64 [ %208, %207 ], [ %203, %202 ]
  %214 = phi float* [ %209, %207 ], [ %204, %202 ]
  %215 = phi float [ %210, %207 ], [ %205, %202 ]
  %216 = phi i1 [ %211, %207 ], [ %206, %202 ]
  br i1 %216, label %217, label %247

217:                                              ; preds = %212
  store float %69, float* %214, align 4, !tbaa !13
  %218 = add i32 %27, 1
  %219 = mul i32 3, %218
  %220 = add i32 %27, 2
  %221 = mul i32 %219, %220
  %222 = srem i32 %221, 6
  %223 = icmp eq i32 %222, 0
  %224 = mul i32 %27, %27
  %225 = add i32 %224, %27
  %226 = srem i32 %225, 2
  %227 = icmp eq i32 %226, 0
  %228 = xor i1 %227, true
  %229 = xor i1 %223, %228
  %230 = and i1 %229, %223
  br i1 %230, label %231, label %240

231:                                              ; preds = %217
  %232 = add i32 103, 78
  %233 = sdiv i32 117, 13
  %234 = mul i32 27, 27
  %235 = mul i32 34, 5
  %236 = add i32 24, 51
  %237 = sdiv i32 87, 83
  %238 = mul i32 40, 0
  %239 = sub i32 68, 55
  br label %240

240:                                              ; preds = %217, %231
  %241 = icmp sgt i32 %175, 0
  %242 = select i1 %241, i32 %175, i32 0
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %243
  %245 = load i8, i8* %244, align 1, !tbaa !10
  %246 = getelementptr inbounds i8, i8* %4, i64 %213
  store i8 %245, i8* %246, align 1, !tbaa !10
  br label %247

247:                                              ; preds = %240, %212, %174
  %248 = fadd double %56, 7.000000e-02
  %249 = fptrunc double %248 to float
  %250 = fpext float %249 to double
  %251 = srem i32 %186, 2
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = fcmp olt double %250, 6.280000e+00
  br label %257

255:                                              ; preds = %247
  %256 = fcmp olt double %250, 6.280000e+00
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i1 [ %256, %255 ], [ %254, %253 ]
  br i1 %258, label %55, label %49, !llvm.loop !18
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

11:                                               ; preds = %73, %0
  %12 = phi i32 [ 5, %0 ], [ %15, %73 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp eq i32 %15, 10
  %17 = add i32 %10, 1
  %18 = mul i32 3, %17
  %19 = srem i32 %10, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %11
  %22 = add i32 %10, -1572282847
  %23 = add i32 %22, 2
  %24 = sub i32 %23, -1572282847
  %25 = mul i32 %18, %24
  %26 = srem i32 %25, 6
  %27 = icmp eq i32 %26, 0
  %28 = mul i32 %10, %10
  %29 = sub i32 0, %10
  %30 = sub i32 %28, %29
  %31 = srem i32 %30, 2
  %32 = icmp eq i32 %31, 0
  %33 = xor i1 %27, true
  %34 = xor i1 %33, false
  %35 = and i1 %34, %32
  %36 = xor i1 %34, %32
  %37 = or i1 %35, %36
  %38 = or i1 %27, true
  %39 = and i1 %27, true
  %40 = sub i1 %38, %39
  %41 = sub i1 false, %40
  %42 = add i1 %37, %41
  %43 = xor i1 %16, true
  %44 = and i1 %43, true
  %45 = and i1 %16, false
  %46 = or i1 %44, %45
  %47 = and i1 %46, %42
  %48 = xor i1 %46, %42
  %49 = or i1 %47, %48
  %50 = or i1 %16, true
  %51 = and i1 %16, true
  %52 = sub i1 %50, %51
  %53 = sub i1 %49, true
  %54 = sub i1 %53, %52
  %55 = add i1 %54, true
  br label %73

56:                                               ; preds = %11
  %57 = add i32 %10, 2
  %58 = mul i32 %18, %57
  %59 = srem i32 %58, 6
  %60 = icmp eq i32 %59, 0
  %61 = mul i32 %10, %10
  %62 = add i32 %61, %10
  %63 = srem i32 %62, 2
  %64 = icmp eq i32 %63, 0
  %65 = xor i1 %60, true
  %66 = or i1 %65, %64
  %67 = xor i1 %60, true
  %68 = sub i1 %66, %67
  %69 = xor i1 %16, true
  %70 = or i1 %69, %68
  %71 = xor i1 %16, true
  %72 = sub i1 %70, %71
  br label %73

73:                                               ; preds = %56, %21
  %74 = phi i32 [ %57, %56 ], [ %24, %21 ]
  %75 = phi i32 [ %58, %56 ], [ %25, %21 ]
  %76 = phi i32 [ %59, %56 ], [ %26, %21 ]
  %77 = phi i1 [ %60, %56 ], [ %27, %21 ]
  %78 = phi i32 [ %61, %56 ], [ %28, %21 ]
  %79 = phi i32 [ %62, %56 ], [ %30, %21 ]
  %80 = phi i32 [ %63, %56 ], [ %31, %21 ]
  %81 = phi i1 [ %64, %56 ], [ %32, %21 ]
  %82 = phi i1 [ %65, %56 ], [ %34, %21 ]
  %83 = phi i1 [ %66, %56 ], [ %37, %21 ]
  %84 = phi i1 [ %67, %56 ], [ %40, %21 ]
  %85 = phi i1 [ %68, %56 ], [ %42, %21 ]
  %86 = phi i1 [ %69, %56 ], [ %46, %21 ]
  %87 = phi i1 [ %70, %56 ], [ %49, %21 ]
  %88 = phi i1 [ %71, %56 ], [ %52, %21 ]
  %89 = phi i1 [ %72, %56 ], [ %55, %21 ]
  br i1 %89, label %96, label %11, !llvm.loop !19

90:                                               ; preds = %159
  %91 = srem i32 %15, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %95

94:                                               ; preds = %90
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %95

95:                                               ; preds = %94, %93
  ret i32 %163

96:                                               ; preds = %159, %73
  %97 = phi i64 [ %164, %159 ], [ 0, %73 ]
  %98 = phi i32 [ %163, %159 ], [ 0, %73 ]
  %99 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %97
  %100 = load i8, i8* %99, align 1, !tbaa !10
  %101 = sext i8 %100 to i32
  %102 = add nsw i32 %98, %101
  %103 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %97
  %104 = srem i32 %17, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %141

106:                                              ; preds = %96
  %107 = load float, float* %103, align 4, !tbaa !13
  %108 = sitofp i32 %102 to float
  %109 = fadd float %107, %108
  %110 = fptosi float %109 to i32
  %111 = sub i64 %97, -1
  %112 = icmp eq i64 %111, 1760
  %113 = icmp sge i32 %15, %15
  %114 = mul i32 %15, %15
  %115 = sub i32 0, %15
  %116 = sub i32 %114, %115
  %117 = srem i32 %116, 2
  %118 = icmp eq i32 %117, 0
  %119 = xor i1 %118, true
  %120 = and i1 %119, true
  %121 = and i1 %118, false
  %122 = or i1 %120, %121
  %123 = xor i1 %113, true
  %124 = and i1 %123, %122
  %125 = xor i1 %122, true
  %126 = and i1 %113, %125
  %127 = or i1 %124, %126
  %128 = xor i1 %113, true
  %129 = xor i1 %127, %128
  %130 = and i1 %129, %127
  %131 = or i1 %130, true
  %132 = and i1 %130, true
  %133 = sub i1 %131, %132
  %134 = or i1 %112, %133
  %135 = and i1 %112, %133
  %136 = sub i1 %134, %135
  %137 = xor i1 %136, true
  %138 = or i1 %137, %112
  %139 = xor i1 %136, true
  %140 = sub i1 %138, %139
  br label %159

141:                                              ; preds = %96
  %142 = load float, float* %103, align 4, !tbaa !13
  %143 = sitofp i32 %102 to float
  %144 = fadd float %142, %143
  %145 = fptosi float %144 to i32
  %146 = add nuw nsw i64 %97, 1
  %147 = icmp eq i64 %146, 1760
  %148 = icmp sge i32 %15, %15
  %149 = mul i32 %15, %15
  %150 = add i32 %149, %15
  %151 = srem i32 %150, 2
  %152 = icmp eq i32 %151, 0
  %153 = xor i1 %152, true
  %154 = xor i1 %148, %153
  %155 = and i1 %154, %148
  %156 = xor i1 %155, true
  %157 = xor i1 %147, %156
  %158 = and i1 %157, %147
  br label %159

159:                                              ; preds = %141, %106
  %160 = phi float [ %142, %141 ], [ %107, %106 ]
  %161 = phi float [ %143, %141 ], [ %108, %106 ]
  %162 = phi float [ %144, %141 ], [ %109, %106 ]
  %163 = phi i32 [ %145, %141 ], [ %110, %106 ]
  %164 = phi i64 [ %146, %141 ], [ %111, %106 ]
  %165 = phi i1 [ %147, %141 ], [ %112, %106 ]
  %166 = phi i1 [ %148, %141 ], [ %113, %106 ]
  %167 = phi i32 [ %149, %141 ], [ %114, %106 ]
  %168 = phi i32 [ %150, %141 ], [ %116, %106 ]
  %169 = phi i32 [ %151, %141 ], [ %117, %106 ]
  %170 = phi i1 [ %152, %141 ], [ %118, %106 ]
  %171 = phi i1 [ %153, %141 ], [ %122, %106 ]
  %172 = phi i1 [ %154, %141 ], [ %127, %106 ]
  %173 = phi i1 [ %155, %141 ], [ %130, %106 ]
  %174 = phi i1 [ %156, %141 ], [ %133, %106 ]
  %175 = phi i1 [ %157, %141 ], [ %136, %106 ]
  %176 = phi i1 [ %158, %141 ], [ %140, %106 ]
  br i1 %176, label %90, label %96, !llvm.loop !20
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

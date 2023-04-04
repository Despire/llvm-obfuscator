; ModuleID = 'output/opaque-predicates/ex7/ex7.ll'
source_filename = "input/opaque-predicates/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = add i32 %3, 1
  %6 = mul i32 3, %5
  %7 = add i32 %3, 2
  %8 = mul i32 %6, %7
  %9 = srem i32 %8, 6
  %10 = icmp eq i32 %9, 0
  %11 = mul i32 %3, %3
  %12 = add i32 %11, %3
  %13 = srem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = xor i1 %10, true
  %16 = or i1 %15, %14
  %17 = xor i1 %10, true
  %18 = sub i1 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = mul i32 70, 28
  %21 = mul i32 100, 93
  %22 = sdiv i32 18, 5
  %23 = add i32 93, 100
  %24 = sdiv i32 2, 100
  %25 = add i32 105, 95
  %26 = add i32 59, 10
  %27 = sub i32 98, 99
  %28 = sdiv i32 39, 56
  br label %29

29:                                               ; preds = %4, %19
  %30 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %54

31:                                               ; preds = %173
  %32 = add i32 %12, 1
  %33 = mul i32 3, %32
  %34 = add i32 %12, 2
  %35 = mul i32 %33, %34
  %36 = srem i32 %35, 6
  %37 = icmp eq i32 %36, 0
  %38 = mul i32 %12, %12
  %39 = add i32 %38, %12
  %40 = srem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = xor i1 %37, true
  %43 = or i1 %42, %41
  %44 = xor i1 %37, true
  %45 = sub i1 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %31
  %47 = mul i32 75, 31
  %48 = sub i32 70, 52
  %49 = sub i32 82, 49
  %50 = sub i32 45, 6
  %51 = mul i32 23, 81
  %52 = add i32 82, 22
  br label %53

53:                                               ; preds = %31, %46
  ret void

54:                                               ; preds = %173, %29
  %55 = phi i64 [ 0, %29 ], [ %179, %173 ]
  %56 = trunc i64 %55 to i32
  %57 = urem i32 %56, 80
  %58 = icmp eq i32 %57, 0
  %59 = add i32 %30, 1
  %60 = mul i32 3, %59
  %61 = add i32 %30, 2
  %62 = mul i32 %60, %61
  %63 = srem i32 %62, 6
  %64 = icmp eq i32 %63, 0
  %65 = srem i32 %30, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %54
  %68 = mul i32 %30, %30
  %69 = add i32 %68, %30
  %70 = srem i32 %69, 2
  %71 = icmp eq i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %64, %72
  %74 = and i1 %73, %64
  %75 = xor i1 %58, true
  %76 = or i1 %75, %74
  %77 = xor i1 %58, true
  %78 = sub i1 %76, %77
  br label %108

79:                                               ; preds = %54
  %80 = mul i32 %30, %30
  %81 = add i32 %80, 451675096
  %82 = add i32 %81, %30
  %83 = sub i32 %82, 451675096
  %84 = srem i32 %83, 2
  %85 = icmp eq i32 %84, 0
  %86 = or i1 %85, true
  %87 = and i1 %85, true
  %88 = sub i1 %86, %87
  %89 = or i1 %64, %88
  %90 = and i1 %64, %88
  %91 = sub i1 %89, %90
  %92 = xor i1 %64, true
  %93 = xor i1 %91, %92
  %94 = and i1 %93, %91
  %95 = xor i1 %58, false
  %96 = xor i1 %95, true
  %97 = xor i1 %94, true
  %98 = and i1 %96, %97
  %99 = add i1 %98, %94
  %100 = xor i1 %58, true
  %101 = and i1 %100, true
  %102 = and i1 %58, false
  %103 = or i1 %101, %102
  %104 = xor i1 %103, false
  %105 = sub i1 %99, true
  %106 = sub i1 %105, %104
  %107 = add i1 %106, true
  br label %108

108:                                              ; preds = %79, %67
  %109 = phi i32 [ %80, %79 ], [ %68, %67 ]
  %110 = phi i32 [ %83, %79 ], [ %69, %67 ]
  %111 = phi i32 [ %84, %79 ], [ %70, %67 ]
  %112 = phi i1 [ %85, %79 ], [ %71, %67 ]
  %113 = phi i1 [ %88, %79 ], [ %72, %67 ]
  %114 = phi i1 [ %91, %79 ], [ %73, %67 ]
  %115 = phi i1 [ %94, %79 ], [ %74, %67 ]
  %116 = phi i1 [ %96, %79 ], [ %75, %67 ]
  %117 = phi i1 [ %99, %79 ], [ %76, %67 ]
  %118 = phi i1 [ %104, %79 ], [ %77, %67 ]
  %119 = phi i1 [ %107, %79 ], [ %78, %67 ]
  br i1 %119, label %135, label %120

120:                                              ; preds = %108
  %121 = srem i32 %56, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = getelementptr inbounds i8, i8* %0, i64 %55
  %125 = load i8, i8* %124, align 1, !tbaa !10
  %126 = sext i8 %125 to i32
  br label %131

127:                                              ; preds = %120
  %128 = getelementptr inbounds i8, i8* %0, i64 %55
  %129 = load i8, i8* %128, align 1, !tbaa !10
  %130 = sext i8 %129 to i32
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i8* [ %128, %127 ], [ %124, %123 ]
  %133 = phi i8 [ %129, %127 ], [ %125, %123 ]
  %134 = phi i32 [ %130, %127 ], [ %126, %123 ]
  br label %135

135:                                              ; preds = %131, %108
  %136 = phi i32 [ %134, %131 ], [ 10, %108 ]
  %137 = call i32 @putchar(i32 %136)
  %138 = load float, float* %1, align 4, !tbaa !13
  %139 = fpext float %138 to double
  %140 = fadd double %139, 4.000000e-05
  %141 = and i32 %12, 1
  %142 = icmp eq i32 %141, 0
  %143 = add i32 %12, 1
  %144 = mul i32 3, %143
  %145 = add i32 %12, 2
  %146 = mul i32 %144, %145
  %147 = srem i32 %146, 6
  %148 = icmp eq i32 %147, 0
  %149 = xor i1 %142, true
  %150 = and i1 %149, true
  %151 = and i1 %142, false
  %152 = or i1 %150, %151
  %153 = xor i1 %148, true
  %154 = and i1 %153, true
  %155 = and i1 %148, false
  %156 = or i1 %154, %155
  %157 = xor i1 %152, %156
  %158 = xor i1 %142, true
  %159 = xor i1 %148, true
  %160 = or i1 %158, %159
  %161 = xor i1 %160, true
  %162 = and i1 %161, true
  %163 = or i1 %157, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %135
  %165 = sub i32 14, 13
  %166 = add i32 95, 2
  %167 = add i32 31, 48
  %168 = add i32 4, 18
  %169 = sub i32 40, 89
  %170 = add i32 22, 27
  %171 = sub i32 119, 87
  %172 = add i32 69, 40
  br label %173

173:                                              ; preds = %135, %164
  %174 = fptrunc double %140 to float
  store float %174, float* %1, align 4, !tbaa !13
  %175 = load float, float* %2, align 4, !tbaa !13
  %176 = fpext float %175 to double
  %177 = fadd double %176, 2.000000e-05
  %178 = fptrunc double %177 to float
  store float %178, float* %2, align 4, !tbaa !13
  %179 = add nuw nsw i64 %55, 1
  %180 = icmp eq i64 %179, 1761
  br i1 %180, label %31, label %54, !llvm.loop !15
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
  %17 = add i32 %2, 1
  %18 = mul i32 3, %17
  %19 = add i32 %2, 2
  %20 = mul i32 %18, %19
  %21 = srem i32 %20, 6
  %22 = icmp eq i32 %21, 0
  %23 = mul i32 %2, %2
  %24 = add i32 %23, %2
  %25 = srem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = xor i1 %22, true
  %28 = and i1 %27, true
  %29 = and i1 %22, false
  %30 = or i1 %28, %29
  %31 = xor i1 %26, true
  %32 = and i1 %31, true
  %33 = and i1 %26, false
  %34 = or i1 %32, %33
  %35 = xor i1 %30, %34
  %36 = xor i1 %22, true
  %37 = xor i1 %26, true
  %38 = or i1 %36, %37
  %39 = xor i1 %38, true
  %40 = and i1 %39, true
  %41 = or i1 %35, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %7
  %43 = add i32 50, 120
  %44 = mul i32 122, 119
  %45 = mul i32 1, 32
  %46 = sdiv i32 7, 15
  %47 = add i32 23, 89
  %48 = sub i32 87, 42
  %49 = mul i32 0, 80
  %50 = add i32 23, 117
  %51 = mul i32 125, 79
  %52 = sub i32 40, 45
  br label %53

53:                                               ; preds = %7, %42
  %54 = sitofp i32 %16 to float
  %55 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %56 = call fastcc float @_ZL3sinf(float %0) #9
  %57 = call fastcc float @_ZL3cosf(float %0) #9
  %58 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %59 = call fastcc float @_ZL3cosf(float %1) #9
  %60 = call fastcc float @_ZL3sinf(float %1) #9
  br label %74

61:                                               ; preds = %205
  %62 = fcmp une float %56, 0.000000e+00
  %63 = srem i32 %23, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = fmul float %56, 2.000000e+00
  %67 = select i1 %62, float %66, float %56
  br label %71

68:                                               ; preds = %61
  %69 = fmul float %56, 2.000000e+00
  %70 = select i1 %62, float %69, float %56
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi float [ %69, %68 ], [ %66, %65 ]
  %73 = phi float [ %70, %68 ], [ %67, %65 ]
  br label %216

74:                                               ; preds = %205, %53
  %75 = phi double [ 0.000000e+00, %53 ], [ %208, %205 ]
  %76 = phi float [ 0.000000e+00, %53 ], [ %207, %205 ]
  %77 = call fastcc float @_ZL3cosf(float %76) #9
  %78 = call fastcc float @_ZL3sinf(float %76) #9
  %79 = fadd float %77, %12
  %80 = fmul float %55, %79
  %81 = fmul float %80, %57
  %82 = fmul float %56, %78
  %83 = fsub float %81, %82
  %84 = fmul float %56, %80
  %85 = fmul float %78, %57
  %86 = fadd float %84, %85
  %87 = fadd float %86, 5.000000e+00
  %88 = fdiv float 1.000000e+00, %87
  %89 = fmul float %88, 3.000000e+01
  %90 = fmul float %79, %58
  %91 = fmul float %90, %59
  %92 = fmul float %83, %60
  %93 = fadd float %91, %92
  %94 = fmul float %89, %93
  %95 = fadd float %94, %14
  %96 = icmp sge i32 %17, %17
  %97 = mul i32 %17, %17
  %98 = add i32 %97, %17
  %99 = srem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = xor i1 %96, true
  %102 = or i1 %101, %100
  %103 = xor i1 %96, true
  %104 = sub i1 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %74
  %106 = add i32 12, 7
  %107 = sdiv i32 68, 93
  %108 = sub i32 63, 18
  %109 = sub i32 107, 86
  %110 = sdiv i32 114, 36
  %111 = mul i32 4, 16
  %112 = add i32 115, 122
  %113 = sub i32 58, 15
  %114 = sdiv i32 123, 38
  br label %115

115:                                              ; preds = %74, %105
  %116 = fptosi float %95 to i32
  %117 = fmul float %88, 1.500000e+01
  %118 = fmul float %90, %60
  %119 = fmul float %83, %59
  %120 = fsub float %118, %119
  %121 = fmul float %117, %120
  %122 = fadd float %121, %54
  %123 = fptosi float %122 to i32
  %124 = fmul float %55, %77
  %125 = fmul float %124, %57
  %126 = fsub float %82, %125
  %127 = fmul float %126, %59
  %128 = fmul float %124, %56
  %129 = fsub float %127, %128
  %130 = fsub float %129, %85
  %131 = fmul float %77, %58
  %132 = fmul float %131, %60
  %133 = fsub float %130, %132
  %134 = fmul float %133, 8.000000e+00
  %135 = fptosi float %134 to i32
  %136 = icmp slt i32 %123, %5
  %137 = icmp sgt i32 %123, 0
  %138 = and i1 %136, %137
  %139 = icmp sgt i32 %116, 0
  %140 = select i1 %138, i1 %139, i1 false
  %141 = icmp slt i32 %116, %6
  %142 = select i1 %140, i1 %141, i1 false
  %143 = add i32 %2, 1
  %144 = mul i32 3, %143
  %145 = add i32 %2, 2
  %146 = mul i32 %144, %145
  %147 = srem i32 %146, 6
  %148 = icmp eq i32 %147, 0
  %149 = mul i32 %2, %2
  %150 = add i32 %149, %2
  %151 = srem i32 %150, 2
  %152 = icmp eq i32 %151, 0
  %153 = and i1 %148, %152
  %154 = xor i1 %148, %152
  %155 = or i1 %153, %154
  %156 = xor i1 %142, true
  %157 = or i1 %156, %155
  %158 = xor i1 %142, true
  %159 = sub i1 %157, %158
  br i1 %159, label %160, label %192

160:                                              ; preds = %115
  %161 = mul nsw i32 %123, %6
  %162 = add nsw i32 %161, %116
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %3, i64 %163
  %165 = load float, float* %164, align 4, !tbaa !13
  %166 = fcmp ogt float %88, %165
  %167 = srem i32 %2, 2
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  br label %171

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170, %169
  br i1 %166, label %172, label %192

172:                                              ; preds = %171
  store float %88, float* %164, align 4, !tbaa !13
  %173 = icmp sgt i32 %135, 0
  %174 = select i1 %173, i32 %135, i32 0
  %175 = srem i32 %147, 2
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = zext i32 %174 to i64
  %179 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %178
  %180 = load i8, i8* %179, align 1, !tbaa !10
  %181 = getelementptr inbounds i8, i8* %4, i64 %163
  store i8 %180, i8* %181, align 1, !tbaa !10
  br label %187

182:                                              ; preds = %172
  %183 = zext i32 %174 to i64
  %184 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1, !tbaa !10
  %186 = getelementptr inbounds i8, i8* %4, i64 %163
  store i8 %185, i8* %186, align 1, !tbaa !10
  br label %187

187:                                              ; preds = %182, %177
  %188 = phi i64 [ %183, %182 ], [ %178, %177 ]
  %189 = phi i8* [ %184, %182 ], [ %179, %177 ]
  %190 = phi i8 [ %185, %182 ], [ %180, %177 ]
  %191 = phi i8* [ %186, %182 ], [ %181, %177 ]
  br label %192

192:                                              ; preds = %187, %171, %115
  %193 = srem i32 %21, 2
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = fadd double %75, 7.000000e-02
  %197 = fptrunc double %196 to float
  %198 = fpext float %197 to double
  %199 = fcmp olt double %198, 6.280000e+00
  br label %205

200:                                              ; preds = %192
  %201 = fadd double %75, 7.000000e-02
  %202 = fptrunc double %201 to float
  %203 = fpext float %202 to double
  %204 = fcmp olt double %203, 6.280000e+00
  br label %205

205:                                              ; preds = %200, %195
  %206 = phi double [ %201, %200 ], [ %196, %195 ]
  %207 = phi float [ %202, %200 ], [ %197, %195 ]
  %208 = phi double [ %203, %200 ], [ %198, %195 ]
  %209 = phi i1 [ %204, %200 ], [ %199, %195 ]
  br i1 %209, label %74, label %61, !llvm.loop !18

210:                                              ; preds = %487
  %211 = srem i32 %386, 2
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  br label %215

214:                                              ; preds = %210
  br label %215

215:                                              ; preds = %214, %213
  ret void

216:                                              ; preds = %487, %71
  %217 = phi double [ 0.000000e+00, %71 ], [ %489, %487 ]
  %218 = phi i32 [ 0, %71 ], [ %220, %487 ]
  %219 = phi float [ 0.000000e+00, %71 ], [ %488, %487 ]
  %220 = add nuw nsw i32 %218, 1
  %221 = sitofp i32 %218 to float
  %222 = fadd float %55, %221
  %223 = call fastcc float @_ZL3cosf(float %219) #9
  %224 = fcmp une float %222, 0.000000e+00
  %225 = fmul float %222, 2.000000e+00
  %226 = fmul float %223, 2.000000e+00
  %227 = select i1 %224, float %223, float %226
  %228 = select i1 %224, float %225, float %222
  %229 = call fastcc float @_ZL3sinf(float %219) #9
  %230 = fmul float %229, 2.000000e+00
  %231 = select i1 %62, float %229, float %230
  %232 = fadd float %227, %12
  %233 = fmul float %228, %232
  %234 = fmul float %57, %233
  %235 = fmul float %73, %231
  %236 = fsub float %234, %235
  %237 = fcmp une float %232, 0.000000e+00
  %238 = fmul float %236, 2.000000e+00
  %239 = fmul float %232, 2.000000e+00
  %240 = select i1 %237, float %238, float %236
  %241 = select i1 %237, float %232, float %239
  %242 = fmul float %228, %241
  %243 = fmul float %73, %242
  %244 = fmul float %57, %231
  %245 = fadd float %244, %243
  %246 = fadd float %245, 5.000000e+00
  %247 = fdiv float 1.000000e+00, %246
  %248 = fmul float %247, 3.000000e+01
  %249 = fmul float %58, %241
  %250 = srem i32 %16, 2
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %297

252:                                              ; preds = %216
  %253 = fmul float %59, %249
  %254 = fmul float %60, %240
  %255 = fadd float %253, %254
  %256 = fmul float %255, %248
  %257 = fadd float %256, %14
  %258 = fptosi float %257 to i32
  %259 = fmul float %247, 1.500000e+01
  %260 = fmul float %249, %60
  %261 = fmul float %59, %240
  %262 = fsub float %260, %261
  %263 = fmul float %262, %259
  %264 = fadd float %263, %54
  %265 = fptosi float %264 to i32
  %266 = fmul float %228, %227
  %267 = fmul float %266, %57
  %268 = fsub float %235, %267
  %269 = fmul float %59, %268
  %270 = fmul float %266, %73
  %271 = fsub float %269, %270
  %272 = fsub float %271, %244
  %273 = fmul float %227, %58
  %274 = fmul float %273, %60
  %275 = fsub float %272, %274
  %276 = fmul float %275, 8.000000e+00
  %277 = fptosi float %276 to i32
  %278 = icmp slt i32 %265, %5
  %279 = icmp sgt i32 %265, 0
  %280 = and i1 %278, %279
  %281 = icmp sgt i32 %258, 0
  %282 = select i1 %280, i1 %281, i1 false
  %283 = icmp slt i32 %258, %6
  %284 = select i1 %282, i1 %283, i1 false
  %285 = icmp sge i32 %16, %16
  %286 = mul i32 %16, %16
  %287 = add i32 %286, %16
  %288 = srem i32 %287, 2
  %289 = icmp eq i32 %288, 0
  %290 = xor i1 %285, true
  %291 = or i1 %290, %289
  %292 = xor i1 %285, true
  %293 = sub i1 %291, %292
  %294 = xor i1 %293, true
  %295 = xor i1 %284, %294
  %296 = and i1 %295, %284
  br label %373

297:                                              ; preds = %216
  %298 = fmul float %59, %249
  %299 = fmul float %60, %240
  %300 = fadd float %298, %299
  %301 = fmul float %300, %248
  %302 = fadd float %301, %14
  %303 = fptosi float %302 to i32
  %304 = fmul float %247, 1.500000e+01
  %305 = fmul float %249, %60
  %306 = fmul float %59, %240
  %307 = fsub float %305, %306
  %308 = fmul float %307, %304
  %309 = fadd float %308, %54
  %310 = fptosi float %309 to i32
  %311 = fmul float %228, %227
  %312 = fmul float %311, %57
  %313 = fsub float %235, %312
  %314 = fmul float %59, %313
  %315 = fmul float %311, %73
  %316 = fsub float %314, %315
  %317 = fsub float %316, %244
  %318 = fmul float %227, %58
  %319 = fmul float %318, %60
  %320 = fsub float %317, %319
  %321 = fmul float %320, 8.000000e+00
  %322 = fptosi float %321 to i32
  %323 = icmp slt i32 %310, %5
  %324 = icmp sgt i32 %310, 0
  %325 = xor i1 %323, true
  %326 = or i1 %325, %324
  %327 = xor i1 %323, true
  %328 = sub i1 %326, %327
  %329 = icmp sgt i32 %303, 0
  %330 = select i1 %328, i1 %329, i1 false
  %331 = icmp slt i32 %303, %6
  %332 = select i1 %330, i1 %331, i1 false
  %333 = icmp sge i32 %16, %16
  %334 = mul i32 %16, %16
  %335 = xor i32 %334, %16
  %336 = and i32 %334, %16
  %337 = mul i32 2, %336
  %338 = add i32 %335, %337
  %339 = srem i32 %338, 2
  %340 = icmp eq i32 %339, 0
  %341 = or i1 %333, true
  %342 = and i1 %333, true
  %343 = sub i1 %341, %342
  %344 = and i1 %343, %340
  %345 = xor i1 %343, %340
  %346 = or i1 %344, %345
  %347 = xor i1 %333, true
  %348 = and i1 %347, false
  %349 = and i1 %333, true
  %350 = or i1 %348, %349
  %351 = xor i1 %350, true
  %352 = sub i1 false, %351
  %353 = add i1 %346, %352
  %354 = xor i1 %353, true
  %355 = and i1 %354, false
  %356 = and i1 %353, true
  %357 = or i1 %355, %356
  %358 = xor i1 %357, true
  %359 = xor i1 %332, true
  %360 = and i1 %359, true
  %361 = and i1 %332, false
  %362 = or i1 %360, %361
  %363 = xor i1 %358, true
  %364 = and i1 %363, true
  %365 = and i1 %358, false
  %366 = or i1 %364, %365
  %367 = xor i1 %362, %366
  %368 = xor i1 %367, true
  %369 = xor i1 %332, true
  %370 = or i1 %368, %369
  %371 = xor i1 %370, true
  %372 = and i1 %371, true
  br label %373

373:                                              ; preds = %297, %252
  %374 = phi float [ %298, %297 ], [ %253, %252 ]
  %375 = phi float [ %299, %297 ], [ %254, %252 ]
  %376 = phi float [ %300, %297 ], [ %255, %252 ]
  %377 = phi float [ %301, %297 ], [ %256, %252 ]
  %378 = phi float [ %302, %297 ], [ %257, %252 ]
  %379 = phi i32 [ %303, %297 ], [ %258, %252 ]
  %380 = phi float [ %304, %297 ], [ %259, %252 ]
  %381 = phi float [ %305, %297 ], [ %260, %252 ]
  %382 = phi float [ %306, %297 ], [ %261, %252 ]
  %383 = phi float [ %307, %297 ], [ %262, %252 ]
  %384 = phi float [ %308, %297 ], [ %263, %252 ]
  %385 = phi float [ %309, %297 ], [ %264, %252 ]
  %386 = phi i32 [ %310, %297 ], [ %265, %252 ]
  %387 = phi float [ %311, %297 ], [ %266, %252 ]
  %388 = phi float [ %312, %297 ], [ %267, %252 ]
  %389 = phi float [ %313, %297 ], [ %268, %252 ]
  %390 = phi float [ %314, %297 ], [ %269, %252 ]
  %391 = phi float [ %315, %297 ], [ %270, %252 ]
  %392 = phi float [ %316, %297 ], [ %271, %252 ]
  %393 = phi float [ %317, %297 ], [ %272, %252 ]
  %394 = phi float [ %318, %297 ], [ %273, %252 ]
  %395 = phi float [ %319, %297 ], [ %274, %252 ]
  %396 = phi float [ %320, %297 ], [ %275, %252 ]
  %397 = phi float [ %321, %297 ], [ %276, %252 ]
  %398 = phi i32 [ %322, %297 ], [ %277, %252 ]
  %399 = phi i1 [ %323, %297 ], [ %278, %252 ]
  %400 = phi i1 [ %324, %297 ], [ %279, %252 ]
  %401 = phi i1 [ %328, %297 ], [ %280, %252 ]
  %402 = phi i1 [ %329, %297 ], [ %281, %252 ]
  %403 = phi i1 [ %330, %297 ], [ %282, %252 ]
  %404 = phi i1 [ %331, %297 ], [ %283, %252 ]
  %405 = phi i1 [ %332, %297 ], [ %284, %252 ]
  %406 = phi i1 [ %333, %297 ], [ %285, %252 ]
  %407 = phi i32 [ %334, %297 ], [ %286, %252 ]
  %408 = phi i32 [ %338, %297 ], [ %287, %252 ]
  %409 = phi i32 [ %339, %297 ], [ %288, %252 ]
  %410 = phi i1 [ %340, %297 ], [ %289, %252 ]
  %411 = phi i1 [ %343, %297 ], [ %290, %252 ]
  %412 = phi i1 [ %346, %297 ], [ %291, %252 ]
  %413 = phi i1 [ %351, %297 ], [ %292, %252 ]
  %414 = phi i1 [ %353, %297 ], [ %293, %252 ]
  %415 = phi i1 [ %358, %297 ], [ %294, %252 ]
  %416 = phi i1 [ %367, %297 ], [ %295, %252 ]
  %417 = phi i1 [ %372, %297 ], [ %296, %252 ]
  br i1 %417, label %418, label %461

418:                                              ; preds = %373
  %419 = mul nsw i32 %386, %6
  %420 = add nsw i32 %419, %379
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds float, float* %3, i64 %421
  %423 = load float, float* %422, align 4, !tbaa !13
  %424 = srem i32 %98, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %418
  %427 = fcmp ogt float %247, %423
  br label %430

428:                                              ; preds = %418
  %429 = fcmp ogt float %247, %423
  br label %430

430:                                              ; preds = %428, %426
  %431 = phi i1 [ %429, %428 ], [ %427, %426 ]
  br i1 %431, label %432, label %461

432:                                              ; preds = %430
  store float %247, float* %422, align 4, !tbaa !13
  %433 = icmp sgt i32 %398, 0
  %434 = select i1 %433, i32 %398, i32 0
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %435
  %437 = load i8, i8* %436, align 1, !tbaa !10
  %438 = and i32 %6, 1
  %439 = icmp eq i32 %438, 0
  %440 = add i32 %6, 1
  %441 = mul i32 3, %440
  %442 = add i32 %6, 2
  %443 = mul i32 %441, %442
  %444 = srem i32 %443, 6
  %445 = icmp eq i32 %444, 0
  %446 = and i1 %439, %445
  %447 = xor i1 %439, %445
  %448 = or i1 %446, %447
  br i1 %448, label %449, label %459

449:                                              ; preds = %432
  %450 = add i32 103, 37
  %451 = add i32 53, 109
  %452 = sdiv i32 59, 39
  %453 = add i32 97, 3
  %454 = mul i32 47, 103
  %455 = sub i32 121, 3
  %456 = sub i32 81, 93
  %457 = sub i32 120, 107
  %458 = add i32 99, 76
  br label %459

459:                                              ; preds = %432, %449
  %460 = getelementptr inbounds i8, i8* %4, i64 %421
  store i8 %437, i8* %460, align 1, !tbaa !10
  br label %461

461:                                              ; preds = %459, %430, %373
  %462 = fadd double %217, 7.000000e-02
  %463 = add i32 %98, 1
  %464 = mul i32 3, %463
  %465 = add i32 %98, 2
  %466 = mul i32 %464, %465
  %467 = srem i32 %466, 6
  %468 = icmp eq i32 %467, 0
  %469 = mul i32 %98, %98
  %470 = add i32 %469, %98
  %471 = srem i32 %470, 2
  %472 = icmp eq i32 %471, 0
  %473 = xor i1 %468, true
  %474 = or i1 %473, %472
  %475 = xor i1 %468, true
  %476 = sub i1 %474, %475
  br i1 %476, label %477, label %487

477:                                              ; preds = %461
  %478 = sdiv i32 94, 125
  %479 = sub i32 66, 105
  %480 = sdiv i32 30, 75
  %481 = sdiv i32 26, 22
  %482 = mul i32 7, 56
  %483 = sdiv i32 64, 42
  %484 = sub i32 32, 54
  %485 = sdiv i32 90, 61
  %486 = add i32 84, 19
  br label %487

487:                                              ; preds = %461, %477
  %488 = fptrunc double %462 to float
  %489 = fpext float %488 to double
  %490 = icmp eq i32 %220, 90
  br i1 %490, label %210, label %216, !llvm.loop !19
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

11:                                               ; preds = %60, %0
  %12 = phi i32 [ 5, %0 ], [ %15, %60 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp eq i32 %15, 10
  %17 = and i32 %10, 1
  %18 = icmp eq i32 %17, 0
  %19 = add i32 %10, 1
  %20 = mul i32 3, %19
  %21 = add i32 %10, 2
  %22 = mul i32 %20, %21
  %23 = srem i32 %22, 6
  %24 = srem i32 %10, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %11
  %27 = icmp eq i32 %23, 0
  %28 = xor i1 %27, true
  %29 = and i1 %18, %28
  %30 = add i1 %29, %27
  %31 = xor i1 %30, true
  %32 = xor i1 %16, %31
  %33 = and i1 %32, %16
  br label %60

34:                                               ; preds = %11
  %35 = icmp eq i32 %23, 0
  %36 = xor i1 %35, true
  %37 = and i1 %36, true
  %38 = and i1 %35, false
  %39 = or i1 %37, %38
  %40 = xor i1 %39, true
  %41 = xor i1 %18, %40
  %42 = and i1 %41, %18
  %43 = add i1 %42, false
  %44 = add i1 %43, %35
  %45 = sub i1 %44, false
  %46 = xor i1 %45, false
  %47 = xor i1 %46, true
  %48 = xor i1 %16, true
  %49 = and i1 %48, true
  %50 = and i1 %16, false
  %51 = or i1 %49, %50
  %52 = xor i1 %47, true
  %53 = and i1 %52, true
  %54 = and i1 %47, false
  %55 = or i1 %53, %54
  %56 = xor i1 %51, %55
  %57 = xor i1 %16, true
  %58 = xor i1 %56, %57
  %59 = and i1 %58, %56
  br label %60

60:                                               ; preds = %34, %26
  %61 = phi i1 [ %35, %34 ], [ %27, %26 ]
  %62 = phi i1 [ %39, %34 ], [ %28, %26 ]
  %63 = phi i1 [ %42, %34 ], [ %29, %26 ]
  %64 = phi i1 [ %45, %34 ], [ %30, %26 ]
  %65 = phi i1 [ %47, %34 ], [ %31, %26 ]
  %66 = phi i1 [ %56, %34 ], [ %32, %26 ]
  %67 = phi i1 [ %59, %34 ], [ %33, %26 ]
  br i1 %67, label %74, label %11, !llvm.loop !20

68:                                               ; preds = %142
  call void @llvm.stackrestore(i8* %5)
  %69 = srem i32 %79, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %73

72:                                               ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %73

73:                                               ; preds = %72, %71
  ret i32 %145

74:                                               ; preds = %142, %60
  %75 = phi i64 [ %146, %142 ], [ 0, %60 ]
  %76 = phi i32 [ %145, %142 ], [ 0, %60 ]
  %77 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %75
  %78 = load i8, i8* %77, align 1, !tbaa !10
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %76, %79
  %81 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %75
  %82 = load float, float* %81, align 4, !tbaa !13
  %83 = srem i32 %22, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %74
  %86 = sitofp i32 %80 to float
  %87 = fadd float %82, %86
  %88 = fptosi float %87 to i32
  %89 = add nuw nsw i64 %75, 1
  %90 = icmp eq i64 %89, 1760
  %91 = and i32 %10, 1
  %92 = icmp eq i32 %91, 1
  %93 = mul i32 %10, %10
  %94 = add i32 %93, %10
  %95 = srem i32 %94, 2
  %96 = icmp eq i32 %95, 0
  %97 = and i1 %92, %96
  %98 = xor i1 %92, %96
  %99 = or i1 %97, %98
  %100 = xor i1 %90, true
  %101 = or i1 %100, %99
  %102 = xor i1 %90, true
  %103 = sub i1 %101, %102
  br label %142

104:                                              ; preds = %74
  %105 = sitofp i32 %80 to float
  %106 = fadd float %82, %105
  %107 = fptosi float %106 to i32
  %108 = sub i64 %75, -8372800909582452856
  %109 = add i64 %108, 1
  %110 = add i64 %109, -8372800909582452856
  %111 = icmp eq i64 %110, 1760
  %112 = xor i32 %10, -2
  %113 = and i32 %112, %10
  %114 = icmp eq i32 %113, 1
  %115 = mul i32 %10, %10
  %116 = sub i32 0, %10
  %117 = sub i32 %115, %116
  %118 = srem i32 %117, 2
  %119 = icmp eq i32 %118, 0
  %120 = xor i1 %114, true
  %121 = xor i1 %119, true
  %122 = or i1 %120, %121
  %123 = xor i1 %122, true
  %124 = and i1 %123, true
  %125 = or i1 %114, %119
  %126 = and i1 %114, %119
  %127 = sub i1 %125, %126
  %128 = xor i1 %127, true
  %129 = and i1 %124, %128
  %130 = add i1 %129, %127
  %131 = or i1 %111, true
  %132 = and i1 %111, true
  %133 = sub i1 %131, %132
  %134 = xor i1 %130, true
  %135 = and i1 %133, %134
  %136 = add i1 %135, %130
  %137 = or i1 %111, true
  %138 = and i1 %111, true
  %139 = sub i1 %137, %138
  %140 = sub i1 false, %139
  %141 = add i1 %136, %140
  br label %142

142:                                              ; preds = %104, %85
  %143 = phi float [ %105, %104 ], [ %86, %85 ]
  %144 = phi float [ %106, %104 ], [ %87, %85 ]
  %145 = phi i32 [ %107, %104 ], [ %88, %85 ]
  %146 = phi i64 [ %110, %104 ], [ %89, %85 ]
  %147 = phi i1 [ %111, %104 ], [ %90, %85 ]
  %148 = phi i32 [ %113, %104 ], [ %91, %85 ]
  %149 = phi i1 [ %114, %104 ], [ %92, %85 ]
  %150 = phi i32 [ %115, %104 ], [ %93, %85 ]
  %151 = phi i32 [ %117, %104 ], [ %94, %85 ]
  %152 = phi i32 [ %118, %104 ], [ %95, %85 ]
  %153 = phi i1 [ %119, %104 ], [ %96, %85 ]
  %154 = phi i1 [ %124, %104 ], [ %97, %85 ]
  %155 = phi i1 [ %127, %104 ], [ %98, %85 ]
  %156 = phi i1 [ %130, %104 ], [ %99, %85 ]
  %157 = phi i1 [ %133, %104 ], [ %100, %85 ]
  %158 = phi i1 [ %136, %104 ], [ %101, %85 ]
  %159 = phi i1 [ %139, %104 ], [ %102, %85 ]
  %160 = phi i1 [ %141, %104 ], [ %103, %85 ]
  br i1 %160, label %68, label %74, !llvm.loop !21
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

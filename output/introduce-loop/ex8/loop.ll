; ModuleID = 'output/introduce-loop/ex8/ex8.ll'
source_filename = "input/introduce-loop/ex8/ex8.cpp"
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
  br label %51

9:                                                ; preds = %31, %4
  %10 = add i32 40, 53
  %11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = srem i32 %3, 2
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %3, 1
  %15 = icmp eq i32 %14, 1
  %16 = mul i32 %3, %3
  %17 = add i32 %16, %3
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %15, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %9
  %22 = mul i32 84, 89
  %23 = sdiv i32 18, 12
  %24 = sub i32 49, 107
  %25 = sdiv i32 38, 32
  %26 = mul i32 120, 90
  %27 = sdiv i32 78, 122
  %28 = sub i32 41, 88
  %29 = mul i32 18, 122
  %30 = sdiv i32 29, 38
  br label %41

31:                                               ; preds = %9
  %32 = mul i32 84, 89
  %33 = sdiv i32 18, 12
  %34 = add i32 863641006, -863641064
  %35 = sdiv i32 38, 32
  %36 = mul i32 120, 90
  %37 = sdiv i32 78, 122
  %38 = add i32 41, -88
  %39 = mul i32 18, 122
  %40 = sdiv i32 29, 38
  br i1 %20, label %41, label %9

41:                                               ; preds = %31, %21
  %42 = phi i32 [ %32, %31 ], [ %22, %21 ]
  %43 = phi i32 [ %33, %31 ], [ %23, %21 ]
  %44 = phi i32 [ %34, %31 ], [ %24, %21 ]
  %45 = phi i32 [ %35, %31 ], [ %25, %21 ]
  %46 = phi i32 [ %36, %31 ], [ %26, %21 ]
  %47 = phi i32 [ %37, %31 ], [ %27, %21 ]
  %48 = phi i32 [ %38, %31 ], [ %28, %21 ]
  %49 = phi i32 [ %39, %31 ], [ %29, %21 ]
  %50 = phi i32 [ %40, %31 ], [ %30, %21 ]
  br label %51

51:                                               ; preds = %41, %7
  %52 = phi i32 [ %11, %41 ], [ %8, %7 ]
  br label %87

53:                                               ; preds = %76, %229
  %54 = srem i32 %89, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %86

57:                                               ; preds = %53
  %58 = sub i32 103, 72
  %59 = mul i32 107, 41
  %60 = sub i32 42, 43
  %61 = srem i32 %3, 2
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %133, 1
  %64 = icmp eq i32 %63, 0
  %65 = mul i32 %133, %133
  %66 = add i32 %65, %133
  %67 = mul i32 %66, 3
  %68 = srem i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = or i1 %64, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %57
  %72 = mul i32 22, 5
  %73 = sub i32 118, 8
  %74 = mul i32 87, 103
  %75 = sdiv i32 24, 44
  br label %81

76:                                               ; preds = %57
  %77 = mul i32 22, 5
  %78 = sub i32 507005553, 507005443
  %79 = mul i32 87, 103
  %80 = sdiv i32 24, 44
  br i1 %70, label %81, label %53

81:                                               ; preds = %76, %71
  %82 = phi i32 [ %77, %76 ], [ %72, %71 ]
  %83 = phi i32 [ %78, %76 ], [ %73, %71 ]
  %84 = phi i32 [ %79, %76 ], [ %74, %71 ]
  %85 = phi i32 [ %80, %76 ], [ %75, %71 ]
  br label %86

86:                                               ; preds = %81, %56
  ret void

87:                                               ; preds = %114, %229, %51
  %88 = phi i64 [ 0, %51 ], [ %188, %229 ], [ 0, %114 ]
  %89 = trunc i64 %88 to i32
  %90 = srem i32 %3, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %87
  %93 = add i32 74, 32
  %94 = urem i32 %89, 80
  %95 = sub i32 53, 48
  %96 = icmp eq i32 %94, 0
  %97 = sdiv i32 53, 41
  %98 = add i32 59, 73
  %99 = sdiv i32 76, 37
  %100 = sdiv i32 85, 7
  %101 = srem i32 %89, 2
  %102 = icmp eq i32 %101, 0
  %103 = mul i64 %88, 2
  %104 = mul i64 %88, 2
  %105 = add i64 2, %104
  %106 = mul i64 %103, %105
  %107 = srem i64 %106, 4
  %108 = icmp eq i64 %107, 0
  %109 = mul i64 %88, %88
  %110 = add i64 %109, %88
  %111 = srem i64 %110, 2
  %112 = icmp eq i64 %111, 0
  %113 = or i1 %108, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %92
  %115 = mul i32 24, 64
  %116 = mul i32 93, 22
  %117 = sdiv i32 20, 70
  %118 = sdiv i32 109, 35
  br i1 %113, label %124, label %87

119:                                              ; preds = %92
  %120 = mul i32 24, 64
  %121 = mul i32 93, 22
  %122 = sdiv i32 20, 70
  %123 = sdiv i32 109, 35
  br label %124

124:                                              ; preds = %114, %119
  %125 = phi i32 [ %120, %119 ], [ %115, %114 ]
  %126 = phi i32 [ %121, %119 ], [ %116, %114 ]
  %127 = phi i32 [ %122, %119 ], [ %117, %114 ]
  %128 = phi i32 [ %123, %119 ], [ %118, %114 ]
  br label %132

129:                                              ; preds = %87
  %130 = urem i32 %89, 80
  %131 = icmp eq i32 %130, 0
  br label %132

132:                                              ; preds = %129, %124
  %133 = phi i32 [ %130, %129 ], [ %94, %124 ]
  %134 = phi i1 [ %131, %129 ], [ %96, %124 ]
  br i1 %134, label %177, label %135

135:                                              ; preds = %166, %132
  %136 = getelementptr inbounds i8, i8* %0, i64 %88
  %137 = srem i32 %89, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i8, i8* %136, align 1, !tbaa !10
  %141 = sext i8 %140 to i32
  br label %174

142:                                              ; preds = %135
  %143 = mul i32 91, 88
  %144 = load i8, i8* %136, align 1, !tbaa !10
  %145 = sub i32 36, 13
  %146 = sext i8 %144 to i32
  %147 = sdiv i32 59, 13
  %148 = sdiv i32 80, 45
  %149 = srem i32 %3, 2
  %150 = icmp eq i32 %149, 0
  %151 = mul i32 %52, 2
  %152 = mul i32 %52, 2
  %153 = add i32 2, %152
  %154 = mul i32 %151, %153
  %155 = srem i32 %154, 4
  %156 = icmp eq i32 %155, 0
  %157 = mul i32 %52, %52
  %158 = add i32 %157, %52
  %159 = srem i32 %158, 2
  %160 = icmp eq i32 %159, 0
  %161 = or i1 %156, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %142
  %163 = sdiv i32 116, 18
  %164 = sdiv i32 72, 119
  %165 = sdiv i32 14, 95
  br label %170

166:                                              ; preds = %142
  %167 = sdiv i32 116, 18
  %168 = sdiv i32 72, 119
  %169 = sdiv i32 14, 95
  br i1 %161, label %170, label %135

170:                                              ; preds = %166, %162
  %171 = phi i32 [ %167, %166 ], [ %163, %162 ]
  %172 = phi i32 [ %168, %166 ], [ %164, %162 ]
  %173 = phi i32 [ %169, %166 ], [ %165, %162 ]
  br label %174

174:                                              ; preds = %170, %139
  %175 = phi i8 [ %144, %170 ], [ %140, %139 ]
  %176 = phi i32 [ %146, %170 ], [ %141, %139 ]
  br label %177

177:                                              ; preds = %208, %174, %132
  %178 = phi i32 [ %176, %174 ], [ 10, %132 ], [ 0, %208 ]
  %179 = call i32 @putchar(i32 %178)
  %180 = load float, float* %1, align 4, !tbaa !13
  %181 = fpext float %180 to double
  %182 = fadd double %181, 4.000000e-05
  %183 = fptrunc double %182 to float
  store float %183, float* %1, align 4, !tbaa !13
  %184 = load float, float* %2, align 4, !tbaa !13
  %185 = fpext float %184 to double
  %186 = fadd double %185, 2.000000e-05
  %187 = fptrunc double %186 to float
  store float %187, float* %2, align 4, !tbaa !13
  %188 = add nuw nsw i64 %88, 1
  %189 = icmp eq i64 %188, 1761
  %190 = srem i64 %88, 2
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %177
  br label %229

193:                                              ; preds = %177
  %194 = sdiv i32 122, 112
  %195 = sub i32 4, 118
  %196 = sdiv i32 86, 111
  %197 = sdiv i32 69, 27
  %198 = srem i64 %190, 2
  %199 = icmp eq i64 %198, 0
  %200 = and i32 %179, 1
  %201 = icmp eq i32 %200, 0
  %202 = mul i32 %179, %179
  %203 = add i32 %202, %179
  %204 = mul i32 %203, 3
  %205 = srem i32 %204, 2
  %206 = icmp eq i32 %205, 0
  %207 = or i1 %201, %206
  br i1 %207, label %215, label %208

208:                                              ; preds = %193
  %209 = add i32 107, 6
  %210 = add i32 124, 88
  %211 = add i32 11, 113
  %212 = mul i32 43, 96
  %213 = sub i32 11, 89
  %214 = mul i32 22, 13
  br i1 %207, label %222, label %177

215:                                              ; preds = %193
  %216 = sub i32 315369966, 315369853
  %217 = add i32 36, 176
  %218 = add i32 2067416522, -2067416398
  %219 = mul i32 43, 96
  %220 = add i32 11, -89
  %221 = mul i32 22, 13
  br label %222

222:                                              ; preds = %208, %215
  %223 = phi i32 [ %216, %215 ], [ %209, %208 ]
  %224 = phi i32 [ %217, %215 ], [ %210, %208 ]
  %225 = phi i32 [ %218, %215 ], [ %211, %208 ]
  %226 = phi i32 [ %219, %215 ], [ %212, %208 ]
  %227 = phi i32 [ %220, %215 ], [ %213, %208 ]
  %228 = phi i32 [ %221, %215 ], [ %214, %208 ]
  br label %229

229:                                              ; preds = %222, %192
  br i1 %189, label %53, label %87, !llvm.loop !15
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
  %10 = srem i32 %5, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %49, %7
  %13 = sdiv i32 64, 68
  %14 = bitcast float* %3 to i8*
  %15 = sdiv i32 116, 102
  %16 = shl nsw i64 %9, 2
  %17 = sub i32 29, 17
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 %16, i1 false)
  %18 = sdiv i32 84, 32
  %19 = sitofp i32 %8 to float
  %20 = mul i32 5, 74
  %21 = sdiv i32 %6, 2
  %22 = sub i32 75, 99
  %23 = sitofp i32 %21 to float
  %24 = mul i32 48, 24
  %25 = sdiv i32 %5, 2
  %26 = sub i32 24, 123
  %27 = add nsw i32 %25, 1
  %28 = mul i32 120, 76
  %29 = sitofp i32 %27 to float
  %30 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %31 = call fastcc float @_ZL3sinf(float %0) #9
  %32 = call fastcc float @_ZL3cosf(float %0) #9
  %33 = srem i64 %9, 2
  %34 = icmp eq i64 %33, 0
  %35 = mul i32 %8, %8
  %36 = add i32 %35, %8
  %37 = mul i32 %36, 3
  %38 = srem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = mul i32 %8, %8
  %41 = add i32 %40, %8
  %42 = srem i32 %41, 2
  %43 = icmp eq i32 %42, 0
  %44 = and i1 %39, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %12
  %46 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %47 = call fastcc float @_ZL3cosf(float %1) #9
  %48 = call fastcc float @_ZL3sinf(float %1) #9
  br label %53

49:                                               ; preds = %12
  %50 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %51 = call fastcc float @_ZL3cosf(float %1) #9
  %52 = call fastcc float @_ZL3sinf(float %1) #9
  br i1 %44, label %53, label %12

53:                                               ; preds = %49, %45
  %54 = phi float [ %50, %49 ], [ %46, %45 ]
  %55 = phi float [ %51, %49 ], [ %47, %45 ]
  %56 = phi float [ %52, %49 ], [ %48, %45 ]
  br label %72

57:                                               ; preds = %7
  %58 = bitcast float* %3 to i8*
  %59 = shl nsw i64 %9, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %58, i8 0, i64 %59, i1 false)
  %60 = sitofp i32 %8 to float
  %61 = sdiv i32 %6, 2
  %62 = sitofp i32 %61 to float
  %63 = sdiv i32 %5, 2
  %64 = sub i32 %63, -1
  %65 = sitofp i32 %64 to float
  %66 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %67 = call fastcc float @_ZL3sinf(float %0) #9
  %68 = call fastcc float @_ZL3cosf(float %0) #9
  %69 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %70 = call fastcc float @_ZL3cosf(float %1) #9
  %71 = call fastcc float @_ZL3sinf(float %1) #9
  br label %72

72:                                               ; preds = %57, %53
  %73 = phi i8* [ %58, %57 ], [ %14, %53 ]
  %74 = phi i64 [ %59, %57 ], [ %16, %53 ]
  %75 = phi float [ %60, %57 ], [ %19, %53 ]
  %76 = phi i32 [ %61, %57 ], [ %21, %53 ]
  %77 = phi float [ %62, %57 ], [ %23, %53 ]
  %78 = phi i32 [ %63, %57 ], [ %25, %53 ]
  %79 = phi i32 [ %64, %57 ], [ %27, %53 ]
  %80 = phi float [ %65, %57 ], [ %29, %53 ]
  %81 = phi float [ %66, %57 ], [ %30, %53 ]
  %82 = phi float [ %67, %57 ], [ %31, %53 ]
  %83 = phi float [ %68, %57 ], [ %32, %53 ]
  %84 = phi float [ %69, %57 ], [ %54, %53 ]
  %85 = phi float [ %70, %57 ], [ %55, %53 ]
  %86 = phi float [ %71, %57 ], [ %56, %53 ]
  br label %115

87:                                               ; preds = %110, %461
  %88 = srem i32 %6, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %87
  %91 = add i32 29, 105
  %92 = sdiv i32 63, 31
  %93 = sub i32 124, 37
  %94 = mul i32 70, 79
  %95 = add i32 120, 111
  %96 = add i32 43, 81
  %97 = sub i32 90, 78
  %98 = sub i32 62, 85
  %99 = sub i32 85, 41
  %100 = srem i32 %314, 2
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %10, 1
  %103 = icmp eq i32 %102, 0
  %104 = mul i32 %10, %10
  %105 = add i32 %104, %10
  %106 = mul i32 %105, 3
  %107 = srem i32 %106, 2
  %108 = icmp eq i32 %107, 0
  %109 = or i1 %103, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %90
  br i1 %109, label %112, label %87

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %110, %111
  br label %114

113:                                              ; preds = %87
  br label %114

114:                                              ; preds = %113, %112
  ret void

115:                                              ; preds = %190, %461, %72
  %116 = phi double [ 0.000000e+00, %72 ], [ %426, %461 ], [ 0.000000e+00, %190 ]
  %117 = phi float [ 0.000000e+00, %72 ], [ %425, %461 ], [ 0.000000e+00, %190 ]
  %118 = call fastcc float @_ZL3cosf(float %117) #9
  %119 = call fastcc float @_ZL3sinf(float %117) #9
  %120 = fadd float %118, %75
  %121 = fmul float %81, %120
  %122 = fmul float %121, %83
  %123 = fmul float %82, %119
  %124 = fsub float %122, %123
  %125 = fmul float %82, %121
  %126 = fmul float %119, %83
  %127 = srem i64 %9, 2
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %242

129:                                              ; preds = %115
  %130 = sub i32 7, 98
  %131 = fadd float %125, %126
  %132 = sdiv i32 55, 2
  %133 = fadd float %131, 5.000000e+00
  %134 = mul i32 62, 102
  %135 = fdiv float 1.000000e+00, %133
  %136 = add i32 47, 51
  %137 = fmul float %120, %84
  %138 = mul i32 53, 79
  %139 = fmul float %135, 1.500000e+01
  %140 = add i32 36, 90
  %141 = fmul float %137, %86
  %142 = sub i32 28, 20
  %143 = fmul float %124, %85
  %144 = sub i32 18, 122
  %145 = fsub float %141, %143
  %146 = sub i32 53, 103
  %147 = fmul float %139, %145
  %148 = fadd float %147, %80
  %149 = fptosi float %148 to i32
  %150 = fmul float %81, %118
  %151 = fmul float %150, %83
  %152 = fsub float %123, %151
  %153 = srem i64 %74, 2
  %154 = icmp eq i64 %153, 0
  %155 = mul i32 %76, 2
  %156 = mul i32 %76, 2
  %157 = add i32 2, %156
  %158 = mul i32 %155, %157
  %159 = srem i32 %158, 4
  %160 = icmp eq i32 %159, 0
  %161 = mul i32 %76, %76
  %162 = add i32 %161, %76
  %163 = srem i32 %162, 2
  %164 = icmp eq i32 %163, 0
  %165 = or i1 %160, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %129
  %167 = fmul float %152, %85
  %168 = fmul float %150, %82
  %169 = fsub float %167, %168
  %170 = fsub float %169, %126
  %171 = fmul float %118, %84
  %172 = fmul float %171, %86
  %173 = fsub float %170, %172
  %174 = fmul float %173, 8.000000e+00
  %175 = fmul float %135, 3.000000e+01
  %176 = fmul float %137, %85
  %177 = fmul float %124, %86
  %178 = fadd float %176, %177
  %179 = fmul float %175, %178
  %180 = fadd float %179, %77
  %181 = fptosi float %180 to i32
  %182 = fptosi float %174 to i32
  %183 = icmp slt i32 %149, %5
  %184 = icmp sgt i32 %149, 0
  %185 = and i1 %183, %184
  %186 = icmp sgt i32 %181, 0
  %187 = select i1 %185, i1 %186, i1 false
  %188 = icmp slt i32 %181, %6
  %189 = select i1 %187, i1 %188, i1 false
  br label %218

190:                                              ; preds = %129
  %191 = fmul float %152, %85
  %192 = fmul float %150, %82
  %193 = fsub float %191, %192
  %194 = fsub float %193, %126
  %195 = fmul float %118, %84
  %196 = fmul float %195, %86
  %197 = fsub float %194, %196
  %198 = fmul float %197, 8.000000e+00
  %199 = fmul float %135, 3.000000e+01
  %200 = fmul float %137, %85
  %201 = fmul float %124, %86
  %202 = fadd float %200, %201
  %203 = fmul float %199, %202
  %204 = fadd float %203, %77
  %205 = fptosi float %204 to i32
  %206 = fptosi float %198 to i32
  %207 = icmp slt i32 %149, %5
  %208 = icmp sgt i32 %149, 0
  %209 = xor i1 %207, true
  %210 = xor i1 %208, true
  %211 = or i1 %209, %210
  %212 = xor i1 %211, true
  %213 = and i1 %212, true
  %214 = icmp sgt i32 %205, 0
  %215 = select i1 %213, i1 %214, i1 false
  %216 = icmp slt i32 %205, %6
  %217 = select i1 %215, i1 %216, i1 false
  br i1 %165, label %218, label %115

218:                                              ; preds = %190, %166
  %219 = phi float [ %191, %190 ], [ %167, %166 ]
  %220 = phi float [ %192, %190 ], [ %168, %166 ]
  %221 = phi float [ %193, %190 ], [ %169, %166 ]
  %222 = phi float [ %194, %190 ], [ %170, %166 ]
  %223 = phi float [ %195, %190 ], [ %171, %166 ]
  %224 = phi float [ %196, %190 ], [ %172, %166 ]
  %225 = phi float [ %197, %190 ], [ %173, %166 ]
  %226 = phi float [ %198, %190 ], [ %174, %166 ]
  %227 = phi float [ %199, %190 ], [ %175, %166 ]
  %228 = phi float [ %200, %190 ], [ %176, %166 ]
  %229 = phi float [ %201, %190 ], [ %177, %166 ]
  %230 = phi float [ %202, %190 ], [ %178, %166 ]
  %231 = phi float [ %203, %190 ], [ %179, %166 ]
  %232 = phi float [ %204, %190 ], [ %180, %166 ]
  %233 = phi i32 [ %205, %190 ], [ %181, %166 ]
  %234 = phi i32 [ %206, %190 ], [ %182, %166 ]
  %235 = phi i1 [ %207, %190 ], [ %183, %166 ]
  %236 = phi i1 [ %208, %190 ], [ %184, %166 ]
  %237 = phi i1 [ %213, %190 ], [ %185, %166 ]
  %238 = phi i1 [ %214, %190 ], [ %186, %166 ]
  %239 = phi i1 [ %215, %190 ], [ %187, %166 ]
  %240 = phi i1 [ %216, %190 ], [ %188, %166 ]
  %241 = phi i1 [ %217, %190 ], [ %189, %166 ]
  br label %284

242:                                              ; preds = %115
  %243 = fadd float %125, %126
  %244 = fadd float %243, 5.000000e+00
  %245 = fdiv float 1.000000e+00, %244
  %246 = fmul float %120, %84
  %247 = fmul float %245, 1.500000e+01
  %248 = fmul float %246, %86
  %249 = fmul float %124, %85
  %250 = fsub float %248, %249
  %251 = fmul float %247, %250
  %252 = fadd float %251, %80
  %253 = fptosi float %252 to i32
  %254 = fmul float %81, %118
  %255 = fmul float %254, %83
  %256 = fsub float %123, %255
  %257 = fmul float %256, %85
  %258 = fmul float %254, %82
  %259 = fsub float %257, %258
  %260 = fsub float %259, %126
  %261 = fmul float %118, %84
  %262 = fmul float %261, %86
  %263 = fsub float %260, %262
  %264 = fmul float %263, 8.000000e+00
  %265 = fmul float %245, 3.000000e+01
  %266 = fmul float %246, %85
  %267 = fmul float %124, %86
  %268 = fadd float %266, %267
  %269 = fmul float %265, %268
  %270 = fadd float %269, %77
  %271 = fptosi float %270 to i32
  %272 = fptosi float %264 to i32
  %273 = icmp slt i32 %253, %5
  %274 = icmp sgt i32 %253, 0
  %275 = xor i1 %273, true
  %276 = xor i1 %274, true
  %277 = or i1 %275, %276
  %278 = xor i1 %277, true
  %279 = and i1 %278, true
  %280 = icmp sgt i32 %271, 0
  %281 = select i1 %279, i1 %280, i1 false
  %282 = icmp slt i32 %271, %6
  %283 = select i1 %281, i1 %282, i1 false
  br label %284

284:                                              ; preds = %242, %218
  %285 = phi float [ %243, %242 ], [ %131, %218 ]
  %286 = phi float [ %244, %242 ], [ %133, %218 ]
  %287 = phi float [ %245, %242 ], [ %135, %218 ]
  %288 = phi float [ %246, %242 ], [ %137, %218 ]
  %289 = phi float [ %247, %242 ], [ %139, %218 ]
  %290 = phi float [ %248, %242 ], [ %141, %218 ]
  %291 = phi float [ %249, %242 ], [ %143, %218 ]
  %292 = phi float [ %250, %242 ], [ %145, %218 ]
  %293 = phi float [ %251, %242 ], [ %147, %218 ]
  %294 = phi float [ %252, %242 ], [ %148, %218 ]
  %295 = phi i32 [ %253, %242 ], [ %149, %218 ]
  %296 = phi float [ %254, %242 ], [ %150, %218 ]
  %297 = phi float [ %255, %242 ], [ %151, %218 ]
  %298 = phi float [ %256, %242 ], [ %152, %218 ]
  %299 = phi float [ %257, %242 ], [ %219, %218 ]
  %300 = phi float [ %258, %242 ], [ %220, %218 ]
  %301 = phi float [ %259, %242 ], [ %221, %218 ]
  %302 = phi float [ %260, %242 ], [ %222, %218 ]
  %303 = phi float [ %261, %242 ], [ %223, %218 ]
  %304 = phi float [ %262, %242 ], [ %224, %218 ]
  %305 = phi float [ %263, %242 ], [ %225, %218 ]
  %306 = phi float [ %264, %242 ], [ %226, %218 ]
  %307 = phi float [ %265, %242 ], [ %227, %218 ]
  %308 = phi float [ %266, %242 ], [ %228, %218 ]
  %309 = phi float [ %267, %242 ], [ %229, %218 ]
  %310 = phi float [ %268, %242 ], [ %230, %218 ]
  %311 = phi float [ %269, %242 ], [ %231, %218 ]
  %312 = phi float [ %270, %242 ], [ %232, %218 ]
  %313 = phi i32 [ %271, %242 ], [ %233, %218 ]
  %314 = phi i32 [ %272, %242 ], [ %234, %218 ]
  %315 = phi i1 [ %273, %242 ], [ %235, %218 ]
  %316 = phi i1 [ %274, %242 ], [ %236, %218 ]
  %317 = phi i1 [ %279, %242 ], [ %237, %218 ]
  %318 = phi i1 [ %280, %242 ], [ %238, %218 ]
  %319 = phi i1 [ %281, %242 ], [ %239, %218 ]
  %320 = phi i1 [ %282, %242 ], [ %240, %218 ]
  %321 = phi i1 [ %283, %242 ], [ %241, %218 ]
  br i1 %321, label %322, label %423

322:                                              ; preds = %350, %284
  %323 = mul nsw i32 %295, %6
  %324 = add nsw i32 %323, %313
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds float, float* %3, i64 %325
  %327 = srem i32 %76, 2
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %362

329:                                              ; preds = %322
  %330 = sub i32 68, 16
  %331 = load float, float* %326, align 4, !tbaa !13
  %332 = mul i32 30, 54
  %333 = fcmp ogt float %287, %331
  %334 = mul i32 59, 66
  %335 = sub i32 24, 57
  %336 = sdiv i32 49, 120
  %337 = srem i64 %127, 2
  %338 = icmp eq i64 %337, 0
  %339 = mul i64 %127, 2
  %340 = mul i64 %127, 2
  %341 = add i64 2, %340
  %342 = mul i64 %339, %341
  %343 = srem i64 %342, 4
  %344 = icmp eq i64 %343, 0
  %345 = mul i64 %127, %127
  %346 = add i64 %345, %127
  %347 = srem i64 %346, 2
  %348 = icmp eq i64 %347, 0
  %349 = or i1 %344, %348
  br i1 %349, label %354, label %350

350:                                              ; preds = %329
  %351 = add i32 1313516670, -1313516665
  %352 = add i32 1902409099, -1902408980
  %353 = add i32 -990270644, 990270781
  br i1 %349, label %358, label %322

354:                                              ; preds = %329
  %355 = sub i32 33, 28
  %356 = add i32 68, 51
  %357 = add i32 120, 17
  br label %358

358:                                              ; preds = %350, %354
  %359 = phi i32 [ %355, %354 ], [ %351, %350 ]
  %360 = phi i32 [ %356, %354 ], [ %352, %350 ]
  %361 = phi i32 [ %357, %354 ], [ %353, %350 ]
  br label %365

362:                                              ; preds = %322
  %363 = load float, float* %326, align 4, !tbaa !13
  %364 = fcmp ogt float %287, %363
  br label %365

365:                                              ; preds = %362, %358
  %366 = phi float [ %363, %362 ], [ %331, %358 ]
  %367 = phi i1 [ %364, %362 ], [ %333, %358 ]
  br i1 %367, label %368, label %423

368:                                              ; preds = %401, %365
  %369 = srem i32 %314, 2
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %409

371:                                              ; preds = %368
  %372 = add i32 11, 45
  store float %287, float* %326, align 4, !tbaa !13
  %373 = sub i32 121, 0
  %374 = icmp sgt i32 %314, 0
  %375 = sub i32 51, 65
  %376 = select i1 %374, i32 %314, i32 0
  %377 = mul i32 116, 2
  %378 = zext i32 %376 to i64
  %379 = sub i32 45, 91
  %380 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %378
  %381 = add i32 126, 85
  %382 = load i8, i8* %380, align 1, !tbaa !10
  %383 = srem i64 %127, 2
  %384 = icmp eq i64 %383, 0
  %385 = mul i32 %369, 2
  %386 = mul i32 %369, 2
  %387 = add i32 2, %386
  %388 = mul i32 %385, %387
  %389 = srem i32 %388, 4
  %390 = icmp eq i32 %389, 0
  %391 = mul i32 %369, %369
  %392 = mul i32 %391, %369
  %393 = add i32 %392, %369
  %394 = srem i32 %393, 2
  %395 = icmp eq i32 %394, 0
  %396 = and i1 %390, %395
  br i1 %396, label %397, label %401

397:                                              ; preds = %371
  %398 = add i32 72, -56
  %399 = getelementptr inbounds i8, i8* %4, i64 %325
  %400 = sub i32 113, -8
  store i8 %382, i8* %399, align 1, !tbaa !10
  br label %405

401:                                              ; preds = %371
  %402 = sub i32 72, 56
  %403 = getelementptr inbounds i8, i8* %4, i64 %325
  %404 = add i32 113, 8
  store i8 %382, i8* %403, align 1, !tbaa !10
  br i1 %396, label %405, label %368

405:                                              ; preds = %401, %397
  %406 = phi i32 [ %402, %401 ], [ %398, %397 ]
  %407 = phi i8* [ %403, %401 ], [ %399, %397 ]
  %408 = phi i32 [ %404, %401 ], [ %400, %397 ]
  br label %416

409:                                              ; preds = %368
  store float %287, float* %326, align 4, !tbaa !13
  %410 = icmp sgt i32 %314, 0
  %411 = select i1 %410, i32 %314, i32 0
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %412
  %414 = load i8, i8* %413, align 1, !tbaa !10
  %415 = getelementptr inbounds i8, i8* %4, i64 %325
  store i8 %414, i8* %415, align 1, !tbaa !10
  br label %416

416:                                              ; preds = %409, %405
  %417 = phi i1 [ %410, %409 ], [ %374, %405 ]
  %418 = phi i32 [ %411, %409 ], [ %376, %405 ]
  %419 = phi i64 [ %412, %409 ], [ %378, %405 ]
  %420 = phi i8* [ %413, %409 ], [ %380, %405 ]
  %421 = phi i8 [ %414, %409 ], [ %382, %405 ]
  %422 = phi i8* [ %415, %409 ], [ %407, %405 ]
  br label %423

423:                                              ; preds = %454, %416, %365, %284
  %424 = fadd double %116, 7.000000e-02
  %425 = fptrunc double %424 to float
  %426 = fpext float %425 to double
  %427 = fcmp olt double %426, 6.280000e+00
  %428 = srem i32 %313, 2
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %460

430:                                              ; preds = %423
  %431 = sub i32 102, 62
  %432 = sub i32 93, 13
  %433 = sub i32 34, 104
  %434 = add i32 7, 32
  %435 = sdiv i32 14, 52
  %436 = sub i32 85, 80
  %437 = sdiv i32 62, 36
  %438 = sdiv i32 55, 103
  %439 = srem i32 %76, 2
  %440 = icmp eq i32 %439, 0
  %441 = mul i32 %314, %314
  %442 = add i32 %441, %314
  %443 = mul i32 %442, 3
  %444 = srem i32 %443, 2
  %445 = icmp eq i32 %444, 0
  %446 = mul i32 %314, %314
  %447 = add i32 %446, %314
  %448 = srem i32 %447, 2
  %449 = icmp eq i32 %448, 0
  %450 = and i1 %445, %449
  br i1 %450, label %451, label %454

451:                                              ; preds = %430
  %452 = sub i32 713489374, 713489387
  %453 = add i32 88, -58
  br label %457

454:                                              ; preds = %430
  %455 = sub i32 31, 44
  %456 = sub i32 88, 58
  br i1 %450, label %457, label %423

457:                                              ; preds = %454, %451
  %458 = phi i32 [ %455, %454 ], [ %452, %451 ]
  %459 = phi i32 [ %456, %454 ], [ %453, %451 ]
  br label %461

460:                                              ; preds = %423
  br label %461

461:                                              ; preds = %460, %457
  br i1 %427, label %115, label %87, !llvm.loop !18
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

11:                                               ; preds = %36, %54, %0
  %12 = phi i32 [ 5, %0 ], [ %15, %54 ], [ 0, %36 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = srem i32 %10, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = icmp eq i32 %15, 10
  br label %54

20:                                               ; preds = %11
  %21 = add i32 11, 120
  %22 = icmp eq i32 %15, 10
  %23 = sdiv i32 122, 40
  %24 = mul i32 121, 31
  %25 = sub i32 107, 59
  %26 = srem i32 %12, 2
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %15, 1
  %29 = icmp eq i32 %28, 0
  %30 = mul i32 %15, %15
  %31 = add i32 %30, %15
  %32 = mul i32 %31, 3
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %29, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %20
  %37 = sdiv i32 84, 94
  %38 = add i32 1580312340, -1580312373
  %39 = mul i32 100, 4
  %40 = sub i32 -1326625364, -1326625455
  %41 = sub i32 3, -4
  br i1 %35, label %48, label %11

42:                                               ; preds = %20
  %43 = sdiv i32 84, 94
  %44 = sub i32 50, 83
  %45 = mul i32 100, 4
  %46 = sub i32 95, 4
  %47 = add i32 3, 4
  br label %48

48:                                               ; preds = %36, %42
  %49 = phi i32 [ %43, %42 ], [ %37, %36 ]
  %50 = phi i32 [ %44, %42 ], [ %38, %36 ]
  %51 = phi i32 [ %45, %42 ], [ %39, %36 ]
  %52 = phi i32 [ %46, %42 ], [ %40, %36 ]
  %53 = phi i32 [ %47, %42 ], [ %41, %36 ]
  br label %54

54:                                               ; preds = %48, %18
  %55 = phi i1 [ %22, %48 ], [ %19, %18 ]
  br i1 %55, label %89, label %11, !llvm.loop !19

56:                                               ; preds = %78, %136
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %57 = srem i32 %95, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = mul i32 7, 10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %61 = add i32 121, 44
  %62 = mul i32 20, 45
  %63 = sub i32 12, 6
  %64 = srem i32 %95, 2
  %65 = icmp eq i32 %64, 0
  %66 = mul i32 %15, 2
  %67 = mul i32 %15, 2
  %68 = add i32 2, %67
  %69 = mul i32 %66, %68
  %70 = srem i32 %69, 4
  %71 = icmp eq i32 %70, 0
  %72 = mul i32 %15, %15
  %73 = mul i32 %72, %15
  %74 = add i32 %73, %15
  %75 = srem i32 %74, 2
  %76 = icmp eq i32 %75, 0
  %77 = and i1 %71, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %59
  %79 = sdiv i32 23, 66
  %80 = sdiv i32 121, 20
  br i1 %77, label %84, label %56

81:                                               ; preds = %59
  %82 = sdiv i32 23, 66
  %83 = sdiv i32 121, 20
  br label %84

84:                                               ; preds = %78, %81
  %85 = phi i32 [ %82, %81 ], [ %79, %78 ]
  %86 = phi i32 [ %83, %81 ], [ %80, %78 ]
  br label %88

87:                                               ; preds = %56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %88

88:                                               ; preds = %87, %84
  ret i32 %100

89:                                               ; preds = %127, %136, %54
  %90 = phi i64 [ %137, %136 ], [ 0, %54 ], [ 0, %127 ]
  %91 = phi i32 [ %100, %136 ], [ 0, %54 ], [ 0, %127 ]
  %92 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %90
  %93 = load i8, i8* %92, align 1, !tbaa !10
  %94 = sext i8 %93 to i32
  %95 = add nsw i32 %91, %94
  %96 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %90
  %97 = load float, float* %96, align 4, !tbaa !13
  %98 = sitofp i32 %95 to float
  %99 = fadd float %97, %98
  %100 = fptosi float %99 to i32
  %101 = srem i32 %10, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %89
  %104 = sdiv i32 66, 104
  %105 = sub i64 0, %90
  %106 = add i32 121, 18
  %107 = add i64 %105, -1
  %108 = sdiv i32 6, 90
  %109 = sub i64 0, %107
  %110 = sdiv i32 116, 66
  %111 = icmp eq i64 %109, 1760
  %112 = srem i32 %95, 2
  %113 = icmp eq i32 %112, 0
  %114 = mul i32 %101, %101
  %115 = add i32 %114, %101
  %116 = mul i32 %115, 3
  %117 = srem i32 %116, 2
  %118 = icmp eq i32 %117, 0
  %119 = mul i32 %101, %101
  %120 = add i32 %119, %101
  %121 = srem i32 %120, 2
  %122 = icmp eq i32 %121, 0
  %123 = and i1 %118, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %103
  %125 = sdiv i32 113, 43
  %126 = mul i32 29, 49
  br label %130

127:                                              ; preds = %103
  %128 = sdiv i32 113, 43
  %129 = mul i32 29, 49
  br i1 %123, label %130, label %89

130:                                              ; preds = %127, %124
  %131 = phi i32 [ %128, %127 ], [ %125, %124 ]
  %132 = phi i32 [ %129, %127 ], [ %126, %124 ]
  br label %136

133:                                              ; preds = %89
  %134 = add nuw nsw i64 %90, 1
  %135 = icmp eq i64 %134, 1760
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi i64 [ %134, %133 ], [ %109, %130 ]
  %138 = phi i1 [ %135, %133 ], [ %111, %130 ]
  br i1 %138, label %56, label %89, !llvm.loop !20
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

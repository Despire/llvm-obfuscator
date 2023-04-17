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
  br i1 %6, label %7, label %40

7:                                                ; preds = %22, %4
  %8 = mul i32 24, 63
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = srem i32 %5, 2
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %5, %5
  %13 = add i32 %12, %5
  %14 = mul i32 %13, 3
  %15 = srem i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = mul i32 %5, %5
  %18 = add i32 %17, %5
  %19 = srem i32 %18, 2
  %20 = icmp eq i32 %19, 0
  %21 = and i1 %16, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %7
  %23 = mul i32 102, 25
  %24 = sub i32 94, -73
  %25 = add i32 -1247927902, 1247927947
  %26 = sub i32 11, -110
  %27 = sub i32 1618295088, 1618295054
  br i1 %21, label %34, label %7

28:                                               ; preds = %7
  %29 = mul i32 102, 25
  %30 = add i32 94, 73
  %31 = sub i32 79, 34
  %32 = add i32 11, 110
  %33 = sub i32 83, 49
  br label %34

34:                                               ; preds = %22, %28
  %35 = phi i32 [ %29, %28 ], [ %23, %22 ]
  %36 = phi i32 [ %30, %28 ], [ %24, %22 ]
  %37 = phi i32 [ %31, %28 ], [ %25, %22 ]
  %38 = phi i32 [ %32, %28 ], [ %26, %22 ]
  %39 = phi i32 [ %33, %28 ], [ %27, %22 ]
  br label %42

40:                                               ; preds = %4
  %41 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi i32 [ %41, %40 ], [ %9, %34 ]
  br label %83

44:                                               ; preds = %58, %222
  %45 = srem i32 %43, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %82

48:                                               ; preds = %44
  %49 = srem i32 %86, 2
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %45, 1
  %52 = icmp eq i32 %51, 1
  %53 = mul i32 %45, %45
  %54 = add i32 %53, %45
  %55 = srem i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %52, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %48
  %59 = mul i32 90, 9
  %60 = add i32 4, 50
  %61 = sub i32 78, 109
  %62 = sdiv i32 85, 117
  %63 = sdiv i32 36, 126
  %64 = sub i32 50, 97
  %65 = mul i32 43, 6
  br i1 %57, label %74, label %44

66:                                               ; preds = %48
  %67 = mul i32 90, 9
  %68 = add i32 0, 54
  %69 = add i32 78, -109
  %70 = sdiv i32 85, 117
  %71 = sdiv i32 36, 126
  %72 = add i32 -181625644, 181625597
  %73 = mul i32 43, 6
  br label %74

74:                                               ; preds = %58, %66
  %75 = phi i32 [ %67, %66 ], [ %59, %58 ]
  %76 = phi i32 [ %68, %66 ], [ %60, %58 ]
  %77 = phi i32 [ %69, %66 ], [ %61, %58 ]
  %78 = phi i32 [ %70, %66 ], [ %62, %58 ]
  %79 = phi i32 [ %71, %66 ], [ %63, %58 ]
  %80 = phi i32 [ %72, %66 ], [ %64, %58 ]
  %81 = phi i32 [ %73, %66 ], [ %65, %58 ]
  br label %82

82:                                               ; preds = %74, %47
  ret void

83:                                               ; preds = %116, %222, %42
  %84 = phi i64 [ 0, %42 ], [ %223, %222 ], [ 0, %116 ]
  %85 = trunc i64 %84 to i32
  %86 = urem i32 %85, 80
  %87 = icmp eq i32 %86, 0
  %88 = srem i32 %3, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %132

91:                                               ; preds = %83
  %92 = sdiv i32 66, 58
  %93 = add i32 117, 40
  %94 = sdiv i32 47, 119
  %95 = srem i32 %5, 2
  %96 = icmp eq i32 %95, 0
  %97 = mul i32 %5, 2
  %98 = mul i32 %5, 2
  %99 = add i32 2, %98
  %100 = mul i32 %97, %99
  %101 = srem i32 %100, 4
  %102 = icmp eq i32 %101, 0
  %103 = mul i32 %5, %5
  %104 = add i32 %103, %5
  %105 = srem i32 %104, 2
  %106 = icmp eq i32 %105, 0
  %107 = or i1 %102, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %91
  %109 = add i32 31, 53
  %110 = sdiv i32 113, 2
  %111 = sub i32 107, 88
  %112 = sdiv i32 113, 92
  %113 = sub i32 23, 112
  %114 = add i32 24, 35
  %115 = mul i32 102, 53
  br label %124

116:                                              ; preds = %91
  %117 = sub i32 0, -84
  %118 = sdiv i32 113, 2
  %119 = add i32 317506557, -317506538
  %120 = sdiv i32 113, 92
  %121 = add i32 160374850, -160374939
  %122 = add i32 0, 59
  %123 = mul i32 102, 53
  br i1 %107, label %124, label %83

124:                                              ; preds = %116, %108
  %125 = phi i32 [ %117, %116 ], [ %109, %108 ]
  %126 = phi i32 [ %118, %116 ], [ %110, %108 ]
  %127 = phi i32 [ %119, %116 ], [ %111, %108 ]
  %128 = phi i32 [ %120, %116 ], [ %112, %108 ]
  %129 = phi i32 [ %121, %116 ], [ %113, %108 ]
  %130 = phi i32 [ %122, %116 ], [ %114, %108 ]
  %131 = phi i32 [ %123, %116 ], [ %115, %108 ]
  br label %132

132:                                              ; preds = %124, %90
  br i1 %87, label %173, label %133

133:                                              ; preds = %158, %132
  %134 = getelementptr inbounds i8, i8* %0, i64 %84
  %135 = srem i32 %88, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i8, i8* %134, align 1, !tbaa !10
  %139 = sext i8 %138 to i32
  br label %170

140:                                              ; preds = %133
  %141 = sdiv i32 50, 48
  %142 = load i8, i8* %134, align 1, !tbaa !10
  %143 = add i32 31, 121
  %144 = sext i8 %142 to i32
  %145 = sub i32 8, 111
  %146 = sdiv i32 68, 97
  %147 = sub i32 57, 121
  %148 = srem i32 %86, 2
  %149 = icmp eq i32 %148, 0
  %150 = and i32 %86, 1
  %151 = icmp eq i32 %150, 0
  %152 = mul i32 %86, %86
  %153 = add i32 %152, %86
  %154 = mul i32 %153, 3
  %155 = srem i32 %154, 2
  %156 = icmp eq i32 %155, 0
  %157 = or i1 %151, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %140
  %159 = mul i32 109, 22
  %160 = mul i32 126, 80
  %161 = add i32 -2107042854, 2107043017
  br i1 %157, label %166, label %133

162:                                              ; preds = %140
  %163 = mul i32 109, 22
  %164 = mul i32 126, 80
  %165 = add i32 108, 55
  br label %166

166:                                              ; preds = %158, %162
  %167 = phi i32 [ %163, %162 ], [ %159, %158 ]
  %168 = phi i32 [ %164, %162 ], [ %160, %158 ]
  %169 = phi i32 [ %165, %162 ], [ %161, %158 ]
  br label %170

170:                                              ; preds = %166, %137
  %171 = phi i8 [ %142, %166 ], [ %138, %137 ]
  %172 = phi i32 [ %144, %166 ], [ %139, %137 ]
  br label %173

173:                                              ; preds = %211, %170, %132
  %174 = phi i32 [ %172, %170 ], [ 10, %132 ], [ 0, %211 ]
  %175 = call i32 @putchar(i32 %174)
  %176 = load float, float* %1, align 4, !tbaa !13
  %177 = fpext float %176 to double
  %178 = fadd double %177, 4.000000e-05
  %179 = fptrunc double %178 to float
  store float %179, float* %1, align 4, !tbaa !13
  %180 = load float, float* %2, align 4, !tbaa !13
  %181 = fpext float %180 to double
  %182 = fadd double %181, 2.000000e-05
  %183 = fptrunc double %182 to float
  %184 = srem i32 %5, 2
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %217

186:                                              ; preds = %173
  %187 = add i32 20, 111
  store float %183, float* %2, align 4, !tbaa !13
  %188 = sub i32 122, 84
  %189 = add nuw nsw i64 %84, 1
  %190 = sdiv i32 28, 14
  %191 = icmp eq i64 %189, 1761
  %192 = mul i32 15, 123
  %193 = mul i32 53, 39
  %194 = add i32 38, 59
  %195 = mul i32 92, 99
  %196 = mul i32 21, 88
  %197 = add i32 105, 7
  %198 = srem i32 %43, 2
  %199 = icmp eq i32 %198, 0
  %200 = mul i32 %5, 2
  %201 = mul i32 %5, 2
  %202 = add i32 2, %201
  %203 = mul i32 %200, %202
  %204 = srem i32 %203, 4
  %205 = icmp eq i32 %204, 0
  %206 = mul i32 %5, %5
  %207 = add i32 %206, %5
  %208 = srem i32 %207, 2
  %209 = icmp eq i32 %208, 0
  %210 = or i1 %205, %209
  br i1 %210, label %213, label %211

211:                                              ; preds = %186
  %212 = sdiv i32 64, 38
  br i1 %210, label %215, label %173

213:                                              ; preds = %186
  %214 = sdiv i32 64, 38
  br label %215

215:                                              ; preds = %211, %213
  %216 = phi i32 [ %214, %213 ], [ %212, %211 ]
  br label %222

217:                                              ; preds = %173
  store float %183, float* %2, align 4, !tbaa !13
  %218 = sub i64 0, %84
  %219 = add i64 %218, -1
  %220 = sub i64 0, %219
  %221 = icmp eq i64 %220, 1761
  br label %222

222:                                              ; preds = %217, %215
  %223 = phi i64 [ %220, %217 ], [ %189, %215 ]
  %224 = phi i1 [ %221, %217 ], [ %191, %215 ]
  br i1 %224, label %44, label %83, !llvm.loop !15
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
  %12 = srem i32 %2, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = sitofp i32 %8 to float
  %16 = sdiv i32 %6, 2
  %17 = sitofp i32 %16 to float
  %18 = sdiv i32 %5, 2
  %19 = add nsw i32 %18, 1
  %20 = sitofp i32 %19 to float
  %21 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %22 = call fastcc float @_ZL3sinf(float %0) #9
  %23 = call fastcc float @_ZL3cosf(float %0) #9
  %24 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %25 = call fastcc float @_ZL3cosf(float %1) #9
  %26 = call fastcc float @_ZL3sinf(float %1) #9
  br label %88

27:                                               ; preds = %55, %7
  %28 = mul i32 30, 25
  %29 = sitofp i32 %8 to float
  %30 = sub i32 17, 35
  %31 = sdiv i32 %6, 2
  %32 = mul i32 5, 70
  %33 = sitofp i32 %31 to float
  %34 = mul i32 45, 100
  %35 = sdiv i32 %5, 2
  %36 = mul i32 38, 91
  %37 = and i32 %35, 1
  %38 = mul i32 57, 83
  %39 = or i32 %35, 1
  %40 = sdiv i32 34, 9
  %41 = add i32 %37, %39
  %42 = srem i32 %2, 2
  %43 = icmp eq i32 %42, 0
  %44 = mul i64 %11, 2
  %45 = mul i64 %11, 2
  %46 = add i64 2, %45
  %47 = mul i64 %44, %46
  %48 = srem i64 %47, 4
  %49 = icmp eq i64 %48, 0
  %50 = mul i64 %11, %11
  %51 = add i64 %50, %11
  %52 = srem i64 %51, 2
  %53 = icmp eq i64 %52, 0
  %54 = and i1 %49, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %27
  %56 = mul i32 51, 21
  %57 = sitofp i32 %41 to float
  %58 = add i32 13, 80
  %59 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %60 = sdiv i32 108, 113
  %61 = call fastcc float @_ZL3sinf(float %0) #9
  %62 = call fastcc float @_ZL3cosf(float %0) #9
  %63 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %64 = call fastcc float @_ZL3cosf(float %1) #9
  %65 = call fastcc float @_ZL3sinf(float %1) #9
  br i1 %54, label %77, label %27

66:                                               ; preds = %27
  %67 = mul i32 51, 21
  %68 = sitofp i32 %41 to float
  %69 = sub i32 0, -93
  %70 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %71 = sdiv i32 108, 113
  %72 = call fastcc float @_ZL3sinf(float %0) #9
  %73 = call fastcc float @_ZL3cosf(float %0) #9
  %74 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %75 = call fastcc float @_ZL3cosf(float %1) #9
  %76 = call fastcc float @_ZL3sinf(float %1) #9
  br label %77

77:                                               ; preds = %55, %66
  %78 = phi i32 [ %67, %66 ], [ %56, %55 ]
  %79 = phi float [ %68, %66 ], [ %57, %55 ]
  %80 = phi i32 [ %69, %66 ], [ %58, %55 ]
  %81 = phi float [ %70, %66 ], [ %59, %55 ]
  %82 = phi i32 [ %71, %66 ], [ %60, %55 ]
  %83 = phi float [ %72, %66 ], [ %61, %55 ]
  %84 = phi float [ %73, %66 ], [ %62, %55 ]
  %85 = phi float [ %74, %66 ], [ %63, %55 ]
  %86 = phi float [ %75, %66 ], [ %64, %55 ]
  %87 = phi float [ %76, %66 ], [ %65, %55 ]
  br label %88

88:                                               ; preds = %77, %14
  %89 = phi float [ %29, %77 ], [ %15, %14 ]
  %90 = phi i32 [ %31, %77 ], [ %16, %14 ]
  %91 = phi float [ %33, %77 ], [ %17, %14 ]
  %92 = phi i32 [ %35, %77 ], [ %18, %14 ]
  %93 = phi i32 [ %41, %77 ], [ %19, %14 ]
  %94 = phi float [ %79, %77 ], [ %20, %14 ]
  %95 = phi float [ %81, %77 ], [ %21, %14 ]
  %96 = phi float [ %83, %77 ], [ %22, %14 ]
  %97 = phi float [ %84, %77 ], [ %23, %14 ]
  %98 = phi float [ %85, %77 ], [ %24, %14 ]
  %99 = phi float [ %86, %77 ], [ %25, %14 ]
  %100 = phi float [ %87, %77 ], [ %26, %14 ]
  br label %138

101:                                              ; preds = %122, %512
  %102 = srem i32 %328, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %137

105:                                              ; preds = %101
  %106 = mul i32 67, 61
  %107 = sdiv i32 26, 10
  %108 = mul i32 96, 101
  %109 = sub i32 49, 30
  %110 = srem i32 %12, 2
  %111 = icmp eq i32 %110, 0
  %112 = mul i32 %92, %92
  %113 = add i32 %112, %92
  %114 = mul i32 %113, 3
  %115 = srem i32 %114, 2
  %116 = icmp eq i32 %115, 0
  %117 = mul i32 %92, %92
  %118 = add i32 %117, %92
  %119 = srem i32 %118, 2
  %120 = icmp eq i32 %119, 0
  %121 = and i1 %116, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %105
  %123 = mul i32 121, 44
  %124 = sub i32 62, 38
  %125 = sub i32 53, 37
  %126 = sdiv i32 13, 39
  br i1 %121, label %132, label %101

127:                                              ; preds = %105
  %128 = mul i32 121, 44
  %129 = sub i32 668450279, 668450255
  %130 = sub i32 -7821395, -7821411
  %131 = sdiv i32 13, 39
  br label %132

132:                                              ; preds = %122, %127
  %133 = phi i32 [ %128, %127 ], [ %123, %122 ]
  %134 = phi i32 [ %129, %127 ], [ %124, %122 ]
  %135 = phi i32 [ %130, %127 ], [ %125, %122 ]
  %136 = phi i32 [ %131, %127 ], [ %126, %122 ]
  br label %137

137:                                              ; preds = %132, %104
  ret void

138:                                              ; preds = %251, %512, %88
  %139 = phi double [ 0.000000e+00, %88 ], [ %515, %512 ], [ 0.000000e+00, %251 ]
  %140 = phi float [ 0.000000e+00, %88 ], [ %514, %512 ], [ 0.000000e+00, %251 ]
  %141 = call fastcc float @_ZL3cosf(float %140) #9
  %142 = call fastcc float @_ZL3sinf(float %140) #9
  %143 = fadd float %141, %89
  %144 = fmul float %95, %143
  %145 = fmul float %144, %97
  %146 = fmul float %96, %142
  %147 = fsub float %145, %146
  %148 = fmul float %96, %144
  %149 = fmul float %142, %97
  %150 = fadd float %148, %149
  %151 = fadd float %150, 5.000000e+00
  %152 = fdiv float 1.000000e+00, %151
  %153 = fmul float %143, %98
  %154 = fmul float %152, 1.500000e+01
  %155 = fmul float %153, %100
  %156 = fmul float %147, %99
  %157 = fsub float %155, %156
  %158 = fmul float %154, %157
  %159 = fadd float %158, %94
  %160 = srem i32 %92, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %190

162:                                              ; preds = %138
  %163 = fptosi float %159 to i32
  %164 = fmul float %95, %141
  %165 = fmul float %164, %97
  %166 = fsub float %146, %165
  %167 = fmul float %166, %99
  %168 = fmul float %164, %96
  %169 = fsub float %167, %168
  %170 = fsub float %169, %149
  %171 = fmul float %141, %98
  %172 = fmul float %171, %100
  %173 = fsub float %170, %172
  %174 = fmul float %173, 8.000000e+00
  %175 = fmul float %152, 3.000000e+01
  %176 = fmul float %153, %99
  %177 = fmul float %147, %100
  %178 = fadd float %176, %177
  %179 = fmul float %175, %178
  %180 = fadd float %179, %91
  %181 = fptosi float %180 to i32
  %182 = fptosi float %174 to i32
  %183 = icmp slt i32 %163, %5
  %184 = icmp sgt i32 %163, 0
  %185 = and i1 %183, %184
  %186 = icmp sgt i32 %181, 0
  %187 = select i1 %185, i1 %186, i1 false
  %188 = icmp slt i32 %181, %6
  %189 = select i1 %187, i1 %188, i1 false
  br label %327

190:                                              ; preds = %138
  %191 = mul i32 83, 87
  %192 = fptosi float %159 to i32
  %193 = srem i32 %2, 2
  %194 = icmp eq i32 %193, 0
  %195 = mul i32 %8, %8
  %196 = add i32 %195, %8
  %197 = mul i32 %196, 3
  %198 = srem i32 %197, 2
  %199 = icmp eq i32 %198, 0
  %200 = mul i32 %8, %8
  %201 = add i32 %200, %8
  %202 = srem i32 %201, 2
  %203 = icmp eq i32 %202, 0
  %204 = and i1 %199, %203
  br i1 %204, label %205, label %251

205:                                              ; preds = %190
  %206 = sub i32 1070730410, 1070730445
  %207 = fmul float %95, %141
  %208 = sdiv i32 3, 92
  %209 = fmul float %207, %97
  %210 = sdiv i32 62, 13
  %211 = fsub float %146, %209
  %212 = sdiv i32 16, 35
  %213 = fmul float %211, %99
  %214 = mul i32 108, 101
  %215 = fmul float %207, %96
  %216 = add i32 33, -69
  %217 = fsub float %213, %215
  %218 = sub i32 111, -42
  %219 = fsub float %217, %149
  %220 = add i32 89, 4
  %221 = fmul float %141, %98
  %222 = mul i32 58, 80
  %223 = fmul float %221, %100
  %224 = fsub float %219, %223
  %225 = fmul float %224, 8.000000e+00
  %226 = fmul float %152, 3.000000e+01
  %227 = fmul float %153, %99
  %228 = fmul float %147, %100
  %229 = fadd float %227, %228
  %230 = fmul float %226, %229
  %231 = fadd float %230, %91
  %232 = fptosi float %231 to i32
  %233 = fptosi float %225 to i32
  %234 = icmp slt i32 %192, %5
  %235 = icmp sgt i32 %192, 0
  %236 = xor i1 %235, true
  %237 = xor i1 %236, false
  %238 = xor i1 %234, true
  %239 = and i1 %238, %237
  %240 = xor i1 %237, true
  %241 = and i1 %234, %240
  %242 = or i1 %239, %241
  %243 = xor i1 %242, true
  %244 = or i1 %243, %234
  %245 = xor i1 %242, true
  %246 = sub i1 %244, %245
  %247 = icmp sgt i32 %232, 0
  %248 = select i1 %246, i1 %247, i1 false
  %249 = icmp slt i32 %232, %6
  %250 = select i1 %248, i1 %249, i1 false
  br label %289

251:                                              ; preds = %190
  %252 = sub i32 42, 77
  %253 = fmul float %95, %141
  %254 = sdiv i32 3, 92
  %255 = fmul float %253, %97
  %256 = sdiv i32 62, 13
  %257 = fsub float %146, %255
  %258 = sdiv i32 16, 35
  %259 = fmul float %257, %99
  %260 = mul i32 108, 101
  %261 = fmul float %253, %96
  %262 = sub i32 33, 69
  %263 = fsub float %259, %261
  %264 = add i32 111, 42
  %265 = fsub float %263, %149
  %266 = add i32 26, 67
  %267 = fmul float %141, %98
  %268 = mul i32 58, 80
  %269 = fmul float %267, %100
  %270 = fsub float %265, %269
  %271 = fmul float %270, 8.000000e+00
  %272 = fmul float %152, 3.000000e+01
  %273 = fmul float %153, %99
  %274 = fmul float %147, %100
  %275 = fadd float %273, %274
  %276 = fmul float %272, %275
  %277 = fadd float %276, %91
  %278 = fptosi float %277 to i32
  %279 = fptosi float %271 to i32
  %280 = icmp slt i32 %192, %5
  %281 = icmp sgt i32 %192, 0
  %282 = xor i1 %281, true
  %283 = xor i1 %280, %282
  %284 = and i1 %283, %280
  %285 = icmp sgt i32 %278, 0
  %286 = select i1 %284, i1 %285, i1 false
  %287 = icmp slt i32 %278, %6
  %288 = select i1 %286, i1 %287, i1 false
  br i1 %204, label %289, label %138

289:                                              ; preds = %251, %205
  %290 = phi i32 [ %252, %251 ], [ %206, %205 ]
  %291 = phi float [ %253, %251 ], [ %207, %205 ]
  %292 = phi i32 [ %254, %251 ], [ %208, %205 ]
  %293 = phi float [ %255, %251 ], [ %209, %205 ]
  %294 = phi i32 [ %256, %251 ], [ %210, %205 ]
  %295 = phi float [ %257, %251 ], [ %211, %205 ]
  %296 = phi i32 [ %258, %251 ], [ %212, %205 ]
  %297 = phi float [ %259, %251 ], [ %213, %205 ]
  %298 = phi i32 [ %260, %251 ], [ %214, %205 ]
  %299 = phi float [ %261, %251 ], [ %215, %205 ]
  %300 = phi i32 [ %262, %251 ], [ %216, %205 ]
  %301 = phi float [ %263, %251 ], [ %217, %205 ]
  %302 = phi i32 [ %264, %251 ], [ %218, %205 ]
  %303 = phi float [ %265, %251 ], [ %219, %205 ]
  %304 = phi i32 [ %266, %251 ], [ %220, %205 ]
  %305 = phi float [ %267, %251 ], [ %221, %205 ]
  %306 = phi i32 [ %268, %251 ], [ %222, %205 ]
  %307 = phi float [ %269, %251 ], [ %223, %205 ]
  %308 = phi float [ %270, %251 ], [ %224, %205 ]
  %309 = phi float [ %271, %251 ], [ %225, %205 ]
  %310 = phi float [ %272, %251 ], [ %226, %205 ]
  %311 = phi float [ %273, %251 ], [ %227, %205 ]
  %312 = phi float [ %274, %251 ], [ %228, %205 ]
  %313 = phi float [ %275, %251 ], [ %229, %205 ]
  %314 = phi float [ %276, %251 ], [ %230, %205 ]
  %315 = phi float [ %277, %251 ], [ %231, %205 ]
  %316 = phi i32 [ %278, %251 ], [ %232, %205 ]
  %317 = phi i32 [ %279, %251 ], [ %233, %205 ]
  %318 = phi i1 [ %280, %251 ], [ %234, %205 ]
  %319 = phi i1 [ %281, %251 ], [ %235, %205 ]
  %320 = phi i1 [ %282, %251 ], [ %237, %205 ]
  %321 = phi i1 [ %283, %251 ], [ %242, %205 ]
  %322 = phi i1 [ %284, %251 ], [ %246, %205 ]
  %323 = phi i1 [ %285, %251 ], [ %247, %205 ]
  %324 = phi i1 [ %286, %251 ], [ %248, %205 ]
  %325 = phi i1 [ %287, %251 ], [ %249, %205 ]
  %326 = phi i1 [ %288, %251 ], [ %250, %205 ]
  br label %327

327:                                              ; preds = %289, %162
  %328 = phi i32 [ %192, %289 ], [ %163, %162 ]
  %329 = phi float [ %291, %289 ], [ %164, %162 ]
  %330 = phi float [ %293, %289 ], [ %165, %162 ]
  %331 = phi float [ %295, %289 ], [ %166, %162 ]
  %332 = phi float [ %297, %289 ], [ %167, %162 ]
  %333 = phi float [ %299, %289 ], [ %168, %162 ]
  %334 = phi float [ %301, %289 ], [ %169, %162 ]
  %335 = phi float [ %303, %289 ], [ %170, %162 ]
  %336 = phi float [ %305, %289 ], [ %171, %162 ]
  %337 = phi float [ %307, %289 ], [ %172, %162 ]
  %338 = phi float [ %308, %289 ], [ %173, %162 ]
  %339 = phi float [ %309, %289 ], [ %174, %162 ]
  %340 = phi float [ %310, %289 ], [ %175, %162 ]
  %341 = phi float [ %311, %289 ], [ %176, %162 ]
  %342 = phi float [ %312, %289 ], [ %177, %162 ]
  %343 = phi float [ %313, %289 ], [ %178, %162 ]
  %344 = phi float [ %314, %289 ], [ %179, %162 ]
  %345 = phi float [ %315, %289 ], [ %180, %162 ]
  %346 = phi i32 [ %316, %289 ], [ %181, %162 ]
  %347 = phi i32 [ %317, %289 ], [ %182, %162 ]
  %348 = phi i1 [ %318, %289 ], [ %183, %162 ]
  %349 = phi i1 [ %319, %289 ], [ %184, %162 ]
  %350 = phi i1 [ %322, %289 ], [ %185, %162 ]
  %351 = phi i1 [ %323, %289 ], [ %186, %162 ]
  %352 = phi i1 [ %324, %289 ], [ %187, %162 ]
  %353 = phi i1 [ %325, %289 ], [ %188, %162 ]
  %354 = phi i1 [ %326, %289 ], [ %189, %162 ]
  br i1 %354, label %355, label %476

355:                                              ; preds = %389, %327
  %356 = mul nsw i32 %328, %6
  %357 = add nsw i32 %356, %346
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %3, i64 %358
  %360 = srem i32 %6, 2
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %405

362:                                              ; preds = %355
  %363 = sdiv i32 63, 18
  %364 = load float, float* %359, align 4, !tbaa !13
  %365 = sdiv i32 60, 82
  %366 = fcmp ogt float %152, %364
  %367 = sub i32 39, 17
  %368 = srem i32 %360, 2
  %369 = icmp eq i32 %368, 0
  %370 = mul i32 %160, 2
  %371 = mul i32 %160, 2
  %372 = add i32 2, %371
  %373 = mul i32 %370, %372
  %374 = srem i32 %373, 4
  %375 = icmp eq i32 %374, 0
  %376 = mul i32 %160, %160
  %377 = add i32 %376, %160
  %378 = srem i32 %377, 2
  %379 = icmp eq i32 %378, 0
  %380 = and i1 %375, %379
  br i1 %380, label %381, label %389

381:                                              ; preds = %362
  %382 = mul i32 18, 14
  %383 = mul i32 116, 92
  %384 = sdiv i32 13, 55
  %385 = sdiv i32 101, 43
  %386 = sdiv i32 13, 45
  %387 = sub i32 20, 71
  %388 = sdiv i32 82, 11
  br label %397

389:                                              ; preds = %362
  %390 = mul i32 18, 14
  %391 = mul i32 116, 92
  %392 = sdiv i32 13, 55
  %393 = sdiv i32 101, 43
  %394 = sdiv i32 13, 45
  %395 = sub i32 -527679155, -527679104
  %396 = sdiv i32 82, 11
  br i1 %380, label %397, label %355

397:                                              ; preds = %389, %381
  %398 = phi i32 [ %390, %389 ], [ %382, %381 ]
  %399 = phi i32 [ %391, %389 ], [ %383, %381 ]
  %400 = phi i32 [ %392, %389 ], [ %384, %381 ]
  %401 = phi i32 [ %393, %389 ], [ %385, %381 ]
  %402 = phi i32 [ %394, %389 ], [ %386, %381 ]
  %403 = phi i32 [ %395, %389 ], [ %387, %381 ]
  %404 = phi i32 [ %396, %389 ], [ %388, %381 ]
  br label %408

405:                                              ; preds = %355
  %406 = load float, float* %359, align 4, !tbaa !13
  %407 = fcmp ogt float %152, %406
  br label %408

408:                                              ; preds = %405, %397
  %409 = phi float [ %406, %405 ], [ %364, %397 ]
  %410 = phi i1 [ %407, %405 ], [ %366, %397 ]
  br i1 %410, label %411, label %476

411:                                              ; preds = %448, %408
  store float %152, float* %359, align 4, !tbaa !13
  %412 = icmp sgt i32 %347, 0
  %413 = srem i32 %347, 2
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %421

415:                                              ; preds = %411
  %416 = select i1 %412, i32 %347, i32 0
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %417
  %419 = load i8, i8* %418, align 1, !tbaa !10
  %420 = getelementptr inbounds i8, i8* %4, i64 %358
  store i8 %419, i8* %420, align 1, !tbaa !10
  br label %470

421:                                              ; preds = %411
  %422 = add i32 51, 72
  %423 = select i1 %412, i32 %347, i32 0
  %424 = srem i32 %346, 2
  %425 = icmp eq i32 %424, 0
  %426 = mul i32 %6, 2
  %427 = mul i32 %6, 2
  %428 = add i32 2, %427
  %429 = mul i32 %426, %428
  %430 = srem i32 %429, 4
  %431 = icmp eq i32 %430, 0
  %432 = mul i32 %6, %6
  %433 = add i32 %432, %6
  %434 = srem i32 %433, 2
  %435 = icmp eq i32 %434, 0
  %436 = and i1 %431, %435
  br i1 %436, label %437, label %448

437:                                              ; preds = %421
  %438 = sdiv i32 21, 95
  %439 = zext i32 %423 to i64
  %440 = sdiv i32 9, 40
  %441 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %439
  %442 = add i32 -1854332491, 1854332533
  %443 = load i8, i8* %441, align 1, !tbaa !10
  %444 = mul i32 56, 99
  %445 = getelementptr inbounds i8, i8* %4, i64 %358
  %446 = add i32 78, -106
  store i8 %443, i8* %445, align 1, !tbaa !10
  %447 = mul i32 104, 118
  br label %459

448:                                              ; preds = %421
  %449 = sdiv i32 21, 95
  %450 = zext i32 %423 to i64
  %451 = sdiv i32 9, 40
  %452 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %450
  %453 = sub i32 102, 60
  %454 = load i8, i8* %452, align 1, !tbaa !10
  %455 = mul i32 56, 99
  %456 = getelementptr inbounds i8, i8* %4, i64 %358
  %457 = sub i32 78, 106
  store i8 %454, i8* %456, align 1, !tbaa !10
  %458 = mul i32 104, 118
  br i1 %436, label %459, label %411

459:                                              ; preds = %448, %437
  %460 = phi i32 [ %449, %448 ], [ %438, %437 ]
  %461 = phi i64 [ %450, %448 ], [ %439, %437 ]
  %462 = phi i32 [ %451, %448 ], [ %440, %437 ]
  %463 = phi i8* [ %452, %448 ], [ %441, %437 ]
  %464 = phi i32 [ %453, %448 ], [ %442, %437 ]
  %465 = phi i8 [ %454, %448 ], [ %443, %437 ]
  %466 = phi i32 [ %455, %448 ], [ %444, %437 ]
  %467 = phi i8* [ %456, %448 ], [ %445, %437 ]
  %468 = phi i32 [ %457, %448 ], [ %446, %437 ]
  %469 = phi i32 [ %458, %448 ], [ %447, %437 ]
  br label %470

470:                                              ; preds = %459, %415
  %471 = phi i32 [ %423, %459 ], [ %416, %415 ]
  %472 = phi i64 [ %461, %459 ], [ %417, %415 ]
  %473 = phi i8* [ %463, %459 ], [ %418, %415 ]
  %474 = phi i8 [ %465, %459 ], [ %419, %415 ]
  %475 = phi i8* [ %467, %459 ], [ %420, %415 ]
  br label %476

476:                                              ; preds = %498, %470, %408, %327
  %477 = srem i32 %6, 2
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %507

479:                                              ; preds = %476
  %480 = mul i32 36, 126
  %481 = fadd double %139, 7.000000e-02
  %482 = sdiv i32 16, 70
  %483 = fptrunc double %481 to float
  %484 = mul i32 26, 75
  %485 = fpext float %483 to double
  %486 = add i32 117, 5
  %487 = fcmp olt double %485, 6.280000e+00
  %488 = mul i32 112, 0
  %489 = srem i32 %347, 2
  %490 = icmp eq i32 %489, 0
  %491 = and i32 %346, 1
  %492 = icmp eq i32 %491, 1
  %493 = mul i32 %346, %346
  %494 = add i32 %493, %346
  %495 = srem i32 %494, 2
  %496 = icmp eq i32 %495, 0
  %497 = or i1 %492, %496
  br i1 %497, label %501, label %498

498:                                              ; preds = %479
  %499 = add i32 54, 74
  %500 = add i32 98, 69
  br i1 %497, label %504, label %476

501:                                              ; preds = %479
  %502 = add i32 2147390993, -2147390865
  %503 = add i32 39, 128
  br label %504

504:                                              ; preds = %498, %501
  %505 = phi i32 [ %502, %501 ], [ %499, %498 ]
  %506 = phi i32 [ %503, %501 ], [ %500, %498 ]
  br label %512

507:                                              ; preds = %476
  %508 = fadd double %139, 7.000000e-02
  %509 = fptrunc double %508 to float
  %510 = fpext float %509 to double
  %511 = fcmp olt double %510, 6.280000e+00
  br label %512

512:                                              ; preds = %507, %504
  %513 = phi double [ %508, %507 ], [ %481, %504 ]
  %514 = phi float [ %509, %507 ], [ %483, %504 ]
  %515 = phi double [ %510, %507 ], [ %485, %504 ]
  %516 = phi i1 [ %511, %507 ], [ %487, %504 ]
  br i1 %516, label %138, label %101, !llvm.loop !18
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

11:                                               ; preds = %40, %48, %0
  %12 = phi i32 [ 5, %0 ], [ %49, %48 ], [ 0, %40 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  %15 = srem i32 %10, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %18 = sub i32 %12, -1
  %19 = icmp eq i32 %18, 10
  br label %48

20:                                               ; preds = %11
  %21 = mul i32 1, 55
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  %22 = add i32 17, 4
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %23 = add i32 51, 6
  %24 = add nuw nsw i32 %12, 1
  %25 = mul i32 12, 77
  %26 = icmp eq i32 %24, 10
  %27 = srem i32 %10, 2
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %12, 1
  %30 = icmp eq i32 %29, 1
  %31 = mul i32 %12, %12
  %32 = add i32 %31, %12
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = sub i32 4, 19
  %38 = add i32 70, 91
  %39 = mul i32 24, 87
  br label %44

40:                                               ; preds = %20
  %41 = add i32 1806594898, -1806594913
  %42 = add i32 526002691, -526002530
  %43 = mul i32 24, 87
  br i1 %35, label %44, label %11

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %41, %40 ], [ %37, %36 ]
  %46 = phi i32 [ %42, %40 ], [ %38, %36 ]
  %47 = phi i32 [ %43, %40 ], [ %39, %36 ]
  br label %48

48:                                               ; preds = %44, %17
  %49 = phi i32 [ %24, %44 ], [ %18, %17 ]
  %50 = phi i1 [ %26, %44 ], [ %19, %17 ]
  br i1 %50, label %95, label %11, !llvm.loop !19

51:                                               ; preds = %70, %167
  call void @llvm.stackrestore(i8* %5)
  %52 = srem i32 %172, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %94

55:                                               ; preds = %51
  %56 = sub i32 21, 106
  %57 = srem i32 %100, 2
  %58 = icmp eq i32 %57, 0
  %59 = mul i32 %172, 2
  %60 = mul i32 %172, 2
  %61 = add i32 2, %60
  %62 = mul i32 %59, %61
  %63 = srem i32 %62, 4
  %64 = icmp eq i32 %63, 0
  %65 = mul i32 %172, %172
  %66 = add i32 %65, %172
  %67 = srem i32 %66, 2
  %68 = icmp eq i32 %67, 0
  %69 = or i1 %64, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %71 = add i32 84, 70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %72 = mul i32 106, 52
  %73 = sdiv i32 69, 112
  %74 = mul i32 125, 114
  %75 = sdiv i32 113, 70
  %76 = add i32 103, 83
  %77 = sdiv i32 24, 50
  br i1 %69, label %86, label %51

78:                                               ; preds = %55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %79 = sub i32 0, -154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %80 = mul i32 106, 52
  %81 = sdiv i32 69, 112
  %82 = mul i32 125, 114
  %83 = sdiv i32 113, 70
  %84 = add i32 67, 119
  %85 = sdiv i32 24, 50
  br label %86

86:                                               ; preds = %70, %78
  %87 = phi i32 [ %79, %78 ], [ %71, %70 ]
  %88 = phi i32 [ %80, %78 ], [ %72, %70 ]
  %89 = phi i32 [ %81, %78 ], [ %73, %70 ]
  %90 = phi i32 [ %82, %78 ], [ %74, %70 ]
  %91 = phi i32 [ %83, %78 ], [ %75, %70 ]
  %92 = phi i32 [ %84, %78 ], [ %76, %70 ]
  %93 = phi i32 [ %85, %78 ], [ %77, %70 ]
  br label %94

94:                                               ; preds = %86, %54
  ret i32 %172

95:                                               ; preds = %121, %167, %48
  %96 = phi i64 [ %173, %167 ], [ 0, %48 ], [ 0, %121 ]
  %97 = phi i32 [ %172, %167 ], [ 0, %48 ], [ 0, %121 ]
  %98 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %96
  %99 = load i8, i8* %98, align 1, !tbaa !10
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %97, %100
  %102 = srem i32 %10, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %159

104:                                              ; preds = %95
  %105 = sdiv i32 41, 36
  %106 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %96
  %107 = srem i32 %97, 2
  %108 = icmp eq i32 %107, 0
  %109 = mul i32 %100, 2
  %110 = mul i32 %100, 2
  %111 = add i32 2, %110
  %112 = mul i32 %109, %111
  %113 = srem i32 %112, 4
  %114 = icmp eq i32 %113, 0
  %115 = mul i32 %100, %100
  %116 = mul i32 %115, %100
  %117 = add i32 %116, %100
  %118 = srem i32 %117, 2
  %119 = icmp eq i32 %118, 0
  %120 = and i1 %114, %119
  br i1 %120, label %135, label %121

121:                                              ; preds = %104
  %122 = mul i32 97, 82
  %123 = load float, float* %106, align 4, !tbaa !13
  %124 = sub i32 -776898490, -776898532
  %125 = sitofp i32 %101 to float
  %126 = mul i32 91, 6
  %127 = fadd float %123, %125
  %128 = sdiv i32 85, 73
  %129 = fptosi float %127 to i32
  %130 = mul i32 101, 46
  %131 = sub i64 %96, 615016004498812191
  %132 = add i64 %131, 1
  %133 = add i64 %132, 615016004498812191
  %134 = icmp eq i64 %133, 1760
  br i1 %120, label %147, label %95

135:                                              ; preds = %104
  %136 = mul i32 97, 82
  %137 = load float, float* %106, align 4, !tbaa !13
  %138 = sub i32 70, 28
  %139 = sitofp i32 %101 to float
  %140 = mul i32 91, 6
  %141 = fadd float %137, %139
  %142 = sdiv i32 85, 73
  %143 = fptosi float %141 to i32
  %144 = mul i32 101, 46
  %145 = add nuw nsw i64 %96, 1
  %146 = icmp eq i64 %145, 1760
  br label %147

147:                                              ; preds = %121, %135
  %148 = phi i32 [ %136, %135 ], [ %122, %121 ]
  %149 = phi float [ %137, %135 ], [ %123, %121 ]
  %150 = phi i32 [ %138, %135 ], [ %124, %121 ]
  %151 = phi float [ %139, %135 ], [ %125, %121 ]
  %152 = phi i32 [ %140, %135 ], [ %126, %121 ]
  %153 = phi float [ %141, %135 ], [ %127, %121 ]
  %154 = phi i32 [ %142, %135 ], [ %128, %121 ]
  %155 = phi i32 [ %143, %135 ], [ %129, %121 ]
  %156 = phi i32 [ %144, %135 ], [ %130, %121 ]
  %157 = phi i64 [ %145, %135 ], [ %133, %121 ]
  %158 = phi i1 [ %146, %135 ], [ %134, %121 ]
  br label %167

159:                                              ; preds = %95
  %160 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %96
  %161 = load float, float* %160, align 4, !tbaa !13
  %162 = sitofp i32 %101 to float
  %163 = fadd float %161, %162
  %164 = fptosi float %163 to i32
  %165 = sub i64 %96, -1
  %166 = icmp eq i64 %165, 1760
  br label %167

167:                                              ; preds = %159, %147
  %168 = phi float* [ %160, %159 ], [ %106, %147 ]
  %169 = phi float [ %161, %159 ], [ %149, %147 ]
  %170 = phi float [ %162, %159 ], [ %151, %147 ]
  %171 = phi float [ %163, %159 ], [ %153, %147 ]
  %172 = phi i32 [ %164, %159 ], [ %155, %147 ]
  %173 = phi i64 [ %165, %159 ], [ %157, %147 ]
  %174 = phi i1 [ %166, %159 ], [ %158, %147 ]
  br i1 %174, label %51, label %95, !llvm.loop !20
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

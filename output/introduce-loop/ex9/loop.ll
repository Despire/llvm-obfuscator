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
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %43

9:                                                ; preds = %22, %4
  %10 = sub i32 97, 92
  %11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = srem i32 %3, 2
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %5, 1
  %15 = icmp eq i32 %14, 0
  %16 = mul i32 %5, %5
  %17 = add i32 %16, %5
  %18 = mul i32 %17, 3
  %19 = srem i32 %18, 2
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %15, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %9
  %23 = mul i32 42, 66
  %24 = sdiv i32 34, 64
  %25 = sdiv i32 86, 38
  %26 = sdiv i32 60, 61
  %27 = mul i32 22, 73
  %28 = add i32 20, 2
  br i1 %21, label %36, label %9

29:                                               ; preds = %9
  %30 = mul i32 42, 66
  %31 = sdiv i32 34, 64
  %32 = sdiv i32 86, 38
  %33 = sdiv i32 60, 61
  %34 = mul i32 22, 73
  %35 = add i32 5, 17
  br label %36

36:                                               ; preds = %22, %29
  %37 = phi i32 [ %30, %29 ], [ %23, %22 ]
  %38 = phi i32 [ %31, %29 ], [ %24, %22 ]
  %39 = phi i32 [ %32, %29 ], [ %25, %22 ]
  %40 = phi i32 [ %33, %29 ], [ %26, %22 ]
  %41 = phi i32 [ %34, %29 ], [ %27, %22 ]
  %42 = phi i32 [ %35, %29 ], [ %28, %22 ]
  br label %43

43:                                               ; preds = %36, %7
  %44 = phi i32 [ %11, %36 ], [ %8, %7 ]
  br label %90

45:                                               ; preds = %59, %247
  %46 = srem i64 %91, 2
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %89

49:                                               ; preds = %45
  %50 = srem i32 %44, 2
  %51 = icmp eq i32 %50, 0
  %52 = and i64 %46, 1
  %53 = icmp eq i64 %52, 1
  %54 = mul i64 %46, %46
  %55 = add i64 %54, %46
  %56 = srem i64 %55, 2
  %57 = icmp eq i64 %56, 0
  %58 = or i1 %53, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %49
  %60 = sdiv i32 41, 41
  %61 = add i32 14, 102
  %62 = mul i32 101, 120
  %63 = sub i32 55, 6
  %64 = mul i32 91, 34
  %65 = mul i32 63, 4
  %66 = add i32 110, 37
  %67 = mul i32 97, 10
  %68 = sub i32 125, 126
  br i1 %58, label %79, label %45

69:                                               ; preds = %49
  %70 = sdiv i32 41, 41
  %71 = add i32 1774961285, -1774961169
  %72 = mul i32 101, 120
  %73 = add i32 -1691502880, 1691502929
  %74 = mul i32 91, 34
  %75 = mul i32 63, 4
  %76 = sub i32 0, -147
  %77 = mul i32 97, 10
  %78 = add i32 535880733, -535880734
  br label %79

79:                                               ; preds = %59, %69
  %80 = phi i32 [ %70, %69 ], [ %60, %59 ]
  %81 = phi i32 [ %71, %69 ], [ %61, %59 ]
  %82 = phi i32 [ %72, %69 ], [ %62, %59 ]
  %83 = phi i32 [ %73, %69 ], [ %63, %59 ]
  %84 = phi i32 [ %74, %69 ], [ %64, %59 ]
  %85 = phi i32 [ %75, %69 ], [ %65, %59 ]
  %86 = phi i32 [ %76, %69 ], [ %66, %59 ]
  %87 = phi i32 [ %77, %69 ], [ %67, %59 ]
  %88 = phi i32 [ %78, %69 ], [ %68, %59 ]
  br label %89

89:                                               ; preds = %79, %48
  ret void

90:                                               ; preds = %121, %247, %43
  %91 = phi i64 [ 0, %43 ], [ %249, %247 ], [ 0, %121 ]
  %92 = srem i32 %3, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %141

94:                                               ; preds = %90
  %95 = mul i32 52, 44
  %96 = trunc i64 %91 to i32
  %97 = srem i32 %44, 2
  %98 = icmp eq i32 %97, 0
  %99 = mul i32 %3, 2
  %100 = mul i32 %3, 2
  %101 = add i32 2, %100
  %102 = mul i32 %99, %101
  %103 = srem i32 %102, 4
  %104 = icmp eq i32 %103, 0
  %105 = mul i32 %3, %3
  %106 = mul i32 %105, %3
  %107 = add i32 %106, %3
  %108 = srem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = and i1 %104, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %94
  %112 = sdiv i32 15, 102
  %113 = urem i32 %96, 80
  %114 = sdiv i32 92, 124
  %115 = icmp eq i32 %113, 0
  %116 = add i32 88, -124
  %117 = sdiv i32 62, 75
  %118 = add i32 -1888706709, 1888706669
  %119 = add i32 1087483787, -1087483680
  %120 = add i32 10, 160
  br label %131

121:                                              ; preds = %94
  %122 = sdiv i32 15, 102
  %123 = urem i32 %96, 80
  %124 = sdiv i32 92, 124
  %125 = icmp eq i32 %123, 0
  %126 = sub i32 88, 124
  %127 = sdiv i32 62, 75
  %128 = sub i32 75, 115
  %129 = sub i32 124, 17
  %130 = add i32 88, 82
  br i1 %110, label %131, label %90

131:                                              ; preds = %121, %111
  %132 = phi i32 [ %122, %121 ], [ %112, %111 ]
  %133 = phi i32 [ %123, %121 ], [ %113, %111 ]
  %134 = phi i32 [ %124, %121 ], [ %114, %111 ]
  %135 = phi i1 [ %125, %121 ], [ %115, %111 ]
  %136 = phi i32 [ %126, %121 ], [ %116, %111 ]
  %137 = phi i32 [ %127, %121 ], [ %117, %111 ]
  %138 = phi i32 [ %128, %121 ], [ %118, %111 ]
  %139 = phi i32 [ %129, %121 ], [ %119, %111 ]
  %140 = phi i32 [ %130, %121 ], [ %120, %111 ]
  br label %145

141:                                              ; preds = %90
  %142 = trunc i64 %91 to i32
  %143 = urem i32 %142, 80
  %144 = icmp eq i32 %143, 0
  br label %145

145:                                              ; preds = %141, %131
  %146 = phi i32 [ %142, %141 ], [ %96, %131 ]
  %147 = phi i32 [ %143, %141 ], [ %133, %131 ]
  %148 = phi i1 [ %144, %141 ], [ %135, %131 ]
  br i1 %148, label %199, label %149

149:                                              ; preds = %180, %145
  %150 = getelementptr inbounds i8, i8* %0, i64 %91
  %151 = srem i32 %44, 2
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i8, i8* %150, align 1, !tbaa !10
  %155 = sext i8 %154 to i32
  br label %196

156:                                              ; preds = %149
  %157 = sdiv i32 124, 4
  %158 = load i8, i8* %150, align 1, !tbaa !10
  %159 = mul i32 17, 84
  %160 = srem i64 %91, 2
  %161 = icmp eq i64 %160, 0
  %162 = mul i32 %147, %147
  %163 = add i32 %162, %147
  %164 = mul i32 %163, 3
  %165 = srem i32 %164, 2
  %166 = icmp eq i32 %165, 0
  %167 = mul i32 %147, %147
  %168 = add i32 %167, %147
  %169 = srem i32 %168, 2
  %170 = icmp eq i32 %169, 0
  %171 = and i1 %166, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %156
  %173 = sext i8 %158 to i32
  %174 = mul i32 19, 0
  %175 = mul i32 25, 99
  %176 = mul i32 89, 73
  %177 = sub i32 1547889309, 1547889281
  %178 = mul i32 51, 75
  %179 = sub i32 2147051281, 2147051144
  br label %188

180:                                              ; preds = %156
  %181 = sext i8 %158 to i32
  %182 = mul i32 19, 0
  %183 = mul i32 25, 99
  %184 = mul i32 89, 73
  %185 = sub i32 110, 82
  %186 = mul i32 51, 75
  %187 = add i32 16, 121
  br i1 %171, label %188, label %149

188:                                              ; preds = %180, %172
  %189 = phi i32 [ %181, %180 ], [ %173, %172 ]
  %190 = phi i32 [ %182, %180 ], [ %174, %172 ]
  %191 = phi i32 [ %183, %180 ], [ %175, %172 ]
  %192 = phi i32 [ %184, %180 ], [ %176, %172 ]
  %193 = phi i32 [ %185, %180 ], [ %177, %172 ]
  %194 = phi i32 [ %186, %180 ], [ %178, %172 ]
  %195 = phi i32 [ %187, %180 ], [ %179, %172 ]
  br label %196

196:                                              ; preds = %188, %153
  %197 = phi i8 [ %158, %188 ], [ %154, %153 ]
  %198 = phi i32 [ %189, %188 ], [ %155, %153 ]
  br label %199

199:                                              ; preds = %239, %196, %145
  %200 = phi i32 [ %198, %196 ], [ 10, %145 ], [ 0, %239 ]
  %201 = call i32 @putchar(i32 %200)
  %202 = load float, float* %1, align 4, !tbaa !13
  %203 = fpext float %202 to double
  %204 = fadd double %203, 4.000000e-05
  %205 = fptrunc double %204 to float
  store float %205, float* %1, align 4, !tbaa !13
  %206 = load float, float* %2, align 4, !tbaa !13
  %207 = fpext float %206 to double
  %208 = fadd double %207, 2.000000e-05
  %209 = srem i32 %3, 2
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %241

211:                                              ; preds = %199
  %212 = sdiv i32 78, 75
  %213 = fptrunc double %208 to float
  %214 = sdiv i32 66, 104
  store float %213, float* %2, align 4, !tbaa !13
  %215 = sub i32 11, 126
  %216 = add nuw nsw i64 %91, 1
  %217 = add i32 87, 124
  %218 = icmp eq i64 %216, 1761
  %219 = sub i32 110, 29
  %220 = sdiv i32 42, 32
  %221 = add i32 112, 113
  %222 = sub i32 107, 94
  %223 = add i32 38, 15
  %224 = sdiv i32 11, 120
  %225 = srem i32 %92, 2
  %226 = icmp eq i32 %225, 0
  %227 = mul i32 %200, 2
  %228 = mul i32 %200, 2
  %229 = add i32 2, %228
  %230 = mul i32 %227, %229
  %231 = srem i32 %230, 4
  %232 = icmp eq i32 %231, 0
  %233 = mul i32 %200, %200
  %234 = add i32 %233, %200
  %235 = srem i32 %234, 2
  %236 = icmp eq i32 %235, 0
  %237 = or i1 %232, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %211
  br label %240

239:                                              ; preds = %211
  br i1 %237, label %240, label %199

240:                                              ; preds = %239, %238
  br label %247

241:                                              ; preds = %199
  %242 = fptrunc double %208 to float
  store float %242, float* %2, align 4, !tbaa !13
  %243 = sub i64 %91, 272021716340127811
  %244 = add i64 %243, 1
  %245 = add i64 %244, 272021716340127811
  %246 = icmp eq i64 %245, 1761
  br label %247

247:                                              ; preds = %241, %240
  %248 = phi float [ %242, %241 ], [ %213, %240 ]
  %249 = phi i64 [ %245, %241 ], [ %216, %240 ]
  %250 = phi i1 [ %246, %241 ], [ %218, %240 ]
  br i1 %250, label %45, label %90, !llvm.loop !15
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
  %13 = srem i32 %5, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %47, %7
  %16 = add i32 14, 18
  %17 = sdiv i32 %6, 2
  %18 = sdiv i32 114, 13
  %19 = sitofp i32 %17 to float
  %20 = add i32 1, 2
  %21 = sdiv i32 %5, 2
  %22 = add i32 16, 30
  %23 = xor i32 %21, 1
  %24 = sub i32 11, 23
  %25 = and i32 %21, 1
  %26 = mul i32 56, 3
  %27 = mul i32 2, %25
  %28 = mul i32 121, 79
  %29 = srem i32 %5, 2
  %30 = icmp eq i32 %29, 0
  %31 = mul i64 %9, %9
  %32 = add i64 %31, %9
  %33 = mul i64 %32, 3
  %34 = srem i64 %33, 2
  %35 = icmp eq i64 %34, 0
  %36 = mul i64 %9, %9
  %37 = add i64 %36, %9
  %38 = srem i64 %37, 2
  %39 = icmp eq i64 %38, 0
  %40 = and i1 %35, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %15
  %42 = add i32 %23, %27
  %43 = sitofp i32 %42 to float
  %44 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %45 = call fastcc float @_ZL3cosf(float %1) #9
  %46 = call fastcc float @_ZL3sinf(float %1) #9
  br label %56

47:                                               ; preds = %15
  %48 = xor i32 %23, %27
  %49 = and i32 %23, %27
  %50 = mul i32 2, %49
  %51 = add i32 %48, %50
  %52 = sitofp i32 %51 to float
  %53 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %54 = call fastcc float @_ZL3cosf(float %1) #9
  %55 = call fastcc float @_ZL3sinf(float %1) #9
  br i1 %40, label %56, label %15

56:                                               ; preds = %47, %41
  %57 = phi i32 [ %51, %47 ], [ %42, %41 ]
  %58 = phi float [ %52, %47 ], [ %43, %41 ]
  %59 = phi float [ %53, %47 ], [ %44, %41 ]
  %60 = phi float [ %54, %47 ], [ %45, %41 ]
  %61 = phi float [ %55, %47 ], [ %46, %41 ]
  br label %71

62:                                               ; preds = %7
  %63 = sdiv i32 %6, 2
  %64 = sitofp i32 %63 to float
  %65 = sdiv i32 %5, 2
  %66 = add nsw i32 %65, 1
  %67 = sitofp i32 %66 to float
  %68 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %69 = call fastcc float @_ZL3cosf(float %1) #9
  %70 = call fastcc float @_ZL3sinf(float %1) #9
  br label %71

71:                                               ; preds = %62, %56
  %72 = phi i32 [ %63, %62 ], [ %17, %56 ]
  %73 = phi float [ %64, %62 ], [ %19, %56 ]
  %74 = phi i32 [ %65, %62 ], [ %21, %56 ]
  %75 = phi i32 [ %66, %62 ], [ %57, %56 ]
  %76 = phi float [ %67, %62 ], [ %58, %56 ]
  %77 = phi float [ %68, %62 ], [ %59, %56 ]
  %78 = phi float [ %69, %62 ], [ %60, %56 ]
  %79 = phi float [ %70, %62 ], [ %61, %56 ]
  br label %142

80:                                               ; preds = %108, %790
  %81 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %82 = call fastcc float @_ZL3sinf(float %0) #9
  %83 = srem i32 %145, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %132

85:                                               ; preds = %80
  %86 = srem i32 %634, 2
  %87 = icmp eq i32 %86, 0
  %88 = and i32 %634, 1
  %89 = icmp eq i32 %88, 0
  %90 = mul i32 %634, %634
  %91 = add i32 %90, %634
  %92 = mul i32 %91, 3
  %93 = srem i32 %92, 2
  %94 = icmp eq i32 %93, 0
  %95 = or i1 %89, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %85
  %97 = add i32 16, -1
  %98 = fcmp une float %82, 0.000000e+00
  %99 = sub i32 1803497878, 1803497670
  %100 = fmul float %82, 2.000000e+00
  %101 = add i32 -377311966, 377311912
  %102 = select i1 %98, float %100, float %82
  %103 = mul i32 46, 38
  %104 = call fastcc float @_ZL3cosf(float %0) #9
  %105 = sub i32 2058609802, 2058609797
  %106 = sdiv i32 112, 53
  %107 = mul i32 125, 29
  br label %120

108:                                              ; preds = %85
  %109 = sub i32 16, 1
  %110 = fcmp une float %82, 0.000000e+00
  %111 = add i32 83, 125
  %112 = fmul float %82, 2.000000e+00
  %113 = sub i32 28, 82
  %114 = select i1 %110, float %112, float %82
  %115 = mul i32 46, 38
  %116 = call fastcc float @_ZL3cosf(float %0) #9
  %117 = sub i32 58, 53
  %118 = sdiv i32 112, 53
  %119 = mul i32 125, 29
  br i1 %95, label %120, label %80

120:                                              ; preds = %108, %96
  %121 = phi i32 [ %109, %108 ], [ %97, %96 ]
  %122 = phi i1 [ %110, %108 ], [ %98, %96 ]
  %123 = phi i32 [ %111, %108 ], [ %99, %96 ]
  %124 = phi float [ %112, %108 ], [ %100, %96 ]
  %125 = phi i32 [ %113, %108 ], [ %101, %96 ]
  %126 = phi float [ %114, %108 ], [ %102, %96 ]
  %127 = phi i32 [ %115, %108 ], [ %103, %96 ]
  %128 = phi float [ %116, %108 ], [ %104, %96 ]
  %129 = phi i32 [ %117, %108 ], [ %105, %96 ]
  %130 = phi i32 [ %118, %108 ], [ %106, %96 ]
  %131 = phi i32 [ %119, %108 ], [ %107, %96 ]
  br label %137

132:                                              ; preds = %80
  %133 = fcmp une float %82, 0.000000e+00
  %134 = fmul float %82, 2.000000e+00
  %135 = select i1 %133, float %134, float %82
  %136 = call fastcc float @_ZL3cosf(float %0) #9
  br label %137

137:                                              ; preds = %132, %120
  %138 = phi i1 [ %133, %132 ], [ %122, %120 ]
  %139 = phi float [ %134, %132 ], [ %124, %120 ]
  %140 = phi float [ %135, %132 ], [ %126, %120 ]
  %141 = phi float [ %136, %132 ], [ %128, %120 ]
  br label %822

142:                                              ; preds = %168, %790, %71
  %143 = phi double [ 0.000000e+00, %71 ], [ %791, %790 ], [ 0.000000e+00, %168 ]
  %144 = phi float [ 0.000000e+00, %71 ], [ %754, %790 ], [ 0.000000e+00, %168 ]
  %145 = fptosi float %144 to i32
  %146 = srem i32 %5, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %142
  %149 = add i32 91, 118
  %150 = add i32 10, 14
  %151 = sub i32 47, 2
  %152 = add i32 121, 69
  %153 = sdiv i32 5, 115
  %154 = sub i32 80, 40
  %155 = add i32 89, 63
  %156 = srem i32 %145, 2
  %157 = icmp eq i32 %156, 0
  %158 = mul i32 %145, %145
  %159 = add i32 %158, %145
  %160 = mul i32 %159, 3
  %161 = srem i32 %160, 2
  %162 = icmp eq i32 %161, 0
  %163 = mul i32 %145, %145
  %164 = add i32 %163, %145
  %165 = srem i32 %164, 2
  %166 = icmp eq i32 %165, 0
  %167 = and i1 %162, %166
  br i1 %167, label %170, label %168

168:                                              ; preds = %148
  %169 = sdiv i32 102, 88
  br i1 %167, label %172, label %142

170:                                              ; preds = %148
  %171 = sdiv i32 102, 88
  br label %172

172:                                              ; preds = %168, %170
  %173 = phi i32 [ %171, %170 ], [ %169, %168 ]
  br label %175

174:                                              ; preds = %142
  br label %175

175:                                              ; preds = %174, %172
  switch i32 %145, label %475 [
    i32 0, label %176
    i32 1, label %213
    i32 2, label %267
    i32 3, label %305
    i32 4, label %337
    i32 5, label %376
    i32 6, label %419
  ]

176:                                              ; preds = %191, %175
  %177 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %178 = srem i64 %9, 2
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %212

181:                                              ; preds = %176
  %182 = srem i64 %11, 2
  %183 = icmp eq i64 %182, 0
  %184 = and i32 %75, 1
  %185 = icmp eq i32 %184, 1
  %186 = mul i32 %75, %75
  %187 = add i32 %186, %75
  %188 = srem i32 %187, 2
  %189 = icmp eq i32 %188, 0
  %190 = or i1 %185, %189
  br i1 %190, label %198, label %191

191:                                              ; preds = %181
  %192 = add i32 34, -102
  %193 = sdiv i32 110, 63
  %194 = sub i32 17, -115
  %195 = mul i32 81, 41
  %196 = sdiv i32 106, 9
  %197 = sub i32 1989449512, 1989449420
  br i1 %190, label %205, label %176

198:                                              ; preds = %181
  %199 = sub i32 34, 102
  %200 = sdiv i32 110, 63
  %201 = add i32 17, 115
  %202 = mul i32 81, 41
  %203 = sdiv i32 106, 9
  %204 = sub i32 118, 26
  br label %205

205:                                              ; preds = %191, %198
  %206 = phi i32 [ %199, %198 ], [ %192, %191 ]
  %207 = phi i32 [ %200, %198 ], [ %193, %191 ]
  %208 = phi i32 [ %201, %198 ], [ %194, %191 ]
  %209 = phi i32 [ %202, %198 ], [ %195, %191 ]
  %210 = phi i32 [ %203, %198 ], [ %196, %191 ]
  %211 = phi i32 [ %204, %198 ], [ %197, %191 ]
  br label %212

212:                                              ; preds = %205, %180
  br label %213

213:                                              ; preds = %233, %212, %175
  %214 = phi float [ 0.000000e+00, %175 ], [ %177, %212 ], [ 0.000000e+00, %233 ]
  %215 = srem i32 %146, 2
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %263

217:                                              ; preds = %213
  %218 = mul i32 9, 17
  %219 = srem i32 %145, 2
  %220 = icmp eq i32 %219, 0
  %221 = mul i32 %2, 2
  %222 = mul i32 %2, 2
  %223 = add i32 2, %222
  %224 = mul i32 %221, %223
  %225 = srem i32 %224, 4
  %226 = icmp eq i32 %225, 0
  %227 = mul i32 %2, %2
  %228 = mul i32 %227, %2
  %229 = add i32 %228, %2
  %230 = srem i32 %229, 2
  %231 = icmp eq i32 %230, 0
  %232 = and i1 %226, %231
  br i1 %232, label %243, label %233

233:                                              ; preds = %217
  %234 = call fastcc float @_ZL3cosf(float %144) #9
  %235 = add i32 78, 19
  %236 = sub i32 7, 31
  %237 = sdiv i32 5, 74
  %238 = mul i32 25, 114
  %239 = add i32 51, 8
  %240 = mul i32 43, 97
  %241 = mul i32 87, 43
  %242 = add i32 70, 71
  br i1 %232, label %253, label %213

243:                                              ; preds = %217
  %244 = call fastcc float @_ZL3cosf(float %144) #9
  %245 = add i32 2, 95
  %246 = sub i32 -2082469908, -2082469884
  %247 = sdiv i32 5, 74
  %248 = mul i32 25, 114
  %249 = add i32 59, 0
  %250 = mul i32 43, 97
  %251 = mul i32 87, 43
  %252 = sub i32 0, -141
  br label %253

253:                                              ; preds = %233, %243
  %254 = phi float [ %244, %243 ], [ %234, %233 ]
  %255 = phi i32 [ %245, %243 ], [ %235, %233 ]
  %256 = phi i32 [ %246, %243 ], [ %236, %233 ]
  %257 = phi i32 [ %247, %243 ], [ %237, %233 ]
  %258 = phi i32 [ %248, %243 ], [ %238, %233 ]
  %259 = phi i32 [ %249, %243 ], [ %239, %233 ]
  %260 = phi i32 [ %250, %243 ], [ %240, %233 ]
  %261 = phi i32 [ %251, %243 ], [ %241, %233 ]
  %262 = phi i32 [ %252, %243 ], [ %242, %233 ]
  br label %265

263:                                              ; preds = %213
  %264 = call fastcc float @_ZL3cosf(float %144) #9
  br label %265

265:                                              ; preds = %263, %253
  %266 = phi float [ %264, %263 ], [ %254, %253 ]
  br label %267

267:                                              ; preds = %291, %265, %175
  %268 = phi float [ 0.000000e+00, %175 ], [ %266, %265 ], [ 0.000000e+00, %291 ]
  %269 = phi float [ 0.000000e+00, %175 ], [ %214, %265 ], [ 0.000000e+00, %291 ]
  %270 = call fastcc float @_ZL3sinf(float %0) #9
  %271 = srem i32 %75, 2
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %303

273:                                              ; preds = %267
  %274 = sub i32 104, 46
  %275 = mul i32 50, 29
  %276 = sub i32 103, 84
  %277 = srem i32 %2, 2
  %278 = icmp eq i32 %277, 0
  %279 = mul i32 %74, 2
  %280 = mul i32 %74, 2
  %281 = add i32 2, %280
  %282 = mul i32 %279, %281
  %283 = srem i32 %282, 4
  %284 = icmp eq i32 %283, 0
  %285 = mul i32 %74, %74
  %286 = mul i32 %285, %74
  %287 = add i32 %286, %74
  %288 = srem i32 %287, 2
  %289 = icmp eq i32 %288, 0
  %290 = and i1 %284, %289
  br i1 %290, label %295, label %291

291:                                              ; preds = %273
  %292 = add i32 120, -48
  %293 = sdiv i32 96, 75
  %294 = sdiv i32 115, 97
  br i1 %290, label %299, label %267

295:                                              ; preds = %273
  %296 = sub i32 120, 48
  %297 = sdiv i32 96, 75
  %298 = sdiv i32 115, 97
  br label %299

299:                                              ; preds = %291, %295
  %300 = phi i32 [ %296, %295 ], [ %292, %291 ]
  %301 = phi i32 [ %297, %295 ], [ %293, %291 ]
  %302 = phi i32 [ %298, %295 ], [ %294, %291 ]
  br label %304

303:                                              ; preds = %267
  br label %304

304:                                              ; preds = %303, %299
  br label %305

305:                                              ; preds = %329, %304, %175
  %306 = phi float [ 0.000000e+00, %175 ], [ %270, %304 ], [ 0.000000e+00, %329 ]
  %307 = phi float [ 0.000000e+00, %175 ], [ %268, %304 ], [ 0.000000e+00, %329 ]
  %308 = phi float [ 0.000000e+00, %175 ], [ %269, %304 ], [ 0.000000e+00, %329 ]
  %309 = call fastcc float @_ZL3sinf(float %144) #9
  %310 = srem i32 %75, 2
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %335

312:                                              ; preds = %305
  %313 = add i32 53, 45
  %314 = add i32 117, 17
  %315 = mul i32 124, 18
  %316 = sdiv i32 63, 6
  %317 = srem i64 %9, 2
  %318 = icmp eq i64 %317, 0
  %319 = and i64 %11, 1
  %320 = icmp eq i64 %319, 1
  %321 = mul i64 %11, %11
  %322 = add i64 %321, %11
  %323 = srem i64 %322, 2
  %324 = icmp eq i64 %323, 0
  %325 = or i1 %320, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %312
  %327 = sub i32 0, 93
  %328 = sub i32 96, 36
  br label %332

329:                                              ; preds = %312
  %330 = add i32 0, -93
  %331 = add i32 351591337, -351591277
  br i1 %325, label %332, label %305

332:                                              ; preds = %329, %326
  %333 = phi i32 [ %330, %329 ], [ %327, %326 ]
  %334 = phi i32 [ %331, %329 ], [ %328, %326 ]
  br label %336

335:                                              ; preds = %305
  br label %336

336:                                              ; preds = %335, %332
  br label %337

337:                                              ; preds = %360, %336, %175
  %338 = phi float [ 0.000000e+00, %175 ], [ %309, %336 ], [ 0.000000e+00, %360 ]
  %339 = phi float [ 0.000000e+00, %175 ], [ %306, %336 ], [ 0.000000e+00, %360 ]
  %340 = phi float [ 0.000000e+00, %175 ], [ %307, %336 ], [ 0.000000e+00, %360 ]
  %341 = phi float [ 0.000000e+00, %175 ], [ %308, %336 ], [ 0.000000e+00, %360 ]
  %342 = call fastcc float @_ZL3cosf(float %0) #9
  %343 = srem i32 %146, 2
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %337
  br label %375

346:                                              ; preds = %337
  %347 = mul i32 85, 97
  %348 = sdiv i32 32, 93
  %349 = sdiv i32 91, 81
  %350 = srem i64 %11, 2
  %351 = icmp eq i64 %350, 0
  %352 = and i32 %2, 1
  %353 = icmp eq i32 %352, 0
  %354 = mul i32 %2, %2
  %355 = add i32 %354, %2
  %356 = mul i32 %355, 3
  %357 = srem i32 %356, 2
  %358 = icmp eq i32 %357, 0
  %359 = or i1 %353, %358
  br i1 %359, label %365, label %360

360:                                              ; preds = %346
  %361 = sdiv i32 56, 40
  %362 = sub i32 -236184240, -236184229
  %363 = add i32 109, 0
  %364 = mul i32 67, 50
  br i1 %359, label %370, label %337

365:                                              ; preds = %346
  %366 = sdiv i32 56, 40
  %367 = sub i32 13, 24
  %368 = add i32 1, 108
  %369 = mul i32 67, 50
  br label %370

370:                                              ; preds = %360, %365
  %371 = phi i32 [ %366, %365 ], [ %361, %360 ]
  %372 = phi i32 [ %367, %365 ], [ %362, %360 ]
  %373 = phi i32 [ %368, %365 ], [ %363, %360 ]
  %374 = phi i32 [ %369, %365 ], [ %364, %360 ]
  br label %375

375:                                              ; preds = %370, %345
  br label %376

376:                                              ; preds = %406, %375, %175
  %377 = phi float [ 0.000000e+00, %175 ], [ %342, %375 ], [ 0.000000e+00, %406 ]
  %378 = phi float [ 0.000000e+00, %175 ], [ %338, %375 ], [ 0.000000e+00, %406 ]
  %379 = phi float [ 0.000000e+00, %175 ], [ %339, %375 ], [ 0.000000e+00, %406 ]
  %380 = phi float [ 0.000000e+00, %175 ], [ %340, %375 ], [ 0.000000e+00, %406 ]
  %381 = phi float [ 0.000000e+00, %175 ], [ %341, %375 ], [ 0.000000e+00, %406 ]
  %382 = fadd float %380, %12
  %383 = srem i32 %6, 2
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %376
  br label %418

386:                                              ; preds = %376
  %387 = mul i32 32, 22
  %388 = sub i32 110, 109
  %389 = sub i32 12, 102
  %390 = mul i32 87, 57
  %391 = mul i32 116, 90
  %392 = sdiv i32 1, 90
  %393 = srem i32 %6, 2
  %394 = icmp eq i32 %393, 0
  %395 = mul i64 %9, 2
  %396 = mul i64 %9, 2
  %397 = add i64 2, %396
  %398 = mul i64 %395, %397
  %399 = srem i64 %398, 4
  %400 = icmp eq i64 %399, 0
  %401 = mul i64 %9, %9
  %402 = add i64 %401, %9
  %403 = srem i64 %402, 2
  %404 = icmp eq i64 %403, 0
  %405 = or i1 %400, %404
  br i1 %405, label %410, label %406

406:                                              ; preds = %386
  %407 = add i32 65, 123
  %408 = sdiv i32 27, 91
  %409 = sdiv i32 5, 80
  br i1 %405, label %414, label %376

410:                                              ; preds = %386
  %411 = add i32 107, 81
  %412 = sdiv i32 27, 91
  %413 = sdiv i32 5, 80
  br label %414

414:                                              ; preds = %406, %410
  %415 = phi i32 [ %411, %410 ], [ %407, %406 ]
  %416 = phi i32 [ %412, %410 ], [ %408, %406 ]
  %417 = phi i32 [ %413, %410 ], [ %409, %406 ]
  br label %418

418:                                              ; preds = %414, %385
  br label %419

419:                                              ; preds = %453, %418, %175
  %420 = phi float [ 0.000000e+00, %175 ], [ %382, %418 ], [ 0.000000e+00, %453 ]
  %421 = phi float [ 0.000000e+00, %175 ], [ %377, %418 ], [ 0.000000e+00, %453 ]
  %422 = phi float [ 0.000000e+00, %175 ], [ %378, %418 ], [ 0.000000e+00, %453 ]
  %423 = phi float [ 0.000000e+00, %175 ], [ %379, %418 ], [ 0.000000e+00, %453 ]
  %424 = phi float [ 0.000000e+00, %175 ], [ %380, %418 ], [ 0.000000e+00, %453 ]
  %425 = phi float [ 0.000000e+00, %175 ], [ %381, %418 ], [ 0.000000e+00, %453 ]
  %426 = fmul float %420, %425
  %427 = srem i32 %75, 2
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %467

429:                                              ; preds = %419
  %430 = add i32 85, 53
  %431 = fmul float %421, %426
  %432 = sdiv i32 94, 102
  %433 = fmul float %422, %423
  %434 = sdiv i32 22, 114
  %435 = fsub float %431, %433
  %436 = sub i32 109, 36
  %437 = srem i64 %9, 2
  %438 = icmp eq i64 %437, 0
  %439 = and i32 %8, 1
  %440 = icmp eq i32 %439, 1
  %441 = mul i32 %8, %8
  %442 = add i32 %441, %8
  %443 = srem i32 %442, 2
  %444 = icmp eq i32 %443, 0
  %445 = or i1 %440, %444
  br i1 %445, label %446, label %453

446:                                              ; preds = %429
  %447 = sdiv i32 66, 26
  %448 = add i32 -1509270501, 1509270467
  %449 = add i32 24, -57
  %450 = sub i32 1159251558, 1159251634
  %451 = add i32 41, -61
  %452 = sdiv i32 24, 0
  br label %460

453:                                              ; preds = %429
  %454 = sdiv i32 66, 26
  %455 = sub i32 86, 120
  %456 = sub i32 24, 57
  %457 = sub i32 25, 101
  %458 = sub i32 41, 61
  %459 = sdiv i32 24, 0
  br i1 %445, label %460, label %419

460:                                              ; preds = %453, %446
  %461 = phi i32 [ %454, %453 ], [ %447, %446 ]
  %462 = phi i32 [ %455, %453 ], [ %448, %446 ]
  %463 = phi i32 [ %456, %453 ], [ %449, %446 ]
  %464 = phi i32 [ %457, %453 ], [ %450, %446 ]
  %465 = phi i32 [ %458, %453 ], [ %451, %446 ]
  %466 = phi i32 [ %459, %453 ], [ %452, %446 ]
  br label %471

467:                                              ; preds = %419
  %468 = fmul float %421, %426
  %469 = fmul float %422, %423
  %470 = fsub float %468, %469
  br label %471

471:                                              ; preds = %467, %460
  %472 = phi float [ %468, %467 ], [ %431, %460 ]
  %473 = phi float [ %469, %467 ], [ %433, %460 ]
  %474 = phi float [ %470, %467 ], [ %435, %460 ]
  br label %475

475:                                              ; preds = %570, %471, %175
  %476 = phi float [ 0.000000e+00, %175 ], [ %474, %471 ], [ 0.000000e+00, %570 ]
  %477 = phi float [ 0.000000e+00, %175 ], [ %420, %471 ], [ 0.000000e+00, %570 ]
  %478 = phi float [ 0.000000e+00, %175 ], [ %421, %471 ], [ 0.000000e+00, %570 ]
  %479 = phi float [ 0.000000e+00, %175 ], [ %422, %471 ], [ 0.000000e+00, %570 ]
  %480 = phi float [ 0.000000e+00, %175 ], [ %423, %471 ], [ 0.000000e+00, %570 ]
  %481 = phi float [ 0.000000e+00, %175 ], [ %424, %471 ], [ 0.000000e+00, %570 ]
  %482 = phi float [ 0.000000e+00, %175 ], [ %425, %471 ], [ 0.000000e+00, %570 ]
  %483 = fmul float %477, %482
  %484 = fmul float %480, %483
  %485 = fmul float %478, %479
  %486 = fadd float %485, %484
  %487 = fadd float %486, 5.000000e+00
  %488 = fdiv float 1.000000e+00, %487
  %489 = fmul float %488, 3.000000e+01
  %490 = srem i32 %13, 2
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %529

492:                                              ; preds = %475
  %493 = fmul float %477, %77
  %494 = fmul float %493, %78
  %495 = fmul float %476, %79
  %496 = fadd float %494, %495
  %497 = fmul float %496, %489
  %498 = fadd float %497, %73
  %499 = fptosi float %498 to i32
  %500 = fmul float %488, 1.500000e+01
  %501 = fmul float %493, %79
  %502 = fmul float %476, %78
  %503 = fsub float %501, %502
  %504 = fmul float %503, %500
  %505 = fadd float %504, %76
  %506 = fptosi float %505 to i32
  %507 = fmul float %479, %480
  %508 = fmul float %481, %482
  %509 = fmul float %478, %508
  %510 = fsub float %507, %509
  %511 = fmul float %78, %510
  %512 = fmul float %480, %508
  %513 = fsub float %511, %512
  %514 = fsub float %513, %485
  %515 = fmul float %481, %77
  %516 = fmul float %515, %79
  %517 = fsub float %514, %516
  %518 = fmul float %517, 8.000000e+00
  %519 = fptosi float %518 to i32
  %520 = icmp slt i32 %506, %5
  %521 = icmp sgt i32 %506, 0
  %522 = xor i1 %521, true
  %523 = xor i1 %520, %522
  %524 = and i1 %523, %520
  %525 = icmp sgt i32 %499, 0
  %526 = select i1 %524, i1 %525, i1 false
  %527 = icmp slt i32 %499, %6
  %528 = select i1 %526, i1 %527, i1 false
  br label %620

529:                                              ; preds = %475
  %530 = sdiv i32 77, 16
  %531 = fmul float %477, %77
  %532 = add i32 27, 1
  %533 = fmul float %531, %78
  %534 = sdiv i32 124, 38
  %535 = fmul float %476, %79
  %536 = sub i32 68, 41
  %537 = fadd float %533, %535
  %538 = add i32 96, 40
  %539 = fmul float %537, %489
  %540 = add i32 62, 54
  %541 = fadd float %539, %73
  %542 = sub i32 97, 11
  %543 = fptosi float %541 to i32
  %544 = fmul float %488, 1.500000e+01
  %545 = fmul float %531, %79
  %546 = fmul float %476, %78
  %547 = fsub float %545, %546
  %548 = fmul float %547, %544
  %549 = fadd float %548, %76
  %550 = fptosi float %549 to i32
  %551 = fmul float %479, %480
  %552 = fmul float %481, %482
  %553 = fmul float %478, %552
  %554 = fsub float %551, %553
  %555 = fmul float %78, %554
  %556 = srem i32 %2, 2
  %557 = icmp eq i32 %556, 0
  %558 = mul i32 %5, 2
  %559 = mul i32 %5, 2
  %560 = add i32 2, %559
  %561 = mul i32 %558, %560
  %562 = srem i32 %561, 4
  %563 = icmp eq i32 %562, 0
  %564 = mul i32 %5, %5
  %565 = mul i32 %564, %5
  %566 = add i32 %565, %5
  %567 = srem i32 %566, 2
  %568 = icmp eq i32 %567, 0
  %569 = and i1 %563, %568
  br i1 %569, label %586, label %570

570:                                              ; preds = %529
  %571 = fmul float %480, %552
  %572 = fsub float %555, %571
  %573 = fsub float %572, %485
  %574 = fmul float %481, %77
  %575 = fmul float %574, %79
  %576 = fsub float %573, %575
  %577 = fmul float %576, 8.000000e+00
  %578 = fptosi float %577 to i32
  %579 = icmp slt i32 %550, %5
  %580 = icmp sgt i32 %550, 0
  %581 = and i1 %579, %580
  %582 = icmp sgt i32 %543, 0
  %583 = select i1 %581, i1 %582, i1 false
  %584 = icmp slt i32 %543, %6
  %585 = select i1 %583, i1 %584, i1 false
  br i1 %569, label %604, label %475

586:                                              ; preds = %529
  %587 = fmul float %480, %552
  %588 = fsub float %555, %587
  %589 = fsub float %588, %485
  %590 = fmul float %481, %77
  %591 = fmul float %590, %79
  %592 = fsub float %589, %591
  %593 = fmul float %592, 8.000000e+00
  %594 = fptosi float %593 to i32
  %595 = icmp slt i32 %550, %5
  %596 = icmp sgt i32 %550, 0
  %597 = xor i1 %596, true
  %598 = xor i1 %595, %597
  %599 = and i1 %598, %595
  %600 = icmp sgt i32 %543, 0
  %601 = select i1 %599, i1 %600, i1 false
  %602 = icmp slt i32 %543, %6
  %603 = select i1 %601, i1 %602, i1 false
  br label %604

604:                                              ; preds = %570, %586
  %605 = phi float [ %587, %586 ], [ %571, %570 ]
  %606 = phi float [ %588, %586 ], [ %572, %570 ]
  %607 = phi float [ %589, %586 ], [ %573, %570 ]
  %608 = phi float [ %590, %586 ], [ %574, %570 ]
  %609 = phi float [ %591, %586 ], [ %575, %570 ]
  %610 = phi float [ %592, %586 ], [ %576, %570 ]
  %611 = phi float [ %593, %586 ], [ %577, %570 ]
  %612 = phi i32 [ %594, %586 ], [ %578, %570 ]
  %613 = phi i1 [ %595, %586 ], [ %579, %570 ]
  %614 = phi i1 [ %596, %586 ], [ %580, %570 ]
  %615 = phi i1 [ %599, %586 ], [ %581, %570 ]
  %616 = phi i1 [ %600, %586 ], [ %582, %570 ]
  %617 = phi i1 [ %601, %586 ], [ %583, %570 ]
  %618 = phi i1 [ %602, %586 ], [ %584, %570 ]
  %619 = phi i1 [ %603, %586 ], [ %585, %570 ]
  br label %620

620:                                              ; preds = %604, %492
  %621 = phi float [ %531, %604 ], [ %493, %492 ]
  %622 = phi float [ %533, %604 ], [ %494, %492 ]
  %623 = phi float [ %535, %604 ], [ %495, %492 ]
  %624 = phi float [ %537, %604 ], [ %496, %492 ]
  %625 = phi float [ %539, %604 ], [ %497, %492 ]
  %626 = phi float [ %541, %604 ], [ %498, %492 ]
  %627 = phi i32 [ %543, %604 ], [ %499, %492 ]
  %628 = phi float [ %544, %604 ], [ %500, %492 ]
  %629 = phi float [ %545, %604 ], [ %501, %492 ]
  %630 = phi float [ %546, %604 ], [ %502, %492 ]
  %631 = phi float [ %547, %604 ], [ %503, %492 ]
  %632 = phi float [ %548, %604 ], [ %504, %492 ]
  %633 = phi float [ %549, %604 ], [ %505, %492 ]
  %634 = phi i32 [ %550, %604 ], [ %506, %492 ]
  %635 = phi float [ %551, %604 ], [ %507, %492 ]
  %636 = phi float [ %552, %604 ], [ %508, %492 ]
  %637 = phi float [ %553, %604 ], [ %509, %492 ]
  %638 = phi float [ %554, %604 ], [ %510, %492 ]
  %639 = phi float [ %555, %604 ], [ %511, %492 ]
  %640 = phi float [ %605, %604 ], [ %512, %492 ]
  %641 = phi float [ %606, %604 ], [ %513, %492 ]
  %642 = phi float [ %607, %604 ], [ %514, %492 ]
  %643 = phi float [ %608, %604 ], [ %515, %492 ]
  %644 = phi float [ %609, %604 ], [ %516, %492 ]
  %645 = phi float [ %610, %604 ], [ %517, %492 ]
  %646 = phi float [ %611, %604 ], [ %518, %492 ]
  %647 = phi i32 [ %612, %604 ], [ %519, %492 ]
  %648 = phi i1 [ %613, %604 ], [ %520, %492 ]
  %649 = phi i1 [ %614, %604 ], [ %521, %492 ]
  %650 = phi i1 [ %615, %604 ], [ %524, %492 ]
  %651 = phi i1 [ %616, %604 ], [ %525, %492 ]
  %652 = phi i1 [ %617, %604 ], [ %526, %492 ]
  %653 = phi i1 [ %618, %604 ], [ %527, %492 ]
  %654 = phi i1 [ %619, %604 ], [ %528, %492 ]
  br i1 %654, label %655, label %752

655:                                              ; preds = %685, %620
  %656 = mul nsw i32 %634, %6
  %657 = add nsw i32 %656, %627
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds float, float* %3, i64 %658
  %660 = srem i32 %72, 2
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %700

662:                                              ; preds = %655
  %663 = sdiv i32 58, 42
  %664 = load float, float* %659, align 4, !tbaa !13
  %665 = add i32 45, 51
  %666 = fcmp ogt float %488, %664
  %667 = sdiv i32 48, 120
  %668 = add i32 58, 30
  %669 = sdiv i32 74, 64
  %670 = sdiv i32 18, 8
  %671 = srem i32 %2, 2
  %672 = icmp eq i32 %671, 0
  %673 = mul i32 %656, 2
  %674 = mul i32 %656, 2
  %675 = add i32 2, %674
  %676 = mul i32 %673, %675
  %677 = srem i32 %676, 4
  %678 = icmp eq i32 %677, 0
  %679 = mul i32 %656, %656
  %680 = mul i32 %679, %656
  %681 = add i32 %680, %656
  %682 = srem i32 %681, 2
  %683 = icmp eq i32 %682, 0
  %684 = and i1 %678, %683
  br i1 %684, label %690, label %685

685:                                              ; preds = %662
  %686 = sub i32 0, -209
  %687 = sub i32 0, -77
  %688 = add i32 5, 192
  %689 = mul i32 48, 64
  br i1 %684, label %695, label %655

690:                                              ; preds = %662
  %691 = add i32 98, 111
  %692 = add i32 57, 20
  %693 = add i32 100, 97
  %694 = mul i32 48, 64
  br label %695

695:                                              ; preds = %685, %690
  %696 = phi i32 [ %691, %690 ], [ %686, %685 ]
  %697 = phi i32 [ %692, %690 ], [ %687, %685 ]
  %698 = phi i32 [ %693, %690 ], [ %688, %685 ]
  %699 = phi i32 [ %694, %690 ], [ %689, %685 ]
  br label %703

700:                                              ; preds = %655
  %701 = load float, float* %659, align 4, !tbaa !13
  %702 = fcmp ogt float %488, %701
  br label %703

703:                                              ; preds = %700, %695
  %704 = phi float [ %701, %700 ], [ %664, %695 ]
  %705 = phi i1 [ %702, %700 ], [ %666, %695 ]
  br i1 %705, label %706, label %752

706:                                              ; preds = %738, %703
  store float %488, float* %659, align 4, !tbaa !13
  %707 = icmp sgt i32 %647, 0
  %708 = select i1 %707, i32 %647, i32 0
  %709 = zext i32 %708 to i64
  %710 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %709
  %711 = load i8, i8* %710, align 1, !tbaa !10
  %712 = srem i32 %2, 2
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %716

714:                                              ; preds = %706
  %715 = getelementptr inbounds i8, i8* %4, i64 %658
  store i8 %711, i8* %715, align 1, !tbaa !10
  br label %750

716:                                              ; preds = %706
  %717 = sub i32 7, 85
  %718 = getelementptr inbounds i8, i8* %4, i64 %658
  %719 = sdiv i32 1, 30
  store i8 %711, i8* %718, align 1, !tbaa !10
  %720 = add i32 49, 54
  %721 = sdiv i32 6, 86
  %722 = srem i32 %146, 2
  %723 = icmp eq i32 %722, 0
  %724 = and i32 %6, 1
  %725 = icmp eq i32 %724, 0
  %726 = mul i32 %6, %6
  %727 = add i32 %726, %6
  %728 = mul i32 %727, 3
  %729 = srem i32 %728, 2
  %730 = icmp eq i32 %729, 0
  %731 = or i1 %725, %730
  br i1 %731, label %732, label %738

732:                                              ; preds = %716
  %733 = add i32 96, 77
  %734 = sdiv i32 7, 80
  %735 = sub i32 46, 45
  %736 = sdiv i32 17, 102
  %737 = add i32 122, 13
  br label %744

738:                                              ; preds = %716
  %739 = sub i32 96, -77
  %740 = sdiv i32 7, 80
  %741 = sub i32 -504913993, -504913994
  %742 = sdiv i32 17, 102
  %743 = add i32 -1739573683, 1739573818
  br i1 %731, label %744, label %706

744:                                              ; preds = %738, %732
  %745 = phi i32 [ %739, %738 ], [ %733, %732 ]
  %746 = phi i32 [ %740, %738 ], [ %734, %732 ]
  %747 = phi i32 [ %741, %738 ], [ %735, %732 ]
  %748 = phi i32 [ %742, %738 ], [ %736, %732 ]
  %749 = phi i32 [ %743, %738 ], [ %737, %732 ]
  br label %750

750:                                              ; preds = %744, %714
  %751 = phi i8* [ %718, %744 ], [ %715, %714 ]
  br label %752

752:                                              ; preds = %777, %750, %703, %620
  %753 = fadd double %143, 7.000000e-02
  %754 = fptrunc double %753 to float
  %755 = srem i32 %627, 2
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %787

757:                                              ; preds = %752
  %758 = add i32 98, 71
  %759 = fpext float %754 to double
  %760 = sub i32 93, 45
  %761 = fcmp olt double %759, 6.280000e+00
  %762 = mul i32 27, 55
  %763 = srem i64 %9, 2
  %764 = icmp eq i64 %763, 0
  %765 = and i32 %145, 1
  %766 = icmp eq i32 %765, 1
  %767 = mul i32 %145, %145
  %768 = add i32 %767, %145
  %769 = srem i32 %768, 2
  %770 = icmp eq i32 %769, 0
  %771 = or i1 %766, %770
  br i1 %771, label %772, label %777

772:                                              ; preds = %757
  %773 = add i32 116, 120
  %774 = sub i32 90, 50
  %775 = add i32 94, 79
  %776 = sub i32 99, 29
  br label %782

777:                                              ; preds = %757
  %778 = sub i32 -1488447679, -1488447915
  %779 = sub i32 1863800815, 1863800775
  %780 = add i32 17, 156
  %781 = sub i32 1400824394, 1400824324
  br i1 %771, label %782, label %752

782:                                              ; preds = %777, %772
  %783 = phi i32 [ %778, %777 ], [ %773, %772 ]
  %784 = phi i32 [ %779, %777 ], [ %774, %772 ]
  %785 = phi i32 [ %780, %777 ], [ %775, %772 ]
  %786 = phi i32 [ %781, %777 ], [ %776, %772 ]
  br label %790

787:                                              ; preds = %752
  %788 = fpext float %754 to double
  %789 = fcmp olt double %788, 6.280000e+00
  br label %790

790:                                              ; preds = %787, %782
  %791 = phi double [ %788, %787 ], [ %759, %782 ]
  %792 = phi i1 [ %789, %787 ], [ %761, %782 ]
  br i1 %792, label %142, label %80, !llvm.loop !18

793:                                              ; preds = %815, %1210
  %794 = srem i32 %755, 2
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %797

796:                                              ; preds = %793
  br label %821

797:                                              ; preds = %793
  %798 = sub i32 99, 54
  %799 = mul i32 65, 25
  %800 = sub i32 26, 60
  %801 = mul i32 19, 46
  %802 = sub i32 117, 17
  %803 = mul i32 50, 78
  %804 = sdiv i32 32, 60
  %805 = srem i32 %72, 2
  %806 = icmp eq i32 %805, 0
  %807 = and i32 %146, 1
  %808 = icmp eq i32 %807, 0
  %809 = mul i32 %146, %146
  %810 = add i32 %809, %146
  %811 = mul i32 %810, 3
  %812 = srem i32 %811, 2
  %813 = icmp eq i32 %812, 0
  %814 = or i1 %808, %813
  br i1 %814, label %817, label %815

815:                                              ; preds = %797
  %816 = mul i32 37, 124
  br i1 %814, label %819, label %793

817:                                              ; preds = %797
  %818 = mul i32 37, 124
  br label %819

819:                                              ; preds = %815, %817
  %820 = phi i32 [ %818, %817 ], [ %816, %815 ]
  br label %821

821:                                              ; preds = %819, %796
  ret void

822:                                              ; preds = %926, %1210, %137
  %823 = phi double [ 0.000000e+00, %137 ], [ %1212, %1210 ], [ 0.000000e+00, %926 ]
  %824 = phi i32 [ 0, %137 ], [ %826, %1210 ], [ 0, %926 ]
  %825 = phi float [ 0.000000e+00, %137 ], [ %1211, %1210 ], [ 0.000000e+00, %926 ]
  %826 = add nuw nsw i32 %824, 1
  %827 = sitofp i32 %824 to float
  %828 = fadd float %81, %827
  %829 = call fastcc float @_ZL3cosf(float %825) #9
  %830 = fcmp une float %828, 0.000000e+00
  %831 = fmul float %828, 2.000000e+00
  %832 = fmul float %829, 2.000000e+00
  %833 = select i1 %830, float %831, float %828
  %834 = select i1 %830, float %829, float %832
  %835 = call fastcc float @_ZL3sinf(float %825) #9
  %836 = fmul float %835, 2.000000e+00
  %837 = select i1 %138, float %835, float %836
  %838 = fadd float %834, %12
  %839 = fmul float %833, %838
  %840 = fmul float %141, %839
  %841 = fmul float %140, %837
  %842 = fsub float %840, %841
  %843 = fcmp une float %838, 0.000000e+00
  %844 = fmul float %842, 2.000000e+00
  %845 = fmul float %838, 2.000000e+00
  %846 = select i1 %843, float %838, float %845
  %847 = select i1 %843, float %844, float %842
  %848 = fmul float %833, %846
  %849 = fmul float %140, %848
  %850 = fmul float %141, %837
  %851 = fadd float %850, %849
  %852 = fadd float %851, 5.000000e+00
  %853 = fdiv float 1.000000e+00, %852
  %854 = srem i64 %9, 2
  %855 = icmp eq i64 %854, 0
  br i1 %855, label %856, label %891

856:                                              ; preds = %822
  %857 = fmul float %853, 3.000000e+01
  %858 = fmul float %77, %846
  %859 = fmul float %78, %858
  %860 = fmul float %79, %847
  %861 = fadd float %859, %860
  %862 = fmul float %861, %857
  %863 = fadd float %862, %73
  %864 = fptosi float %863 to i32
  %865 = fmul float %853, 1.500000e+01
  %866 = fmul float %858, %79
  %867 = fmul float %78, %847
  %868 = fsub float %866, %867
  %869 = fmul float %868, %865
  %870 = fadd float %869, %76
  %871 = fptosi float %870 to i32
  %872 = fmul float %833, %834
  %873 = fmul float %872, %141
  %874 = fsub float %841, %873
  %875 = fmul float %78, %874
  %876 = fmul float %872, %140
  %877 = fsub float %875, %876
  %878 = fsub float %877, %850
  %879 = fmul float %834, %77
  %880 = fmul float %879, %79
  %881 = fsub float %878, %880
  %882 = fmul float %881, 8.000000e+00
  %883 = fptosi float %882 to i32
  %884 = icmp slt i32 %871, %5
  %885 = icmp sgt i32 %871, 0
  %886 = and i1 %884, %885
  %887 = icmp sgt i32 %864, 0
  %888 = select i1 %886, i1 %887, i1 false
  %889 = icmp slt i32 %864, %6
  %890 = select i1 %888, i1 %889, i1 false
  br label %1014

891:                                              ; preds = %822
  %892 = sub i32 101, 58
  %893 = fmul float %853, 3.000000e+01
  %894 = sub i32 110, 58
  %895 = fmul float %77, %846
  %896 = sub i32 8, 123
  %897 = fmul float %78, %895
  %898 = add i32 93, 125
  %899 = fmul float %79, %847
  %900 = sdiv i32 63, 6
  %901 = fadd float %897, %899
  %902 = mul i32 72, 86
  %903 = fmul float %901, %893
  %904 = mul i32 72, 51
  %905 = fadd float %903, %73
  %906 = sub i32 35, 23
  %907 = fptosi float %905 to i32
  %908 = sub i32 64, 13
  %909 = fmul float %853, 1.500000e+01
  %910 = add i32 72, 18
  %911 = fmul float %895, %79
  %912 = fmul float %78, %847
  %913 = srem i32 %13, 2
  %914 = icmp eq i32 %913, 0
  %915 = mul i32 %826, 2
  %916 = mul i32 %826, 2
  %917 = add i32 2, %916
  %918 = mul i32 %915, %917
  %919 = srem i32 %918, 4
  %920 = icmp eq i32 %919, 0
  %921 = mul i32 %826, %826
  %922 = add i32 %921, %826
  %923 = srem i32 %922, 2
  %924 = icmp eq i32 %923, 0
  %925 = and i1 %920, %924
  br i1 %925, label %962, label %926

926:                                              ; preds = %891
  %927 = fsub float %911, %912
  %928 = fmul float %927, %909
  %929 = fadd float %928, %76
  %930 = fptosi float %929 to i32
  %931 = fmul float %833, %834
  %932 = fmul float %931, %141
  %933 = fsub float %841, %932
  %934 = fmul float %78, %933
  %935 = fmul float %931, %140
  %936 = fsub float %934, %935
  %937 = fsub float %936, %850
  %938 = fmul float %834, %77
  %939 = fmul float %938, %79
  %940 = fsub float %937, %939
  %941 = fmul float %940, 8.000000e+00
  %942 = fptosi float %941 to i32
  %943 = icmp slt i32 %930, %5
  %944 = icmp sgt i32 %930, 0
  %945 = xor i1 %944, true
  %946 = and i1 %945, true
  %947 = and i1 %944, false
  %948 = or i1 %946, %947
  %949 = xor i1 %943, true
  %950 = and i1 %949, %948
  %951 = xor i1 %948, true
  %952 = and i1 %943, %951
  %953 = or i1 %950, %952
  %954 = xor i1 %953, true
  %955 = or i1 %954, %943
  %956 = xor i1 %953, true
  %957 = sub i1 %955, %956
  %958 = icmp sgt i32 %907, 0
  %959 = select i1 %957, i1 %958, i1 false
  %960 = icmp slt i32 %907, %6
  %961 = select i1 %959, i1 %960, i1 false
  br i1 %925, label %988, label %822

962:                                              ; preds = %891
  %963 = fsub float %911, %912
  %964 = fmul float %963, %909
  %965 = fadd float %964, %76
  %966 = fptosi float %965 to i32
  %967 = fmul float %833, %834
  %968 = fmul float %967, %141
  %969 = fsub float %841, %968
  %970 = fmul float %78, %969
  %971 = fmul float %967, %140
  %972 = fsub float %970, %971
  %973 = fsub float %972, %850
  %974 = fmul float %834, %77
  %975 = fmul float %974, %79
  %976 = fsub float %973, %975
  %977 = fmul float %976, 8.000000e+00
  %978 = fptosi float %977 to i32
  %979 = icmp slt i32 %966, %5
  %980 = icmp sgt i32 %966, 0
  %981 = xor i1 %980, true
  %982 = xor i1 %979, %981
  %983 = and i1 %982, %979
  %984 = icmp sgt i32 %907, 0
  %985 = select i1 %983, i1 %984, i1 false
  %986 = icmp slt i32 %907, %6
  %987 = select i1 %985, i1 %986, i1 false
  br label %988

988:                                              ; preds = %926, %962
  %989 = phi float [ %963, %962 ], [ %927, %926 ]
  %990 = phi float [ %964, %962 ], [ %928, %926 ]
  %991 = phi float [ %965, %962 ], [ %929, %926 ]
  %992 = phi i32 [ %966, %962 ], [ %930, %926 ]
  %993 = phi float [ %967, %962 ], [ %931, %926 ]
  %994 = phi float [ %968, %962 ], [ %932, %926 ]
  %995 = phi float [ %969, %962 ], [ %933, %926 ]
  %996 = phi float [ %970, %962 ], [ %934, %926 ]
  %997 = phi float [ %971, %962 ], [ %935, %926 ]
  %998 = phi float [ %972, %962 ], [ %936, %926 ]
  %999 = phi float [ %973, %962 ], [ %937, %926 ]
  %1000 = phi float [ %974, %962 ], [ %938, %926 ]
  %1001 = phi float [ %975, %962 ], [ %939, %926 ]
  %1002 = phi float [ %976, %962 ], [ %940, %926 ]
  %1003 = phi float [ %977, %962 ], [ %941, %926 ]
  %1004 = phi i32 [ %978, %962 ], [ %942, %926 ]
  %1005 = phi i1 [ %979, %962 ], [ %943, %926 ]
  %1006 = phi i1 [ %980, %962 ], [ %944, %926 ]
  %1007 = phi i1 [ %981, %962 ], [ %948, %926 ]
  %1008 = phi i1 [ %982, %962 ], [ %953, %926 ]
  %1009 = phi i1 [ %983, %962 ], [ %957, %926 ]
  %1010 = phi i1 [ %984, %962 ], [ %958, %926 ]
  %1011 = phi i1 [ %985, %962 ], [ %959, %926 ]
  %1012 = phi i1 [ %986, %962 ], [ %960, %926 ]
  %1013 = phi i1 [ %987, %962 ], [ %961, %926 ]
  br label %1014

1014:                                             ; preds = %988, %856
  %1015 = phi float [ %893, %988 ], [ %857, %856 ]
  %1016 = phi float [ %895, %988 ], [ %858, %856 ]
  %1017 = phi float [ %897, %988 ], [ %859, %856 ]
  %1018 = phi float [ %899, %988 ], [ %860, %856 ]
  %1019 = phi float [ %901, %988 ], [ %861, %856 ]
  %1020 = phi float [ %903, %988 ], [ %862, %856 ]
  %1021 = phi float [ %905, %988 ], [ %863, %856 ]
  %1022 = phi i32 [ %907, %988 ], [ %864, %856 ]
  %1023 = phi float [ %909, %988 ], [ %865, %856 ]
  %1024 = phi float [ %911, %988 ], [ %866, %856 ]
  %1025 = phi float [ %912, %988 ], [ %867, %856 ]
  %1026 = phi float [ %989, %988 ], [ %868, %856 ]
  %1027 = phi float [ %990, %988 ], [ %869, %856 ]
  %1028 = phi float [ %991, %988 ], [ %870, %856 ]
  %1029 = phi i32 [ %992, %988 ], [ %871, %856 ]
  %1030 = phi float [ %993, %988 ], [ %872, %856 ]
  %1031 = phi float [ %994, %988 ], [ %873, %856 ]
  %1032 = phi float [ %995, %988 ], [ %874, %856 ]
  %1033 = phi float [ %996, %988 ], [ %875, %856 ]
  %1034 = phi float [ %997, %988 ], [ %876, %856 ]
  %1035 = phi float [ %998, %988 ], [ %877, %856 ]
  %1036 = phi float [ %999, %988 ], [ %878, %856 ]
  %1037 = phi float [ %1000, %988 ], [ %879, %856 ]
  %1038 = phi float [ %1001, %988 ], [ %880, %856 ]
  %1039 = phi float [ %1002, %988 ], [ %881, %856 ]
  %1040 = phi float [ %1003, %988 ], [ %882, %856 ]
  %1041 = phi i32 [ %1004, %988 ], [ %883, %856 ]
  %1042 = phi i1 [ %1005, %988 ], [ %884, %856 ]
  %1043 = phi i1 [ %1006, %988 ], [ %885, %856 ]
  %1044 = phi i1 [ %1009, %988 ], [ %886, %856 ]
  %1045 = phi i1 [ %1010, %988 ], [ %887, %856 ]
  %1046 = phi i1 [ %1011, %988 ], [ %888, %856 ]
  %1047 = phi i1 [ %1012, %988 ], [ %889, %856 ]
  %1048 = phi i1 [ %1013, %988 ], [ %890, %856 ]
  br i1 %1048, label %1049, label %1160

1049:                                             ; preds = %1071, %1014
  %1050 = mul nsw i32 %1029, %6
  %1051 = add nsw i32 %1050, %1022
  %1052 = srem i32 %634, 2
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %1059

1054:                                             ; preds = %1049
  %1055 = sext i32 %1051 to i64
  %1056 = getelementptr inbounds float, float* %3, i64 %1055
  %1057 = load float, float* %1056, align 4, !tbaa !13
  %1058 = fcmp ogt float %853, %1057
  br label %1110

1059:                                             ; preds = %1049
  %1060 = mul i32 87, 69
  %1061 = sext i32 %1051 to i64
  %1062 = srem i32 %8, 2
  %1063 = icmp eq i32 %1062, 0
  %1064 = and i32 %13, 1
  %1065 = icmp eq i32 %1064, 1
  %1066 = mul i32 %13, %13
  %1067 = add i32 %1066, %13
  %1068 = srem i32 %1067, 2
  %1069 = icmp eq i32 %1068, 0
  %1070 = or i1 %1065, %1069
  br i1 %1070, label %1084, label %1071

1071:                                             ; preds = %1059
  %1072 = sdiv i32 59, 5
  %1073 = getelementptr inbounds float, float* %3, i64 %1061
  %1074 = mul i32 80, 57
  %1075 = load float, float* %1073, align 4, !tbaa !13
  %1076 = add i32 2098186987, -2098186872
  %1077 = fcmp ogt float %853, %1075
  %1078 = sdiv i32 26, 31
  %1079 = mul i32 48, 66
  %1080 = sub i32 1068529409, 1068529519
  %1081 = sub i32 1993800026, 1993800051
  %1082 = sdiv i32 92, 30
  %1083 = add i32 2, -42
  br i1 %1070, label %1097, label %1049

1084:                                             ; preds = %1059
  %1085 = sdiv i32 59, 5
  %1086 = getelementptr inbounds float, float* %3, i64 %1061
  %1087 = mul i32 80, 57
  %1088 = load float, float* %1086, align 4, !tbaa !13
  %1089 = add i32 42, 73
  %1090 = fcmp ogt float %853, %1088
  %1091 = sdiv i32 26, 31
  %1092 = mul i32 48, 66
  %1093 = sub i32 5, 115
  %1094 = sub i32 88, 113
  %1095 = sdiv i32 92, 30
  %1096 = sub i32 2, 42
  br label %1097

1097:                                             ; preds = %1071, %1084
  %1098 = phi i32 [ %1085, %1084 ], [ %1072, %1071 ]
  %1099 = phi float* [ %1086, %1084 ], [ %1073, %1071 ]
  %1100 = phi i32 [ %1087, %1084 ], [ %1074, %1071 ]
  %1101 = phi float [ %1088, %1084 ], [ %1075, %1071 ]
  %1102 = phi i32 [ %1089, %1084 ], [ %1076, %1071 ]
  %1103 = phi i1 [ %1090, %1084 ], [ %1077, %1071 ]
  %1104 = phi i32 [ %1091, %1084 ], [ %1078, %1071 ]
  %1105 = phi i32 [ %1092, %1084 ], [ %1079, %1071 ]
  %1106 = phi i32 [ %1093, %1084 ], [ %1080, %1071 ]
  %1107 = phi i32 [ %1094, %1084 ], [ %1081, %1071 ]
  %1108 = phi i32 [ %1095, %1084 ], [ %1082, %1071 ]
  %1109 = phi i32 [ %1096, %1084 ], [ %1083, %1071 ]
  br label %1110

1110:                                             ; preds = %1097, %1054
  %1111 = phi i64 [ %1061, %1097 ], [ %1055, %1054 ]
  %1112 = phi float* [ %1099, %1097 ], [ %1056, %1054 ]
  %1113 = phi float [ %1101, %1097 ], [ %1057, %1054 ]
  %1114 = phi i1 [ %1103, %1097 ], [ %1058, %1054 ]
  br i1 %1114, label %1115, label %1160

1115:                                             ; preds = %1145, %1110
  store float %853, float* %1112, align 4, !tbaa !13
  %1116 = icmp sgt i32 %1041, 0
  %1117 = srem i32 %1052, 2
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1119, label %1125

1119:                                             ; preds = %1115
  %1120 = select i1 %1116, i32 %1041, i32 0
  %1121 = zext i32 %1120 to i64
  %1122 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1121
  %1123 = load i8, i8* %1122, align 1, !tbaa !10
  %1124 = getelementptr inbounds i8, i8* %4, i64 %1111
  store i8 %1123, i8* %1124, align 1, !tbaa !10
  br label %1154

1125:                                             ; preds = %1115
  %1126 = sub i32 59, 98
  %1127 = select i1 %1116, i32 %1041, i32 0
  %1128 = mul i32 95, 1
  %1129 = zext i32 %1127 to i64
  %1130 = sdiv i32 40, 45
  %1131 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1129
  %1132 = add i32 32, 102
  %1133 = load i8, i8* %1131, align 1, !tbaa !10
  %1134 = sdiv i32 74, 47
  %1135 = getelementptr inbounds i8, i8* %4, i64 %1111
  %1136 = srem i32 %6, 2
  %1137 = icmp eq i32 %1136, 0
  %1138 = and i32 %634, 1
  %1139 = icmp eq i32 %1138, 1
  %1140 = mul i32 %634, %634
  %1141 = add i32 %1140, %634
  %1142 = srem i32 %1141, 2
  %1143 = icmp eq i32 %1142, 0
  %1144 = or i1 %1139, %1143
  br i1 %1144, label %1148, label %1145

1145:                                             ; preds = %1125
  %1146 = sdiv i32 37, 37
  store i8 %1133, i8* %1135, align 1, !tbaa !10
  %1147 = sub i32 0, -175
  br i1 %1144, label %1151, label %1115

1148:                                             ; preds = %1125
  %1149 = sdiv i32 37, 37
  store i8 %1133, i8* %1135, align 1, !tbaa !10
  %1150 = add i32 90, 85
  br label %1151

1151:                                             ; preds = %1145, %1148
  %1152 = phi i32 [ %1149, %1148 ], [ %1146, %1145 ]
  %1153 = phi i32 [ %1150, %1148 ], [ %1147, %1145 ]
  br label %1154

1154:                                             ; preds = %1151, %1119
  %1155 = phi i32 [ %1127, %1151 ], [ %1120, %1119 ]
  %1156 = phi i64 [ %1129, %1151 ], [ %1121, %1119 ]
  %1157 = phi i8* [ %1131, %1151 ], [ %1122, %1119 ]
  %1158 = phi i8 [ %1133, %1151 ], [ %1123, %1119 ]
  %1159 = phi i8* [ %1135, %1151 ], [ %1124, %1119 ]
  br label %1160

1160:                                             ; preds = %1192, %1154, %1110, %1014
  %1161 = fadd double %823, 7.000000e-02
  %1162 = srem i32 %490, 2
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1164, label %1168

1164:                                             ; preds = %1160
  %1165 = fptrunc double %1161 to float
  %1166 = fpext float %1165 to double
  %1167 = icmp eq i32 %826, 90
  br label %1210

1168:                                             ; preds = %1160
  %1169 = sdiv i32 46, 109
  %1170 = srem i32 %83, 2
  %1171 = icmp eq i32 %1170, 0
  %1172 = mul i32 %647, 2
  %1173 = mul i32 %647, 2
  %1174 = add i32 2, %1173
  %1175 = mul i32 %1172, %1174
  %1176 = srem i32 %1175, 4
  %1177 = icmp eq i32 %1176, 0
  %1178 = mul i32 %647, %647
  %1179 = add i32 %1178, %647
  %1180 = srem i32 %1179, 2
  %1181 = icmp eq i32 %1180, 0
  %1182 = or i1 %1177, %1181
  br i1 %1182, label %1183, label %1192

1183:                                             ; preds = %1168
  %1184 = fptrunc double %1161 to float
  %1185 = sdiv i32 121, 126
  %1186 = fpext float %1184 to double
  %1187 = sub i32 44, 0
  %1188 = icmp eq i32 %826, 90
  %1189 = sdiv i32 23, 15
  %1190 = mul i32 56, 102
  %1191 = add i32 102, 5
  br label %1201

1192:                                             ; preds = %1168
  %1193 = fptrunc double %1161 to float
  %1194 = sdiv i32 121, 126
  %1195 = fpext float %1193 to double
  %1196 = add i32 44, 0
  %1197 = icmp eq i32 %826, 90
  %1198 = sdiv i32 23, 15
  %1199 = mul i32 56, 102
  %1200 = sub i32 0, -107
  br i1 %1182, label %1201, label %1160

1201:                                             ; preds = %1192, %1183
  %1202 = phi float [ %1193, %1192 ], [ %1184, %1183 ]
  %1203 = phi i32 [ %1194, %1192 ], [ %1185, %1183 ]
  %1204 = phi double [ %1195, %1192 ], [ %1186, %1183 ]
  %1205 = phi i32 [ %1196, %1192 ], [ %1187, %1183 ]
  %1206 = phi i1 [ %1197, %1192 ], [ %1188, %1183 ]
  %1207 = phi i32 [ %1198, %1192 ], [ %1189, %1183 ]
  %1208 = phi i32 [ %1199, %1192 ], [ %1190, %1183 ]
  %1209 = phi i32 [ %1200, %1192 ], [ %1191, %1183 ]
  br label %1210

1210:                                             ; preds = %1201, %1164
  %1211 = phi float [ %1202, %1201 ], [ %1165, %1164 ]
  %1212 = phi double [ %1204, %1201 ], [ %1166, %1164 ]
  %1213 = phi i1 [ %1206, %1201 ], [ %1167, %1164 ]
  br i1 %1213, label %793, label %822, !llvm.loop !19
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

11:                                               ; preds = %34, %62, %0
  %12 = phi i32 [ 5, %0 ], [ %15, %62 ], [ 0, %34 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp eq i32 %15, 10
  %17 = srem i32 %10, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %11
  %20 = sdiv i32 87, 86
  %21 = srem i32 %10, 2
  %22 = icmp eq i32 %21, 0
  %23 = mul i32 %15, 2
  %24 = mul i32 %15, 2
  %25 = add i32 2, %24
  %26 = mul i32 %23, %25
  %27 = srem i32 %26, 4
  %28 = icmp eq i32 %27, 0
  %29 = mul i32 %15, %15
  %30 = add i32 %29, %15
  %31 = srem i32 %30, 2
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %28, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %19
  %35 = sub i32 110, -37
  %36 = add i32 690011536, -690011517
  %37 = sdiv i32 48, 123
  %38 = sdiv i32 70, 3
  %39 = add i32 2034768915, -2034768727
  %40 = sdiv i32 102, 109
  %41 = add i32 113, 28
  %42 = mul i32 58, 122
  br i1 %33, label %52, label %11

43:                                               ; preds = %19
  %44 = add i32 110, 37
  %45 = sub i32 90, 71
  %46 = sdiv i32 48, 123
  %47 = sdiv i32 70, 3
  %48 = add i32 65, 123
  %49 = sdiv i32 102, 109
  %50 = add i32 126, 15
  %51 = mul i32 58, 122
  br label %52

52:                                               ; preds = %34, %43
  %53 = phi i32 [ %44, %43 ], [ %35, %34 ]
  %54 = phi i32 [ %45, %43 ], [ %36, %34 ]
  %55 = phi i32 [ %46, %43 ], [ %37, %34 ]
  %56 = phi i32 [ %47, %43 ], [ %38, %34 ]
  %57 = phi i32 [ %48, %43 ], [ %39, %34 ]
  %58 = phi i32 [ %49, %43 ], [ %40, %34 ]
  %59 = phi i32 [ %50, %43 ], [ %41, %34 ]
  %60 = phi i32 [ %51, %43 ], [ %42, %34 ]
  br label %62

61:                                               ; preds = %11
  br label %62

62:                                               ; preds = %61, %52
  br i1 %16, label %103, label %11, !llvm.loop !20

63:                                               ; preds = %87, %169
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %64 = srem i32 %15, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %102

67:                                               ; preds = %63
  %68 = add i32 106, 73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %69 = mul i32 19, 102
  %70 = mul i32 50, 78
  %71 = sdiv i32 97, 84
  %72 = sub i32 125, 80
  %73 = add i32 96, 99
  %74 = srem i32 %12, 2
  %75 = icmp eq i32 %74, 0
  %76 = mul i32 %17, 2
  %77 = mul i32 %17, 2
  %78 = add i32 2, %77
  %79 = mul i32 %76, %78
  %80 = srem i32 %79, 4
  %81 = icmp eq i32 %80, 0
  %82 = mul i32 %17, %17
  %83 = add i32 %82, %17
  %84 = srem i32 %83, 2
  %85 = icmp eq i32 %84, 0
  %86 = or i1 %81, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %67
  %88 = sub i32 1026374478, 1026374513
  %89 = add i32 -1283898021, 1283898032
  %90 = sub i32 -227905206, -227905256
  %91 = mul i32 64, 16
  br i1 %86, label %97, label %63

92:                                               ; preds = %67
  %93 = sub i32 74, 109
  %94 = sub i32 52, 41
  %95 = sub i32 55, 5
  %96 = mul i32 64, 16
  br label %97

97:                                               ; preds = %87, %92
  %98 = phi i32 [ %93, %92 ], [ %88, %87 ]
  %99 = phi i32 [ %94, %92 ], [ %89, %87 ]
  %100 = phi i32 [ %95, %92 ], [ %90, %87 ]
  %101 = phi i32 [ %96, %92 ], [ %91, %87 ]
  br label %102

102:                                              ; preds = %97, %66
  ret i32 %172

103:                                              ; preds = %142, %169, %62
  %104 = phi i64 [ %173, %169 ], [ 0, %62 ], [ 0, %142 ]
  %105 = phi i32 [ %172, %169 ], [ 0, %62 ], [ 0, %142 ]
  %106 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %104
  %107 = load i8, i8* %106, align 1, !tbaa !10
  %108 = sext i8 %107 to i32
  %109 = add nsw i32 %105, %108
  %110 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %104
  %111 = load float, float* %110, align 4, !tbaa !13
  %112 = srem i32 %10, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %103
  %115 = sitofp i32 %109 to float
  %116 = fadd float %111, %115
  %117 = fptosi float %116 to i32
  %118 = sub i64 %104, 6999039110903695844
  %119 = add i64 %118, 1
  %120 = add i64 %119, 6999039110903695844
  %121 = icmp eq i64 %120, 1760
  br label %169

122:                                              ; preds = %103
  %123 = sub i32 71, 115
  %124 = sitofp i32 %109 to float
  %125 = sub i32 97, 15
  %126 = fadd float %111, %124
  %127 = sdiv i32 60, 66
  %128 = fptosi float %126 to i32
  %129 = srem i32 %112, 2
  %130 = icmp eq i32 %129, 0
  %131 = mul i32 %17, 2
  %132 = mul i32 %17, 2
  %133 = add i32 2, %132
  %134 = mul i32 %131, %133
  %135 = srem i32 %134, 4
  %136 = icmp eq i32 %135, 0
  %137 = mul i32 %17, %17
  %138 = add i32 %137, %17
  %139 = srem i32 %138, 2
  %140 = icmp eq i32 %139, 0
  %141 = or i1 %136, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %122
  %143 = sub i32 100, 87
  %144 = add nuw nsw i64 %104, 1
  %145 = sdiv i32 54, 102
  %146 = icmp eq i64 %144, 1760
  %147 = add i32 56, 46
  %148 = add i32 90, 111
  %149 = mul i32 48, 38
  br i1 %141, label %161, label %103

150:                                              ; preds = %122
  %151 = add i32 324937603, -324937590
  %152 = xor i64 %104, 1
  %153 = and i64 %104, 1
  %154 = mul i64 2, %153
  %155 = add i64 %152, %154
  %156 = sdiv i32 54, 102
  %157 = icmp eq i64 %155, 1760
  %158 = sub i32 56, -46
  %159 = sub i32 0, -201
  %160 = mul i32 48, 38
  br label %161

161:                                              ; preds = %142, %150
  %162 = phi i32 [ %151, %150 ], [ %143, %142 ]
  %163 = phi i64 [ %155, %150 ], [ %144, %142 ]
  %164 = phi i32 [ %156, %150 ], [ %145, %142 ]
  %165 = phi i1 [ %157, %150 ], [ %146, %142 ]
  %166 = phi i32 [ %158, %150 ], [ %147, %142 ]
  %167 = phi i32 [ %159, %150 ], [ %148, %142 ]
  %168 = phi i32 [ %160, %150 ], [ %149, %142 ]
  br label %169

169:                                              ; preds = %161, %114
  %170 = phi float [ %124, %161 ], [ %115, %114 ]
  %171 = phi float [ %126, %161 ], [ %116, %114 ]
  %172 = phi i32 [ %128, %161 ], [ %117, %114 ]
  %173 = phi i64 [ %163, %161 ], [ %120, %114 ]
  %174 = phi i1 [ %165, %161 ], [ %121, %114 ]
  br i1 %174, label %63, label %103, !llvm.loop !21
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

; ModuleID = 'output/introduce-loop/ex7/ex7.ll'
source_filename = "input/introduce-loop/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = srem i32 %3, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %29, %4
  %8 = sdiv i32 44, 40
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = mul i32 124, 85
  %11 = add i32 123, 4
  %12 = srem i32 %5, 2
  %13 = icmp eq i32 %12, 0
  %14 = mul i32 %3, %3
  %15 = add i32 %14, %3
  %16 = mul i32 %15, 3
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = mul i32 %3, %3
  %20 = add i32 %19, %3
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %18, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = mul i32 63, 47
  %26 = sdiv i32 122, 75
  %27 = add i32 42, 7
  %28 = sdiv i32 67, 69
  br label %34

29:                                               ; preds = %7
  %30 = mul i32 63, 47
  %31 = sdiv i32 122, 75
  %32 = sub i32 861244616, 861244567
  %33 = sdiv i32 67, 69
  br i1 %23, label %34, label %7

34:                                               ; preds = %29, %24
  %35 = phi i32 [ %30, %29 ], [ %25, %24 ]
  %36 = phi i32 [ %31, %29 ], [ %26, %24 ]
  %37 = phi i32 [ %32, %29 ], [ %27, %24 ]
  %38 = phi i32 [ %33, %29 ], [ %28, %24 ]
  br label %41

39:                                               ; preds = %4
  %40 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %40, %39 ], [ %9, %34 ]
  br label %75

43:                                               ; preds = %58, %216
  %44 = srem i32 %42, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = mul i32 80, 97
  %48 = add i32 70, 67
  %49 = srem i32 %3, 2
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %134, 1
  %52 = icmp eq i32 %51, 1
  %53 = mul i32 %134, %134
  %54 = add i32 %53, %134
  %55 = srem i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %52, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %46
  %59 = mul i32 28, 12
  %60 = mul i32 114, 122
  %61 = add i32 385115827, -385115882
  %62 = sub i32 116602384, 116602245
  br i1 %57, label %68, label %43

63:                                               ; preds = %46
  %64 = mul i32 28, 12
  %65 = mul i32 114, 122
  %66 = sub i32 15, 70
  %67 = add i32 55, 84
  br label %68

68:                                               ; preds = %58, %63
  %69 = phi i32 [ %64, %63 ], [ %59, %58 ]
  %70 = phi i32 [ %65, %63 ], [ %60, %58 ]
  %71 = phi i32 [ %66, %63 ], [ %61, %58 ]
  %72 = phi i32 [ %67, %63 ], [ %62, %58 ]
  br label %74

73:                                               ; preds = %43
  br label %74

74:                                               ; preds = %73, %68
  ret void

75:                                               ; preds = %97, %216, %41
  %76 = phi i64 [ 0, %41 ], [ %221, %216 ], [ 0, %97 ]
  %77 = trunc i64 %76 to i32
  %78 = srem i32 %5, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = urem i32 %77, 80
  %82 = icmp eq i32 %81, 0
  br label %133

83:                                               ; preds = %75
  %84 = srem i32 %77, 2
  %85 = icmp eq i32 %84, 0
  %86 = mul i32 %78, 2
  %87 = mul i32 %78, 2
  %88 = add i32 2, %87
  %89 = mul i32 %86, %88
  %90 = srem i32 %89, 4
  %91 = icmp eq i32 %90, 0
  %92 = mul i32 %78, %78
  %93 = add i32 %92, %78
  %94 = srem i32 %93, 2
  %95 = icmp eq i32 %94, 0
  %96 = and i1 %91, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %83
  %98 = sdiv i32 91, 121
  %99 = urem i32 %77, 80
  %100 = sub i32 29, 96
  %101 = icmp eq i32 %99, 0
  %102 = add i32 51, 90
  %103 = mul i32 109, 38
  %104 = sub i32 49, 52
  %105 = sdiv i32 113, 52
  %106 = add i32 66, 109
  %107 = mul i32 97, 83
  %108 = add i32 122, 10
  br i1 %96, label %121, label %75

109:                                              ; preds = %83
  %110 = sdiv i32 91, 121
  %111 = urem i32 %77, 80
  %112 = add i32 29, -96
  %113 = icmp eq i32 %111, 0
  %114 = add i32 -1386822434, 1386822575
  %115 = mul i32 109, 38
  %116 = add i32 1619132340, -1619132343
  %117 = sdiv i32 113, 52
  %118 = add i32 47, 128
  %119 = mul i32 97, 83
  %120 = sub i32 0, -132
  br label %121

121:                                              ; preds = %97, %109
  %122 = phi i32 [ %110, %109 ], [ %98, %97 ]
  %123 = phi i32 [ %111, %109 ], [ %99, %97 ]
  %124 = phi i32 [ %112, %109 ], [ %100, %97 ]
  %125 = phi i1 [ %113, %109 ], [ %101, %97 ]
  %126 = phi i32 [ %114, %109 ], [ %102, %97 ]
  %127 = phi i32 [ %115, %109 ], [ %103, %97 ]
  %128 = phi i32 [ %116, %109 ], [ %104, %97 ]
  %129 = phi i32 [ %117, %109 ], [ %105, %97 ]
  %130 = phi i32 [ %118, %109 ], [ %106, %97 ]
  %131 = phi i32 [ %119, %109 ], [ %107, %97 ]
  %132 = phi i32 [ %120, %109 ], [ %108, %97 ]
  br label %133

133:                                              ; preds = %121, %80
  %134 = phi i32 [ %123, %121 ], [ %81, %80 ]
  %135 = phi i1 [ %125, %121 ], [ %82, %80 ]
  br i1 %135, label %172, label %136

136:                                              ; preds = %158, %133
  %137 = getelementptr inbounds i8, i8* %0, i64 %76
  %138 = load i8, i8* %137, align 1, !tbaa !10
  %139 = sext i8 %138 to i32
  %140 = srem i32 %5, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %170

142:                                              ; preds = %136
  %143 = sdiv i32 39, 106
  %144 = add i32 11, 0
  %145 = add i32 15, 29
  %146 = srem i32 %140, 2
  %147 = icmp eq i32 %146, 0
  %148 = mul i32 %134, %134
  %149 = add i32 %148, %134
  %150 = mul i32 %149, 3
  %151 = srem i32 %150, 2
  %152 = icmp eq i32 %151, 0
  %153 = mul i32 %134, %134
  %154 = add i32 %153, %134
  %155 = srem i32 %154, 2
  %156 = icmp eq i32 %155, 0
  %157 = and i1 %152, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %142
  %159 = mul i32 102, 89
  %160 = sub i32 125, 22
  %161 = sdiv i32 110, 62
  br i1 %157, label %166, label %136

162:                                              ; preds = %142
  %163 = mul i32 102, 89
  %164 = add i32 589849871, -589849768
  %165 = sdiv i32 110, 62
  br label %166

166:                                              ; preds = %158, %162
  %167 = phi i32 [ %163, %162 ], [ %159, %158 ]
  %168 = phi i32 [ %164, %162 ], [ %160, %158 ]
  %169 = phi i32 [ %165, %162 ], [ %161, %158 ]
  br label %171

170:                                              ; preds = %136
  br label %171

171:                                              ; preds = %170, %166
  br label %172

172:                                              ; preds = %204, %171, %133
  %173 = phi i32 [ %139, %171 ], [ 10, %133 ], [ 0, %204 ]
  %174 = call i32 @putchar(i32 %173)
  %175 = load float, float* %1, align 4, !tbaa !13
  %176 = fpext float %175 to double
  %177 = fadd double %176, 4.000000e-05
  %178 = fptrunc double %177 to float
  store float %178, float* %1, align 4, !tbaa !13
  %179 = srem i32 %77, 2
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %172
  %182 = add i32 42, 51
  %183 = load float, float* %2, align 4, !tbaa !13
  %184 = sdiv i32 77, 87
  %185 = fpext float %183 to double
  %186 = add i32 38, 97
  %187 = fadd double %185, 2.000000e-05
  %188 = add i32 66, 35
  %189 = fptrunc double %187 to float
  %190 = sdiv i32 65, 38
  store float %189, float* %2, align 4, !tbaa !13
  %191 = sdiv i32 123, 112
  %192 = add nuw nsw i64 %76, 1
  %193 = sub i32 69, 60
  %194 = icmp eq i64 %192, 1761
  %195 = srem i32 %3, 2
  %196 = icmp eq i32 %195, 0
  %197 = and i32 %77, 1
  %198 = icmp eq i32 %197, 1
  %199 = mul i32 %77, %77
  %200 = add i32 %199, %77
  %201 = srem i32 %200, 2
  %202 = icmp eq i32 %201, 0
  %203 = or i1 %198, %202
  br i1 %203, label %205, label %204

204:                                              ; preds = %181
  br i1 %203, label %206, label %172

205:                                              ; preds = %181
  br label %206

206:                                              ; preds = %204, %205
  br label %216

207:                                              ; preds = %172
  %208 = load float, float* %2, align 4, !tbaa !13
  %209 = fpext float %208 to double
  %210 = fadd double %209, 2.000000e-05
  %211 = fptrunc double %210 to float
  store float %211, float* %2, align 4, !tbaa !13
  %212 = sub i64 0, %76
  %213 = add i64 %212, -1
  %214 = sub i64 0, %213
  %215 = icmp eq i64 %214, 1761
  br label %216

216:                                              ; preds = %207, %206
  %217 = phi float [ %208, %207 ], [ %183, %206 ]
  %218 = phi double [ %209, %207 ], [ %185, %206 ]
  %219 = phi double [ %210, %207 ], [ %187, %206 ]
  %220 = phi float [ %211, %207 ], [ %189, %206 ]
  %221 = phi i64 [ %214, %207 ], [ %192, %206 ]
  %222 = phi i1 [ %215, %207 ], [ %194, %206 ]
  br i1 %222, label %43, label %75, !llvm.loop !15
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
  br i1 %11, label %12, label %81

12:                                               ; preds = %45, %7
  %13 = add i32 107, 30
  %14 = bitcast float* %3 to i8*
  %15 = mul i32 98, 74
  %16 = srem i32 %2, 2
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %5, 1
  %19 = icmp eq i32 %18, 1
  %20 = mul i32 %5, %5
  %21 = add i32 %20, %5
  %22 = srem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = or i1 %19, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %12
  %26 = shl nsw i64 %9, 2
  %27 = sub i32 -1792112334, -1792112407
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 %26, i1 false)
  %28 = sdiv i32 12, 78
  %29 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %30 = sdiv i32 66, 75
  %31 = call fastcc float @_ZL3sinf(float %0) #9
  %32 = sub i32 1233820040, 1233820011
  %33 = call fastcc float @_ZL3cosf(float %0) #9
  %34 = sitofp i32 %8 to float
  %35 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %36 = call fastcc float @_ZL3cosf(float %1) #9
  %37 = call fastcc float @_ZL3sinf(float %1) #9
  %38 = sdiv i32 %6, 2
  %39 = sitofp i32 %38 to float
  %40 = sdiv i32 %5, 2
  %41 = and i32 %40, 1
  %42 = or i32 %40, 1
  %43 = add i32 %41, %42
  %44 = sitofp i32 %43 to float
  br label %63

45:                                               ; preds = %12
  %46 = shl nsw i64 %9, 2
  %47 = add i32 46, 27
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 %46, i1 false)
  %48 = sdiv i32 12, 78
  %49 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %50 = sdiv i32 66, 75
  %51 = call fastcc float @_ZL3sinf(float %0) #9
  %52 = sub i32 123, 94
  %53 = call fastcc float @_ZL3cosf(float %0) #9
  %54 = sitofp i32 %8 to float
  %55 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %56 = call fastcc float @_ZL3cosf(float %1) #9
  %57 = call fastcc float @_ZL3sinf(float %1) #9
  %58 = sdiv i32 %6, 2
  %59 = sitofp i32 %58 to float
  %60 = sdiv i32 %5, 2
  %61 = add nsw i32 %60, 1
  %62 = sitofp i32 %61 to float
  br i1 %24, label %63, label %12

63:                                               ; preds = %45, %25
  %64 = phi i64 [ %46, %45 ], [ %26, %25 ]
  %65 = phi i32 [ %47, %45 ], [ %27, %25 ]
  %66 = phi i32 [ %48, %45 ], [ %28, %25 ]
  %67 = phi float [ %49, %45 ], [ %29, %25 ]
  %68 = phi i32 [ %50, %45 ], [ %30, %25 ]
  %69 = phi float [ %51, %45 ], [ %31, %25 ]
  %70 = phi i32 [ %52, %45 ], [ %32, %25 ]
  %71 = phi float [ %53, %45 ], [ %33, %25 ]
  %72 = phi float [ %54, %45 ], [ %34, %25 ]
  %73 = phi float [ %55, %45 ], [ %35, %25 ]
  %74 = phi float [ %56, %45 ], [ %36, %25 ]
  %75 = phi float [ %57, %45 ], [ %37, %25 ]
  %76 = phi i32 [ %58, %45 ], [ %38, %25 ]
  %77 = phi float [ %59, %45 ], [ %39, %25 ]
  %78 = phi i32 [ %60, %45 ], [ %40, %25 ]
  %79 = phi i32 [ %61, %45 ], [ %43, %25 ]
  %80 = phi float [ %62, %45 ], [ %44, %25 ]
  br label %98

81:                                               ; preds = %7
  %82 = bitcast float* %3 to i8*
  %83 = shl nsw i64 %9, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %82, i8 0, i64 %83, i1 false)
  %84 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %85 = call fastcc float @_ZL3sinf(float %0) #9
  %86 = call fastcc float @_ZL3cosf(float %0) #9
  %87 = sitofp i32 %8 to float
  %88 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %89 = call fastcc float @_ZL3cosf(float %1) #9
  %90 = call fastcc float @_ZL3sinf(float %1) #9
  %91 = sdiv i32 %6, 2
  %92 = sitofp i32 %91 to float
  %93 = sdiv i32 %5, 2
  %94 = sub i32 %93, -1178160657
  %95 = add i32 %94, 1
  %96 = add i32 %95, -1178160657
  %97 = sitofp i32 %96 to float
  br label %98

98:                                               ; preds = %81, %63
  %99 = phi i8* [ %82, %81 ], [ %14, %63 ]
  %100 = phi i64 [ %83, %81 ], [ %64, %63 ]
  %101 = phi float [ %84, %81 ], [ %67, %63 ]
  %102 = phi float [ %85, %81 ], [ %69, %63 ]
  %103 = phi float [ %86, %81 ], [ %71, %63 ]
  %104 = phi float [ %87, %81 ], [ %72, %63 ]
  %105 = phi float [ %88, %81 ], [ %73, %63 ]
  %106 = phi float [ %89, %81 ], [ %74, %63 ]
  %107 = phi float [ %90, %81 ], [ %75, %63 ]
  %108 = phi i32 [ %91, %81 ], [ %76, %63 ]
  %109 = phi float [ %92, %81 ], [ %77, %63 ]
  %110 = phi i32 [ %93, %81 ], [ %78, %63 ]
  %111 = phi i32 [ %96, %81 ], [ %79, %63 ]
  %112 = phi float [ %97, %81 ], [ %80, %63 ]
  br label %113

113:                                              ; preds = %169, %453, %98
  %114 = phi float [ 0.000000e+00, %98 ], [ %411, %453 ], [ 0.000000e+00, %169 ]
  %115 = call fastcc float @_ZL3cosf(float %114) #9
  %116 = call fastcc float @_ZL3sinf(float %114) #9
  %117 = fadd float %115, %104
  %118 = fmul float %101, %117
  %119 = fmul float %118, %103
  %120 = fmul float %102, %116
  %121 = srem i32 %8, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %220

123:                                              ; preds = %113
  %124 = mul i32 27, 6
  %125 = fsub float %119, %120
  %126 = add i32 32, 14
  %127 = fmul float %102, %118
  %128 = sub i32 91, 114
  %129 = fmul float %116, %103
  %130 = sdiv i32 96, 50
  %131 = fadd float %127, %129
  %132 = mul i32 22, 40
  %133 = fadd float %131, 5.000000e+00
  %134 = mul i32 64, 34
  %135 = fdiv float 1.000000e+00, %133
  %136 = fmul float %135, 3.000000e+01
  %137 = fmul float %117, %105
  %138 = fmul float %137, %106
  %139 = fmul float %125, %107
  %140 = fadd float %138, %139
  %141 = fmul float %136, %140
  %142 = fadd float %141, %109
  %143 = fptosi float %142 to i32
  %144 = fmul float %135, 1.500000e+01
  %145 = fmul float %137, %107
  %146 = fmul float %125, %106
  %147 = fsub float %145, %146
  %148 = fmul float %144, %147
  %149 = fadd float %148, %112
  %150 = fptosi float %149 to i32
  %151 = fmul float %101, %115
  %152 = fmul float %151, %103
  %153 = fsub float %120, %152
  %154 = fmul float %153, %106
  %155 = srem i64 %100, 2
  %156 = icmp eq i64 %155, 0
  %157 = mul i32 %108, 2
  %158 = mul i32 %108, 2
  %159 = add i32 2, %158
  %160 = mul i32 %157, %159
  %161 = srem i32 %160, 4
  %162 = icmp eq i32 %161, 0
  %163 = mul i32 %108, %108
  %164 = mul i32 %163, %108
  %165 = add i32 %164, %108
  %166 = srem i32 %165, 2
  %167 = icmp eq i32 %166, 0
  %168 = and i1 %162, %167
  br i1 %168, label %188, label %169

169:                                              ; preds = %123
  %170 = fmul float %151, %102
  %171 = fsub float %154, %170
  %172 = fsub float %171, %129
  %173 = fmul float %115, %105
  %174 = fmul float %173, %107
  %175 = fsub float %172, %174
  %176 = fmul float %175, 8.000000e+00
  %177 = fptosi float %176 to i32
  %178 = icmp slt i32 %150, %5
  %179 = icmp sgt i32 %150, 0
  %180 = xor i1 %178, true
  %181 = or i1 %180, %179
  %182 = xor i1 %178, true
  %183 = sub i1 %181, %182
  %184 = icmp sgt i32 %143, 0
  %185 = select i1 %183, i1 %184, i1 false
  %186 = icmp slt i32 %143, %6
  %187 = select i1 %185, i1 %186, i1 false
  br i1 %168, label %204, label %113

188:                                              ; preds = %123
  %189 = fmul float %151, %102
  %190 = fsub float %154, %189
  %191 = fsub float %190, %129
  %192 = fmul float %115, %105
  %193 = fmul float %192, %107
  %194 = fsub float %191, %193
  %195 = fmul float %194, 8.000000e+00
  %196 = fptosi float %195 to i32
  %197 = icmp slt i32 %150, %5
  %198 = icmp sgt i32 %150, 0
  %199 = and i1 %197, %198
  %200 = icmp sgt i32 %143, 0
  %201 = select i1 %199, i1 %200, i1 false
  %202 = icmp slt i32 %143, %6
  %203 = select i1 %201, i1 %202, i1 false
  br label %204

204:                                              ; preds = %169, %188
  %205 = phi float [ %189, %188 ], [ %170, %169 ]
  %206 = phi float [ %190, %188 ], [ %171, %169 ]
  %207 = phi float [ %191, %188 ], [ %172, %169 ]
  %208 = phi float [ %192, %188 ], [ %173, %169 ]
  %209 = phi float [ %193, %188 ], [ %174, %169 ]
  %210 = phi float [ %194, %188 ], [ %175, %169 ]
  %211 = phi float [ %195, %188 ], [ %176, %169 ]
  %212 = phi i32 [ %196, %188 ], [ %177, %169 ]
  %213 = phi i1 [ %197, %188 ], [ %178, %169 ]
  %214 = phi i1 [ %198, %188 ], [ %179, %169 ]
  %215 = phi i1 [ %199, %188 ], [ %183, %169 ]
  %216 = phi i1 [ %200, %188 ], [ %184, %169 ]
  %217 = phi i1 [ %201, %188 ], [ %185, %169 ]
  %218 = phi i1 [ %202, %188 ], [ %186, %169 ]
  %219 = phi i1 [ %203, %188 ], [ %187, %169 ]
  br label %263

220:                                              ; preds = %113
  %221 = fsub float %119, %120
  %222 = fmul float %102, %118
  %223 = fmul float %116, %103
  %224 = fadd float %222, %223
  %225 = fadd float %224, 5.000000e+00
  %226 = fdiv float 1.000000e+00, %225
  %227 = fmul float %226, 3.000000e+01
  %228 = fmul float %117, %105
  %229 = fmul float %228, %106
  %230 = fmul float %221, %107
  %231 = fadd float %229, %230
  %232 = fmul float %227, %231
  %233 = fadd float %232, %109
  %234 = fptosi float %233 to i32
  %235 = fmul float %226, 1.500000e+01
  %236 = fmul float %228, %107
  %237 = fmul float %221, %106
  %238 = fsub float %236, %237
  %239 = fmul float %235, %238
  %240 = fadd float %239, %112
  %241 = fptosi float %240 to i32
  %242 = fmul float %101, %115
  %243 = fmul float %242, %103
  %244 = fsub float %120, %243
  %245 = fmul float %244, %106
  %246 = fmul float %242, %102
  %247 = fsub float %245, %246
  %248 = fsub float %247, %223
  %249 = fmul float %115, %105
  %250 = fmul float %249, %107
  %251 = fsub float %248, %250
  %252 = fmul float %251, 8.000000e+00
  %253 = fptosi float %252 to i32
  %254 = icmp slt i32 %241, %5
  %255 = icmp sgt i32 %241, 0
  %256 = xor i1 %255, true
  %257 = xor i1 %254, %256
  %258 = and i1 %257, %254
  %259 = icmp sgt i32 %234, 0
  %260 = select i1 %258, i1 %259, i1 false
  %261 = icmp slt i32 %234, %6
  %262 = select i1 %260, i1 %261, i1 false
  br label %263

263:                                              ; preds = %220, %204
  %264 = phi float [ %221, %220 ], [ %125, %204 ]
  %265 = phi float [ %222, %220 ], [ %127, %204 ]
  %266 = phi float [ %223, %220 ], [ %129, %204 ]
  %267 = phi float [ %224, %220 ], [ %131, %204 ]
  %268 = phi float [ %225, %220 ], [ %133, %204 ]
  %269 = phi float [ %226, %220 ], [ %135, %204 ]
  %270 = phi float [ %227, %220 ], [ %136, %204 ]
  %271 = phi float [ %228, %220 ], [ %137, %204 ]
  %272 = phi float [ %229, %220 ], [ %138, %204 ]
  %273 = phi float [ %230, %220 ], [ %139, %204 ]
  %274 = phi float [ %231, %220 ], [ %140, %204 ]
  %275 = phi float [ %232, %220 ], [ %141, %204 ]
  %276 = phi float [ %233, %220 ], [ %142, %204 ]
  %277 = phi i32 [ %234, %220 ], [ %143, %204 ]
  %278 = phi float [ %235, %220 ], [ %144, %204 ]
  %279 = phi float [ %236, %220 ], [ %145, %204 ]
  %280 = phi float [ %237, %220 ], [ %146, %204 ]
  %281 = phi float [ %238, %220 ], [ %147, %204 ]
  %282 = phi float [ %239, %220 ], [ %148, %204 ]
  %283 = phi float [ %240, %220 ], [ %149, %204 ]
  %284 = phi i32 [ %241, %220 ], [ %150, %204 ]
  %285 = phi float [ %242, %220 ], [ %151, %204 ]
  %286 = phi float [ %243, %220 ], [ %152, %204 ]
  %287 = phi float [ %244, %220 ], [ %153, %204 ]
  %288 = phi float [ %245, %220 ], [ %154, %204 ]
  %289 = phi float [ %246, %220 ], [ %205, %204 ]
  %290 = phi float [ %247, %220 ], [ %206, %204 ]
  %291 = phi float [ %248, %220 ], [ %207, %204 ]
  %292 = phi float [ %249, %220 ], [ %208, %204 ]
  %293 = phi float [ %250, %220 ], [ %209, %204 ]
  %294 = phi float [ %251, %220 ], [ %210, %204 ]
  %295 = phi float [ %252, %220 ], [ %211, %204 ]
  %296 = phi i32 [ %253, %220 ], [ %212, %204 ]
  %297 = phi i1 [ %254, %220 ], [ %213, %204 ]
  %298 = phi i1 [ %255, %220 ], [ %214, %204 ]
  %299 = phi i1 [ %258, %220 ], [ %215, %204 ]
  %300 = phi i1 [ %259, %220 ], [ %216, %204 ]
  %301 = phi i1 [ %260, %220 ], [ %217, %204 ]
  %302 = phi i1 [ %261, %220 ], [ %218, %204 ]
  %303 = phi i1 [ %262, %220 ], [ %219, %204 ]
  br i1 %303, label %304, label %408

304:                                              ; preds = %332, %263
  %305 = mul nsw i32 %284, %6
  %306 = add nsw i32 %305, %277
  %307 = srem i32 %8, 2
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = sext i32 %306 to i64
  %311 = getelementptr inbounds float, float* %3, i64 %310
  %312 = load float, float* %311, align 4, !tbaa !13
  %313 = fcmp ogt float %269, %312
  br label %356

314:                                              ; preds = %304
  %315 = sdiv i32 95, 62
  %316 = sext i32 %306 to i64
  %317 = add i32 43, 13
  %318 = getelementptr inbounds float, float* %3, i64 %316
  %319 = add i32 120, 115
  %320 = srem i32 %307, 2
  %321 = icmp eq i32 %320, 0
  %322 = mul i32 %2, %2
  %323 = add i32 %322, %2
  %324 = mul i32 %323, 3
  %325 = srem i32 %324, 2
  %326 = icmp eq i32 %325, 0
  %327 = mul i32 %2, %2
  %328 = add i32 %327, %2
  %329 = srem i32 %328, 2
  %330 = icmp eq i32 %329, 0
  %331 = and i1 %326, %330
  br i1 %331, label %340, label %332

332:                                              ; preds = %314
  %333 = load float, float* %318, align 4, !tbaa !13
  %334 = mul i32 9, 80
  %335 = fcmp ogt float %269, %333
  %336 = add i32 2016098199, -2016098046
  %337 = mul i32 88, 121
  %338 = sdiv i32 42, 17
  %339 = add i32 593356546, -593356529
  br i1 %331, label %348, label %304

340:                                              ; preds = %314
  %341 = load float, float* %318, align 4, !tbaa !13
  %342 = mul i32 9, 80
  %343 = fcmp ogt float %269, %341
  %344 = add i32 48, 105
  %345 = mul i32 88, 121
  %346 = sdiv i32 42, 17
  %347 = sub i32 117, 100
  br label %348

348:                                              ; preds = %332, %340
  %349 = phi float [ %341, %340 ], [ %333, %332 ]
  %350 = phi i32 [ %342, %340 ], [ %334, %332 ]
  %351 = phi i1 [ %343, %340 ], [ %335, %332 ]
  %352 = phi i32 [ %344, %340 ], [ %336, %332 ]
  %353 = phi i32 [ %345, %340 ], [ %337, %332 ]
  %354 = phi i32 [ %346, %340 ], [ %338, %332 ]
  %355 = phi i32 [ %347, %340 ], [ %339, %332 ]
  br label %356

356:                                              ; preds = %348, %309
  %357 = phi i64 [ %316, %348 ], [ %310, %309 ]
  %358 = phi float* [ %318, %348 ], [ %311, %309 ]
  %359 = phi float [ %349, %348 ], [ %312, %309 ]
  %360 = phi i1 [ %351, %348 ], [ %313, %309 ]
  br i1 %360, label %361, label %408

361:                                              ; preds = %399, %356
  %362 = srem i32 %306, 2
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  store float %269, float* %358, align 4, !tbaa !13
  %365 = icmp sgt i32 %296, 0
  %366 = select i1 %365, i32 %296, i32 0
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %367
  %369 = load i8, i8* %368, align 1, !tbaa !10
  %370 = getelementptr inbounds i8, i8* %4, i64 %357
  store i8 %369, i8* %370, align 1, !tbaa !10
  br label %401

371:                                              ; preds = %361
  %372 = mul i32 120, 88
  store float %269, float* %358, align 4, !tbaa !13
  %373 = sub i32 27, 72
  %374 = icmp sgt i32 %296, 0
  %375 = sdiv i32 16, 110
  %376 = select i1 %374, i32 %296, i32 0
  %377 = mul i32 74, 59
  %378 = zext i32 %376 to i64
  %379 = add i32 14, 40
  %380 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %378
  %381 = sdiv i32 4, 40
  %382 = load i8, i8* %380, align 1, !tbaa !10
  %383 = sub i32 0, 6
  %384 = getelementptr inbounds i8, i8* %4, i64 %357
  %385 = add i32 92, 25
  store i8 %382, i8* %384, align 1, !tbaa !10
  %386 = sdiv i32 77, 78
  %387 = sdiv i32 16, 98
  %388 = srem i32 %6, 2
  %389 = icmp eq i32 %388, 0
  %390 = and i32 %277, 1
  %391 = icmp eq i32 %390, 0
  %392 = mul i32 %277, %277
  %393 = add i32 %392, %277
  %394 = mul i32 %393, 3
  %395 = srem i32 %394, 2
  %396 = icmp eq i32 %395, 0
  %397 = or i1 %391, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %371
  br label %400

399:                                              ; preds = %371
  br i1 %397, label %400, label %361

400:                                              ; preds = %399, %398
  br label %401

401:                                              ; preds = %400, %364
  %402 = phi i1 [ %374, %400 ], [ %365, %364 ]
  %403 = phi i32 [ %376, %400 ], [ %366, %364 ]
  %404 = phi i64 [ %378, %400 ], [ %367, %364 ]
  %405 = phi i8* [ %380, %400 ], [ %368, %364 ]
  %406 = phi i8 [ %382, %400 ], [ %369, %364 ]
  %407 = phi i8* [ %384, %400 ], [ %370, %364 ]
  br label %408

408:                                              ; preds = %433, %401, %356, %263
  %409 = fpext float %114 to double
  %410 = fadd double %409, 7.000000e-02
  %411 = fptrunc double %410 to float
  %412 = fpext float %411 to double
  %413 = srem i32 %284, 2
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %451

415:                                              ; preds = %408
  %416 = sub i32 30, 100
  %417 = fcmp olt double %412, 6.280000e+00
  %418 = mul i32 86, 118
  %419 = add i32 44, 37
  %420 = srem i32 %6, 2
  %421 = icmp eq i32 %420, 0
  %422 = mul i32 %413, 2
  %423 = mul i32 %413, 2
  %424 = add i32 2, %423
  %425 = mul i32 %422, %424
  %426 = srem i32 %425, 4
  %427 = icmp eq i32 %426, 0
  %428 = mul i32 %413, %413
  %429 = add i32 %428, %413
  %430 = srem i32 %429, 2
  %431 = icmp eq i32 %430, 0
  %432 = and i1 %427, %431
  br i1 %432, label %439, label %433

433:                                              ; preds = %415
  %434 = sub i32 22, 29
  %435 = mul i32 108, 103
  %436 = mul i32 110, 125
  %437 = sdiv i32 26, 57
  %438 = sub i32 10, 12
  br i1 %432, label %445, label %408

439:                                              ; preds = %415
  %440 = add i32 1542928328, -1542928335
  %441 = mul i32 108, 103
  %442 = mul i32 110, 125
  %443 = sdiv i32 26, 57
  %444 = add i32 10, -12
  br label %445

445:                                              ; preds = %433, %439
  %446 = phi i32 [ %440, %439 ], [ %434, %433 ]
  %447 = phi i32 [ %441, %439 ], [ %435, %433 ]
  %448 = phi i32 [ %442, %439 ], [ %436, %433 ]
  %449 = phi i32 [ %443, %439 ], [ %437, %433 ]
  %450 = phi i32 [ %444, %439 ], [ %438, %433 ]
  br label %453

451:                                              ; preds = %408
  %452 = fcmp olt double %412, 6.280000e+00
  br label %453

453:                                              ; preds = %451, %445
  %454 = phi i1 [ %452, %451 ], [ %417, %445 ]
  br i1 %454, label %113, label %455, !llvm.loop !18

455:                                              ; preds = %547, %696, %453
  %456 = phi double [ %698, %696 ], [ 0.000000e+00, %453 ], [ 0.000000e+00, %547 ]
  %457 = phi float [ %697, %696 ], [ 0.000000e+00, %453 ], [ 0.000000e+00, %547 ]
  %458 = call fastcc float @_ZL3cosf(float %457) #9
  %459 = call fastcc float @_ZL3sinf(float %457) #9
  %460 = fadd float %458, %104
  %461 = fmul float %101, %460
  %462 = fmul float %103, %461
  %463 = fmul float %102, %459
  %464 = fsub float %462, %463
  %465 = fmul float %102, %461
  %466 = fmul float %103, %459
  %467 = fadd float %466, %465
  %468 = fadd float %467, 5.000000e+00
  %469 = fdiv float 1.000000e+00, %468
  %470 = fmul float %469, 3.000000e+01
  %471 = fmul float %105, %460
  %472 = fmul float %106, %471
  %473 = fmul float %107, %464
  %474 = fadd float %472, %473
  %475 = fmul float %474, %470
  %476 = fadd float %475, %109
  %477 = fptosi float %476 to i32
  %478 = fmul float %469, 1.500000e+01
  %479 = fmul float %107, %471
  %480 = fmul float %106, %464
  %481 = fsub float %479, %480
  %482 = fmul float %481, %478
  %483 = fadd float %482, %112
  %484 = fptosi float %483 to i32
  %485 = fmul float %101, %458
  %486 = fmul float %103, %485
  %487 = fsub float %463, %486
  %488 = fmul float %106, %487
  %489 = fmul float %102, %485
  %490 = fsub float %488, %489
  %491 = srem i32 %277, 2
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %507

493:                                              ; preds = %455
  %494 = fsub float %490, %466
  %495 = fmul float %105, %458
  %496 = fmul float %107, %495
  %497 = fsub float %494, %496
  %498 = fmul float %497, 8.000000e+00
  %499 = fptosi float %498 to i32
  %500 = icmp slt i32 %484, %5
  %501 = icmp sgt i32 %484, 0
  %502 = and i1 %500, %501
  %503 = icmp sgt i32 %477, 0
  %504 = select i1 %502, i1 %503, i1 false
  %505 = icmp slt i32 %477, %6
  %506 = select i1 %504, i1 %505, i1 false
  br label %553

507:                                              ; preds = %455
  %508 = sub i32 69, 120
  %509 = fsub float %490, %466
  %510 = sdiv i32 110, 106
  %511 = fmul float %105, %458
  %512 = sdiv i32 73, 8
  %513 = fmul float %107, %511
  %514 = sub i32 10, 123
  %515 = fsub float %509, %513
  %516 = sub i32 71, 114
  %517 = fmul float %515, 8.000000e+00
  %518 = sdiv i32 122, 109
  %519 = fptosi float %517 to i32
  %520 = add i32 111, 66
  %521 = icmp slt i32 %484, %5
  %522 = mul i32 9, 16
  %523 = icmp sgt i32 %484, 0
  %524 = sdiv i32 19, 22
  %525 = xor i1 %521, true
  %526 = xor i1 %523, true
  %527 = or i1 %525, %526
  %528 = xor i1 %527, true
  %529 = and i1 %528, true
  %530 = icmp sgt i32 %477, 0
  %531 = select i1 %529, i1 %530, i1 false
  %532 = icmp slt i32 %477, %6
  %533 = srem i32 %6, 2
  %534 = icmp eq i32 %533, 0
  %535 = mul i32 %111, 2
  %536 = mul i32 %111, 2
  %537 = add i32 2, %536
  %538 = mul i32 %535, %537
  %539 = srem i32 %538, 4
  %540 = icmp eq i32 %539, 0
  %541 = mul i32 %111, %111
  %542 = mul i32 %541, %111
  %543 = add i32 %542, %111
  %544 = srem i32 %543, 2
  %545 = icmp eq i32 %544, 0
  %546 = and i1 %540, %545
  br i1 %546, label %549, label %547

547:                                              ; preds = %507
  %548 = select i1 %531, i1 %532, i1 false
  br i1 %546, label %551, label %455

549:                                              ; preds = %507
  %550 = select i1 %531, i1 %532, i1 false
  br label %551

551:                                              ; preds = %547, %549
  %552 = phi i1 [ %550, %549 ], [ %548, %547 ]
  br label %553

553:                                              ; preds = %551, %493
  %554 = phi float [ %509, %551 ], [ %494, %493 ]
  %555 = phi float [ %511, %551 ], [ %495, %493 ]
  %556 = phi float [ %513, %551 ], [ %496, %493 ]
  %557 = phi float [ %515, %551 ], [ %497, %493 ]
  %558 = phi float [ %517, %551 ], [ %498, %493 ]
  %559 = phi i32 [ %519, %551 ], [ %499, %493 ]
  %560 = phi i1 [ %521, %551 ], [ %500, %493 ]
  %561 = phi i1 [ %523, %551 ], [ %501, %493 ]
  %562 = phi i1 [ %529, %551 ], [ %502, %493 ]
  %563 = phi i1 [ %530, %551 ], [ %503, %493 ]
  %564 = phi i1 [ %531, %551 ], [ %504, %493 ]
  %565 = phi i1 [ %532, %551 ], [ %505, %493 ]
  %566 = phi i1 [ %552, %551 ], [ %506, %493 ]
  br i1 %566, label %567, label %655

567:                                              ; preds = %592, %553
  %568 = mul nsw i32 %484, %6
  %569 = add nsw i32 %568, %477
  %570 = sext i32 %569 to i64
  %571 = srem i32 %277, 2
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %601

573:                                              ; preds = %567
  %574 = add i32 81, 66
  %575 = getelementptr inbounds float, float* %3, i64 %570
  %576 = sdiv i32 22, 8
  %577 = load float, float* %575, align 4, !tbaa !13
  %578 = add i32 35, 61
  %579 = fcmp ogt float %469, %577
  %580 = sdiv i32 107, 85
  %581 = add i32 110, 32
  %582 = srem i32 %559, 2
  %583 = icmp eq i32 %582, 0
  %584 = and i32 %6, 1
  %585 = icmp eq i32 %584, 0
  %586 = mul i32 %6, %6
  %587 = add i32 %586, %6
  %588 = mul i32 %587, 3
  %589 = srem i32 %588, 2
  %590 = icmp eq i32 %589, 0
  %591 = or i1 %585, %590
  br i1 %591, label %595, label %592

592:                                              ; preds = %573
  %593 = add i32 28, 60
  %594 = mul i32 100, 114
  br i1 %591, label %598, label %567

595:                                              ; preds = %573
  %596 = add i32 28, 60
  %597 = mul i32 100, 114
  br label %598

598:                                              ; preds = %592, %595
  %599 = phi i32 [ %596, %595 ], [ %593, %592 ]
  %600 = phi i32 [ %597, %595 ], [ %594, %592 ]
  br label %605

601:                                              ; preds = %567
  %602 = getelementptr inbounds float, float* %3, i64 %570
  %603 = load float, float* %602, align 4, !tbaa !13
  %604 = fcmp ogt float %469, %603
  br label %605

605:                                              ; preds = %601, %598
  %606 = phi float* [ %602, %601 ], [ %575, %598 ]
  %607 = phi float [ %603, %601 ], [ %577, %598 ]
  %608 = phi i1 [ %604, %601 ], [ %579, %598 ]
  br i1 %608, label %609, label %655

609:                                              ; preds = %639, %605
  store float %469, float* %606, align 4, !tbaa !13
  %610 = icmp sgt i32 %559, 0
  %611 = select i1 %610, i32 %559, i32 0
  %612 = zext i32 %611 to i64
  %613 = srem i32 %296, 2
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %615, label %619

615:                                              ; preds = %609
  %616 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %612
  %617 = load i8, i8* %616, align 1, !tbaa !10
  %618 = getelementptr inbounds i8, i8* %4, i64 %570
  store i8 %617, i8* %618, align 1, !tbaa !10
  br label %651

619:                                              ; preds = %609
  %620 = add i32 66, 63
  %621 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %612
  %622 = sdiv i32 72, 52
  %623 = load i8, i8* %621, align 1, !tbaa !10
  %624 = sub i32 7, 76
  %625 = getelementptr inbounds i8, i8* %4, i64 %570
  %626 = srem i64 %9, 2
  %627 = icmp eq i64 %626, 0
  %628 = mul i32 %121, 2
  %629 = mul i32 %121, 2
  %630 = add i32 2, %629
  %631 = mul i32 %628, %630
  %632 = srem i32 %631, 4
  %633 = icmp eq i32 %632, 0
  %634 = mul i32 %121, %121
  %635 = add i32 %634, %121
  %636 = srem i32 %635, 2
  %637 = icmp eq i32 %636, 0
  %638 = and i1 %633, %637
  br i1 %638, label %643, label %639

639:                                              ; preds = %619
  %640 = add i32 114, 30
  store i8 %623, i8* %625, align 1, !tbaa !10
  %641 = mul i32 73, 42
  %642 = mul i32 80, 100
  br i1 %638, label %647, label %609

643:                                              ; preds = %619
  %644 = add i32 -528451650, 528451794
  store i8 %623, i8* %625, align 1, !tbaa !10
  %645 = mul i32 73, 42
  %646 = mul i32 80, 100
  br label %647

647:                                              ; preds = %639, %643
  %648 = phi i32 [ %644, %643 ], [ %640, %639 ]
  %649 = phi i32 [ %645, %643 ], [ %641, %639 ]
  %650 = phi i32 [ %646, %643 ], [ %642, %639 ]
  br label %651

651:                                              ; preds = %647, %615
  %652 = phi i8* [ %621, %647 ], [ %616, %615 ]
  %653 = phi i8 [ %623, %647 ], [ %617, %615 ]
  %654 = phi i8* [ %625, %647 ], [ %618, %615 ]
  br label %655

655:                                              ; preds = %682, %651, %605, %553
  %656 = fadd double %456, 7.000000e-02
  %657 = srem i32 %8, 2
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %692

659:                                              ; preds = %655
  %660 = sub i32 85, 110
  %661 = fptrunc double %656 to float
  %662 = mul i32 110, 96
  %663 = fpext float %661 to double
  %664 = sub i32 83, 95
  %665 = srem i32 %657, 2
  %666 = icmp eq i32 %665, 0
  %667 = mul i32 %277, %277
  %668 = add i32 %667, %277
  %669 = mul i32 %668, 3
  %670 = srem i32 %669, 2
  %671 = icmp eq i32 %670, 0
  %672 = mul i32 %277, %277
  %673 = add i32 %672, %277
  %674 = srem i32 %673, 2
  %675 = icmp eq i32 %674, 0
  %676 = and i1 %671, %675
  br i1 %676, label %677, label %682

677:                                              ; preds = %659
  %678 = fcmp olt double %663, 6.280000e+00
  %679 = add i32 44, 80
  %680 = add i32 64, 92
  %681 = sub i32 84, 69
  br label %687

682:                                              ; preds = %659
  %683 = fcmp olt double %663, 6.280000e+00
  %684 = add i32 -2101915229, 2101915353
  %685 = add i32 28, 128
  %686 = add i32 84, -69
  br i1 %676, label %687, label %655

687:                                              ; preds = %682, %677
  %688 = phi i1 [ %683, %682 ], [ %678, %677 ]
  %689 = phi i32 [ %684, %682 ], [ %679, %677 ]
  %690 = phi i32 [ %685, %682 ], [ %680, %677 ]
  %691 = phi i32 [ %686, %682 ], [ %681, %677 ]
  br label %696

692:                                              ; preds = %655
  %693 = fptrunc double %656 to float
  %694 = fpext float %693 to double
  %695 = fcmp olt double %694, 6.280000e+00
  br label %696

696:                                              ; preds = %692, %687
  %697 = phi float [ %693, %692 ], [ %661, %687 ]
  %698 = phi double [ %694, %692 ], [ %663, %687 ]
  %699 = phi i1 [ %695, %692 ], [ %688, %687 ]
  br i1 %699, label %455, label %746, !llvm.loop !19

700:                                              ; preds = %717, %1144
  %701 = fcmp une float %102, 0.000000e+00
  %702 = fmul float %102, 2.000000e+00
  %703 = select i1 %701, float %702, float %102
  %704 = srem i32 %413, 2
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %706, label %744

706:                                              ; preds = %700
  %707 = add i32 76, 102
  %708 = srem i32 %657, 2
  %709 = icmp eq i32 %708, 0
  %710 = and i32 %10, 1
  %711 = icmp eq i32 %710, 1
  %712 = mul i32 %10, %10
  %713 = add i32 %712, %10
  %714 = srem i32 %713, 2
  %715 = icmp eq i32 %714, 0
  %716 = or i1 %711, %715
  br i1 %716, label %726, label %717

717:                                              ; preds = %706
  %718 = add i32 102, 57
  %719 = add i32 17, 79
  %720 = mul i32 66, 22
  %721 = sdiv i32 10, 28
  %722 = sub i32 126, 123
  %723 = sdiv i32 70, 22
  %724 = sub i32 102, 98
  %725 = mul i32 40, 4
  br i1 %716, label %735, label %700

726:                                              ; preds = %706
  %727 = sub i32 0, -159
  %728 = add i32 94, 2
  %729 = mul i32 66, 22
  %730 = sdiv i32 10, 28
  %731 = sub i32 1499284632, 1499284629
  %732 = sdiv i32 70, 22
  %733 = sub i32 1723502011, 1723502007
  %734 = mul i32 40, 4
  br label %735

735:                                              ; preds = %717, %726
  %736 = phi i32 [ %727, %726 ], [ %718, %717 ]
  %737 = phi i32 [ %728, %726 ], [ %719, %717 ]
  %738 = phi i32 [ %729, %726 ], [ %720, %717 ]
  %739 = phi i32 [ %730, %726 ], [ %721, %717 ]
  %740 = phi i32 [ %731, %726 ], [ %722, %717 ]
  %741 = phi i32 [ %732, %726 ], [ %723, %717 ]
  %742 = phi i32 [ %733, %726 ], [ %724, %717 ]
  %743 = phi i32 [ %734, %726 ], [ %725, %717 ]
  br label %745

744:                                              ; preds = %700
  br label %745

745:                                              ; preds = %744, %735
  br label %1196

746:                                              ; preds = %787, %1144, %696
  %747 = phi double [ %1147, %1144 ], [ 0.000000e+00, %696 ], [ 0.000000e+00, %787 ]
  %748 = phi float [ %1146, %1144 ], [ 0.000000e+00, %696 ], [ 0.000000e+00, %787 ]
  %749 = call fastcc float @_ZL3cosf(float %748) #9
  %750 = call fastcc float @_ZL3sinf(float %748) #9
  %751 = fadd float %749, %104
  %752 = srem i64 %100, 2
  %753 = icmp eq i64 %752, 0
  br i1 %753, label %754, label %896

754:                                              ; preds = %746
  %755 = sub i32 99, 66
  %756 = fmul float %101, %751
  %757 = add i32 42, 91
  %758 = fmul float %103, %756
  %759 = sub i32 24, 56
  %760 = fmul float %102, %750
  %761 = mul i32 8, 103
  %762 = fsub float %758, %760
  %763 = mul i32 43, 85
  %764 = fmul float %102, %756
  %765 = mul i32 79, 111
  %766 = fmul float %103, %750
  %767 = mul i32 34, 76
  %768 = fadd float %766, %764
  %769 = sdiv i32 91, 70
  %770 = fadd float %768, 5.000000e+00
  %771 = mul i32 59, 86
  %772 = fdiv float 1.000000e+00, %770
  %773 = srem i32 %5, 2
  %774 = icmp eq i32 %773, 0
  %775 = mul i32 %559, 2
  %776 = mul i32 %559, 2
  %777 = add i32 2, %776
  %778 = mul i32 %775, %777
  %779 = srem i32 %778, 4
  %780 = icmp eq i32 %779, 0
  %781 = mul i32 %559, %559
  %782 = mul i32 %781, %559
  %783 = add i32 %782, %559
  %784 = srem i32 %783, 2
  %785 = icmp eq i32 %784, 0
  %786 = and i1 %780, %785
  br i1 %786, label %822, label %787

787:                                              ; preds = %754
  %788 = fmul float %772, 3.000000e+01
  %789 = fmul float %105, %751
  %790 = fmul float %106, %789
  %791 = fmul float %107, %762
  %792 = fadd float %790, %791
  %793 = fmul float %792, %788
  %794 = fadd float %793, %109
  %795 = fptosi float %794 to i32
  %796 = fmul float %772, 1.500000e+01
  %797 = fmul float %107, %789
  %798 = fmul float %106, %762
  %799 = fsub float %797, %798
  %800 = fmul float %799, %796
  %801 = fadd float %800, %112
  %802 = fptosi float %801 to i32
  %803 = fmul float %101, %749
  %804 = fmul float %103, %803
  %805 = fsub float %760, %804
  %806 = fmul float %106, %805
  %807 = fmul float %102, %803
  %808 = fsub float %806, %807
  %809 = fsub float %808, %766
  %810 = fmul float %105, %749
  %811 = fmul float %107, %810
  %812 = fsub float %809, %811
  %813 = fmul float %812, 8.000000e+00
  %814 = fptosi float %813 to i32
  %815 = icmp slt i32 %802, %5
  %816 = icmp sgt i32 %802, 0
  %817 = and i1 %815, %816
  %818 = icmp sgt i32 %795, 0
  %819 = select i1 %817, i1 %818, i1 false
  %820 = icmp slt i32 %795, %6
  %821 = select i1 %819, i1 %820, i1 false
  br i1 %786, label %861, label %746

822:                                              ; preds = %754
  %823 = fmul float %772, 3.000000e+01
  %824 = fmul float %105, %751
  %825 = fmul float %106, %824
  %826 = fmul float %107, %762
  %827 = fadd float %825, %826
  %828 = fmul float %827, %823
  %829 = fadd float %828, %109
  %830 = fptosi float %829 to i32
  %831 = fmul float %772, 1.500000e+01
  %832 = fmul float %107, %824
  %833 = fmul float %106, %762
  %834 = fsub float %832, %833
  %835 = fmul float %834, %831
  %836 = fadd float %835, %112
  %837 = fptosi float %836 to i32
  %838 = fmul float %101, %749
  %839 = fmul float %103, %838
  %840 = fsub float %760, %839
  %841 = fmul float %106, %840
  %842 = fmul float %102, %838
  %843 = fsub float %841, %842
  %844 = fsub float %843, %766
  %845 = fmul float %105, %749
  %846 = fmul float %107, %845
  %847 = fsub float %844, %846
  %848 = fmul float %847, 8.000000e+00
  %849 = fptosi float %848 to i32
  %850 = icmp slt i32 %837, %5
  %851 = icmp sgt i32 %837, 0
  %852 = xor i1 %850, true
  %853 = xor i1 %851, true
  %854 = or i1 %852, %853
  %855 = xor i1 %854, true
  %856 = and i1 %855, true
  %857 = icmp sgt i32 %830, 0
  %858 = select i1 %856, i1 %857, i1 false
  %859 = icmp slt i32 %830, %6
  %860 = select i1 %858, i1 %859, i1 false
  br label %861

861:                                              ; preds = %787, %822
  %862 = phi float [ %823, %822 ], [ %788, %787 ]
  %863 = phi float [ %824, %822 ], [ %789, %787 ]
  %864 = phi float [ %825, %822 ], [ %790, %787 ]
  %865 = phi float [ %826, %822 ], [ %791, %787 ]
  %866 = phi float [ %827, %822 ], [ %792, %787 ]
  %867 = phi float [ %828, %822 ], [ %793, %787 ]
  %868 = phi float [ %829, %822 ], [ %794, %787 ]
  %869 = phi i32 [ %830, %822 ], [ %795, %787 ]
  %870 = phi float [ %831, %822 ], [ %796, %787 ]
  %871 = phi float [ %832, %822 ], [ %797, %787 ]
  %872 = phi float [ %833, %822 ], [ %798, %787 ]
  %873 = phi float [ %834, %822 ], [ %799, %787 ]
  %874 = phi float [ %835, %822 ], [ %800, %787 ]
  %875 = phi float [ %836, %822 ], [ %801, %787 ]
  %876 = phi i32 [ %837, %822 ], [ %802, %787 ]
  %877 = phi float [ %838, %822 ], [ %803, %787 ]
  %878 = phi float [ %839, %822 ], [ %804, %787 ]
  %879 = phi float [ %840, %822 ], [ %805, %787 ]
  %880 = phi float [ %841, %822 ], [ %806, %787 ]
  %881 = phi float [ %842, %822 ], [ %807, %787 ]
  %882 = phi float [ %843, %822 ], [ %808, %787 ]
  %883 = phi float [ %844, %822 ], [ %809, %787 ]
  %884 = phi float [ %845, %822 ], [ %810, %787 ]
  %885 = phi float [ %846, %822 ], [ %811, %787 ]
  %886 = phi float [ %847, %822 ], [ %812, %787 ]
  %887 = phi float [ %848, %822 ], [ %813, %787 ]
  %888 = phi i32 [ %849, %822 ], [ %814, %787 ]
  %889 = phi i1 [ %850, %822 ], [ %815, %787 ]
  %890 = phi i1 [ %851, %822 ], [ %816, %787 ]
  %891 = phi i1 [ %856, %822 ], [ %817, %787 ]
  %892 = phi i1 [ %857, %822 ], [ %818, %787 ]
  %893 = phi i1 [ %858, %822 ], [ %819, %787 ]
  %894 = phi i1 [ %859, %822 ], [ %820, %787 ]
  %895 = phi i1 [ %860, %822 ], [ %821, %787 ]
  br label %944

896:                                              ; preds = %746
  %897 = fmul float %101, %751
  %898 = fmul float %103, %897
  %899 = fmul float %102, %750
  %900 = fsub float %898, %899
  %901 = fmul float %102, %897
  %902 = fmul float %103, %750
  %903 = fadd float %902, %901
  %904 = fadd float %903, 5.000000e+00
  %905 = fdiv float 1.000000e+00, %904
  %906 = fmul float %905, 3.000000e+01
  %907 = fmul float %105, %751
  %908 = fmul float %106, %907
  %909 = fmul float %107, %900
  %910 = fadd float %908, %909
  %911 = fmul float %910, %906
  %912 = fadd float %911, %109
  %913 = fptosi float %912 to i32
  %914 = fmul float %905, 1.500000e+01
  %915 = fmul float %107, %907
  %916 = fmul float %106, %900
  %917 = fsub float %915, %916
  %918 = fmul float %917, %914
  %919 = fadd float %918, %112
  %920 = fptosi float %919 to i32
  %921 = fmul float %101, %749
  %922 = fmul float %103, %921
  %923 = fsub float %899, %922
  %924 = fmul float %106, %923
  %925 = fmul float %102, %921
  %926 = fsub float %924, %925
  %927 = fsub float %926, %902
  %928 = fmul float %105, %749
  %929 = fmul float %107, %928
  %930 = fsub float %927, %929
  %931 = fmul float %930, 8.000000e+00
  %932 = fptosi float %931 to i32
  %933 = icmp slt i32 %920, %5
  %934 = icmp sgt i32 %920, 0
  %935 = xor i1 %933, true
  %936 = xor i1 %934, true
  %937 = or i1 %935, %936
  %938 = xor i1 %937, true
  %939 = and i1 %938, true
  %940 = icmp sgt i32 %913, 0
  %941 = select i1 %939, i1 %940, i1 false
  %942 = icmp slt i32 %913, %6
  %943 = select i1 %941, i1 %942, i1 false
  br label %944

944:                                              ; preds = %896, %861
  %945 = phi float [ %897, %896 ], [ %756, %861 ]
  %946 = phi float [ %898, %896 ], [ %758, %861 ]
  %947 = phi float [ %899, %896 ], [ %760, %861 ]
  %948 = phi float [ %900, %896 ], [ %762, %861 ]
  %949 = phi float [ %901, %896 ], [ %764, %861 ]
  %950 = phi float [ %902, %896 ], [ %766, %861 ]
  %951 = phi float [ %903, %896 ], [ %768, %861 ]
  %952 = phi float [ %904, %896 ], [ %770, %861 ]
  %953 = phi float [ %905, %896 ], [ %772, %861 ]
  %954 = phi float [ %906, %896 ], [ %862, %861 ]
  %955 = phi float [ %907, %896 ], [ %863, %861 ]
  %956 = phi float [ %908, %896 ], [ %864, %861 ]
  %957 = phi float [ %909, %896 ], [ %865, %861 ]
  %958 = phi float [ %910, %896 ], [ %866, %861 ]
  %959 = phi float [ %911, %896 ], [ %867, %861 ]
  %960 = phi float [ %912, %896 ], [ %868, %861 ]
  %961 = phi i32 [ %913, %896 ], [ %869, %861 ]
  %962 = phi float [ %914, %896 ], [ %870, %861 ]
  %963 = phi float [ %915, %896 ], [ %871, %861 ]
  %964 = phi float [ %916, %896 ], [ %872, %861 ]
  %965 = phi float [ %917, %896 ], [ %873, %861 ]
  %966 = phi float [ %918, %896 ], [ %874, %861 ]
  %967 = phi float [ %919, %896 ], [ %875, %861 ]
  %968 = phi i32 [ %920, %896 ], [ %876, %861 ]
  %969 = phi float [ %921, %896 ], [ %877, %861 ]
  %970 = phi float [ %922, %896 ], [ %878, %861 ]
  %971 = phi float [ %923, %896 ], [ %879, %861 ]
  %972 = phi float [ %924, %896 ], [ %880, %861 ]
  %973 = phi float [ %925, %896 ], [ %881, %861 ]
  %974 = phi float [ %926, %896 ], [ %882, %861 ]
  %975 = phi float [ %927, %896 ], [ %883, %861 ]
  %976 = phi float [ %928, %896 ], [ %884, %861 ]
  %977 = phi float [ %929, %896 ], [ %885, %861 ]
  %978 = phi float [ %930, %896 ], [ %886, %861 ]
  %979 = phi float [ %931, %896 ], [ %887, %861 ]
  %980 = phi i32 [ %932, %896 ], [ %888, %861 ]
  %981 = phi i1 [ %933, %896 ], [ %889, %861 ]
  %982 = phi i1 [ %934, %896 ], [ %890, %861 ]
  %983 = phi i1 [ %939, %896 ], [ %891, %861 ]
  %984 = phi i1 [ %940, %896 ], [ %892, %861 ]
  %985 = phi i1 [ %941, %896 ], [ %893, %861 ]
  %986 = phi i1 [ %942, %896 ], [ %894, %861 ]
  %987 = phi i1 [ %943, %896 ], [ %895, %861 ]
  br i1 %987, label %988, label %1087

988:                                              ; preds = %1015, %944
  %989 = mul nsw i32 %968, %6
  %990 = srem i32 %5, 2
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %1030

992:                                              ; preds = %988
  %993 = sub i32 111, 59
  %994 = and i32 %989, %961
  %995 = sub i32 40, 27
  %996 = or i32 %989, %961
  %997 = sub i32 8, 85
  %998 = add i32 %994, %996
  %999 = mul i32 80, 57
  %1000 = sext i32 %998 to i64
  %1001 = add i32 51, 81
  %1002 = getelementptr inbounds float, float* %3, i64 %1000
  %1003 = add i32 58, 53
  %1004 = load float, float* %1002, align 4, !tbaa !13
  %1005 = srem i32 %111, 2
  %1006 = icmp eq i32 %1005, 0
  %1007 = and i32 %111, 1
  %1008 = icmp eq i32 %1007, 0
  %1009 = mul i32 %111, %111
  %1010 = add i32 %1009, %111
  %1011 = mul i32 %1010, 3
  %1012 = srem i32 %1011, 2
  %1013 = icmp eq i32 %1012, 0
  %1014 = or i1 %1008, %1013
  br i1 %1014, label %1020, label %1015

1015:                                             ; preds = %992
  %1016 = mul i32 6, 90
  %1017 = fcmp ogt float %953, %1004
  %1018 = add i32 38, 3
  %1019 = sdiv i32 104, 116
  br i1 %1014, label %1025, label %988

1020:                                             ; preds = %992
  %1021 = mul i32 6, 90
  %1022 = fcmp ogt float %953, %1004
  %1023 = sub i32 38, -3
  %1024 = sdiv i32 104, 116
  br label %1025

1025:                                             ; preds = %1015, %1020
  %1026 = phi i32 [ %1021, %1020 ], [ %1016, %1015 ]
  %1027 = phi i1 [ %1022, %1020 ], [ %1017, %1015 ]
  %1028 = phi i32 [ %1023, %1020 ], [ %1018, %1015 ]
  %1029 = phi i32 [ %1024, %1020 ], [ %1019, %1015 ]
  br label %1036

1030:                                             ; preds = %988
  %1031 = add nsw i32 %989, %961
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds float, float* %3, i64 %1032
  %1034 = load float, float* %1033, align 4, !tbaa !13
  %1035 = fcmp ogt float %953, %1034
  br label %1036

1036:                                             ; preds = %1030, %1025
  %1037 = phi i32 [ %1031, %1030 ], [ %998, %1025 ]
  %1038 = phi i64 [ %1032, %1030 ], [ %1000, %1025 ]
  %1039 = phi float* [ %1033, %1030 ], [ %1002, %1025 ]
  %1040 = phi float [ %1034, %1030 ], [ %1004, %1025 ]
  %1041 = phi i1 [ %1035, %1030 ], [ %1027, %1025 ]
  br i1 %1041, label %1042, label %1087

1042:                                             ; preds = %1076, %1036
  store float %953, float* %1039, align 4, !tbaa !13
  %1043 = icmp sgt i32 %980, 0
  %1044 = select i1 %1043, i32 %980, i32 0
  %1045 = zext i32 %1044 to i64
  %1046 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1045
  %1047 = srem i32 %990, 2
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1049, label %1052

1049:                                             ; preds = %1042
  %1050 = load i8, i8* %1046, align 1, !tbaa !10
  %1051 = getelementptr inbounds i8, i8* %4, i64 %1038
  store i8 %1050, i8* %1051, align 1, !tbaa !10
  br label %1084

1052:                                             ; preds = %1042
  %1053 = mul i32 122, 122
  %1054 = load i8, i8* %1046, align 1, !tbaa !10
  %1055 = sdiv i32 62, 110
  %1056 = getelementptr inbounds i8, i8* %4, i64 %1038
  %1057 = add i32 70, 101
  store i8 %1054, i8* %1056, align 1, !tbaa !10
  %1058 = srem i32 %8, 2
  %1059 = icmp eq i32 %1058, 0
  %1060 = mul i64 %1045, 2
  %1061 = mul i64 %1045, 2
  %1062 = add i64 2, %1061
  %1063 = mul i64 %1060, %1062
  %1064 = srem i64 %1063, 4
  %1065 = icmp eq i64 %1064, 0
  %1066 = mul i64 %1045, %1045
  %1067 = mul i64 %1066, %1045
  %1068 = add i64 %1067, %1045
  %1069 = srem i64 %1068, 2
  %1070 = icmp eq i64 %1069, 0
  %1071 = and i1 %1065, %1070
  br i1 %1071, label %1072, label %1076

1072:                                             ; preds = %1052
  %1073 = mul i32 61, 96
  %1074 = add i32 211400869, -211400821
  %1075 = mul i32 22, 46
  br label %1080

1076:                                             ; preds = %1052
  %1077 = mul i32 61, 96
  %1078 = sub i32 97, 49
  %1079 = mul i32 22, 46
  br i1 %1071, label %1080, label %1042

1080:                                             ; preds = %1076, %1072
  %1081 = phi i32 [ %1077, %1076 ], [ %1073, %1072 ]
  %1082 = phi i32 [ %1078, %1076 ], [ %1074, %1072 ]
  %1083 = phi i32 [ %1079, %1076 ], [ %1075, %1072 ]
  br label %1084

1084:                                             ; preds = %1080, %1049
  %1085 = phi i8 [ %1054, %1080 ], [ %1050, %1049 ]
  %1086 = phi i8* [ %1056, %1080 ], [ %1051, %1049 ]
  br label %1087

1087:                                             ; preds = %1114, %1084, %1036, %944
  %1088 = srem i64 %752, 2
  %1089 = icmp eq i64 %1088, 0
  br i1 %1089, label %1090, label %1095

1090:                                             ; preds = %1087
  %1091 = fadd double %747, 7.000000e-02
  %1092 = fptrunc double %1091 to float
  %1093 = fpext float %1092 to double
  %1094 = fcmp olt double %1093, 6.280000e+00
  br label %1144

1095:                                             ; preds = %1087
  %1096 = mul i32 13, 4
  %1097 = fadd double %747, 7.000000e-02
  %1098 = mul i32 85, 112
  %1099 = fptrunc double %1097 to float
  %1100 = sdiv i32 11, 117
  %1101 = srem i32 %5, 2
  %1102 = icmp eq i32 %1101, 0
  %1103 = mul i64 %100, 2
  %1104 = mul i64 %100, 2
  %1105 = add i64 2, %1104
  %1106 = mul i64 %1103, %1105
  %1107 = srem i64 %1106, 4
  %1108 = icmp eq i64 %1107, 0
  %1109 = mul i64 %100, %100
  %1110 = add i64 %1109, %100
  %1111 = srem i64 %1110, 2
  %1112 = icmp eq i64 %1111, 0
  %1113 = and i1 %1108, %1112
  br i1 %1113, label %1124, label %1114

1114:                                             ; preds = %1095
  %1115 = fpext float %1099 to double
  %1116 = add i32 58, 77
  %1117 = fcmp olt double %1115, 6.280000e+00
  %1118 = sdiv i32 10, 86
  %1119 = add i32 9, 120
  %1120 = mul i32 60, 74
  %1121 = sdiv i32 64, 3
  %1122 = mul i32 12, 121
  %1123 = add i32 103, 45
  br i1 %1113, label %1134, label %1087

1124:                                             ; preds = %1095
  %1125 = fpext float %1099 to double
  %1126 = add i32 119, 16
  %1127 = fcmp olt double %1125, 6.280000e+00
  %1128 = sdiv i32 10, 86
  %1129 = sub i32 1737074037, 1737073908
  %1130 = mul i32 60, 74
  %1131 = sdiv i32 64, 3
  %1132 = mul i32 12, 121
  %1133 = sub i32 103, -45
  br label %1134

1134:                                             ; preds = %1114, %1124
  %1135 = phi double [ %1125, %1124 ], [ %1115, %1114 ]
  %1136 = phi i32 [ %1126, %1124 ], [ %1116, %1114 ]
  %1137 = phi i1 [ %1127, %1124 ], [ %1117, %1114 ]
  %1138 = phi i32 [ %1128, %1124 ], [ %1118, %1114 ]
  %1139 = phi i32 [ %1129, %1124 ], [ %1119, %1114 ]
  %1140 = phi i32 [ %1130, %1124 ], [ %1120, %1114 ]
  %1141 = phi i32 [ %1131, %1124 ], [ %1121, %1114 ]
  %1142 = phi i32 [ %1132, %1124 ], [ %1122, %1114 ]
  %1143 = phi i32 [ %1133, %1124 ], [ %1123, %1114 ]
  br label %1144

1144:                                             ; preds = %1134, %1090
  %1145 = phi double [ %1097, %1134 ], [ %1091, %1090 ]
  %1146 = phi float [ %1099, %1134 ], [ %1092, %1090 ]
  %1147 = phi double [ %1135, %1134 ], [ %1093, %1090 ]
  %1148 = phi i1 [ %1137, %1134 ], [ %1094, %1090 ]
  br i1 %1148, label %746, label %700, !llvm.loop !20

1149:                                             ; preds = %1171, %1603
  %1150 = srem i32 %491, 2
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1152, label %1153

1152:                                             ; preds = %1149
  br label %1195

1153:                                             ; preds = %1149
  %1154 = sdiv i32 95, 92
  %1155 = sub i32 99, 46
  %1156 = add i32 54, 18
  %1157 = srem i32 %8, 2
  %1158 = icmp eq i32 %1157, 0
  %1159 = mul i32 %284, 2
  %1160 = mul i32 %284, 2
  %1161 = add i32 2, %1160
  %1162 = mul i32 %1159, %1161
  %1163 = srem i32 %1162, 4
  %1164 = icmp eq i32 %1163, 0
  %1165 = mul i32 %284, %284
  %1166 = mul i32 %1165, %284
  %1167 = add i32 %1166, %284
  %1168 = srem i32 %1167, 2
  %1169 = icmp eq i32 %1168, 0
  %1170 = and i1 %1164, %1169
  br i1 %1170, label %1179, label %1171

1171:                                             ; preds = %1153
  %1172 = add i32 74, 29
  %1173 = add i32 68, 17
  %1174 = sub i32 41, 44
  %1175 = sub i32 113, 45
  %1176 = sdiv i32 66, 105
  %1177 = mul i32 91, 100
  %1178 = sub i32 54, 120
  br i1 %1170, label %1187, label %1149

1179:                                             ; preds = %1153
  %1180 = add i32 8, 95
  %1181 = sub i32 0, -85
  %1182 = add i32 826446218, -826446221
  %1183 = sub i32 1047614059, 1047613991
  %1184 = sdiv i32 66, 105
  %1185 = mul i32 91, 100
  %1186 = sub i32 -308742720, -308742654
  br label %1187

1187:                                             ; preds = %1171, %1179
  %1188 = phi i32 [ %1180, %1179 ], [ %1172, %1171 ]
  %1189 = phi i32 [ %1181, %1179 ], [ %1173, %1171 ]
  %1190 = phi i32 [ %1182, %1179 ], [ %1174, %1171 ]
  %1191 = phi i32 [ %1183, %1179 ], [ %1175, %1171 ]
  %1192 = phi i32 [ %1184, %1179 ], [ %1176, %1171 ]
  %1193 = phi i32 [ %1185, %1179 ], [ %1177, %1171 ]
  %1194 = phi i32 [ %1186, %1179 ], [ %1178, %1171 ]
  br label %1195

1195:                                             ; preds = %1187, %1152
  ret void

1196:                                             ; preds = %1338, %1603, %745
  %1197 = phi double [ 0.000000e+00, %745 ], [ %1605, %1603 ], [ 0.000000e+00, %1338 ]
  %1198 = phi i32 [ 0, %745 ], [ %1200, %1603 ], [ 0, %1338 ]
  %1199 = phi float [ 0.000000e+00, %745 ], [ %1604, %1603 ], [ 0.000000e+00, %1338 ]
  %1200 = add nuw nsw i32 %1198, 1
  %1201 = sitofp i32 %1198 to float
  %1202 = fadd float %101, %1201
  %1203 = call fastcc float @_ZL3cosf(float %1199) #9
  %1204 = fcmp une float %1202, 0.000000e+00
  %1205 = fmul float %1202, 2.000000e+00
  %1206 = fmul float %1203, 2.000000e+00
  %1207 = select i1 %1204, float %1203, float %1206
  %1208 = select i1 %1204, float %1205, float %1202
  %1209 = call fastcc float @_ZL3sinf(float %1199) #9
  %1210 = fmul float %1209, 2.000000e+00
  %1211 = select i1 %701, float %1209, float %1210
  %1212 = fadd float %1207, %104
  %1213 = fmul float %1208, %1212
  %1214 = fmul float %103, %1213
  %1215 = fmul float %703, %1211
  %1216 = fsub float %1214, %1215
  %1217 = fcmp une float %1212, 0.000000e+00
  %1218 = srem i32 %484, 2
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1220, label %1267

1220:                                             ; preds = %1196
  %1221 = fmul float %1216, 2.000000e+00
  %1222 = fmul float %1212, 2.000000e+00
  %1223 = select i1 %1217, float %1212, float %1222
  %1224 = select i1 %1217, float %1221, float %1216
  %1225 = fmul float %1208, %1223
  %1226 = fmul float %703, %1225
  %1227 = fmul float %103, %1211
  %1228 = fadd float %1227, %1226
  %1229 = fadd float %1228, 5.000000e+00
  %1230 = fdiv float 1.000000e+00, %1229
  %1231 = fmul float %1230, 3.000000e+01
  %1232 = fmul float %105, %1223
  %1233 = fmul float %106, %1232
  %1234 = fmul float %107, %1224
  %1235 = fadd float %1233, %1234
  %1236 = fmul float %1235, %1231
  %1237 = fadd float %1236, %109
  %1238 = fptosi float %1237 to i32
  %1239 = fmul float %1230, 1.500000e+01
  %1240 = fmul float %107, %1232
  %1241 = fmul float %106, %1224
  %1242 = fsub float %1240, %1241
  %1243 = fmul float %1242, %1239
  %1244 = fadd float %1243, %112
  %1245 = fptosi float %1244 to i32
  %1246 = fmul float %1208, %1207
  %1247 = fmul float %103, %1246
  %1248 = fsub float %1215, %1247
  %1249 = fmul float %106, %1248
  %1250 = fmul float %703, %1246
  %1251 = fsub float %1249, %1250
  %1252 = fsub float %1251, %1227
  %1253 = fmul float %105, %1207
  %1254 = fmul float %107, %1253
  %1255 = fsub float %1252, %1254
  %1256 = fmul float %1255, 8.000000e+00
  %1257 = fptosi float %1256 to i32
  %1258 = icmp slt i32 %1245, %5
  %1259 = icmp sgt i32 %1245, 0
  %1260 = xor i1 %1259, true
  %1261 = xor i1 %1258, %1260
  %1262 = and i1 %1261, %1258
  %1263 = icmp sgt i32 %1238, 0
  %1264 = select i1 %1262, i1 %1263, i1 false
  %1265 = icmp slt i32 %1238, %6
  %1266 = select i1 %1264, i1 %1265, i1 false
  br label %1426

1267:                                             ; preds = %1196
  %1268 = add i32 90, 7
  %1269 = fmul float %1216, 2.000000e+00
  %1270 = add i32 18, 49
  %1271 = fmul float %1212, 2.000000e+00
  %1272 = add i32 41, 39
  %1273 = select i1 %1217, float %1212, float %1271
  %1274 = add i32 100, 20
  %1275 = select i1 %1217, float %1269, float %1216
  %1276 = mul i32 58, 104
  %1277 = fmul float %1208, %1273
  %1278 = srem i32 %477, 2
  %1279 = icmp eq i32 %1278, 0
  %1280 = mul i32 %277, 2
  %1281 = mul i32 %277, 2
  %1282 = add i32 2, %1281
  %1283 = mul i32 %1280, %1282
  %1284 = srem i32 %1283, 4
  %1285 = icmp eq i32 %1284, 0
  %1286 = mul i32 %277, %277
  %1287 = mul i32 %1286, %277
  %1288 = add i32 %1287, %277
  %1289 = srem i32 %1288, 2
  %1290 = icmp eq i32 %1289, 0
  %1291 = and i1 %1285, %1290
  br i1 %1291, label %1292, label %1338

1292:                                             ; preds = %1267
  %1293 = add i32 36, -7
  %1294 = fmul float %703, %1277
  %1295 = sub i32 687735721, 687735634
  %1296 = fmul float %103, %1211
  %1297 = sdiv i32 4, 14
  %1298 = fadd float %1296, %1294
  %1299 = sub i32 -1933618601, -1933618584
  %1300 = fadd float %1298, 5.000000e+00
  %1301 = fdiv float 1.000000e+00, %1300
  %1302 = fmul float %1301, 3.000000e+01
  %1303 = fmul float %105, %1273
  %1304 = fmul float %106, %1303
  %1305 = fmul float %107, %1275
  %1306 = fadd float %1304, %1305
  %1307 = fmul float %1306, %1302
  %1308 = fadd float %1307, %109
  %1309 = fptosi float %1308 to i32
  %1310 = fmul float %1301, 1.500000e+01
  %1311 = fmul float %107, %1303
  %1312 = fmul float %106, %1275
  %1313 = fsub float %1311, %1312
  %1314 = fmul float %1313, %1310
  %1315 = fadd float %1314, %112
  %1316 = fptosi float %1315 to i32
  %1317 = fmul float %1208, %1207
  %1318 = fmul float %103, %1317
  %1319 = fsub float %1215, %1318
  %1320 = fmul float %106, %1319
  %1321 = fmul float %703, %1317
  %1322 = fsub float %1320, %1321
  %1323 = fsub float %1322, %1296
  %1324 = fmul float %105, %1207
  %1325 = fmul float %107, %1324
  %1326 = fsub float %1323, %1325
  %1327 = fmul float %1326, 8.000000e+00
  %1328 = fptosi float %1327 to i32
  %1329 = icmp slt i32 %1316, %5
  %1330 = icmp sgt i32 %1316, 0
  %1331 = xor i1 %1330, true
  %1332 = xor i1 %1329, %1331
  %1333 = and i1 %1332, %1329
  %1334 = icmp sgt i32 %1309, 0
  %1335 = select i1 %1333, i1 %1334, i1 false
  %1336 = icmp slt i32 %1309, %6
  %1337 = select i1 %1335, i1 %1336, i1 false
  br label %1382

1338:                                             ; preds = %1267
  %1339 = sub i32 36, 7
  %1340 = fmul float %703, %1277
  %1341 = sub i32 118, 31
  %1342 = fmul float %103, %1211
  %1343 = sdiv i32 4, 14
  %1344 = fadd float %1342, %1340
  %1345 = sub i32 87, 104
  %1346 = fadd float %1344, 5.000000e+00
  %1347 = fdiv float 1.000000e+00, %1346
  %1348 = fmul float %1347, 3.000000e+01
  %1349 = fmul float %105, %1273
  %1350 = fmul float %106, %1349
  %1351 = fmul float %107, %1275
  %1352 = fadd float %1350, %1351
  %1353 = fmul float %1352, %1348
  %1354 = fadd float %1353, %109
  %1355 = fptosi float %1354 to i32
  %1356 = fmul float %1347, 1.500000e+01
  %1357 = fmul float %107, %1349
  %1358 = fmul float %106, %1275
  %1359 = fsub float %1357, %1358
  %1360 = fmul float %1359, %1356
  %1361 = fadd float %1360, %112
  %1362 = fptosi float %1361 to i32
  %1363 = fmul float %1208, %1207
  %1364 = fmul float %103, %1363
  %1365 = fsub float %1215, %1364
  %1366 = fmul float %106, %1365
  %1367 = fmul float %703, %1363
  %1368 = fsub float %1366, %1367
  %1369 = fsub float %1368, %1342
  %1370 = fmul float %105, %1207
  %1371 = fmul float %107, %1370
  %1372 = fsub float %1369, %1371
  %1373 = fmul float %1372, 8.000000e+00
  %1374 = fptosi float %1373 to i32
  %1375 = icmp slt i32 %1362, %5
  %1376 = icmp sgt i32 %1362, 0
  %1377 = and i1 %1375, %1376
  %1378 = icmp sgt i32 %1355, 0
  %1379 = select i1 %1377, i1 %1378, i1 false
  %1380 = icmp slt i32 %1355, %6
  %1381 = select i1 %1379, i1 %1380, i1 false
  br i1 %1291, label %1382, label %1196

1382:                                             ; preds = %1338, %1292
  %1383 = phi i32 [ %1339, %1338 ], [ %1293, %1292 ]
  %1384 = phi float [ %1340, %1338 ], [ %1294, %1292 ]
  %1385 = phi i32 [ %1341, %1338 ], [ %1295, %1292 ]
  %1386 = phi float [ %1342, %1338 ], [ %1296, %1292 ]
  %1387 = phi i32 [ %1343, %1338 ], [ %1297, %1292 ]
  %1388 = phi float [ %1344, %1338 ], [ %1298, %1292 ]
  %1389 = phi i32 [ %1345, %1338 ], [ %1299, %1292 ]
  %1390 = phi float [ %1346, %1338 ], [ %1300, %1292 ]
  %1391 = phi float [ %1347, %1338 ], [ %1301, %1292 ]
  %1392 = phi float [ %1348, %1338 ], [ %1302, %1292 ]
  %1393 = phi float [ %1349, %1338 ], [ %1303, %1292 ]
  %1394 = phi float [ %1350, %1338 ], [ %1304, %1292 ]
  %1395 = phi float [ %1351, %1338 ], [ %1305, %1292 ]
  %1396 = phi float [ %1352, %1338 ], [ %1306, %1292 ]
  %1397 = phi float [ %1353, %1338 ], [ %1307, %1292 ]
  %1398 = phi float [ %1354, %1338 ], [ %1308, %1292 ]
  %1399 = phi i32 [ %1355, %1338 ], [ %1309, %1292 ]
  %1400 = phi float [ %1356, %1338 ], [ %1310, %1292 ]
  %1401 = phi float [ %1357, %1338 ], [ %1311, %1292 ]
  %1402 = phi float [ %1358, %1338 ], [ %1312, %1292 ]
  %1403 = phi float [ %1359, %1338 ], [ %1313, %1292 ]
  %1404 = phi float [ %1360, %1338 ], [ %1314, %1292 ]
  %1405 = phi float [ %1361, %1338 ], [ %1315, %1292 ]
  %1406 = phi i32 [ %1362, %1338 ], [ %1316, %1292 ]
  %1407 = phi float [ %1363, %1338 ], [ %1317, %1292 ]
  %1408 = phi float [ %1364, %1338 ], [ %1318, %1292 ]
  %1409 = phi float [ %1365, %1338 ], [ %1319, %1292 ]
  %1410 = phi float [ %1366, %1338 ], [ %1320, %1292 ]
  %1411 = phi float [ %1367, %1338 ], [ %1321, %1292 ]
  %1412 = phi float [ %1368, %1338 ], [ %1322, %1292 ]
  %1413 = phi float [ %1369, %1338 ], [ %1323, %1292 ]
  %1414 = phi float [ %1370, %1338 ], [ %1324, %1292 ]
  %1415 = phi float [ %1371, %1338 ], [ %1325, %1292 ]
  %1416 = phi float [ %1372, %1338 ], [ %1326, %1292 ]
  %1417 = phi float [ %1373, %1338 ], [ %1327, %1292 ]
  %1418 = phi i32 [ %1374, %1338 ], [ %1328, %1292 ]
  %1419 = phi i1 [ %1375, %1338 ], [ %1329, %1292 ]
  %1420 = phi i1 [ %1376, %1338 ], [ %1330, %1292 ]
  %1421 = phi i1 [ %1377, %1338 ], [ %1333, %1292 ]
  %1422 = phi i1 [ %1378, %1338 ], [ %1334, %1292 ]
  %1423 = phi i1 [ %1379, %1338 ], [ %1335, %1292 ]
  %1424 = phi i1 [ %1380, %1338 ], [ %1336, %1292 ]
  %1425 = phi i1 [ %1381, %1338 ], [ %1337, %1292 ]
  br label %1426

1426:                                             ; preds = %1382, %1220
  %1427 = phi float [ %1269, %1382 ], [ %1221, %1220 ]
  %1428 = phi float [ %1271, %1382 ], [ %1222, %1220 ]
  %1429 = phi float [ %1273, %1382 ], [ %1223, %1220 ]
  %1430 = phi float [ %1275, %1382 ], [ %1224, %1220 ]
  %1431 = phi float [ %1277, %1382 ], [ %1225, %1220 ]
  %1432 = phi float [ %1384, %1382 ], [ %1226, %1220 ]
  %1433 = phi float [ %1386, %1382 ], [ %1227, %1220 ]
  %1434 = phi float [ %1388, %1382 ], [ %1228, %1220 ]
  %1435 = phi float [ %1390, %1382 ], [ %1229, %1220 ]
  %1436 = phi float [ %1391, %1382 ], [ %1230, %1220 ]
  %1437 = phi float [ %1392, %1382 ], [ %1231, %1220 ]
  %1438 = phi float [ %1393, %1382 ], [ %1232, %1220 ]
  %1439 = phi float [ %1394, %1382 ], [ %1233, %1220 ]
  %1440 = phi float [ %1395, %1382 ], [ %1234, %1220 ]
  %1441 = phi float [ %1396, %1382 ], [ %1235, %1220 ]
  %1442 = phi float [ %1397, %1382 ], [ %1236, %1220 ]
  %1443 = phi float [ %1398, %1382 ], [ %1237, %1220 ]
  %1444 = phi i32 [ %1399, %1382 ], [ %1238, %1220 ]
  %1445 = phi float [ %1400, %1382 ], [ %1239, %1220 ]
  %1446 = phi float [ %1401, %1382 ], [ %1240, %1220 ]
  %1447 = phi float [ %1402, %1382 ], [ %1241, %1220 ]
  %1448 = phi float [ %1403, %1382 ], [ %1242, %1220 ]
  %1449 = phi float [ %1404, %1382 ], [ %1243, %1220 ]
  %1450 = phi float [ %1405, %1382 ], [ %1244, %1220 ]
  %1451 = phi i32 [ %1406, %1382 ], [ %1245, %1220 ]
  %1452 = phi float [ %1407, %1382 ], [ %1246, %1220 ]
  %1453 = phi float [ %1408, %1382 ], [ %1247, %1220 ]
  %1454 = phi float [ %1409, %1382 ], [ %1248, %1220 ]
  %1455 = phi float [ %1410, %1382 ], [ %1249, %1220 ]
  %1456 = phi float [ %1411, %1382 ], [ %1250, %1220 ]
  %1457 = phi float [ %1412, %1382 ], [ %1251, %1220 ]
  %1458 = phi float [ %1413, %1382 ], [ %1252, %1220 ]
  %1459 = phi float [ %1414, %1382 ], [ %1253, %1220 ]
  %1460 = phi float [ %1415, %1382 ], [ %1254, %1220 ]
  %1461 = phi float [ %1416, %1382 ], [ %1255, %1220 ]
  %1462 = phi float [ %1417, %1382 ], [ %1256, %1220 ]
  %1463 = phi i32 [ %1418, %1382 ], [ %1257, %1220 ]
  %1464 = phi i1 [ %1419, %1382 ], [ %1258, %1220 ]
  %1465 = phi i1 [ %1420, %1382 ], [ %1259, %1220 ]
  %1466 = phi i1 [ %1421, %1382 ], [ %1262, %1220 ]
  %1467 = phi i1 [ %1422, %1382 ], [ %1263, %1220 ]
  %1468 = phi i1 [ %1423, %1382 ], [ %1264, %1220 ]
  %1469 = phi i1 [ %1424, %1382 ], [ %1265, %1220 ]
  %1470 = phi i1 [ %1425, %1382 ], [ %1266, %1220 ]
  br i1 %1470, label %1471, label %1562

1471:                                             ; preds = %1501, %1426
  %1472 = mul nsw i32 %1451, %6
  %1473 = add nsw i32 %1472, %1444
  %1474 = sext i32 %1473 to i64
  %1475 = getelementptr inbounds float, float* %3, i64 %1474
  %1476 = load float, float* %1475, align 4, !tbaa !13
  %1477 = srem i32 %491, 2
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1479, label %1507

1479:                                             ; preds = %1471
  %1480 = add i32 66, 42
  %1481 = fcmp ogt float %1436, %1476
  %1482 = add i32 61, 12
  %1483 = add i32 118, 15
  %1484 = sdiv i32 19, 28
  %1485 = add i32 117, 29
  %1486 = mul i32 26, 53
  %1487 = sdiv i32 78, 90
  %1488 = srem i32 %704, 2
  %1489 = icmp eq i32 %1488, 0
  %1490 = and i32 %413, 1
  %1491 = icmp eq i32 %1490, 0
  %1492 = mul i32 %413, %413
  %1493 = add i32 %1492, %413
  %1494 = mul i32 %1493, 3
  %1495 = srem i32 %1494, 2
  %1496 = icmp eq i32 %1495, 0
  %1497 = or i1 %1491, %1496
  br i1 %1497, label %1498, label %1501

1498:                                             ; preds = %1479
  %1499 = mul i32 3, 72
  %1500 = add i32 0, 61
  br label %1504

1501:                                             ; preds = %1479
  %1502 = mul i32 3, 72
  %1503 = sub i32 586486345, 586486284
  br i1 %1497, label %1504, label %1471

1504:                                             ; preds = %1501, %1498
  %1505 = phi i32 [ %1502, %1501 ], [ %1499, %1498 ]
  %1506 = phi i32 [ %1503, %1501 ], [ %1500, %1498 ]
  br label %1509

1507:                                             ; preds = %1471
  %1508 = fcmp ogt float %1436, %1476
  br label %1509

1509:                                             ; preds = %1507, %1504
  %1510 = phi i1 [ %1508, %1507 ], [ %1481, %1504 ]
  br i1 %1510, label %1511, label %1562

1511:                                             ; preds = %1546, %1509
  store float %1436, float* %1475, align 4, !tbaa !13
  %1512 = icmp sgt i32 %1463, 0
  %1513 = srem i32 %491, 2
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1515, label %1521

1515:                                             ; preds = %1511
  %1516 = select i1 %1512, i32 %1463, i32 0
  %1517 = zext i32 %1516 to i64
  %1518 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1517
  %1519 = load i8, i8* %1518, align 1, !tbaa !10
  %1520 = getelementptr inbounds i8, i8* %4, i64 %1474
  store i8 %1519, i8* %1520, align 1, !tbaa !10
  br label %1556

1521:                                             ; preds = %1511
  %1522 = mul i32 47, 63
  %1523 = select i1 %1512, i32 %1463, i32 0
  %1524 = sub i32 76, 40
  %1525 = zext i32 %1523 to i64
  %1526 = mul i32 71, 3
  %1527 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1525
  %1528 = sdiv i32 35, 15
  %1529 = srem i32 %2, 2
  %1530 = icmp eq i32 %1529, 0
  %1531 = mul i32 %1451, %1451
  %1532 = add i32 %1531, %1451
  %1533 = mul i32 %1532, 3
  %1534 = srem i32 %1533, 2
  %1535 = icmp eq i32 %1534, 0
  %1536 = mul i32 %1451, %1451
  %1537 = add i32 %1536, %1451
  %1538 = srem i32 %1537, 2
  %1539 = icmp eq i32 %1538, 0
  %1540 = and i1 %1535, %1539
  br i1 %1540, label %1541, label %1546

1541:                                             ; preds = %1521
  %1542 = load i8, i8* %1527, align 1, !tbaa !10
  %1543 = sub i32 78, -103
  %1544 = getelementptr inbounds i8, i8* %4, i64 %1474
  %1545 = mul i32 64, 117
  store i8 %1542, i8* %1544, align 1, !tbaa !10
  br label %1551

1546:                                             ; preds = %1521
  %1547 = load i8, i8* %1527, align 1, !tbaa !10
  %1548 = add i32 78, 103
  %1549 = getelementptr inbounds i8, i8* %4, i64 %1474
  %1550 = mul i32 64, 117
  store i8 %1547, i8* %1549, align 1, !tbaa !10
  br i1 %1540, label %1551, label %1511

1551:                                             ; preds = %1546, %1541
  %1552 = phi i8 [ %1547, %1546 ], [ %1542, %1541 ]
  %1553 = phi i32 [ %1548, %1546 ], [ %1543, %1541 ]
  %1554 = phi i8* [ %1549, %1546 ], [ %1544, %1541 ]
  %1555 = phi i32 [ %1550, %1546 ], [ %1545, %1541 ]
  br label %1556

1556:                                             ; preds = %1551, %1515
  %1557 = phi i32 [ %1523, %1551 ], [ %1516, %1515 ]
  %1558 = phi i64 [ %1525, %1551 ], [ %1517, %1515 ]
  %1559 = phi i8* [ %1527, %1551 ], [ %1518, %1515 ]
  %1560 = phi i8 [ %1552, %1551 ], [ %1519, %1515 ]
  %1561 = phi i8* [ %1554, %1551 ], [ %1520, %1515 ]
  br label %1562

1562:                                             ; preds = %1587, %1556, %1509, %1426
  %1563 = fadd double %1197, 7.000000e-02
  %1564 = srem i32 %111, 2
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1566, label %1599

1566:                                             ; preds = %1562
  %1567 = add i32 25, 53
  %1568 = fptrunc double %1563 to float
  %1569 = sdiv i32 118, 96
  %1570 = fpext float %1568 to double
  %1571 = srem i32 %491, 2
  %1572 = icmp eq i32 %1571, 0
  %1573 = and i64 %1088, 1
  %1574 = icmp eq i64 %1573, 0
  %1575 = mul i64 %1088, %1088
  %1576 = add i64 %1575, %1088
  %1577 = mul i64 %1576, 3
  %1578 = srem i64 %1577, 2
  %1579 = icmp eq i64 %1578, 0
  %1580 = or i1 %1574, %1579
  br i1 %1580, label %1581, label %1587

1581:                                             ; preds = %1566
  %1582 = sub i32 65, -117
  %1583 = icmp eq i32 %1200, 90
  %1584 = add i32 2105544014, -2105543974
  %1585 = add i32 32, 106
  %1586 = sdiv i32 55, 3
  br label %1593

1587:                                             ; preds = %1566
  %1588 = add i32 65, 117
  %1589 = icmp eq i32 %1200, 90
  %1590 = sub i32 51, 11
  %1591 = add i32 96, 42
  %1592 = sdiv i32 55, 3
  br i1 %1580, label %1593, label %1562

1593:                                             ; preds = %1587, %1581
  %1594 = phi i32 [ %1588, %1587 ], [ %1582, %1581 ]
  %1595 = phi i1 [ %1589, %1587 ], [ %1583, %1581 ]
  %1596 = phi i32 [ %1590, %1587 ], [ %1584, %1581 ]
  %1597 = phi i32 [ %1591, %1587 ], [ %1585, %1581 ]
  %1598 = phi i32 [ %1592, %1587 ], [ %1586, %1581 ]
  br label %1603

1599:                                             ; preds = %1562
  %1600 = fptrunc double %1563 to float
  %1601 = fpext float %1600 to double
  %1602 = icmp eq i32 %1200, 90
  br label %1603

1603:                                             ; preds = %1599, %1593
  %1604 = phi float [ %1600, %1599 ], [ %1568, %1593 ]
  %1605 = phi double [ %1601, %1599 ], [ %1570, %1593 ]
  %1606 = phi i1 [ %1602, %1599 ], [ %1595, %1593 ]
  br i1 %1606, label %1149, label %1196, !llvm.loop !21
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

11:                                               ; preds = %47, %61, %0
  %12 = phi i32 [ 5, %0 ], [ %62, %61 ], [ 0, %47 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = srem i32 %10, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = and i32 %12, 1
  %19 = or i32 %12, 1
  %20 = add i32 %18, %19
  %21 = icmp eq i32 %20, 10
  br label %61

22:                                               ; preds = %11
  %23 = add i32 98, 126
  %24 = add nuw nsw i32 %12, 1
  %25 = sub i32 51, 87
  %26 = icmp eq i32 %24, 10
  %27 = sub i32 79, 5
  %28 = srem i32 %12, 2
  %29 = icmp eq i32 %28, 0
  %30 = mul i32 %12, %12
  %31 = add i32 %30, %12
  %32 = mul i32 %31, 3
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = mul i32 %12, %12
  %36 = add i32 %35, %12
  %37 = srem i32 %36, 2
  %38 = icmp eq i32 %37, 0
  %39 = and i1 %34, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %22
  %41 = add i32 40, -59
  %42 = sdiv i32 24, 42
  %43 = sub i32 -888965628, -888965557
  %44 = mul i32 25, 52
  %45 = mul i32 34, 10
  %46 = mul i32 88, 51
  br label %54

47:                                               ; preds = %22
  %48 = sub i32 40, 59
  %49 = sdiv i32 24, 42
  %50 = sub i32 2, 73
  %51 = mul i32 25, 52
  %52 = mul i32 34, 10
  %53 = mul i32 88, 51
  br i1 %39, label %54, label %11

54:                                               ; preds = %47, %40
  %55 = phi i32 [ %48, %47 ], [ %41, %40 ]
  %56 = phi i32 [ %49, %47 ], [ %42, %40 ]
  %57 = phi i32 [ %50, %47 ], [ %43, %40 ]
  %58 = phi i32 [ %51, %47 ], [ %44, %40 ]
  %59 = phi i32 [ %52, %47 ], [ %45, %40 ]
  %60 = phi i32 [ %53, %47 ], [ %46, %40 ]
  br label %61

61:                                               ; preds = %54, %17
  %62 = phi i32 [ %24, %54 ], [ %20, %17 ]
  %63 = phi i1 [ %26, %54 ], [ %21, %17 ]
  br i1 %63, label %111, label %11, !llvm.loop !22

64:                                               ; preds = %85, %165
  call void @llvm.stackrestore(i8* %5)
  %65 = srem i8 %115, 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %109

67:                                               ; preds = %64
  %68 = sub i32 63, 106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %69 = mul i32 120, 119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %70 = sdiv i32 103, 126
  %71 = srem i32 %12, 2
  %72 = icmp eq i32 %71, 0
  %73 = mul i32 %113, 2
  %74 = mul i32 %113, 2
  %75 = add i32 2, %74
  %76 = mul i32 %73, %75
  %77 = srem i32 %76, 4
  %78 = icmp eq i32 %77, 0
  %79 = mul i32 %113, %113
  %80 = mul i32 %79, %113
  %81 = add i32 %80, %113
  %82 = srem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = and i1 %78, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %67
  %86 = sub i32 458951399, 458951419
  %87 = sdiv i32 72, 59
  %88 = add i32 24, 64
  %89 = sdiv i32 103, 108
  %90 = sub i32 0, -91
  %91 = sdiv i32 33, 73
  %92 = mul i32 91, 14
  br i1 %84, label %101, label %64

93:                                               ; preds = %67
  %94 = sub i32 38, 58
  %95 = sdiv i32 72, 59
  %96 = add i32 32, 56
  %97 = sdiv i32 103, 108
  %98 = add i32 65, 26
  %99 = sdiv i32 33, 73
  %100 = mul i32 91, 14
  br label %101

101:                                              ; preds = %85, %93
  %102 = phi i32 [ %94, %93 ], [ %86, %85 ]
  %103 = phi i32 [ %95, %93 ], [ %87, %85 ]
  %104 = phi i32 [ %96, %93 ], [ %88, %85 ]
  %105 = phi i32 [ %97, %93 ], [ %89, %85 ]
  %106 = phi i32 [ %98, %93 ], [ %90, %85 ]
  %107 = phi i32 [ %99, %93 ], [ %91, %85 ]
  %108 = phi i32 [ %100, %93 ], [ %92, %85 ]
  br label %110

109:                                              ; preds = %64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %110

110:                                              ; preds = %109, %101
  ret i32 %166

111:                                              ; preds = %151, %165, %61
  %112 = phi i64 [ %167, %165 ], [ 0, %61 ], [ 0, %151 ]
  %113 = phi i32 [ %166, %165 ], [ 0, %61 ], [ 0, %151 ]
  %114 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %112
  %115 = load i8, i8* %114, align 1, !tbaa !10
  %116 = sext i8 %115 to i32
  %117 = add nsw i32 %113, %116
  %118 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %112
  %119 = load float, float* %118, align 4, !tbaa !13
  %120 = sitofp i32 %117 to float
  %121 = fadd float %119, %120
  %122 = srem i32 %62, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %111
  %125 = fptosi float %121 to i32
  %126 = sub i64 0, %112
  %127 = add i64 %126, -1
  %128 = sub i64 0, %127
  %129 = icmp eq i64 %128, 1760
  br label %165

130:                                              ; preds = %111
  %131 = mul i32 102, 87
  %132 = fptosi float %121 to i32
  %133 = sdiv i32 24, 24
  %134 = add nuw nsw i64 %112, 1
  %135 = srem i32 %15, 2
  %136 = icmp eq i32 %135, 0
  %137 = and i32 %15, 1
  %138 = icmp eq i32 %137, 1
  %139 = mul i32 %15, %15
  %140 = add i32 %139, %15
  %141 = srem i32 %140, 2
  %142 = icmp eq i32 %141, 0
  %143 = or i1 %138, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %130
  %145 = mul i32 101, 66
  %146 = icmp eq i64 %134, 1760
  %147 = add i32 63, -65
  %148 = add i32 88, -76
  %149 = sdiv i32 95, 102
  %150 = sdiv i32 125, 40
  br label %158

151:                                              ; preds = %130
  %152 = mul i32 101, 66
  %153 = icmp eq i64 %134, 1760
  %154 = sub i32 63, 65
  %155 = sub i32 88, 76
  %156 = sdiv i32 95, 102
  %157 = sdiv i32 125, 40
  br i1 %143, label %158, label %111

158:                                              ; preds = %151, %144
  %159 = phi i32 [ %152, %151 ], [ %145, %144 ]
  %160 = phi i1 [ %153, %151 ], [ %146, %144 ]
  %161 = phi i32 [ %154, %151 ], [ %147, %144 ]
  %162 = phi i32 [ %155, %151 ], [ %148, %144 ]
  %163 = phi i32 [ %156, %151 ], [ %149, %144 ]
  %164 = phi i32 [ %157, %151 ], [ %150, %144 ]
  br label %165

165:                                              ; preds = %158, %124
  %166 = phi i32 [ %132, %158 ], [ %125, %124 ]
  %167 = phi i64 [ %134, %158 ], [ %128, %124 ]
  %168 = phi i1 [ %160, %158 ], [ %129, %124 ]
  br i1 %168, label %64, label %111, !llvm.loop !23
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
!22 = distinct !{!22, !16, !17}
!23 = distinct !{!23, !16, !17}

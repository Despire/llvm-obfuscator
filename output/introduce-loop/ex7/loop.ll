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
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %36

9:                                                ; preds = %32, %4
  %10 = sdiv i32 58, 59
  %11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = add i32 3, 25
  %13 = add i32 22, 51
  %14 = sub i32 28, 115
  %15 = add i32 31, 65
  %16 = mul i32 93, 15
  %17 = srem i32 %5, 2
  %18 = icmp eq i32 %17, 0
  %19 = mul i32 %5, 2
  %20 = mul i32 %5, 2
  %21 = add i32 2, %20
  %22 = mul i32 %19, %21
  %23 = srem i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = mul i32 %5, %5
  %26 = add i32 %25, %5
  %27 = srem i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = and i1 %24, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %9
  %31 = add i32 101, 96
  br label %34

32:                                               ; preds = %9
  %33 = add i32 5, 192
  br i1 %29, label %34, label %9

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %33, %32 ], [ %31, %30 ]
  br label %36

36:                                               ; preds = %34, %7
  %37 = phi i32 [ %11, %34 ], [ %8, %7 ]
  br label %66

38:                                               ; preds = %61, %222
  %39 = srem i32 %37, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = sdiv i32 117, 40
  %43 = add i32 95, 96
  %44 = sdiv i32 107, 125
  %45 = sub i32 44, 106
  %46 = add i32 120, 2
  %47 = mul i32 30, 27
  %48 = srem i32 %37, 2
  %49 = icmp eq i32 %48, 0
  %50 = mul i32 %39, 2
  %51 = mul i32 %39, 2
  %52 = add i32 2, %51
  %53 = mul i32 %50, %52
  %54 = srem i32 %53, 4
  %55 = icmp eq i32 %54, 0
  %56 = mul i32 %39, %39
  %57 = add i32 %56, %39
  %58 = srem i32 %57, 2
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %55, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %41
  br i1 %60, label %63, label %38

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %61, %62
  br label %65

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64, %63
  ret void

66:                                               ; preds = %93, %222, %36
  %67 = phi i64 [ 0, %36 ], [ %227, %222 ], [ 0, %93 ]
  %68 = trunc i64 %67 to i32
  %69 = urem i32 %68, 80
  %70 = icmp eq i32 %69, 0
  %71 = srem i32 %37, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %102

74:                                               ; preds = %66
  %75 = sub i32 6, 28
  %76 = add i32 106, 101
  %77 = add i32 124, 42
  %78 = mul i32 68, 4
  %79 = mul i32 121, 16
  %80 = mul i32 70, 28
  %81 = sub i32 85, 100
  %82 = sub i32 27, 16
  %83 = srem i64 %67, 2
  %84 = icmp eq i64 %83, 0
  %85 = and i64 %67, 1
  %86 = icmp eq i64 %85, 0
  %87 = mul i64 %67, %67
  %88 = add i64 %87, %67
  %89 = mul i64 %88, 3
  %90 = srem i64 %89, 2
  %91 = icmp eq i64 %90, 0
  %92 = or i1 %86, %91
  br i1 %92, label %96, label %93

93:                                               ; preds = %74
  %94 = mul i32 121, 90
  %95 = add i32 -1069241018, 1069241264
  br i1 %92, label %99, label %66

96:                                               ; preds = %74
  %97 = mul i32 121, 90
  %98 = add i32 121, 125
  br label %99

99:                                               ; preds = %93, %96
  %100 = phi i32 [ %97, %96 ], [ %94, %93 ]
  %101 = phi i32 [ %98, %96 ], [ %95, %93 ]
  br label %102

102:                                              ; preds = %99, %73
  br i1 %70, label %139, label %103

103:                                              ; preds = %129, %102
  %104 = getelementptr inbounds i8, i8* %0, i64 %67
  %105 = load i8, i8* %104, align 1, !tbaa !10
  %106 = srem i32 %3, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = sext i8 %105 to i32
  br label %137

110:                                              ; preds = %103
  %111 = sdiv i32 113, 94
  %112 = sext i8 %105 to i32
  %113 = sub i32 73, 86
  %114 = mul i32 104, 41
  %115 = srem i32 %71, 2
  %116 = icmp eq i32 %115, 0
  %117 = and i64 %67, 1
  %118 = icmp eq i64 %117, 0
  %119 = mul i64 %67, %67
  %120 = add i64 %119, %67
  %121 = mul i64 %120, 3
  %122 = srem i64 %121, 2
  %123 = icmp eq i64 %122, 0
  %124 = or i1 %118, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %110
  %126 = add i32 930238819, -930238743
  %127 = sdiv i32 121, 100
  %128 = sdiv i32 85, 106
  br label %133

129:                                              ; preds = %110
  %130 = add i32 7, 69
  %131 = sdiv i32 121, 100
  %132 = sdiv i32 85, 106
  br i1 %124, label %133, label %103

133:                                              ; preds = %129, %125
  %134 = phi i32 [ %130, %129 ], [ %126, %125 ]
  %135 = phi i32 [ %131, %129 ], [ %127, %125 ]
  %136 = phi i32 [ %132, %129 ], [ %128, %125 ]
  br label %137

137:                                              ; preds = %133, %108
  %138 = phi i32 [ %112, %133 ], [ %109, %108 ]
  br label %139

139:                                              ; preds = %175, %137, %102
  %140 = phi i32 [ %138, %137 ], [ 10, %102 ], [ 0, %175 ]
  %141 = call i32 @putchar(i32 %140)
  %142 = load float, float* %1, align 4, !tbaa !13
  %143 = fpext float %142 to double
  %144 = fadd double %143, 4.000000e-05
  %145 = fptrunc double %144 to float
  store float %145, float* %1, align 4, !tbaa !13
  %146 = srem i64 %67, 2
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %139
  %149 = load float, float* %2, align 4, !tbaa !13
  %150 = fpext float %149 to double
  %151 = fadd double %150, 2.000000e-05
  %152 = fptrunc double %151 to float
  store float %152, float* %2, align 4, !tbaa !13
  %153 = add nuw nsw i64 %67, 1
  %154 = icmp eq i64 %153, 1761
  br label %222

155:                                              ; preds = %139
  %156 = sdiv i32 1, 121
  %157 = load float, float* %2, align 4, !tbaa !13
  %158 = sub i32 39, 98
  %159 = fpext float %157 to double
  %160 = mul i32 86, 122
  %161 = fadd double %159, 2.000000e-05
  %162 = srem i32 %37, 2
  %163 = icmp eq i32 %162, 0
  %164 = mul i32 %71, 2
  %165 = mul i32 %71, 2
  %166 = add i32 2, %165
  %167 = mul i32 %164, %166
  %168 = srem i32 %167, 4
  %169 = icmp eq i32 %168, 0
  %170 = mul i32 %71, %71
  %171 = add i32 %170, %71
  %172 = srem i32 %171, 2
  %173 = icmp eq i32 %172, 0
  %174 = and i1 %169, %173
  br i1 %174, label %188, label %175

175:                                              ; preds = %155
  %176 = sub i32 91, 98
  %177 = fptrunc double %161 to float
  %178 = mul i32 58, 50
  store float %177, float* %2, align 4, !tbaa !13
  %179 = mul i32 68, 3
  %180 = xor i64 %67, 1
  %181 = mul i32 31, 90
  %182 = and i64 %67, 1
  %183 = sdiv i32 41, 101
  %184 = mul i64 2, %182
  %185 = sdiv i32 109, 77
  %186 = add i64 %180, %184
  %187 = icmp eq i64 %186, 1761
  br i1 %174, label %209, label %139

188:                                              ; preds = %155
  %189 = add i32 91, -98
  %190 = fptrunc double %161 to float
  %191 = mul i32 58, 50
  store float %190, float* %2, align 4, !tbaa !13
  %192 = mul i32 68, 3
  %193 = or i64 %67, 1
  %194 = and i64 %67, 1
  %195 = sub i64 %193, %194
  %196 = mul i32 31, 90
  %197 = xor i64 %67, -1
  %198 = or i64 %197, 1
  %199 = xor i64 %67, -1
  %200 = sub i64 %198, %199
  %201 = sdiv i32 41, 101
  %202 = mul i64 2, %200
  %203 = sdiv i32 109, 77
  %204 = sub i64 0, %195
  %205 = sub i64 0, %202
  %206 = add i64 %204, %205
  %207 = sub i64 0, %206
  %208 = icmp eq i64 %207, 1761
  br label %209

209:                                              ; preds = %175, %188
  %210 = phi i32 [ %189, %188 ], [ %176, %175 ]
  %211 = phi float [ %190, %188 ], [ %177, %175 ]
  %212 = phi i32 [ %191, %188 ], [ %178, %175 ]
  %213 = phi i32 [ %192, %188 ], [ %179, %175 ]
  %214 = phi i64 [ %195, %188 ], [ %180, %175 ]
  %215 = phi i32 [ %196, %188 ], [ %181, %175 ]
  %216 = phi i64 [ %200, %188 ], [ %182, %175 ]
  %217 = phi i32 [ %201, %188 ], [ %183, %175 ]
  %218 = phi i64 [ %202, %188 ], [ %184, %175 ]
  %219 = phi i32 [ %203, %188 ], [ %185, %175 ]
  %220 = phi i64 [ %207, %188 ], [ %186, %175 ]
  %221 = phi i1 [ %208, %188 ], [ %187, %175 ]
  br label %222

222:                                              ; preds = %209, %148
  %223 = phi float [ %157, %209 ], [ %149, %148 ]
  %224 = phi double [ %159, %209 ], [ %150, %148 ]
  %225 = phi double [ %161, %209 ], [ %151, %148 ]
  %226 = phi float [ %211, %209 ], [ %152, %148 ]
  %227 = phi i64 [ %220, %209 ], [ %153, %148 ]
  %228 = phi i1 [ %221, %209 ], [ %154, %148 ]
  br i1 %228, label %38, label %66, !llvm.loop !15
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
  %12 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %13 = call fastcc float @_ZL3sinf(float %0) #9
  %14 = call fastcc float @_ZL3cosf(float %0) #9
  %15 = sitofp i32 %8 to float
  %16 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %17 = srem i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %55, %7
  %20 = add i32 16, 36
  %21 = call fastcc float @_ZL3cosf(float %1) #9
  %22 = add i32 123, 14
  %23 = call fastcc float @_ZL3sinf(float %1) #9
  %24 = add i32 43, 103
  %25 = sdiv i32 %6, 2
  %26 = sdiv i32 32, 20
  %27 = sitofp i32 %25 to float
  %28 = sub i32 22, 24
  %29 = srem i32 %5, 2
  %30 = icmp eq i32 %29, 0
  %31 = and i64 %11, 1
  %32 = icmp eq i64 %31, 0
  %33 = mul i64 %11, %11
  %34 = add i64 %33, %11
  %35 = mul i64 %34, 3
  %36 = srem i64 %35, 2
  %37 = icmp eq i64 %36, 0
  %38 = or i1 %32, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %19
  %40 = sdiv i32 %5, 2
  %41 = sub i32 -551547972, -551547966
  %42 = sub i32 %40, 591519065
  %43 = sub i32 %42, -28827598
  %44 = add i32 %43, 591519065
  %45 = mul i32 87, 111
  %46 = sub i32 0, %44
  %47 = add i32 %46, -1
  %48 = sub i32 0, %47
  %49 = sdiv i32 115, 122
  %50 = xor i32 %48, -28827598
  %51 = and i32 %48, -28827598
  %52 = mul i32 2, %51
  %53 = add i32 %50, %52
  %54 = sitofp i32 %53 to float
  br label %64

55:                                               ; preds = %19
  %56 = sdiv i32 %5, 2
  %57 = sub i32 33, 39
  %58 = sub i32 %56, -28827598
  %59 = mul i32 87, 111
  %60 = add i32 %58, 1
  %61 = sdiv i32 115, 122
  %62 = add i32 %60, -28827598
  %63 = sitofp i32 %62 to float
  br i1 %38, label %64, label %19

64:                                               ; preds = %55, %39
  %65 = phi i32 [ %56, %55 ], [ %40, %39 ]
  %66 = phi i32 [ %57, %55 ], [ %41, %39 ]
  %67 = phi i32 [ %58, %55 ], [ %44, %39 ]
  %68 = phi i32 [ %59, %55 ], [ %45, %39 ]
  %69 = phi i32 [ %60, %55 ], [ %48, %39 ]
  %70 = phi i32 [ %61, %55 ], [ %49, %39 ]
  %71 = phi i32 [ %62, %55 ], [ %53, %39 ]
  %72 = phi float [ %63, %55 ], [ %54, %39 ]
  br label %81

73:                                               ; preds = %7
  %74 = call fastcc float @_ZL3cosf(float %1) #9
  %75 = call fastcc float @_ZL3sinf(float %1) #9
  %76 = sdiv i32 %6, 2
  %77 = sitofp i32 %76 to float
  %78 = sdiv i32 %5, 2
  %79 = add nsw i32 %78, 1
  %80 = sitofp i32 %79 to float
  br label %81

81:                                               ; preds = %73, %64
  %82 = phi float [ %74, %73 ], [ %21, %64 ]
  %83 = phi float [ %75, %73 ], [ %23, %64 ]
  %84 = phi i32 [ %76, %73 ], [ %25, %64 ]
  %85 = phi float [ %77, %73 ], [ %27, %64 ]
  %86 = phi i32 [ %78, %73 ], [ %65, %64 ]
  %87 = phi i32 [ %79, %73 ], [ %71, %64 ]
  %88 = phi float [ %80, %73 ], [ %72, %64 ]
  br label %89

89:                                               ; preds = %164, %460, %81
  %90 = phi float [ 0.000000e+00, %81 ], [ %461, %460 ], [ 0.000000e+00, %164 ]
  %91 = srem i64 %11, 2
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %222

93:                                               ; preds = %89
  %94 = mul i32 88, 74
  %95 = call fastcc float @_ZL3cosf(float %90) #9
  %96 = mul i32 94, 13
  %97 = call fastcc float @_ZL3sinf(float %90) #9
  %98 = sub i32 98, 37
  %99 = fadd float %95, %15
  %100 = mul i32 112, 68
  %101 = fmul float %12, %99
  %102 = sub i32 90, 75
  %103 = fmul float %101, %14
  %104 = mul i32 63, 78
  %105 = fmul float %13, %97
  %106 = sub i32 34, 31
  %107 = fsub float %103, %105
  %108 = sdiv i32 99, 6
  %109 = fmul float %13, %101
  %110 = mul i32 73, 115
  %111 = fmul float %97, %14
  %112 = mul i32 121, 40
  %113 = fadd float %109, %111
  %114 = fadd float %113, 5.000000e+00
  %115 = fdiv float 1.000000e+00, %114
  %116 = fmul float %115, 3.000000e+01
  %117 = fmul float %99, %16
  %118 = fmul float %117, %82
  %119 = fmul float %107, %83
  %120 = fadd float %118, %119
  %121 = fmul float %116, %120
  %122 = fadd float %121, %85
  %123 = fptosi float %122 to i32
  %124 = fmul float %115, 1.500000e+01
  %125 = fmul float %117, %83
  %126 = fmul float %107, %82
  %127 = fsub float %125, %126
  %128 = fmul float %124, %127
  %129 = fadd float %128, %88
  %130 = fptosi float %129 to i32
  %131 = srem i32 %2, 2
  %132 = icmp eq i32 %131, 0
  %133 = and i32 %17, 1
  %134 = icmp eq i32 %133, 1
  %135 = mul i32 %17, %17
  %136 = add i32 %135, %17
  %137 = srem i32 %136, 2
  %138 = icmp eq i32 %137, 0
  %139 = or i1 %134, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %93
  %141 = fmul float %12, %95
  %142 = fmul float %141, %14
  %143 = fsub float %105, %142
  %144 = fmul float %143, %82
  %145 = fmul float %141, %13
  %146 = fsub float %144, %145
  %147 = fsub float %146, %111
  %148 = fmul float %95, %16
  %149 = fmul float %148, %83
  %150 = fsub float %147, %149
  %151 = fmul float %150, 8.000000e+00
  %152 = fptosi float %151 to i32
  %153 = icmp slt i32 %130, %5
  %154 = icmp sgt i32 %130, 0
  %155 = xor i1 %153, true
  %156 = xor i1 %154, true
  %157 = or i1 %155, %156
  %158 = xor i1 %157, true
  %159 = and i1 %158, true
  %160 = icmp sgt i32 %123, 0
  %161 = select i1 %159, i1 %160, i1 false
  %162 = icmp slt i32 %123, %6
  %163 = select i1 %161, i1 %162, i1 false
  br label %198

164:                                              ; preds = %93
  %165 = fmul float %12, %95
  %166 = fmul float %165, %14
  %167 = fsub float %105, %166
  %168 = fmul float %167, %82
  %169 = fmul float %165, %13
  %170 = fsub float %168, %169
  %171 = fsub float %170, %111
  %172 = fmul float %95, %16
  %173 = fmul float %172, %83
  %174 = fsub float %171, %173
  %175 = fmul float %174, 8.000000e+00
  %176 = fptosi float %175 to i32
  %177 = icmp slt i32 %130, %5
  %178 = icmp sgt i32 %130, 0
  %179 = xor i1 %177, true
  %180 = and i1 %179, true
  %181 = and i1 %177, false
  %182 = or i1 %180, %181
  %183 = xor i1 %178, true
  %184 = xor i1 %183, false
  %185 = and i1 %182, %184
  %186 = xor i1 %182, %184
  %187 = or i1 %185, %186
  %188 = xor i1 %187, true
  %189 = xor i1 %188, false
  %190 = xor i1 %189, true
  %191 = or i1 %190, true
  %192 = xor i1 %189, true
  %193 = sub i1 %191, %192
  %194 = icmp sgt i32 %123, 0
  %195 = select i1 %193, i1 %194, i1 false
  %196 = icmp slt i32 %123, %6
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %139, label %198, label %89

198:                                              ; preds = %164, %140
  %199 = phi float [ %165, %164 ], [ %141, %140 ]
  %200 = phi float [ %166, %164 ], [ %142, %140 ]
  %201 = phi float [ %167, %164 ], [ %143, %140 ]
  %202 = phi float [ %168, %164 ], [ %144, %140 ]
  %203 = phi float [ %169, %164 ], [ %145, %140 ]
  %204 = phi float [ %170, %164 ], [ %146, %140 ]
  %205 = phi float [ %171, %164 ], [ %147, %140 ]
  %206 = phi float [ %172, %164 ], [ %148, %140 ]
  %207 = phi float [ %173, %164 ], [ %149, %140 ]
  %208 = phi float [ %174, %164 ], [ %150, %140 ]
  %209 = phi float [ %175, %164 ], [ %151, %140 ]
  %210 = phi i32 [ %176, %164 ], [ %152, %140 ]
  %211 = phi i1 [ %177, %164 ], [ %153, %140 ]
  %212 = phi i1 [ %178, %164 ], [ %154, %140 ]
  %213 = phi i1 [ %182, %164 ], [ %155, %140 ]
  %214 = phi i1 [ %184, %164 ], [ %156, %140 ]
  %215 = phi i1 [ %187, %164 ], [ %157, %140 ]
  %216 = phi i1 [ %189, %164 ], [ %158, %140 ]
  %217 = phi i1 [ %193, %164 ], [ %159, %140 ]
  %218 = phi i1 [ %194, %164 ], [ %160, %140 ]
  %219 = phi i1 [ %195, %164 ], [ %161, %140 ]
  %220 = phi i1 [ %196, %164 ], [ %162, %140 ]
  %221 = phi i1 [ %197, %164 ], [ %163, %140 ]
  br label %269

222:                                              ; preds = %89
  %223 = call fastcc float @_ZL3cosf(float %90) #9
  %224 = call fastcc float @_ZL3sinf(float %90) #9
  %225 = fadd float %223, %15
  %226 = fmul float %12, %225
  %227 = fmul float %226, %14
  %228 = fmul float %13, %224
  %229 = fsub float %227, %228
  %230 = fmul float %13, %226
  %231 = fmul float %224, %14
  %232 = fadd float %230, %231
  %233 = fadd float %232, 5.000000e+00
  %234 = fdiv float 1.000000e+00, %233
  %235 = fmul float %234, 3.000000e+01
  %236 = fmul float %225, %16
  %237 = fmul float %236, %82
  %238 = fmul float %229, %83
  %239 = fadd float %237, %238
  %240 = fmul float %235, %239
  %241 = fadd float %240, %85
  %242 = fptosi float %241 to i32
  %243 = fmul float %234, 1.500000e+01
  %244 = fmul float %236, %83
  %245 = fmul float %229, %82
  %246 = fsub float %244, %245
  %247 = fmul float %243, %246
  %248 = fadd float %247, %88
  %249 = fptosi float %248 to i32
  %250 = fmul float %12, %223
  %251 = fmul float %250, %14
  %252 = fsub float %228, %251
  %253 = fmul float %252, %82
  %254 = fmul float %250, %13
  %255 = fsub float %253, %254
  %256 = fsub float %255, %231
  %257 = fmul float %223, %16
  %258 = fmul float %257, %83
  %259 = fsub float %256, %258
  %260 = fmul float %259, 8.000000e+00
  %261 = fptosi float %260 to i32
  %262 = icmp slt i32 %249, %5
  %263 = icmp sgt i32 %249, 0
  %264 = and i1 %262, %263
  %265 = icmp sgt i32 %242, 0
  %266 = select i1 %264, i1 %265, i1 false
  %267 = icmp slt i32 %242, %6
  %268 = select i1 %266, i1 %267, i1 false
  br label %269

269:                                              ; preds = %222, %198
  %270 = phi float [ %223, %222 ], [ %95, %198 ]
  %271 = phi float [ %224, %222 ], [ %97, %198 ]
  %272 = phi float [ %225, %222 ], [ %99, %198 ]
  %273 = phi float [ %226, %222 ], [ %101, %198 ]
  %274 = phi float [ %227, %222 ], [ %103, %198 ]
  %275 = phi float [ %228, %222 ], [ %105, %198 ]
  %276 = phi float [ %229, %222 ], [ %107, %198 ]
  %277 = phi float [ %230, %222 ], [ %109, %198 ]
  %278 = phi float [ %231, %222 ], [ %111, %198 ]
  %279 = phi float [ %232, %222 ], [ %113, %198 ]
  %280 = phi float [ %233, %222 ], [ %114, %198 ]
  %281 = phi float [ %234, %222 ], [ %115, %198 ]
  %282 = phi float [ %235, %222 ], [ %116, %198 ]
  %283 = phi float [ %236, %222 ], [ %117, %198 ]
  %284 = phi float [ %237, %222 ], [ %118, %198 ]
  %285 = phi float [ %238, %222 ], [ %119, %198 ]
  %286 = phi float [ %239, %222 ], [ %120, %198 ]
  %287 = phi float [ %240, %222 ], [ %121, %198 ]
  %288 = phi float [ %241, %222 ], [ %122, %198 ]
  %289 = phi i32 [ %242, %222 ], [ %123, %198 ]
  %290 = phi float [ %243, %222 ], [ %124, %198 ]
  %291 = phi float [ %244, %222 ], [ %125, %198 ]
  %292 = phi float [ %245, %222 ], [ %126, %198 ]
  %293 = phi float [ %246, %222 ], [ %127, %198 ]
  %294 = phi float [ %247, %222 ], [ %128, %198 ]
  %295 = phi float [ %248, %222 ], [ %129, %198 ]
  %296 = phi i32 [ %249, %222 ], [ %130, %198 ]
  %297 = phi float [ %250, %222 ], [ %199, %198 ]
  %298 = phi float [ %251, %222 ], [ %200, %198 ]
  %299 = phi float [ %252, %222 ], [ %201, %198 ]
  %300 = phi float [ %253, %222 ], [ %202, %198 ]
  %301 = phi float [ %254, %222 ], [ %203, %198 ]
  %302 = phi float [ %255, %222 ], [ %204, %198 ]
  %303 = phi float [ %256, %222 ], [ %205, %198 ]
  %304 = phi float [ %257, %222 ], [ %206, %198 ]
  %305 = phi float [ %258, %222 ], [ %207, %198 ]
  %306 = phi float [ %259, %222 ], [ %208, %198 ]
  %307 = phi float [ %260, %222 ], [ %209, %198 ]
  %308 = phi i32 [ %261, %222 ], [ %210, %198 ]
  %309 = phi i1 [ %262, %222 ], [ %211, %198 ]
  %310 = phi i1 [ %263, %222 ], [ %212, %198 ]
  %311 = phi i1 [ %264, %222 ], [ %217, %198 ]
  %312 = phi i1 [ %265, %222 ], [ %218, %198 ]
  %313 = phi i1 [ %266, %222 ], [ %219, %198 ]
  %314 = phi i1 [ %267, %222 ], [ %220, %198 ]
  %315 = phi i1 [ %268, %222 ], [ %221, %198 ]
  br i1 %315, label %316, label %411

316:                                              ; preds = %343, %269
  %317 = mul nsw i32 %296, %6
  %318 = add nsw i32 %317, %289
  %319 = sext i32 %318 to i64
  %320 = srem i32 %87, 2
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %316
  %323 = getelementptr inbounds float, float* %3, i64 %319
  %324 = load float, float* %323, align 4, !tbaa !13
  %325 = fcmp ogt float %281, %324
  br label %376

326:                                              ; preds = %316
  %327 = sub i32 28, 94
  %328 = getelementptr inbounds float, float* %3, i64 %319
  %329 = add i32 0, 42
  %330 = srem i64 %319, 2
  %331 = icmp eq i64 %330, 0
  %332 = mul i32 %289, 2
  %333 = mul i32 %289, 2
  %334 = add i32 2, %333
  %335 = mul i32 %332, %334
  %336 = srem i32 %335, 4
  %337 = icmp eq i32 %336, 0
  %338 = mul i32 %289, %289
  %339 = add i32 %338, %289
  %340 = srem i32 %339, 2
  %341 = icmp eq i32 %340, 0
  %342 = and i1 %337, %341
  br i1 %342, label %354, label %343

343:                                              ; preds = %326
  %344 = load float, float* %328, align 4, !tbaa !13
  %345 = sub i32 0, -121
  %346 = fcmp ogt float %281, %344
  %347 = add i32 1850543136, -1850543050
  %348 = sdiv i32 31, 85
  %349 = sub i32 948446012, 948445950
  %350 = mul i32 76, 79
  %351 = add i32 1560976319, -1560976311
  %352 = mul i32 62, 36
  %353 = mul i32 15, 24
  br i1 %342, label %365, label %316

354:                                              ; preds = %326
  %355 = load float, float* %328, align 4, !tbaa !13
  %356 = add i32 42, 79
  %357 = fcmp ogt float %281, %355
  %358 = sub i32 110, 24
  %359 = sdiv i32 31, 85
  %360 = add i32 45, 17
  %361 = mul i32 76, 79
  %362 = sub i32 37, 29
  %363 = mul i32 62, 36
  %364 = mul i32 15, 24
  br label %365

365:                                              ; preds = %343, %354
  %366 = phi float [ %355, %354 ], [ %344, %343 ]
  %367 = phi i32 [ %356, %354 ], [ %345, %343 ]
  %368 = phi i1 [ %357, %354 ], [ %346, %343 ]
  %369 = phi i32 [ %358, %354 ], [ %347, %343 ]
  %370 = phi i32 [ %359, %354 ], [ %348, %343 ]
  %371 = phi i32 [ %360, %354 ], [ %349, %343 ]
  %372 = phi i32 [ %361, %354 ], [ %350, %343 ]
  %373 = phi i32 [ %362, %354 ], [ %351, %343 ]
  %374 = phi i32 [ %363, %354 ], [ %352, %343 ]
  %375 = phi i32 [ %364, %354 ], [ %353, %343 ]
  br label %376

376:                                              ; preds = %365, %322
  %377 = phi float* [ %328, %365 ], [ %323, %322 ]
  %378 = phi float [ %366, %365 ], [ %324, %322 ]
  %379 = phi i1 [ %368, %365 ], [ %325, %322 ]
  br i1 %379, label %380, label %411

380:                                              ; preds = %408, %376
  store float %281, float* %377, align 4, !tbaa !13
  %381 = icmp sgt i32 %308, 0
  %382 = select i1 %381, i32 %308, i32 0
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %383
  %385 = load i8, i8* %384, align 1, !tbaa !10
  %386 = getelementptr inbounds i8, i8* %4, i64 %319
  %387 = srem i32 %84, 2
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %380
  store i8 %385, i8* %386, align 1, !tbaa !10
  br label %410

390:                                              ; preds = %380
  %391 = sdiv i32 45, 124
  store i8 %385, i8* %386, align 1, !tbaa !10
  %392 = sub i32 11, 121
  %393 = sub i32 108, 37
  %394 = sub i32 59, 2
  %395 = mul i32 114, 41
  %396 = sdiv i32 15, 54
  %397 = add i32 110, 75
  %398 = srem i32 %296, 2
  %399 = icmp eq i32 %398, 0
  %400 = and i32 %6, 1
  %401 = icmp eq i32 %400, 1
  %402 = mul i32 %6, %6
  %403 = add i32 %402, %6
  %404 = srem i32 %403, 2
  %405 = icmp eq i32 %404, 0
  %406 = or i1 %401, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %390
  br label %409

408:                                              ; preds = %390
  br i1 %406, label %409, label %380

409:                                              ; preds = %408, %407
  br label %410

410:                                              ; preds = %409, %389
  br label %411

411:                                              ; preds = %446, %410, %376, %269
  %412 = fpext float %90 to double
  %413 = fadd double %412, 7.000000e-02
  %414 = srem i64 %11, 2
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %411
  %417 = fptrunc double %413 to float
  %418 = fpext float %417 to double
  %419 = fcmp olt double %418, 6.280000e+00
  br label %460

420:                                              ; preds = %411
  %421 = sdiv i32 81, 45
  %422 = fptrunc double %413 to float
  %423 = sub i32 84, 44
  %424 = fpext float %422 to double
  %425 = sub i32 58, 76
  %426 = fcmp olt double %424, 6.280000e+00
  %427 = srem i64 %9, 2
  %428 = icmp eq i64 %427, 0
  %429 = mul i32 %308, %308
  %430 = add i32 %429, %308
  %431 = mul i32 %430, 3
  %432 = srem i32 %431, 2
  %433 = icmp eq i32 %432, 0
  %434 = mul i32 %308, %308
  %435 = add i32 %434, %308
  %436 = srem i32 %435, 2
  %437 = icmp eq i32 %436, 0
  %438 = and i1 %433, %437
  br i1 %438, label %439, label %446

439:                                              ; preds = %420
  %440 = add i32 79, 3
  %441 = add i32 85, 57
  %442 = mul i32 92, 108
  %443 = mul i32 103, 76
  %444 = mul i32 41, 123
  %445 = add i32 27, 121
  br label %453

446:                                              ; preds = %420
  %447 = sub i32 0, -82
  %448 = add i32 108, 34
  %449 = mul i32 92, 108
  %450 = mul i32 103, 76
  %451 = mul i32 41, 123
  %452 = add i32 574072199, -574072051
  br i1 %438, label %453, label %411

453:                                              ; preds = %446, %439
  %454 = phi i32 [ %447, %446 ], [ %440, %439 ]
  %455 = phi i32 [ %448, %446 ], [ %441, %439 ]
  %456 = phi i32 [ %449, %446 ], [ %442, %439 ]
  %457 = phi i32 [ %450, %446 ], [ %443, %439 ]
  %458 = phi i32 [ %451, %446 ], [ %444, %439 ]
  %459 = phi i32 [ %452, %446 ], [ %445, %439 ]
  br label %460

460:                                              ; preds = %453, %416
  %461 = phi float [ %422, %453 ], [ %417, %416 ]
  %462 = phi double [ %424, %453 ], [ %418, %416 ]
  %463 = phi i1 [ %426, %453 ], [ %419, %416 ]
  br i1 %463, label %89, label %464, !llvm.loop !18

464:                                              ; preds = %562, %829, %460
  %465 = phi double [ %786, %829 ], [ 0.000000e+00, %460 ], [ 0.000000e+00, %562 ]
  %466 = phi float [ %785, %829 ], [ 0.000000e+00, %460 ], [ 0.000000e+00, %562 ]
  %467 = call fastcc float @_ZL3cosf(float %466) #9
  %468 = call fastcc float @_ZL3sinf(float %466) #9
  %469 = fadd float %467, %15
  %470 = fmul float %12, %469
  %471 = fmul float %14, %470
  %472 = fmul float %13, %468
  %473 = fsub float %471, %472
  %474 = fmul float %13, %470
  %475 = fmul float %14, %468
  %476 = fadd float %475, %474
  %477 = fadd float %476, 5.000000e+00
  %478 = fdiv float 1.000000e+00, %477
  %479 = fmul float %478, 3.000000e+01
  %480 = fmul float %16, %469
  %481 = fmul float %82, %480
  %482 = fmul float %83, %473
  %483 = fadd float %481, %482
  %484 = fmul float %483, %479
  %485 = fadd float %484, %85
  %486 = fptosi float %485 to i32
  %487 = srem i32 %86, 2
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %516

489:                                              ; preds = %464
  %490 = fmul float %478, 1.500000e+01
  %491 = fmul float %83, %480
  %492 = fmul float %82, %473
  %493 = fsub float %491, %492
  %494 = fmul float %493, %490
  %495 = fadd float %494, %88
  %496 = fptosi float %495 to i32
  %497 = fmul float %12, %467
  %498 = fmul float %14, %497
  %499 = fsub float %472, %498
  %500 = fmul float %82, %499
  %501 = fmul float %13, %497
  %502 = fsub float %500, %501
  %503 = fsub float %502, %475
  %504 = fmul float %16, %467
  %505 = fmul float %83, %504
  %506 = fsub float %503, %505
  %507 = fmul float %506, 8.000000e+00
  %508 = fptosi float %507 to i32
  %509 = icmp slt i32 %496, %5
  %510 = icmp sgt i32 %496, 0
  %511 = and i1 %509, %510
  %512 = icmp sgt i32 %486, 0
  %513 = select i1 %511, i1 %512, i1 false
  %514 = icmp slt i32 %486, %6
  %515 = select i1 %513, i1 %514, i1 false
  br label %636

516:                                              ; preds = %464
  %517 = add i32 37, 121
  %518 = fmul float %478, 1.500000e+01
  %519 = srem i32 %486, 2
  %520 = icmp eq i32 %519, 0
  %521 = and i64 %9, 1
  %522 = icmp eq i64 %521, 0
  %523 = mul i64 %9, %9
  %524 = add i64 %523, %9
  %525 = mul i64 %524, 3
  %526 = srem i64 %525, 2
  %527 = icmp eq i64 %526, 0
  %528 = or i1 %522, %527
  br i1 %528, label %529, label %562

529:                                              ; preds = %516
  %530 = mul i32 38, 25
  %531 = fmul float %83, %480
  %532 = sub i32 31, 76
  %533 = fmul float %82, %473
  %534 = add i32 57, 78
  %535 = fsub float %531, %533
  %536 = sdiv i32 60, 18
  %537 = fmul float %535, %518
  %538 = sub i32 16, 113
  %539 = fadd float %537, %88
  %540 = fptosi float %539 to i32
  %541 = fmul float %12, %467
  %542 = fmul float %14, %541
  %543 = fsub float %472, %542
  %544 = fmul float %82, %543
  %545 = fmul float %13, %541
  %546 = fsub float %544, %545
  %547 = fsub float %546, %475
  %548 = fmul float %16, %467
  %549 = fmul float %83, %548
  %550 = fsub float %547, %549
  %551 = fmul float %550, 8.000000e+00
  %552 = fptosi float %551 to i32
  %553 = icmp slt i32 %540, %5
  %554 = icmp sgt i32 %540, 0
  %555 = xor i1 %554, true
  %556 = xor i1 %553, %555
  %557 = and i1 %556, %553
  %558 = icmp sgt i32 %486, 0
  %559 = select i1 %557, i1 %558, i1 false
  %560 = icmp slt i32 %486, %6
  %561 = select i1 %559, i1 %560, i1 false
  br label %603

562:                                              ; preds = %516
  %563 = mul i32 38, 25
  %564 = fmul float %83, %480
  %565 = add i32 31, -76
  %566 = fmul float %82, %473
  %567 = add i32 119, 16
  %568 = fsub float %564, %566
  %569 = sdiv i32 60, 18
  %570 = fmul float %568, %518
  %571 = add i32 878177229, -878177326
  %572 = fadd float %570, %88
  %573 = fptosi float %572 to i32
  %574 = fmul float %12, %467
  %575 = fmul float %14, %574
  %576 = fsub float %472, %575
  %577 = fmul float %82, %576
  %578 = fmul float %13, %574
  %579 = fsub float %577, %578
  %580 = fsub float %579, %475
  %581 = fmul float %16, %467
  %582 = fmul float %83, %581
  %583 = fsub float %580, %582
  %584 = fmul float %583, 8.000000e+00
  %585 = fptosi float %584 to i32
  %586 = icmp slt i32 %573, %5
  %587 = icmp sgt i32 %573, 0
  %588 = xor i1 %587, true
  %589 = and i1 %588, true
  %590 = and i1 %587, false
  %591 = or i1 %589, %590
  %592 = xor i1 %586, true
  %593 = xor i1 %591, true
  %594 = xor i1 %592, %593
  %595 = xor i1 %594, true
  %596 = or i1 %595, %586
  %597 = xor i1 %594, true
  %598 = sub i1 %596, %597
  %599 = icmp sgt i32 %486, 0
  %600 = select i1 %598, i1 %599, i1 false
  %601 = icmp slt i32 %486, %6
  %602 = select i1 %600, i1 %601, i1 false
  br i1 %528, label %603, label %464

603:                                              ; preds = %562, %529
  %604 = phi i32 [ %563, %562 ], [ %530, %529 ]
  %605 = phi float [ %564, %562 ], [ %531, %529 ]
  %606 = phi i32 [ %565, %562 ], [ %532, %529 ]
  %607 = phi float [ %566, %562 ], [ %533, %529 ]
  %608 = phi i32 [ %567, %562 ], [ %534, %529 ]
  %609 = phi float [ %568, %562 ], [ %535, %529 ]
  %610 = phi i32 [ %569, %562 ], [ %536, %529 ]
  %611 = phi float [ %570, %562 ], [ %537, %529 ]
  %612 = phi i32 [ %571, %562 ], [ %538, %529 ]
  %613 = phi float [ %572, %562 ], [ %539, %529 ]
  %614 = phi i32 [ %573, %562 ], [ %540, %529 ]
  %615 = phi float [ %574, %562 ], [ %541, %529 ]
  %616 = phi float [ %575, %562 ], [ %542, %529 ]
  %617 = phi float [ %576, %562 ], [ %543, %529 ]
  %618 = phi float [ %577, %562 ], [ %544, %529 ]
  %619 = phi float [ %578, %562 ], [ %545, %529 ]
  %620 = phi float [ %579, %562 ], [ %546, %529 ]
  %621 = phi float [ %580, %562 ], [ %547, %529 ]
  %622 = phi float [ %581, %562 ], [ %548, %529 ]
  %623 = phi float [ %582, %562 ], [ %549, %529 ]
  %624 = phi float [ %583, %562 ], [ %550, %529 ]
  %625 = phi float [ %584, %562 ], [ %551, %529 ]
  %626 = phi i32 [ %585, %562 ], [ %552, %529 ]
  %627 = phi i1 [ %586, %562 ], [ %553, %529 ]
  %628 = phi i1 [ %587, %562 ], [ %554, %529 ]
  %629 = phi i1 [ %591, %562 ], [ %555, %529 ]
  %630 = phi i1 [ %594, %562 ], [ %556, %529 ]
  %631 = phi i1 [ %598, %562 ], [ %557, %529 ]
  %632 = phi i1 [ %599, %562 ], [ %558, %529 ]
  %633 = phi i1 [ %600, %562 ], [ %559, %529 ]
  %634 = phi i1 [ %601, %562 ], [ %560, %529 ]
  %635 = phi i1 [ %602, %562 ], [ %561, %529 ]
  br label %636

636:                                              ; preds = %603, %489
  %637 = phi float [ %518, %603 ], [ %490, %489 ]
  %638 = phi float [ %605, %603 ], [ %491, %489 ]
  %639 = phi float [ %607, %603 ], [ %492, %489 ]
  %640 = phi float [ %609, %603 ], [ %493, %489 ]
  %641 = phi float [ %611, %603 ], [ %494, %489 ]
  %642 = phi float [ %613, %603 ], [ %495, %489 ]
  %643 = phi i32 [ %614, %603 ], [ %496, %489 ]
  %644 = phi float [ %615, %603 ], [ %497, %489 ]
  %645 = phi float [ %616, %603 ], [ %498, %489 ]
  %646 = phi float [ %617, %603 ], [ %499, %489 ]
  %647 = phi float [ %618, %603 ], [ %500, %489 ]
  %648 = phi float [ %619, %603 ], [ %501, %489 ]
  %649 = phi float [ %620, %603 ], [ %502, %489 ]
  %650 = phi float [ %621, %603 ], [ %503, %489 ]
  %651 = phi float [ %622, %603 ], [ %504, %489 ]
  %652 = phi float [ %623, %603 ], [ %505, %489 ]
  %653 = phi float [ %624, %603 ], [ %506, %489 ]
  %654 = phi float [ %625, %603 ], [ %507, %489 ]
  %655 = phi i32 [ %626, %603 ], [ %508, %489 ]
  %656 = phi i1 [ %627, %603 ], [ %509, %489 ]
  %657 = phi i1 [ %628, %603 ], [ %510, %489 ]
  %658 = phi i1 [ %631, %603 ], [ %511, %489 ]
  %659 = phi i1 [ %632, %603 ], [ %512, %489 ]
  %660 = phi i1 [ %633, %603 ], [ %513, %489 ]
  %661 = phi i1 [ %634, %603 ], [ %514, %489 ]
  %662 = phi i1 [ %635, %603 ], [ %515, %489 ]
  br i1 %662, label %663, label %783

663:                                              ; preds = %685, %636
  %664 = srem i32 %296, 2
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %715

666:                                              ; preds = %663
  %667 = sub i32 104, 79
  %668 = mul nsw i32 %643, %6
  %669 = sdiv i32 104, 114
  %670 = add nsw i32 %668, %486
  %671 = srem i32 %5, 2
  %672 = icmp eq i32 %671, 0
  %673 = mul i64 %91, 2
  %674 = mul i64 %91, 2
  %675 = add i64 2, %674
  %676 = mul i64 %673, %675
  %677 = srem i64 %676, 4
  %678 = icmp eq i64 %677, 0
  %679 = mul i64 %91, %91
  %680 = mul i64 %679, %91
  %681 = add i64 %680, %91
  %682 = srem i64 %681, 2
  %683 = icmp eq i64 %682, 0
  %684 = and i1 %678, %683
  br i1 %684, label %695, label %685

685:                                              ; preds = %666
  %686 = sdiv i32 74, 45
  %687 = sext i32 %670 to i64
  %688 = add i32 1507052346, -1507052368
  %689 = getelementptr inbounds float, float* %3, i64 %687
  %690 = add i32 121, -45
  %691 = load float, float* %689, align 4, !tbaa !13
  %692 = add i32 21, 196
  %693 = fcmp ogt float %478, %691
  %694 = mul i32 58, 75
  br i1 %684, label %705, label %663

695:                                              ; preds = %666
  %696 = sdiv i32 74, 45
  %697 = sext i32 %670 to i64
  %698 = sub i32 36, 58
  %699 = getelementptr inbounds float, float* %3, i64 %697
  %700 = sub i32 121, 45
  %701 = load float, float* %699, align 4, !tbaa !13
  %702 = add i32 98, 119
  %703 = fcmp ogt float %478, %701
  %704 = mul i32 58, 75
  br label %705

705:                                              ; preds = %685, %695
  %706 = phi i32 [ %696, %695 ], [ %686, %685 ]
  %707 = phi i64 [ %697, %695 ], [ %687, %685 ]
  %708 = phi i32 [ %698, %695 ], [ %688, %685 ]
  %709 = phi float* [ %699, %695 ], [ %689, %685 ]
  %710 = phi i32 [ %700, %695 ], [ %690, %685 ]
  %711 = phi float [ %701, %695 ], [ %691, %685 ]
  %712 = phi i32 [ %702, %695 ], [ %692, %685 ]
  %713 = phi i1 [ %703, %695 ], [ %693, %685 ]
  %714 = phi i32 [ %704, %695 ], [ %694, %685 ]
  br label %723

715:                                              ; preds = %663
  %716 = mul nsw i32 %643, %6
  %717 = sub i32 0, %486
  %718 = sub i32 %716, %717
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds float, float* %3, i64 %719
  %721 = load float, float* %720, align 4, !tbaa !13
  %722 = fcmp ogt float %478, %721
  br label %723

723:                                              ; preds = %715, %705
  %724 = phi i32 [ %716, %715 ], [ %668, %705 ]
  %725 = phi i32 [ %718, %715 ], [ %670, %705 ]
  %726 = phi i64 [ %719, %715 ], [ %707, %705 ]
  %727 = phi float* [ %720, %715 ], [ %709, %705 ]
  %728 = phi float [ %721, %715 ], [ %711, %705 ]
  %729 = phi i1 [ %722, %715 ], [ %713, %705 ]
  br i1 %729, label %730, label %783

730:                                              ; preds = %764, %723
  store float %478, float* %727, align 4, !tbaa !13
  %731 = icmp sgt i32 %655, 0
  %732 = select i1 %731, i32 %655, i32 0
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %733
  %735 = load i8, i8* %734, align 1, !tbaa !10
  %736 = getelementptr inbounds i8, i8* %4, i64 %726
  store i8 %735, i8* %736, align 1, !tbaa !10
  %737 = srem i32 %6, 2
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %740

739:                                              ; preds = %730
  br label %782

740:                                              ; preds = %730
  %741 = sub i32 61, 108
  %742 = add i32 6, 42
  %743 = srem i32 %5, 2
  %744 = icmp eq i32 %743, 0
  %745 = mul i64 %11, %11
  %746 = add i64 %745, %11
  %747 = mul i64 %746, 3
  %748 = srem i64 %747, 2
  %749 = icmp eq i64 %748, 0
  %750 = mul i64 %11, %11
  %751 = add i64 %750, %11
  %752 = srem i64 %751, 2
  %753 = icmp eq i64 %752, 0
  %754 = and i1 %749, %753
  br i1 %754, label %755, label %764

755:                                              ; preds = %740
  %756 = sub i32 3, -37
  %757 = mul i32 105, 95
  %758 = mul i32 102, 14
  %759 = sdiv i32 105, 112
  %760 = add i32 -570969411, 570969403
  %761 = add i32 1195089407, -1195089185
  %762 = add i32 103, -90
  %763 = sdiv i32 121, 66
  br label %773

764:                                              ; preds = %740
  %765 = add i32 3, 37
  %766 = mul i32 105, 95
  %767 = mul i32 102, 14
  %768 = sdiv i32 105, 112
  %769 = sub i32 23, 31
  %770 = add i32 118, 104
  %771 = sub i32 103, 90
  %772 = sdiv i32 121, 66
  br i1 %754, label %773, label %730

773:                                              ; preds = %764, %755
  %774 = phi i32 [ %765, %764 ], [ %756, %755 ]
  %775 = phi i32 [ %766, %764 ], [ %757, %755 ]
  %776 = phi i32 [ %767, %764 ], [ %758, %755 ]
  %777 = phi i32 [ %768, %764 ], [ %759, %755 ]
  %778 = phi i32 [ %769, %764 ], [ %760, %755 ]
  %779 = phi i32 [ %770, %764 ], [ %761, %755 ]
  %780 = phi i32 [ %771, %764 ], [ %762, %755 ]
  %781 = phi i32 [ %772, %764 ], [ %763, %755 ]
  br label %782

782:                                              ; preds = %773, %739
  br label %783

783:                                              ; preds = %817, %782, %723, %636
  %784 = fadd double %465, 7.000000e-02
  %785 = fptrunc double %784 to float
  %786 = fpext float %785 to double
  %787 = srem i32 %655, 2
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %791

789:                                              ; preds = %783
  %790 = fcmp olt double %786, 6.280000e+00
  br label %829

791:                                              ; preds = %783
  %792 = add i32 125, 32
  %793 = fcmp olt double %786, 6.280000e+00
  %794 = add i32 53, 9
  %795 = add i32 85, 19
  %796 = add i32 77, 65
  %797 = srem i32 %289, 2
  %798 = icmp eq i32 %797, 0
  %799 = mul i32 %8, 2
  %800 = mul i32 %8, 2
  %801 = add i32 2, %800
  %802 = mul i32 %799, %801
  %803 = srem i32 %802, 4
  %804 = icmp eq i32 %803, 0
  %805 = mul i32 %8, %8
  %806 = mul i32 %805, %8
  %807 = add i32 %806, %8
  %808 = srem i32 %807, 2
  %809 = icmp eq i32 %808, 0
  %810 = and i1 %804, %809
  br i1 %810, label %811, label %817

811:                                              ; preds = %791
  %812 = add i32 -1759104632, 1759104607
  %813 = mul i32 24, 86
  %814 = add i32 7, -76
  %815 = mul i32 29, 11
  %816 = mul i32 105, 71
  br label %823

817:                                              ; preds = %791
  %818 = sub i32 95, 120
  %819 = mul i32 24, 86
  %820 = sub i32 7, 76
  %821 = mul i32 29, 11
  %822 = mul i32 105, 71
  br i1 %810, label %823, label %783

823:                                              ; preds = %817, %811
  %824 = phi i32 [ %818, %817 ], [ %812, %811 ]
  %825 = phi i32 [ %819, %817 ], [ %813, %811 ]
  %826 = phi i32 [ %820, %817 ], [ %814, %811 ]
  %827 = phi i32 [ %821, %817 ], [ %815, %811 ]
  %828 = phi i32 [ %822, %817 ], [ %816, %811 ]
  br label %829

829:                                              ; preds = %823, %789
  %830 = phi i1 [ %793, %823 ], [ %790, %789 ]
  br i1 %830, label %464, label %871, !llvm.loop !19

831:                                              ; preds = %851, %1235
  %832 = fcmp une float %13, 0.000000e+00
  %833 = fmul float %13, 2.000000e+00
  %834 = srem i64 %91, 2
  %835 = icmp eq i64 %834, 0
  br i1 %835, label %836, label %838

836:                                              ; preds = %831
  %837 = select i1 %832, float %833, float %13
  br label %869

838:                                              ; preds = %831
  %839 = mul i32 86, 51
  %840 = select i1 %832, float %833, float %13
  %841 = srem i32 %6, 2
  %842 = icmp eq i32 %841, 0
  %843 = and i64 %91, 1
  %844 = icmp eq i64 %843, 0
  %845 = mul i64 %91, %91
  %846 = add i64 %845, %91
  %847 = mul i64 %846, 3
  %848 = srem i64 %847, 2
  %849 = icmp eq i64 %848, 0
  %850 = or i1 %844, %849
  br i1 %850, label %857, label %851

851:                                              ; preds = %838
  %852 = sdiv i32 4, 100
  %853 = add i32 58, 102
  %854 = add i32 100, 59
  %855 = sdiv i32 27, 126
  %856 = mul i32 119, 76
  br i1 %850, label %863, label %831

857:                                              ; preds = %838
  %858 = sdiv i32 4, 100
  %859 = sub i32 58, -102
  %860 = add i32 32, 127
  %861 = sdiv i32 27, 126
  %862 = mul i32 119, 76
  br label %863

863:                                              ; preds = %851, %857
  %864 = phi i32 [ %858, %857 ], [ %852, %851 ]
  %865 = phi i32 [ %859, %857 ], [ %853, %851 ]
  %866 = phi i32 [ %860, %857 ], [ %854, %851 ]
  %867 = phi i32 [ %861, %857 ], [ %855, %851 ]
  %868 = phi i32 [ %862, %857 ], [ %856, %851 ]
  br label %869

869:                                              ; preds = %863, %836
  %870 = phi float [ %840, %863 ], [ %837, %836 ]
  br label %1270

871:                                              ; preds = %972, %1235, %829
  %872 = phi double [ %1238, %1235 ], [ 0.000000e+00, %829 ], [ 0.000000e+00, %972 ]
  %873 = phi float [ %1237, %1235 ], [ 0.000000e+00, %829 ], [ 0.000000e+00, %972 ]
  %874 = call fastcc float @_ZL3cosf(float %873) #9
  %875 = call fastcc float @_ZL3sinf(float %873) #9
  %876 = fadd float %874, %15
  %877 = fmul float %12, %876
  %878 = fmul float %14, %877
  %879 = fmul float %13, %875
  %880 = fsub float %878, %879
  %881 = fmul float %13, %877
  %882 = fmul float %14, %875
  %883 = fadd float %882, %881
  %884 = srem i32 %5, 2
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %926

886:                                              ; preds = %871
  %887 = fadd float %883, 5.000000e+00
  %888 = fdiv float 1.000000e+00, %887
  %889 = fmul float %888, 3.000000e+01
  %890 = fmul float %16, %876
  %891 = fmul float %82, %890
  %892 = fmul float %83, %880
  %893 = fadd float %891, %892
  %894 = fmul float %893, %889
  %895 = fadd float %894, %85
  %896 = fptosi float %895 to i32
  %897 = fmul float %888, 1.500000e+01
  %898 = fmul float %83, %890
  %899 = fmul float %82, %880
  %900 = fsub float %898, %899
  %901 = fmul float %900, %897
  %902 = fadd float %901, %88
  %903 = fptosi float %902 to i32
  %904 = fmul float %12, %874
  %905 = fmul float %14, %904
  %906 = fsub float %879, %905
  %907 = fmul float %82, %906
  %908 = fmul float %13, %904
  %909 = fsub float %907, %908
  %910 = fsub float %909, %882
  %911 = fmul float %16, %874
  %912 = fmul float %83, %911
  %913 = fsub float %910, %912
  %914 = fmul float %913, 8.000000e+00
  %915 = fptosi float %914 to i32
  %916 = icmp slt i32 %903, %5
  %917 = icmp sgt i32 %903, 0
  %918 = xor i1 %916, true
  %919 = or i1 %918, %917
  %920 = xor i1 %916, true
  %921 = sub i1 %919, %920
  %922 = icmp sgt i32 %896, 0
  %923 = select i1 %921, i1 %922, i1 false
  %924 = icmp slt i32 %896, %6
  %925 = select i1 %923, i1 %924, i1 false
  br label %1018

926:                                              ; preds = %871
  %927 = add i32 43, 31
  %928 = fadd float %883, 5.000000e+00
  %929 = sub i32 12, 35
  %930 = fdiv float 1.000000e+00, %928
  %931 = sub i32 61, 116
  %932 = fmul float %930, 3.000000e+01
  %933 = sub i32 45, 116
  %934 = fmul float %16, %876
  %935 = add i32 67, 68
  %936 = fmul float %82, %934
  %937 = add i32 124, 65
  %938 = fmul float %83, %880
  %939 = add i32 44, 37
  %940 = fadd float %936, %938
  %941 = mul i32 107, 119
  %942 = fmul float %940, %932
  %943 = sdiv i32 3, 72
  %944 = fadd float %942, %85
  %945 = fptosi float %944 to i32
  %946 = fmul float %930, 1.500000e+01
  %947 = fmul float %83, %934
  %948 = fmul float %82, %880
  %949 = fsub float %947, %948
  %950 = fmul float %949, %946
  %951 = fadd float %950, %88
  %952 = fptosi float %951 to i32
  %953 = fmul float %12, %874
  %954 = fmul float %14, %953
  %955 = fsub float %879, %954
  %956 = fmul float %82, %955
  %957 = fmul float %13, %953
  %958 = fsub float %956, %957
  %959 = srem i64 %9, 2
  %960 = icmp eq i64 %959, 0
  %961 = mul i32 %8, 2
  %962 = mul i32 %8, 2
  %963 = add i32 2, %962
  %964 = mul i32 %961, %963
  %965 = srem i32 %964, 4
  %966 = icmp eq i32 %965, 0
  %967 = mul i32 %8, %8
  %968 = add i32 %967, %8
  %969 = srem i32 %968, 2
  %970 = icmp eq i32 %969, 0
  %971 = or i1 %966, %970
  br i1 %971, label %990, label %972

972:                                              ; preds = %926
  %973 = fsub float %958, %882
  %974 = fmul float %16, %874
  %975 = fmul float %83, %974
  %976 = fsub float %973, %975
  %977 = fmul float %976, 8.000000e+00
  %978 = fptosi float %977 to i32
  %979 = icmp slt i32 %952, %5
  %980 = icmp sgt i32 %952, 0
  %981 = xor i1 %979, true
  %982 = xor i1 %980, true
  %983 = or i1 %981, %982
  %984 = xor i1 %983, true
  %985 = and i1 %984, true
  %986 = icmp sgt i32 %945, 0
  %987 = select i1 %985, i1 %986, i1 false
  %988 = icmp slt i32 %945, %6
  %989 = select i1 %987, i1 %988, i1 false
  br i1 %971, label %1004, label %871

990:                                              ; preds = %926
  %991 = fsub float %958, %882
  %992 = fmul float %16, %874
  %993 = fmul float %83, %992
  %994 = fsub float %991, %993
  %995 = fmul float %994, 8.000000e+00
  %996 = fptosi float %995 to i32
  %997 = icmp slt i32 %952, %5
  %998 = icmp sgt i32 %952, 0
  %999 = and i1 %997, %998
  %1000 = icmp sgt i32 %945, 0
  %1001 = select i1 %999, i1 %1000, i1 false
  %1002 = icmp slt i32 %945, %6
  %1003 = select i1 %1001, i1 %1002, i1 false
  br label %1004

1004:                                             ; preds = %972, %990
  %1005 = phi float [ %991, %990 ], [ %973, %972 ]
  %1006 = phi float [ %992, %990 ], [ %974, %972 ]
  %1007 = phi float [ %993, %990 ], [ %975, %972 ]
  %1008 = phi float [ %994, %990 ], [ %976, %972 ]
  %1009 = phi float [ %995, %990 ], [ %977, %972 ]
  %1010 = phi i32 [ %996, %990 ], [ %978, %972 ]
  %1011 = phi i1 [ %997, %990 ], [ %979, %972 ]
  %1012 = phi i1 [ %998, %990 ], [ %980, %972 ]
  %1013 = phi i1 [ %999, %990 ], [ %985, %972 ]
  %1014 = phi i1 [ %1000, %990 ], [ %986, %972 ]
  %1015 = phi i1 [ %1001, %990 ], [ %987, %972 ]
  %1016 = phi i1 [ %1002, %990 ], [ %988, %972 ]
  %1017 = phi i1 [ %1003, %990 ], [ %989, %972 ]
  br label %1018

1018:                                             ; preds = %1004, %886
  %1019 = phi float [ %928, %1004 ], [ %887, %886 ]
  %1020 = phi float [ %930, %1004 ], [ %888, %886 ]
  %1021 = phi float [ %932, %1004 ], [ %889, %886 ]
  %1022 = phi float [ %934, %1004 ], [ %890, %886 ]
  %1023 = phi float [ %936, %1004 ], [ %891, %886 ]
  %1024 = phi float [ %938, %1004 ], [ %892, %886 ]
  %1025 = phi float [ %940, %1004 ], [ %893, %886 ]
  %1026 = phi float [ %942, %1004 ], [ %894, %886 ]
  %1027 = phi float [ %944, %1004 ], [ %895, %886 ]
  %1028 = phi i32 [ %945, %1004 ], [ %896, %886 ]
  %1029 = phi float [ %946, %1004 ], [ %897, %886 ]
  %1030 = phi float [ %947, %1004 ], [ %898, %886 ]
  %1031 = phi float [ %948, %1004 ], [ %899, %886 ]
  %1032 = phi float [ %949, %1004 ], [ %900, %886 ]
  %1033 = phi float [ %950, %1004 ], [ %901, %886 ]
  %1034 = phi float [ %951, %1004 ], [ %902, %886 ]
  %1035 = phi i32 [ %952, %1004 ], [ %903, %886 ]
  %1036 = phi float [ %953, %1004 ], [ %904, %886 ]
  %1037 = phi float [ %954, %1004 ], [ %905, %886 ]
  %1038 = phi float [ %955, %1004 ], [ %906, %886 ]
  %1039 = phi float [ %956, %1004 ], [ %907, %886 ]
  %1040 = phi float [ %957, %1004 ], [ %908, %886 ]
  %1041 = phi float [ %958, %1004 ], [ %909, %886 ]
  %1042 = phi float [ %1005, %1004 ], [ %910, %886 ]
  %1043 = phi float [ %1006, %1004 ], [ %911, %886 ]
  %1044 = phi float [ %1007, %1004 ], [ %912, %886 ]
  %1045 = phi float [ %1008, %1004 ], [ %913, %886 ]
  %1046 = phi float [ %1009, %1004 ], [ %914, %886 ]
  %1047 = phi i32 [ %1010, %1004 ], [ %915, %886 ]
  %1048 = phi i1 [ %1011, %1004 ], [ %916, %886 ]
  %1049 = phi i1 [ %1012, %1004 ], [ %917, %886 ]
  %1050 = phi i1 [ %1013, %1004 ], [ %921, %886 ]
  %1051 = phi i1 [ %1014, %1004 ], [ %922, %886 ]
  %1052 = phi i1 [ %1015, %1004 ], [ %923, %886 ]
  %1053 = phi i1 [ %1016, %1004 ], [ %924, %886 ]
  %1054 = phi i1 [ %1017, %1004 ], [ %925, %886 ]
  br i1 %1054, label %1055, label %1181

1055:                                             ; preds = %1076, %1018
  %1056 = srem i32 %296, 2
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1058, label %1110

1058:                                             ; preds = %1055
  %1059 = add i32 13, 31
  %1060 = mul nsw i32 %1035, %6
  %1061 = sub i32 22, 118
  %1062 = sub i32 0, %1028
  %1063 = sdiv i32 16, 103
  %1064 = srem i32 %308, 2
  %1065 = icmp eq i32 %1064, 0
  %1066 = mul i32 %2, %2
  %1067 = add i32 %1066, %2
  %1068 = mul i32 %1067, 3
  %1069 = srem i32 %1068, 2
  %1070 = icmp eq i32 %1069, 0
  %1071 = mul i32 %2, %2
  %1072 = add i32 %1071, %2
  %1073 = srem i32 %1072, 2
  %1074 = icmp eq i32 %1073, 0
  %1075 = and i1 %1070, %1074
  br i1 %1075, label %1087, label %1076

1076:                                             ; preds = %1058
  %1077 = sub i32 %1060, %1062
  %1078 = sub i32 80, 26
  %1079 = sext i32 %1077 to i64
  %1080 = mul i32 79, 13
  %1081 = getelementptr inbounds float, float* %3, i64 %1079
  %1082 = mul i32 51, 53
  %1083 = load float, float* %1081, align 4, !tbaa !13
  %1084 = mul i32 8, 113
  %1085 = fcmp ogt float %1020, %1083
  %1086 = add i32 73, 25
  br i1 %1075, label %1099, label %1055

1087:                                             ; preds = %1058
  %1088 = sub i32 0, %1062
  %1089 = add i32 %1060, %1088
  %1090 = add i32 80, -26
  %1091 = sext i32 %1089 to i64
  %1092 = mul i32 79, 13
  %1093 = getelementptr inbounds float, float* %3, i64 %1091
  %1094 = mul i32 51, 53
  %1095 = load float, float* %1093, align 4, !tbaa !13
  %1096 = mul i32 8, 113
  %1097 = fcmp ogt float %1020, %1095
  %1098 = add i32 697796378, -697796280
  br label %1099

1099:                                             ; preds = %1076, %1087
  %1100 = phi i32 [ %1089, %1087 ], [ %1077, %1076 ]
  %1101 = phi i32 [ %1090, %1087 ], [ %1078, %1076 ]
  %1102 = phi i64 [ %1091, %1087 ], [ %1079, %1076 ]
  %1103 = phi i32 [ %1092, %1087 ], [ %1080, %1076 ]
  %1104 = phi float* [ %1093, %1087 ], [ %1081, %1076 ]
  %1105 = phi i32 [ %1094, %1087 ], [ %1082, %1076 ]
  %1106 = phi float [ %1095, %1087 ], [ %1083, %1076 ]
  %1107 = phi i32 [ %1096, %1087 ], [ %1084, %1076 ]
  %1108 = phi i1 [ %1097, %1087 ], [ %1085, %1076 ]
  %1109 = phi i32 [ %1098, %1087 ], [ %1086, %1076 ]
  br label %1117

1110:                                             ; preds = %1055
  %1111 = mul nsw i32 %1035, %6
  %1112 = add nsw i32 %1111, %1028
  %1113 = sext i32 %1112 to i64
  %1114 = getelementptr inbounds float, float* %3, i64 %1113
  %1115 = load float, float* %1114, align 4, !tbaa !13
  %1116 = fcmp ogt float %1020, %1115
  br label %1117

1117:                                             ; preds = %1110, %1099
  %1118 = phi i32 [ %1111, %1110 ], [ %1060, %1099 ]
  %1119 = phi i32 [ %1112, %1110 ], [ %1100, %1099 ]
  %1120 = phi i64 [ %1113, %1110 ], [ %1102, %1099 ]
  %1121 = phi float* [ %1114, %1110 ], [ %1104, %1099 ]
  %1122 = phi float [ %1115, %1110 ], [ %1106, %1099 ]
  %1123 = phi i1 [ %1116, %1110 ], [ %1108, %1099 ]
  br i1 %1123, label %1124, label %1181

1124:                                             ; preds = %1147, %1117
  store float %1020, float* %1121, align 4, !tbaa !13
  %1125 = icmp sgt i32 %1047, 0
  %1126 = select i1 %1125, i32 %1047, i32 0
  %1127 = zext i32 %1126 to i64
  %1128 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1127
  %1129 = load i8, i8* %1128, align 1, !tbaa !10
  %1130 = srem i64 %414, 2
  %1131 = icmp eq i64 %1130, 0
  br i1 %1131, label %1132, label %1177

1132:                                             ; preds = %1124
  %1133 = srem i32 %487, 2
  %1134 = icmp eq i32 %1133, 0
  %1135 = mul i32 %289, 2
  %1136 = mul i32 %289, 2
  %1137 = add i32 2, %1136
  %1138 = mul i32 %1135, %1137
  %1139 = srem i32 %1138, 4
  %1140 = icmp eq i32 %1139, 0
  %1141 = mul i32 %289, %289
  %1142 = mul i32 %1141, %289
  %1143 = add i32 %1142, %289
  %1144 = srem i32 %1143, 2
  %1145 = icmp eq i32 %1144, 0
  %1146 = and i1 %1140, %1145
  br i1 %1146, label %1157, label %1147

1147:                                             ; preds = %1132
  %1148 = add i32 118, 70
  %1149 = getelementptr inbounds i8, i8* %4, i64 %1120
  %1150 = mul i32 22, 41
  store i8 %1129, i8* %1149, align 1, !tbaa !10
  %1151 = sub i32 79, 91
  %1152 = sdiv i32 82, 45
  %1153 = mul i32 59, 11
  %1154 = mul i32 43, 105
  %1155 = add i32 58, 26
  %1156 = sub i32 93, 11
  br i1 %1146, label %1167, label %1124

1157:                                             ; preds = %1132
  %1158 = add i32 48, 140
  %1159 = getelementptr inbounds i8, i8* %4, i64 %1120
  %1160 = mul i32 22, 41
  store i8 %1129, i8* %1159, align 1, !tbaa !10
  %1161 = add i32 79, -91
  %1162 = sdiv i32 82, 45
  %1163 = mul i32 59, 11
  %1164 = mul i32 43, 105
  %1165 = sub i32 0, -84
  %1166 = add i32 93, -11
  br label %1167

1167:                                             ; preds = %1147, %1157
  %1168 = phi i32 [ %1158, %1157 ], [ %1148, %1147 ]
  %1169 = phi i8* [ %1159, %1157 ], [ %1149, %1147 ]
  %1170 = phi i32 [ %1160, %1157 ], [ %1150, %1147 ]
  %1171 = phi i32 [ %1161, %1157 ], [ %1151, %1147 ]
  %1172 = phi i32 [ %1162, %1157 ], [ %1152, %1147 ]
  %1173 = phi i32 [ %1163, %1157 ], [ %1153, %1147 ]
  %1174 = phi i32 [ %1164, %1157 ], [ %1154, %1147 ]
  %1175 = phi i32 [ %1165, %1157 ], [ %1155, %1147 ]
  %1176 = phi i32 [ %1166, %1157 ], [ %1156, %1147 ]
  br label %1179

1177:                                             ; preds = %1124
  %1178 = getelementptr inbounds i8, i8* %4, i64 %1120
  store i8 %1129, i8* %1178, align 1, !tbaa !10
  br label %1179

1179:                                             ; preds = %1177, %1167
  %1180 = phi i8* [ %1178, %1177 ], [ %1169, %1167 ]
  br label %1181

1181:                                             ; preds = %1211, %1179, %1117, %1018
  %1182 = srem i32 %17, 2
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1184, label %1189

1184:                                             ; preds = %1181
  %1185 = fadd double %872, 7.000000e-02
  %1186 = fptrunc double %1185 to float
  %1187 = fpext float %1186 to double
  %1188 = fcmp olt double %1187, 6.280000e+00
  br label %1235

1189:                                             ; preds = %1181
  %1190 = sdiv i32 73, 86
  %1191 = fadd double %872, 7.000000e-02
  %1192 = sub i32 5, 108
  %1193 = fptrunc double %1191 to float
  %1194 = sdiv i32 56, 4
  %1195 = fpext float %1193 to double
  %1196 = add i32 107, 92
  %1197 = srem i32 %5, 2
  %1198 = icmp eq i32 %1197, 0
  %1199 = mul i64 %91, 2
  %1200 = mul i64 %91, 2
  %1201 = add i64 2, %1200
  %1202 = mul i64 %1199, %1201
  %1203 = srem i64 %1202, 4
  %1204 = icmp eq i64 %1203, 0
  %1205 = mul i64 %91, %91
  %1206 = mul i64 %1205, %91
  %1207 = add i64 %1206, %91
  %1208 = srem i64 %1207, 2
  %1209 = icmp eq i64 %1208, 0
  %1210 = and i1 %1204, %1209
  br i1 %1210, label %1219, label %1211

1211:                                             ; preds = %1189
  %1212 = fcmp olt double %1195, 6.280000e+00
  %1213 = add i32 66, -58
  %1214 = sdiv i32 72, 0
  %1215 = mul i32 124, 117
  %1216 = sdiv i32 34, 40
  %1217 = mul i32 15, 99
  %1218 = sdiv i32 42, 2
  br i1 %1210, label %1227, label %1181

1219:                                             ; preds = %1189
  %1220 = fcmp olt double %1195, 6.280000e+00
  %1221 = sub i32 66, 58
  %1222 = sdiv i32 72, 0
  %1223 = mul i32 124, 117
  %1224 = sdiv i32 34, 40
  %1225 = mul i32 15, 99
  %1226 = sdiv i32 42, 2
  br label %1227

1227:                                             ; preds = %1211, %1219
  %1228 = phi i1 [ %1220, %1219 ], [ %1212, %1211 ]
  %1229 = phi i32 [ %1221, %1219 ], [ %1213, %1211 ]
  %1230 = phi i32 [ %1222, %1219 ], [ %1214, %1211 ]
  %1231 = phi i32 [ %1223, %1219 ], [ %1215, %1211 ]
  %1232 = phi i32 [ %1224, %1219 ], [ %1216, %1211 ]
  %1233 = phi i32 [ %1225, %1219 ], [ %1217, %1211 ]
  %1234 = phi i32 [ %1226, %1219 ], [ %1218, %1211 ]
  br label %1235

1235:                                             ; preds = %1227, %1184
  %1236 = phi double [ %1191, %1227 ], [ %1185, %1184 ]
  %1237 = phi float [ %1193, %1227 ], [ %1186, %1184 ]
  %1238 = phi double [ %1195, %1227 ], [ %1187, %1184 ]
  %1239 = phi i1 [ %1228, %1227 ], [ %1188, %1184 ]
  br i1 %1239, label %871, label %831, !llvm.loop !20

1240:                                             ; preds = %1264, %1672
  %1241 = srem i32 %296, 2
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1243, label %1268

1243:                                             ; preds = %1240
  %1244 = sdiv i32 69, 96
  %1245 = sdiv i32 30, 116
  %1246 = mul i32 71, 2
  %1247 = mul i32 39, 72
  %1248 = sdiv i32 61, 49
  %1249 = srem i32 %1182, 2
  %1250 = icmp eq i32 %1249, 0
  %1251 = mul i64 %9, 2
  %1252 = mul i64 %9, 2
  %1253 = add i64 2, %1252
  %1254 = mul i64 %1251, %1253
  %1255 = srem i64 %1254, 4
  %1256 = icmp eq i64 %1255, 0
  %1257 = mul i64 %9, %9
  %1258 = add i64 %1257, %9
  %1259 = srem i64 %1258, 2
  %1260 = icmp eq i64 %1259, 0
  %1261 = or i1 %1256, %1260
  br i1 %1261, label %1262, label %1264

1262:                                             ; preds = %1243
  %1263 = sdiv i32 47, 17
  br label %1266

1264:                                             ; preds = %1243
  %1265 = sdiv i32 47, 17
  br i1 %1261, label %1266, label %1240

1266:                                             ; preds = %1264, %1262
  %1267 = phi i32 [ %1265, %1264 ], [ %1263, %1262 ]
  br label %1269

1268:                                             ; preds = %1240
  br label %1269

1269:                                             ; preds = %1268, %1266
  ret void

1270:                                             ; preds = %1359, %1672, %869
  %1271 = phi double [ 0.000000e+00, %869 ], [ %1630, %1672 ], [ 0.000000e+00, %1359 ]
  %1272 = phi i32 [ 0, %869 ], [ %1274, %1672 ], [ 0, %1359 ]
  %1273 = phi float [ 0.000000e+00, %869 ], [ %1629, %1672 ], [ 0.000000e+00, %1359 ]
  %1274 = add nuw nsw i32 %1272, 1
  %1275 = sitofp i32 %1272 to float
  %1276 = fadd float %12, %1275
  %1277 = call fastcc float @_ZL3cosf(float %1273) #9
  %1278 = fcmp une float %1276, 0.000000e+00
  %1279 = fmul float %1276, 2.000000e+00
  %1280 = fmul float %1277, 2.000000e+00
  %1281 = select i1 %1278, float %1277, float %1280
  %1282 = select i1 %1278, float %1279, float %1276
  %1283 = call fastcc float @_ZL3sinf(float %1273) #9
  %1284 = fmul float %1283, 2.000000e+00
  %1285 = select i1 %832, float %1283, float %1284
  %1286 = fadd float %1281, %15
  %1287 = fmul float %1282, %1286
  %1288 = fmul float %14, %1287
  %1289 = fmul float %870, %1285
  %1290 = fsub float %1288, %1289
  %1291 = fcmp une float %1286, 0.000000e+00
  %1292 = fmul float %1290, 2.000000e+00
  %1293 = fmul float %1286, 2.000000e+00
  %1294 = select i1 %1291, float %1286, float %1293
  %1295 = select i1 %1291, float %1292, float %1290
  %1296 = fmul float %1282, %1294
  %1297 = fmul float %870, %1296
  %1298 = fmul float %14, %1285
  %1299 = fadd float %1298, %1297
  %1300 = fadd float %1299, 5.000000e+00
  %1301 = fdiv float 1.000000e+00, %1300
  %1302 = fmul float %1301, 3.000000e+01
  %1303 = fmul float %16, %1294
  %1304 = fmul float %82, %1303
  %1305 = fmul float %83, %1295
  %1306 = srem i32 %884, 2
  %1307 = icmp eq i32 %1306, 0
  br i1 %1307, label %1308, label %1339

1308:                                             ; preds = %1270
  %1309 = fadd float %1304, %1305
  %1310 = fmul float %1309, %1302
  %1311 = fadd float %1310, %85
  %1312 = fptosi float %1311 to i32
  %1313 = fmul float %1301, 1.500000e+01
  %1314 = fmul float %83, %1303
  %1315 = fmul float %82, %1295
  %1316 = fsub float %1314, %1315
  %1317 = fmul float %1316, %1313
  %1318 = fadd float %1317, %88
  %1319 = fptosi float %1318 to i32
  %1320 = fmul float %1282, %1281
  %1321 = fmul float %14, %1320
  %1322 = fsub float %1289, %1321
  %1323 = fmul float %82, %1322
  %1324 = fmul float %870, %1320
  %1325 = fsub float %1323, %1324
  %1326 = fsub float %1325, %1298
  %1327 = fmul float %16, %1281
  %1328 = fmul float %83, %1327
  %1329 = fsub float %1326, %1328
  %1330 = fmul float %1329, 8.000000e+00
  %1331 = fptosi float %1330 to i32
  %1332 = icmp slt i32 %1319, %5
  %1333 = icmp sgt i32 %1319, 0
  %1334 = and i1 %1332, %1333
  %1335 = icmp sgt i32 %1312, 0
  %1336 = select i1 %1334, i1 %1335, i1 false
  %1337 = icmp slt i32 %1312, %6
  %1338 = select i1 %1336, i1 %1337, i1 false
  br label %1484

1339:                                             ; preds = %1270
  %1340 = add i32 51, 22
  %1341 = fadd float %1304, %1305
  %1342 = mul i32 84, 118
  %1343 = fmul float %1341, %1302
  %1344 = sdiv i32 101, 85
  %1345 = fadd float %1343, %85
  %1346 = sub i32 74, 26
  %1347 = fptosi float %1345 to i32
  %1348 = mul i32 50, 69
  %1349 = srem i64 %834, 2
  %1350 = icmp eq i64 %1349, 0
  %1351 = and i32 %655, 1
  %1352 = icmp eq i32 %1351, 0
  %1353 = mul i32 %655, %655
  %1354 = add i32 %1353, %655
  %1355 = mul i32 %1354, 3
  %1356 = srem i32 %1355, 2
  %1357 = icmp eq i32 %1356, 0
  %1358 = or i1 %1352, %1357
  br i1 %1358, label %1394, label %1359

1359:                                             ; preds = %1339
  %1360 = fmul float %1301, 1.500000e+01
  %1361 = mul i32 39, 26
  %1362 = fmul float %83, %1303
  %1363 = sub i32 121, 53
  %1364 = fmul float %82, %1295
  %1365 = sdiv i32 122, 23
  %1366 = fsub float %1362, %1364
  %1367 = sdiv i32 44, 90
  %1368 = fmul float %1366, %1360
  %1369 = add i32 26, 31
  %1370 = fadd float %1368, %88
  %1371 = fptosi float %1370 to i32
  %1372 = fmul float %1282, %1281
  %1373 = fmul float %14, %1372
  %1374 = fsub float %1289, %1373
  %1375 = fmul float %82, %1374
  %1376 = fmul float %870, %1372
  %1377 = fsub float %1375, %1376
  %1378 = fsub float %1377, %1298
  %1379 = fmul float %16, %1281
  %1380 = fmul float %83, %1379
  %1381 = fsub float %1378, %1380
  %1382 = fmul float %1381, 8.000000e+00
  %1383 = fptosi float %1382 to i32
  %1384 = icmp slt i32 %1371, %5
  %1385 = icmp sgt i32 %1371, 0
  %1386 = xor i1 %1384, true
  %1387 = or i1 %1386, %1385
  %1388 = xor i1 %1384, true
  %1389 = sub i1 %1387, %1388
  %1390 = icmp sgt i32 %1347, 0
  %1391 = select i1 %1389, i1 %1390, i1 false
  %1392 = icmp slt i32 %1347, %6
  %1393 = select i1 %1391, i1 %1392, i1 false
  br i1 %1358, label %1449, label %1270

1394:                                             ; preds = %1339
  %1395 = fmul float %1301, 1.500000e+01
  %1396 = mul i32 39, 26
  %1397 = fmul float %83, %1303
  %1398 = sub i32 1725535300, 1725535232
  %1399 = fmul float %82, %1295
  %1400 = sdiv i32 122, 23
  %1401 = fsub float %1397, %1399
  %1402 = sdiv i32 44, 90
  %1403 = fmul float %1401, %1395
  %1404 = sub i32 26, -31
  %1405 = fadd float %1403, %88
  %1406 = fptosi float %1405 to i32
  %1407 = fmul float %1282, %1281
  %1408 = fmul float %14, %1407
  %1409 = fsub float %1289, %1408
  %1410 = fmul float %82, %1409
  %1411 = fmul float %870, %1407
  %1412 = fsub float %1410, %1411
  %1413 = fsub float %1412, %1298
  %1414 = fmul float %16, %1281
  %1415 = fmul float %83, %1414
  %1416 = fsub float %1413, %1415
  %1417 = fmul float %1416, 8.000000e+00
  %1418 = fptosi float %1417 to i32
  %1419 = icmp slt i32 %1406, %5
  %1420 = icmp sgt i32 %1406, 0
  %1421 = xor i1 %1419, true
  %1422 = xor i1 %1421, false
  %1423 = xor i1 %1422, true
  %1424 = and i1 %1423, true
  %1425 = and i1 %1422, false
  %1426 = or i1 %1424, %1425
  %1427 = xor i1 %1420, true
  %1428 = and i1 %1427, true
  %1429 = and i1 %1420, false
  %1430 = or i1 %1428, %1429
  %1431 = xor i1 %1426, %1430
  %1432 = xor i1 %1422, true
  %1433 = xor i1 %1420, true
  %1434 = or i1 %1432, %1433
  %1435 = xor i1 %1434, true
  %1436 = and i1 %1435, true
  %1437 = or i1 %1431, %1436
  %1438 = xor i1 %1419, true
  %1439 = and i1 %1438, true
  %1440 = and i1 %1419, false
  %1441 = or i1 %1439, %1440
  %1442 = add i1 %1437, false
  %1443 = sub i1 %1442, %1441
  %1444 = sub i1 %1443, false
  %1445 = icmp sgt i32 %1347, 0
  %1446 = select i1 %1444, i1 %1445, i1 false
  %1447 = icmp slt i32 %1347, %6
  %1448 = select i1 %1446, i1 %1447, i1 false
  br label %1449

1449:                                             ; preds = %1359, %1394
  %1450 = phi float [ %1395, %1394 ], [ %1360, %1359 ]
  %1451 = phi i32 [ %1396, %1394 ], [ %1361, %1359 ]
  %1452 = phi float [ %1397, %1394 ], [ %1362, %1359 ]
  %1453 = phi i32 [ %1398, %1394 ], [ %1363, %1359 ]
  %1454 = phi float [ %1399, %1394 ], [ %1364, %1359 ]
  %1455 = phi i32 [ %1400, %1394 ], [ %1365, %1359 ]
  %1456 = phi float [ %1401, %1394 ], [ %1366, %1359 ]
  %1457 = phi i32 [ %1402, %1394 ], [ %1367, %1359 ]
  %1458 = phi float [ %1403, %1394 ], [ %1368, %1359 ]
  %1459 = phi i32 [ %1404, %1394 ], [ %1369, %1359 ]
  %1460 = phi float [ %1405, %1394 ], [ %1370, %1359 ]
  %1461 = phi i32 [ %1406, %1394 ], [ %1371, %1359 ]
  %1462 = phi float [ %1407, %1394 ], [ %1372, %1359 ]
  %1463 = phi float [ %1408, %1394 ], [ %1373, %1359 ]
  %1464 = phi float [ %1409, %1394 ], [ %1374, %1359 ]
  %1465 = phi float [ %1410, %1394 ], [ %1375, %1359 ]
  %1466 = phi float [ %1411, %1394 ], [ %1376, %1359 ]
  %1467 = phi float [ %1412, %1394 ], [ %1377, %1359 ]
  %1468 = phi float [ %1413, %1394 ], [ %1378, %1359 ]
  %1469 = phi float [ %1414, %1394 ], [ %1379, %1359 ]
  %1470 = phi float [ %1415, %1394 ], [ %1380, %1359 ]
  %1471 = phi float [ %1416, %1394 ], [ %1381, %1359 ]
  %1472 = phi float [ %1417, %1394 ], [ %1382, %1359 ]
  %1473 = phi i32 [ %1418, %1394 ], [ %1383, %1359 ]
  %1474 = phi i1 [ %1419, %1394 ], [ %1384, %1359 ]
  %1475 = phi i1 [ %1420, %1394 ], [ %1385, %1359 ]
  %1476 = phi i1 [ %1422, %1394 ], [ %1386, %1359 ]
  %1477 = phi i1 [ %1437, %1394 ], [ %1387, %1359 ]
  %1478 = phi i1 [ %1441, %1394 ], [ %1388, %1359 ]
  %1479 = phi i1 [ %1444, %1394 ], [ %1389, %1359 ]
  %1480 = phi i1 [ %1445, %1394 ], [ %1390, %1359 ]
  %1481 = phi i1 [ %1446, %1394 ], [ %1391, %1359 ]
  %1482 = phi i1 [ %1447, %1394 ], [ %1392, %1359 ]
  %1483 = phi i1 [ %1448, %1394 ], [ %1393, %1359 ]
  br label %1484

1484:                                             ; preds = %1449, %1308
  %1485 = phi float [ %1341, %1449 ], [ %1309, %1308 ]
  %1486 = phi float [ %1343, %1449 ], [ %1310, %1308 ]
  %1487 = phi float [ %1345, %1449 ], [ %1311, %1308 ]
  %1488 = phi i32 [ %1347, %1449 ], [ %1312, %1308 ]
  %1489 = phi float [ %1450, %1449 ], [ %1313, %1308 ]
  %1490 = phi float [ %1452, %1449 ], [ %1314, %1308 ]
  %1491 = phi float [ %1454, %1449 ], [ %1315, %1308 ]
  %1492 = phi float [ %1456, %1449 ], [ %1316, %1308 ]
  %1493 = phi float [ %1458, %1449 ], [ %1317, %1308 ]
  %1494 = phi float [ %1460, %1449 ], [ %1318, %1308 ]
  %1495 = phi i32 [ %1461, %1449 ], [ %1319, %1308 ]
  %1496 = phi float [ %1462, %1449 ], [ %1320, %1308 ]
  %1497 = phi float [ %1463, %1449 ], [ %1321, %1308 ]
  %1498 = phi float [ %1464, %1449 ], [ %1322, %1308 ]
  %1499 = phi float [ %1465, %1449 ], [ %1323, %1308 ]
  %1500 = phi float [ %1466, %1449 ], [ %1324, %1308 ]
  %1501 = phi float [ %1467, %1449 ], [ %1325, %1308 ]
  %1502 = phi float [ %1468, %1449 ], [ %1326, %1308 ]
  %1503 = phi float [ %1469, %1449 ], [ %1327, %1308 ]
  %1504 = phi float [ %1470, %1449 ], [ %1328, %1308 ]
  %1505 = phi float [ %1471, %1449 ], [ %1329, %1308 ]
  %1506 = phi float [ %1472, %1449 ], [ %1330, %1308 ]
  %1507 = phi i32 [ %1473, %1449 ], [ %1331, %1308 ]
  %1508 = phi i1 [ %1474, %1449 ], [ %1332, %1308 ]
  %1509 = phi i1 [ %1475, %1449 ], [ %1333, %1308 ]
  %1510 = phi i1 [ %1479, %1449 ], [ %1334, %1308 ]
  %1511 = phi i1 [ %1480, %1449 ], [ %1335, %1308 ]
  %1512 = phi i1 [ %1481, %1449 ], [ %1336, %1308 ]
  %1513 = phi i1 [ %1482, %1449 ], [ %1337, %1308 ]
  %1514 = phi i1 [ %1483, %1449 ], [ %1338, %1308 ]
  br i1 %1514, label %1515, label %1627

1515:                                             ; preds = %1549, %1484
  %1516 = srem i64 %834, 2
  %1517 = icmp eq i64 %1516, 0
  br i1 %1517, label %1518, label %1525

1518:                                             ; preds = %1515
  %1519 = mul nsw i32 %1495, %6
  %1520 = add nsw i32 %1519, %1488
  %1521 = sext i32 %1520 to i64
  %1522 = getelementptr inbounds float, float* %3, i64 %1521
  %1523 = load float, float* %1522, align 4, !tbaa !13
  %1524 = fcmp ogt float %1301, %1523
  br label %1573

1525:                                             ; preds = %1515
  %1526 = sub i32 61, 72
  %1527 = mul nsw i32 %1495, %6
  %1528 = sub i32 37, 117
  %1529 = xor i32 %1527, %1488
  %1530 = mul i32 86, 42
  %1531 = and i32 %1527, %1488
  %1532 = add i32 118, 37
  %1533 = mul i32 2, %1531
  %1534 = add i32 8, 105
  %1535 = add i32 %1529, %1533
  %1536 = srem i32 %1272, 2
  %1537 = icmp eq i32 %1536, 0
  %1538 = mul i32 %487, 2
  %1539 = mul i32 %487, 2
  %1540 = add i32 2, %1539
  %1541 = mul i32 %1538, %1540
  %1542 = srem i32 %1541, 4
  %1543 = icmp eq i32 %1542, 0
  %1544 = mul i32 %487, %487
  %1545 = add i32 %1544, %487
  %1546 = srem i32 %1545, 2
  %1547 = icmp eq i32 %1546, 0
  %1548 = or i1 %1543, %1547
  br i1 %1548, label %1557, label %1549

1549:                                             ; preds = %1525
  %1550 = add i32 -1606564197, 1606564239
  %1551 = sext i32 %1535 to i64
  %1552 = mul i32 98, 106
  %1553 = getelementptr inbounds float, float* %3, i64 %1551
  %1554 = mul i32 69, 75
  %1555 = load float, float* %1553, align 4, !tbaa !13
  %1556 = fcmp ogt float %1301, %1555
  br i1 %1548, label %1565, label %1515

1557:                                             ; preds = %1525
  %1558 = sub i32 91, 49
  %1559 = sext i32 %1535 to i64
  %1560 = mul i32 98, 106
  %1561 = getelementptr inbounds float, float* %3, i64 %1559
  %1562 = mul i32 69, 75
  %1563 = load float, float* %1561, align 4, !tbaa !13
  %1564 = fcmp ogt float %1301, %1563
  br label %1565

1565:                                             ; preds = %1549, %1557
  %1566 = phi i32 [ %1558, %1557 ], [ %1550, %1549 ]
  %1567 = phi i64 [ %1559, %1557 ], [ %1551, %1549 ]
  %1568 = phi i32 [ %1560, %1557 ], [ %1552, %1549 ]
  %1569 = phi float* [ %1561, %1557 ], [ %1553, %1549 ]
  %1570 = phi i32 [ %1562, %1557 ], [ %1554, %1549 ]
  %1571 = phi float [ %1563, %1557 ], [ %1555, %1549 ]
  %1572 = phi i1 [ %1564, %1557 ], [ %1556, %1549 ]
  br label %1573

1573:                                             ; preds = %1565, %1518
  %1574 = phi i32 [ %1527, %1565 ], [ %1519, %1518 ]
  %1575 = phi i32 [ %1535, %1565 ], [ %1520, %1518 ]
  %1576 = phi i64 [ %1567, %1565 ], [ %1521, %1518 ]
  %1577 = phi float* [ %1569, %1565 ], [ %1522, %1518 ]
  %1578 = phi float [ %1571, %1565 ], [ %1523, %1518 ]
  %1579 = phi i1 [ %1572, %1565 ], [ %1524, %1518 ]
  br i1 %1579, label %1580, label %1627

1580:                                             ; preds = %1609, %1573
  store float %1301, float* %1577, align 4, !tbaa !13
  %1581 = icmp sgt i32 %1507, 0
  %1582 = srem i32 %17, 2
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1584, label %1615

1584:                                             ; preds = %1580
  %1585 = sub i32 52, 66
  %1586 = select i1 %1581, i32 %1507, i32 0
  %1587 = add i32 98, 31
  %1588 = zext i32 %1586 to i64
  %1589 = add i32 78, 104
  %1590 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1588
  %1591 = add i32 102, 16
  %1592 = load i8, i8* %1590, align 1, !tbaa !10
  %1593 = sdiv i32 52, 102
  %1594 = getelementptr inbounds i8, i8* %4, i64 %1576
  %1595 = srem i32 %1488, 2
  %1596 = icmp eq i32 %1595, 0
  %1597 = mul i32 %1582, 2
  %1598 = mul i32 %1582, 2
  %1599 = add i32 2, %1598
  %1600 = mul i32 %1597, %1599
  %1601 = srem i32 %1600, 4
  %1602 = icmp eq i32 %1601, 0
  %1603 = mul i32 %1582, %1582
  %1604 = mul i32 %1603, %1582
  %1605 = add i32 %1604, %1582
  %1606 = srem i32 %1605, 2
  %1607 = icmp eq i32 %1606, 0
  %1608 = and i1 %1602, %1607
  br i1 %1608, label %1611, label %1609

1609:                                             ; preds = %1584
  %1610 = sdiv i32 35, 94
  store i8 %1592, i8* %1594, align 1, !tbaa !10
  br i1 %1608, label %1613, label %1580

1611:                                             ; preds = %1584
  %1612 = sdiv i32 35, 94
  store i8 %1592, i8* %1594, align 1, !tbaa !10
  br label %1613

1613:                                             ; preds = %1609, %1611
  %1614 = phi i32 [ %1612, %1611 ], [ %1610, %1609 ]
  br label %1621

1615:                                             ; preds = %1580
  %1616 = select i1 %1581, i32 %1507, i32 0
  %1617 = zext i32 %1616 to i64
  %1618 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1617
  %1619 = load i8, i8* %1618, align 1, !tbaa !10
  %1620 = getelementptr inbounds i8, i8* %4, i64 %1576
  store i8 %1619, i8* %1620, align 1, !tbaa !10
  br label %1621

1621:                                             ; preds = %1615, %1613
  %1622 = phi i32 [ %1616, %1615 ], [ %1586, %1613 ]
  %1623 = phi i64 [ %1617, %1615 ], [ %1588, %1613 ]
  %1624 = phi i8* [ %1618, %1615 ], [ %1590, %1613 ]
  %1625 = phi i8 [ %1619, %1615 ], [ %1592, %1613 ]
  %1626 = phi i8* [ %1620, %1615 ], [ %1594, %1613 ]
  br label %1627

1627:                                             ; preds = %1645, %1621, %1573, %1484
  %1628 = fadd double %1271, 7.000000e-02
  %1629 = fptrunc double %1628 to float
  %1630 = fpext float %1629 to double
  %1631 = icmp eq i32 %1274, 90
  %1632 = srem i32 %289, 2
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1634, label %1635

1634:                                             ; preds = %1627
  br label %1672

1635:                                             ; preds = %1627
  %1636 = srem i64 %91, 2
  %1637 = icmp eq i64 %1636, 0
  %1638 = and i32 %486, 1
  %1639 = icmp eq i32 %1638, 1
  %1640 = mul i32 %486, %486
  %1641 = add i32 %1640, %486
  %1642 = srem i32 %1641, 2
  %1643 = icmp eq i32 %1642, 0
  %1644 = or i1 %1639, %1643
  br i1 %1644, label %1654, label %1645

1645:                                             ; preds = %1635
  %1646 = sub i32 27, 17
  %1647 = mul i32 126, 20
  %1648 = sdiv i32 50, 36
  %1649 = sdiv i32 19, 8
  %1650 = sdiv i32 12, 84
  %1651 = add i32 126, 84
  %1652 = sdiv i32 78, 98
  %1653 = add i32 0, 3
  br i1 %1644, label %1663, label %1627

1654:                                             ; preds = %1635
  %1655 = add i32 564815953, -564815943
  %1656 = mul i32 126, 20
  %1657 = sdiv i32 50, 36
  %1658 = sdiv i32 19, 8
  %1659 = sdiv i32 12, 84
  %1660 = add i32 84, 126
  %1661 = sdiv i32 78, 98
  %1662 = add i32 3, 0
  br label %1663

1663:                                             ; preds = %1645, %1654
  %1664 = phi i32 [ %1655, %1654 ], [ %1646, %1645 ]
  %1665 = phi i32 [ %1656, %1654 ], [ %1647, %1645 ]
  %1666 = phi i32 [ %1657, %1654 ], [ %1648, %1645 ]
  %1667 = phi i32 [ %1658, %1654 ], [ %1649, %1645 ]
  %1668 = phi i32 [ %1659, %1654 ], [ %1650, %1645 ]
  %1669 = phi i32 [ %1660, %1654 ], [ %1651, %1645 ]
  %1670 = phi i32 [ %1661, %1654 ], [ %1652, %1645 ]
  %1671 = phi i32 [ %1662, %1654 ], [ %1653, %1645 ]
  br label %1672

1672:                                             ; preds = %1663, %1634
  br i1 %1631, label %1240, label %1270, !llvm.loop !21
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

11:                                               ; preds = %44, %66, %0
  %12 = phi i32 [ 5, %0 ], [ %15, %66 ], [ 0, %44 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = srem i32 %10, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %11
  %19 = add i32 100, 49
  %20 = srem i32 %10, 2
  %21 = icmp eq i32 %20, 0
  %22 = mul i32 %12, 2
  %23 = mul i32 %12, 2
  %24 = add i32 2, %23
  %25 = mul i32 %22, %24
  %26 = srem i32 %25, 4
  %27 = icmp eq i32 %26, 0
  %28 = mul i32 %12, %12
  %29 = mul i32 %28, %12
  %30 = add i32 %29, %12
  %31 = srem i32 %30, 2
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %27, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %18
  %35 = icmp eq i32 %15, 10
  %36 = sub i32 420524490, 420524308
  %37 = sdiv i32 48, 61
  %38 = add i32 165418198, -165418163
  %39 = add i32 116, -101
  %40 = sdiv i32 93, 77
  %41 = sdiv i32 1, 104
  %42 = add i32 294433923, -294434039
  %43 = mul i32 84, 30
  br label %54

44:                                               ; preds = %18
  %45 = icmp eq i32 %15, 10
  %46 = add i32 112, 70
  %47 = sdiv i32 48, 61
  %48 = sub i32 47, 12
  %49 = sub i32 116, 101
  %50 = sdiv i32 93, 77
  %51 = sdiv i32 1, 104
  %52 = sub i32 4, 120
  %53 = mul i32 84, 30
  br i1 %33, label %54, label %11

54:                                               ; preds = %44, %34
  %55 = phi i1 [ %45, %44 ], [ %35, %34 ]
  %56 = phi i32 [ %46, %44 ], [ %36, %34 ]
  %57 = phi i32 [ %47, %44 ], [ %37, %34 ]
  %58 = phi i32 [ %48, %44 ], [ %38, %34 ]
  %59 = phi i32 [ %49, %44 ], [ %39, %34 ]
  %60 = phi i32 [ %50, %44 ], [ %40, %34 ]
  %61 = phi i32 [ %51, %44 ], [ %41, %34 ]
  %62 = phi i32 [ %52, %44 ], [ %42, %34 ]
  %63 = phi i32 [ %53, %44 ], [ %43, %34 ]
  br label %66

64:                                               ; preds = %11
  %65 = icmp eq i32 %15, 10
  br label %66

66:                                               ; preds = %64, %54
  %67 = phi i1 [ %65, %64 ], [ %55, %54 ]
  br i1 %67, label %105, label %11, !llvm.loop !22

68:                                               ; preds = %91, %146
  call void @llvm.stackrestore(i8* %5)
  %69 = srem i32 %15, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = sub i32 63, 104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %73 = srem i8 %109, 2
  %74 = icmp eq i8 %73, 0
  %75 = mul i32 %10, %10
  %76 = add i32 %75, %10
  %77 = mul i32 %76, 3
  %78 = srem i32 %77, 2
  %79 = icmp eq i32 %78, 0
  %80 = mul i32 %10, %10
  %81 = add i32 %80, %10
  %82 = srem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = and i1 %79, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %71
  %86 = sdiv i32 126, 106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %87 = add i32 65, 73
  %88 = add i32 79, 54
  %89 = add i32 30, 72
  %90 = sub i32 8, 19
  br label %97

91:                                               ; preds = %71
  %92 = sdiv i32 126, 106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %93 = sub i32 65, -73
  %94 = sub i32 79, -54
  %95 = sub i32 0, -102
  %96 = sub i32 -419457826, -419457815
  br i1 %84, label %97, label %68

97:                                               ; preds = %91, %85
  %98 = phi i32 [ %92, %91 ], [ %86, %85 ]
  %99 = phi i32 [ %93, %91 ], [ %87, %85 ]
  %100 = phi i32 [ %94, %91 ], [ %88, %85 ]
  %101 = phi i32 [ %95, %91 ], [ %89, %85 ]
  %102 = phi i32 [ %96, %91 ], [ %90, %85 ]
  br label %104

103:                                              ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %104

104:                                              ; preds = %103, %97
  ret i32 %116

105:                                              ; preds = %141, %146, %66
  %106 = phi i64 [ %117, %146 ], [ 0, %66 ], [ 0, %141 ]
  %107 = phi i32 [ %116, %146 ], [ 0, %66 ], [ 0, %141 ]
  %108 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %106
  %109 = load i8, i8* %108, align 1, !tbaa !10
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %107, %110
  %112 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %106
  %113 = load float, float* %112, align 4, !tbaa !13
  %114 = sitofp i32 %111 to float
  %115 = fadd float %113, %114
  %116 = fptosi float %115 to i32
  %117 = add nuw nsw i64 %106, 1
  %118 = icmp eq i64 %117, 1760
  %119 = srem i32 %15, 2
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %105
  %122 = add i32 70, 79
  %123 = add i32 30, 116
  %124 = sdiv i32 72, 65
  %125 = sdiv i32 49, 37
  %126 = sub i32 107, 51
  %127 = sub i32 113, 19
  %128 = add i32 66, 107
  %129 = mul i32 30, 90
  %130 = srem i64 %106, 2
  %131 = icmp eq i64 %130, 0
  %132 = and i8 %109, 1
  %133 = icmp eq i8 %132, 1
  %134 = mul i8 %109, %109
  %135 = add i8 %134, %109
  %136 = srem i8 %135, 2
  %137 = icmp eq i8 %136, 0
  %138 = or i1 %133, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %121
  %140 = add i32 71, 4
  br label %143

141:                                              ; preds = %121
  %142 = add i32 67, 8
  br i1 %138, label %143, label %105

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %142, %141 ], [ %140, %139 ]
  br label %146

145:                                              ; preds = %105
  br label %146

146:                                              ; preds = %145, %143
  br i1 %118, label %68, label %105, !llvm.loop !23
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

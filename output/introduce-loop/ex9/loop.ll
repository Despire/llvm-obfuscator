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
  br i1 %6, label %7, label %41

7:                                                ; preds = %27, %4
  %8 = mul i32 47, 95
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = mul i32 3, 116
  %11 = srem i32 %5, 2
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %5, 1
  %14 = icmp eq i32 %13, 1
  %15 = mul i32 %5, %5
  %16 = add i32 %15, %5
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %14, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %7
  %21 = sdiv i32 95, 16
  %22 = sdiv i32 77, 1
  %23 = sub i32 0, -89
  %24 = mul i32 0, 42
  %25 = mul i32 65, 34
  %26 = sdiv i32 95, 70
  br label %34

27:                                               ; preds = %7
  %28 = sdiv i32 95, 16
  %29 = sdiv i32 77, 1
  %30 = add i32 26, 63
  %31 = mul i32 0, 42
  %32 = mul i32 65, 34
  %33 = sdiv i32 95, 70
  br i1 %19, label %34, label %7

34:                                               ; preds = %27, %20
  %35 = phi i32 [ %28, %27 ], [ %21, %20 ]
  %36 = phi i32 [ %29, %27 ], [ %22, %20 ]
  %37 = phi i32 [ %30, %27 ], [ %23, %20 ]
  %38 = phi i32 [ %31, %27 ], [ %24, %20 ]
  %39 = phi i32 [ %32, %27 ], [ %25, %20 ]
  %40 = phi i32 [ %33, %27 ], [ %26, %20 ]
  br label %43

41:                                               ; preds = %4
  %42 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi i32 [ %42, %41 ], [ %9, %34 ]
  br label %86

45:                                               ; preds = %69, %223
  %46 = srem i32 %44, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %85

49:                                               ; preds = %45
  %50 = sdiv i32 105, 23
  %51 = srem i32 %161, 2
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %161, 1
  %54 = icmp eq i32 %53, 0
  %55 = mul i32 %161, %161
  %56 = add i32 %55, %161
  %57 = mul i32 %56, 3
  %58 = srem i32 %57, 2
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %54, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = add i32 81, 24
  %63 = mul i32 75, 50
  %64 = add i32 27, 136
  %65 = sdiv i32 93, 18
  %66 = add i32 74, -57
  %67 = sdiv i32 100, 71
  %68 = sdiv i32 19, 66
  br label %77

69:                                               ; preds = %49
  %70 = add i32 92, 13
  %71 = mul i32 75, 50
  %72 = add i32 86, 77
  %73 = sdiv i32 93, 18
  %74 = sub i32 74, 57
  %75 = sdiv i32 100, 71
  %76 = sdiv i32 19, 66
  br i1 %60, label %77, label %45

77:                                               ; preds = %69, %61
  %78 = phi i32 [ %70, %69 ], [ %62, %61 ]
  %79 = phi i32 [ %71, %69 ], [ %63, %61 ]
  %80 = phi i32 [ %72, %69 ], [ %64, %61 ]
  %81 = phi i32 [ %73, %69 ], [ %65, %61 ]
  %82 = phi i32 [ %74, %69 ], [ %66, %61 ]
  %83 = phi i32 [ %75, %69 ], [ %67, %61 ]
  %84 = phi i32 [ %76, %69 ], [ %68, %61 ]
  br label %85

85:                                               ; preds = %77, %48
  ret void

86:                                               ; preds = %119, %223, %43
  %87 = phi i64 [ 0, %43 ], [ %231, %223 ], [ 0, %119 ]
  %88 = trunc i64 %87 to i32
  %89 = srem i32 %5, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = urem i32 %88, 80
  %93 = icmp eq i32 %92, 0
  br label %122

94:                                               ; preds = %86
  %95 = add i32 49, 70
  %96 = urem i32 %88, 80
  %97 = sdiv i32 122, 104
  %98 = icmp eq i32 %96, 0
  %99 = sdiv i32 68, 44
  %100 = mul i32 24, 20
  %101 = sub i32 18, 125
  %102 = mul i32 6, 94
  %103 = sub i32 69, 74
  %104 = sdiv i32 46, 38
  %105 = sdiv i32 101, 2
  %106 = srem i32 %88, 2
  %107 = icmp eq i32 %106, 0
  %108 = mul i32 %5, 2
  %109 = mul i32 %5, 2
  %110 = add i32 2, %109
  %111 = mul i32 %108, %110
  %112 = srem i32 %111, 4
  %113 = icmp eq i32 %112, 0
  %114 = mul i32 %5, %5
  %115 = add i32 %114, %5
  %116 = srem i32 %115, 2
  %117 = icmp eq i32 %116, 0
  %118 = or i1 %113, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %94
  br i1 %118, label %121, label %86

120:                                              ; preds = %94
  br label %121

121:                                              ; preds = %119, %120
  br label %122

122:                                              ; preds = %121, %91
  %123 = phi i32 [ %96, %121 ], [ %92, %91 ]
  %124 = phi i1 [ %98, %121 ], [ %93, %91 ]
  br i1 %124, label %159, label %125

125:                                              ; preds = %153, %122
  %126 = getelementptr inbounds i8, i8* %0, i64 %87
  %127 = load i8, i8* %126, align 1, !tbaa !10
  %128 = srem i32 %3, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %125
  %131 = sub i32 21, 66
  %132 = sext i8 %127 to i32
  %133 = sub i32 113, 7
  %134 = sub i32 59, 69
  %135 = add i32 61, 54
  %136 = add i32 11, 19
  %137 = sdiv i32 52, 101
  %138 = mul i32 123, 50
  %139 = sdiv i32 121, 19
  %140 = mul i32 78, 62
  %141 = add i32 92, 114
  %142 = srem i32 %88, 2
  %143 = icmp eq i32 %142, 0
  %144 = and i32 %88, 1
  %145 = icmp eq i32 %144, 0
  %146 = mul i32 %88, %88
  %147 = add i32 %146, %88
  %148 = mul i32 %147, 3
  %149 = srem i32 %148, 2
  %150 = icmp eq i32 %149, 0
  %151 = or i1 %145, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %130
  br label %154

153:                                              ; preds = %130
  br i1 %151, label %154, label %125

154:                                              ; preds = %153, %152
  br label %157

155:                                              ; preds = %125
  %156 = sext i8 %127 to i32
  br label %157

157:                                              ; preds = %155, %154
  %158 = phi i32 [ %156, %155 ], [ %132, %154 ]
  br label %159

159:                                              ; preds = %201, %157, %122
  %160 = phi i32 [ %158, %157 ], [ 10, %122 ], [ 0, %201 ]
  %161 = call i32 @putchar(i32 %160)
  %162 = load float, float* %1, align 4, !tbaa !13
  %163 = srem i32 %3, 2
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = fpext float %162 to double
  %167 = fadd double %166, 4.000000e-05
  %168 = fptrunc double %167 to float
  store float %168, float* %1, align 4, !tbaa !13
  %169 = load float, float* %2, align 4, !tbaa !13
  %170 = fpext float %169 to double
  %171 = fadd double %170, 2.000000e-05
  %172 = fptrunc double %171 to float
  store float %172, float* %2, align 4, !tbaa !13
  %173 = add nuw nsw i64 %87, 1
  %174 = icmp eq i64 %173, 1761
  br label %223

175:                                              ; preds = %159
  %176 = add i32 104, 4
  %177 = fpext float %162 to double
  %178 = add i32 58, 102
  %179 = fadd double %177, 4.000000e-05
  %180 = add i32 100, 38
  %181 = fptrunc double %179 to float
  %182 = add i32 57, 0
  store float %181, float* %1, align 4, !tbaa !13
  %183 = mul i32 67, 126
  %184 = load float, float* %2, align 4, !tbaa !13
  %185 = mul i32 96, 87
  %186 = fpext float %184 to double
  %187 = mul i32 94, 53
  %188 = fadd double %186, 2.000000e-05
  %189 = srem i32 %3, 2
  %190 = icmp eq i32 %189, 0
  %191 = mul i32 %161, %161
  %192 = add i32 %191, %161
  %193 = mul i32 %192, 3
  %194 = srem i32 %193, 2
  %195 = icmp eq i32 %194, 0
  %196 = mul i32 %161, %161
  %197 = add i32 %196, %161
  %198 = srem i32 %197, 2
  %199 = icmp eq i32 %198, 0
  %200 = and i1 %195, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %175
  %202 = fptrunc double %188 to float
  store float %202, float* %2, align 4, !tbaa !13
  %203 = sub i64 0, %87
  %204 = add i64 %203, -1
  %205 = sub i64 0, %204
  %206 = icmp eq i64 %205, 1761
  br i1 %200, label %217, label %159

207:                                              ; preds = %175
  %208 = fptrunc double %188 to float
  store float %208, float* %2, align 4, !tbaa !13
  %209 = sub i64 -6674640139013401823, %87
  %210 = add i64 %209, 6674640139013401823
  %211 = sub i64 0, %210
  %212 = add i64 %211, 1
  %213 = sub i64 0, %212
  %214 = sub i64 -3569358377325678420, %213
  %215 = sub i64 %214, -3569358377325678420
  %216 = icmp eq i64 %215, 1761
  br label %217

217:                                              ; preds = %201, %207
  %218 = phi float [ %208, %207 ], [ %202, %201 ]
  %219 = phi i64 [ %210, %207 ], [ %203, %201 ]
  %220 = phi i64 [ %213, %207 ], [ %204, %201 ]
  %221 = phi i64 [ %215, %207 ], [ %205, %201 ]
  %222 = phi i1 [ %216, %207 ], [ %206, %201 ]
  br label %223

223:                                              ; preds = %217, %165
  %224 = phi double [ %177, %217 ], [ %166, %165 ]
  %225 = phi double [ %179, %217 ], [ %167, %165 ]
  %226 = phi float [ %181, %217 ], [ %168, %165 ]
  %227 = phi float [ %184, %217 ], [ %169, %165 ]
  %228 = phi double [ %186, %217 ], [ %170, %165 ]
  %229 = phi double [ %188, %217 ], [ %171, %165 ]
  %230 = phi float [ %218, %217 ], [ %172, %165 ]
  %231 = phi i64 [ %221, %217 ], [ %173, %165 ]
  %232 = phi i1 [ %222, %217 ], [ %174, %165 ]
  br i1 %232, label %45, label %86, !llvm.loop !15
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
  %10 = srem i32 %2, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = bitcast float* %3 to i8*
  %14 = shl nsw i64 %9, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 %14, i1 false)
  %15 = sitofp i32 %8 to float
  %16 = sdiv i32 %6, 2
  %17 = sitofp i32 %16 to float
  %18 = sdiv i32 %5, 2
  %19 = add nsw i32 %18, 1
  %20 = sitofp i32 %19 to float
  %21 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %22 = call fastcc float @_ZL3cosf(float %1) #9
  %23 = call fastcc float @_ZL3sinf(float %1) #9
  br label %67

24:                                               ; preds = %58, %7
  %25 = sdiv i32 42, 3
  %26 = bitcast float* %3 to i8*
  %27 = mul i32 109, 13
  %28 = shl nsw i64 %9, 2
  %29 = sub i32 92, 40
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 %28, i1 false)
  %30 = sub i32 61, 56
  %31 = sitofp i32 %8 to float
  %32 = sub i32 38, 26
  %33 = sdiv i32 %6, 2
  %34 = mul i32 53, 56
  %35 = sitofp i32 %33 to float
  %36 = add i32 24, 39
  %37 = sdiv i32 %5, 2
  %38 = xor i32 %37, 1
  %39 = and i32 %37, 1
  %40 = mul i32 2, %39
  %41 = add i32 %38, %40
  %42 = sitofp i32 %41 to float
  %43 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %44 = srem i64 %9, 2
  %45 = icmp eq i64 %44, 0
  %46 = mul i32 %5, 2
  %47 = mul i32 %5, 2
  %48 = add i32 2, %47
  %49 = mul i32 %46, %48
  %50 = srem i32 %49, 4
  %51 = icmp eq i32 %50, 0
  %52 = mul i32 %5, %5
  %53 = mul i32 %52, %5
  %54 = add i32 %53, %5
  %55 = srem i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = and i1 %51, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %24
  %59 = call fastcc float @_ZL3cosf(float %1) #9
  %60 = call fastcc float @_ZL3sinf(float %1) #9
  br i1 %57, label %64, label %24

61:                                               ; preds = %24
  %62 = call fastcc float @_ZL3cosf(float %1) #9
  %63 = call fastcc float @_ZL3sinf(float %1) #9
  br label %64

64:                                               ; preds = %58, %61
  %65 = phi float [ %62, %61 ], [ %59, %58 ]
  %66 = phi float [ %63, %61 ], [ %60, %58 ]
  br label %67

67:                                               ; preds = %64, %12
  %68 = phi i8* [ %26, %64 ], [ %13, %12 ]
  %69 = phi i64 [ %28, %64 ], [ %14, %12 ]
  %70 = phi float [ %31, %64 ], [ %15, %12 ]
  %71 = phi i32 [ %33, %64 ], [ %16, %12 ]
  %72 = phi float [ %35, %64 ], [ %17, %12 ]
  %73 = phi i32 [ %37, %64 ], [ %18, %12 ]
  %74 = phi i32 [ %41, %64 ], [ %19, %12 ]
  %75 = phi float [ %42, %64 ], [ %20, %12 ]
  %76 = phi float [ %43, %64 ], [ %21, %12 ]
  %77 = phi float [ %65, %64 ], [ %22, %12 ]
  %78 = phi float [ %66, %64 ], [ %23, %12 ]
  br label %141

79:                                               ; preds = %98, %762
  %80 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %81 = call fastcc float @_ZL3sinf(float %0) #9
  %82 = srem i32 %8, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %131

84:                                               ; preds = %79
  %85 = srem i32 %2, 2
  %86 = icmp eq i32 %85, 0
  %87 = mul i32 %491, 2
  %88 = mul i32 %491, 2
  %89 = add i32 2, %88
  %90 = mul i32 %87, %89
  %91 = srem i32 %90, 4
  %92 = icmp eq i32 %91, 0
  %93 = mul i32 %491, %491
  %94 = add i32 %93, %491
  %95 = srem i32 %94, 2
  %96 = icmp eq i32 %95, 0
  %97 = or i1 %92, %96
  br i1 %97, label %109, label %98

98:                                               ; preds = %84
  %99 = add i32 44, 63
  %100 = fcmp une float %81, 0.000000e+00
  %101 = sdiv i32 66, 45
  %102 = fmul float %81, 2.000000e+00
  %103 = mul i32 66, 41
  %104 = select i1 %100, float %102, float %81
  %105 = add i32 38, 118
  %106 = call fastcc float @_ZL3cosf(float %0) #9
  %107 = sdiv i32 99, 78
  %108 = sdiv i32 3, 46
  br i1 %97, label %120, label %79

109:                                              ; preds = %84
  %110 = add i32 47, 60
  %111 = fcmp une float %81, 0.000000e+00
  %112 = sdiv i32 66, 45
  %113 = fmul float %81, 2.000000e+00
  %114 = mul i32 66, 41
  %115 = select i1 %111, float %113, float %81
  %116 = add i32 38, 118
  %117 = call fastcc float @_ZL3cosf(float %0) #9
  %118 = sdiv i32 99, 78
  %119 = sdiv i32 3, 46
  br label %120

120:                                              ; preds = %98, %109
  %121 = phi i32 [ %110, %109 ], [ %99, %98 ]
  %122 = phi i1 [ %111, %109 ], [ %100, %98 ]
  %123 = phi i32 [ %112, %109 ], [ %101, %98 ]
  %124 = phi float [ %113, %109 ], [ %102, %98 ]
  %125 = phi i32 [ %114, %109 ], [ %103, %98 ]
  %126 = phi float [ %115, %109 ], [ %104, %98 ]
  %127 = phi i32 [ %116, %109 ], [ %105, %98 ]
  %128 = phi float [ %117, %109 ], [ %106, %98 ]
  %129 = phi i32 [ %118, %109 ], [ %107, %98 ]
  %130 = phi i32 [ %119, %109 ], [ %108, %98 ]
  br label %136

131:                                              ; preds = %79
  %132 = fcmp une float %81, 0.000000e+00
  %133 = fmul float %81, 2.000000e+00
  %134 = select i1 %132, float %133, float %81
  %135 = call fastcc float @_ZL3cosf(float %0) #9
  br label %136

136:                                              ; preds = %131, %120
  %137 = phi i1 [ %132, %131 ], [ %122, %120 ]
  %138 = phi float [ %133, %131 ], [ %124, %120 ]
  %139 = phi float [ %134, %131 ], [ %126, %120 ]
  %140 = phi float [ %135, %131 ], [ %128, %120 ]
  br label %810

141:                                              ; preds = %166, %762, %67
  %142 = phi double [ 0.000000e+00, %67 ], [ %763, %762 ], [ 0.000000e+00, %166 ]
  %143 = phi float [ 0.000000e+00, %67 ], [ %733, %762 ], [ 0.000000e+00, %166 ]
  %144 = fptosi float %143 to i32
  %145 = srem i32 %2, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %141
  %148 = sub i32 50, 73
  %149 = sub i32 80, 51
  %150 = add i32 84, 90
  %151 = add i32 116, 121
  %152 = mul i32 77, 103
  %153 = sub i32 18, 57
  %154 = mul i32 24, 61
  %155 = sdiv i32 106, 88
  %156 = srem i32 %6, 2
  %157 = icmp eq i32 %156, 0
  %158 = and i32 %5, 1
  %159 = icmp eq i32 %158, 0
  %160 = mul i32 %5, %5
  %161 = add i32 %160, %5
  %162 = mul i32 %161, 3
  %163 = srem i32 %162, 2
  %164 = icmp eq i32 %163, 0
  %165 = or i1 %159, %164
  br i1 %165, label %167, label %166

166:                                              ; preds = %147
  br i1 %165, label %168, label %141

167:                                              ; preds = %147
  br label %168

168:                                              ; preds = %166, %167
  br label %170

169:                                              ; preds = %141
  br label %170

170:                                              ; preds = %169, %168
  switch i32 %144, label %463 [
    i32 0, label %171
    i32 1, label %204
    i32 2, label %242
    i32 3, label %285
    i32 4, label %326
    i32 5, label %365
    i32 6, label %414
  ]

171:                                              ; preds = %193, %170
  %172 = call fastcc float @_ZL3sinf(float 5.000000e-01) #9
  %173 = srem i32 %8, 2
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %203

176:                                              ; preds = %171
  %177 = add i32 33, 122
  %178 = add i32 111, 106
  %179 = srem i32 %5, 2
  %180 = icmp eq i32 %179, 0
  %181 = and i32 %73, 1
  %182 = icmp eq i32 %181, 1
  %183 = mul i32 %73, %73
  %184 = add i32 %183, %73
  %185 = srem i32 %184, 2
  %186 = icmp eq i32 %185, 0
  %187 = or i1 %182, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %176
  %189 = sub i32 32, 93
  %190 = sdiv i32 81, 63
  %191 = mul i32 43, 99
  %192 = mul i32 56, 56
  br label %198

193:                                              ; preds = %176
  %194 = add i32 770230989, -770231050
  %195 = sdiv i32 81, 63
  %196 = mul i32 43, 99
  %197 = mul i32 56, 56
  br i1 %187, label %198, label %171

198:                                              ; preds = %193, %188
  %199 = phi i32 [ %194, %193 ], [ %189, %188 ]
  %200 = phi i32 [ %195, %193 ], [ %190, %188 ]
  %201 = phi i32 [ %196, %193 ], [ %191, %188 ]
  %202 = phi i32 [ %197, %193 ], [ %192, %188 ]
  br label %203

203:                                              ; preds = %198, %175
  br label %204

204:                                              ; preds = %234, %203, %170
  %205 = phi float [ 0.000000e+00, %170 ], [ %172, %203 ], [ 0.000000e+00, %234 ]
  %206 = srem i32 %74, 2
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %238

208:                                              ; preds = %204
  %209 = sub i32 28, 65
  %210 = call fastcc float @_ZL3cosf(float %143) #9
  %211 = add i32 28, 74
  %212 = mul i32 18, 47
  %213 = mul i32 71, 28
  %214 = mul i32 69, 38
  %215 = mul i32 42, 87
  %216 = sub i32 111, 42
  %217 = sub i32 76, 115
  %218 = add i32 114, 78
  %219 = srem i32 %74, 2
  %220 = icmp eq i32 %219, 0
  %221 = mul i32 %206, 2
  %222 = mul i32 %206, 2
  %223 = add i32 2, %222
  %224 = mul i32 %221, %223
  %225 = srem i32 %224, 4
  %226 = icmp eq i32 %225, 0
  %227 = mul i32 %206, %206
  %228 = add i32 %227, %206
  %229 = srem i32 %228, 2
  %230 = icmp eq i32 %229, 0
  %231 = and i1 %226, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %208
  %233 = sdiv i32 102, 54
  br label %236

234:                                              ; preds = %208
  %235 = sdiv i32 102, 54
  br i1 %231, label %236, label %204

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %235, %234 ], [ %233, %232 ]
  br label %240

238:                                              ; preds = %204
  %239 = call fastcc float @_ZL3cosf(float %143) #9
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi float [ %239, %238 ], [ %210, %236 ]
  br label %242

242:                                              ; preds = %273, %240, %170
  %243 = phi float [ 0.000000e+00, %170 ], [ %241, %240 ], [ 0.000000e+00, %273 ]
  %244 = phi float [ 0.000000e+00, %170 ], [ %205, %240 ], [ 0.000000e+00, %273 ]
  %245 = srem i64 %9, 2
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = call fastcc float @_ZL3sinf(float %0) #9
  br label %283

249:                                              ; preds = %242
  %250 = sdiv i32 39, 1
  %251 = call fastcc float @_ZL3sinf(float %0) #9
  %252 = sdiv i32 125, 47
  %253 = sub i32 4, 91
  %254 = sub i32 60, 74
  %255 = mul i32 106, 96
  %256 = srem i32 %5, 2
  %257 = icmp eq i32 %256, 0
  %258 = mul i32 %6, %6
  %259 = add i32 %258, %6
  %260 = mul i32 %259, 3
  %261 = srem i32 %260, 2
  %262 = icmp eq i32 %261, 0
  %263 = mul i32 %6, %6
  %264 = add i32 %263, %6
  %265 = srem i32 %264, 2
  %266 = icmp eq i32 %265, 0
  %267 = and i1 %262, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %249
  %269 = mul i32 51, 13
  %270 = sub i32 13, 23
  %271 = mul i32 77, 9
  %272 = sub i32 0, 37
  br label %278

273:                                              ; preds = %249
  %274 = mul i32 51, 13
  %275 = add i32 13, -23
  %276 = mul i32 77, 9
  %277 = add i32 0, -37
  br i1 %267, label %278, label %242

278:                                              ; preds = %273, %268
  %279 = phi i32 [ %274, %273 ], [ %269, %268 ]
  %280 = phi i32 [ %275, %273 ], [ %270, %268 ]
  %281 = phi i32 [ %276, %273 ], [ %271, %268 ]
  %282 = phi i32 [ %277, %273 ], [ %272, %268 ]
  br label %283

283:                                              ; preds = %278, %247
  %284 = phi float [ %251, %278 ], [ %248, %247 ]
  br label %285

285:                                              ; preds = %311, %283, %170
  %286 = phi float [ 0.000000e+00, %170 ], [ %284, %283 ], [ 0.000000e+00, %311 ]
  %287 = phi float [ 0.000000e+00, %170 ], [ %243, %283 ], [ 0.000000e+00, %311 ]
  %288 = phi float [ 0.000000e+00, %170 ], [ %244, %283 ], [ 0.000000e+00, %311 ]
  %289 = call fastcc float @_ZL3sinf(float %143) #9
  %290 = srem i64 %9, 2
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %285
  br label %325

293:                                              ; preds = %285
  %294 = add i32 112, 15
  %295 = srem i32 %74, 2
  %296 = icmp eq i32 %295, 0
  %297 = and i32 %8, 1
  %298 = icmp eq i32 %297, 1
  %299 = mul i32 %8, %8
  %300 = add i32 %299, %8
  %301 = srem i32 %300, 2
  %302 = icmp eq i32 %301, 0
  %303 = or i1 %298, %302
  br i1 %303, label %304, label %311

304:                                              ; preds = %293
  %305 = add i32 1694809287, -1694809162
  %306 = add i32 116, 16
  %307 = sdiv i32 43, 12
  %308 = add i32 0, -94
  %309 = mul i32 15, 123
  %310 = add i32 8, 124
  br label %318

311:                                              ; preds = %293
  %312 = add i32 87, 38
  %313 = add i32 60, 72
  %314 = sdiv i32 43, 12
  %315 = sub i32 0, 94
  %316 = mul i32 15, 123
  %317 = add i32 12, 120
  br i1 %303, label %318, label %285

318:                                              ; preds = %311, %304
  %319 = phi i32 [ %312, %311 ], [ %305, %304 ]
  %320 = phi i32 [ %313, %311 ], [ %306, %304 ]
  %321 = phi i32 [ %314, %311 ], [ %307, %304 ]
  %322 = phi i32 [ %315, %311 ], [ %308, %304 ]
  %323 = phi i32 [ %316, %311 ], [ %309, %304 ]
  %324 = phi i32 [ %317, %311 ], [ %310, %304 ]
  br label %325

325:                                              ; preds = %318, %292
  br label %326

326:                                              ; preds = %355, %325, %170
  %327 = phi float [ 0.000000e+00, %170 ], [ %289, %325 ], [ 0.000000e+00, %355 ]
  %328 = phi float [ 0.000000e+00, %170 ], [ %286, %325 ], [ 0.000000e+00, %355 ]
  %329 = phi float [ 0.000000e+00, %170 ], [ %287, %325 ], [ 0.000000e+00, %355 ]
  %330 = phi float [ 0.000000e+00, %170 ], [ %288, %325 ], [ 0.000000e+00, %355 ]
  %331 = srem i64 %69, 2
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %361

333:                                              ; preds = %326
  %334 = add i32 9, 55
  %335 = call fastcc float @_ZL3cosf(float %0) #9
  %336 = mul i32 4, 4
  %337 = mul i32 74, 114
  %338 = mul i32 116, 116
  %339 = mul i32 89, 117
  %340 = mul i32 63, 39
  %341 = add i32 2, 106
  %342 = add i32 99, 71
  %343 = srem i64 %69, 2
  %344 = icmp eq i64 %343, 0
  %345 = mul i32 %6, %6
  %346 = add i32 %345, %6
  %347 = mul i32 %346, 3
  %348 = srem i32 %347, 2
  %349 = icmp eq i32 %348, 0
  %350 = mul i32 %6, %6
  %351 = add i32 %350, %6
  %352 = srem i32 %351, 2
  %353 = icmp eq i32 %352, 0
  %354 = and i1 %349, %353
  br i1 %354, label %357, label %355

355:                                              ; preds = %333
  %356 = sdiv i32 83, 0
  br i1 %354, label %359, label %326

357:                                              ; preds = %333
  %358 = sdiv i32 83, 0
  br label %359

359:                                              ; preds = %355, %357
  %360 = phi i32 [ %358, %357 ], [ %356, %355 ]
  br label %363

361:                                              ; preds = %326
  %362 = call fastcc float @_ZL3cosf(float %0) #9
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi float [ %362, %361 ], [ %335, %359 ]
  br label %365

365:                                              ; preds = %398, %363, %170
  %366 = phi float [ 0.000000e+00, %170 ], [ %364, %363 ], [ 0.000000e+00, %398 ]
  %367 = phi float [ 0.000000e+00, %170 ], [ %327, %363 ], [ 0.000000e+00, %398 ]
  %368 = phi float [ 0.000000e+00, %170 ], [ %328, %363 ], [ 0.000000e+00, %398 ]
  %369 = phi float [ 0.000000e+00, %170 ], [ %329, %363 ], [ 0.000000e+00, %398 ]
  %370 = phi float [ 0.000000e+00, %170 ], [ %330, %363 ], [ 0.000000e+00, %398 ]
  %371 = fadd float %369, %70
  %372 = srem i32 %2, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %412

374:                                              ; preds = %365
  %375 = add i32 4, 11
  %376 = sdiv i32 106, 9
  %377 = mul i32 119, 67
  %378 = add i32 54, 105
  %379 = srem i32 %144, 2
  %380 = icmp eq i32 %379, 0
  %381 = mul i32 %6, %6
  %382 = add i32 %381, %6
  %383 = mul i32 %382, 3
  %384 = srem i32 %383, 2
  %385 = icmp eq i32 %384, 0
  %386 = mul i32 %6, %6
  %387 = add i32 %386, %6
  %388 = srem i32 %387, 2
  %389 = icmp eq i32 %388, 0
  %390 = and i1 %385, %389
  br i1 %390, label %391, label %398

391:                                              ; preds = %374
  %392 = add i32 64, -112
  %393 = sub i32 53, -62
  %394 = sdiv i32 122, 52
  %395 = add i32 32, 116
  %396 = add i32 67, 40
  %397 = add i32 1585335237, -1585335307
  br label %405

398:                                              ; preds = %374
  %399 = sub i32 64, 112
  %400 = add i32 53, 62
  %401 = sdiv i32 122, 52
  %402 = add i32 112, 36
  %403 = add i32 23, 84
  %404 = sub i32 12, 82
  br i1 %390, label %405, label %365

405:                                              ; preds = %398, %391
  %406 = phi i32 [ %399, %398 ], [ %392, %391 ]
  %407 = phi i32 [ %400, %398 ], [ %393, %391 ]
  %408 = phi i32 [ %401, %398 ], [ %394, %391 ]
  %409 = phi i32 [ %402, %398 ], [ %395, %391 ]
  %410 = phi i32 [ %403, %398 ], [ %396, %391 ]
  %411 = phi i32 [ %404, %398 ], [ %397, %391 ]
  br label %413

412:                                              ; preds = %365
  br label %413

413:                                              ; preds = %412, %405
  br label %414

414:                                              ; preds = %449, %413, %170
  %415 = phi float [ 0.000000e+00, %170 ], [ %371, %413 ], [ 0.000000e+00, %449 ]
  %416 = phi float [ 0.000000e+00, %170 ], [ %366, %413 ], [ 0.000000e+00, %449 ]
  %417 = phi float [ 0.000000e+00, %170 ], [ %367, %413 ], [ 0.000000e+00, %449 ]
  %418 = phi float [ 0.000000e+00, %170 ], [ %368, %413 ], [ 0.000000e+00, %449 ]
  %419 = phi float [ 0.000000e+00, %170 ], [ %369, %413 ], [ 0.000000e+00, %449 ]
  %420 = phi float [ 0.000000e+00, %170 ], [ %370, %413 ], [ 0.000000e+00, %449 ]
  %421 = fmul float %415, %420
  %422 = fmul float %416, %421
  %423 = fmul float %417, %418
  %424 = srem i32 %144, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %414
  %427 = fsub float %422, %423
  br label %461

428:                                              ; preds = %414
  %429 = sdiv i32 65, 68
  %430 = fsub float %422, %423
  %431 = sub i32 124, 40
  %432 = add i32 49, 77
  %433 = sdiv i32 44, 94
  %434 = sdiv i32 118, 113
  %435 = sub i32 35, 125
  %436 = sub i32 74, 40
  %437 = srem i64 %69, 2
  %438 = icmp eq i64 %437, 0
  %439 = mul i64 %9, %9
  %440 = add i64 %439, %9
  %441 = mul i64 %440, 3
  %442 = srem i64 %441, 2
  %443 = icmp eq i64 %442, 0
  %444 = mul i64 %9, %9
  %445 = add i64 %444, %9
  %446 = srem i64 %445, 2
  %447 = icmp eq i64 %446, 0
  %448 = and i1 %443, %447
  br i1 %448, label %453, label %449

449:                                              ; preds = %428
  %450 = sdiv i32 89, 45
  %451 = sdiv i32 54, 123
  %452 = add i32 -1699414359, 1699414491
  br i1 %448, label %457, label %414

453:                                              ; preds = %428
  %454 = sdiv i32 89, 45
  %455 = sdiv i32 54, 123
  %456 = add i32 113, 19
  br label %457

457:                                              ; preds = %449, %453
  %458 = phi i32 [ %454, %453 ], [ %450, %449 ]
  %459 = phi i32 [ %455, %453 ], [ %451, %449 ]
  %460 = phi i32 [ %456, %453 ], [ %452, %449 ]
  br label %461

461:                                              ; preds = %457, %426
  %462 = phi float [ %430, %457 ], [ %427, %426 ]
  br label %463

463:                                              ; preds = %554, %461, %170
  %464 = phi float [ 0.000000e+00, %170 ], [ %462, %461 ], [ 0.000000e+00, %554 ]
  %465 = phi float [ 0.000000e+00, %170 ], [ %415, %461 ], [ 0.000000e+00, %554 ]
  %466 = phi float [ 0.000000e+00, %170 ], [ %416, %461 ], [ 0.000000e+00, %554 ]
  %467 = phi float [ 0.000000e+00, %170 ], [ %417, %461 ], [ 0.000000e+00, %554 ]
  %468 = phi float [ 0.000000e+00, %170 ], [ %418, %461 ], [ 0.000000e+00, %554 ]
  %469 = phi float [ 0.000000e+00, %170 ], [ %419, %461 ], [ 0.000000e+00, %554 ]
  %470 = phi float [ 0.000000e+00, %170 ], [ %420, %461 ], [ 0.000000e+00, %554 ]
  %471 = fmul float %465, %470
  %472 = fmul float %468, %471
  %473 = fmul float %466, %467
  %474 = fadd float %473, %472
  %475 = fadd float %474, 5.000000e+00
  %476 = fdiv float 1.000000e+00, %475
  %477 = fmul float %476, 3.000000e+01
  %478 = fmul float %465, %76
  %479 = fmul float %478, %77
  %480 = fmul float %464, %78
  %481 = fadd float %479, %480
  %482 = fmul float %481, %477
  %483 = fadd float %482, %72
  %484 = fptosi float %483 to i32
  %485 = fmul float %476, 1.500000e+01
  %486 = fmul float %478, %78
  %487 = fmul float %464, %77
  %488 = fsub float %486, %487
  %489 = fmul float %488, %485
  %490 = fadd float %489, %75
  %491 = fptosi float %490 to i32
  %492 = fmul float %467, %468
  %493 = fmul float %469, %470
  %494 = fmul float %466, %493
  %495 = fsub float %492, %494
  %496 = fmul float %77, %495
  %497 = fmul float %468, %493
  %498 = fsub float %496, %497
  %499 = fsub float %498, %473
  %500 = fmul float %469, %76
  %501 = fmul float %500, %78
  %502 = fsub float %499, %501
  %503 = fmul float %502, 8.000000e+00
  %504 = fptosi float %503 to i32
  %505 = srem i32 %6, 2
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %519

507:                                              ; preds = %463
  %508 = icmp slt i32 %491, %5
  %509 = icmp sgt i32 %491, 0
  %510 = xor i1 %508, true
  %511 = xor i1 %509, true
  %512 = or i1 %510, %511
  %513 = xor i1 %512, true
  %514 = and i1 %513, true
  %515 = icmp sgt i32 %484, 0
  %516 = select i1 %514, i1 %515, i1 false
  %517 = icmp slt i32 %484, %6
  %518 = select i1 %516, i1 %517, i1 false
  br label %586

519:                                              ; preds = %463
  %520 = sdiv i32 26, 7
  %521 = srem i32 %6, 2
  %522 = icmp eq i32 %521, 0
  %523 = mul i32 %504, 2
  %524 = mul i32 %504, 2
  %525 = add i32 2, %524
  %526 = mul i32 %523, %525
  %527 = srem i32 %526, 4
  %528 = icmp eq i32 %527, 0
  %529 = mul i32 %504, %504
  %530 = mul i32 %529, %504
  %531 = add i32 %530, %504
  %532 = srem i32 %531, 2
  %533 = icmp eq i32 %532, 0
  %534 = and i1 %528, %533
  br i1 %534, label %535, label %554

535:                                              ; preds = %519
  %536 = icmp slt i32 %491, %5
  %537 = mul i32 16, 81
  %538 = icmp sgt i32 %491, 0
  %539 = add i32 101, -12
  %540 = xor i1 %536, true
  %541 = or i1 %540, %538
  %542 = xor i1 %536, true
  %543 = sub i1 %541, %542
  %544 = add i32 43, -111
  %545 = icmp sgt i32 %484, 0
  %546 = sdiv i32 47, 48
  %547 = select i1 %543, i1 %545, i1 false
  %548 = sdiv i32 100, 87
  %549 = icmp slt i32 %484, %6
  %550 = mul i32 118, 38
  %551 = select i1 %547, i1 %549, i1 false
  %552 = sdiv i32 47, 9
  %553 = sub i32 0, -73
  br label %570

554:                                              ; preds = %519
  %555 = icmp slt i32 %491, %5
  %556 = mul i32 16, 81
  %557 = icmp sgt i32 %491, 0
  %558 = sub i32 101, 12
  %559 = and i1 %555, %557
  %560 = sub i32 43, 111
  %561 = icmp sgt i32 %484, 0
  %562 = sdiv i32 47, 48
  %563 = select i1 %559, i1 %561, i1 false
  %564 = sdiv i32 100, 87
  %565 = icmp slt i32 %484, %6
  %566 = mul i32 118, 38
  %567 = select i1 %563, i1 %565, i1 false
  %568 = sdiv i32 47, 9
  %569 = add i32 70, 3
  br i1 %534, label %570, label %463

570:                                              ; preds = %554, %535
  %571 = phi i1 [ %555, %554 ], [ %536, %535 ]
  %572 = phi i32 [ %556, %554 ], [ %537, %535 ]
  %573 = phi i1 [ %557, %554 ], [ %538, %535 ]
  %574 = phi i32 [ %558, %554 ], [ %539, %535 ]
  %575 = phi i1 [ %559, %554 ], [ %543, %535 ]
  %576 = phi i32 [ %560, %554 ], [ %544, %535 ]
  %577 = phi i1 [ %561, %554 ], [ %545, %535 ]
  %578 = phi i32 [ %562, %554 ], [ %546, %535 ]
  %579 = phi i1 [ %563, %554 ], [ %547, %535 ]
  %580 = phi i32 [ %564, %554 ], [ %548, %535 ]
  %581 = phi i1 [ %565, %554 ], [ %549, %535 ]
  %582 = phi i32 [ %566, %554 ], [ %550, %535 ]
  %583 = phi i1 [ %567, %554 ], [ %551, %535 ]
  %584 = phi i32 [ %568, %554 ], [ %552, %535 ]
  %585 = phi i32 [ %569, %554 ], [ %553, %535 ]
  br label %586

586:                                              ; preds = %570, %507
  %587 = phi i1 [ %571, %570 ], [ %508, %507 ]
  %588 = phi i1 [ %573, %570 ], [ %509, %507 ]
  %589 = phi i1 [ %575, %570 ], [ %514, %507 ]
  %590 = phi i1 [ %577, %570 ], [ %515, %507 ]
  %591 = phi i1 [ %579, %570 ], [ %516, %507 ]
  %592 = phi i1 [ %581, %570 ], [ %517, %507 ]
  %593 = phi i1 [ %583, %570 ], [ %518, %507 ]
  br i1 %593, label %594, label %731

594:                                              ; preds = %631, %586
  %595 = mul nsw i32 %491, %6
  %596 = add nsw i32 %595, %484
  %597 = sext i32 %596 to i64
  %598 = srem i32 %6, 2
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %604

600:                                              ; preds = %594
  %601 = getelementptr inbounds float, float* %3, i64 %597
  %602 = load float, float* %601, align 4, !tbaa !13
  %603 = fcmp ogt float %476, %602
  br label %655

604:                                              ; preds = %594
  %605 = sdiv i32 58, 117
  %606 = getelementptr inbounds float, float* %3, i64 %597
  %607 = srem i64 %9, 2
  %608 = icmp eq i64 %607, 0
  %609 = mul i32 %73, %73
  %610 = add i32 %609, %73
  %611 = mul i32 %610, 3
  %612 = srem i32 %611, 2
  %613 = icmp eq i32 %612, 0
  %614 = mul i32 %73, %73
  %615 = add i32 %614, %73
  %616 = srem i32 %615, 2
  %617 = icmp eq i32 %616, 0
  %618 = and i1 %613, %617
  br i1 %618, label %619, label %631

619:                                              ; preds = %604
  %620 = add i32 116, 89
  %621 = load float, float* %606, align 4, !tbaa !13
  %622 = add i32 93, 108
  %623 = fcmp ogt float %476, %621
  %624 = mul i32 20, 77
  %625 = sdiv i32 95, 97
  %626 = sub i32 32, 28
  %627 = mul i32 121, 122
  %628 = sdiv i32 51, 114
  %629 = mul i32 116, 55
  %630 = mul i32 48, 107
  br label %643

631:                                              ; preds = %604
  %632 = sub i32 116, -89
  %633 = load float, float* %606, align 4, !tbaa !13
  %634 = add i32 -311856339, 311856540
  %635 = fcmp ogt float %476, %633
  %636 = mul i32 20, 77
  %637 = sdiv i32 95, 97
  %638 = sub i32 -1499691567, -1499691571
  %639 = mul i32 121, 122
  %640 = sdiv i32 51, 114
  %641 = mul i32 116, 55
  %642 = mul i32 48, 107
  br i1 %618, label %643, label %594

643:                                              ; preds = %631, %619
  %644 = phi i32 [ %632, %631 ], [ %620, %619 ]
  %645 = phi float [ %633, %631 ], [ %621, %619 ]
  %646 = phi i32 [ %634, %631 ], [ %622, %619 ]
  %647 = phi i1 [ %635, %631 ], [ %623, %619 ]
  %648 = phi i32 [ %636, %631 ], [ %624, %619 ]
  %649 = phi i32 [ %637, %631 ], [ %625, %619 ]
  %650 = phi i32 [ %638, %631 ], [ %626, %619 ]
  %651 = phi i32 [ %639, %631 ], [ %627, %619 ]
  %652 = phi i32 [ %640, %631 ], [ %628, %619 ]
  %653 = phi i32 [ %641, %631 ], [ %629, %619 ]
  %654 = phi i32 [ %642, %631 ], [ %630, %619 ]
  br label %655

655:                                              ; preds = %643, %600
  %656 = phi float* [ %606, %643 ], [ %601, %600 ]
  %657 = phi float [ %645, %643 ], [ %602, %600 ]
  %658 = phi i1 [ %647, %643 ], [ %603, %600 ]
  br i1 %658, label %659, label %731

659:                                              ; preds = %688, %655
  store float %476, float* %656, align 4, !tbaa !13
  %660 = srem i32 %6, 2
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %669

662:                                              ; preds = %659
  %663 = icmp sgt i32 %504, 0
  %664 = select i1 %663, i32 %504, i32 0
  %665 = zext i32 %664 to i64
  %666 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %665
  %667 = load i8, i8* %666, align 1, !tbaa !10
  %668 = getelementptr inbounds i8, i8* %4, i64 %597
  store i8 %667, i8* %668, align 1, !tbaa !10
  br label %724

669:                                              ; preds = %659
  %670 = mul i32 38, 61
  %671 = icmp sgt i32 %504, 0
  %672 = add i32 46, 91
  %673 = select i1 %671, i32 %504, i32 0
  %674 = sub i32 68, 69
  %675 = srem i32 %491, 2
  %676 = icmp eq i32 %675, 0
  %677 = mul i32 %484, 2
  %678 = mul i32 %484, 2
  %679 = add i32 2, %678
  %680 = mul i32 %677, %679
  %681 = srem i32 %680, 4
  %682 = icmp eq i32 %681, 0
  %683 = mul i32 %484, %484
  %684 = add i32 %683, %484
  %685 = srem i32 %684, 2
  %686 = icmp eq i32 %685, 0
  %687 = and i1 %682, %686
  br i1 %687, label %700, label %688

688:                                              ; preds = %669
  %689 = zext i32 %673 to i64
  %690 = sub i32 52, 91
  %691 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %689
  %692 = add i32 31, 27
  %693 = load i8, i8* %691, align 1, !tbaa !10
  %694 = mul i32 97, 14
  %695 = getelementptr inbounds i8, i8* %4, i64 %597
  %696 = mul i32 105, 33
  store i8 %693, i8* %695, align 1, !tbaa !10
  %697 = sdiv i32 96, 31
  %698 = sdiv i32 111, 119
  %699 = add i32 98, 29
  br i1 %687, label %712, label %659

700:                                              ; preds = %669
  %701 = zext i32 %673 to i64
  %702 = add i32 52, -91
  %703 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %701
  %704 = sub i32 0, -58
  %705 = load i8, i8* %703, align 1, !tbaa !10
  %706 = mul i32 97, 14
  %707 = getelementptr inbounds i8, i8* %4, i64 %597
  %708 = mul i32 105, 33
  store i8 %705, i8* %707, align 1, !tbaa !10
  %709 = sdiv i32 96, 31
  %710 = sdiv i32 111, 119
  %711 = sub i32 98, -29
  br label %712

712:                                              ; preds = %688, %700
  %713 = phi i64 [ %701, %700 ], [ %689, %688 ]
  %714 = phi i32 [ %702, %700 ], [ %690, %688 ]
  %715 = phi i8* [ %703, %700 ], [ %691, %688 ]
  %716 = phi i32 [ %704, %700 ], [ %692, %688 ]
  %717 = phi i8 [ %705, %700 ], [ %693, %688 ]
  %718 = phi i32 [ %706, %700 ], [ %694, %688 ]
  %719 = phi i8* [ %707, %700 ], [ %695, %688 ]
  %720 = phi i32 [ %708, %700 ], [ %696, %688 ]
  %721 = phi i32 [ %709, %700 ], [ %697, %688 ]
  %722 = phi i32 [ %710, %700 ], [ %698, %688 ]
  %723 = phi i32 [ %711, %700 ], [ %699, %688 ]
  br label %724

724:                                              ; preds = %712, %662
  %725 = phi i1 [ %671, %712 ], [ %663, %662 ]
  %726 = phi i32 [ %673, %712 ], [ %664, %662 ]
  %727 = phi i64 [ %713, %712 ], [ %665, %662 ]
  %728 = phi i8* [ %715, %712 ], [ %666, %662 ]
  %729 = phi i8 [ %717, %712 ], [ %667, %662 ]
  %730 = phi i8* [ %719, %712 ], [ %668, %662 ]
  br label %731

731:                                              ; preds = %760, %724, %655, %586
  %732 = fadd double %142, 7.000000e-02
  %733 = fptrunc double %732 to float
  %734 = srem i32 %144, 2
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %739

736:                                              ; preds = %731
  %737 = fpext float %733 to double
  %738 = fcmp olt double %737, 6.280000e+00
  br label %762

739:                                              ; preds = %731
  %740 = sdiv i32 73, 26
  %741 = fpext float %733 to double
  %742 = sub i32 120, 60
  %743 = fcmp olt double %741, 6.280000e+00
  %744 = sub i32 94, 126
  %745 = sdiv i32 27, 111
  %746 = mul i32 83, 40
  %747 = sub i32 93, 64
  %748 = add i32 98, 111
  %749 = sdiv i32 103, 59
  %750 = srem i32 %2, 2
  %751 = icmp eq i32 %750, 0
  %752 = and i32 %2, 1
  %753 = icmp eq i32 %752, 1
  %754 = mul i32 %2, %2
  %755 = add i32 %754, %2
  %756 = srem i32 %755, 2
  %757 = icmp eq i32 %756, 0
  %758 = or i1 %753, %757
  br i1 %758, label %759, label %760

759:                                              ; preds = %739
  br label %761

760:                                              ; preds = %739
  br i1 %758, label %761, label %731

761:                                              ; preds = %760, %759
  br label %762

762:                                              ; preds = %761, %736
  %763 = phi double [ %741, %761 ], [ %737, %736 ]
  %764 = phi i1 [ %743, %761 ], [ %738, %736 ]
  br i1 %764, label %141, label %79, !llvm.loop !18

765:                                              ; preds = %795, %1200
  %766 = srem i32 %144, 2
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %769

768:                                              ; preds = %765
  br label %809

769:                                              ; preds = %765
  %770 = sub i32 109, 112
  %771 = add i32 61, 45
  %772 = add i32 95, 70
  %773 = mul i32 91, 8
  %774 = srem i32 %5, 2
  %775 = icmp eq i32 %774, 0
  %776 = mul i32 %145, 2
  %777 = mul i32 %145, 2
  %778 = add i32 2, %777
  %779 = mul i32 %776, %778
  %780 = srem i32 %779, 4
  %781 = icmp eq i32 %780, 0
  %782 = mul i32 %145, %145
  %783 = mul i32 %782, %145
  %784 = add i32 %783, %145
  %785 = srem i32 %784, 2
  %786 = icmp eq i32 %785, 0
  %787 = and i1 %781, %786
  br i1 %787, label %788, label %795

788:                                              ; preds = %769
  %789 = add i32 688197176, -688197134
  %790 = mul i32 91, 36
  %791 = sub i32 0, -38
  %792 = sdiv i32 80, 35
  %793 = add i32 90, 94
  %794 = sub i32 1350495880, 1350495889
  br label %802

795:                                              ; preds = %769
  %796 = sub i32 57, 15
  %797 = mul i32 91, 36
  %798 = add i32 20, 18
  %799 = sdiv i32 80, 35
  %800 = add i32 94, 90
  %801 = sub i32 88, 97
  br i1 %787, label %802, label %765

802:                                              ; preds = %795, %788
  %803 = phi i32 [ %796, %795 ], [ %789, %788 ]
  %804 = phi i32 [ %797, %795 ], [ %790, %788 ]
  %805 = phi i32 [ %798, %795 ], [ %791, %788 ]
  %806 = phi i32 [ %799, %795 ], [ %792, %788 ]
  %807 = phi i32 [ %800, %795 ], [ %793, %788 ]
  %808 = phi i32 [ %801, %795 ], [ %794, %788 ]
  br label %809

809:                                              ; preds = %802, %768
  ret void

810:                                              ; preds = %903, %1200, %136
  %811 = phi double [ 0.000000e+00, %136 ], [ %1201, %1200 ], [ 0.000000e+00, %903 ]
  %812 = phi i32 [ 0, %136 ], [ %814, %1200 ], [ 0, %903 ]
  %813 = phi float [ 0.000000e+00, %136 ], [ %1160, %1200 ], [ 0.000000e+00, %903 ]
  %814 = add nuw nsw i32 %812, 1
  %815 = sitofp i32 %812 to float
  %816 = fadd float %80, %815
  %817 = call fastcc float @_ZL3cosf(float %813) #9
  %818 = fcmp une float %816, 0.000000e+00
  %819 = fmul float %816, 2.000000e+00
  %820 = srem i32 %484, 2
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %822, label %941

822:                                              ; preds = %810
  %823 = sdiv i32 54, 35
  %824 = fmul float %817, 2.000000e+00
  %825 = add i32 103, 51
  %826 = select i1 %818, float %819, float %816
  %827 = sub i32 13, 18
  %828 = select i1 %818, float %817, float %824
  %829 = mul i32 21, 100
  %830 = call fastcc float @_ZL3sinf(float %813) #9
  %831 = sdiv i32 43, 60
  %832 = fmul float %830, 2.000000e+00
  %833 = add i32 21, 63
  %834 = select i1 %137, float %830, float %832
  %835 = fadd float %828, %70
  %836 = fmul float %826, %835
  %837 = fmul float %140, %836
  %838 = fmul float %139, %834
  %839 = fsub float %837, %838
  %840 = fcmp une float %835, 0.000000e+00
  %841 = fmul float %839, 2.000000e+00
  %842 = fmul float %835, 2.000000e+00
  %843 = select i1 %840, float %835, float %842
  %844 = select i1 %840, float %841, float %839
  %845 = fmul float %826, %843
  %846 = fmul float %139, %845
  %847 = fmul float %140, %834
  %848 = fadd float %847, %846
  %849 = fadd float %848, 5.000000e+00
  %850 = fdiv float 1.000000e+00, %849
  %851 = fmul float %850, 3.000000e+01
  %852 = fmul float %76, %843
  %853 = fmul float %77, %852
  %854 = fmul float %78, %844
  %855 = fadd float %853, %854
  %856 = fmul float %855, %851
  %857 = fadd float %856, %72
  %858 = fptosi float %857 to i32
  %859 = fmul float %850, 1.500000e+01
  %860 = fmul float %852, %78
  %861 = fmul float %77, %844
  %862 = fsub float %860, %861
  %863 = fmul float %862, %859
  %864 = fadd float %863, %75
  %865 = fptosi float %864 to i32
  %866 = fmul float %826, %828
  %867 = srem i32 %505, 2
  %868 = icmp eq i32 %867, 0
  %869 = mul i32 %734, 2
  %870 = mul i32 %734, 2
  %871 = add i32 2, %870
  %872 = mul i32 %869, %871
  %873 = srem i32 %872, 4
  %874 = icmp eq i32 %873, 0
  %875 = mul i32 %734, %734
  %876 = mul i32 %875, %734
  %877 = add i32 %876, %734
  %878 = srem i32 %877, 2
  %879 = icmp eq i32 %878, 0
  %880 = and i1 %874, %879
  br i1 %880, label %881, label %903

881:                                              ; preds = %822
  %882 = fmul float %866, %140
  %883 = fsub float %838, %882
  %884 = fmul float %77, %883
  %885 = fmul float %866, %139
  %886 = fsub float %884, %885
  %887 = fsub float %886, %847
  %888 = fmul float %828, %76
  %889 = fmul float %888, %78
  %890 = fsub float %887, %889
  %891 = fmul float %890, 8.000000e+00
  %892 = fptosi float %891 to i32
  %893 = icmp slt i32 %865, %5
  %894 = icmp sgt i32 %865, 0
  %895 = xor i1 %893, true
  %896 = or i1 %895, %894
  %897 = xor i1 %893, true
  %898 = sub i1 %896, %897
  %899 = icmp sgt i32 %858, 0
  %900 = select i1 %898, i1 %899, i1 false
  %901 = icmp slt i32 %858, %6
  %902 = select i1 %900, i1 %901, i1 false
  br label %922

903:                                              ; preds = %822
  %904 = fmul float %866, %140
  %905 = fsub float %838, %904
  %906 = fmul float %77, %905
  %907 = fmul float %866, %139
  %908 = fsub float %906, %907
  %909 = fsub float %908, %847
  %910 = fmul float %828, %76
  %911 = fmul float %910, %78
  %912 = fsub float %909, %911
  %913 = fmul float %912, 8.000000e+00
  %914 = fptosi float %913 to i32
  %915 = icmp slt i32 %865, %5
  %916 = icmp sgt i32 %865, 0
  %917 = and i1 %915, %916
  %918 = icmp sgt i32 %858, 0
  %919 = select i1 %917, i1 %918, i1 false
  %920 = icmp slt i32 %858, %6
  %921 = select i1 %919, i1 %920, i1 false
  br i1 %880, label %922, label %810

922:                                              ; preds = %903, %881
  %923 = phi float [ %904, %903 ], [ %882, %881 ]
  %924 = phi float [ %905, %903 ], [ %883, %881 ]
  %925 = phi float [ %906, %903 ], [ %884, %881 ]
  %926 = phi float [ %907, %903 ], [ %885, %881 ]
  %927 = phi float [ %908, %903 ], [ %886, %881 ]
  %928 = phi float [ %909, %903 ], [ %887, %881 ]
  %929 = phi float [ %910, %903 ], [ %888, %881 ]
  %930 = phi float [ %911, %903 ], [ %889, %881 ]
  %931 = phi float [ %912, %903 ], [ %890, %881 ]
  %932 = phi float [ %913, %903 ], [ %891, %881 ]
  %933 = phi i32 [ %914, %903 ], [ %892, %881 ]
  %934 = phi i1 [ %915, %903 ], [ %893, %881 ]
  %935 = phi i1 [ %916, %903 ], [ %894, %881 ]
  %936 = phi i1 [ %917, %903 ], [ %898, %881 ]
  %937 = phi i1 [ %918, %903 ], [ %899, %881 ]
  %938 = phi i1 [ %919, %903 ], [ %900, %881 ]
  %939 = phi i1 [ %920, %903 ], [ %901, %881 ]
  %940 = phi i1 [ %921, %903 ], [ %902, %881 ]
  br label %1000

941:                                              ; preds = %810
  %942 = fmul float %817, 2.000000e+00
  %943 = select i1 %818, float %819, float %816
  %944 = select i1 %818, float %817, float %942
  %945 = call fastcc float @_ZL3sinf(float %813) #9
  %946 = fmul float %945, 2.000000e+00
  %947 = select i1 %137, float %945, float %946
  %948 = fadd float %944, %70
  %949 = fmul float %943, %948
  %950 = fmul float %140, %949
  %951 = fmul float %139, %947
  %952 = fsub float %950, %951
  %953 = fcmp une float %948, 0.000000e+00
  %954 = fmul float %952, 2.000000e+00
  %955 = fmul float %948, 2.000000e+00
  %956 = select i1 %953, float %948, float %955
  %957 = select i1 %953, float %954, float %952
  %958 = fmul float %943, %956
  %959 = fmul float %139, %958
  %960 = fmul float %140, %947
  %961 = fadd float %960, %959
  %962 = fadd float %961, 5.000000e+00
  %963 = fdiv float 1.000000e+00, %962
  %964 = fmul float %963, 3.000000e+01
  %965 = fmul float %76, %956
  %966 = fmul float %77, %965
  %967 = fmul float %78, %957
  %968 = fadd float %966, %967
  %969 = fmul float %968, %964
  %970 = fadd float %969, %72
  %971 = fptosi float %970 to i32
  %972 = fmul float %963, 1.500000e+01
  %973 = fmul float %965, %78
  %974 = fmul float %77, %957
  %975 = fsub float %973, %974
  %976 = fmul float %975, %972
  %977 = fadd float %976, %75
  %978 = fptosi float %977 to i32
  %979 = fmul float %943, %944
  %980 = fmul float %979, %140
  %981 = fsub float %951, %980
  %982 = fmul float %77, %981
  %983 = fmul float %979, %139
  %984 = fsub float %982, %983
  %985 = fsub float %984, %960
  %986 = fmul float %944, %76
  %987 = fmul float %986, %78
  %988 = fsub float %985, %987
  %989 = fmul float %988, 8.000000e+00
  %990 = fptosi float %989 to i32
  %991 = icmp slt i32 %978, %5
  %992 = icmp sgt i32 %978, 0
  %993 = xor i1 %992, true
  %994 = xor i1 %991, %993
  %995 = and i1 %994, %991
  %996 = icmp sgt i32 %971, 0
  %997 = select i1 %995, i1 %996, i1 false
  %998 = icmp slt i32 %971, %6
  %999 = select i1 %997, i1 %998, i1 false
  br label %1000

1000:                                             ; preds = %941, %922
  %1001 = phi float [ %942, %941 ], [ %824, %922 ]
  %1002 = phi float [ %943, %941 ], [ %826, %922 ]
  %1003 = phi float [ %944, %941 ], [ %828, %922 ]
  %1004 = phi float [ %945, %941 ], [ %830, %922 ]
  %1005 = phi float [ %946, %941 ], [ %832, %922 ]
  %1006 = phi float [ %947, %941 ], [ %834, %922 ]
  %1007 = phi float [ %948, %941 ], [ %835, %922 ]
  %1008 = phi float [ %949, %941 ], [ %836, %922 ]
  %1009 = phi float [ %950, %941 ], [ %837, %922 ]
  %1010 = phi float [ %951, %941 ], [ %838, %922 ]
  %1011 = phi float [ %952, %941 ], [ %839, %922 ]
  %1012 = phi i1 [ %953, %941 ], [ %840, %922 ]
  %1013 = phi float [ %954, %941 ], [ %841, %922 ]
  %1014 = phi float [ %955, %941 ], [ %842, %922 ]
  %1015 = phi float [ %956, %941 ], [ %843, %922 ]
  %1016 = phi float [ %957, %941 ], [ %844, %922 ]
  %1017 = phi float [ %958, %941 ], [ %845, %922 ]
  %1018 = phi float [ %959, %941 ], [ %846, %922 ]
  %1019 = phi float [ %960, %941 ], [ %847, %922 ]
  %1020 = phi float [ %961, %941 ], [ %848, %922 ]
  %1021 = phi float [ %962, %941 ], [ %849, %922 ]
  %1022 = phi float [ %963, %941 ], [ %850, %922 ]
  %1023 = phi float [ %964, %941 ], [ %851, %922 ]
  %1024 = phi float [ %965, %941 ], [ %852, %922 ]
  %1025 = phi float [ %966, %941 ], [ %853, %922 ]
  %1026 = phi float [ %967, %941 ], [ %854, %922 ]
  %1027 = phi float [ %968, %941 ], [ %855, %922 ]
  %1028 = phi float [ %969, %941 ], [ %856, %922 ]
  %1029 = phi float [ %970, %941 ], [ %857, %922 ]
  %1030 = phi i32 [ %971, %941 ], [ %858, %922 ]
  %1031 = phi float [ %972, %941 ], [ %859, %922 ]
  %1032 = phi float [ %973, %941 ], [ %860, %922 ]
  %1033 = phi float [ %974, %941 ], [ %861, %922 ]
  %1034 = phi float [ %975, %941 ], [ %862, %922 ]
  %1035 = phi float [ %976, %941 ], [ %863, %922 ]
  %1036 = phi float [ %977, %941 ], [ %864, %922 ]
  %1037 = phi i32 [ %978, %941 ], [ %865, %922 ]
  %1038 = phi float [ %979, %941 ], [ %866, %922 ]
  %1039 = phi float [ %980, %941 ], [ %923, %922 ]
  %1040 = phi float [ %981, %941 ], [ %924, %922 ]
  %1041 = phi float [ %982, %941 ], [ %925, %922 ]
  %1042 = phi float [ %983, %941 ], [ %926, %922 ]
  %1043 = phi float [ %984, %941 ], [ %927, %922 ]
  %1044 = phi float [ %985, %941 ], [ %928, %922 ]
  %1045 = phi float [ %986, %941 ], [ %929, %922 ]
  %1046 = phi float [ %987, %941 ], [ %930, %922 ]
  %1047 = phi float [ %988, %941 ], [ %931, %922 ]
  %1048 = phi float [ %989, %941 ], [ %932, %922 ]
  %1049 = phi i32 [ %990, %941 ], [ %933, %922 ]
  %1050 = phi i1 [ %991, %941 ], [ %934, %922 ]
  %1051 = phi i1 [ %992, %941 ], [ %935, %922 ]
  %1052 = phi i1 [ %995, %941 ], [ %936, %922 ]
  %1053 = phi i1 [ %996, %941 ], [ %937, %922 ]
  %1054 = phi i1 [ %997, %941 ], [ %938, %922 ]
  %1055 = phi i1 [ %998, %941 ], [ %939, %922 ]
  %1056 = phi i1 [ %999, %941 ], [ %940, %922 ]
  br i1 %1056, label %1057, label %1158

1057:                                             ; preds = %1085, %1000
  %1058 = mul nsw i32 %1037, %6
  %1059 = add nsw i32 %1058, %1030
  %1060 = srem i64 %69, 2
  %1061 = icmp eq i64 %1060, 0
  br i1 %1061, label %1062, label %1094

1062:                                             ; preds = %1057
  %1063 = mul i32 99, 31
  %1064 = sext i32 %1059 to i64
  %1065 = add i32 88, 82
  %1066 = getelementptr inbounds float, float* %3, i64 %1064
  %1067 = sdiv i32 66, 82
  %1068 = load float, float* %1066, align 4, !tbaa !13
  %1069 = mul i32 125, 60
  %1070 = fcmp ogt float %1022, %1068
  %1071 = mul i32 8, 53
  %1072 = srem i32 %814, 2
  %1073 = icmp eq i32 %1072, 0
  %1074 = mul i32 %5, 2
  %1075 = mul i32 %5, 2
  %1076 = add i32 2, %1075
  %1077 = mul i32 %1074, %1076
  %1078 = srem i32 %1077, 4
  %1079 = icmp eq i32 %1078, 0
  %1080 = mul i32 %5, %5
  %1081 = add i32 %1080, %5
  %1082 = srem i32 %1081, 2
  %1083 = icmp eq i32 %1082, 0
  %1084 = and i1 %1079, %1083
  br i1 %1084, label %1088, label %1085

1085:                                             ; preds = %1062
  %1086 = add i32 54, 42
  %1087 = sub i32 111, 67
  br i1 %1084, label %1091, label %1057

1088:                                             ; preds = %1062
  %1089 = add i32 28, 68
  %1090 = add i32 711241544, -711241500
  br label %1091

1091:                                             ; preds = %1085, %1088
  %1092 = phi i32 [ %1089, %1088 ], [ %1086, %1085 ]
  %1093 = phi i32 [ %1090, %1088 ], [ %1087, %1085 ]
  br label %1099

1094:                                             ; preds = %1057
  %1095 = sext i32 %1059 to i64
  %1096 = getelementptr inbounds float, float* %3, i64 %1095
  %1097 = load float, float* %1096, align 4, !tbaa !13
  %1098 = fcmp ogt float %1022, %1097
  br label %1099

1099:                                             ; preds = %1094, %1091
  %1100 = phi i64 [ %1095, %1094 ], [ %1064, %1091 ]
  %1101 = phi float* [ %1096, %1094 ], [ %1066, %1091 ]
  %1102 = phi float [ %1097, %1094 ], [ %1068, %1091 ]
  %1103 = phi i1 [ %1098, %1094 ], [ %1070, %1091 ]
  br i1 %1103, label %1104, label %1158

1104:                                             ; preds = %1124, %1099
  store float %1022, float* %1101, align 4, !tbaa !13
  %1105 = icmp sgt i32 %1049, 0
  %1106 = select i1 %1105, i32 %1049, i32 0
  %1107 = zext i32 %1106 to i64
  %1108 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %1107
  %1109 = load i8, i8* %1108, align 1, !tbaa !10
  %1110 = srem i32 %734, 2
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1112, label %1154

1112:                                             ; preds = %1104
  %1113 = sdiv i32 123, 13
  %1114 = srem i32 %504, 2
  %1115 = icmp eq i32 %1114, 0
  %1116 = and i32 %812, 1
  %1117 = icmp eq i32 %1116, 0
  %1118 = mul i32 %812, %812
  %1119 = add i32 %1118, %812
  %1120 = mul i32 %1119, 3
  %1121 = srem i32 %1120, 2
  %1122 = icmp eq i32 %1121, 0
  %1123 = or i1 %1117, %1122
  br i1 %1123, label %1134, label %1124

1124:                                             ; preds = %1112
  %1125 = getelementptr inbounds i8, i8* %4, i64 %1100
  %1126 = add i32 0, 124
  store i8 %1109, i8* %1125, align 1, !tbaa !10
  %1127 = sub i32 1297682942, 1297682847
  %1128 = sub i32 59, -35
  %1129 = mul i32 62, 29
  %1130 = sdiv i32 108, 71
  %1131 = sdiv i32 20, 42
  %1132 = sdiv i32 27, 79
  %1133 = mul i32 75, 53
  br i1 %1123, label %1144, label %1104

1134:                                             ; preds = %1112
  %1135 = getelementptr inbounds i8, i8* %4, i64 %1100
  %1136 = add i32 44, 80
  store i8 %1109, i8* %1135, align 1, !tbaa !10
  %1137 = add i32 15, 80
  %1138 = add i32 59, 35
  %1139 = mul i32 62, 29
  %1140 = sdiv i32 108, 71
  %1141 = sdiv i32 20, 42
  %1142 = sdiv i32 27, 79
  %1143 = mul i32 75, 53
  br label %1144

1144:                                             ; preds = %1124, %1134
  %1145 = phi i8* [ %1135, %1134 ], [ %1125, %1124 ]
  %1146 = phi i32 [ %1136, %1134 ], [ %1126, %1124 ]
  %1147 = phi i32 [ %1137, %1134 ], [ %1127, %1124 ]
  %1148 = phi i32 [ %1138, %1134 ], [ %1128, %1124 ]
  %1149 = phi i32 [ %1139, %1134 ], [ %1129, %1124 ]
  %1150 = phi i32 [ %1140, %1134 ], [ %1130, %1124 ]
  %1151 = phi i32 [ %1141, %1134 ], [ %1131, %1124 ]
  %1152 = phi i32 [ %1142, %1134 ], [ %1132, %1124 ]
  %1153 = phi i32 [ %1143, %1134 ], [ %1133, %1124 ]
  br label %1156

1154:                                             ; preds = %1104
  %1155 = getelementptr inbounds i8, i8* %4, i64 %1100
  store i8 %1109, i8* %1155, align 1, !tbaa !10
  br label %1156

1156:                                             ; preds = %1154, %1144
  %1157 = phi i8* [ %1155, %1154 ], [ %1145, %1144 ]
  br label %1158

1158:                                             ; preds = %1179, %1156, %1099, %1000
  %1159 = fadd double %811, 7.000000e-02
  %1160 = fptrunc double %1159 to float
  %1161 = srem i64 %9, 2
  %1162 = icmp eq i64 %1161, 0
  br i1 %1162, label %1163, label %1197

1163:                                             ; preds = %1158
  %1164 = add i32 20, 19
  %1165 = fpext float %1160 to double
  %1166 = sub i32 64, 84
  %1167 = icmp eq i32 %814, 90
  %1168 = sdiv i32 93, 3
  %1169 = sdiv i32 88, 14
  %1170 = srem i32 %814, 2
  %1171 = icmp eq i32 %1170, 0
  %1172 = and i32 %10, 1
  %1173 = icmp eq i32 %1172, 1
  %1174 = mul i32 %10, %10
  %1175 = add i32 %1174, %10
  %1176 = srem i32 %1175, 2
  %1177 = icmp eq i32 %1176, 0
  %1178 = or i1 %1173, %1177
  br i1 %1178, label %1185, label %1179

1179:                                             ; preds = %1163
  %1180 = sdiv i32 98, 72
  %1181 = sub i32 67, -106
  %1182 = mul i32 20, 8
  %1183 = sdiv i32 16, 83
  %1184 = sdiv i32 114, 97
  br i1 %1178, label %1191, label %1158

1185:                                             ; preds = %1163
  %1186 = sdiv i32 98, 72
  %1187 = add i32 67, 106
  %1188 = mul i32 20, 8
  %1189 = sdiv i32 16, 83
  %1190 = sdiv i32 114, 97
  br label %1191

1191:                                             ; preds = %1179, %1185
  %1192 = phi i32 [ %1186, %1185 ], [ %1180, %1179 ]
  %1193 = phi i32 [ %1187, %1185 ], [ %1181, %1179 ]
  %1194 = phi i32 [ %1188, %1185 ], [ %1182, %1179 ]
  %1195 = phi i32 [ %1189, %1185 ], [ %1183, %1179 ]
  %1196 = phi i32 [ %1190, %1185 ], [ %1184, %1179 ]
  br label %1200

1197:                                             ; preds = %1158
  %1198 = fpext float %1160 to double
  %1199 = icmp eq i32 %814, 90
  br label %1200

1200:                                             ; preds = %1197, %1191
  %1201 = phi double [ %1198, %1197 ], [ %1165, %1191 ]
  %1202 = phi i1 [ %1199, %1197 ], [ %1167, %1191 ]
  br i1 %1202, label %765, label %810, !llvm.loop !19
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

11:                                               ; preds = %42, %57, %0
  %12 = phi i32 [ 5, %0 ], [ %58, %57 ], [ 0, %42 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  %15 = srem i32 %10, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = mul i32 12, 109
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  %19 = mul i32 55, 80
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %20 = mul i32 125, 76
  %21 = add i32 %12, -1434704961
  %22 = add i32 116, 13
  %23 = add i32 %21, 1
  %24 = srem i32 %15, 2
  %25 = icmp eq i32 %24, 0
  %26 = mul i32 %15, 2
  %27 = mul i32 %15, 2
  %28 = add i32 2, %27
  %29 = mul i32 %26, %28
  %30 = srem i32 %29, 4
  %31 = icmp eq i32 %30, 0
  %32 = mul i32 %15, %15
  %33 = add i32 %32, %15
  %34 = srem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = or i1 %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %17
  %38 = sub i32 23, 110
  %39 = sub i32 %23, -1434704961
  %40 = sdiv i32 29, 122
  %41 = icmp eq i32 %39, 10
  br label %49

42:                                               ; preds = %17
  %43 = sub i32 -1088851260, -1088851173
  %44 = add i32 %23, 2146326047
  %45 = sub i32 %44, -1434704961
  %46 = sub i32 %45, 2146326047
  %47 = sdiv i32 29, 122
  %48 = icmp eq i32 %46, 10
  br i1 %36, label %49, label %11

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %43, %42 ], [ %38, %37 ]
  %51 = phi i32 [ %46, %42 ], [ %39, %37 ]
  %52 = phi i32 [ %47, %42 ], [ %40, %37 ]
  %53 = phi i1 [ %48, %42 ], [ %41, %37 ]
  br label %57

54:                                               ; preds = %11
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %55 = add nuw nsw i32 %12, 1
  %56 = icmp eq i32 %55, 10
  br label %57

57:                                               ; preds = %54, %49
  %58 = phi i32 [ %55, %54 ], [ %51, %49 ]
  %59 = phi i1 [ %56, %54 ], [ %53, %49 ]
  br i1 %59, label %104, label %11, !llvm.loop !20

60:                                               ; preds = %89, %175
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %61 = srem i32 %106, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %103

64:                                               ; preds = %60
  %65 = sub i32 28, 76
  %66 = sdiv i32 87, 89
  %67 = add i32 53, 24
  %68 = sub i32 105, 64
  %69 = srem i32 %58, 2
  %70 = icmp eq i32 %69, 0
  %71 = mul i64 %181, 2
  %72 = mul i64 %181, 2
  %73 = add i64 2, %72
  %74 = mul i64 %71, %73
  %75 = srem i64 %74, 4
  %76 = icmp eq i64 %75, 0
  %77 = mul i64 %181, %181
  %78 = add i64 %77, %181
  %79 = srem i64 %78, 2
  %80 = icmp eq i64 %79, 0
  %81 = or i1 %76, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %64
  %83 = mul i32 110, 24
  %84 = sub i32 89, -47
  %85 = mul i32 50, 51
  %86 = add i32 -89469461, 89469453
  %87 = sdiv i32 45, 12
  %88 = mul i32 43, 30
  br label %96

89:                                               ; preds = %64
  %90 = mul i32 110, 24
  %91 = add i32 89, 47
  %92 = mul i32 50, 51
  %93 = sub i32 96, 104
  %94 = sdiv i32 45, 12
  %95 = mul i32 43, 30
  br i1 %81, label %96, label %60

96:                                               ; preds = %89, %82
  %97 = phi i32 [ %90, %89 ], [ %83, %82 ]
  %98 = phi i32 [ %91, %89 ], [ %84, %82 ]
  %99 = phi i32 [ %92, %89 ], [ %85, %82 ]
  %100 = phi i32 [ %93, %89 ], [ %86, %82 ]
  %101 = phi i32 [ %94, %89 ], [ %87, %82 ]
  %102 = phi i32 [ %95, %89 ], [ %88, %82 ]
  br label %103

103:                                              ; preds = %96, %63
  ret i32 %180

104:                                              ; preds = %142, %175, %57
  %105 = phi i64 [ %181, %175 ], [ 0, %57 ], [ 0, %142 ]
  %106 = phi i32 [ %180, %175 ], [ 0, %57 ], [ 0, %142 ]
  %107 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %105
  %108 = load i8, i8* %107, align 1, !tbaa !10
  %109 = sext i8 %108 to i32
  %110 = add nsw i32 %106, %109
  %111 = srem i32 %12, 2
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %165

113:                                              ; preds = %104
  %114 = add i32 126, 26
  %115 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %105
  %116 = sub i32 77, 82
  %117 = load float, float* %115, align 4, !tbaa !13
  %118 = srem i32 %109, 2
  %119 = icmp eq i32 %118, 0
  %120 = mul i64 %105, 2
  %121 = mul i64 %105, 2
  %122 = add i64 2, %121
  %123 = mul i64 %120, %122
  %124 = srem i64 %123, 4
  %125 = icmp eq i64 %124, 0
  %126 = mul i64 %105, %105
  %127 = mul i64 %126, %105
  %128 = add i64 %127, %105
  %129 = srem i64 %128, 2
  %130 = icmp eq i64 %129, 0
  %131 = and i1 %125, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %113
  %133 = mul i32 95, 112
  %134 = sitofp i32 %110 to float
  %135 = mul i32 39, 88
  %136 = fadd float %117, %134
  %137 = mul i32 12, 43
  %138 = fptosi float %136 to i32
  %139 = sdiv i32 112, 116
  %140 = add nuw nsw i64 %105, 1
  %141 = icmp eq i64 %140, 1760
  br label %155

142:                                              ; preds = %113
  %143 = mul i32 95, 112
  %144 = sitofp i32 %110 to float
  %145 = mul i32 39, 88
  %146 = fadd float %117, %144
  %147 = mul i32 12, 43
  %148 = fptosi float %146 to i32
  %149 = sdiv i32 112, 116
  %150 = xor i64 %105, 1
  %151 = and i64 %105, 1
  %152 = mul i64 2, %151
  %153 = add i64 %150, %152
  %154 = icmp eq i64 %153, 1760
  br i1 %131, label %155, label %104

155:                                              ; preds = %142, %132
  %156 = phi i32 [ %143, %142 ], [ %133, %132 ]
  %157 = phi float [ %144, %142 ], [ %134, %132 ]
  %158 = phi i32 [ %145, %142 ], [ %135, %132 ]
  %159 = phi float [ %146, %142 ], [ %136, %132 ]
  %160 = phi i32 [ %147, %142 ], [ %137, %132 ]
  %161 = phi i32 [ %148, %142 ], [ %138, %132 ]
  %162 = phi i32 [ %149, %142 ], [ %139, %132 ]
  %163 = phi i64 [ %153, %142 ], [ %140, %132 ]
  %164 = phi i1 [ %154, %142 ], [ %141, %132 ]
  br label %175

165:                                              ; preds = %104
  %166 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %105
  %167 = load float, float* %166, align 4, !tbaa !13
  %168 = sitofp i32 %110 to float
  %169 = fadd float %167, %168
  %170 = fptosi float %169 to i32
  %171 = sub i64 %105, -1537435717429674779
  %172 = add i64 %171, 1
  %173 = add i64 %172, -1537435717429674779
  %174 = icmp eq i64 %173, 1760
  br label %175

175:                                              ; preds = %165, %155
  %176 = phi float* [ %166, %165 ], [ %115, %155 ]
  %177 = phi float [ %167, %165 ], [ %117, %155 ]
  %178 = phi float [ %168, %165 ], [ %157, %155 ]
  %179 = phi float [ %169, %165 ], [ %159, %155 ]
  %180 = phi i32 [ %170, %165 ], [ %161, %155 ]
  %181 = phi i64 [ %173, %165 ], [ %163, %155 ]
  %182 = phi i1 [ %174, %165 ], [ %164, %155 ]
  br i1 %182, label %60, label %104, !llvm.loop !21
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

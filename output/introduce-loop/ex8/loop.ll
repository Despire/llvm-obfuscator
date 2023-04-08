; ModuleID = 'output/introduce-loop/ex8/ex8.ll'
source_filename = "input/introduce-loop/ex8/ex8.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = srem i32 %3, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %27, %4
  %9 = sub i32 71, 49
  %10 = add i32 102, 109
  %11 = sub i32 35, 72
  %12 = mul i32 109, 91
  %13 = add i32 109, 7
  %14 = srem i32 %5, 2
  %15 = icmp eq i32 %14, 0
  %16 = mul i32 %3, 2
  %17 = mul i32 %3, 2
  %18 = add i32 2, %17
  %19 = mul i32 %16, %18
  %20 = srem i32 %19, 4
  %21 = icmp eq i32 %20, 0
  %22 = mul i32 %3, %3
  %23 = add i32 %22, %3
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i1 %21, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %8
  %28 = add i32 101, 32
  %29 = mul i32 21, 35
  %30 = sub i32 62, -42
  br i1 %26, label %35, label %8

31:                                               ; preds = %8
  %32 = add i32 81, 52
  %33 = mul i32 21, 35
  %34 = add i32 62, 42
  br label %35

35:                                               ; preds = %27, %31
  %36 = phi i32 [ %32, %31 ], [ %28, %27 ]
  %37 = phi i32 [ %33, %31 ], [ %29, %27 ]
  %38 = phi i32 [ %34, %31 ], [ %30, %27 ]
  br label %40

39:                                               ; preds = %4
  br label %40

40:                                               ; preds = %39, %35
  br label %85

41:                                               ; preds = %59, %209
  %42 = srem i32 %5, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %41
  %45 = srem i32 %87, 2
  %46 = icmp eq i32 %45, 0
  %47 = mul i32 %3, 2
  %48 = mul i32 %3, 2
  %49 = add i32 2, %48
  %50 = mul i32 %47, %49
  %51 = srem i32 %50, 4
  %52 = icmp eq i32 %51, 0
  %53 = mul i32 %3, %3
  %54 = mul i32 %53, %3
  %55 = add i32 %54, %3
  %56 = srem i32 %55, 2
  %57 = icmp eq i32 %56, 0
  %58 = and i1 %52, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %44
  %60 = sub i32 41, 29
  %61 = sub i32 94, 118
  %62 = add i32 26, 3
  %63 = sdiv i32 52, 0
  %64 = sub i32 115, 13
  %65 = sub i32 58, 124
  %66 = mul i32 98, 6
  br i1 %58, label %75, label %41

67:                                               ; preds = %44
  %68 = add i32 41, -29
  %69 = add i32 1370464412, -1370464436
  %70 = add i32 -1239356787, 1239356816
  %71 = sdiv i32 52, 0
  %72 = add i32 362105007, -362104905
  %73 = sub i32 1267782088, 1267782154
  %74 = mul i32 98, 6
  br label %75

75:                                               ; preds = %59, %67
  %76 = phi i32 [ %68, %67 ], [ %60, %59 ]
  %77 = phi i32 [ %69, %67 ], [ %61, %59 ]
  %78 = phi i32 [ %70, %67 ], [ %62, %59 ]
  %79 = phi i32 [ %71, %67 ], [ %63, %59 ]
  %80 = phi i32 [ %72, %67 ], [ %64, %59 ]
  %81 = phi i32 [ %73, %67 ], [ %65, %59 ]
  %82 = phi i32 [ %74, %67 ], [ %66, %59 ]
  br label %84

83:                                               ; preds = %41
  br label %84

84:                                               ; preds = %83, %75
  ret void

85:                                               ; preds = %113, %209, %40
  %86 = phi i64 [ 0, %40 ], [ %170, %209 ], [ 0, %113 ]
  %87 = trunc i64 %86 to i32
  %88 = urem i32 %87, 80
  %89 = icmp eq i32 %88, 0
  %90 = srem i32 %6, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %85
  %93 = sub i32 74, 125
  %94 = sdiv i32 4, 104
  %95 = add i32 107, 46
  %96 = mul i32 100, 17
  %97 = add i32 23, 23
  %98 = srem i32 %6, 2
  %99 = icmp eq i32 %98, 0
  %100 = mul i32 %6, 2
  %101 = mul i32 %6, 2
  %102 = add i32 2, %101
  %103 = mul i32 %100, %102
  %104 = srem i32 %103, 4
  %105 = icmp eq i32 %104, 0
  %106 = mul i32 %6, %6
  %107 = add i32 %106, %6
  %108 = srem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = and i1 %105, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %92
  %112 = add i32 2031946528, -2031946557
  br label %115

113:                                              ; preds = %92
  %114 = sub i32 34, 63
  br i1 %110, label %115, label %85

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %114, %113 ], [ %112, %111 ]
  br label %118

117:                                              ; preds = %85
  br label %118

118:                                              ; preds = %117, %115
  br i1 %89, label %159, label %119

119:                                              ; preds = %151, %118
  %120 = srem i32 %87, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = getelementptr inbounds i8, i8* %0, i64 %86
  %124 = load i8, i8* %123, align 1, !tbaa !10
  %125 = sext i8 %124 to i32
  br label %155

126:                                              ; preds = %119
  %127 = sub i32 105, 59
  %128 = getelementptr inbounds i8, i8* %0, i64 %86
  %129 = add i32 123, 8
  %130 = load i8, i8* %128, align 1, !tbaa !10
  %131 = mul i32 5, 4
  %132 = sext i8 %130 to i32
  %133 = sub i32 120, 78
  %134 = sdiv i32 99, 5
  %135 = sub i32 26, 34
  %136 = srem i32 %6, 2
  %137 = icmp eq i32 %136, 0
  %138 = mul i32 %90, 2
  %139 = mul i32 %90, 2
  %140 = add i32 2, %139
  %141 = mul i32 %138, %140
  %142 = srem i32 %141, 4
  %143 = icmp eq i32 %142, 0
  %144 = mul i32 %90, %90
  %145 = add i32 %144, %90
  %146 = srem i32 %145, 2
  %147 = icmp eq i32 %146, 0
  %148 = or i1 %143, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %126
  %150 = add i32 86, 50
  br label %153

151:                                              ; preds = %126
  %152 = sub i32 86, -50
  br i1 %148, label %153, label %119

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %152, %151 ], [ %150, %149 ]
  br label %155

155:                                              ; preds = %153, %122
  %156 = phi i8* [ %128, %153 ], [ %123, %122 ]
  %157 = phi i8 [ %130, %153 ], [ %124, %122 ]
  %158 = phi i32 [ %132, %153 ], [ %125, %122 ]
  br label %159

159:                                              ; preds = %198, %155, %118
  %160 = phi i32 [ %158, %155 ], [ 10, %118 ], [ 0, %198 ]
  %161 = call i32 @putchar(i32 %160)
  %162 = load float, float* %1, align 4, !tbaa !13
  %163 = fpext float %162 to double
  %164 = fadd double %163, 4.000000e-05
  %165 = fptrunc double %164 to float
  store float %165, float* %1, align 4, !tbaa !13
  %166 = load float, float* %2, align 4, !tbaa !13
  %167 = fpext float %166 to double
  %168 = fadd double %167, 2.000000e-05
  %169 = fptrunc double %168 to float
  store float %169, float* %2, align 4, !tbaa !13
  %170 = add nuw nsw i64 %86, 1
  %171 = icmp eq i64 %170, 1761
  %172 = srem i32 %88, 2
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %208

174:                                              ; preds = %159
  %175 = sub i32 10, 80
  %176 = mul i32 56, 96
  %177 = sub i32 120, 73
  %178 = mul i32 92, 122
  %179 = sub i32 120, 4
  %180 = srem i32 %172, 2
  %181 = icmp eq i32 %180, 0
  %182 = mul i32 %90, 2
  %183 = mul i32 %90, 2
  %184 = add i32 2, %183
  %185 = mul i32 %182, %184
  %186 = srem i32 %185, 4
  %187 = icmp eq i32 %186, 0
  %188 = mul i32 %90, %90
  %189 = add i32 %188, %90
  %190 = srem i32 %189, 2
  %191 = icmp eq i32 %190, 0
  %192 = and i1 %187, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %174
  %194 = add i32 62, 97
  %195 = mul i32 112, 106
  %196 = add i32 19, 35
  %197 = add i32 74, 120
  br label %203

198:                                              ; preds = %174
  %199 = sub i32 792947706, 792947547
  %200 = mul i32 112, 106
  %201 = sub i32 0, -54
  %202 = sub i32 1357841410, 1357841216
  br i1 %192, label %203, label %159

203:                                              ; preds = %198, %193
  %204 = phi i32 [ %199, %198 ], [ %194, %193 ]
  %205 = phi i32 [ %200, %198 ], [ %195, %193 ]
  %206 = phi i32 [ %201, %198 ], [ %196, %193 ]
  %207 = phi i32 [ %202, %198 ], [ %197, %193 ]
  br label %209

208:                                              ; preds = %159
  br label %209

209:                                              ; preds = %208, %203
  br i1 %171, label %41, label %85, !llvm.loop !15
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
  %21 = call fastcc float @_ZL3cosf(float 5.000000e-01) #9
  %22 = call fastcc float @_ZL3cosf(float %1) #9
  %23 = call fastcc float @_ZL3sinf(float %1) #9
  %24 = srem i32 %2, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %41, %7
  %27 = sdiv i32 15, 8
  %28 = srem i32 %5, 2
  %29 = icmp eq i32 %28, 0
  %30 = mul i32 %16, 2
  %31 = mul i32 %16, 2
  %32 = add i32 2, %31
  %33 = mul i32 %30, %32
  %34 = srem i32 %33, 4
  %35 = icmp eq i32 %34, 0
  %36 = mul i32 %16, %16
  %37 = add i32 %36, %16
  %38 = srem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = or i1 %35, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %26
  %42 = sdiv i32 88, 0
  %43 = mul i32 124, 65
  %44 = sub i32 123, 43
  %45 = add i32 36, 123
  %46 = mul i32 44, 45
  %47 = add i32 12, 52
  br i1 %40, label %55, label %26

48:                                               ; preds = %26
  %49 = sdiv i32 88, 0
  %50 = mul i32 124, 65
  %51 = sub i32 -1653976476, -1653976556
  %52 = add i32 32, 127
  %53 = mul i32 44, 45
  %54 = add i32 56, 8
  br label %55

55:                                               ; preds = %41, %48
  %56 = phi i32 [ %49, %48 ], [ %42, %41 ]
  %57 = phi i32 [ %50, %48 ], [ %43, %41 ]
  %58 = phi i32 [ %51, %48 ], [ %44, %41 ]
  %59 = phi i32 [ %52, %48 ], [ %45, %41 ]
  %60 = phi i32 [ %53, %48 ], [ %46, %41 ]
  %61 = phi i32 [ %54, %48 ], [ %47, %41 ]
  br label %63

62:                                               ; preds = %7
  br label %63

63:                                               ; preds = %62, %55
  br label %102

64:                                               ; preds = %90, %360
  %65 = srem i32 %24, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %64
  %68 = sub i32 75, 60
  %69 = mul i32 42, 112
  %70 = sub i32 118, 98
  %71 = srem i64 %11, 2
  %72 = icmp eq i64 %71, 0
  %73 = mul i32 %13, 2
  %74 = mul i32 %13, 2
  %75 = add i32 2, %74
  %76 = mul i32 %73, %75
  %77 = srem i32 %76, 4
  %78 = icmp eq i32 %77, 0
  %79 = mul i32 %13, %13
  %80 = mul i32 %79, %13
  %81 = add i32 %80, %13
  %82 = srem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = and i1 %78, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %67
  %86 = sub i32 36, 43
  %87 = mul i32 89, 55
  %88 = sdiv i32 3, 28
  %89 = add i32 119, 106
  br label %95

90:                                               ; preds = %67
  %91 = sub i32 -126208987, -126208980
  %92 = mul i32 89, 55
  %93 = sdiv i32 3, 28
  %94 = sub i32 119, -106
  br i1 %84, label %95, label %64

95:                                               ; preds = %90, %85
  %96 = phi i32 [ %91, %90 ], [ %86, %85 ]
  %97 = phi i32 [ %92, %90 ], [ %87, %85 ]
  %98 = phi i32 [ %93, %90 ], [ %88, %85 ]
  %99 = phi i32 [ %94, %90 ], [ %89, %85 ]
  br label %101

100:                                              ; preds = %64
  br label %101

101:                                              ; preds = %100, %95
  ret void

102:                                              ; preds = %186, %360, %63
  %103 = phi double [ 0.000000e+00, %63 ], [ %362, %360 ], [ 0.000000e+00, %186 ]
  %104 = phi float [ 0.000000e+00, %63 ], [ %361, %360 ], [ 0.000000e+00, %186 ]
  %105 = call fastcc float @_ZL3cosf(float %104) #9
  %106 = call fastcc float @_ZL3sinf(float %104) #9
  %107 = fadd float %105, %12
  %108 = fmul float %18, %107
  %109 = fmul float %108, %20
  %110 = fmul float %19, %106
  %111 = fsub float %109, %110
  %112 = fmul float %19, %108
  %113 = fmul float %106, %20
  %114 = fadd float %112, %113
  %115 = fadd float %114, 5.000000e+00
  %116 = fdiv float 1.000000e+00, %115
  %117 = fmul float %107, %21
  %118 = fmul float %116, 1.500000e+01
  %119 = fmul float %117, %23
  %120 = fmul float %111, %22
  %121 = fsub float %119, %120
  %122 = fmul float %118, %121
  %123 = fadd float %122, %17
  %124 = fptosi float %123 to i32
  %125 = fmul float %18, %105
  %126 = fmul float %125, %20
  %127 = fsub float %110, %126
  %128 = fmul float %127, %22
  %129 = fmul float %125, %19
  %130 = fsub float %128, %129
  %131 = fsub float %130, %113
  %132 = fmul float %105, %21
  %133 = fmul float %132, %23
  %134 = fsub float %131, %133
  %135 = fmul float %134, 8.000000e+00
  %136 = fmul float %116, 3.000000e+01
  %137 = fmul float %117, %22
  %138 = fmul float %111, %23
  %139 = fadd float %137, %138
  %140 = fmul float %136, %139
  %141 = fadd float %140, %14
  %142 = fptosi float %141 to i32
  %143 = fptosi float %135 to i32
  %144 = srem i64 %9, 2
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %102
  %147 = icmp slt i32 %124, %5
  %148 = icmp sgt i32 %124, 0
  %149 = and i1 %147, %148
  %150 = icmp sgt i32 %142, 0
  %151 = select i1 %149, i1 %150, i1 false
  %152 = icmp slt i32 %142, %6
  %153 = select i1 %151, i1 %152, i1 false
  br label %188

154:                                              ; preds = %102
  %155 = sub i32 104, 45
  %156 = icmp slt i32 %124, %5
  %157 = mul i32 79, 28
  %158 = icmp sgt i32 %124, 0
  %159 = sub i32 25, 114
  %160 = xor i1 %156, true
  %161 = mul i32 77, 121
  %162 = xor i1 %158, true
  %163 = mul i32 66, 116
  %164 = or i1 %160, %162
  %165 = sdiv i32 88, 32
  %166 = xor i1 %164, true
  %167 = sdiv i32 104, 5
  %168 = and i1 %166, true
  %169 = sdiv i32 35, 117
  %170 = icmp sgt i32 %142, 0
  %171 = sdiv i32 40, 94
  %172 = select i1 %168, i1 %170, i1 false
  %173 = icmp slt i32 %142, %6
  %174 = select i1 %172, i1 %173, i1 false
  %175 = srem i32 %15, 2
  %176 = icmp eq i32 %175, 0
  %177 = and i32 %5, 1
  %178 = icmp eq i32 %177, 0
  %179 = mul i32 %5, %5
  %180 = add i32 %179, %5
  %181 = mul i32 %180, 3
  %182 = srem i32 %181, 2
  %183 = icmp eq i32 %182, 0
  %184 = or i1 %178, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %154
  br label %187

186:                                              ; preds = %154
  br i1 %184, label %187, label %102

187:                                              ; preds = %186, %185
  br label %188

188:                                              ; preds = %187, %146
  %189 = phi i1 [ %156, %187 ], [ %147, %146 ]
  %190 = phi i1 [ %158, %187 ], [ %148, %146 ]
  %191 = phi i1 [ %168, %187 ], [ %149, %146 ]
  %192 = phi i1 [ %170, %187 ], [ %150, %146 ]
  %193 = phi i1 [ %172, %187 ], [ %151, %146 ]
  %194 = phi i1 [ %173, %187 ], [ %152, %146 ]
  %195 = phi i1 [ %174, %187 ], [ %153, %146 ]
  br i1 %195, label %196, label %307

196:                                              ; preds = %221, %188
  %197 = mul nsw i32 %124, %6
  %198 = add nsw i32 %197, %142
  %199 = sext i32 %198 to i64
  %200 = srem i64 %9, 2
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %245

202:                                              ; preds = %196
  %203 = add i32 28, 116
  %204 = getelementptr inbounds float, float* %3, i64 %199
  %205 = sdiv i32 36, 99
  %206 = load float, float* %204, align 4, !tbaa !13
  %207 = add i32 24, 32
  %208 = srem i32 %24, 2
  %209 = icmp eq i32 %208, 0
  %210 = mul i32 %15, 2
  %211 = mul i32 %15, 2
  %212 = add i32 2, %211
  %213 = mul i32 %210, %212
  %214 = srem i32 %213, 4
  %215 = icmp eq i32 %214, 0
  %216 = mul i32 %15, %15
  %217 = add i32 %216, %15
  %218 = srem i32 %217, 2
  %219 = icmp eq i32 %218, 0
  %220 = or i1 %215, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %202
  %222 = fcmp ogt float %116, %206
  %223 = mul i32 34, 14
  %224 = add i32 103, 84
  %225 = mul i32 96, 12
  %226 = add i32 111, 57
  %227 = mul i32 18, 71
  %228 = sub i32 22, 52
  br i1 %220, label %237, label %196

229:                                              ; preds = %202
  %230 = fcmp ogt float %116, %206
  %231 = mul i32 34, 14
  %232 = sub i32 0, -187
  %233 = mul i32 96, 12
  %234 = add i32 41, 127
  %235 = mul i32 18, 71
  %236 = add i32 22, -52
  br label %237

237:                                              ; preds = %221, %229
  %238 = phi i1 [ %230, %229 ], [ %222, %221 ]
  %239 = phi i32 [ %231, %229 ], [ %223, %221 ]
  %240 = phi i32 [ %232, %229 ], [ %224, %221 ]
  %241 = phi i32 [ %233, %229 ], [ %225, %221 ]
  %242 = phi i32 [ %234, %229 ], [ %226, %221 ]
  %243 = phi i32 [ %235, %229 ], [ %227, %221 ]
  %244 = phi i32 [ %236, %229 ], [ %228, %221 ]
  br label %249

245:                                              ; preds = %196
  %246 = getelementptr inbounds float, float* %3, i64 %199
  %247 = load float, float* %246, align 4, !tbaa !13
  %248 = fcmp ogt float %116, %247
  br label %249

249:                                              ; preds = %245, %237
  %250 = phi float* [ %246, %245 ], [ %204, %237 ]
  %251 = phi float [ %247, %245 ], [ %206, %237 ]
  %252 = phi i1 [ %248, %245 ], [ %238, %237 ]
  br i1 %252, label %253, label %307

253:                                              ; preds = %285, %249
  store float %116, float* %250, align 4, !tbaa !13
  %254 = icmp sgt i32 %143, 0
  %255 = select i1 %254, i32 %143, i32 0
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %256
  %258 = load i8, i8* %257, align 1, !tbaa !10
  %259 = srem i32 %15, 2
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %253
  %262 = getelementptr inbounds i8, i8* %4, i64 %199
  store i8 %258, i8* %262, align 1, !tbaa !10
  br label %305

263:                                              ; preds = %253
  %264 = sub i32 20, 64
  %265 = srem i64 %9, 2
  %266 = icmp eq i64 %265, 0
  %267 = and i8 %258, 1
  %268 = icmp eq i8 %267, 0
  %269 = mul i8 %258, %258
  %270 = add i8 %269, %258
  %271 = mul i8 %270, 3
  %272 = srem i8 %271, 2
  %273 = icmp eq i8 %272, 0
  %274 = or i1 %268, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %263
  %276 = getelementptr inbounds i8, i8* %4, i64 %199
  %277 = sub i32 72, 56
  store i8 %258, i8* %276, align 1, !tbaa !10
  %278 = add i32 8, 93
  %279 = add i32 46, 19
  %280 = sub i32 5, 47
  %281 = sub i32 59, 49
  %282 = mul i32 24, 93
  %283 = add i32 42, 63
  %284 = sdiv i32 84, 25
  br label %295

285:                                              ; preds = %263
  %286 = getelementptr inbounds i8, i8* %4, i64 %199
  %287 = add i32 72, -56
  store i8 %258, i8* %286, align 1, !tbaa !10
  %288 = sub i32 8, -93
  %289 = add i32 -1923693396, 1923693461
  %290 = add i32 5, -47
  %291 = add i32 -558885788, 558885798
  %292 = mul i32 24, 93
  %293 = add i32 21, 84
  %294 = sdiv i32 84, 25
  br i1 %274, label %295, label %253

295:                                              ; preds = %285, %275
  %296 = phi i8* [ %286, %285 ], [ %276, %275 ]
  %297 = phi i32 [ %287, %285 ], [ %277, %275 ]
  %298 = phi i32 [ %288, %285 ], [ %278, %275 ]
  %299 = phi i32 [ %289, %285 ], [ %279, %275 ]
  %300 = phi i32 [ %290, %285 ], [ %280, %275 ]
  %301 = phi i32 [ %291, %285 ], [ %281, %275 ]
  %302 = phi i32 [ %292, %285 ], [ %282, %275 ]
  %303 = phi i32 [ %293, %285 ], [ %283, %275 ]
  %304 = phi i32 [ %294, %285 ], [ %284, %275 ]
  br label %305

305:                                              ; preds = %295, %261
  %306 = phi i8* [ %296, %295 ], [ %262, %261 ]
  br label %307

307:                                              ; preds = %336, %305, %249, %188
  %308 = fadd double %103, 7.000000e-02
  %309 = srem i32 %13, 2
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %356

311:                                              ; preds = %307
  %312 = srem i64 %144, 2
  %313 = icmp eq i64 %312, 0
  %314 = mul i32 %142, 2
  %315 = mul i32 %142, 2
  %316 = add i32 2, %315
  %317 = mul i32 %314, %316
  %318 = srem i32 %317, 4
  %319 = icmp eq i32 %318, 0
  %320 = mul i32 %142, %142
  %321 = mul i32 %320, %142
  %322 = add i32 %321, %142
  %323 = srem i32 %322, 2
  %324 = icmp eq i32 %323, 0
  %325 = and i1 %319, %324
  br i1 %325, label %326, label %336

326:                                              ; preds = %311
  %327 = mul i32 125, 59
  %328 = fptrunc double %308 to float
  %329 = add i32 -858581839, 858581811
  %330 = fpext float %328 to double
  %331 = sdiv i32 68, 34
  %332 = fcmp olt double %330, 6.280000e+00
  %333 = sdiv i32 80, 72
  %334 = add i32 52, -26
  %335 = add i32 0, 148
  br label %346

336:                                              ; preds = %311
  %337 = mul i32 125, 59
  %338 = fptrunc double %308 to float
  %339 = sub i32 23, 51
  %340 = fpext float %338 to double
  %341 = sdiv i32 68, 34
  %342 = fcmp olt double %340, 6.280000e+00
  %343 = sdiv i32 80, 72
  %344 = sub i32 52, 26
  %345 = add i32 74, 74
  br i1 %325, label %346, label %307

346:                                              ; preds = %336, %326
  %347 = phi i32 [ %337, %336 ], [ %327, %326 ]
  %348 = phi float [ %338, %336 ], [ %328, %326 ]
  %349 = phi i32 [ %339, %336 ], [ %329, %326 ]
  %350 = phi double [ %340, %336 ], [ %330, %326 ]
  %351 = phi i32 [ %341, %336 ], [ %331, %326 ]
  %352 = phi i1 [ %342, %336 ], [ %332, %326 ]
  %353 = phi i32 [ %343, %336 ], [ %333, %326 ]
  %354 = phi i32 [ %344, %336 ], [ %334, %326 ]
  %355 = phi i32 [ %345, %336 ], [ %335, %326 ]
  br label %360

356:                                              ; preds = %307
  %357 = fptrunc double %308 to float
  %358 = fpext float %357 to double
  %359 = fcmp olt double %358, 6.280000e+00
  br label %360

360:                                              ; preds = %356, %346
  %361 = phi float [ %357, %356 ], [ %348, %346 ]
  %362 = phi double [ %358, %356 ], [ %350, %346 ]
  %363 = phi i1 [ %359, %356 ], [ %352, %346 ]
  br i1 %363, label %102, label %64, !llvm.loop !18
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

11:                                               ; preds = %41, %51, %0
  %12 = phi i32 [ 5, %0 ], [ %15, %51 ], [ 0, %41 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = srem i32 %10, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %11
  %19 = sub i32 11, 91
  %20 = icmp eq i32 %15, 10
  %21 = sdiv i32 0, 96
  %22 = add i32 66, 88
  %23 = srem i32 %12, 2
  %24 = icmp eq i32 %23, 0
  %25 = mul i32 %16, 2
  %26 = mul i32 %16, 2
  %27 = add i32 2, %26
  %28 = mul i32 %25, %27
  %29 = srem i32 %28, 4
  %30 = icmp eq i32 %29, 0
  %31 = mul i32 %16, %16
  %32 = mul i32 %31, %16
  %33 = add i32 %32, %16
  %34 = srem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %30, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %18
  %38 = sub i32 39, 65
  %39 = mul i32 28, 32
  %40 = mul i32 40, 21
  br label %45

41:                                               ; preds = %18
  %42 = add i32 39, -65
  %43 = mul i32 28, 32
  %44 = mul i32 40, 21
  br i1 %36, label %45, label %11

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %42, %41 ], [ %38, %37 ]
  %47 = phi i32 [ %43, %41 ], [ %39, %37 ]
  %48 = phi i32 [ %44, %41 ], [ %40, %37 ]
  br label %51

49:                                               ; preds = %11
  %50 = icmp eq i32 %15, 10
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i1 [ %50, %49 ], [ %20, %45 ]
  br i1 %52, label %90, label %11, !llvm.loop !19

53:                                               ; preds = %78, %136
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %54 = srem i32 %10, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %53
  %57 = mul i32 98, 106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %58 = add i32 101, 120
  %59 = sub i32 126, 39
  %60 = srem i32 %96, 2
  %61 = icmp eq i32 %60, 0
  %62 = mul i32 %95, 2
  %63 = mul i32 %95, 2
  %64 = add i32 2, %63
  %65 = mul i32 %62, %64
  %66 = srem i32 %65, 4
  %67 = icmp eq i32 %66, 0
  %68 = mul i32 %95, %95
  %69 = add i32 %68, %95
  %70 = srem i32 %69, 2
  %71 = icmp eq i32 %70, 0
  %72 = and i1 %67, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %56
  %74 = sdiv i32 75, 27
  %75 = sdiv i32 38, 120
  %76 = add i32 114, 45
  %77 = sub i32 11, 39
  br label %83

78:                                               ; preds = %56
  %79 = sdiv i32 75, 27
  %80 = sdiv i32 38, 120
  %81 = add i32 925757849, -925757690
  %82 = add i32 1262248519, -1262248547
  br i1 %72, label %83, label %53

83:                                               ; preds = %78, %73
  %84 = phi i32 [ %79, %78 ], [ %74, %73 ]
  %85 = phi i32 [ %80, %78 ], [ %75, %73 ]
  %86 = phi i32 [ %81, %78 ], [ %76, %73 ]
  %87 = phi i32 [ %82, %78 ], [ %77, %73 ]
  br label %89

88:                                               ; preds = %53
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %89

89:                                               ; preds = %88, %83
  ret i32 %101

90:                                               ; preds = %128, %136, %51
  %91 = phi i64 [ %102, %136 ], [ 0, %51 ], [ 0, %128 ]
  %92 = phi i32 [ %101, %136 ], [ 0, %51 ], [ 0, %128 ]
  %93 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %91
  %94 = load i8, i8* %93, align 1, !tbaa !10
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %92, %95
  %97 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %91
  %98 = load float, float* %97, align 4, !tbaa !13
  %99 = sitofp i32 %96 to float
  %100 = fadd float %98, %99
  %101 = fptosi float %100 to i32
  %102 = add nuw nsw i64 %91, 1
  %103 = srem i32 %10, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %90
  %106 = add i32 85, 104
  %107 = icmp eq i64 %102, 1760
  %108 = mul i32 2, 72
  %109 = mul i32 41, 7
  %110 = add i32 96, 48
  %111 = sub i32 76, 28
  %112 = mul i32 121, 97
  %113 = sdiv i32 112, 112
  %114 = sub i32 93, 22
  %115 = srem i32 %103, 2
  %116 = icmp eq i32 %115, 0
  %117 = mul i32 %12, 2
  %118 = mul i32 %12, 2
  %119 = add i32 2, %118
  %120 = mul i32 %117, %119
  %121 = srem i32 %120, 4
  %122 = icmp eq i32 %121, 0
  %123 = mul i32 %12, %12
  %124 = add i32 %123, %12
  %125 = srem i32 %124, 2
  %126 = icmp eq i32 %125, 0
  %127 = and i1 %122, %126
  br i1 %127, label %130, label %128

128:                                              ; preds = %105
  %129 = sub i32 67, 4
  br i1 %127, label %132, label %90

130:                                              ; preds = %105
  %131 = sub i32 -1224080987, -1224081050
  br label %132

132:                                              ; preds = %128, %130
  %133 = phi i32 [ %131, %130 ], [ %129, %128 ]
  br label %136

134:                                              ; preds = %90
  %135 = icmp eq i64 %102, 1760
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i1 [ %135, %134 ], [ %107, %132 ]
  br i1 %137, label %53, label %90, !llvm.loop !20
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

; ModuleID = 'output/opaque-predicates/ex7/ex7.ll'
source_filename = "input/opaque-predicates/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_i(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32 %3) local_unnamed_addr #0 {
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %7

6:                                                ; preds = %28
  ret void

7:                                                ; preds = %28, %4
  %8 = phi i64 [ 0, %4 ], [ %39, %28 ]
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 80
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 1
  %14 = mul i32 %3, %3
  %15 = add i32 %14, %3
  %16 = srem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = xor i1 %17, true
  %19 = and i1 %13, %18
  %20 = add i1 %19, %17
  %21 = xor i1 %20, true
  %22 = xor i1 %11, %21
  %23 = and i1 %22, %11
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds i8, i8* %0, i64 %8
  %26 = load i8, i8* %25, align 1, !tbaa !10
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %24, %7
  %29 = phi i32 [ %27, %24 ], [ 10, %7 ]
  %30 = call i32 @putchar(i32 %29)
  %31 = load float, float* %1, align 4, !tbaa !13
  %32 = fpext float %31 to double
  %33 = fadd double %32, 4.000000e-05
  %34 = fptrunc double %33 to float
  store float %34, float* %1, align 4, !tbaa !13
  %35 = load float, float* %2, align 4, !tbaa !13
  %36 = fpext float %35 to double
  %37 = fadd double %36, 2.000000e-05
  %38 = fptrunc double %37 to float
  store float %38, float* %2, align 4, !tbaa !13
  %39 = add nuw nsw i64 %8, 1
  %40 = icmp eq i64 %39, 1761
  br i1 %40, label %6, label %7, !llvm.loop !15
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
  br label %28

24:                                               ; preds = %107
  %25 = fcmp une float %19, 0.000000e+00
  %26 = fmul float %19, 2.000000e+00
  %27 = select i1 %25, float %26, float %19
  br label %113

28:                                               ; preds = %107, %7
  %29 = phi double [ 0.000000e+00, %7 ], [ %110, %107 ]
  %30 = phi float [ 0.000000e+00, %7 ], [ %109, %107 ]
  %31 = call fastcc float @_ZL3cosf(float %30) #9
  %32 = call fastcc float @_ZL3sinf(float %30) #9
  %33 = fadd float %31, %12
  %34 = fmul float %18, %33
  %35 = fmul float %34, %20
  %36 = fmul float %19, %32
  %37 = fsub float %35, %36
  %38 = fmul float %19, %34
  %39 = fmul float %32, %20
  %40 = fadd float %38, %39
  %41 = fadd float %40, 5.000000e+00
  %42 = fdiv float 1.000000e+00, %41
  %43 = fmul float %42, 3.000000e+01
  %44 = fmul float %33, %21
  %45 = fmul float %44, %22
  %46 = fmul float %37, %23
  %47 = fadd float %45, %46
  %48 = fmul float %43, %47
  %49 = fadd float %48, %14
  %50 = fptosi float %49 to i32
  %51 = fmul float %42, 1.500000e+01
  %52 = fmul float %44, %23
  %53 = fmul float %37, %22
  %54 = fsub float %52, %53
  %55 = fmul float %51, %54
  %56 = fadd float %55, %17
  %57 = fptosi float %56 to i32
  %58 = fmul float %18, %31
  %59 = fmul float %58, %20
  %60 = fsub float %36, %59
  %61 = fmul float %60, %22
  %62 = fmul float %58, %19
  %63 = fsub float %61, %62
  %64 = fsub float %63, %39
  %65 = fmul float %31, %21
  %66 = fmul float %65, %23
  %67 = fsub float %64, %66
  %68 = fmul float %67, 8.000000e+00
  %69 = fptosi float %68 to i32
  %70 = icmp slt i32 %57, %5
  %71 = icmp sgt i32 %57, 0
  %72 = and i1 %70, %71
  %73 = icmp sgt i32 %50, 0
  %74 = select i1 %72, i1 %73, i1 false
  %75 = icmp slt i32 %50, %6
  %76 = select i1 %74, i1 %75, i1 false
  %77 = mul i32 %5, %5
  %78 = add i32 %77, %5
  %79 = mul i32 %78, 3
  %80 = srem i32 %79, 2
  %81 = icmp eq i32 %80, 0
  %82 = mul i32 %5, %5
  %83 = add i32 %82, %5
  %84 = srem i32 %83, 2
  %85 = icmp eq i32 %84, 0
  %86 = xor i1 %81, true
  %87 = or i1 %86, %85
  %88 = xor i1 %81, true
  %89 = sub i1 %87, %88
  %90 = xor i1 %89, true
  %91 = xor i1 %76, %90
  %92 = and i1 %91, %76
  br i1 %92, label %93, label %107

93:                                               ; preds = %28
  %94 = mul nsw i32 %57, %6
  %95 = add nsw i32 %94, %50
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %3, i64 %96
  %98 = load float, float* %97, align 4, !tbaa !13
  %99 = fcmp ogt float %42, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  store float %42, float* %97, align 4, !tbaa !13
  %101 = icmp sgt i32 %69, 0
  %102 = select i1 %101, i32 %69, i32 0
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1, !tbaa !10
  %106 = getelementptr inbounds i8, i8* %4, i64 %96
  store i8 %105, i8* %106, align 1, !tbaa !10
  br label %107

107:                                              ; preds = %100, %93, %28
  %108 = fadd double %29, 7.000000e-02
  %109 = fptrunc double %108 to float
  %110 = fpext float %109 to double
  %111 = fcmp olt double %110, 6.280000e+00
  br i1 %111, label %28, label %24, !llvm.loop !18

112:                                              ; preds = %220
  ret void

113:                                              ; preds = %220, %24
  %114 = phi double [ 0.000000e+00, %24 ], [ %223, %220 ]
  %115 = phi i32 [ 0, %24 ], [ %117, %220 ]
  %116 = phi float [ 0.000000e+00, %24 ], [ %222, %220 ]
  %117 = add nuw nsw i32 %115, 1
  %118 = sitofp i32 %115 to float
  %119 = fadd float %18, %118
  %120 = call fastcc float @_ZL3cosf(float %116) #9
  %121 = fcmp une float %119, 0.000000e+00
  %122 = fmul float %119, 2.000000e+00
  %123 = fmul float %120, 2.000000e+00
  %124 = select i1 %121, float %120, float %123
  %125 = select i1 %121, float %122, float %119
  %126 = call fastcc float @_ZL3sinf(float %116) #9
  %127 = fmul float %126, 2.000000e+00
  %128 = select i1 %25, float %126, float %127
  %129 = fadd float %124, %12
  %130 = fmul float %125, %129
  %131 = fmul float %20, %130
  %132 = fmul float %27, %128
  %133 = fsub float %131, %132
  %134 = fcmp une float %129, 0.000000e+00
  %135 = fmul float %133, 2.000000e+00
  %136 = fmul float %129, 2.000000e+00
  %137 = select i1 %134, float %135, float %133
  %138 = select i1 %134, float %129, float %136
  %139 = fmul float %125, %138
  %140 = fmul float %27, %139
  %141 = fmul float %20, %128
  %142 = fadd float %141, %140
  %143 = fadd float %142, 5.000000e+00
  %144 = fdiv float 1.000000e+00, %143
  %145 = fmul float %144, 3.000000e+01
  %146 = fmul float %21, %138
  %147 = fmul float %22, %146
  %148 = fmul float %23, %137
  %149 = fadd float %147, %148
  %150 = fmul float %149, %145
  %151 = fadd float %150, %14
  %152 = fptosi float %151 to i32
  %153 = fmul float %144, 1.500000e+01
  %154 = fmul float %146, %23
  %155 = fmul float %22, %137
  %156 = fsub float %154, %155
  %157 = fmul float %156, %153
  %158 = fadd float %157, %17
  %159 = fptosi float %158 to i32
  %160 = fmul float %125, %124
  %161 = fmul float %160, %20
  %162 = fsub float %132, %161
  %163 = fmul float %22, %162
  %164 = fmul float %160, %27
  %165 = fsub float %163, %164
  %166 = fsub float %165, %141
  %167 = fmul float %124, %21
  %168 = fmul float %167, %23
  %169 = fsub float %166, %168
  %170 = fmul float %169, 8.000000e+00
  %171 = fptosi float %170 to i32
  %172 = icmp slt i32 %159, %5
  %173 = icmp sgt i32 %159, 0
  %174 = and i1 %172, %173
  %175 = icmp sgt i32 %152, 0
  %176 = select i1 %174, i1 %175, i1 false
  %177 = icmp slt i32 %152, %6
  %178 = select i1 %176, i1 %177, i1 false
  %179 = and i32 %15, 1
  %180 = icmp eq i32 %179, 0
  %181 = mul i32 %15, %15
  %182 = add i32 %181, %15
  %183 = mul i32 %182, 3
  %184 = srem i32 %183, 2
  %185 = icmp eq i32 %184, 0
  %186 = xor i1 %180, true
  %187 = and i1 %186, true
  %188 = and i1 %180, false
  %189 = or i1 %187, %188
  %190 = xor i1 %185, true
  %191 = and i1 %190, true
  %192 = and i1 %185, false
  %193 = or i1 %191, %192
  %194 = xor i1 %189, %193
  %195 = xor i1 %180, true
  %196 = xor i1 %185, true
  %197 = or i1 %195, %196
  %198 = xor i1 %197, true
  %199 = and i1 %198, true
  %200 = or i1 %194, %199
  %201 = xor i1 %178, true
  %202 = xor i1 %200, true
  %203 = or i1 %201, %202
  %204 = xor i1 %203, true
  %205 = and i1 %204, true
  br i1 %205, label %206, label %220

206:                                              ; preds = %113
  %207 = mul nsw i32 %159, %6
  %208 = add nsw i32 %207, %152
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %3, i64 %209
  %211 = load float, float* %210, align 4, !tbaa !13
  %212 = fcmp ogt float %144, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %206
  store float %144, float* %210, align 4, !tbaa !13
  %214 = icmp sgt i32 %171, 0
  %215 = select i1 %214, i32 %171, i32 0
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1, !tbaa !10
  %219 = getelementptr inbounds i8, i8* %4, i64 %209
  store i8 %218, i8* %219, align 1, !tbaa !10
  br label %220

220:                                              ; preds = %213, %206, %113
  %221 = fadd double %114, 7.000000e-02
  %222 = fptrunc double %221 to float
  %223 = fpext float %222 to double
  %224 = icmp eq i32 %117, 90
  br i1 %224, label %112, label %113, !llvm.loop !19
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

11:                                               ; preds = %11, %0
  %12 = phi i32 [ 5, %0 ], [ %15, %11 ]
  %13 = load float, float* %1, align 4, !tbaa !13
  %14 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %13, float %14, i32 1760, float* nonnull %9, i8* nonnull %8, i32 22, i32 80)
  call void @_Z7displayPKcRfS1_i(i8* nonnull %8, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2, i32 1)
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp eq i32 %15, 10
  %17 = mul i32 %10, 2
  %18 = mul i32 %10, 2
  %19 = add i32 2, %18
  %20 = mul i32 %17, %19
  %21 = srem i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = mul i32 %10, %10
  %24 = mul i32 %23, %10
  %25 = add i32 %24, %10
  %26 = srem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = xor i1 %22, true
  %29 = xor i1 %27, true
  %30 = or i1 %28, %29
  %31 = xor i1 %30, true
  %32 = and i1 %31, true
  %33 = xor i1 %16, true
  %34 = or i1 %33, %32
  %35 = xor i1 %16, true
  %36 = sub i1 %34, %35
  br i1 %36, label %38, label %11, !llvm.loop !20

37:                                               ; preds = %38
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  ret i32 %49

38:                                               ; preds = %38, %11
  %39 = phi i64 [ %50, %38 ], [ 0, %11 ]
  %40 = phi i32 [ %49, %38 ], [ 0, %11 ]
  %41 = getelementptr inbounds [1760 x i8], [1760 x i8]* %7, i64 0, i64 %39
  %42 = load i8, i8* %41, align 1, !tbaa !10
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %40, %43
  %45 = getelementptr inbounds [1760 x float], [1760 x float]* %6, i64 0, i64 %39
  %46 = load float, float* %45, align 4, !tbaa !13
  %47 = sitofp i32 %44 to float
  %48 = fadd float %46, %47
  %49 = fptosi float %48 to i32
  %50 = add nuw nsw i64 %39, 1
  %51 = icmp eq i64 %50, 1760
  %52 = mul i32 %10, 2
  %53 = mul i32 %10, 2
  %54 = add i32 2, %53
  %55 = mul i32 %52, %54
  %56 = srem i32 %55, 4
  %57 = icmp eq i32 %56, 0
  %58 = mul i32 %10, %10
  %59 = mul i32 %58, %10
  %60 = add i32 %59, %10
  %61 = srem i32 %60, 2
  %62 = icmp eq i32 %61, 0
  %63 = xor i1 %57, true
  %64 = xor i1 %62, true
  %65 = or i1 %63, %64
  %66 = xor i1 %65, true
  %67 = and i1 %66, true
  %68 = xor i1 %51, true
  %69 = or i1 %68, %67
  %70 = xor i1 %51, true
  %71 = sub i1 %69, %70
  br i1 %71, label %37, label %38, !llvm.loop !21
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

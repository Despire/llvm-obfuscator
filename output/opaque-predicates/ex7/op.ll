; ModuleID = 'output/opaque-predicates/ex7/ex7.ll'
source_filename = "input/opaque-predicates/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
  %4 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %6

5:                                                ; preds = %84
  ret void

6:                                                ; preds = %84, %3
  %7 = phi i64 [ 0, %3 ], [ %87, %84 ]
  %8 = trunc i64 %7 to i32
  %9 = urem i32 %8, 80
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %4, 0
  %12 = icmp ne i32 %4, 0
  %13 = and i1 %11, %12
  %14 = xor i1 %11, %12
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %6
  %17 = mul i32 %4, %4
  %18 = mul i32 %4, %4
  %19 = add i32 %4, %4
  %20 = sdiv i32 %4, %4
  %21 = add i32 %4, %4
  %22 = mul i32 %4, %4
  %23 = sdiv i32 %4, %4
  %24 = sdiv i32 %4, %4
  %25 = add i32 %4, %4
  br label %26

26:                                               ; preds = %6, %16
  br i1 %10, label %50, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds i8, i8* %0, i64 %7
  %29 = load i8, i8* %28, align 1, !tbaa !10
  %30 = icmp sge i1 %13, %13
  %31 = icmp sle i1 %13, %13
  %32 = xor i1 %30, true
  %33 = xor i1 %31, true
  %34 = or i1 %32, %33
  %35 = xor i1 %34, true
  %36 = and i1 %35, true
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = sdiv i64 %7, %7
  %39 = sub i1 %12, %12
  %40 = add i1 %14, %14
  %41 = mul i32 %8, %8
  %42 = sdiv i1 %10, %10
  %43 = sdiv i1 %14, %14
  %44 = sub i32 %8, %8
  %45 = add i1 %11, %11
  %46 = mul i1 %11, %11
  %47 = mul i1 %15, %15
  br label %48

48:                                               ; preds = %27, %37
  %49 = sext i8 %29 to i32
  br label %50

50:                                               ; preds = %48, %26
  %51 = phi i32 [ %49, %48 ], [ 10, %26 ]
  %52 = call i32 @putchar(i32 %51)
  %53 = load float, float* %1, align 4, !tbaa !13
  %54 = fpext float %53 to double
  %55 = fadd double %54, 4.000000e-05
  %56 = fptrunc double %55 to float
  store float %56, float* %1, align 4, !tbaa !13
  %57 = load float, float* %2, align 4, !tbaa !13
  %58 = fpext float %57 to double
  %59 = icmp eq i32 %8, 0
  %60 = icmp ne i32 %8, 0
  %61 = xor i1 %59, true
  %62 = and i1 %61, true
  %63 = and i1 %59, false
  %64 = or i1 %62, %63
  %65 = xor i1 %60, true
  %66 = and i1 %65, true
  %67 = and i1 %60, false
  %68 = or i1 %66, %67
  %69 = xor i1 %64, %68
  %70 = xor i1 %59, true
  %71 = xor i1 %60, true
  %72 = or i1 %70, %71
  %73 = xor i1 %72, true
  %74 = and i1 %73, true
  %75 = or i1 %69, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %50
  %77 = sub i1 %12, %12
  %78 = add i64 %7, %7
  %79 = add i1 %11, %11
  %80 = mul i64 %7, %7
  %81 = sub i32 %8, %8
  %82 = add i1 %10, %10
  %83 = sdiv i1 %12, %12
  br label %84

84:                                               ; preds = %50, %76
  %85 = fadd double %58, 2.000000e-05
  %86 = fptrunc double %85 to float
  store float %86, float* %2, align 4, !tbaa !13
  %87 = add nuw nsw i64 %7, 1
  %88 = icmp eq i64 %87, 1761
  br i1 %88, label %5, label %6, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z6renderffiPfPcii(float %0, float %1, i32 %2, float* nocapture %3, i8* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #3 {
  %8 = icmp eq i32 %5, 0
  %9 = icmp ne i32 %5, 0
  %10 = and i1 %8, %9
  %11 = xor i1 %8, %9
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = sdiv i32 %6, %6
  %15 = add i32 %2, %2
  %16 = mul i32 %5, %5
  %17 = add i32 %2, %2
  %18 = sdiv i32 %2, %2
  %19 = mul i32 %6, %6
  %20 = sub i32 %6, %6
  br label %21

21:                                               ; preds = %7, %13
  %22 = sdiv i32 %6, 40
  %23 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 32, i64 %23, i1 false)
  %24 = bitcast float* %3 to i8*
  %25 = shl nsw i64 %23, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 %25, i1 false)
  %26 = sitofp i32 %22 to float
  %27 = sdiv i32 %6, 2
  %28 = sitofp i32 %27 to float
  %29 = sdiv i32 %5, 2
  %30 = add nsw i32 %29, 1
  %31 = sitofp i32 %30 to float
  %32 = call fastcc float @_ZL3sinf(float %0) #8
  %33 = call fastcc float @_ZL3cosf(float %0) #8
  %34 = call fastcc float @_ZL3cosf(float %1) #8
  %35 = call fastcc float @_ZL3sinf(float %1) #8
  br label %36

36:                                               ; preds = %84, %21
  %37 = phi double [ 0.000000e+00, %21 ], [ %65, %84 ]
  %38 = phi float [ 0.000000e+00, %21 ], [ %64, %84 ]
  %39 = call fastcc float @_ZL3cosf(float %38) #8
  %40 = call fastcc float @_ZL3sinf(float %38) #8
  %41 = fadd float %39, %26
  %42 = fmul float %32, %40
  %43 = icmp sge i64 %25, %25
  %44 = icmp sle i64 %25, %25
  %45 = xor i1 %44, true
  %46 = xor i1 %43, %45
  %47 = and i1 %46, %43
  br i1 %47, label %48, label %59

48:                                               ; preds = %36
  %49 = sub i32 %6, %6
  %50 = add i32 %29, %29
  %51 = add i32 %6, %6
  %52 = mul i32 %29, %29
  %53 = sub i1 %8, %8
  %54 = mul i1 %9, %9
  %55 = sub i32 %22, %22
  %56 = mul i1 %11, %11
  %57 = mul i64 %23, %23
  %58 = add i32 %2, %2
  br label %59

59:                                               ; preds = %36, %48
  %60 = fmul float %40, %33
  br label %85

61:                                               ; preds = %84
  ret void

62:                                               ; preds = %225
  %63 = fadd double %37, 7.000000e-02
  %64 = fptrunc double %63 to float
  %65 = fpext float %64 to double
  %66 = fcmp olt double %65, 6.280000e+00
  %67 = icmp sge i1 %43, %43
  %68 = icmp sle i1 %43, %43
  %69 = xor i1 %67, true
  %70 = xor i1 %68, true
  %71 = or i1 %69, %70
  %72 = xor i1 %71, true
  %73 = and i1 %72, true
  br i1 %73, label %74, label %84

74:                                               ; preds = %62
  %75 = sub i1 %8, %8
  %76 = sdiv i32 %2, %2
  %77 = mul i32 %6, %6
  %78 = mul i32 %30, %30
  %79 = add i32 %127, %127
  %80 = sdiv i1 %12, %12
  %81 = sdiv i1 %208, %208
  %82 = sub i1 %9, %9
  %83 = add i1 %43, %43
  br label %84

84:                                               ; preds = %62, %74
  br i1 %66, label %36, label %61, !llvm.loop !18

85:                                               ; preds = %225, %59
  %86 = phi double [ 0.000000e+00, %59 ], [ %207, %225 ]
  %87 = phi float [ 0.000000e+00, %59 ], [ %206, %225 ]
  %88 = call fastcc float @_ZL3sinf(float %87) #8
  %89 = fmul float %88, %41
  %90 = fmul float %89, %33
  %91 = fsub float %90, %42
  %92 = fmul float %32, %89
  %93 = fadd float %92, %60
  %94 = fadd float %93, 5.000000e+00
  %95 = fdiv float 1.000000e+00, %94
  %96 = icmp sge i1 %47, %47
  %97 = icmp sle i1 %47, %47
  %98 = xor i1 %97, true
  %99 = xor i1 %96, %98
  %100 = and i1 %99, %96
  br i1 %100, label %101, label %111

101:                                              ; preds = %85
  %102 = sub i32 %27, %27
  %103 = mul i1 %9, %9
  %104 = add i32 %30, %30
  %105 = mul i1 %44, %44
  %106 = sdiv i1 %10, %10
  %107 = add i64 %25, %25
  %108 = add i1 %43, %43
  %109 = add i32 %6, %6
  %110 = mul i64 %23, %23
  br label %111

111:                                              ; preds = %85, %101
  %112 = call fastcc float @_ZL3cosf(float %87) #8
  %113 = fmul float %95, 3.000000e+01
  %114 = fmul float %41, %112
  %115 = fmul float %114, %34
  %116 = fmul float %91, %35
  %117 = fadd float %115, %116
  %118 = fmul float %113, %117
  %119 = fadd float %118, %28
  %120 = fptosi float %119 to i32
  %121 = fmul float %95, 1.500000e+01
  %122 = fmul float %114, %35
  %123 = fmul float %91, %34
  %124 = fsub float %122, %123
  %125 = fmul float %121, %124
  %126 = fadd float %125, %31
  %127 = fptosi float %126 to i32
  %128 = fmul float %88, %39
  %129 = fmul float %128, %33
  %130 = fsub float %42, %129
  %131 = fmul float %130, %34
  %132 = fmul float %128, %32
  %133 = fsub float %131, %132
  %134 = fsub float %133, %60
  %135 = fmul float %39, %112
  %136 = fmul float %135, %35
  %137 = fsub float %134, %136
  %138 = fmul float %137, 8.000000e+00
  %139 = fptosi float %138 to i32
  %140 = icmp slt i32 %127, %5
  %141 = icmp sgt i32 %127, 0
  %142 = and i1 %140, %141
  %143 = icmp sgt i32 %120, 0
  %144 = select i1 %142, i1 %143, i1 false
  %145 = icmp slt i32 %120, %6
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %147, label %204

147:                                              ; preds = %111
  %148 = mul nsw i32 %127, %6
  %149 = add nsw i32 %148, %120
  %150 = icmp sge i1 %12, %12
  %151 = icmp sle i1 %12, %12
  %152 = xor i1 %150, true
  %153 = or i1 %152, %151
  %154 = xor i1 %150, true
  %155 = sub i1 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %147
  %157 = sdiv i1 %45, %45
  %158 = mul i1 %43, %43
  %159 = sdiv i32 %139, %139
  %160 = mul i32 %22, %22
  %161 = mul i32 %29, %29
  %162 = add i32 %6, %6
  %163 = mul i32 %5, %5
  %164 = add i1 %100, %100
  br label %165

165:                                              ; preds = %147, %156
  %166 = sext i32 %149 to i64
  %167 = getelementptr inbounds float, float* %3, i64 %166
  %168 = load float, float* %167, align 4, !tbaa !13
  %169 = fcmp ogt float %95, %168
  br i1 %169, label %170, label %204

170:                                              ; preds = %165
  store float %95, float* %167, align 4, !tbaa !13
  %171 = icmp eq i32 %139, 0
  %172 = icmp ne i32 %139, 0
  %173 = xor i1 %171, true
  %174 = and i1 %173, false
  %175 = and i1 %171, true
  %176 = or i1 %174, %175
  %177 = xor i1 %172, true
  %178 = and i1 %177, false
  %179 = and i1 %172, true
  %180 = or i1 %178, %179
  %181 = xor i1 %176, %180
  %182 = xor i1 %171, true
  %183 = xor i1 %172, true
  %184 = or i1 %182, %183
  %185 = xor i1 %184, true
  %186 = and i1 %185, true
  %187 = or i1 %181, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %170
  %189 = sub i1 %153, %153
  %190 = mul i1 %10, %10
  %191 = sdiv i1 %150, %150
  %192 = sdiv i1 %12, %12
  %193 = sdiv i32 %29, %29
  %194 = sub i1 %10, %10
  %195 = sub i1 %150, %150
  %196 = mul i32 %120, %120
  br label %197

197:                                              ; preds = %170, %188
  %198 = icmp sgt i32 %139, 0
  %199 = select i1 %198, i32 %139, i32 0
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %200
  %202 = load i8, i8* %201, align 1, !tbaa !10
  %203 = getelementptr inbounds i8, i8* %4, i64 %166
  store i8 %202, i8* %203, align 1, !tbaa !10
  br label %204

204:                                              ; preds = %197, %165, %111
  %205 = fadd double %86, 2.000000e-02
  %206 = fptrunc double %205 to float
  %207 = fpext float %206 to double
  %208 = fcmp olt double %207, 6.280000e+00
  %209 = icmp eq i32 %27, 0
  %210 = icmp ne i32 %27, 0
  %211 = xor i1 %210, true
  %212 = and i1 %209, %211
  %213 = add i1 %212, %210
  br i1 %213, label %214, label %225

214:                                              ; preds = %204
  %215 = mul i1 %8, %8
  %216 = sub i32 %127, %127
  %217 = sdiv i32 %139, %139
  %218 = sdiv i1 %146, %146
  %219 = sub i1 %46, %46
  %220 = sdiv i32 %22, %22
  %221 = mul i64 %23, %23
  %222 = mul i32 %5, %5
  %223 = mul i1 %96, %96
  %224 = sub i1 %9, %9
  br label %225

225:                                              ; preds = %204, %214
  br i1 %208, label %85, label %62, !llvm.loop !19
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

; Function Attrs: mustprogress nofree norecurse noreturn nounwind ssp uwtable
define i32 @main() local_unnamed_addr #6 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8
  store float 0.000000e+00, float* %1, align 4, !tbaa !13
  %4 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8
  store float 0.000000e+00, float* %2, align 4, !tbaa !13
  %5 = alloca [1760 x float], align 4
  %6 = alloca [1760 x i8], align 1
  %7 = getelementptr inbounds [1760 x i8], [1760 x i8]* %6, i64 0, i64 0
  %8 = getelementptr inbounds [1760 x float], [1760 x float]* %5, i64 0, i64 0
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %10

10:                                               ; preds = %27, %0
  %11 = load float, float* %1, align 4, !tbaa !13
  %12 = load float, float* %2, align 4, !tbaa !13
  call void @_Z6renderffiPfPcii(float %11, float %12, i32 1760, float* nonnull %8, i8* nonnull %7, i32 22, i32 80)
  %13 = icmp eq i32 %9, 0
  %14 = icmp ne i32 %9, 0
  %15 = and i1 %13, %14
  %16 = xor i1 %13, %14
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = sub i32 %9, %9
  %20 = add i32 %9, %9
  %21 = add i32 %9, %9
  %22 = sdiv i32 %9, %9
  %23 = add i32 %9, %9
  %24 = sdiv i32 %9, %9
  %25 = sub i32 %9, %9
  %26 = mul i32 %9, %9
  br label %27

27:                                               ; preds = %10, %18
  call void @_Z7displayPKcRfS1_(i8* nonnull %7, float* nonnull align 4 dereferenceable(4) %1, float* nonnull align 4 dereferenceable(4) %2)
  br label %10, !llvm.loop !20
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #7

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nofree norecurse noreturn nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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

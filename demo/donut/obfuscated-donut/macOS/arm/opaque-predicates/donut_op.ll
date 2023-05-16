; ModuleID = '../../../../donut.ll'
source_filename = "donut_deobfuscated.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@Z_SIZE = local_unnamed_addr constant i64 1760, align 8
@B_SIZE = local_unnamed_addr constant i64 1760, align 8
@WAIT_TIME = local_unnamed_addr constant i64 30000, align 8
@.str = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@CHARS = local_unnamed_addr global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @update(float* %0, float* %1) local_unnamed_addr #0 {
  %3 = icmp eq float* %0, null
  %4 = icmp eq float* %1, null
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = load float, float* %0, align 4, !tbaa !10
  %8 = fpext float %7 to double
  %9 = fadd double %8, 4.000000e-05
  %10 = fptrunc double %9 to float
  store float %10, float* %0, align 4, !tbaa !10
  %11 = load float, float* %1, align 4, !tbaa !10
  %12 = fpext float %11 to double
  %13 = fadd double %12, 2.000000e-05
  %14 = fptrunc double %13 to float
  store float %14, float* %1, align 4, !tbaa !10
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %6 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @render(float* %0, float* %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #1 {
  %5 = mul i64 %3, 2
  %6 = mul i64 %3, 2
  %7 = add i64 2, %6
  %8 = mul i64 %5, %7
  %9 = srem i64 %8, 4
  %10 = icmp eq i64 %9, 0
  %11 = mul i64 %3, %3
  %12 = add i64 %11, %3
  %13 = srem i64 %12, 2
  %14 = icmp eq i64 %13, 0
  %15 = and i1 %10, %14
  %16 = xor i1 %10, %14
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = sdiv i32 126, 111
  %20 = mul i32 2, 70
  %21 = mul i32 28, 27
  %22 = mul i32 105, 26
  %23 = mul i32 115, 99
  %24 = sub i32 105, 115
  %25 = sdiv i32 88, 2
  br label %26

26:                                               ; preds = %4, %18
  %27 = icmp eq i64 %3, 1760
  br i1 %27, label %55, label %191

28:                                               ; preds = %186
  %29 = icmp eq i64 %190, 1761
  %30 = mul i64 %13, %13
  %31 = add i64 %30, %13
  %32 = mul i64 %31, 3
  %33 = srem i64 %32, 2
  %34 = icmp eq i64 %33, 0
  %35 = mul i64 %13, %13
  %36 = add i64 %35, %13
  %37 = srem i64 %36, 2
  %38 = icmp eq i64 %37, 0
  %39 = xor i1 %34, true
  %40 = or i1 %39, %38
  %41 = xor i1 %34, true
  %42 = sub i1 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %28
  %44 = sdiv i32 67, 106
  %45 = sdiv i32 1, 88
  %46 = sdiv i32 100, 123
  %47 = sub i32 29, 117
  %48 = sdiv i32 93, 12
  %49 = sdiv i32 11, 23
  %50 = sub i32 89, 49
  %51 = sub i32 40, 57
  %52 = add i32 109, 37
  %53 = add i32 82, 87
  br label %54

54:                                               ; preds = %28, %43
  br i1 %29, label %191, label %55, !llvm.loop !14

55:                                               ; preds = %54, %26
  %56 = phi i64 [ %190, %54 ], [ 0, %26 ]
  %57 = trunc i64 %56 to i32
  %58 = urem i32 %57, 80
  %59 = icmp eq i32 %58, 0
  %60 = and i64 %3, 1
  %61 = icmp eq i64 %60, 0
  %62 = mul i64 %3, %3
  %63 = add i64 %62, %3
  %64 = mul i64 %63, 3
  %65 = srem i64 %64, 2
  %66 = icmp eq i64 %65, 0
  %67 = xor i1 %61, true
  %68 = and i1 %67, true
  %69 = and i1 %61, false
  %70 = or i1 %68, %69
  %71 = xor i1 %66, true
  %72 = srem i64 %3, 2
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %131

74:                                               ; preds = %55
  %75 = xor i1 %71, true
  %76 = or i1 %75, false
  %77 = xor i1 %76, true
  %78 = and i1 %77, true
  %79 = xor i1 %66, true
  %80 = and i1 %79, %66
  %81 = xor i1 %80, true
  %82 = and i1 %78, %81
  %83 = add i1 %82, %80
  %84 = xor i1 %70, true
  %85 = and i1 %84, %83
  %86 = xor i1 %83, true
  %87 = and i1 %70, %86
  %88 = or i1 %85, %87
  %89 = xor i1 %61, true
  %90 = and i1 %89, true
  %91 = and i1 %61, false
  %92 = or i1 %90, %91
  %93 = or i1 %66, true
  %94 = and i1 %66, true
  %95 = sub i1 %93, %94
  %96 = xor i1 %92, true
  %97 = and i1 %96, true
  %98 = and i1 %92, false
  %99 = or i1 %97, %98
  %100 = xor i1 %95, true
  %101 = and i1 %100, true
  %102 = and i1 %95, false
  %103 = or i1 %101, %102
  %104 = xor i1 %99, %103
  %105 = xor i1 %92, true
  %106 = xor i1 %95, true
  %107 = or i1 %105, %106
  %108 = xor i1 %107, true
  %109 = and i1 %108, true
  %110 = or i1 %104, %109
  %111 = xor i1 %110, true
  %112 = xor i1 %111, false
  %113 = xor i1 %112, true
  %114 = or i1 %113, true
  %115 = xor i1 %112, true
  %116 = sub i1 %114, %115
  %117 = xor i1 %116, true
  %118 = and i1 %88, %117
  %119 = add i1 %118, %116
  %120 = or i1 %59, true
  %121 = and i1 %59, true
  %122 = sub i1 %120, %121
  %123 = xor i1 %119, true
  %124 = and i1 %122, %123
  %125 = add i1 %124, %119
  %126 = or i1 %59, true
  %127 = and i1 %59, true
  %128 = sub i1 %126, %127
  %129 = sub i1 false, %128
  %130 = add i1 %125, %129
  br label %146

131:                                              ; preds = %55
  %132 = and i1 %71, true
  %133 = and i1 %66, false
  %134 = or i1 %132, %133
  %135 = xor i1 %70, %134
  %136 = xor i1 %61, true
  %137 = xor i1 %66, true
  %138 = or i1 %136, %137
  %139 = xor i1 %138, true
  %140 = and i1 %139, true
  %141 = or i1 %135, %140
  %142 = xor i1 %59, true
  %143 = or i1 %142, %141
  %144 = xor i1 %59, true
  %145 = sub i1 %143, %144
  br label %146

146:                                              ; preds = %131, %74
  %147 = phi i1 [ %132, %131 ], [ %78, %74 ]
  %148 = phi i1 [ %133, %131 ], [ %80, %74 ]
  %149 = phi i1 [ %134, %131 ], [ %83, %74 ]
  %150 = phi i1 [ %135, %131 ], [ %88, %74 ]
  %151 = phi i1 [ %136, %131 ], [ %92, %74 ]
  %152 = phi i1 [ %137, %131 ], [ %95, %74 ]
  %153 = phi i1 [ %138, %131 ], [ %110, %74 ]
  %154 = phi i1 [ %139, %131 ], [ %112, %74 ]
  %155 = phi i1 [ %140, %131 ], [ %116, %74 ]
  %156 = phi i1 [ %141, %131 ], [ %119, %74 ]
  %157 = phi i1 [ %142, %131 ], [ %122, %74 ]
  %158 = phi i1 [ %143, %131 ], [ %125, %74 ]
  %159 = phi i1 [ %144, %131 ], [ %128, %74 ]
  %160 = phi i1 [ %145, %131 ], [ %130, %74 ]
  br i1 %160, label %170, label %161

161:                                              ; preds = %146
  %162 = getelementptr inbounds i8, i8* %2, i64 %56
  %163 = load i8, i8* %162, align 1, !tbaa !17
  %164 = sext i8 %163 to i32
  %165 = srem i64 %8, 2
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %169

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %167
  br label %170

170:                                              ; preds = %169, %146
  %171 = phi i32 [ %164, %169 ], [ 10, %146 ]
  %172 = srem i64 %3, 2
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = call i32 @putchar(i32 %171)
  %176 = call i32 @update(float* %0, float* %1)
  %177 = icmp eq i32 %176, 0
  %178 = add nuw nsw i64 %56, 1
  br label %186

179:                                              ; preds = %170
  %180 = call i32 @putchar(i32 %171)
  %181 = call i32 @update(float* %0, float* %1)
  %182 = icmp eq i32 %181, 0
  %183 = sub i64 %56, 5162774914441267808
  %184 = add i64 %183, 1
  %185 = add i64 %184, 5162774914441267808
  br label %186

186:                                              ; preds = %179, %174
  %187 = phi i32 [ %180, %179 ], [ %175, %174 ]
  %188 = phi i32 [ %181, %179 ], [ %176, %174 ]
  %189 = phi i1 [ %182, %179 ], [ %177, %174 ]
  %190 = phi i64 [ %185, %179 ], [ %178, %174 ]
  br i1 %189, label %28, label %191

191:                                              ; preds = %186, %54, %26
  %192 = phi i32 [ 2, %26 ], [ %188, %186 ], [ 0, %54 ]
  %193 = and i64 %11, 1
  %194 = icmp eq i64 %193, 1
  %195 = mul i64 %11, %11
  %196 = add i64 %195, %11
  %197 = srem i64 %196, 2
  %198 = icmp eq i64 %197, 0
  %199 = and i1 %194, %198
  %200 = xor i1 %194, %198
  %201 = or i1 %199, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %191
  %203 = sub i32 9, 94
  %204 = mul i32 29, 11
  %205 = mul i32 78, 80
  %206 = add i32 10, 117
  %207 = sub i32 90, 122
  %208 = mul i32 27, 1
  %209 = sub i32 13, 83
  %210 = add i32 20, 53
  %211 = sub i32 111, 83
  br label %212

212:                                              ; preds = %191, %202
  ret i32 %192
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @clear(i8* %0, i64 %1, float* %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i8* %0, null
  %6 = icmp eq float* %2, null
  %7 = mul i64 %1, 2
  %8 = mul i64 %1, 2
  %9 = add i64 2, %8
  %10 = mul i64 %7, %9
  %11 = srem i64 %10, 4
  %12 = icmp eq i64 %11, 0
  %13 = mul i64 %1, %1
  %14 = add i64 %13, %1
  %15 = srem i64 %14, 2
  %16 = icmp eq i64 %15, 0
  %17 = xor i1 %12, true
  %18 = xor i1 %16, true
  %19 = or i1 %17, %18
  %20 = xor i1 %19, true
  %21 = and i1 %20, true
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = sdiv i32 115, 107
  %24 = mul i32 120, 46
  %25 = sdiv i32 56, 100
  %26 = add i32 52, 56
  %27 = sdiv i32 57, 43
  %28 = sdiv i32 79, 3
  %29 = sdiv i32 33, 26
  %30 = mul i32 26, 46
  %31 = add i32 124, 66
  %32 = sub i32 119, 93
  br label %33

33:                                               ; preds = %4, %22
  %34 = select i1 %5, i1 true, i1 %6
  br i1 %34, label %70, label %35

35:                                               ; preds = %33
  %36 = icmp ne i64 %1, 1760
  %37 = icmp ne i64 %3, 7040
  %38 = srem i64 %7, 2
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = select i1 %36, i1 true, i1 %37
  br label %44

42:                                               ; preds = %35
  %43 = select i1 %36, i1 true, i1 %37
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i1 [ %43, %42 ], [ %41, %40 ]
  br i1 %45, label %70, label %46

46:                                               ; preds = %44
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #10
  %47 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %47, i8 0, i64 7040, i1 false) #10
  %48 = mul i64 %14, 2
  %49 = mul i64 %14, 2
  %50 = add i64 2, %49
  %51 = mul i64 %48, %50
  %52 = srem i64 %51, 4
  %53 = icmp eq i64 %52, 0
  %54 = mul i64 %14, %14
  %55 = mul i64 %54, %14
  %56 = add i64 %55, %14
  %57 = srem i64 %56, 2
  %58 = icmp eq i64 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %53, %59
  %61 = and i1 %60, %53
  br i1 %61, label %62, label %69

62:                                               ; preds = %46
  %63 = sub i32 19, 87
  %64 = mul i32 69, 12
  %65 = sdiv i32 67, 62
  %66 = add i32 28, 95
  %67 = sub i32 96, 7
  %68 = mul i32 110, 30
  br label %69

69:                                               ; preds = %46, %62
  br label %70

70:                                               ; preds = %69, %44, %33
  %71 = phi i32 [ 0, %69 ], [ 2, %33 ], [ 2, %44 ]
  %72 = and i64 %14, 1
  %73 = icmp eq i64 %72, 0
  %74 = mul i64 %14, %14
  %75 = add i64 %74, %14
  %76 = mul i64 %75, 3
  %77 = srem i64 %76, 2
  %78 = icmp eq i64 %77, 0
  %79 = xor i1 %73, true
  %80 = and i1 %79, true
  %81 = and i1 %73, false
  %82 = or i1 %80, %81
  %83 = xor i1 %78, true
  %84 = and i1 %83, true
  %85 = and i1 %78, false
  %86 = or i1 %84, %85
  %87 = xor i1 %82, %86
  %88 = xor i1 %73, true
  %89 = xor i1 %78, true
  %90 = or i1 %88, %89
  %91 = xor i1 %90, true
  %92 = and i1 %91, true
  %93 = or i1 %87, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %70
  %95 = add i32 31, 71
  %96 = mul i32 18, 109
  %97 = sdiv i32 2, 122
  %98 = mul i32 7, 45
  %99 = sub i32 112, 107
  %100 = add i32 10, 15
  %101 = sub i32 4, 101
  %102 = mul i32 106, 56
  %103 = mul i32 38, 110
  %104 = sdiv i32 86, 92
  br label %105

105:                                              ; preds = %70, %94
  ret i32 %71
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca [1760 x float], align 4
  %4 = alloca [1760 x i8], align 1
  %5 = bitcast float* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10
  store float 0.000000e+00, float* %1, align 4, !tbaa !10
  %6 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10
  store float 0.000000e+00, float* %2, align 4, !tbaa !10
  %7 = bitcast [1760 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %7) #10
  %8 = getelementptr inbounds [1760 x i8], [1760 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %8) #10
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [1760 x float], [1760 x float]* %3, i64 0, i64 0
  %11 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %51, %0
  %14 = phi i32 [ %11, %0 ], [ %21, %51 ]
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  %15 = srem i32 %9, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  br label %19

18:                                               ; preds = %13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  br label %19

19:                                               ; preds = %18, %17
  ret i32 %14

20:                                               ; preds = %51, %0
  call fastcc void @wait()
  %21 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %9, 1
  %24 = icmp eq i32 %23, 1
  %25 = mul i32 %9, %9
  %26 = add i32 %25, %9
  %27 = srem i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = xor i1 %24, true
  %30 = and i1 %29, false
  %31 = and i1 %24, true
  %32 = or i1 %30, %31
  %33 = xor i1 %28, true
  %34 = and i1 %33, false
  %35 = and i1 %28, true
  %36 = or i1 %34, %35
  %37 = xor i1 %32, %36
  %38 = xor i1 %24, true
  %39 = xor i1 %28, true
  %40 = or i1 %38, %39
  %41 = xor i1 %40, true
  %42 = and i1 %41, true
  %43 = or i1 %37, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %20
  %45 = mul i32 50, 75
  %46 = add i32 89, 107
  %47 = mul i32 63, 10
  %48 = add i32 82, 26
  %49 = sub i32 63, 91
  %50 = sub i32 65, 113
  br label %51

51:                                               ; preds = %20, %44
  %52 = mul i32 %9, 2
  %53 = mul i32 %9, 2
  %54 = add i32 2, %53
  %55 = mul i32 %52, %54
  %56 = srem i32 %55, 4
  %57 = icmp eq i32 %56, 0
  %58 = mul i32 %9, %9
  %59 = add i32 %58, %9
  %60 = srem i32 %59, 2
  %61 = icmp eq i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %57, %62
  %64 = and i1 %63, %57
  %65 = xor i1 %22, true
  %66 = or i1 %65, %64
  %67 = xor i1 %22, true
  %68 = sub i1 %66, %67
  br i1 %68, label %20, label %13, !llvm.loop !18
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %127

7:                                                ; preds = %4
  %8 = srem i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %12 = icmp eq i32 %11, 0
  br label %16

13:                                               ; preds = %7
  %14 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %14, %13 ], [ %11, %10 ]
  %18 = phi i1 [ %15, %13 ], [ %12, %10 ]
  br i1 %18, label %31, label %90

19:                                               ; preds = %67
  %20 = srem i32 %17, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call fastcc i32 @inner_loop(float %69, float* %0, float* %1, i8* %2, float* %3)
  %24 = icmp eq i32 %23, 0
  br label %28

25:                                               ; preds = %19
  %26 = call fastcc i32 @inner_loop(float %69, float* %0, float* %1, i8* %2, float* %3)
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %26, %25 ], [ %23, %22 ]
  %30 = phi i1 [ %27, %25 ], [ %24, %22 ]
  br i1 %30, label %31, label %90, !llvm.loop !19

31:                                               ; preds = %28, %16
  %32 = phi i32 [ %29, %28 ], [ %17, %16 ]
  %33 = phi double [ %70, %28 ], [ 0.000000e+00, %16 ]
  %34 = and i32 %8, 1
  %35 = icmp eq i32 %34, 0
  %36 = mul i32 %8, %8
  %37 = add i32 %36, %8
  %38 = mul i32 %37, 3
  %39 = srem i32 %38, 2
  %40 = icmp eq i32 %39, 0
  %41 = xor i1 %35, true
  %42 = and i1 %41, false
  %43 = and i1 %35, true
  %44 = or i1 %42, %43
  %45 = xor i1 %40, true
  %46 = and i1 %45, false
  %47 = and i1 %40, true
  %48 = or i1 %46, %47
  %49 = xor i1 %44, %48
  %50 = xor i1 %35, true
  %51 = xor i1 %40, true
  %52 = or i1 %50, %51
  %53 = xor i1 %52, true
  %54 = and i1 %53, true
  %55 = or i1 %49, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %31
  %57 = sub i32 0, 89
  %58 = mul i32 22, 124
  %59 = add i32 122, 77
  %60 = mul i32 4, 41
  %61 = add i32 72, 116
  %62 = sub i32 71, 111
  %63 = sdiv i32 101, 60
  %64 = sdiv i32 53, 52
  %65 = mul i32 12, 84
  %66 = sdiv i32 85, 121
  br label %67

67:                                               ; preds = %31, %56
  %68 = fadd double %33, 7.000000e-02
  %69 = fptrunc double %68 to float
  %70 = fpext float %69 to double
  %71 = fcmp olt double %70, 6.280000e+00
  %72 = mul i32 %17, 2
  %73 = mul i32 %17, 2
  %74 = add i32 2, %73
  %75 = mul i32 %72, %74
  %76 = srem i32 %75, 4
  %77 = icmp eq i32 %76, 0
  %78 = mul i32 %17, %17
  %79 = add i32 %78, %17
  %80 = srem i32 %79, 2
  %81 = icmp eq i32 %80, 0
  %82 = xor i1 %77, true
  %83 = xor i1 %81, true
  %84 = or i1 %82, %83
  %85 = xor i1 %84, true
  %86 = and i1 %85, true
  %87 = xor i1 %86, true
  %88 = xor i1 %71, %87
  %89 = and i1 %88, %71
  br i1 %89, label %19, label %90, !llvm.loop !19

90:                                               ; preds = %67, %28, %16
  %91 = phi i32 [ %17, %16 ], [ %32, %67 ], [ %29, %28 ]
  %92 = phi i1 [ true, %16 ], [ %71, %28 ], [ %71, %67 ]
  %93 = srem i32 %17, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %97

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %95
  br i1 %92, label %127, label %98

98:                                               ; preds = %97
  %99 = mul i32 %8, %8
  %100 = add i32 %99, %8
  %101 = mul i32 %100, 3
  %102 = srem i32 %101, 2
  %103 = icmp eq i32 %102, 0
  %104 = mul i32 %8, %8
  %105 = add i32 %104, %8
  %106 = srem i32 %105, 2
  %107 = icmp eq i32 %106, 0
  %108 = xor i1 %103, true
  %109 = xor i1 %107, true
  %110 = or i1 %108, %109
  %111 = xor i1 %110, true
  %112 = and i1 %111, true
  br i1 %112, label %113, label %124

113:                                              ; preds = %98
  %114 = sdiv i32 20, 17
  %115 = sdiv i32 98, 90
  %116 = sdiv i32 24, 96
  %117 = sdiv i32 62, 8
  %118 = add i32 59, 44
  %119 = add i32 63, 40
  %120 = sdiv i32 106, 59
  %121 = mul i32 71, 36
  %122 = add i32 2, 77
  %123 = mul i32 13, 95
  br label %124

124:                                              ; preds = %98, %113
  %125 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %126 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  br label %127

127:                                              ; preds = %124, %97, %4
  %128 = phi i32 [ %91, %97 ], [ %5, %4 ], [ %126, %124 ]
  %129 = srem i32 %5, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %133

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %131
  ret i32 %128
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #5 {
  %1 = call i32 @"\01_usleep"(i32 30000) #10
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #6 {
  %6 = icmp eq float* %1, null
  %7 = icmp eq float* %2, null
  %8 = select i1 %6, i1 true, i1 %7
  %9 = icmp eq i8* %3, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq float* %4, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %133, label %13

13:                                               ; preds = %5
  %14 = fpext float %0 to double
  %15 = call double @llvm.cos.f64(double %14)
  %16 = fptrunc double %15 to float
  %17 = call double @llvm.sin.f64(double %14)
  %18 = fptrunc double %17 to float
  %19 = fadd float %16, 2.000000e+00
  br label %20

20:                                               ; preds = %131, %13
  %21 = phi double [ 0.000000e+00, %13 ], [ %124, %131 ]
  %22 = call double @llvm.sin.f64(double %21)
  %23 = fptrunc double %22 to float
  %24 = load float, float* %1, align 4, !tbaa !10
  %25 = fpext float %24 to double
  %26 = call double @llvm.sin.f64(double %25)
  %27 = fptrunc double %26 to float
  %28 = call double @llvm.cos.f64(double %25)
  %29 = fptrunc double %28 to float
  %30 = fmul float %19, %23
  %31 = fmul float %30, %27
  %32 = fmul float %18, %29
  %33 = fadd float %31, %32
  %34 = fadd float %33, 5.000000e+00
  %35 = fdiv float 1.000000e+00, %34
  %36 = call double @llvm.cos.f64(double %21)
  %37 = fptrunc double %36 to float
  %38 = load float, float* %2, align 4, !tbaa !10
  %39 = fpext float %38 to double
  %40 = call double @llvm.cos.f64(double %39)
  %41 = fptrunc double %40 to float
  %42 = call double @llvm.sin.f64(double %39)
  %43 = fptrunc double %42 to float
  %44 = fmul float %30, %29
  %45 = fmul float %18, %27
  %46 = fsub float %44, %45
  %47 = fmul float %35, 3.000000e+01
  %48 = fmul float %19, %37
  %49 = fmul float %48, %41
  %50 = fmul float %46, %43
  %51 = fsub float %49, %50
  %52 = fmul float %51, %47
  %53 = fadd float %52, 4.000000e+01
  %54 = fptosi float %53 to i32
  %55 = fmul float %35, 1.500000e+01
  %56 = fmul float %48, %43
  %57 = fmul float %46, %41
  %58 = fadd float %56, %57
  %59 = fmul float %58, %55
  %60 = fadd float %59, 1.200000e+01
  %61 = fptosi float %60 to i32
  %62 = fmul float %16, %23
  %63 = fmul float %62, %29
  %64 = fsub float %45, %63
  %65 = fmul float %64, %41
  %66 = fmul float %62, %27
  %67 = fsub float %65, %66
  %68 = fsub float %67, %32
  %69 = fmul float %16, %37
  %70 = fmul float %69, %43
  %71 = fsub float %68, %70
  %72 = fmul float %71, 8.000000e+00
  %73 = fptosi float %72 to i32
  %74 = add i32 %61, -1
  %75 = icmp ult i32 %74, 21
  %76 = icmp sgt i32 %54, 0
  %77 = select i1 %75, i1 %76, i1 false
  %78 = icmp slt i32 %54, 80
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %121

80:                                               ; preds = %20
  %81 = mul nsw i32 %61, 80
  %82 = add nsw i32 %81, %54
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %4, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !10
  %86 = srem i32 %61, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = fcmp ogt float %35, %85
  br label %92

90:                                               ; preds = %80
  %91 = fcmp ogt float %35, %85
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i1 [ %91, %90 ], [ %89, %88 ]
  br i1 %93, label %94, label %121

94:                                               ; preds = %92
  store float %35, float* %84, align 4, !tbaa !10
  %95 = srem i32 %74, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i8*, i8** @CHARS, align 8, !tbaa !20
  %99 = icmp sgt i32 %73, 0
  %100 = select i1 %99, i32 %73, i32 0
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1, !tbaa !17
  %104 = getelementptr inbounds i8, i8* %3, i64 %83
  store i8 %103, i8* %104, align 1, !tbaa !17
  br label %113

105:                                              ; preds = %94
  %106 = load i8*, i8** @CHARS, align 8, !tbaa !20
  %107 = icmp sgt i32 %73, 0
  %108 = select i1 %107, i32 %73, i32 0
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = load i8, i8* %110, align 1, !tbaa !17
  %112 = getelementptr inbounds i8, i8* %3, i64 %83
  store i8 %111, i8* %112, align 1, !tbaa !17
  br label %113

113:                                              ; preds = %105, %97
  %114 = phi i8* [ %106, %105 ], [ %98, %97 ]
  %115 = phi i1 [ %107, %105 ], [ %99, %97 ]
  %116 = phi i32 [ %108, %105 ], [ %100, %97 ]
  %117 = phi i64 [ %109, %105 ], [ %101, %97 ]
  %118 = phi i8* [ %110, %105 ], [ %102, %97 ]
  %119 = phi i8 [ %111, %105 ], [ %103, %97 ]
  %120 = phi i8* [ %112, %105 ], [ %104, %97 ]
  br label %121

121:                                              ; preds = %113, %92, %20
  %122 = fadd double %21, 2.000000e-02
  %123 = fptrunc double %122 to float
  %124 = fpext float %123 to double
  %125 = srem i32 %61, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = fcmp olt double %124, 6.280000e+00
  br label %131

129:                                              ; preds = %121
  %130 = fcmp olt double %124, 6.280000e+00
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i1 [ %130, %129 ], [ %128, %127 ]
  br i1 %132, label %20, label %133, !llvm.loop !22

133:                                              ; preds = %131, %5
  %134 = phi i32 [ 2, %5 ], [ 0, %131 ]
  ret i32 %134
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #7

declare i32 @"\01_usleep"(i32) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nofree noinline nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }

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
!11 = !{!"float", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!12, !12, i64 0}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !15, !16}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !12, i64 0}
!22 = distinct !{!22, !15, !16}

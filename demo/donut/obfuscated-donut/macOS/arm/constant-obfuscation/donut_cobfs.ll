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
  %5 = icmp eq i64 %3, 1760
  br i1 %5, label %8, label %146

6:                                                ; preds = %92
  %7 = icmp eq i64 %145, 1761
  br i1 %7, label %146, label %8, !llvm.loop !14

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %145, %6 ], [ 0, %4 ]
  %10 = trunc i64 %9 to i32
  %11 = and i64 %3, -4615597765211930449
  %12 = xor i64 %3, -1
  %13 = or i64 4615597765211930448, %12
  %14 = xor i64 %13, -1
  %15 = and i64 %14, -1
  %16 = or i64 %3, -3737428021896819573
  %17 = xor i64 %3, -1
  %18 = and i64 -3737428021896819573, %17
  %19 = add i64 %18, %3
  %20 = or i64 %3, 2188308338607097436
  %21 = and i64 2188308338607097436, %3
  %22 = xor i64 2188308338607097436, %3
  %23 = or i64 %21, %22
  %24 = xor i64 %20, %15
  %25 = xor i64 %24, -194054387891323793
  %26 = xor i64 %25, %23
  %27 = xor i64 %26, %19
  %28 = xor i64 %27, %16
  %29 = xor i64 %28, %11
  %30 = or i64 %3, -1719902424072007488
  %31 = xor i64 %3, -1
  %32 = and i64 %31, 1030735487551328565
  %33 = and i64 %3, -1030735487551328566
  %34 = or i64 %32, %33
  %35 = xor i64 -1843021539977985547, %34
  %36 = xor i64 %3, -1
  %37 = or i64 1719902424072007487, %36
  %38 = xor i64 %37, -1
  %39 = and i64 %38, -1
  %40 = or i64 %35, %39
  %41 = and i64 %3, -2323770336143820359
  %42 = or i64 2323770336143820358, %3
  %43 = sub i64 %42, 2323770336143820358
  %44 = and i64 %3, 7843997890375515758
  %45 = or i64 -7843997890375515759, %3
  %46 = sub i64 %45, -7843997890375515759
  %47 = xor i64 %41, %44
  %48 = xor i64 %47, %46
  %49 = xor i64 %48, %30
  %50 = xor i64 %49, %43
  %51 = xor i64 %50, %40
  %52 = xor i64 %51, -4691908522550834000
  %53 = mul i64 %29, %52
  %54 = trunc i64 %53 to i32
  %55 = urem i32 %10, %54
  %56 = and i64 %3, -4108998991119859747
  %57 = or i64 4108998991119859746, %3
  %58 = sub i64 %57, 4108998991119859746
  %59 = or i64 %3, -682260327325817974
  %60 = xor i64 %3, -1
  %61 = and i64 -682260327325817974, %60
  %62 = add i64 %61, %3
  %63 = and i64 %3, 8749879632906602669
  %64 = or i64 -8749879632906602670, %3
  %65 = sub i64 %64, -8749879632906602670
  %66 = xor i64 %63, -3663044400819600995
  %67 = xor i64 %66, %58
  %68 = xor i64 %67, %62
  %69 = xor i64 %68, %56
  %70 = xor i64 %69, %65
  %71 = xor i64 %70, %59
  %72 = add i64 %3, 7471595866808069105
  %73 = and i64 7471595866808069105, %3
  %74 = or i64 7471595866808069105, %3
  %75 = add i64 %73, %74
  %76 = and i64 %3, 8148409858484972111
  %77 = xor i64 %3, -1
  %78 = or i64 -8148409858484972112, %77
  %79 = xor i64 %78, -1
  %80 = and i64 %79, -1
  %81 = xor i64 %75, %76
  %82 = xor i64 %81, 0
  %83 = xor i64 %82, %80
  %84 = xor i64 %83, %72
  %85 = mul i64 %71, %84
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %55, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %8
  %89 = getelementptr inbounds i8, i8* %2, i64 %9
  %90 = load i8, i8* %89, align 1, !tbaa !17
  %91 = sext i8 %90 to i32
  br label %92

92:                                               ; preds = %88, %8
  %93 = phi i32 [ %91, %88 ], [ 10, %8 ]
  %94 = call i32 @putchar(i32 %93)
  %95 = call i32 @update(float* %0, float* %1)
  %96 = icmp eq i32 %95, 0
  %97 = sext i32 %10 to i64
  %98 = add i64 %97, 7258628876643956281
  %99 = add i64 -4233585756980238049, %97
  %100 = add i64 %99, -6954529440085357286
  %101 = sext i32 %55 to i64
  %102 = or i64 %101, 8891273241618036886
  %103 = xor i64 %101, -1
  %104 = and i64 8891273241618036886, %103
  %105 = add i64 %104, %101
  %106 = sext i32 %10 to i64
  %107 = or i64 %106, -4853773552978460301
  %108 = and i64 -4853773552978460301, %106
  %109 = xor i64 -4853773552978460301, %106
  %110 = or i64 %108, %109
  %111 = xor i64 %107, %110
  %112 = xor i64 %111, 9140159972167469611
  %113 = xor i64 %112, %105
  %114 = xor i64 %113, %98
  %115 = xor i64 %114, %102
  %116 = xor i64 %115, %100
  %117 = add i64 %3, -7024420538719542845
  %118 = xor i64 -7024420538719542845, %3
  %119 = and i64 -7024420538719542845, %3
  %120 = mul i64 2, %119
  %121 = add i64 %118, %120
  %122 = sext i32 %55 to i64
  %123 = or i64 %122, 3718771574815259118
  %124 = and i64 3718771574815259118, %122
  %125 = xor i64 3718771574815259118, %122
  %126 = or i64 %124, %125
  %127 = or i64 %3, -7525585516805768071
  %128 = xor i64 %3, -1
  %129 = and i64 %128, 7842814932380934829
  %130 = and i64 %3, -7842814932380934830
  %131 = or i64 %129, %130
  %132 = xor i64 -335243874215239980, %131
  %133 = xor i64 %3, -1
  %134 = or i64 7525585516805768070, %133
  %135 = xor i64 %134, -1
  %136 = and i64 %135, -1
  %137 = or i64 %132, %136
  %138 = xor i64 %137, %127
  %139 = xor i64 %138, %123
  %140 = xor i64 %139, 1607582027990901891
  %141 = xor i64 %140, %126
  %142 = xor i64 %141, %117
  %143 = xor i64 %142, %121
  %144 = mul i64 %116, %143
  %145 = add nuw nsw i64 %9, %144
  br i1 %96, label %6, label %146

146:                                              ; preds = %92, %6, %4
  %147 = phi i32 [ 2, %4 ], [ %95, %92 ], [ 0, %6 ]
  ret i32 %147
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
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %217, label %8

8:                                                ; preds = %4
  %9 = add i64 %3, -8181966200882126186
  %10 = and i64 -8181966200882126186, %3
  %11 = or i64 -8181966200882126186, %3
  %12 = add i64 %10, %11
  %13 = or i64 %3, -5636928536642492947
  %14 = xor i64 %3, -1
  %15 = and i64 %14, -210989865556555870
  %16 = and i64 %3, 210989865556555869
  %17 = or i64 %15, %16
  %18 = xor i64 5537160938599359055, %17
  %19 = xor i64 %3, -1
  %20 = or i64 5636928536642492946, %19
  %21 = xor i64 %20, -1
  %22 = and i64 %21, -1
  %23 = or i64 %18, %22
  %24 = or i64 %1, -7504508474266592128
  %25 = xor i64 %1, -1
  %26 = and i64 %25, 5901793274057170006
  %27 = and i64 %1, -5901793274057170007
  %28 = or i64 %26, %27
  %29 = xor i64 -4161958296005525290, %28
  %30 = xor i64 %1, -1
  %31 = or i64 7504508474266592127, %30
  %32 = xor i64 %31, -1
  %33 = and i64 %32, -1
  %34 = or i64 %29, %33
  %35 = xor i64 %13, %34
  %36 = xor i64 %35, %12
  %37 = xor i64 %36, 798095403795803007
  %38 = xor i64 %37, %24
  %39 = xor i64 %38, %23
  %40 = xor i64 %39, %9
  %41 = add i64 %3, -228769179176967081
  %42 = sub i64 0, %3
  %43 = sub i64 -228769179176967081, %42
  %44 = or i64 %3, -3815690944667256297
  %45 = xor i64 %3, -1
  %46 = and i64 %45, 6418517248012441445
  %47 = and i64 %3, -6418517248012441446
  %48 = or i64 %46, %47
  %49 = xor i64 -7919344496937980558, %48
  %50 = xor i64 %3, -1
  %51 = or i64 3815690944667256296, %50
  %52 = xor i64 %51, -1
  %53 = and i64 %52, -1
  %54 = or i64 %49, %53
  %55 = xor i64 -1855004282207278816, %54
  %56 = xor i64 %55, %44
  %57 = xor i64 %56, %43
  %58 = xor i64 %57, %41
  %59 = mul i64 %40, %58
  %60 = icmp ne i64 %1, %59
  %61 = and i64 %1, 2610340897770868835
  %62 = or i64 -2610340897770868836, %1
  %63 = sub i64 %62, -2610340897770868836
  %64 = or i64 %3, -4894686121179439959
  %65 = and i64 -4894686121179439959, %3
  %66 = xor i64 -4894686121179439959, %3
  %67 = or i64 %65, %66
  %68 = xor i64 %63, %64
  %69 = xor i64 %68, 5481108556157652167
  %70 = xor i64 %69, %67
  %71 = xor i64 %70, %61
  %72 = and i64 %3, 6487597452182999863
  %73 = xor i64 %3, -1
  %74 = or i64 -6487597452182999864, %73
  %75 = xor i64 %74, -1
  %76 = and i64 %75, -1
  %77 = or i64 %3, -3225336900063962996
  %78 = xor i64 %3, -1
  %79 = and i64 %78, -1236697387449943862
  %80 = and i64 %3, 1236697387449943861
  %81 = or i64 %79, %80
  %82 = xor i64 4461681205198069830, %81
  %83 = xor i64 %3, -1
  %84 = or i64 3225336900063962995, %83
  %85 = xor i64 %84, -1
  %86 = and i64 %85, -1
  %87 = or i64 %82, %86
  %88 = xor i64 %87, %76
  %89 = xor i64 %88, %77
  %90 = xor i64 %89, 5414413776916088960
  %91 = xor i64 %90, %72
  %92 = mul i64 %71, %91
  %93 = icmp ne i64 %3, %92
  %94 = select i1 %60, i1 true, i1 %93
  br i1 %94, label %217, label %95

95:                                               ; preds = %8
  %96 = and i64 %3, 2937993261889578457
  %97 = or i64 -2937993261889578458, %3
  %98 = sub i64 %97, -2937993261889578458
  %99 = or i64 %3, 2268708288553751793
  %100 = xor i64 %3, -1
  %101 = and i64 %100, -8938651419589817192
  %102 = and i64 %3, 8938651419589817191
  %103 = or i64 %101, %102
  %104 = xor i64 -7165343763643639703, %103
  %105 = xor i64 %3, -1
  %106 = or i64 -2268708288553751794, %105
  %107 = xor i64 %106, -1
  %108 = and i64 %107, -1
  %109 = or i64 %104, %108
  %110 = and i64 %1, -2389008955482239372
  %111 = xor i64 %1, -1
  %112 = xor i64 -2389008955482239372, %111
  %113 = and i64 %112, -2389008955482239372
  %114 = xor i64 %113, -2022246799872124585
  %115 = xor i64 %114, %110
  %116 = xor i64 %115, %109
  %117 = xor i64 %116, %99
  %118 = xor i64 %117, %96
  %119 = xor i64 %118, %98
  %120 = add i64 %1, -2891140916872640670
  %121 = xor i64 -2891140916872640670, %1
  %122 = and i64 -2891140916872640670, %1
  %123 = mul i64 2, %122
  %124 = add i64 %121, %123
  %125 = or i64 %3, -8887568303965556141
  %126 = xor i64 %3, -1
  %127 = and i64 -8887568303965556141, %126
  %128 = add i64 %127, %3
  %129 = and i64 %1, -3017854403367914274
  %130 = or i64 3017854403367914273, %1
  %131 = sub i64 %130, 3017854403367914273
  %132 = xor i64 %124, %129
  %133 = xor i64 %132, %131
  %134 = xor i64 %133, %128
  %135 = xor i64 %134, %125
  %136 = xor i64 %135, -8278292804236718880
  %137 = xor i64 %136, %120
  %138 = mul i64 %119, %137
  %139 = trunc i64 %138 to i8
  %140 = and i64 %1, -8878940314686837723
  %141 = xor i64 %1, -1
  %142 = or i64 8878940314686837722, %141
  %143 = xor i64 %142, -1
  %144 = and i64 %143, -1
  %145 = and i64 %3, 7954788876707100962
  %146 = xor i64 %3, -1
  %147 = or i64 -7954788876707100963, %146
  %148 = xor i64 %147, -1
  %149 = and i64 %148, -1
  %150 = xor i64 %140, %145
  %151 = xor i64 %150, 7706170760891461383
  %152 = xor i64 %151, %144
  %153 = xor i64 %152, %149
  %154 = add i64 %1, -3360258553079650424
  %155 = xor i64 -3360258553079650424, %1
  %156 = and i64 -3360258553079650424, %1
  %157 = mul i64 2, %156
  %158 = add i64 %155, %157
  %159 = or i64 %3, -963221276367405011
  %160 = xor i64 %3, -1
  %161 = and i64 %160, -4828484673072115250
  %162 = and i64 %3, 4828484673072115249
  %163 = or i64 %161, %162
  %164 = xor i64 5646446992182448611, %163
  %165 = xor i64 %3, -1
  %166 = or i64 963221276367405010, %165
  %167 = xor i64 %166, -1
  %168 = and i64 %167, -1
  %169 = or i64 %164, %168
  %170 = and i64 %3, 5141196635130278385
  %171 = or i64 -5141196635130278386, %3
  %172 = sub i64 %171, -5141196635130278386
  %173 = xor i64 %154, -229355145532724704
  %174 = xor i64 %173, %158
  %175 = xor i64 %174, %159
  %176 = xor i64 %175, %169
  %177 = xor i64 %176, %170
  %178 = xor i64 %177, %172
  %179 = mul i64 %153, %178
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 %139, i64 %179, i1 false) #10
  %180 = bitcast float* %2 to i8*
  %181 = or i64 %3, 6253208688354488895
  %182 = and i64 6253208688354488895, %3
  %183 = xor i64 6253208688354488895, %3
  %184 = or i64 %182, %183
  %185 = add i64 %3, -483274546703473981
  %186 = add i64 5617855068783170321, %3
  %187 = sub i64 %186, 6101129615486644302
  %188 = add i64 %3, -2310945233050087051
  %189 = sub i64 0, %3
  %190 = sub i64 -2310945233050087051, %189
  %191 = xor i64 %188, %185
  %192 = xor i64 %191, %181
  %193 = xor i64 %192, %190
  %194 = xor i64 %193, %184
  %195 = xor i64 %194, 7924002407617112009
  %196 = xor i64 %195, %187
  %197 = and i64 %1, 6216718570799561167
  %198 = or i64 -6216718570799561168, %1
  %199 = sub i64 %198, -6216718570799561168
  %200 = and i64 %3, 3928811383772342861
  %201 = xor i64 %3, -1
  %202 = xor i64 3928811383772342861, %201
  %203 = and i64 %202, 3928811383772342861
  %204 = and i64 %1, -8941529932059672491
  %205 = xor i64 %1, -1
  %206 = or i64 8941529932059672490, %205
  %207 = xor i64 %206, -1
  %208 = and i64 %207, -1
  %209 = xor i64 %200, %197
  %210 = xor i64 %209, %208
  %211 = xor i64 %210, %203
  %212 = xor i64 %211, 0
  %213 = xor i64 %212, %199
  %214 = xor i64 %213, %204
  %215 = mul i64 %196, %214
  %216 = trunc i64 %215 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %180, i8 %216, i64 7040, i1 false) #10
  br label %217

217:                                              ; preds = %95, %8, %4
  %218 = phi i32 [ 0, %95 ], [ 2, %4 ], [ 2, %8 ]
  ret i32 %218
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
  br i1 %12, label %15, label %13

13:                                               ; preds = %15, %0
  %14 = phi i32 [ %11, %0 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  ret i32 %14

15:                                               ; preds = %15, %0
  call fastcc void @wait()
  %16 = call fastcc i32 @main_loop(float* nonnull %1, float* nonnull %2, i8* nonnull %8, float* nonnull %10)
  %17 = sext i32 %9 to i64
  %18 = add i64 %17, -8207952224996548997
  %19 = add i64 -5896166627463970079, %17
  %20 = add i64 %19, -2311785597532578918
  %21 = sext i32 %9 to i64
  %22 = or i64 %21, -2537419764820669395
  %23 = and i64 -2537419764820669395, %21
  %24 = xor i64 -2537419764820669395, %21
  %25 = or i64 %23, %24
  %26 = xor i64 %25, %18
  %27 = xor i64 %26, %20
  %28 = xor i64 %27, -2862305563622803437
  %29 = xor i64 %28, %22
  %30 = sext i32 %9 to i64
  %31 = and i64 %30, -7347315298274537832
  %32 = xor i64 %30, -1
  %33 = or i64 7347315298274537831, %32
  %34 = xor i64 %33, -1
  %35 = and i64 %34, -1
  %36 = sext i32 %11 to i64
  %37 = and i64 %36, -5092324741234784772
  %38 = xor i64 %36, -1
  %39 = xor i64 -5092324741234784772, %38
  %40 = and i64 %39, -5092324741234784772
  %41 = sext i32 %11 to i64
  %42 = or i64 %41, 8038123044031548743
  %43 = and i64 8038123044031548743, %41
  %44 = xor i64 8038123044031548743, %41
  %45 = or i64 %43, %44
  %46 = xor i64 0, %31
  %47 = xor i64 %46, %37
  %48 = xor i64 %47, %42
  %49 = xor i64 %48, %35
  %50 = xor i64 %49, %45
  %51 = xor i64 %50, %40
  %52 = mul i64 %29, %51
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %16, %53
  br i1 %54, label %15, label %13, !llvm.loop !18
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %112

7:                                                ; preds = %4
  %8 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %57

10:                                               ; preds = %50
  %11 = call fastcc i32 @inner_loop(float %54, float* %0, float* %1, i8* %2, float* %3)
  %12 = sext i32 %5 to i64
  %13 = and i64 %12, 5848458188475573773
  %14 = xor i64 %12, -1
  %15 = xor i64 5848458188475573773, %14
  %16 = and i64 %15, 5848458188475573773
  %17 = sext i32 %8 to i64
  %18 = add i64 %17, 5853067458573318914
  %19 = add i64 -8524731892507900136, %17
  %20 = add i64 %19, -4068944722628332566
  %21 = sext i32 %5 to i64
  %22 = add i64 %21, 5308684028371242418
  %23 = xor i64 5308684028371242418, %21
  %24 = and i64 5308684028371242418, %21
  %25 = mul i64 2, %24
  %26 = add i64 %23, %25
  %27 = xor i64 %26, %22
  %28 = xor i64 %27, %20
  %29 = xor i64 %28, %18
  %30 = xor i64 %29, -4416648595062148177
  %31 = xor i64 %30, %13
  %32 = xor i64 %31, %16
  %33 = sext i32 %51 to i64
  %34 = and i64 %33, -6114685952726507103
  %35 = xor i64 %33, -1
  %36 = xor i64 -6114685952726507103, %35
  %37 = and i64 %36, -6114685952726507103
  %38 = sext i32 %8 to i64
  %39 = or i64 %38, -4553231343613303182
  %40 = xor i64 %38, -1
  %41 = and i64 -4553231343613303182, %40
  %42 = add i64 %41, %38
  %43 = xor i64 0, %34
  %44 = xor i64 %43, %39
  %45 = xor i64 %44, %42
  %46 = xor i64 %45, %37
  %47 = mul i64 %32, %46
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %11, %48
  br i1 %49, label %50, label %57, !llvm.loop !19

50:                                               ; preds = %10, %7
  %51 = phi i32 [ %11, %10 ], [ %8, %7 ]
  %52 = phi double [ %55, %10 ], [ 0.000000e+00, %7 ]
  %53 = fadd double %52, 7.000000e-02
  %54 = fptrunc double %53 to float
  %55 = fpext float %54 to double
  %56 = fcmp olt double %55, 6.280000e+00
  br i1 %56, label %10, label %57, !llvm.loop !19

57:                                               ; preds = %50, %10, %7
  %58 = phi i32 [ %8, %7 ], [ %51, %50 ], [ %11, %10 ]
  %59 = phi i1 [ true, %7 ], [ %56, %10 ], [ %56, %50 ]
  br i1 %59, label %112, label %60

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %62 = sext i32 %8 to i64
  %63 = or i64 %62, -5022863172973327447
  %64 = xor i64 %62, -1
  %65 = and i64 %64, -6462452795757186418
  %66 = and i64 %62, 6462452795757186417
  %67 = or i64 %65, %66
  %68 = xor i64 2025482823621753127, %67
  %69 = xor i64 %62, -1
  %70 = or i64 5022863172973327446, %69
  %71 = xor i64 %70, -1
  %72 = and i64 %71, -1
  %73 = or i64 %68, %72
  %74 = sext i32 %58 to i64
  %75 = add i64 %74, -4907448344031555032
  %76 = add i64 -7449365203489088225, %74
  %77 = sub i64 %76, -2541916859457533193
  %78 = sext i32 %5 to i64
  %79 = or i64 %78, 1029571089411114219
  %80 = xor i64 %78, -1
  %81 = and i64 %80, -1344122031321496883
  %82 = and i64 %78, 1344122031321496882
  %83 = or i64 %81, %82
  %84 = xor i64 -2084747365061573082, %83
  %85 = xor i64 %78, -1
  %86 = or i64 -1029571089411114220, %85
  %87 = xor i64 %86, -1
  %88 = and i64 %87, -1
  %89 = or i64 %84, %88
  %90 = xor i64 %73, %75
  %91 = xor i64 %90, %77
  %92 = xor i64 %91, -6085698951865043603
  %93 = xor i64 %92, %79
  %94 = xor i64 %93, %89
  %95 = xor i64 %94, %63
  %96 = sext i32 %58 to i64
  %97 = add i64 %96, 5565655321754394040
  %98 = sub i64 0, %96
  %99 = add i64 -5565655321754394040, %98
  %100 = sub i64 0, %99
  %101 = sext i32 %5 to i64
  %102 = add i64 %101, 566417091511147917
  %103 = and i64 566417091511147917, %101
  %104 = or i64 566417091511147917, %101
  %105 = add i64 %103, %104
  %106 = xor i64 %97, %102
  %107 = xor i64 %106, -1654637488891021728
  %108 = xor i64 %107, %105
  %109 = xor i64 %108, %100
  %110 = mul i64 %95, %109
  %111 = call i32 @render(float* %0, float* %1, i8* %2, i64 %110)
  br label %112

112:                                              ; preds = %60, %57, %4
  %113 = phi i32 [ %58, %57 ], [ %5, %4 ], [ %111, %60 ]
  ret i32 %113
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
  br i1 %12, label %216, label %13

13:                                               ; preds = %5
  %14 = fpext float %0 to double
  %15 = call double @llvm.cos.f64(double %14)
  %16 = fptrunc double %15 to float
  %17 = call double @llvm.sin.f64(double %14)
  %18 = fptrunc double %17 to float
  %19 = fadd float %16, 2.000000e+00
  br label %20

20:                                               ; preds = %211, %13
  %21 = phi double [ 0.000000e+00, %13 ], [ %214, %211 ]
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
  br i1 %79, label %80, label %211

80:                                               ; preds = %20
  %81 = sext i32 %61 to i64
  %82 = add i64 %81, 7787817252161809349
  %83 = sub i64 0, %81
  %84 = add i64 -7787817252161809349, %83
  %85 = sub i64 0, %84
  %86 = sext i32 %73 to i64
  %87 = add i64 %86, -2402888400212303023
  %88 = add i64 6445342987167283712, %86
  %89 = add i64 %88, -8848231387379586735
  %90 = sext i32 %61 to i64
  %91 = or i64 %90, 6674840041540107716
  %92 = xor i64 %90, -1
  %93 = and i64 6674840041540107716, %92
  %94 = add i64 %93, %90
  %95 = xor i64 %87, %91
  %96 = xor i64 %95, 4442154377417130519
  %97 = xor i64 %96, %94
  %98 = xor i64 %97, %85
  %99 = xor i64 %98, %89
  %100 = xor i64 %99, %82
  %101 = sext i32 %74 to i64
  %102 = add i64 %101, 4294238272815045869
  %103 = add i64 4352544898104818345, %101
  %104 = add i64 %103, -58306625289772476
  %105 = sext i32 %73 to i64
  %106 = add i64 %105, -8603440937064964965
  %107 = add i64 -2183214024086858675, %105
  %108 = sub i64 %107, 6420226912978106290
  %109 = xor i64 %102, %104
  %110 = xor i64 %109, %106
  %111 = xor i64 %110, 7705540875727324208
  %112 = xor i64 %111, %108
  %113 = mul i64 %100, %112
  %114 = trunc i64 %113 to i32
  %115 = mul nsw i32 %61, %114
  %116 = add nsw i32 %115, %54
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %4, i64 %117
  %119 = load float, float* %118, align 4, !tbaa !10
  %120 = fcmp ogt float %35, %119
  br i1 %120, label %121, label %211

121:                                              ; preds = %80
  store float %35, float* %118, align 4, !tbaa !10
  %122 = load i8*, i8** @CHARS, align 8, !tbaa !20
  %123 = sext i32 %61 to i64
  %124 = and i64 %123, 6090679193173905869
  %125 = xor i64 %123, -1
  %126 = or i64 -6090679193173905870, %125
  %127 = xor i64 %126, -1
  %128 = and i64 %127, -1
  %129 = sext i32 %116 to i64
  %130 = or i64 %129, -538608622447536373
  %131 = xor i64 %129, -1
  %132 = and i64 %131, -3234482313260186454
  %133 = and i64 %129, 3234482313260186453
  %134 = or i64 %132, %133
  %135 = xor i64 3142022937332847521, %134
  %136 = xor i64 %129, -1
  %137 = or i64 538608622447536372, %136
  %138 = xor i64 %137, -1
  %139 = and i64 %138, -1
  %140 = or i64 %135, %139
  %141 = xor i64 %124, %128
  %142 = xor i64 %141, %130
  %143 = xor i64 %142, %140
  %144 = xor i64 %143, 8458717345204402803
  %145 = sext i32 %115 to i64
  %146 = or i64 %145, -8703568219378167324
  %147 = and i64 -8703568219378167324, %145
  %148 = xor i64 -8703568219378167324, %145
  %149 = or i64 %147, %148
  %150 = sext i32 %74 to i64
  %151 = and i64 %150, -6548461982912917576
  %152 = xor i64 %150, -1
  %153 = or i64 6548461982912917575, %152
  %154 = xor i64 %153, -1
  %155 = and i64 %154, -1
  %156 = or i64 %117, -4941849908884363228
  %157 = xor i64 %117, -1
  %158 = and i64 -4941849908884363228, %157
  %159 = add i64 %158, %117
  %160 = xor i64 %159, 0
  %161 = xor i64 %160, %156
  %162 = xor i64 %161, %149
  %163 = xor i64 %162, %155
  %164 = xor i64 %163, %146
  %165 = xor i64 %164, %151
  %166 = mul i64 %144, %165
  %167 = trunc i64 %166 to i32
  %168 = icmp sgt i32 %73, %167
  %169 = sext i32 %115 to i64
  %170 = and i64 %169, 4950457350240677703
  %171 = xor i64 %169, -1
  %172 = or i64 -4950457350240677704, %171
  %173 = xor i64 %172, -1
  %174 = and i64 %173, -1
  %175 = sext i32 %74 to i64
  %176 = add i64 %175, 2468415019191298725
  %177 = sub i64 0, %175
  %178 = add i64 -2468415019191298725, %177
  %179 = sub i64 0, %178
  %180 = xor i64 %170, %179
  %181 = xor i64 %180, 199081449368783329
  %182 = xor i64 %181, %176
  %183 = xor i64 %182, %174
  %184 = sext i32 %73 to i64
  %185 = add i64 %184, -6187685823380439440
  %186 = sub i64 0, %184
  %187 = add i64 6187685823380439440, %186
  %188 = sub i64 0, %187
  %189 = sext i32 %61 to i64
  %190 = or i64 %189, -2888737632362382779
  %191 = xor i64 %189, -1
  %192 = and i64 -2888737632362382779, %191
  %193 = add i64 %192, %189
  %194 = sext i32 %73 to i64
  %195 = add i64 %194, -5769652896174353493
  %196 = sub i64 0, %194
  %197 = sub i64 -5769652896174353493, %196
  %198 = xor i64 %193, %190
  %199 = xor i64 %198, 0
  %200 = xor i64 %199, %195
  %201 = xor i64 %200, %197
  %202 = xor i64 %201, %188
  %203 = xor i64 %202, %185
  %204 = mul i64 %183, %203
  %205 = trunc i64 %204 to i32
  %206 = select i1 %168, i32 %73, i32 %205
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %122, i64 %207
  %209 = load i8, i8* %208, align 1, !tbaa !17
  %210 = getelementptr inbounds i8, i8* %3, i64 %117
  store i8 %209, i8* %210, align 1, !tbaa !17
  br label %211

211:                                              ; preds = %121, %80, %20
  %212 = fadd double %21, 2.000000e-02
  %213 = fptrunc double %212 to float
  %214 = fpext float %213 to double
  %215 = fcmp olt double %214, 6.280000e+00
  br i1 %215, label %20, label %216, !llvm.loop !22

216:                                              ; preds = %211, %5
  %217 = phi i32 [ 2, %5 ], [ 0, %211 ]
  ret i32 %217
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

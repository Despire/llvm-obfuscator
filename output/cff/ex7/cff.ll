; ModuleID = 'output/cff/ex7/ex7.ll'
source_filename = "input/cff/ex7/ex7.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z7displayPKcRfS1_(i8* nocapture readonly %0, float* nocapture nonnull align 4 dereferenceable(4) %1, float* nocapture nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
entry:
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem21 = alloca i64, align 8
  %.reg2mem17 = alloca i64, align 8
  %.reg2mem13 = alloca i8**, align 8
  %.reg2mem10 = alloca i8**, align 8
  %.reg2mem6 = alloca i8**, align 8
  %.reg2mem3 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 6, align 8
  %3 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z7displayPKcRfS1_, %BogusBasciBlock), i8** %3, align 8
  %4 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %4, i8*** %.reg2mem, align 8
  %.reload2 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@_Z7displayPKcRfS1_, %EntryBasicBlockSplit), i8** %.reload2, align 8
  %5 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %5, i8*** %.reg2mem3, align 8
  %.reload5 = load i8**, i8*** %.reg2mem3, align 8
  store i8* blockaddress(@_Z7displayPKcRfS1_, %"2"), i8** %.reload5, align 8
  %6 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %6, i8*** %.reg2mem6, align 8
  %.reload9 = load i8**, i8*** %.reg2mem6, align 8
  store i8* blockaddress(@_Z7displayPKcRfS1_, %"3"), i8** %.reload9, align 8
  %7 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %7, i8*** %.reg2mem10, align 8
  %.reload12 = load i8**, i8*** %.reg2mem10, align 8
  store i8* blockaddress(@_Z7displayPKcRfS1_, %"4"), i8** %.reload12, align 8
  %8 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8** %8, i8*** %.reg2mem13, align 8
  %.reload16 = load i8**, i8*** %.reg2mem13, align 8
  store i8* blockaddress(@_Z7displayPKcRfS1_, %"5"), i8** %.reload16, align 8
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %9 = load i8*, i8** %.reload, align 8
  indirectbr i8* %9, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

BogusBasciBlock:                                  ; preds = %entry, %"5", %"4", %"3", %EntryBasicBlockSplit, %BogusBasciBlock
  %10 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z7displayPKcRfS1_, %BogusBasciBlock), i8** %10, align 8
  %11 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8* blockaddress(@_Z7displayPKcRfS1_, %"4"), i8** %11, align 8
  %12 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8* blockaddress(@_Z7displayPKcRfS1_, %"2"), i8** %12, align 8
  %.reload1 = load i8**, i8*** %.reg2mem, align 8
  %13 = load i8*, i8** %.reload1, align 8
  indirectbr i8* %13, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

EntryBasicBlockSplit:                             ; preds = %entry, %"5", %"4", %"3", %EntryBasicBlockSplit, %BogusBasciBlock
  %14 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %.reload8 = load i8**, i8*** %.reg2mem6, align 8
  %15 = load i8*, i8** %.reload8, align 8
  store i64 0, i64* %.reg2mem21, align 8
  indirectbr i8* %15, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

"2":                                              ; preds = %entry, %"5", %"4", %"3", %EntryBasicBlockSplit, %BogusBasciBlock
  ret void

"3":                                              ; preds = %entry, %"5", %"4", %"3", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload22 = load i64, i64* %.reg2mem21, align 8
  store i64 %.reload22, i64* %.reg2mem17, align 8
  %.reload20 = load i64, i64* %.reg2mem17, align 8
  %16 = trunc i64 %.reload20 to i32
  %17 = urem i32 %16, 80
  %18 = icmp eq i32 %17, 0
  %.reload11 = load i8**, i8*** %.reg2mem10, align 8
  %.reload15 = load i8**, i8*** %.reg2mem13, align 8
  %19 = select i1 %18, i8** %.reload15, i8** %.reload11
  %20 = load i8*, i8** %19, align 8
  store i32 10, i32* %.reg2mem23, align 4
  indirectbr i8* %20, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

"4":                                              ; preds = %entry, %"5", %"4", %"3", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload19 = load i64, i64* %.reg2mem17, align 8
  %21 = getelementptr inbounds i8, i8* %0, i64 %.reload19
  %22 = load i8, i8* %21, align 1, !tbaa !10
  %23 = sext i8 %22 to i32
  %.reload14 = load i8**, i8*** %.reg2mem13, align 8
  %24 = load i8*, i8** %.reload14, align 8
  store i32 %23, i32* %.reg2mem23, align 4
  indirectbr i8* %24, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

"5":                                              ; preds = %entry, %"5", %"4", %"3", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload24 = load i32, i32* %.reg2mem23, align 4
  %25 = call i32 @putchar(i32 %.reload24)
  %26 = load float, float* %1, align 4, !tbaa !13
  %27 = fpext float %26 to double
  %28 = fadd double %27, 4.000000e-05
  %29 = fptrunc double %28 to float
  store float %29, float* %1, align 4, !tbaa !13
  %30 = load float, float* %2, align 4, !tbaa !13
  %31 = fpext float %30 to double
  %32 = fadd double %31, 2.000000e-05
  %33 = fptrunc double %32 to float
  store float %33, float* %2, align 4, !tbaa !13
  %.reload18 = load i64, i64* %.reg2mem17, align 8
  %34 = add nuw nsw i64 %.reload18, 1
  %35 = icmp eq i64 %34, 1761
  %.reload4 = load i8**, i8*** %.reg2mem3, align 8
  %.reload7 = load i8**, i8*** %.reg2mem6, align 8
  %36 = select i1 %35, i8** %.reload4, i8** %.reload7
  %37 = load i8*, i8** %36, align 8
  store i64 %34, i64* %.reg2mem21, align 8
  indirectbr i8* %37, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z6renderffiPfPcii(float %0, float %1, i32 %2, float* nocapture %3, i8* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #3 {
entry:
  %.reg2mem95 = alloca float, align 4
  %.reg2mem93 = alloca double, align 8
  %.reg2mem91 = alloca float, align 4
  %.reg2mem89 = alloca double, align 8
  %.reg2mem86 = alloca float*, align 8
  %.reg2mem83 = alloca i64, align 8
  %.reg2mem80 = alloca i32, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem72 = alloca i32, align 4
  %.reg2mem67 = alloca float, align 4
  %.reg2mem65 = alloca double, align 8
  %.reg2mem62 = alloca float, align 4
  %.reg2mem59 = alloca float, align 4
  %.reg2mem56 = alloca float, align 4
  %.reg2mem52 = alloca float, align 4
  %.reg2mem50 = alloca double, align 8
  %.reg2mem46 = alloca float, align 4
  %.reg2mem42 = alloca float, align 4
  %.reg2mem38 = alloca float, align 4
  %.reg2mem34 = alloca float, align 4
  %.reg2mem32 = alloca float, align 4
  %.reg2mem30 = alloca float, align 4
  %.reg2mem28 = alloca float, align 4
  %.reg2mem23 = alloca i8**, align 8
  %.reg2mem20 = alloca i8**, align 8
  %.reg2mem17 = alloca i8**, align 8
  %.reg2mem13 = alloca i8**, align 8
  %.reg2mem10 = alloca i8**, align 8
  %.reg2mem7 = alloca i8**, align 8
  %.reg2mem3 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 9, align 8
  %7 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z6renderffiPfPcii, %BogusBasciBlock), i8** %7, align 8
  %8 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %8, i8*** %.reg2mem, align 8
  %.reload2 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@_Z6renderffiPfPcii, %EntryBasicBlockSplit), i8** %.reload2, align 8
  %9 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %9, i8*** %.reg2mem3, align 8
  %.reload6 = load i8**, i8*** %.reg2mem3, align 8
  store i8* blockaddress(@_Z6renderffiPfPcii, %"2"), i8** %.reload6, align 8
  %10 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %10, i8*** %.reg2mem7, align 8
  %.reload9 = load i8**, i8*** %.reg2mem7, align 8
  store i8* blockaddress(@_Z6renderffiPfPcii, %"3"), i8** %.reload9, align 8
  %11 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %11, i8*** %.reg2mem10, align 8
  %.reload12 = load i8**, i8*** %.reg2mem10, align 8
  store i8* blockaddress(@_Z6renderffiPfPcii, %"4"), i8** %.reload12, align 8
  %12 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8** %12, i8*** %.reg2mem13, align 8
  %.reload16 = load i8**, i8*** %.reg2mem13, align 8
  store i8* blockaddress(@_Z6renderffiPfPcii, %"5"), i8** %.reload16, align 8
  %13 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8** %13, i8*** %.reg2mem17, align 8
  %.reload19 = load i8**, i8*** %.reg2mem17, align 8
  store i8* blockaddress(@_Z6renderffiPfPcii, %"6"), i8** %.reload19, align 8
  %14 = getelementptr i8*, i8** %JumpTable, i32 7
  store i8** %14, i8*** %.reg2mem20, align 8
  %.reload22 = load i8**, i8*** %.reg2mem20, align 8
  store i8* blockaddress(@_Z6renderffiPfPcii, %"7"), i8** %.reload22, align 8
  %15 = getelementptr i8*, i8** %JumpTable, i32 8
  store i8** %15, i8*** %.reg2mem23, align 8
  %.reload27 = load i8**, i8*** %.reg2mem23, align 8
  store i8* blockaddress(@_Z6renderffiPfPcii, %"8"), i8** %.reload27, align 8
  %16 = sdiv i32 %6, 40
  %17 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 32, i64 %17, i1 false)
  %18 = bitcast float* %3 to i8*
  %19 = shl nsw i64 %17, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 %19, i1 false)
  %20 = sitofp i32 %16 to float
  store float %20, float* %.reg2mem28, align 4
  %21 = sdiv i32 %6, 2
  %22 = sitofp i32 %21 to float
  store float %22, float* %.reg2mem30, align 4
  %23 = sdiv i32 %5, 2
  %24 = add nsw i32 %23, 1
  %25 = sitofp i32 %24 to float
  store float %25, float* %.reg2mem32, align 4
  %26 = call fastcc float @_ZL3sinf(float %0) #8
  store float %26, float* %.reg2mem34, align 4
  %27 = call fastcc float @_ZL3cosf(float %0) #8
  store float %27, float* %.reg2mem38, align 4
  %28 = call fastcc float @_ZL3cosf(float %1) #8
  store float %28, float* %.reg2mem42, align 4
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %29 = load i8*, i8** %.reload, align 8
  indirectbr i8* %29, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7", label %"8"]

BogusBasciBlock:                                  ; preds = %entry, %"8", %"7", %"6", %"5", %"4", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %30 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z6renderffiPfPcii, %"7"), i8** %30, align 8
  %31 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8* blockaddress(@_Z6renderffiPfPcii, %EntryBasicBlockSplit), i8** %31, align 8
  %32 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8* blockaddress(@_Z6renderffiPfPcii, %"6"), i8** %32, align 8
  %33 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8* blockaddress(@_Z6renderffiPfPcii, %"2"), i8** %33, align 8
  %34 = getelementptr i8*, i8** %JumpTable, i32 8
  store i8* blockaddress(@_Z6renderffiPfPcii, %"8"), i8** %34, align 8
  %.reload1 = load i8**, i8*** %.reg2mem, align 8
  %35 = load i8*, i8** %.reload1, align 8
  indirectbr i8* %35, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7", label %"8"]

EntryBasicBlockSplit:                             ; preds = %entry, %"8", %"7", %"6", %"5", %"4", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %36 = call fastcc float @_ZL3sinf(float %1) #8
  store float %36, float* %.reg2mem46, align 4
  %.reload5 = load i8**, i8*** %.reg2mem3, align 8
  %37 = load i8*, i8** %.reload5, align 8
  store double 0.000000e+00, double* %.reg2mem89, align 8
  store float 0.000000e+00, float* %.reg2mem91, align 4
  indirectbr i8* %37, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7", label %"8"]

"2":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %"4", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload92 = load float, float* %.reg2mem91, align 4
  %.reload90 = load double, double* %.reg2mem89, align 8
  store double %.reload90, double* %.reg2mem50, align 8
  %38 = call fastcc float @_ZL3cosf(float %.reload92) #8
  store float %38, float* %.reg2mem52, align 4
  %39 = call fastcc float @_ZL3sinf(float %.reload92) #8
  %.reload29 = load float, float* %.reg2mem28, align 4
  %.reload55 = load float, float* %.reg2mem52, align 4
  %40 = fadd float %.reload55, %.reload29
  store float %40, float* %.reg2mem56, align 4
  %.reload37 = load float, float* %.reg2mem34, align 4
  %41 = fmul float %.reload37, %39
  store float %41, float* %.reg2mem59, align 4
  %.reload41 = load float, float* %.reg2mem38, align 4
  %42 = fmul float %39, %.reload41
  store float %42, float* %.reg2mem62, align 4
  %.reload15 = load i8**, i8*** %.reg2mem13, align 8
  %43 = load i8*, i8** %.reload15, align 8
  store double 0.000000e+00, double* %.reg2mem93, align 8
  store float 0.000000e+00, float* %.reg2mem95, align 4
  indirectbr i8* %43, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7", label %"8"]

"3":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %"4", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  ret void

"4":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %"4", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload51 = load double, double* %.reg2mem50, align 8
  %44 = fadd double %.reload51, 7.000000e-02
  %45 = fptrunc double %44 to float
  %46 = fpext float %45 to double
  %47 = fcmp olt double %46, 6.280000e+00
  %.reload4 = load i8**, i8*** %.reg2mem3, align 8
  %.reload8 = load i8**, i8*** %.reg2mem7, align 8
  %48 = select i1 %47, i8** %.reload4, i8** %.reload8
  %49 = load i8*, i8** %48, align 8
  store double %46, double* %.reg2mem89, align 8
  store float %45, float* %.reg2mem91, align 4
  indirectbr i8* %49, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7", label %"8"]

"5":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %"4", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload96 = load float, float* %.reg2mem95, align 4
  %.reload94 = load double, double* %.reg2mem93, align 8
  store double %.reload94, double* %.reg2mem65, align 8
  %50 = call fastcc float @_ZL3sinf(float %.reload96) #8
  %.reload58 = load float, float* %.reg2mem56, align 4
  %51 = fmul float %50, %.reload58
  %.reload40 = load float, float* %.reg2mem38, align 4
  %52 = fmul float %51, %.reload40
  %.reload61 = load float, float* %.reg2mem59, align 4
  %53 = fsub float %52, %.reload61
  %.reload36 = load float, float* %.reg2mem34, align 4
  %54 = fmul float %.reload36, %51
  %.reload64 = load float, float* %.reg2mem62, align 4
  %55 = fadd float %54, %.reload64
  %56 = fadd float %55, 5.000000e+00
  %57 = fdiv float 1.000000e+00, %56
  store float %57, float* %.reg2mem67, align 4
  %58 = call fastcc float @_ZL3cosf(float %.reload96) #8
  %.reload71 = load float, float* %.reg2mem67, align 4
  %59 = fmul float %.reload71, 3.000000e+01
  %.reload57 = load float, float* %.reg2mem56, align 4
  %60 = fmul float %.reload57, %58
  %.reload45 = load float, float* %.reg2mem42, align 4
  %61 = fmul float %60, %.reload45
  %.reload49 = load float, float* %.reg2mem46, align 4
  %62 = fmul float %53, %.reload49
  %63 = fadd float %61, %62
  %64 = fmul float %59, %63
  %.reload31 = load float, float* %.reg2mem30, align 4
  %65 = fadd float %64, %.reload31
  %66 = fptosi float %65 to i32
  store i32 %66, i32* %.reg2mem72, align 4
  %.reload70 = load float, float* %.reg2mem67, align 4
  %67 = fmul float %.reload70, 1.500000e+01
  %.reload48 = load float, float* %.reg2mem46, align 4
  %68 = fmul float %60, %.reload48
  %.reload44 = load float, float* %.reg2mem42, align 4
  %69 = fmul float %53, %.reload44
  %70 = fsub float %68, %69
  %71 = fmul float %67, %70
  %.reload33 = load float, float* %.reg2mem32, align 4
  %72 = fadd float %71, %.reload33
  %73 = fptosi float %72 to i32
  store i32 %73, i32* %.reg2mem76, align 4
  %.reload54 = load float, float* %.reg2mem52, align 4
  %74 = fmul float %50, %.reload54
  %.reload39 = load float, float* %.reg2mem38, align 4
  %75 = fmul float %74, %.reload39
  %.reload60 = load float, float* %.reg2mem59, align 4
  %76 = fsub float %.reload60, %75
  %.reload43 = load float, float* %.reg2mem42, align 4
  %77 = fmul float %76, %.reload43
  %.reload35 = load float, float* %.reg2mem34, align 4
  %78 = fmul float %74, %.reload35
  %79 = fsub float %77, %78
  %.reload63 = load float, float* %.reg2mem62, align 4
  %80 = fsub float %79, %.reload63
  %.reload53 = load float, float* %.reg2mem52, align 4
  %81 = fmul float %.reload53, %58
  %.reload47 = load float, float* %.reg2mem46, align 4
  %82 = fmul float %81, %.reload47
  %83 = fsub float %80, %82
  %84 = fmul float %83, 8.000000e+00
  %85 = fptosi float %84 to i32
  store i32 %85, i32* %.reg2mem80, align 4
  %.reload79 = load i32, i32* %.reg2mem76, align 4
  %86 = icmp slt i32 %.reload79, %5
  %.reload78 = load i32, i32* %.reg2mem76, align 4
  %87 = icmp sgt i32 %.reload78, 0
  %88 = and i1 %86, %87
  %.reload75 = load i32, i32* %.reg2mem72, align 4
  %89 = icmp sgt i32 %.reload75, 0
  %90 = select i1 %88, i1 %89, i1 false
  %.reload74 = load i32, i32* %.reg2mem72, align 4
  %91 = icmp slt i32 %.reload74, %6
  %92 = select i1 %90, i1 %91, i1 false
  %.reload18 = load i8**, i8*** %.reg2mem17, align 8
  %.reload26 = load i8**, i8*** %.reg2mem23, align 8
  %93 = select i1 %92, i8** %.reload18, i8** %.reload26
  %94 = load i8*, i8** %93, align 8
  indirectbr i8* %94, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7", label %"8"]

"6":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %"4", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload77 = load i32, i32* %.reg2mem76, align 4
  %95 = mul nsw i32 %.reload77, %6
  %.reload73 = load i32, i32* %.reg2mem72, align 4
  %96 = add nsw i32 %95, %.reload73
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %.reg2mem83, align 8
  %.reload85 = load i64, i64* %.reg2mem83, align 8
  %98 = getelementptr inbounds float, float* %3, i64 %.reload85
  store float* %98, float** %.reg2mem86, align 8
  %.reload88 = load float*, float** %.reg2mem86, align 8
  %99 = load float, float* %.reload88, align 4, !tbaa !13
  %.reload69 = load float, float* %.reg2mem67, align 4
  %100 = fcmp ogt float %.reload69, %99
  %.reload21 = load i8**, i8*** %.reg2mem20, align 8
  %.reload25 = load i8**, i8*** %.reg2mem23, align 8
  %101 = select i1 %100, i8** %.reload21, i8** %.reload25
  %102 = load i8*, i8** %101, align 8
  indirectbr i8* %102, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7", label %"8"]

"7":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %"4", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload68 = load float, float* %.reg2mem67, align 4
  %.reload87 = load float*, float** %.reg2mem86, align 8
  store float %.reload68, float* %.reload87, align 4, !tbaa !13
  %.reload82 = load i32, i32* %.reg2mem80, align 4
  %103 = icmp sgt i32 %.reload82, 0
  %.reload81 = load i32, i32* %.reg2mem80, align 4
  %104 = select i1 %103, i32 %.reload81, i32 0
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.1, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1, !tbaa !10
  %.reload84 = load i64, i64* %.reg2mem83, align 8
  %108 = getelementptr inbounds i8, i8* %4, i64 %.reload84
  store i8 %107, i8* %108, align 1, !tbaa !10
  %.reload24 = load i8**, i8*** %.reg2mem23, align 8
  %109 = load i8*, i8** %.reload24, align 8
  indirectbr i8* %109, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7", label %"8"]

"8":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %"4", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload66 = load double, double* %.reg2mem65, align 8
  %110 = fadd double %.reload66, 2.000000e-02
  %111 = fptrunc double %110 to float
  %112 = fpext float %111 to double
  %113 = fcmp olt double %112, 6.280000e+00
  %.reload11 = load i8**, i8*** %.reg2mem10, align 8
  %.reload14 = load i8**, i8*** %.reg2mem13, align 8
  %114 = select i1 %113, i8** %.reload14, i8** %.reload11
  %115 = load i8*, i8** %114, align 8
  store double %112, double* %.reg2mem93, align 8
  store float %111, float* %.reg2mem95, align 4
  indirectbr i8* %115, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7", label %"8"]
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
entry:
  %.reg2mem10 = alloca float*, align 8
  %.reg2mem7 = alloca i8*, align 8
  %.reg2mem3 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 3, align 8
  %0 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@main, %BogusBasciBlock), i8** %0, align 8
  %1 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %1, i8*** %.reg2mem, align 8
  %.reload2 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@main, %EntryBasicBlockSplit), i8** %.reload2, align 8
  %2 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %2, i8*** %.reg2mem3, align 8
  %.reload6 = load i8**, i8*** %.reg2mem3, align 8
  store i8* blockaddress(@main, %"2"), i8** %.reload6, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #8
  store float 0.000000e+00, float* %3, align 4, !tbaa !13
  %6 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8
  store float 0.000000e+00, float* %4, align 4, !tbaa !13
  %7 = alloca [1760 x float], align 4
  %8 = alloca [1760 x i8], align 1
  %9 = getelementptr inbounds [1760 x i8], [1760 x i8]* %8, i64 0, i64 0
  store i8* %9, i8** %.reg2mem7, align 8
  %10 = getelementptr inbounds [1760 x float], [1760 x float]* %7, i64 0, i64 0
  store float* %10, float** %.reg2mem10, align 8
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %11 = load i8*, i8** %.reload, align 8
  indirectbr i8* %11, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2"]

BogusBasciBlock:                                  ; preds = %entry, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %12 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@main, %"2"), i8** %12, align 8
  %13 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8* blockaddress(@main, %EntryBasicBlockSplit), i8** %13, align 8
  %.reload1 = load i8**, i8*** %.reg2mem, align 8
  %14 = load i8*, i8** %.reload1, align 8
  indirectbr i8* %14, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2"]

EntryBasicBlockSplit:                             ; preds = %entry, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %15 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %.reload5 = load i8**, i8*** %.reg2mem3, align 8
  %16 = load i8*, i8** %.reload5, align 8
  indirectbr i8* %16, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2"]

"2":                                              ; preds = %entry, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %17 = load float, float* %3, align 4, !tbaa !13
  %18 = load float, float* %4, align 4, !tbaa !13
  %.reload9 = load i8*, i8** %.reg2mem7, align 8
  %.reload11 = load float*, float** %.reg2mem10, align 8
  call void @_Z6renderffiPfPcii(float %17, float %18, i32 1760, float* nonnull %.reload11, i8* nonnull %.reload9, i32 22, i32 80)
  %.reload8 = load i8*, i8** %.reg2mem7, align 8
  call void @_Z7displayPKcRfS1_(i8* nonnull %.reload8, float* nonnull align 4 dereferenceable(4) %3, float* nonnull align 4 dereferenceable(4) %4)
  %.reload4 = load i8**, i8*** %.reg2mem3, align 8
  %19 = load i8*, i8** %.reload4, align 8
  indirectbr i8* %19, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2"]
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

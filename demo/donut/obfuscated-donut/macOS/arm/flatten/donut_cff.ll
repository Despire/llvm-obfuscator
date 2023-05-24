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
@.str.2 = private unnamed_addr constant [34 x i8] c"time to render frame: %f seconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @update(float* %0, float* %1) local_unnamed_addr #0 {
entry:
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem2 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %lookupTable = alloca [8 x i32], align 4
  %2 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %2, align 4
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %3, align 4
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %4, align 4
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %7, align 4
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %8, align 4
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %9, align 4
  %10 = icmp eq float* %0, null
  store i1 %10, i1* %.reg2mem, align 1
  %11 = icmp eq float* %1, null
  store i1 %11, i1* %.reg2mem2, align 1
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %24
    i32 2, label %38
    i32 3, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %.reload = load i1, i1* %.reg2mem, align 1
  %.reload3 = load i1, i1* %.reg2mem2, align 1
  %12 = select i1 %.reload, i1 true, i1 %.reload3
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %14, %16
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %19, %21
  %23 = select i1 %12, i32 %17, i32 %22
  store i32 %23, i32* %dispatcher, align 4
  store i32 2, i32* %.reg2mem4, align 4
  br label %loopEnd

24:                                               ; preds = %loopStart
  %25 = load float, float* %0, align 4, !tbaa !10
  %26 = fpext float %25 to double
  %27 = fadd double %26, 4.000000e-05
  %28 = fptrunc double %27 to float
  store float %28, float* %0, align 4, !tbaa !10
  %29 = load float, float* %1, align 4, !tbaa !10
  %30 = fpext float %29 to double
  %31 = fadd double %30, 2.000000e-05
  %32 = fptrunc double %31 to float
  store float %32, float* %1, align 4, !tbaa !10
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %34, %36
  store i32 %37, i32* %dispatcher, align 4
  store i32 0, i32* %.reg2mem4, align 4
  br label %loopEnd

38:                                               ; preds = %loopStart
  %.reload5 = load i32, i32* %.reg2mem4, align 4
  ret i32 %.reload5

BogusBasicBlock:                                  ; preds = %loopStart
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %41, align 4
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %42, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %24, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @render(float* %0, float* %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #1 {
entry:
  %.reg2mem11 = alloca i32, align 4
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem7 = alloca i64, align 8
  %.reg2mem4 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %lookupTable = alloca [11 x i32], align 4
  %4 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %4, align 4
  %5 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %5, align 4
  %6 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %6, align 4
  %7 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %9, align 4
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %10, align 4
  %11 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %11, align 4
  %12 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  store i32 5, i32* %12, align 4
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 9
  store i32 6, i32* %13, align 4
  %14 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  store i32 7, i32* %14, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %27
    i32 2, label %40
    i32 3, label %55
    i32 4, label %64
    i32 5, label %80
    i32 6, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %15 = icmp eq i64 %3, 1760
  %16 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %17, %19
  %21 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %22, %24
  %26 = select i1 %15, i32 %20, i32 %25
  store i32 %26, i32* %dispatcher, align 4
  store i64 0, i64* %.reg2mem7, align 8
  store i32 2, i32* %.reg2mem11, align 4
  br label %loopEnd

27:                                               ; preds = %loopStart
  %.reload5 = load i64, i64* %.reg2mem4, align 8
  %28 = icmp eq i64 %.reload5, 1761
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %30, %32
  %34 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %35, %37
  %39 = select i1 %28, i32 %33, i32 %38
  store i32 %39, i32* %dispatcher, align 4
  %.reload6 = load i64, i64* %.reg2mem4, align 8
  store i64 %.reload6, i64* %.reg2mem7, align 8
  store i32 0, i32* %.reg2mem11, align 4
  br label %loopEnd

40:                                               ; preds = %loopStart
  %.reload8 = load i64, i64* %.reg2mem7, align 8
  store i64 %.reload8, i64* %.reg2mem, align 8
  %.reload3 = load i64, i64* %.reg2mem, align 8
  %41 = trunc i64 %.reload3 to i32
  %42 = urem i32 %41, 80
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %45, %47
  %49 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %50, %52
  %54 = select i1 %43, i32 %48, i32 %53
  store i32 %54, i32* %dispatcher, align 4
  store i32 10, i32* %.reg2mem9, align 4
  br label %loopEnd

55:                                               ; preds = %loopStart
  %.reload2 = load i64, i64* %.reg2mem, align 8
  %56 = getelementptr inbounds i8, i8* %2, i64 %.reload2
  %57 = load i8, i8* %56, align 1, !tbaa !14
  %58 = sext i8 %57 to i32
  %59 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = srem i32 %60, %62
  store i32 %63, i32* %dispatcher, align 4
  store i32 %58, i32* %.reg2mem9, align 4
  br label %loopEnd

64:                                               ; preds = %loopStart
  %.reload10 = load i32, i32* %.reg2mem9, align 4
  %65 = call i32 @putchar(i32 %.reload10)
  %66 = call i32 @update(float* %0, float* %1)
  %67 = icmp eq i32 %66, 0
  %.reload = load i64, i64* %.reg2mem, align 8
  %68 = add nuw nsw i64 %.reload, 1
  store i64 %68, i64* %.reg2mem4, align 8
  %69 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %70, %72
  %74 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = srem i32 %75, %77
  %79 = select i1 %67, i32 %73, i32 %78
  store i32 %79, i32* %dispatcher, align 4
  store i32 %66, i32* %.reg2mem11, align 4
  br label %loopEnd

80:                                               ; preds = %loopStart
  %.reload12 = load i32, i32* %.reg2mem11, align 4
  ret i32 %.reload12

BogusBasicBlock:                                  ; preds = %loopStart
  %81 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %81, align 4
  %82 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %82, align 4
  %83 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %83, align 4
  %84 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %84, align 4
  %85 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %85, align 4
  %86 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  store i32 9, i32* %86, align 4
  %87 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %64, %55, %40, %27, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @clear(i8* %0, i64 %1, float* %2, i64 %3) local_unnamed_addr #1 {
entry:
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem2 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %lookupTable = alloca [9 x i32], align 4
  %4 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %4, align 4
  %5 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %5, align 4
  %6 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %6, align 4
  %7 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %9, align 4
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %10, align 4
  %11 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %11, align 4
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 8
  store i32 5, i32* %12, align 4
  %13 = icmp eq i8* %0, null
  store i1 %13, i1* %.reg2mem, align 1
  %14 = icmp eq float* %2, null
  store i1 %14, i1* %.reg2mem2, align 1
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %27
    i32 2, label %42
    i32 3, label %49
    i32 4, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %.reload = load i1, i1* %.reg2mem, align 1
  %.reload3 = load i1, i1* %.reg2mem2, align 1
  %15 = select i1 %.reload, i1 true, i1 %.reload3
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %17, %19
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %22, %24
  %26 = select i1 %15, i32 %20, i32 %25
  store i32 %26, i32* %dispatcher, align 4
  store i32 2, i32* %.reg2mem4, align 4
  br label %loopEnd

27:                                               ; preds = %loopStart
  %28 = icmp ne i64 %1, 1760
  %29 = icmp ne i64 %3, 7040
  %30 = select i1 %28, i1 true, i1 %29
  %31 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %32, %34
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %37, %39
  %41 = select i1 %30, i32 %35, i32 %40
  store i32 %41, i32* %dispatcher, align 4
  store i32 2, i32* %.reg2mem4, align 4
  br label %loopEnd

42:                                               ; preds = %loopStart
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #10
  %43 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %43, i8 0, i64 7040, i1 false) #10
  %44 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %45, %47
  store i32 %48, i32* %dispatcher, align 4
  store i32 0, i32* %.reg2mem4, align 4
  br label %loopEnd

49:                                               ; preds = %loopStart
  %.reload5 = load i32, i32* %.reg2mem4, align 4
  ret i32 %.reload5

BogusBasicBlock:                                  ; preds = %loopStart
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %50, align 4
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %52, align 4
  %53 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %53, align 4
  %54 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %54, align 4
  %55 = getelementptr inbounds [9 x i32], [9 x i32]* %lookupTable, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %42, %27, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
entry:
  %.reg2mem44 = alloca i32, align 4
  %.reg2mem42 = alloca i32, align 4
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem36 = alloca i1, align 1
  %.reg2mem34 = alloca i64, align 8
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem30 = alloca float*, align 8
  %.reg2mem26 = alloca i8*, align 8
  %.reg2mem23 = alloca i8*, align 8
  %.reg2mem20 = alloca i8*, align 8
  %.reg2mem17 = alloca i8*, align 8
  %.reg2mem14 = alloca i8**, align 8
  %.reg2mem10 = alloca i8**, align 8
  %.reg2mem7 = alloca i8**, align 8
  %.reg2mem3 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 6, align 8
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
  %3 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %3, i8*** %.reg2mem7, align 8
  %.reload9 = load i8**, i8*** %.reg2mem7, align 8
  store i8* blockaddress(@main, %"3"), i8** %.reload9, align 8
  %4 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %4, i8*** %.reg2mem10, align 8
  %.reload13 = load i8**, i8*** %.reg2mem10, align 8
  store i8* blockaddress(@main, %"4"), i8** %.reload13, align 8
  %5 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8** %5, i8*** %.reg2mem14, align 8
  %.reload16 = load i8**, i8*** %.reg2mem14, align 8
  store i8* blockaddress(@main, %"5"), i8** %.reload16, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [1760 x float], align 4
  %9 = alloca [1760 x i8], align 1
  %10 = bitcast float* %6 to i8*
  store i8* %10, i8** %.reg2mem17, align 8
  %.reload19 = load i8*, i8** %.reg2mem17, align 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %.reload19) #10
  store float 0.000000e+00, float* %6, align 4, !tbaa !10
  %11 = bitcast float* %7 to i8*
  store i8* %11, i8** %.reg2mem20, align 8
  %.reload22 = load i8*, i8** %.reg2mem20, align 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %.reload22) #10
  store float 0.000000e+00, float* %7, align 4, !tbaa !10
  %12 = bitcast [1760 x float]* %8 to i8*
  store i8* %12, i8** %.reg2mem23, align 8
  %.reload25 = load i8*, i8** %.reg2mem23, align 8
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %.reload25) #10
  %13 = getelementptr inbounds [1760 x i8], [1760 x i8]* %9, i64 0, i64 0
  store i8* %13, i8** %.reg2mem26, align 8
  %.reload29 = load i8*, i8** %.reg2mem26, align 8
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %.reload29) #10
  %14 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %15 = load i8*, i8** %.reload, align 8
  indirectbr i8* %15, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

BogusBasciBlock:                                  ; preds = %entry, %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %16 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@main, %EntryBasicBlockSplit), i8** %16, align 8
  %17 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8* blockaddress(@main, %BogusBasciBlock), i8** %17, align 8
  %18 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8* blockaddress(@main, %"3"), i8** %18, align 8
  %.reload1 = load i8**, i8*** %.reg2mem, align 8
  %19 = load i8*, i8** %.reload1, align 8
  indirectbr i8* %19, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

EntryBasicBlockSplit:                             ; preds = %entry, %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %20 = getelementptr inbounds [1760 x float], [1760 x float]* %8, i64 0, i64 0
  store float* %20, float** %.reg2mem30, align 8
  %.reload5 = load i8**, i8*** %.reg2mem3, align 8
  %21 = load i8*, i8** %.reload5, align 8
  store i32 0, i32* %.reg2mem42, align 4
  indirectbr i8* %21, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

"2":                                              ; preds = %entry, %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload43 = load i32, i32* %.reg2mem42, align 4
  store i32 %.reload43, i32* %.reg2mem32, align 4
  %22 = call i64 @"\01_clock"() #10
  store i64 %22, i64* %.reg2mem34, align 8
  %.reload28 = load i8*, i8** %.reg2mem26, align 8
  %.reload31 = load float*, float** %.reg2mem30, align 8
  %23 = call fastcc i32 @main_loop(float* nonnull %6, float* nonnull %7, i8* nonnull %.reload28, float* nonnull %.reload31)
  %24 = icmp eq i32 %23, 0
  store i1 %24, i1* %.reg2mem36, align 1
  %.reload8 = load i8**, i8*** %.reg2mem7, align 8
  %.reload12 = load i8**, i8*** %.reg2mem10, align 8
  %.reload38 = load i1, i1* %.reg2mem36, align 1
  %25 = select i1 %.reload38, i8** %.reload8, i8** %.reload12
  %26 = load i8*, i8** %25, align 8
  store i32 %23, i32* %.reg2mem44, align 4
  indirectbr i8* %26, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

"3":                                              ; preds = %entry, %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %27 = call i64 @"\01_clock"() #10
  %.reload35 = load i64, i64* %.reg2mem34, align 8
  %28 = sub i64 %27, %.reload35
  %29 = uitofp i64 %28 to double
  %30 = fdiv double %29, 1.000000e+06
  %31 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), double %30)
  call fastcc void @wait()
  %.reload11 = load i8**, i8*** %.reg2mem10, align 8
  %32 = load i8*, i8** %.reload11, align 8
  %.reload33 = load i32, i32* %.reg2mem32, align 4
  store i32 %.reload33, i32* %.reg2mem44, align 4
  indirectbr i8* %32, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

"4":                                              ; preds = %entry, %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload45 = load i32, i32* %.reg2mem44, align 4
  store i32 %.reload45, i32* %.reg2mem39, align 4
  %.reload4 = load i8**, i8*** %.reg2mem3, align 8
  %.reload15 = load i8**, i8*** %.reg2mem14, align 8
  %.reload37 = load i1, i1* %.reg2mem36, align 1
  %33 = select i1 %.reload37, i8** %.reload4, i8** %.reload15
  %34 = load i8*, i8** %33, align 8
  %.reload41 = load i32, i32* %.reg2mem39, align 4
  store i32 %.reload41, i32* %.reg2mem42, align 4
  indirectbr i8* %34, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5"]

"5":                                              ; preds = %entry, %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload27 = load i8*, i8** %.reg2mem26, align 8
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %.reload27) #10
  %.reload24 = load i8*, i8** %.reg2mem23, align 8
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %.reload24) #10
  %.reload21 = load i8*, i8** %.reg2mem20, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.reload21) #10
  %.reload18 = load i8*, i8** %.reg2mem17, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.reload18) #10
  %.reload40 = load i32, i32* %.reg2mem39, align 4
  ret i32 %.reload40
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare i64 @"\01_clock"() local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
entry:
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem45 = alloca i1, align 1
  %.reg2mem43 = alloca i32, align 4
  %.reg2mem41 = alloca double, align 8
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem35 = alloca i1, align 1
  %.reg2mem32 = alloca double, align 8
  %.reg2mem29 = alloca float, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem21 = alloca i8**, align 8
  %.reg2mem18 = alloca i8**, align 8
  %.reg2mem13 = alloca i8**, align 8
  %.reg2mem9 = alloca i8**, align 8
  %.reg2mem6 = alloca i8**, align 8
  %.reg2mem3 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 8, align 8
  %4 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@main_loop, %BogusBasciBlock), i8** %4, align 8
  %5 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %5, i8*** %.reg2mem, align 8
  %.reload2 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@main_loop, %EntryBasicBlockSplit), i8** %.reload2, align 8
  %6 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %6, i8*** %.reg2mem3, align 8
  %.reload5 = load i8**, i8*** %.reg2mem3, align 8
  store i8* blockaddress(@main_loop, %"2"), i8** %.reload5, align 8
  %7 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %7, i8*** %.reg2mem6, align 8
  %.reload8 = load i8**, i8*** %.reg2mem6, align 8
  store i8* blockaddress(@main_loop, %"3"), i8** %.reload8, align 8
  %8 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %8, i8*** %.reg2mem9, align 8
  %.reload12 = load i8**, i8*** %.reg2mem9, align 8
  store i8* blockaddress(@main_loop, %"4"), i8** %.reload12, align 8
  %9 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8** %9, i8*** %.reg2mem13, align 8
  %.reload17 = load i8**, i8*** %.reg2mem13, align 8
  store i8* blockaddress(@main_loop, %"5"), i8** %.reload17, align 8
  %10 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8** %10, i8*** %.reg2mem18, align 8
  %.reload20 = load i8**, i8*** %.reg2mem18, align 8
  store i8* blockaddress(@main_loop, %"6"), i8** %.reload20, align 8
  %11 = getelementptr i8*, i8** %JumpTable, i32 7
  store i8** %11, i8*** %.reg2mem21, align 8
  %.reload25 = load i8**, i8*** %.reg2mem21, align 8
  store i8* blockaddress(@main_loop, %"7"), i8** %.reload25, align 8
  %12 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  store i32 %12, i32* %.reg2mem26, align 4
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %13 = load i8*, i8** %.reload, align 8
  indirectbr i8* %13, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7"]

BogusBasciBlock:                                  ; preds = %entry, %"6", %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %14 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@main_loop, %"3"), i8** %14, align 8
  %15 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8* blockaddress(@main_loop, %"2"), i8** %15, align 8
  %16 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8* blockaddress(@main_loop, %"5"), i8** %16, align 8
  %17 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8* blockaddress(@main_loop, %"7"), i8** %17, align 8
  %.reload1 = load i8**, i8*** %.reg2mem, align 8
  %18 = load i8*, i8** %.reload1, align 8
  indirectbr i8* %18, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7"]

EntryBasicBlockSplit:                             ; preds = %entry, %"6", %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload28 = load i32, i32* %.reg2mem26, align 4
  %19 = icmp eq i32 %.reload28, 0
  %.reload4 = load i8**, i8*** %.reg2mem3, align 8
  %.reload24 = load i8**, i8*** %.reg2mem21, align 8
  %20 = select i1 %19, i8** %.reload4, i8** %.reload24
  %21 = load i8*, i8** %20, align 8
  %.reload27 = load i32, i32* %.reg2mem26, align 4
  store i32 %.reload27, i32* %.reg2mem47, align 4
  indirectbr i8* %21, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7"]

"2":                                              ; preds = %entry, %"6", %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %22 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %23 = icmp eq i32 %22, 0
  %.reload11 = load i8**, i8*** %.reg2mem9, align 8
  %.reload16 = load i8**, i8*** %.reg2mem13, align 8
  %24 = select i1 %23, i8** %.reload11, i8** %.reload16
  %25 = load i8*, i8** %24, align 8
  store i32 %22, i32* %.reg2mem39, align 4
  store double 0.000000e+00, double* %.reg2mem41, align 8
  store i32 %22, i32* %.reg2mem43, align 4
  store i1 true, i1* %.reg2mem45, align 1
  indirectbr i8* %25, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7"]

"3":                                              ; preds = %entry, %"6", %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload31 = load float, float* %.reg2mem29, align 4
  %26 = call fastcc i32 @inner_loop(float %.reload31, float* %0, float* %1, i8* %2, float* %3)
  %27 = icmp eq i32 %26, 0
  %.reload10 = load i8**, i8*** %.reg2mem9, align 8
  %.reload15 = load i8**, i8*** %.reg2mem13, align 8
  %28 = select i1 %27, i8** %.reload10, i8** %.reload15
  %29 = load i8*, i8** %28, align 8
  %.reload34 = load double, double* %.reg2mem32, align 8
  %.reload37 = load i1, i1* %.reg2mem35, align 1
  store i32 %26, i32* %.reg2mem39, align 4
  store double %.reload34, double* %.reg2mem41, align 8
  store i32 %26, i32* %.reg2mem43, align 4
  store i1 %.reload37, i1* %.reg2mem45, align 1
  indirectbr i8* %29, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7"]

"4":                                              ; preds = %entry, %"6", %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload42 = load double, double* %.reg2mem41, align 8
  %.reload40 = load i32, i32* %.reg2mem39, align 4
  %30 = fadd double %.reload42, 7.000000e-02
  %31 = fptrunc double %30 to float
  store float %31, float* %.reg2mem29, align 4
  %.reload30 = load float, float* %.reg2mem29, align 4
  %32 = fpext float %.reload30 to double
  store double %32, double* %.reg2mem32, align 8
  %.reload33 = load double, double* %.reg2mem32, align 8
  %33 = fcmp olt double %.reload33, 6.280000e+00
  store i1 %33, i1* %.reg2mem35, align 1
  %.reload7 = load i8**, i8*** %.reg2mem6, align 8
  %.reload14 = load i8**, i8*** %.reg2mem13, align 8
  %.reload36 = load i1, i1* %.reg2mem35, align 1
  %34 = select i1 %.reload36, i8** %.reload7, i8** %.reload14
  %35 = load i8*, i8** %34, align 8
  %.reload38 = load i1, i1* %.reg2mem35, align 1
  store i32 %.reload40, i32* %.reg2mem43, align 4
  store i1 %.reload38, i1* %.reg2mem45, align 1
  indirectbr i8* %35, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7"]

"5":                                              ; preds = %entry, %"6", %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload46 = load i1, i1* %.reg2mem45, align 1
  %.reload44 = load i32, i32* %.reg2mem43, align 4
  %.reload19 = load i8**, i8*** %.reg2mem18, align 8
  %.reload23 = load i8**, i8*** %.reg2mem21, align 8
  %36 = select i1 %.reload46, i8** %.reload23, i8** %.reload19
  %37 = load i8*, i8** %36, align 8
  store i32 %.reload44, i32* %.reg2mem47, align 4
  indirectbr i8* %37, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7"]

"6":                                              ; preds = %entry, %"6", %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %38 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  %.reload22 = load i8**, i8*** %.reg2mem21, align 8
  %40 = load i8*, i8** %.reload22, align 8
  store i32 %39, i32* %.reg2mem47, align 4
  indirectbr i8* %40, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6", label %"7"]

"7":                                              ; preds = %entry, %"6", %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload48 = load i32, i32* %.reg2mem47, align 4
  ret i32 %.reload48
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #6 {
  %1 = call i32 @"\01_usleep"(i32 30000) #10
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #7 {
entry:
  %.reg2mem41 = alloca i32, align 4
  %.reg2mem39 = alloca double, align 8
  %.reg2mem36 = alloca float*, align 8
  %.reg2mem33 = alloca i64, align 8
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem27 = alloca i32, align 4
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem18 = alloca float, align 4
  %.reg2mem14 = alloca double, align 8
  %.reg2mem11 = alloca float, align 4
  %.reg2mem8 = alloca float, align 4
  %.reg2mem4 = alloca float, align 4
  %.reg2mem2 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %lookupTable = alloca [12 x i32], align 4
  %5 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %5, align 4
  %6 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %6, align 4
  %7 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %7, align 4
  %8 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %11, align 4
  %12 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %12, align 4
  %13 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 8
  store i32 5, i32* %13, align 4
  %14 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 9
  store i32 6, i32* %14, align 4
  %15 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 10
  store i32 7, i32* %15, align 4
  %16 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 11
  store i32 8, i32* %16, align 4
  %17 = icmp eq float* %1, null
  %18 = icmp eq float* %2, null
  %19 = select i1 %17, i1 true, i1 %18
  %20 = icmp eq i8* %3, null
  %21 = select i1 %19, i1 true, i1 %20
  store i1 %21, i1* %.reg2mem, align 1
  %22 = icmp eq float* %4, null
  store i1 %22, i1* %.reg2mem2, align 1
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %35
    i32 2, label %47
    i32 3, label %117
    i32 4, label %135
    i32 5, label %148
    i32 6, label %164
    i32 7, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %.reload = load i1, i1* %.reg2mem, align 1
  %.reload3 = load i1, i1* %.reg2mem2, align 1
  %23 = select i1 %.reload, i1 true, i1 %.reload3
  %24 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %25, %27
  %29 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %30, %32
  %34 = select i1 %23, i32 %28, i32 %33
  store i32 %34, i32* %dispatcher, align 4
  store i32 2, i32* %.reg2mem41, align 4
  br label %loopEnd

35:                                               ; preds = %loopStart
  %36 = fpext float %0 to double
  %37 = call double @llvm.cos.f64(double %36)
  %38 = fptrunc double %37 to float
  store float %38, float* %.reg2mem4, align 4
  %39 = call double @llvm.sin.f64(double %36)
  %40 = fptrunc double %39 to float
  store float %40, float* %.reg2mem8, align 4
  %.reload7 = load float, float* %.reg2mem4, align 4
  %41 = fadd float %.reload7, 2.000000e+00
  store float %41, float* %.reg2mem11, align 4
  %42 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = srem i32 %43, %45
  store i32 %46, i32* %dispatcher, align 4
  store double 0.000000e+00, double* %.reg2mem39, align 8
  br label %loopEnd

47:                                               ; preds = %loopStart
  %.reload40 = load double, double* %.reg2mem39, align 8
  store double %.reload40, double* %.reg2mem14, align 8
  %.reload17 = load double, double* %.reg2mem14, align 8
  %48 = call double @llvm.sin.f64(double %.reload17)
  %49 = fptrunc double %48 to float
  %50 = load float, float* %1, align 4, !tbaa !10
  %51 = fpext float %50 to double
  %52 = call double @llvm.sin.f64(double %51)
  %53 = fptrunc double %52 to float
  %54 = call double @llvm.cos.f64(double %51)
  %55 = fptrunc double %54 to float
  %.reload13 = load float, float* %.reg2mem11, align 4
  %56 = fmul float %.reload13, %49
  %57 = fmul float %56, %53
  %.reload10 = load float, float* %.reg2mem8, align 4
  %58 = fmul float %.reload10, %55
  %59 = fadd float %57, %58
  %60 = fadd float %59, 5.000000e+00
  %61 = fdiv float 1.000000e+00, %60
  store float %61, float* %.reg2mem18, align 4
  %.reload16 = load double, double* %.reg2mem14, align 8
  %62 = call double @llvm.cos.f64(double %.reload16)
  %63 = fptrunc double %62 to float
  %64 = load float, float* %2, align 4, !tbaa !10
  %65 = fpext float %64 to double
  %66 = call double @llvm.cos.f64(double %65)
  %67 = fptrunc double %66 to float
  %68 = call double @llvm.sin.f64(double %65)
  %69 = fptrunc double %68 to float
  %70 = fmul float %56, %55
  %.reload9 = load float, float* %.reg2mem8, align 4
  %71 = fmul float %.reload9, %53
  %72 = fsub float %70, %71
  %.reload22 = load float, float* %.reg2mem18, align 4
  %73 = fmul float %.reload22, 3.000000e+01
  %.reload12 = load float, float* %.reg2mem11, align 4
  %74 = fmul float %.reload12, %63
  %75 = fmul float %74, %67
  %76 = fmul float %72, %69
  %77 = fsub float %75, %76
  %78 = fmul float %77, %73
  %79 = fadd float %78, 4.000000e+01
  %80 = fptosi float %79 to i32
  store i32 %80, i32* %.reg2mem23, align 4
  %.reload21 = load float, float* %.reg2mem18, align 4
  %81 = fmul float %.reload21, 1.500000e+01
  %82 = fmul float %74, %69
  %83 = fmul float %72, %67
  %84 = fadd float %82, %83
  %85 = fmul float %84, %81
  %86 = fadd float %85, 1.200000e+01
  %87 = fptosi float %86 to i32
  store i32 %87, i32* %.reg2mem27, align 4
  %.reload6 = load float, float* %.reg2mem4, align 4
  %88 = fmul float %.reload6, %49
  %89 = fmul float %88, %55
  %90 = fsub float %71, %89
  %91 = fmul float %90, %67
  %92 = fmul float %88, %53
  %93 = fsub float %91, %92
  %94 = fsub float %93, %58
  %.reload5 = load float, float* %.reg2mem4, align 4
  %95 = fmul float %.reload5, %63
  %96 = fmul float %95, %69
  %97 = fsub float %94, %96
  %98 = fmul float %97, 8.000000e+00
  %99 = fptosi float %98 to i32
  store i32 %99, i32* %.reg2mem30, align 4
  %.reload29 = load i32, i32* %.reg2mem27, align 4
  %100 = add i32 %.reload29, -1
  %101 = icmp ult i32 %100, 21
  %.reload26 = load i32, i32* %.reg2mem23, align 4
  %102 = icmp sgt i32 %.reload26, 0
  %103 = select i1 %101, i1 %102, i1 false
  %.reload25 = load i32, i32* %.reg2mem23, align 4
  %104 = icmp slt i32 %.reload25, 80
  %105 = select i1 %103, i1 %104, i1 false
  %106 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %107, %109
  %111 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sub i32 %112, %114
  %116 = select i1 %105, i32 %110, i32 %115
  store i32 %116, i32* %dispatcher, align 4
  br label %loopEnd

117:                                              ; preds = %loopStart
  %.reload28 = load i32, i32* %.reg2mem27, align 4
  %118 = mul nsw i32 %.reload28, 80
  %.reload24 = load i32, i32* %.reg2mem23, align 4
  %119 = add nsw i32 %118, %.reload24
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %.reg2mem33, align 8
  %.reload35 = load i64, i64* %.reg2mem33, align 8
  %121 = getelementptr inbounds float, float* %4, i64 %.reload35
  store float* %121, float** %.reg2mem36, align 8
  %.reload38 = load float*, float** %.reg2mem36, align 8
  %122 = load float, float* %.reload38, align 4, !tbaa !10
  %.reload20 = load float, float* %.reg2mem18, align 4
  %123 = fcmp ogt float %.reload20, %122
  %124 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sub i32 %125, %127
  %129 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 11
  %132 = load i32, i32* %131, align 4
  %133 = srem i32 %130, %132
  %134 = select i1 %123, i32 %128, i32 %133
  store i32 %134, i32* %dispatcher, align 4
  br label %loopEnd

135:                                              ; preds = %loopStart
  %.reload19 = load float, float* %.reg2mem18, align 4
  %.reload37 = load float*, float** %.reg2mem36, align 8
  store float %.reload19, float* %.reload37, align 4, !tbaa !10
  %136 = load i8*, i8** @CHARS, align 8, !tbaa !15
  %.reload32 = load i32, i32* %.reg2mem30, align 4
  %137 = icmp sgt i32 %.reload32, 0
  %.reload31 = load i32, i32* %.reg2mem30, align 4
  %138 = select i1 %137, i32 %.reload31, i32 0
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = load i8, i8* %140, align 1, !tbaa !14
  %.reload34 = load i64, i64* %.reg2mem33, align 8
  %142 = getelementptr inbounds i8, i8* %3, i64 %.reload34
  store i8 %141, i8* %142, align 1, !tbaa !14
  %143 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 11
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = sub i32 %144, %146
  store i32 %147, i32* %dispatcher, align 4
  br label %loopEnd

148:                                              ; preds = %loopStart
  %.reload15 = load double, double* %.reg2mem14, align 8
  %149 = fadd double %.reload15, 2.000000e-02
  %150 = fptrunc double %149 to float
  %151 = fpext float %150 to double
  %152 = fcmp olt double %151, 6.280000e+00
  %153 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 11
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %154, %156
  %158 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub i32 %159, %161
  %163 = select i1 %152, i32 %157, i32 %162
  store i32 %163, i32* %dispatcher, align 4
  store double %151, double* %.reg2mem39, align 8
  store i32 0, i32* %.reg2mem41, align 4
  br label %loopEnd

164:                                              ; preds = %loopStart
  %.reload42 = load i32, i32* %.reg2mem41, align 4
  ret i32 %.reload42

BogusBasicBlock:                                  ; preds = %loopStart
  %165 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %165, align 4
  %166 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %166, align 4
  %167 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %167, align 4
  %168 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %168, align 4
  %169 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %169, align 4
  %170 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 10
  store i32 9, i32* %170, align 4
  %171 = getelementptr inbounds [12 x i32], [12 x i32]* %lookupTable, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %148, %135, %117, %47, %35, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #8

declare i32 @"\01_usleep"(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree noinline nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!14 = !{!12, !12, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}

; ModuleID = 'output/cff/ex5/ex5.ll'
source_filename = "input/cff/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z12duffs_deviceiPiS_(i32 %0, i32* nocapture readonly %1, i32* nocapture %2) local_unnamed_addr #0 {
entry:
  %.reg2mem121 = alloca i32*, align 8
  %.reg2mem119 = alloca i32, align 4
  %.reg2mem117 = alloca i32*, align 8
  %.reg2mem115 = alloca i32, align 4
  %.reg2mem113 = alloca i32*, align 8
  %.reg2mem111 = alloca i32, align 4
  %.reg2mem109 = alloca i32*, align 8
  %.reg2mem107 = alloca i32, align 4
  %.reg2mem105 = alloca i32*, align 8
  %.reg2mem103 = alloca i32, align 4
  %.reg2mem101 = alloca i32*, align 8
  %.reg2mem99 = alloca i32, align 4
  %.reg2mem97 = alloca i32*, align 8
  %.reg2mem95 = alloca i32, align 4
  %.reg2mem93 = alloca i32*, align 8
  %.reg2mem91 = alloca i32, align 4
  %.reg2mem89 = alloca i32*, align 8
  %.reg2mem80 = alloca i32, align 4
  %.reg2mem71 = alloca i32, align 4
  %.reg2mem67 = alloca i8**, align 8
  %.reg2mem63 = alloca i8**, align 8
  %.reg2mem59 = alloca i8**, align 8
  %.reg2mem55 = alloca i8**, align 8
  %.reg2mem51 = alloca i8**, align 8
  %.reg2mem47 = alloca i8**, align 8
  %.reg2mem43 = alloca i8**, align 8
  %.reg2mem39 = alloca i8**, align 8
  %.reg2mem35 = alloca i8**, align 8
  %.reg2mem32 = alloca i8**, align 8
  %.reg2mem29 = alloca i8**, align 8
  %.reg2mem26 = alloca i8**, align 8
  %.reg2mem23 = alloca i8**, align 8
  %.reg2mem20 = alloca i8**, align 8
  %.reg2mem17 = alloca i8**, align 8
  %.reg2mem14 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 18, align 8
  %3 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %EntryBasicBlockSplit), i8** %3, align 8
  %4 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %4, i8*** %.reg2mem, align 8
  %.reload13 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock11), i8** %.reload13, align 8
  %5 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %5, i8*** %.reg2mem14, align 8
  %.reload16 = load i8**, i8*** %.reg2mem14, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock9), i8** %.reload16, align 8
  %6 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %6, i8*** %.reg2mem17, align 8
  %.reload19 = load i8**, i8*** %.reg2mem17, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock7), i8** %.reload19, align 8
  %7 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %7, i8*** %.reg2mem20, align 8
  %.reload22 = load i8**, i8*** %.reg2mem20, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock5), i8** %.reload22, align 8
  %8 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8** %8, i8*** %.reg2mem23, align 8
  %.reload25 = load i8**, i8*** %.reg2mem23, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock3), i8** %.reload25, align 8
  %9 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8** %9, i8*** %.reg2mem26, align 8
  %.reload28 = load i8**, i8*** %.reg2mem26, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock1), i8** %.reload28, align 8
  %10 = getelementptr i8*, i8** %JumpTable, i32 7
  store i8** %10, i8*** %.reg2mem29, align 8
  %.reload31 = load i8**, i8*** %.reg2mem29, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock), i8** %.reload31, align 8
  %11 = getelementptr i8*, i8** %JumpTable, i32 8
  store i8** %11, i8*** %.reg2mem32, align 8
  %.reload34 = load i8**, i8*** %.reg2mem32, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %LeafBlock), i8** %.reload34, align 8
  %12 = getelementptr i8*, i8** %JumpTable, i32 9
  store i8** %12, i8*** %.reg2mem35, align 8
  %.reload38 = load i8**, i8*** %.reg2mem35, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"9"), i8** %.reload38, align 8
  %13 = getelementptr i8*, i8** %JumpTable, i32 10
  store i8** %13, i8*** %.reg2mem39, align 8
  %.reload42 = load i8**, i8*** %.reg2mem39, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"10"), i8** %.reload42, align 8
  %14 = getelementptr i8*, i8** %JumpTable, i32 11
  store i8** %14, i8*** %.reg2mem43, align 8
  %.reload46 = load i8**, i8*** %.reg2mem43, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"11"), i8** %.reload46, align 8
  %15 = getelementptr i8*, i8** %JumpTable, i32 12
  store i8** %15, i8*** %.reg2mem47, align 8
  %.reload50 = load i8**, i8*** %.reg2mem47, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"12"), i8** %.reload50, align 8
  %16 = getelementptr i8*, i8** %JumpTable, i32 13
  store i8** %16, i8*** %.reg2mem51, align 8
  %.reload54 = load i8**, i8*** %.reg2mem51, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"13"), i8** %.reload54, align 8
  %17 = getelementptr i8*, i8** %JumpTable, i32 14
  store i8** %17, i8*** %.reg2mem55, align 8
  %.reload58 = load i8**, i8*** %.reg2mem55, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"14"), i8** %.reload58, align 8
  %18 = getelementptr i8*, i8** %JumpTable, i32 15
  store i8** %18, i8*** %.reg2mem59, align 8
  %.reload62 = load i8**, i8*** %.reg2mem59, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"15"), i8** %.reload62, align 8
  %19 = getelementptr i8*, i8** %JumpTable, i32 16
  store i8** %19, i8*** %.reg2mem63, align 8
  %.reload66 = load i8**, i8*** %.reg2mem63, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"16"), i8** %.reload66, align 8
  %20 = getelementptr i8*, i8** %JumpTable, i32 17
  store i8** %20, i8*** %.reg2mem67, align 8
  %.reload70 = load i8**, i8*** %.reg2mem67, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"17"), i8** %.reload70, align 8
  %21 = add nsw i32 %0, 7
  %22 = sdiv i32 %21, 8
  store i32 %22, i32* %.reg2mem71, align 4
  %23 = load i8*, i8** %3, align 8
  indirectbr i8* %23, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

EntryBasicBlockSplit:                             ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %24 = srem i32 %0, 8
  store i32 %24, i32* %.reg2mem80, align 4
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %25 = load i8*, i8** %.reload, align 8
  indirectbr i8* %25, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

NodeBlock11:                                      ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload88 = load i32, i32* %.reg2mem80, align 4
  %Pivot12 = icmp slt i32 %.reload88, 4
  %.reload15 = load i8**, i8*** %.reg2mem14, align 8
  %.reload24 = load i8**, i8*** %.reg2mem23, align 8
  %26 = select i1 %Pivot12, i8** %.reload24, i8** %.reload15
  %27 = load i8*, i8** %26, align 8
  indirectbr i8* %27, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

NodeBlock9:                                       ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload83 = load i32, i32* %.reg2mem80, align 4
  %Pivot10 = icmp slt i32 %.reload83, 6
  %.reload18 = load i8**, i8*** %.reg2mem17, align 8
  %.reload21 = load i8**, i8*** %.reg2mem20, align 8
  %28 = select i1 %Pivot10, i8** %.reload21, i8** %.reload18
  %29 = load i8*, i8** %28, align 8
  indirectbr i8* %29, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

NodeBlock7:                                       ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload81 = load i32, i32* %.reg2mem80, align 4
  %Pivot8 = icmp slt i32 %.reload81, 7
  %.reload41 = load i8**, i8*** %.reg2mem39, align 8
  %.reload45 = load i8**, i8*** %.reg2mem43, align 8
  %30 = select i1 %Pivot8, i8** %.reload45, i8** %.reload41
  %31 = load i8*, i8** %30, align 8
  %.reload77 = load i32, i32* %.reg2mem71, align 4
  %.reload78 = load i32, i32* %.reg2mem71, align 4
  store i32* %1, i32** %.reg2mem93, align 8
  store i32 %.reload78, i32* %.reg2mem95, align 4
  store i32* %1, i32** %.reg2mem97, align 8
  store i32 %.reload77, i32* %.reg2mem99, align 4
  indirectbr i8* %31, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

NodeBlock5:                                       ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload82 = load i32, i32* %.reg2mem80, align 4
  %Pivot6 = icmp slt i32 %.reload82, 5
  %.reload49 = load i8**, i8*** %.reg2mem47, align 8
  %.reload53 = load i8**, i8*** %.reg2mem51, align 8
  %32 = select i1 %Pivot6, i8** %.reload53, i8** %.reload49
  %33 = load i8*, i8** %32, align 8
  %.reload75 = load i32, i32* %.reg2mem71, align 4
  %.reload76 = load i32, i32* %.reg2mem71, align 4
  store i32* %1, i32** %.reg2mem101, align 8
  store i32 %.reload76, i32* %.reg2mem103, align 4
  store i32* %1, i32** %.reg2mem105, align 8
  store i32 %.reload75, i32* %.reg2mem107, align 4
  indirectbr i8* %33, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

NodeBlock3:                                       ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload87 = load i32, i32* %.reg2mem80, align 4
  %Pivot4 = icmp slt i32 %.reload87, 2
  %.reload27 = load i8**, i8*** %.reg2mem26, align 8
  %.reload30 = load i8**, i8*** %.reg2mem29, align 8
  %34 = select i1 %Pivot4, i8** %.reload30, i8** %.reload27
  %35 = load i8*, i8** %34, align 8
  indirectbr i8* %35, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

NodeBlock1:                                       ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload84 = load i32, i32* %.reg2mem80, align 4
  %Pivot2 = icmp slt i32 %.reload84, 3
  %.reload57 = load i8**, i8*** %.reg2mem55, align 8
  %.reload61 = load i8**, i8*** %.reg2mem59, align 8
  %36 = select i1 %Pivot2, i8** %.reload61, i8** %.reload57
  %37 = load i8*, i8** %36, align 8
  %.reload73 = load i32, i32* %.reg2mem71, align 4
  %.reload74 = load i32, i32* %.reg2mem71, align 4
  store i32* %1, i32** %.reg2mem109, align 8
  store i32 %.reload74, i32* %.reg2mem111, align 4
  store i32* %1, i32** %.reg2mem113, align 8
  store i32 %.reload73, i32* %.reg2mem115, align 4
  indirectbr i8* %37, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

NodeBlock:                                        ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload86 = load i32, i32* %.reg2mem80, align 4
  %Pivot = icmp slt i32 %.reload86, 1
  %.reload33 = load i8**, i8*** %.reg2mem32, align 8
  %.reload65 = load i8**, i8*** %.reg2mem63, align 8
  %38 = select i1 %Pivot, i8** %.reload33, i8** %.reload65
  %39 = load i8*, i8** %38, align 8
  %.reload72 = load i32, i32* %.reg2mem71, align 4
  store i32* %1, i32** %.reg2mem117, align 8
  store i32 %.reload72, i32* %.reg2mem119, align 4
  indirectbr i8* %39, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

LeafBlock:                                        ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload85 = load i32, i32* %.reg2mem80, align 4
  %SwitchLeaf = icmp eq i32 %.reload85, 0
  %.reload37 = load i8**, i8*** %.reg2mem35, align 8
  %.reload69 = load i8**, i8*** %.reg2mem67, align 8
  %40 = select i1 %SwitchLeaf, i8** %.reload37, i8** %.reload69
  %41 = load i8*, i8** %40, align 8
  %.reload79 = load i32, i32* %.reg2mem71, align 4
  store i32* %1, i32** %.reg2mem89, align 8
  store i32 %.reload79, i32* %.reg2mem91, align 4
  store i32* %1, i32** %.reg2mem121, align 8
  indirectbr i8* %41, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

"9":                                              ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload92 = load i32, i32* %.reg2mem91, align 4
  %.reload90 = load i32*, i32** %.reg2mem89, align 8
  %42 = getelementptr inbounds i32, i32* %.reload90, i64 1
  %43 = load i32, i32* %.reload90, align 4, !tbaa !10
  store i32 %43, i32* %2, align 4, !tbaa !10
  %.reload40 = load i8**, i8*** %.reg2mem39, align 8
  %44 = load i8*, i8** %.reload40, align 8
  store i32* %42, i32** %.reg2mem93, align 8
  store i32 %.reload92, i32* %.reg2mem95, align 4
  indirectbr i8* %44, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

"10":                                             ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload96 = load i32, i32* %.reg2mem95, align 4
  %.reload94 = load i32*, i32** %.reg2mem93, align 8
  %45 = getelementptr inbounds i32, i32* %.reload94, i64 1
  %46 = load i32, i32* %.reload94, align 4, !tbaa !10
  store i32 %46, i32* %2, align 4, !tbaa !10
  %.reload44 = load i8**, i8*** %.reg2mem43, align 8
  %47 = load i8*, i8** %.reload44, align 8
  store i32* %45, i32** %.reg2mem97, align 8
  store i32 %.reload96, i32* %.reg2mem99, align 4
  indirectbr i8* %47, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

"11":                                             ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload100 = load i32, i32* %.reg2mem99, align 4
  %.reload98 = load i32*, i32** %.reg2mem97, align 8
  %48 = getelementptr inbounds i32, i32* %.reload98, i64 1
  %49 = load i32, i32* %.reload98, align 4, !tbaa !10
  store i32 %49, i32* %2, align 4, !tbaa !10
  %.reload48 = load i8**, i8*** %.reg2mem47, align 8
  %50 = load i8*, i8** %.reload48, align 8
  store i32* %48, i32** %.reg2mem101, align 8
  store i32 %.reload100, i32* %.reg2mem103, align 4
  indirectbr i8* %50, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

"12":                                             ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload104 = load i32, i32* %.reg2mem103, align 4
  %.reload102 = load i32*, i32** %.reg2mem101, align 8
  %51 = getelementptr inbounds i32, i32* %.reload102, i64 1
  %52 = load i32, i32* %.reload102, align 4, !tbaa !10
  store i32 %52, i32* %2, align 4, !tbaa !10
  %.reload52 = load i8**, i8*** %.reg2mem51, align 8
  %53 = load i8*, i8** %.reload52, align 8
  store i32* %51, i32** %.reg2mem105, align 8
  store i32 %.reload104, i32* %.reg2mem107, align 4
  indirectbr i8* %53, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

"13":                                             ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload108 = load i32, i32* %.reg2mem107, align 4
  %.reload106 = load i32*, i32** %.reg2mem105, align 8
  %54 = getelementptr inbounds i32, i32* %.reload106, i64 1
  %55 = load i32, i32* %.reload106, align 4, !tbaa !10
  store i32 %55, i32* %2, align 4, !tbaa !10
  %.reload56 = load i8**, i8*** %.reg2mem55, align 8
  %56 = load i8*, i8** %.reload56, align 8
  store i32* %54, i32** %.reg2mem109, align 8
  store i32 %.reload108, i32* %.reg2mem111, align 4
  indirectbr i8* %56, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

"14":                                             ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload112 = load i32, i32* %.reg2mem111, align 4
  %.reload110 = load i32*, i32** %.reg2mem109, align 8
  %57 = getelementptr inbounds i32, i32* %.reload110, i64 1
  %58 = load i32, i32* %.reload110, align 4, !tbaa !10
  store i32 %58, i32* %2, align 4, !tbaa !10
  %.reload60 = load i8**, i8*** %.reg2mem59, align 8
  %59 = load i8*, i8** %.reload60, align 8
  store i32* %57, i32** %.reg2mem113, align 8
  store i32 %.reload112, i32* %.reg2mem115, align 4
  indirectbr i8* %59, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

"15":                                             ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload116 = load i32, i32* %.reg2mem115, align 4
  %.reload114 = load i32*, i32** %.reg2mem113, align 8
  %60 = getelementptr inbounds i32, i32* %.reload114, i64 1
  %61 = load i32, i32* %.reload114, align 4, !tbaa !10
  store i32 %61, i32* %2, align 4, !tbaa !10
  %.reload64 = load i8**, i8*** %.reg2mem63, align 8
  %62 = load i8*, i8** %.reload64, align 8
  store i32* %60, i32** %.reg2mem117, align 8
  store i32 %.reload116, i32* %.reg2mem119, align 4
  indirectbr i8* %62, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

"16":                                             ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload120 = load i32, i32* %.reg2mem119, align 4
  %.reload118 = load i32*, i32** %.reg2mem117, align 8
  %63 = getelementptr inbounds i32, i32* %.reload118, i64 1
  %64 = load i32, i32* %.reload118, align 4, !tbaa !10
  store i32 %64, i32* %2, align 4, !tbaa !10
  %65 = add nsw i32 %.reload120, -1
  %66 = icmp sgt i32 %.reload120, 1
  %.reload36 = load i8**, i8*** %.reg2mem35, align 8
  %.reload68 = load i8**, i8*** %.reg2mem67, align 8
  %67 = select i1 %66, i8** %.reload36, i8** %.reload68
  %68 = load i8*, i8** %67, align 8
  store i32* %63, i32** %.reg2mem89, align 8
  store i32 %65, i32* %.reg2mem91, align 4
  store i32* %63, i32** %.reg2mem121, align 8
  indirectbr i8* %68, [label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"9", label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17"]

"17":                                             ; preds = %entry, %"16", %"15", %"14", %"13", %"12", %"11", %"10", %"9", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit
  %.reload122 = load i32*, i32** %.reg2mem121, align 8
  %69 = load i32, i32* %.reload122, align 4, !tbaa !10
  %70 = add nsw i32 %69, %0
  %71 = load i32, i32* %2, align 4, !tbaa !10
  %72 = add nsw i32 %70, %71
  ret i32 %72
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #2
  store i32 1, i32* %3, align 4, !tbaa !10
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #2
  store i32 5, i32* %4, align 4, !tbaa !10
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #2
  store i32 1, i32* %5, align 4, !tbaa !10
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #2
  store i32 5, i32* %6, align 4, !tbaa !10
  %11 = call i32 @_Z12duffs_deviceiPiS_(i32 15, i32* nonnull %3, i32* nonnull %4)
  %12 = call i32 @_Z12duffs_deviceiPiS_(i32 25, i32* nonnull %5, i32* nonnull %6)
  %13 = add nsw i32 %12, %11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #2
  ret i32 %13
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

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
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}

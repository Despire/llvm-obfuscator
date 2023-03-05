; ModuleID = 'output/cff/ex5/ex5.ll'
source_filename = "input/cff/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z12duffs_deviceiPiS_(i32 %0, i32* nocapture readonly %1, i32* nocapture %2) local_unnamed_addr #0 {
entry:
  %.reg2mem125 = alloca i32*, align 8
  %.reg2mem123 = alloca i32, align 4
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
  %.reg2mem84 = alloca i32, align 4
  %.reg2mem75 = alloca i32, align 4
  %.reg2mem71 = alloca i8**, align 8
  %.reg2mem67 = alloca i8**, align 8
  %.reg2mem63 = alloca i8**, align 8
  %.reg2mem59 = alloca i8**, align 8
  %.reg2mem55 = alloca i8**, align 8
  %.reg2mem51 = alloca i8**, align 8
  %.reg2mem47 = alloca i8**, align 8
  %.reg2mem43 = alloca i8**, align 8
  %.reg2mem39 = alloca i8**, align 8
  %.reg2mem36 = alloca i8**, align 8
  %.reg2mem33 = alloca i8**, align 8
  %.reg2mem30 = alloca i8**, align 8
  %.reg2mem27 = alloca i8**, align 8
  %.reg2mem24 = alloca i8**, align 8
  %.reg2mem21 = alloca i8**, align 8
  %.reg2mem18 = alloca i8**, align 8
  %.reg2mem15 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 19, align 8
  %3 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %BogusBasciBlock), i8** %3, align 8
  %4 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %4, i8*** %.reg2mem, align 8
  %.reload14 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %EntryBasicBlockSplit), i8** %.reload14, align 8
  %5 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %5, i8*** %.reg2mem15, align 8
  %.reload17 = load i8**, i8*** %.reg2mem15, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock11), i8** %.reload17, align 8
  %6 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %6, i8*** %.reg2mem18, align 8
  %.reload20 = load i8**, i8*** %.reg2mem18, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock9), i8** %.reload20, align 8
  %7 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %7, i8*** %.reg2mem21, align 8
  %.reload23 = load i8**, i8*** %.reg2mem21, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock7), i8** %.reload23, align 8
  %8 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8** %8, i8*** %.reg2mem24, align 8
  %.reload26 = load i8**, i8*** %.reg2mem24, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock5), i8** %.reload26, align 8
  %9 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8** %9, i8*** %.reg2mem27, align 8
  %.reload29 = load i8**, i8*** %.reg2mem27, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock3), i8** %.reload29, align 8
  %10 = getelementptr i8*, i8** %JumpTable, i32 7
  store i8** %10, i8*** %.reg2mem30, align 8
  %.reload32 = load i8**, i8*** %.reg2mem30, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock1), i8** %.reload32, align 8
  %11 = getelementptr i8*, i8** %JumpTable, i32 8
  store i8** %11, i8*** %.reg2mem33, align 8
  %.reload35 = load i8**, i8*** %.reg2mem33, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock), i8** %.reload35, align 8
  %12 = getelementptr i8*, i8** %JumpTable, i32 9
  store i8** %12, i8*** %.reg2mem36, align 8
  %.reload38 = load i8**, i8*** %.reg2mem36, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %LeafBlock), i8** %.reload38, align 8
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
  %21 = getelementptr i8*, i8** %JumpTable, i32 18
  store i8** %21, i8*** %.reg2mem71, align 8
  %.reload74 = load i8**, i8*** %.reg2mem71, align 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"18"), i8** %.reload74, align 8
  %22 = add nsw i32 %0, 7
  %23 = sdiv i32 %22, 8
  store i32 %23, i32* %.reg2mem75, align 4
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %24 = load i8*, i8** %.reload, align 8
  indirectbr i8* %24, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

BogusBasciBlock:                                  ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %25 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"16"), i8** %25, align 8
  %26 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %EntryBasicBlockSplit), i8** %26, align 8
  %27 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"17"), i8** %27, align 8
  %28 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"13"), i8** %28, align 8
  %29 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock1), i8** %29, align 8
  %30 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock11), i8** %30, align 8
  %31 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"14"), i8** %31, align 8
  %32 = getelementptr i8*, i8** %JumpTable, i32 7
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"10"), i8** %32, align 8
  %33 = getelementptr i8*, i8** %JumpTable, i32 8
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %BogusBasciBlock), i8** %33, align 8
  %34 = getelementptr i8*, i8** %JumpTable, i32 9
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"11"), i8** %34, align 8
  %35 = getelementptr i8*, i8** %JumpTable, i32 10
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %LeafBlock), i8** %35, align 8
  %36 = getelementptr i8*, i8** %JumpTable, i32 11
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock7), i8** %36, align 8
  %37 = getelementptr i8*, i8** %JumpTable, i32 12
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"18"), i8** %37, align 8
  %38 = getelementptr i8*, i8** %JumpTable, i32 13
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock9), i8** %38, align 8
  %39 = getelementptr i8*, i8** %JumpTable, i32 14
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock3), i8** %39, align 8
  %40 = getelementptr i8*, i8** %JumpTable, i32 15
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"12"), i8** %40, align 8
  %41 = getelementptr i8*, i8** %JumpTable, i32 16
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock5), i8** %41, align 8
  %42 = getelementptr i8*, i8** %JumpTable, i32 17
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %"15"), i8** %42, align 8
  %43 = getelementptr i8*, i8** %JumpTable, i32 18
  store i8* blockaddress(@_Z12duffs_deviceiPiS_, %NodeBlock), i8** %43, align 8
  %.reload13 = load i8**, i8*** %.reg2mem, align 8
  %44 = load i8*, i8** %.reload13, align 8
  indirectbr i8* %44, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

EntryBasicBlockSplit:                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %45 = srem i32 %0, 8
  store i32 %45, i32* %.reg2mem84, align 4
  %.reload16 = load i8**, i8*** %.reg2mem15, align 8
  %46 = load i8*, i8** %.reload16, align 8
  indirectbr i8* %46, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

NodeBlock11:                                      ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload92 = load i32, i32* %.reg2mem84, align 4
  %Pivot12 = icmp slt i32 %.reload92, 4
  %.reload19 = load i8**, i8*** %.reg2mem18, align 8
  %.reload28 = load i8**, i8*** %.reg2mem27, align 8
  %47 = select i1 %Pivot12, i8** %.reload28, i8** %.reload19
  %48 = load i8*, i8** %47, align 8
  indirectbr i8* %48, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

NodeBlock9:                                       ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload87 = load i32, i32* %.reg2mem84, align 4
  %Pivot10 = icmp slt i32 %.reload87, 6
  %.reload22 = load i8**, i8*** %.reg2mem21, align 8
  %.reload25 = load i8**, i8*** %.reg2mem24, align 8
  %49 = select i1 %Pivot10, i8** %.reload25, i8** %.reload22
  %50 = load i8*, i8** %49, align 8
  indirectbr i8* %50, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

NodeBlock7:                                       ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload85 = load i32, i32* %.reg2mem84, align 4
  %Pivot8 = icmp slt i32 %.reload85, 7
  %.reload45 = load i8**, i8*** %.reg2mem43, align 8
  %.reload49 = load i8**, i8*** %.reg2mem47, align 8
  %51 = select i1 %Pivot8, i8** %.reload49, i8** %.reload45
  %52 = load i8*, i8** %51, align 8
  %.reload81 = load i32, i32* %.reg2mem75, align 4
  %.reload82 = load i32, i32* %.reg2mem75, align 4
  store i32* %1, i32** %.reg2mem97, align 8
  store i32 %.reload82, i32* %.reg2mem99, align 4
  store i32* %1, i32** %.reg2mem101, align 8
  store i32 %.reload81, i32* %.reg2mem103, align 4
  indirectbr i8* %52, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

NodeBlock5:                                       ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload86 = load i32, i32* %.reg2mem84, align 4
  %Pivot6 = icmp slt i32 %.reload86, 5
  %.reload53 = load i8**, i8*** %.reg2mem51, align 8
  %.reload57 = load i8**, i8*** %.reg2mem55, align 8
  %53 = select i1 %Pivot6, i8** %.reload57, i8** %.reload53
  %54 = load i8*, i8** %53, align 8
  %.reload79 = load i32, i32* %.reg2mem75, align 4
  %.reload80 = load i32, i32* %.reg2mem75, align 4
  store i32* %1, i32** %.reg2mem105, align 8
  store i32 %.reload80, i32* %.reg2mem107, align 4
  store i32* %1, i32** %.reg2mem109, align 8
  store i32 %.reload79, i32* %.reg2mem111, align 4
  indirectbr i8* %54, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

NodeBlock3:                                       ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload91 = load i32, i32* %.reg2mem84, align 4
  %Pivot4 = icmp slt i32 %.reload91, 2
  %.reload31 = load i8**, i8*** %.reg2mem30, align 8
  %.reload34 = load i8**, i8*** %.reg2mem33, align 8
  %55 = select i1 %Pivot4, i8** %.reload34, i8** %.reload31
  %56 = load i8*, i8** %55, align 8
  indirectbr i8* %56, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

NodeBlock1:                                       ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload88 = load i32, i32* %.reg2mem84, align 4
  %Pivot2 = icmp slt i32 %.reload88, 3
  %.reload61 = load i8**, i8*** %.reg2mem59, align 8
  %.reload65 = load i8**, i8*** %.reg2mem63, align 8
  %57 = select i1 %Pivot2, i8** %.reload65, i8** %.reload61
  %58 = load i8*, i8** %57, align 8
  %.reload77 = load i32, i32* %.reg2mem75, align 4
  %.reload78 = load i32, i32* %.reg2mem75, align 4
  store i32* %1, i32** %.reg2mem113, align 8
  store i32 %.reload78, i32* %.reg2mem115, align 4
  store i32* %1, i32** %.reg2mem117, align 8
  store i32 %.reload77, i32* %.reg2mem119, align 4
  indirectbr i8* %58, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

NodeBlock:                                        ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload90 = load i32, i32* %.reg2mem84, align 4
  %Pivot = icmp slt i32 %.reload90, 1
  %.reload37 = load i8**, i8*** %.reg2mem36, align 8
  %.reload69 = load i8**, i8*** %.reg2mem67, align 8
  %59 = select i1 %Pivot, i8** %.reload37, i8** %.reload69
  %60 = load i8*, i8** %59, align 8
  %.reload76 = load i32, i32* %.reg2mem75, align 4
  store i32* %1, i32** %.reg2mem121, align 8
  store i32 %.reload76, i32* %.reg2mem123, align 4
  indirectbr i8* %60, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

LeafBlock:                                        ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload89 = load i32, i32* %.reg2mem84, align 4
  %SwitchLeaf = icmp eq i32 %.reload89, 0
  %.reload41 = load i8**, i8*** %.reg2mem39, align 8
  %.reload73 = load i8**, i8*** %.reg2mem71, align 8
  %61 = select i1 %SwitchLeaf, i8** %.reload41, i8** %.reload73
  %62 = load i8*, i8** %61, align 8
  %.reload83 = load i32, i32* %.reg2mem75, align 4
  store i32* %1, i32** %.reg2mem93, align 8
  store i32 %.reload83, i32* %.reg2mem95, align 4
  store i32* %1, i32** %.reg2mem125, align 8
  indirectbr i8* %62, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

"10":                                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload96 = load i32, i32* %.reg2mem95, align 4
  %.reload94 = load i32*, i32** %.reg2mem93, align 8
  %63 = getelementptr inbounds i32, i32* %.reload94, i64 1
  %64 = load i32, i32* %.reload94, align 4, !tbaa !10
  store i32 %64, i32* %2, align 4, !tbaa !10
  %.reload44 = load i8**, i8*** %.reg2mem43, align 8
  %65 = load i8*, i8** %.reload44, align 8
  store i32* %63, i32** %.reg2mem97, align 8
  store i32 %.reload96, i32* %.reg2mem99, align 4
  indirectbr i8* %65, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

"11":                                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload100 = load i32, i32* %.reg2mem99, align 4
  %.reload98 = load i32*, i32** %.reg2mem97, align 8
  %66 = getelementptr inbounds i32, i32* %.reload98, i64 1
  %67 = load i32, i32* %.reload98, align 4, !tbaa !10
  store i32 %67, i32* %2, align 4, !tbaa !10
  %.reload48 = load i8**, i8*** %.reg2mem47, align 8
  %68 = load i8*, i8** %.reload48, align 8
  store i32* %66, i32** %.reg2mem101, align 8
  store i32 %.reload100, i32* %.reg2mem103, align 4
  indirectbr i8* %68, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

"12":                                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload104 = load i32, i32* %.reg2mem103, align 4
  %.reload102 = load i32*, i32** %.reg2mem101, align 8
  %69 = getelementptr inbounds i32, i32* %.reload102, i64 1
  %70 = load i32, i32* %.reload102, align 4, !tbaa !10
  store i32 %70, i32* %2, align 4, !tbaa !10
  %.reload52 = load i8**, i8*** %.reg2mem51, align 8
  %71 = load i8*, i8** %.reload52, align 8
  store i32* %69, i32** %.reg2mem105, align 8
  store i32 %.reload104, i32* %.reg2mem107, align 4
  indirectbr i8* %71, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

"13":                                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload108 = load i32, i32* %.reg2mem107, align 4
  %.reload106 = load i32*, i32** %.reg2mem105, align 8
  %72 = getelementptr inbounds i32, i32* %.reload106, i64 1
  %73 = load i32, i32* %.reload106, align 4, !tbaa !10
  store i32 %73, i32* %2, align 4, !tbaa !10
  %.reload56 = load i8**, i8*** %.reg2mem55, align 8
  %74 = load i8*, i8** %.reload56, align 8
  store i32* %72, i32** %.reg2mem109, align 8
  store i32 %.reload108, i32* %.reg2mem111, align 4
  indirectbr i8* %74, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

"14":                                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload112 = load i32, i32* %.reg2mem111, align 4
  %.reload110 = load i32*, i32** %.reg2mem109, align 8
  %75 = getelementptr inbounds i32, i32* %.reload110, i64 1
  %76 = load i32, i32* %.reload110, align 4, !tbaa !10
  store i32 %76, i32* %2, align 4, !tbaa !10
  %.reload60 = load i8**, i8*** %.reg2mem59, align 8
  %77 = load i8*, i8** %.reload60, align 8
  store i32* %75, i32** %.reg2mem113, align 8
  store i32 %.reload112, i32* %.reg2mem115, align 4
  indirectbr i8* %77, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

"15":                                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload116 = load i32, i32* %.reg2mem115, align 4
  %.reload114 = load i32*, i32** %.reg2mem113, align 8
  %78 = getelementptr inbounds i32, i32* %.reload114, i64 1
  %79 = load i32, i32* %.reload114, align 4, !tbaa !10
  store i32 %79, i32* %2, align 4, !tbaa !10
  %.reload64 = load i8**, i8*** %.reg2mem63, align 8
  %80 = load i8*, i8** %.reload64, align 8
  store i32* %78, i32** %.reg2mem117, align 8
  store i32 %.reload116, i32* %.reg2mem119, align 4
  indirectbr i8* %80, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

"16":                                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload120 = load i32, i32* %.reg2mem119, align 4
  %.reload118 = load i32*, i32** %.reg2mem117, align 8
  %81 = getelementptr inbounds i32, i32* %.reload118, i64 1
  %82 = load i32, i32* %.reload118, align 4, !tbaa !10
  store i32 %82, i32* %2, align 4, !tbaa !10
  %.reload68 = load i8**, i8*** %.reg2mem67, align 8
  %83 = load i8*, i8** %.reload68, align 8
  store i32* %81, i32** %.reg2mem121, align 8
  store i32 %.reload120, i32* %.reg2mem123, align 4
  indirectbr i8* %83, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

"17":                                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload124 = load i32, i32* %.reg2mem123, align 4
  %.reload122 = load i32*, i32** %.reg2mem121, align 8
  %84 = getelementptr inbounds i32, i32* %.reload122, i64 1
  %85 = load i32, i32* %.reload122, align 4, !tbaa !10
  store i32 %85, i32* %2, align 4, !tbaa !10
  %86 = add nsw i32 %.reload124, -1
  %87 = icmp sgt i32 %.reload124, 1
  %.reload40 = load i8**, i8*** %.reg2mem39, align 8
  %.reload72 = load i8**, i8*** %.reg2mem71, align 8
  %88 = select i1 %87, i8** %.reload40, i8** %.reload72
  %89 = load i8*, i8** %88, align 8
  store i32* %84, i32** %.reg2mem93, align 8
  store i32 %86, i32* %.reg2mem95, align 4
  store i32* %84, i32** %.reg2mem125, align 8
  indirectbr i8* %89, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %NodeBlock11, label %NodeBlock9, label %NodeBlock7, label %NodeBlock5, label %NodeBlock3, label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"10", label %"11", label %"12", label %"13", label %"14", label %"15", label %"16", label %"17", label %"18"]

"18":                                             ; preds = %entry, %"17", %"16", %"15", %"14", %"13", %"12", %"11", %"10", %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload126 = load i32*, i32** %.reg2mem125, align 8
  %90 = load i32, i32* %.reload126, align 4, !tbaa !10
  %91 = add nsw i32 %90, %0
  %92 = load i32, i32* %2, align 4, !tbaa !10
  %93 = add nsw i32 %91, %92
  ret i32 %93
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

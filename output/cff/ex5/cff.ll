; ModuleID = 'output/cff/ex5/ex5.ll'
source_filename = "input/cff/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z12duffs_deviceiPiS_(i32 %0, i32* nocapture readonly %1, i32* nocapture %2) local_unnamed_addr #0 {
entry:
  %.reg2mem62 = alloca i32*, align 8
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem58 = alloca i32*, align 8
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem54 = alloca i32*, align 8
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem50 = alloca i32*, align 8
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem46 = alloca i32*, align 8
  %.reg2mem44 = alloca i32, align 4
  %.reg2mem42 = alloca i32*, align 8
  %.reg2mem40 = alloca i32, align 4
  %.reg2mem38 = alloca i32*, align 8
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem34 = alloca i32*, align 8
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem30 = alloca i32*, align 8
  %.reg2mem21 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %lookupTable = alloca [23 x i32], align 4
  %3 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %3, align 4
  %4 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %4, align 4
  %5 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %5, align 4
  %6 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %8, align 4
  %9 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %9, align 4
  %10 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 8
  store i32 5, i32* %11, align 4
  %12 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 9
  store i32 6, i32* %12, align 4
  %13 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 10
  store i32 7, i32* %13, align 4
  %14 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 11
  store i32 8, i32* %14, align 4
  %15 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 12
  store i32 9, i32* %15, align 4
  %16 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 13
  store i32 10, i32* %16, align 4
  %17 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 14
  store i32 11, i32* %17, align 4
  %18 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 15
  store i32 12, i32* %18, align 4
  %19 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 16
  store i32 13, i32* %19, align 4
  %20 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 17
  store i32 14, i32* %20, align 4
  %21 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 18
  store i32 15, i32* %21, align 4
  %22 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 19
  store i32 16, i32* %22, align 4
  %23 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 20
  store i32 17, i32* %23, align 4
  %24 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 21
  store i32 18, i32* %24, align 4
  %25 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  store i32 19, i32* %25, align 4
  %26 = add nsw i32 %0, 7
  %27 = sdiv i32 %26, 8
  store i32 %27, i32* %.reg2mem, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher13 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher13, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %NodeBlock11
    i32 2, label %NodeBlock9
    i32 3, label %NodeBlock7
    i32 4, label %NodeBlock5
    i32 5, label %NodeBlock3
    i32 6, label %NodeBlock1
    i32 7, label %NodeBlock
    i32 8, label %LeafBlock
    i32 9, label %122
    i32 10, label %130
    i32 11, label %138
    i32 12, label %146
    i32 13, label %154
    i32 14, label %162
    i32 15, label %170
    i32 16, label %178
    i32 17, label %194
    i32 18, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %28 = srem i32 %0, 8
  store i32 %28, i32* %.reg2mem21, align 4
  %29 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %30, %32
  store i32 %33, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock11:                                      ; preds = %loopStart
  %.reload29 = load i32, i32* %.reg2mem21, align 4
  %Pivot12 = icmp slt i32 %.reload29, 4
  %34 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %35, %37
  %39 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %40, %42
  %44 = select i1 %Pivot12, i32 %38, i32 %43
  store i32 %44, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock9:                                       ; preds = %loopStart
  %.reload24 = load i32, i32* %.reg2mem21, align 4
  %Pivot10 = icmp slt i32 %.reload24, 6
  %45 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %46, %48
  %50 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %51, %53
  %55 = select i1 %Pivot10, i32 %49, i32 %54
  store i32 %55, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock7:                                       ; preds = %loopStart
  %.reload22 = load i32, i32* %.reg2mem21, align 4
  %Pivot8 = icmp slt i32 %.reload22, 7
  %56 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %57, %59
  %61 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 13
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %62, %64
  %66 = select i1 %Pivot8, i32 %60, i32 %65
  store i32 %66, i32* %dispatcher, align 4
  %.reload18 = load i32, i32* %.reg2mem, align 4
  %.reload19 = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem34, align 8
  store i32 %.reload19, i32* %.reg2mem36, align 4
  store i32* %1, i32** %.reg2mem38, align 8
  store i32 %.reload18, i32* %.reg2mem40, align 4
  br label %loopEnd

NodeBlock5:                                       ; preds = %loopStart
  %.reload23 = load i32, i32* %.reg2mem21, align 4
  %Pivot6 = icmp slt i32 %.reload23, 5
  %67 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 16
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %68, %70
  %72 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 12
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub i32 %73, %75
  %77 = select i1 %Pivot6, i32 %71, i32 %76
  store i32 %77, i32* %dispatcher, align 4
  %.reload16 = load i32, i32* %.reg2mem, align 4
  %.reload17 = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem42, align 8
  store i32 %.reload17, i32* %.reg2mem44, align 4
  store i32* %1, i32** %.reg2mem46, align 8
  store i32 %.reload16, i32* %.reg2mem48, align 4
  br label %loopEnd

NodeBlock3:                                       ; preds = %loopStart
  %.reload28 = load i32, i32* %.reg2mem21, align 4
  %Pivot4 = icmp slt i32 %.reload28, 2
  %78 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %79, %81
  %83 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %84, %86
  %88 = select i1 %Pivot4, i32 %82, i32 %87
  store i32 %88, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock1:                                       ; preds = %loopStart
  %.reload25 = load i32, i32* %.reg2mem21, align 4
  %Pivot2 = icmp slt i32 %.reload25, 3
  %89 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %90, %92
  %94 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 17
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %97 = load i32, i32* %96, align 4
  %98 = srem i32 %95, %97
  %99 = select i1 %Pivot2, i32 %93, i32 %98
  store i32 %99, i32* %dispatcher, align 4
  %.reload14 = load i32, i32* %.reg2mem, align 4
  %.reload15 = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem50, align 8
  store i32 %.reload15, i32* %.reg2mem52, align 4
  store i32* %1, i32** %.reg2mem54, align 8
  store i32 %.reload14, i32* %.reg2mem56, align 4
  br label %loopEnd

NodeBlock:                                        ; preds = %loopStart
  %.reload27 = load i32, i32* %.reg2mem21, align 4
  %Pivot = icmp slt i32 %.reload27, 1
  %100 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %103 = load i32, i32* %102, align 4
  %104 = srem i32 %101, %103
  %105 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 21
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = sub i32 %106, %108
  %110 = select i1 %Pivot, i32 %104, i32 %109
  store i32 %110, i32* %dispatcher, align 4
  %.reload = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem58, align 8
  store i32 %.reload, i32* %.reg2mem60, align 4
  br label %loopEnd

LeafBlock:                                        ; preds = %loopStart
  %.reload26 = load i32, i32* %.reg2mem21, align 4
  %SwitchLeaf = icmp eq i32 %.reload26, 0
  %111 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 12
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %114 = load i32, i32* %113, align 4
  %115 = srem i32 %112, %114
  %116 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 20
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %119 = load i32, i32* %118, align 4
  %120 = srem i32 %117, %119
  %121 = select i1 %SwitchLeaf, i32 %115, i32 %120
  store i32 %121, i32* %dispatcher, align 4
  %.reload20 = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem30, align 8
  store i32 %.reload20, i32* %.reg2mem32, align 4
  store i32* %1, i32** %.reg2mem62, align 8
  br label %loopEnd

122:                                              ; preds = %loopStart
  %.reload33 = load i32, i32* %.reg2mem32, align 4
  %.reload31 = load i32*, i32** %.reg2mem30, align 8
  %123 = getelementptr inbounds i32, i32* %.reload31, i64 1
  %124 = load i32, i32* %.reload31, align 4, !tbaa !10
  store i32 %124, i32* %2, align 4, !tbaa !10
  %125 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %126, %128
  store i32 %129, i32* %dispatcher, align 4
  store i32* %123, i32** %.reg2mem34, align 8
  store i32 %.reload33, i32* %.reg2mem36, align 4
  br label %loopEnd

130:                                              ; preds = %loopStart
  %.reload37 = load i32, i32* %.reg2mem36, align 4
  %.reload35 = load i32*, i32** %.reg2mem34, align 8
  %131 = getelementptr inbounds i32, i32* %.reload35, i64 1
  %132 = load i32, i32* %.reload35, align 4, !tbaa !10
  store i32 %132, i32* %2, align 4, !tbaa !10
  %133 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %134, %136
  store i32 %137, i32* %dispatcher, align 4
  store i32* %131, i32** %.reg2mem38, align 8
  store i32 %.reload37, i32* %.reg2mem40, align 4
  br label %loopEnd

138:                                              ; preds = %loopStart
  %.reload41 = load i32, i32* %.reg2mem40, align 4
  %.reload39 = load i32*, i32** %.reg2mem38, align 8
  %139 = getelementptr inbounds i32, i32* %.reload39, i64 1
  %140 = load i32, i32* %.reload39, align 4, !tbaa !10
  store i32 %140, i32* %2, align 4, !tbaa !10
  %141 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 15
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %144 = load i32, i32* %143, align 4
  %145 = srem i32 %142, %144
  store i32 %145, i32* %dispatcher, align 4
  store i32* %139, i32** %.reg2mem42, align 8
  store i32 %.reload41, i32* %.reg2mem44, align 4
  br label %loopEnd

146:                                              ; preds = %loopStart
  %.reload45 = load i32, i32* %.reg2mem44, align 4
  %.reload43 = load i32*, i32** %.reg2mem42, align 8
  %147 = getelementptr inbounds i32, i32* %.reload43, i64 1
  %148 = load i32, i32* %.reload43, align 4, !tbaa !10
  store i32 %148, i32* %2, align 4, !tbaa !10
  %149 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 16
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %152 = load i32, i32* %151, align 4
  %153 = srem i32 %150, %152
  store i32 %153, i32* %dispatcher, align 4
  store i32* %147, i32** %.reg2mem46, align 8
  store i32 %.reload45, i32* %.reg2mem48, align 4
  br label %loopEnd

154:                                              ; preds = %loopStart
  %.reload49 = load i32, i32* %.reg2mem48, align 4
  %.reload47 = load i32*, i32** %.reg2mem46, align 8
  %155 = getelementptr inbounds i32, i32* %.reload47, i64 1
  %156 = load i32, i32* %.reload47, align 4, !tbaa !10
  store i32 %156, i32* %2, align 4, !tbaa !10
  %157 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 17
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %160 = load i32, i32* %159, align 4
  %161 = srem i32 %158, %160
  store i32 %161, i32* %dispatcher, align 4
  store i32* %155, i32** %.reg2mem50, align 8
  store i32 %.reload49, i32* %.reg2mem52, align 4
  br label %loopEnd

162:                                              ; preds = %loopStart
  %.reload53 = load i32, i32* %.reg2mem52, align 4
  %.reload51 = load i32*, i32** %.reg2mem50, align 8
  %163 = getelementptr inbounds i32, i32* %.reload51, i64 1
  %164 = load i32, i32* %.reload51, align 4, !tbaa !10
  store i32 %164, i32* %2, align 4, !tbaa !10
  %165 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 18
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  %168 = load i32, i32* %167, align 4
  %169 = srem i32 %166, %168
  store i32 %169, i32* %dispatcher, align 4
  store i32* %163, i32** %.reg2mem54, align 8
  store i32 %.reload53, i32* %.reg2mem56, align 4
  br label %loopEnd

170:                                              ; preds = %loopStart
  %.reload57 = load i32, i32* %.reg2mem56, align 4
  %.reload55 = load i32*, i32** %.reg2mem54, align 8
  %171 = getelementptr inbounds i32, i32* %.reload55, i64 1
  %172 = load i32, i32* %.reload55, align 4, !tbaa !10
  store i32 %172, i32* %2, align 4, !tbaa !10
  %173 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 19
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = sub i32 %174, %176
  store i32 %177, i32* %dispatcher, align 4
  store i32* %171, i32** %.reg2mem58, align 8
  store i32 %.reload57, i32* %.reg2mem60, align 4
  br label %loopEnd

178:                                              ; preds = %loopStart
  %.reload61 = load i32, i32* %.reg2mem60, align 4
  %.reload59 = load i32*, i32** %.reg2mem58, align 8
  %179 = getelementptr inbounds i32, i32* %.reload59, i64 1
  %180 = load i32, i32* %.reload59, align 4, !tbaa !10
  store i32 %180, i32* %2, align 4, !tbaa !10
  %181 = add nsw i32 %.reload61, -1
  %182 = icmp sgt i32 %.reload61, 1
  %183 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sub i32 %184, %186
  %188 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 12
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 11
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %189, %191
  %193 = select i1 %182, i32 %187, i32 %192
  store i32 %193, i32* %dispatcher, align 4
  store i32* %179, i32** %.reg2mem30, align 8
  store i32 %181, i32* %.reg2mem32, align 4
  store i32* %179, i32** %.reg2mem62, align 8
  br label %loopEnd

194:                                              ; preds = %loopStart
  %.reload63 = load i32*, i32** %.reg2mem62, align 8
  %195 = load i32, i32* %.reload63, align 4, !tbaa !10
  %196 = add nsw i32 %195, %0
  %197 = load i32, i32* %2, align 4, !tbaa !10
  %198 = add nsw i32 %196, %197
  ret i32 %198

BogusBasicBlock:                                  ; preds = %loopStart
  %199 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %199, align 4
  %200 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %200, align 4
  %201 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %201, align 4
  %202 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %202, align 4
  %203 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %203, align 4
  %204 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 10
  store i32 9, i32* %204, align 4
  %205 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 12
  store i32 11, i32* %205, align 4
  %206 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 14
  store i32 13, i32* %206, align 4
  %207 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 16
  store i32 15, i32* %207, align 4
  %208 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 18
  store i32 17, i32* %208, align 4
  %209 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 20
  store i32 19, i32* %209, align 4
  %210 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 22
  store i32 21, i32* %210, align 4
  %211 = getelementptr inbounds [23 x i32], [23 x i32]* %lookupTable, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %178, %170, %162, %154, %146, %138, %130, %122, %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
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

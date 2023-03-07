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
  %lookupTable = alloca [19 x i32], align 4
  %3 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 18
  store i32 18, i32* %3, align 4
  %4 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 17
  store i32 17, i32* %4, align 4
  %5 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 16
  store i32 16, i32* %5, align 4
  %6 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 15
  store i32 15, i32* %6, align 4
  %7 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 14
  store i32 14, i32* %7, align 4
  %8 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 13
  store i32 13, i32* %8, align 4
  %9 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 12
  store i32 12, i32* %9, align 4
  %10 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 11
  store i32 11, i32* %10, align 4
  %11 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 10
  store i32 10, i32* %11, align 4
  %12 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 9
  store i32 9, i32* %12, align 4
  %13 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 8
  store i32 8, i32* %13, align 4
  %14 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 7
  store i32 7, i32* %14, align 4
  %15 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 6
  store i32 6, i32* %15, align 4
  %16 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 5
  store i32 5, i32* %16, align 4
  %17 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 4
  store i32 4, i32* %17, align 4
  %18 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 3
  store i32 3, i32* %18, align 4
  %19 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 2
  store i32 2, i32* %19, align 4
  %20 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = add nsw i32 %0, 7
  %23 = sdiv i32 %22, 8
  store i32 %23, i32* %.reg2mem, align 4
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
    i32 9, label %118
    i32 10, label %126
    i32 11, label %134
    i32 12, label %142
    i32 13, label %150
    i32 14, label %158
    i32 15, label %166
    i32 16, label %174
    i32 17, label %190
    i32 18, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %24 = srem i32 %0, 8
  store i32 %24, i32* %.reg2mem21, align 4
  %25 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub i32 %26, %28
  store i32 %29, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock11:                                      ; preds = %loopStart
  %.reload29 = load i32, i32* %.reg2mem21, align 4
  %Pivot12 = icmp slt i32 %.reload29, 4
  %30 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %31, %33
  %35 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 %36, %38
  %40 = select i1 %Pivot12, i32 %34, i32 %39
  store i32 %40, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock9:                                       ; preds = %loopStart
  %.reload24 = load i32, i32* %.reg2mem21, align 4
  %Pivot10 = icmp slt i32 %.reload24, 6
  %41 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %42, %44
  %46 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %47, %49
  %51 = select i1 %Pivot10, i32 %45, i32 %50
  store i32 %51, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock7:                                       ; preds = %loopStart
  %.reload22 = load i32, i32* %.reg2mem21, align 4
  %Pivot8 = icmp slt i32 %.reload22, 7
  %52 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub i32 %53, %55
  %57 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %58, %60
  %62 = select i1 %Pivot8, i32 %56, i32 %61
  store i32 %62, i32* %dispatcher, align 4
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
  %63 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 15
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %64, %66
  %68 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub i32 %69, %71
  %73 = select i1 %Pivot6, i32 %67, i32 %72
  store i32 %73, i32* %dispatcher, align 4
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
  %74 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 16
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = sub i32 %75, %77
  %79 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %80, %82
  %84 = select i1 %Pivot4, i32 %78, i32 %83
  store i32 %84, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock1:                                       ; preds = %loopStart
  %.reload25 = load i32, i32* %.reg2mem21, align 4
  %Pivot2 = icmp slt i32 %.reload25, 3
  %85 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 15
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub i32 %86, %88
  %90 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 14
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sub i32 %91, %93
  %95 = select i1 %Pivot2, i32 %89, i32 %94
  store i32 %95, i32* %dispatcher, align 4
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
  %96 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %97, %99
  %101 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 16
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub i32 %102, %104
  %106 = select i1 %Pivot, i32 %100, i32 %105
  store i32 %106, i32* %dispatcher, align 4
  %.reload = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem58, align 8
  store i32 %.reload, i32* %.reg2mem60, align 4
  br label %loopEnd

LeafBlock:                                        ; preds = %loopStart
  %.reload26 = load i32, i32* %.reg2mem21, align 4
  %SwitchLeaf = icmp eq i32 %.reload26, 0
  %107 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub i32 %108, %110
  %112 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 17
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub i32 %113, %115
  %117 = select i1 %SwitchLeaf, i32 %111, i32 %116
  store i32 %117, i32* %dispatcher, align 4
  %.reload20 = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem30, align 8
  store i32 %.reload20, i32* %.reg2mem32, align 4
  store i32* %1, i32** %.reg2mem62, align 8
  br label %loopEnd

118:                                              ; preds = %loopStart
  %.reload33 = load i32, i32* %.reg2mem32, align 4
  %.reload31 = load i32*, i32** %.reg2mem30, align 8
  %119 = getelementptr inbounds i32, i32* %.reload31, i64 1
  %120 = load i32, i32* %.reload31, align 4, !tbaa !10
  store i32 %120, i32* %2, align 4, !tbaa !10
  %121 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 15
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = sub i32 %122, %124
  store i32 %125, i32* %dispatcher, align 4
  store i32* %119, i32** %.reg2mem34, align 8
  store i32 %.reload33, i32* %.reg2mem36, align 4
  br label %loopEnd

126:                                              ; preds = %loopStart
  %.reload37 = load i32, i32* %.reg2mem36, align 4
  %.reload35 = load i32*, i32** %.reg2mem34, align 8
  %127 = getelementptr inbounds i32, i32* %.reload35, i64 1
  %128 = load i32, i32* %.reload35, align 4, !tbaa !10
  store i32 %128, i32* %2, align 4, !tbaa !10
  %129 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 14
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %130, %132
  store i32 %133, i32* %dispatcher, align 4
  store i32* %127, i32** %.reg2mem38, align 8
  store i32 %.reload37, i32* %.reg2mem40, align 4
  br label %loopEnd

134:                                              ; preds = %loopStart
  %.reload41 = load i32, i32* %.reg2mem40, align 4
  %.reload39 = load i32*, i32** %.reg2mem38, align 8
  %135 = getelementptr inbounds i32, i32* %.reload39, i64 1
  %136 = load i32, i32* %.reload39, align 4, !tbaa !10
  store i32 %136, i32* %2, align 4, !tbaa !10
  %137 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 15
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = sub i32 %138, %140
  store i32 %141, i32* %dispatcher, align 4
  store i32* %135, i32** %.reg2mem42, align 8
  store i32 %.reload41, i32* %.reg2mem44, align 4
  br label %loopEnd

142:                                              ; preds = %loopStart
  %.reload45 = load i32, i32* %.reg2mem44, align 4
  %.reload43 = load i32*, i32** %.reg2mem42, align 8
  %143 = getelementptr inbounds i32, i32* %.reload43, i64 1
  %144 = load i32, i32* %.reload43, align 4, !tbaa !10
  store i32 %144, i32* %2, align 4, !tbaa !10
  %145 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 13
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sub i32 %146, %148
  store i32 %149, i32* %dispatcher, align 4
  store i32* %143, i32** %.reg2mem46, align 8
  store i32 %.reload45, i32* %.reg2mem48, align 4
  br label %loopEnd

150:                                              ; preds = %loopStart
  %.reload49 = load i32, i32* %.reg2mem48, align 4
  %.reload47 = load i32*, i32** %.reg2mem46, align 8
  %151 = getelementptr inbounds i32, i32* %.reload47, i64 1
  %152 = load i32, i32* %.reload47, align 4, !tbaa !10
  store i32 %152, i32* %2, align 4, !tbaa !10
  %153 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 14
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sub i32 %154, %156
  store i32 %157, i32* %dispatcher, align 4
  store i32* %151, i32** %.reg2mem50, align 8
  store i32 %.reload49, i32* %.reg2mem52, align 4
  br label %loopEnd

158:                                              ; preds = %loopStart
  %.reload53 = load i32, i32* %.reg2mem52, align 4
  %.reload51 = load i32*, i32** %.reg2mem50, align 8
  %159 = getelementptr inbounds i32, i32* %.reload51, i64 1
  %160 = load i32, i32* %.reload51, align 4, !tbaa !10
  store i32 %160, i32* %2, align 4, !tbaa !10
  %161 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 15
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sub i32 %162, %164
  store i32 %165, i32* %dispatcher, align 4
  store i32* %159, i32** %.reg2mem54, align 8
  store i32 %.reload53, i32* %.reg2mem56, align 4
  br label %loopEnd

166:                                              ; preds = %loopStart
  %.reload57 = load i32, i32* %.reg2mem56, align 4
  %.reload55 = load i32*, i32** %.reg2mem54, align 8
  %167 = getelementptr inbounds i32, i32* %.reload55, i64 1
  %168 = load i32, i32* %.reload55, align 4, !tbaa !10
  store i32 %168, i32* %2, align 4, !tbaa !10
  %169 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 16
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sub i32 %170, %172
  store i32 %173, i32* %dispatcher, align 4
  store i32* %167, i32** %.reg2mem58, align 8
  store i32 %.reload57, i32* %.reg2mem60, align 4
  br label %loopEnd

174:                                              ; preds = %loopStart
  %.reload61 = load i32, i32* %.reg2mem60, align 4
  %.reload59 = load i32*, i32** %.reg2mem58, align 8
  %175 = getelementptr inbounds i32, i32* %.reload59, i64 1
  %176 = load i32, i32* %.reload59, align 4, !tbaa !10
  store i32 %176, i32* %2, align 4, !tbaa !10
  %177 = add nsw i32 %.reload61, -1
  %178 = icmp sgt i32 %.reload61, 1
  %179 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 17
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = sub i32 %180, %182
  %184 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 17
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sub i32 %185, %187
  %189 = select i1 %178, i32 %183, i32 %188
  store i32 %189, i32* %dispatcher, align 4
  store i32* %175, i32** %.reg2mem30, align 8
  store i32 %177, i32* %.reg2mem32, align 4
  store i32* %175, i32** %.reg2mem62, align 8
  br label %loopEnd

190:                                              ; preds = %loopStart
  %.reload63 = load i32*, i32** %.reg2mem62, align 8
  %191 = load i32, i32* %.reload63, align 4, !tbaa !10
  %192 = add nsw i32 %191, %0
  %193 = load i32, i32* %2, align 4, !tbaa !10
  %194 = add nsw i32 %192, %193
  ret i32 %194

BogusBasicBlock:                                  ; preds = %loopStart
  %195 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 1
  store i32 0, i32* %195, align 4
  %196 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %196, align 4
  %197 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 3
  store i32 2, i32* %197, align 4
  %198 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %198, align 4
  %199 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 5
  store i32 4, i32* %199, align 4
  %200 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %200, align 4
  %201 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 7
  store i32 6, i32* %201, align 4
  %202 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %202, align 4
  %203 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 9
  store i32 8, i32* %203, align 4
  %204 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 10
  store i32 9, i32* %204, align 4
  %205 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 11
  store i32 10, i32* %205, align 4
  %206 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 12
  store i32 11, i32* %206, align 4
  %207 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 13
  store i32 12, i32* %207, align 4
  %208 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 14
  store i32 13, i32* %208, align 4
  %209 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 15
  store i32 14, i32* %209, align 4
  %210 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 16
  store i32 15, i32* %210, align 4
  %211 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 17
  store i32 16, i32* %211, align 4
  %212 = getelementptr inbounds [19 x i32], [19 x i32]* %lookupTable, i32 0, i32 18
  store i32 17, i32* %212, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %174, %166, %158, %150, %142, %134, %126, %118, %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
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

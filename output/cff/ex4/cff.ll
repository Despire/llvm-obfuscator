; ModuleID = 'output/cff/ex4/ex4.ll'
source_filename = "input/cff/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %.reg2mem53 = alloca i32, align 4
  %.reg2mem51 = alloca i32, align 4
  %.reg2mem49 = alloca i32, align 4
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem43 = alloca i32, align 4
  %.reg2mem35 = alloca i32, align 4
  %.reg2mem32 = alloca i8**, align 8
  %.reg2mem29 = alloca i8**, align 8
  %.reg2mem24 = alloca i8**, align 8
  %.reg2mem21 = alloca i8**, align 8
  %.reg2mem18 = alloca i8**, align 8
  %.reg2mem15 = alloca i8**, align 8
  %.reg2mem12 = alloca i8**, align 8
  %.reg2mem9 = alloca i8**, align 8
  %.reg2mem5 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 11, align 8
  %2 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z6decideii, %BogusBasciBlock), i8** %2, align 8
  %3 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %3, i8*** %.reg2mem, align 8
  %.reload4 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@_Z6decideii, %EntryBasicBlockSplit), i8** %.reload4, align 8
  %4 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %4, i8*** %.reg2mem5, align 8
  %.reload8 = load i8**, i8*** %.reg2mem5, align 8
  store i8* blockaddress(@_Z6decideii, %"2"), i8** %.reload8, align 8
  %5 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %5, i8*** %.reg2mem9, align 8
  %.reload11 = load i8**, i8*** %.reg2mem9, align 8
  store i8* blockaddress(@_Z6decideii, %NodeBlock1), i8** %.reload11, align 8
  %6 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %6, i8*** %.reg2mem12, align 8
  %.reload14 = load i8**, i8*** %.reg2mem12, align 8
  store i8* blockaddress(@_Z6decideii, %NodeBlock), i8** %.reload14, align 8
  %7 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8** %7, i8*** %.reg2mem15, align 8
  %.reload17 = load i8**, i8*** %.reg2mem15, align 8
  store i8* blockaddress(@_Z6decideii, %LeafBlock), i8** %.reload17, align 8
  %8 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8** %8, i8*** %.reg2mem18, align 8
  %.reload20 = load i8**, i8*** %.reg2mem18, align 8
  store i8* blockaddress(@_Z6decideii, %"6"), i8** %.reload20, align 8
  %9 = getelementptr i8*, i8** %JumpTable, i32 7
  store i8** %9, i8*** %.reg2mem21, align 8
  %.reload23 = load i8**, i8*** %.reg2mem21, align 8
  store i8* blockaddress(@_Z6decideii, %"7"), i8** %.reload23, align 8
  %10 = getelementptr i8*, i8** %JumpTable, i32 8
  store i8** %10, i8*** %.reg2mem24, align 8
  %.reload28 = load i8**, i8*** %.reg2mem24, align 8
  store i8* blockaddress(@_Z6decideii, %"8"), i8** %.reload28, align 8
  %11 = getelementptr i8*, i8** %JumpTable, i32 9
  store i8** %11, i8*** %.reg2mem29, align 8
  %.reload31 = load i8**, i8*** %.reg2mem29, align 8
  store i8* blockaddress(@_Z6decideii, %"9"), i8** %.reload31, align 8
  %12 = getelementptr i8*, i8** %JumpTable, i32 10
  store i8** %12, i8*** %.reg2mem32, align 8
  %.reload34 = load i8**, i8*** %.reg2mem32, align 8
  store i8* blockaddress(@_Z6decideii, %"10"), i8** %.reload34, align 8
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %13 = load i8*, i8** %.reload, align 8
  indirectbr i8* %13, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

BogusBasciBlock:                                  ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %14 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z6decideii, %NodeBlock), i8** %14, align 8
  %15 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8* blockaddress(@_Z6decideii, %"10"), i8** %15, align 8
  %16 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8* blockaddress(@_Z6decideii, %"6"), i8** %16, align 8
  %17 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8* blockaddress(@_Z6decideii, %"7"), i8** %17, align 8
  %18 = getelementptr i8*, i8** %JumpTable, i32 8
  store i8* blockaddress(@_Z6decideii, %LeafBlock), i8** %18, align 8
  %19 = getelementptr i8*, i8** %JumpTable, i32 10
  store i8* blockaddress(@_Z6decideii, %EntryBasicBlockSplit), i8** %19, align 8
  %.reload3 = load i8**, i8*** %.reg2mem, align 8
  %20 = load i8*, i8** %.reload3, align 8
  indirectbr i8* %20, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

EntryBasicBlockSplit:                             ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload7 = load i8**, i8*** %.reg2mem5, align 8
  %21 = load i8*, i8** %.reload7, align 8
  store i32 %0, i32* %.reg2mem47, align 4
  store i32 0, i32* %.reg2mem49, align 4
  indirectbr i8* %21, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

"2":                                              ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload50 = load i32, i32* %.reg2mem49, align 4
  %.reload48 = load i32, i32* %.reg2mem47, align 4
  store i32 %.reload50, i32* %.reg2mem43, align 4
  store i32 %.reload48, i32* %.reg2mem35, align 4
  %.reload10 = load i8**, i8*** %.reg2mem9, align 8
  %22 = load i8*, i8** %.reload10, align 8
  indirectbr i8* %22, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

NodeBlock1:                                       ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload46 = load i32, i32* %.reg2mem43, align 4
  %Pivot2 = icmp slt i32 %.reload46, 2
  %.reload13 = load i8**, i8*** %.reg2mem12, align 8
  %.reload16 = load i8**, i8*** %.reg2mem15, align 8
  %23 = select i1 %Pivot2, i8** %.reload16, i8** %.reload13
  %24 = load i8*, i8** %23, align 8
  indirectbr i8* %24, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

NodeBlock:                                        ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload44 = load i32, i32* %.reg2mem43, align 4
  %Pivot = icmp slt i32 %.reload44, 3
  %.reload30 = load i8**, i8*** %.reg2mem29, align 8
  %.reload33 = load i8**, i8*** %.reg2mem32, align 8
  %25 = select i1 %Pivot, i8** %.reload30, i8** %.reload33
  %26 = load i8*, i8** %25, align 8
  indirectbr i8* %26, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

LeafBlock:                                        ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload45 = load i32, i32* %.reg2mem43, align 4
  %SwitchLeaf = icmp eq i32 %.reload45, 1
  %.reload19 = load i8**, i8*** %.reg2mem18, align 8
  %.reload22 = load i8**, i8*** %.reg2mem21, align 8
  %27 = select i1 %SwitchLeaf, i8** %.reload22, i8** %.reload19
  %28 = load i8*, i8** %27, align 8
  indirectbr i8* %28, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

"6":                                              ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload42 = load i32, i32* %.reg2mem35, align 4
  %29 = icmp slt i32 %.reload42, %1
  %30 = select i1 %29, i32 %1, i32 0
  %.reload41 = load i32, i32* %.reg2mem35, align 4
  %31 = add nsw i32 %30, %.reload41
  %32 = select i1 %29, i32 3, i32 1
  %.reload27 = load i8**, i8*** %.reg2mem24, align 8
  %33 = load i8*, i8** %.reload27, align 8
  store i32 %31, i32* %.reg2mem51, align 4
  store i32 %32, i32* %.reg2mem53, align 4
  indirectbr i8* %33, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

"7":                                              ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload40 = load i32, i32* %.reg2mem35, align 4
  %34 = icmp eq i32 %.reload40, %1
  %.reload39 = load i32, i32* %.reg2mem35, align 4
  %35 = sub nsw i32 %1, %.reload39
  %.reload38 = load i32, i32* %.reg2mem35, align 4
  %36 = select i1 %34, i32 %35, i32 %.reload38
  %37 = select i1 %34, i32 3, i32 2
  %.reload26 = load i8**, i8*** %.reg2mem24, align 8
  %38 = load i8*, i8** %.reload26, align 8
  store i32 %36, i32* %.reg2mem51, align 4
  store i32 %37, i32* %.reg2mem53, align 4
  indirectbr i8* %38, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

"8":                                              ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload54 = load i32, i32* %.reg2mem53, align 4
  %.reload52 = load i32, i32* %.reg2mem51, align 4
  %.reload6 = load i8**, i8*** %.reg2mem5, align 8
  %39 = load i8*, i8** %.reload6, align 8
  store i32 %.reload52, i32* %.reg2mem47, align 4
  store i32 %.reload54, i32* %.reg2mem49, align 4
  indirectbr i8* %39, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

"9":                                              ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload37 = load i32, i32* %.reg2mem35, align 4
  %40 = shl i32 %.reload37, 1
  %41 = sub i32 %40, %1
  %.reload25 = load i8**, i8*** %.reg2mem24, align 8
  %42 = load i8*, i8** %.reload25, align 8
  store i32 %41, i32* %.reg2mem51, align 4
  store i32 3, i32* %.reg2mem53, align 4
  indirectbr i8* %42, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"6", label %"7", label %"8", label %"9", label %"10"]

"10":                                             ; preds = %entry, %"9", %"8", %"7", %"6", %LeafBlock, %NodeBlock, %NodeBlock1, %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload36 = load i32, i32* %.reg2mem35, align 4
  ret i32 %.reload36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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

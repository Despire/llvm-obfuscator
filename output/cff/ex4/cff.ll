; ModuleID = 'output/cff/ex4/ex4.ll'
source_filename = "input/cff/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %.reg2mem49 = alloca i32, align 4
  %.reg2mem47 = alloca i32, align 4
  %.reg2mem45 = alloca i32, align 4
  %.reg2mem43 = alloca i32, align 4
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem31 = alloca i32, align 4
  %.reg2mem28 = alloca i8**, align 8
  %.reg2mem25 = alloca i8**, align 8
  %.reg2mem20 = alloca i8**, align 8
  %.reg2mem17 = alloca i8**, align 8
  %.reg2mem14 = alloca i8**, align 8
  %.reg2mem11 = alloca i8**, align 8
  %.reg2mem8 = alloca i8**, align 8
  %.reg2mem5 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 10, align 8
  %2 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z6decideii, %EntryBasicBlockSplit), i8** %2, align 8
  %3 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %3, i8*** %.reg2mem, align 8
  %.reload4 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@_Z6decideii, %"1"), i8** %.reload4, align 8
  %4 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %4, i8*** %.reg2mem5, align 8
  %.reload7 = load i8**, i8*** %.reg2mem5, align 8
  store i8* blockaddress(@_Z6decideii, %NodeBlock1), i8** %.reload7, align 8
  %5 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %5, i8*** %.reg2mem8, align 8
  %.reload10 = load i8**, i8*** %.reg2mem8, align 8
  store i8* blockaddress(@_Z6decideii, %NodeBlock), i8** %.reload10, align 8
  %6 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %6, i8*** %.reg2mem11, align 8
  %.reload13 = load i8**, i8*** %.reg2mem11, align 8
  store i8* blockaddress(@_Z6decideii, %LeafBlock), i8** %.reload13, align 8
  %7 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8** %7, i8*** %.reg2mem14, align 8
  %.reload16 = load i8**, i8*** %.reg2mem14, align 8
  store i8* blockaddress(@_Z6decideii, %"5"), i8** %.reload16, align 8
  %8 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8** %8, i8*** %.reg2mem17, align 8
  %.reload19 = load i8**, i8*** %.reg2mem17, align 8
  store i8* blockaddress(@_Z6decideii, %"6"), i8** %.reload19, align 8
  %9 = getelementptr i8*, i8** %JumpTable, i32 7
  store i8** %9, i8*** %.reg2mem20, align 8
  %.reload24 = load i8**, i8*** %.reg2mem20, align 8
  store i8* blockaddress(@_Z6decideii, %"7"), i8** %.reload24, align 8
  %10 = getelementptr i8*, i8** %JumpTable, i32 8
  store i8** %10, i8*** %.reg2mem25, align 8
  %.reload27 = load i8**, i8*** %.reg2mem25, align 8
  store i8* blockaddress(@_Z6decideii, %"8"), i8** %.reload27, align 8
  %11 = getelementptr i8*, i8** %JumpTable, i32 9
  store i8** %11, i8*** %.reg2mem28, align 8
  %.reload30 = load i8**, i8*** %.reg2mem28, align 8
  store i8* blockaddress(@_Z6decideii, %"9"), i8** %.reload30, align 8
  %12 = load i8*, i8** %2, align 8
  indirectbr i8* %12, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

EntryBasicBlockSplit:                             ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload3 = load i8**, i8*** %.reg2mem, align 8
  %13 = load i8*, i8** %.reload3, align 8
  store i32 %0, i32* %.reg2mem43, align 4
  store i32 0, i32* %.reg2mem45, align 4
  indirectbr i8* %13, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

"1":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload46 = load i32, i32* %.reg2mem45, align 4
  %.reload44 = load i32, i32* %.reg2mem43, align 4
  store i32 %.reload46, i32* %.reg2mem39, align 4
  store i32 %.reload44, i32* %.reg2mem31, align 4
  %.reload6 = load i8**, i8*** %.reg2mem5, align 8
  %14 = load i8*, i8** %.reload6, align 8
  indirectbr i8* %14, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

NodeBlock1:                                       ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload42 = load i32, i32* %.reg2mem39, align 4
  %Pivot2 = icmp slt i32 %.reload42, 2
  %.reload9 = load i8**, i8*** %.reg2mem8, align 8
  %.reload12 = load i8**, i8*** %.reg2mem11, align 8
  %15 = select i1 %Pivot2, i8** %.reload12, i8** %.reload9
  %16 = load i8*, i8** %15, align 8
  indirectbr i8* %16, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

NodeBlock:                                        ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload40 = load i32, i32* %.reg2mem39, align 4
  %Pivot = icmp slt i32 %.reload40, 3
  %.reload26 = load i8**, i8*** %.reg2mem25, align 8
  %.reload29 = load i8**, i8*** %.reg2mem28, align 8
  %17 = select i1 %Pivot, i8** %.reload26, i8** %.reload29
  %18 = load i8*, i8** %17, align 8
  indirectbr i8* %18, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

LeafBlock:                                        ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload41 = load i32, i32* %.reg2mem39, align 4
  %SwitchLeaf = icmp eq i32 %.reload41, 1
  %.reload15 = load i8**, i8*** %.reg2mem14, align 8
  %.reload18 = load i8**, i8*** %.reg2mem17, align 8
  %19 = select i1 %SwitchLeaf, i8** %.reload18, i8** %.reload15
  %20 = load i8*, i8** %19, align 8
  indirectbr i8* %20, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

"5":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload38 = load i32, i32* %.reg2mem31, align 4
  %21 = icmp slt i32 %.reload38, %1
  %22 = select i1 %21, i32 %1, i32 0
  %.reload37 = load i32, i32* %.reg2mem31, align 4
  %23 = add nsw i32 %22, %.reload37
  %24 = select i1 %21, i32 3, i32 1
  %.reload23 = load i8**, i8*** %.reg2mem20, align 8
  %25 = load i8*, i8** %.reload23, align 8
  store i32 %23, i32* %.reg2mem47, align 4
  store i32 %24, i32* %.reg2mem49, align 4
  indirectbr i8* %25, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

"6":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload36 = load i32, i32* %.reg2mem31, align 4
  %26 = icmp eq i32 %.reload36, %1
  %.reload35 = load i32, i32* %.reg2mem31, align 4
  %27 = sub nsw i32 %1, %.reload35
  %.reload34 = load i32, i32* %.reg2mem31, align 4
  %28 = select i1 %26, i32 %27, i32 %.reload34
  %29 = select i1 %26, i32 3, i32 2
  %.reload22 = load i8**, i8*** %.reg2mem20, align 8
  %30 = load i8*, i8** %.reload22, align 8
  store i32 %28, i32* %.reg2mem47, align 4
  store i32 %29, i32* %.reg2mem49, align 4
  indirectbr i8* %30, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

"7":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload50 = load i32, i32* %.reg2mem49, align 4
  %.reload48 = load i32, i32* %.reg2mem47, align 4
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %31 = load i8*, i8** %.reload, align 8
  store i32 %.reload48, i32* %.reg2mem43, align 4
  store i32 %.reload50, i32* %.reg2mem45, align 4
  indirectbr i8* %31, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

"8":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload33 = load i32, i32* %.reg2mem31, align 4
  %32 = shl i32 %.reload33, 1
  %33 = sub i32 %32, %1
  %.reload21 = load i8**, i8*** %.reg2mem20, align 8
  %34 = load i8*, i8** %.reload21, align 8
  store i32 %33, i32* %.reg2mem47, align 4
  store i32 3, i32* %.reg2mem49, align 4
  indirectbr i8* %34, [label %EntryBasicBlockSplit, label %"1", label %NodeBlock1, label %NodeBlock, label %LeafBlock, label %"5", label %"6", label %"7", label %"8", label %"9"]

"9":                                              ; preds = %entry, %"8", %"7", %"6", %"5", %LeafBlock, %NodeBlock, %NodeBlock1, %"1", %EntryBasicBlockSplit
  %.reload32 = load i32, i32* %.reg2mem31, align 4
  ret i32 %.reload32
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

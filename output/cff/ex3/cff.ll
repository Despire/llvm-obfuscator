; ModuleID = 'output/cff/ex3/ex3.ll'
source_filename = "input/cff/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem15 = alloca i8**, align 8
  %.reg2mem12 = alloca i8**, align 8
  %.reg2mem9 = alloca i8**, align 8
  %.reg2mem6 = alloca i8**, align 8
  %.reg2mem3 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 7, align 8
  %2 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z6decideii, %BogusBasciBlock), i8** %2, align 8
  %3 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %3, i8*** %.reg2mem, align 8
  %.reload2 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@_Z6decideii, %EntryBasicBlockSplit), i8** %.reload2, align 8
  %4 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %4, i8*** %.reg2mem3, align 8
  %.reload5 = load i8**, i8*** %.reg2mem3, align 8
  store i8* blockaddress(@_Z6decideii, %"2"), i8** %.reload5, align 8
  %5 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %5, i8*** %.reg2mem6, align 8
  %.reload8 = load i8**, i8*** %.reg2mem6, align 8
  store i8* blockaddress(@_Z6decideii, %"3"), i8** %.reload8, align 8
  %6 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %6, i8*** %.reg2mem9, align 8
  %.reload11 = load i8**, i8*** %.reg2mem9, align 8
  store i8* blockaddress(@_Z6decideii, %"4"), i8** %.reload11, align 8
  %7 = getelementptr i8*, i8** %JumpTable, i32 5
  store i8** %7, i8*** %.reg2mem12, align 8
  %.reload14 = load i8**, i8*** %.reg2mem12, align 8
  store i8* blockaddress(@_Z6decideii, %"5"), i8** %.reload14, align 8
  %8 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8** %8, i8*** %.reg2mem15, align 8
  %.reload19 = load i8**, i8*** %.reg2mem15, align 8
  store i8* blockaddress(@_Z6decideii, %"6"), i8** %.reload19, align 8
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %9 = load i8*, i8** %.reload, align 8
  indirectbr i8* %9, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6"]

BogusBasciBlock:                                  ; preds = %entry, %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %10 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z6decideii, %"3"), i8** %10, align 8
  %11 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8* blockaddress(@_Z6decideii, %"4"), i8** %11, align 8
  %12 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8* blockaddress(@_Z6decideii, %EntryBasicBlockSplit), i8** %12, align 8
  %13 = getelementptr i8*, i8** %JumpTable, i32 6
  store i8* blockaddress(@_Z6decideii, %"6"), i8** %13, align 8
  %.reload1 = load i8**, i8*** %.reg2mem, align 8
  %14 = load i8*, i8** %.reload1, align 8
  indirectbr i8* %14, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6"]

EntryBasicBlockSplit:                             ; preds = %entry, %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %15 = icmp slt i32 %0, %1
  %.reload4 = load i8**, i8*** %.reg2mem3, align 8
  %.reload7 = load i8**, i8*** %.reg2mem6, align 8
  %16 = select i1 %15, i8** %.reload4, i8** %.reload7
  %17 = load i8*, i8** %16, align 8
  indirectbr i8* %17, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6"]

"2":                                              ; preds = %entry, %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %18 = add nsw i32 %1, %0
  %.reload18 = load i8**, i8*** %.reg2mem15, align 8
  %19 = load i8*, i8** %.reload18, align 8
  store i32 %18, i32* %.reg2mem20, align 4
  indirectbr i8* %19, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6"]

"3":                                              ; preds = %entry, %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %20 = icmp eq i32 %0, %1
  %.reload10 = load i8**, i8*** %.reg2mem9, align 8
  %.reload13 = load i8**, i8*** %.reg2mem12, align 8
  %21 = select i1 %20, i8** %.reload10, i8** %.reload13
  %22 = load i8*, i8** %21, align 8
  indirectbr i8* %22, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6"]

"4":                                              ; preds = %entry, %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %23 = mul i32 %1, -2
  %.reload17 = load i8**, i8*** %.reg2mem15, align 8
  %24 = load i8*, i8** %.reload17, align 8
  store i32 %23, i32* %.reg2mem20, align 4
  indirectbr i8* %24, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6"]

"5":                                              ; preds = %entry, %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %25 = shl i32 %0, 1
  %26 = sub i32 %25, %1
  %.reload16 = load i8**, i8*** %.reg2mem15, align 8
  %27 = load i8*, i8** %.reload16, align 8
  store i32 %26, i32* %.reg2mem20, align 4
  indirectbr i8* %27, [label %BogusBasciBlock, label %EntryBasicBlockSplit, label %"2", label %"3", label %"4", label %"5", label %"6"]

"6":                                              ; preds = %entry, %"5", %"4", %"3", %"2", %EntryBasicBlockSplit, %BogusBasciBlock
  %.reload21 = load i32, i32* %.reg2mem20, align 4
  ret i32 %.reload21
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

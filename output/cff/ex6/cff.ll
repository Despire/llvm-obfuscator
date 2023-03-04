; ModuleID = 'output/cff/ex6/ex6.ll'
source_filename = "input/cff/ex6/ex6.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
entry:
  %.reg2mem27 = alloca i32, align 4
  %.reg2mem25 = alloca i32, align 4
  %.reg2mem23 = alloca i32, align 4
  %.reg2mem21 = alloca i32, align 4
  %.reg2mem19 = alloca i32, align 4
  %.reg2mem17 = alloca i32, align 4
  %.reg2mem14 = alloca i32, align 4
  %.reg2mem11 = alloca i8**, align 8
  %.reg2mem7 = alloca i8**, align 8
  %.reg2mem3 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %JumpTable = alloca i8*, i32 5, align 8
  %1 = getelementptr i8*, i8** %JumpTable, i32 0
  store i8* blockaddress(@_Z8digitSumi, %EntryBasicBlockSplit), i8** %1, align 8
  %2 = getelementptr i8*, i8** %JumpTable, i32 1
  store i8** %2, i8*** %.reg2mem, align 8
  %.reload2 = load i8**, i8*** %.reg2mem, align 8
  store i8* blockaddress(@_Z8digitSumi, %"1"), i8** %.reload2, align 8
  %3 = getelementptr i8*, i8** %JumpTable, i32 2
  store i8** %3, i8*** %.reg2mem3, align 8
  %.reload6 = load i8**, i8*** %.reg2mem3, align 8
  store i8* blockaddress(@_Z8digitSumi, %"2"), i8** %.reload6, align 8
  %4 = getelementptr i8*, i8** %JumpTable, i32 3
  store i8** %4, i8*** %.reg2mem7, align 8
  %.reload10 = load i8**, i8*** %.reg2mem7, align 8
  store i8* blockaddress(@_Z8digitSumi, %"3"), i8** %.reload10, align 8
  %5 = getelementptr i8*, i8** %JumpTable, i32 4
  store i8** %5, i8*** %.reg2mem11, align 8
  %.reload13 = load i8**, i8*** %.reg2mem11, align 8
  store i8* blockaddress(@_Z8digitSumi, %"4"), i8** %.reload13, align 8
  %6 = load i8*, i8** %1, align 8
  indirectbr i8* %6, [label %EntryBasicBlockSplit, label %"1", label %"2", label %"3", label %"4"]

EntryBasicBlockSplit:                             ; preds = %entry, %"3", %"2", %"1", %EntryBasicBlockSplit
  %.reload1 = load i8**, i8*** %.reg2mem, align 8
  %7 = load i8*, i8** %.reload1, align 8
  store i32 %0, i32* %.reg2mem17, align 4
  store i32 0, i32* %.reg2mem19, align 4
  indirectbr i8* %7, [label %EntryBasicBlockSplit, label %"1", label %"2", label %"3", label %"4"]

"1":                                              ; preds = %entry, %"3", %"2", %"1", %EntryBasicBlockSplit
  %.reload20 = load i32, i32* %.reg2mem19, align 4
  %.reload18 = load i32, i32* %.reg2mem17, align 4
  %8 = icmp sgt i32 %.reload18, 0
  %.reload5 = load i8**, i8*** %.reg2mem3, align 8
  %.reload9 = load i8**, i8*** %.reg2mem7, align 8
  %9 = select i1 %8, i8** %.reload5, i8** %.reload9
  %10 = load i8*, i8** %9, align 8
  store i32 %.reload20, i32* %.reg2mem21, align 4
  store i32 %.reload18, i32* %.reg2mem23, align 4
  store i32 %.reload18, i32* %.reg2mem25, align 4
  store i32 %.reload20, i32* %.reg2mem27, align 4
  indirectbr i8* %10, [label %EntryBasicBlockSplit, label %"1", label %"2", label %"3", label %"4"]

"2":                                              ; preds = %entry, %"3", %"2", %"1", %EntryBasicBlockSplit
  %.reload24 = load i32, i32* %.reg2mem23, align 4
  %.reload22 = load i32, i32* %.reg2mem21, align 4
  %11 = freeze i32 %.reload24
  %12 = sdiv i32 %11, 10
  %13 = mul i32 %12, 10
  %14 = sub i32 %11, %13
  %15 = add nsw i32 %.reload22, %14
  %16 = icmp sgt i32 %.reload24, 9
  %.reload4 = load i8**, i8*** %.reg2mem3, align 8
  %.reload8 = load i8**, i8*** %.reg2mem7, align 8
  %17 = select i1 %16, i8** %.reload4, i8** %.reload8
  %18 = load i8*, i8** %17, align 8
  store i32 %15, i32* %.reg2mem21, align 4
  store i32 %12, i32* %.reg2mem23, align 4
  store i32 %12, i32* %.reg2mem25, align 4
  store i32 %15, i32* %.reg2mem27, align 4
  indirectbr i8* %18, [label %EntryBasicBlockSplit, label %"1", label %"2", label %"3", label %"4"]

"3":                                              ; preds = %entry, %"3", %"2", %"1", %EntryBasicBlockSplit
  %.reload28 = load i32, i32* %.reg2mem27, align 4
  %.reload26 = load i32, i32* %.reg2mem25, align 4
  store i32 %.reload28, i32* %.reg2mem14, align 4
  %19 = icmp eq i32 %.reload26, 0
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %.reload12 = load i8**, i8*** %.reg2mem11, align 8
  %20 = select i1 %19, i8** %.reload12, i8** %.reload
  %21 = load i8*, i8** %20, align 8
  %.reload16 = load i32, i32* %.reg2mem14, align 4
  store i32 %.reload26, i32* %.reg2mem17, align 4
  store i32 %.reload16, i32* %.reg2mem19, align 4
  indirectbr i8* %21, [label %EntryBasicBlockSplit, label %"1", label %"2", label %"3", label %"4"]

"4":                                              ; preds = %entry, %"3", %"2", %"1", %EntryBasicBlockSplit
  %.reload15 = load i32, i32* %.reg2mem14, align 4
  ret i32 %.reload15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = call i32 @_Z8digitSumi(i32 25)
  %5 = add nsw i32 %4, %3
  ret i32 %5
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

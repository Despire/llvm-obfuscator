; ModuleID = 'output/cff/ex6/ex6.ll'
source_filename = "input/cff/ex6/ex6.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
entry:
  %.reg2mem13 = alloca i32, align 4
  %.reg2mem11 = alloca i32, align 4
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem7 = alloca i32, align 4
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %lookupTable = alloca [6 x i32], align 4
  %1 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 5
  store i32 5, i32* %1, align 4
  %2 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 4
  store i32 4, i32* %2, align 4
  %3 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 3
  store i32 3, i32* %3, align 4
  %4 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 2
  store i32 2, i32* %4, align 4
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 1
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %12
    i32 2, label %25
    i32 3, label %43
    i32 4, label %56
    i32 5, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  store i32 %11, i32* %dispatcher, align 4
  store i32 %0, i32* %.reg2mem3, align 4
  store i32 0, i32* %.reg2mem5, align 4
  br label %loopEnd

12:                                               ; preds = %loopStart
  %.reload6 = load i32, i32* %.reg2mem5, align 4
  %.reload4 = load i32, i32* %.reg2mem3, align 4
  %13 = icmp sgt i32 %.reload4, 0
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %15, %17
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sub i32 %20, %22
  %24 = select i1 %13, i32 %18, i32 %23
  store i32 %24, i32* %dispatcher, align 4
  store i32 %.reload6, i32* %.reg2mem7, align 4
  store i32 %.reload4, i32* %.reg2mem9, align 4
  store i32 %.reload4, i32* %.reg2mem11, align 4
  store i32 %.reload6, i32* %.reg2mem13, align 4
  br label %loopEnd

25:                                               ; preds = %loopStart
  %.reload10 = load i32, i32* %.reg2mem9, align 4
  %.reload8 = load i32, i32* %.reg2mem7, align 4
  %26 = freeze i32 %.reload10
  %27 = sdiv i32 %26, 10
  %28 = mul i32 %27, 10
  %29 = sub i32 %26, %28
  %30 = add nsw i32 %.reload8, %29
  %31 = icmp sgt i32 %.reload10, 9
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %33, %35
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %38, %40
  %42 = select i1 %31, i32 %36, i32 %41
  store i32 %42, i32* %dispatcher, align 4
  store i32 %30, i32* %.reg2mem7, align 4
  store i32 %27, i32* %.reg2mem9, align 4
  store i32 %27, i32* %.reg2mem11, align 4
  store i32 %30, i32* %.reg2mem13, align 4
  br label %loopEnd

43:                                               ; preds = %loopStart
  %.reload14 = load i32, i32* %.reg2mem13, align 4
  %.reload12 = load i32, i32* %.reg2mem11, align 4
  store i32 %.reload14, i32* %.reg2mem, align 4
  %44 = icmp eq i32 %.reload12, 0
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %46, %48
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %51, %53
  %55 = select i1 %44, i32 %49, i32 %54
  store i32 %55, i32* %dispatcher, align 4
  %.reload2 = load i32, i32* %.reg2mem, align 4
  store i32 %.reload12, i32* %.reg2mem3, align 4
  store i32 %.reload2, i32* %.reg2mem5, align 4
  br label %loopEnd

56:                                               ; preds = %loopStart
  %.reload = load i32, i32* %.reg2mem, align 4
  ret i32 %.reload

BogusBasicBlock:                                  ; preds = %loopStart
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %58, align 4
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 3
  store i32 2, i32* %59, align 4
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %60, align 4
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %lookupTable, i32 0, i32 5
  store i32 4, i32* %61, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %43, %25, %12, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
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

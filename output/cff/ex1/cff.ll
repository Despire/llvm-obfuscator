; ModuleID = 'output/cff/ex1/ex1.ll'
source_filename = "input/cff/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
entry:
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem2 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %lookupTable = alloca [4 x i32], align 4
  %1 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 3
  store i32 3, i32* %1, align 4
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 2
  store i32 2, i32* %2, align 4
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 1
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %17
    i32 2, label %35
    i32 3, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %5 = icmp sgt i32 %0, 0
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = sub i32 %7, %9
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %12, %14
  %16 = select i1 %5, i32 %10, i32 %15
  store i32 %16, i32* %dispatcher, align 4
  store i32 0, i32* %.reg2mem, align 4
  store i32 %0, i32* %.reg2mem2, align 4
  store i32 0, i32* %.reg2mem4, align 4
  br label %loopEnd

17:                                               ; preds = %loopStart
  %.reload3 = load i32, i32* %.reg2mem2, align 4
  %.reload = load i32, i32* %.reg2mem, align 4
  %18 = freeze i32 %.reload3
  %19 = sdiv i32 %18, 10
  %20 = mul i32 %19, 10
  %21 = sub i32 %18, %20
  %22 = add nsw i32 %.reload, %21
  %23 = icmp sgt i32 %.reload3, 9
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %25, %27
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %30, %32
  %34 = select i1 %23, i32 %28, i32 %33
  store i32 %34, i32* %dispatcher, align 4
  store i32 %22, i32* %.reg2mem, align 4
  store i32 %19, i32* %.reg2mem2, align 4
  store i32 %22, i32* %.reg2mem4, align 4
  br label %loopEnd

35:                                               ; preds = %loopStart
  %.reload5 = load i32, i32* %.reg2mem4, align 4
  ret i32 %.reload5

BogusBasicBlock:                                  ; preds = %loopStart
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %lookupTable, i32 0, i32 3
  store i32 2, i32* %38, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %17, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
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

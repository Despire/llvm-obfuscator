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
  %lookupTable = alloca [8 x i32], align 4
  %1 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %1, align 4
  %2 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %2, align 4
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %3, align 4
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %6, align 4
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %7, align 4
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %8, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %21
    i32 2, label %39
    i32 3, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %9 = icmp sgt i32 %0, 0
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %16, %18
  %20 = select i1 %9, i32 %14, i32 %19
  store i32 %20, i32* %dispatcher, align 4
  store i32 0, i32* %.reg2mem, align 4
  store i32 %0, i32* %.reg2mem2, align 4
  store i32 0, i32* %.reg2mem4, align 4
  br label %loopEnd

21:                                               ; preds = %loopStart
  %.reload3 = load i32, i32* %.reg2mem2, align 4
  %.reload = load i32, i32* %.reg2mem, align 4
  %22 = freeze i32 %.reload3
  %23 = sdiv i32 %22, 10
  %24 = mul i32 %23, 10
  %25 = sub i32 %22, %24
  %26 = add nsw i32 %.reload, %25
  %27 = icmp sgt i32 %.reload3, 9
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = sub i32 %29, %31
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %34, %36
  %38 = select i1 %27, i32 %32, i32 %37
  store i32 %38, i32* %dispatcher, align 4
  store i32 %26, i32* %.reg2mem, align 4
  store i32 %23, i32* %.reg2mem2, align 4
  store i32 %26, i32* %.reg2mem4, align 4
  br label %loopEnd

39:                                               ; preds = %loopStart
  %.reload5 = load i32, i32* %.reg2mem4, align 4
  ret i32 %.reload5

BogusBasicBlock:                                  ; preds = %loopStart
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %40, align 4
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %42, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %43, align 4
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %lookupTable, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %21, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
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

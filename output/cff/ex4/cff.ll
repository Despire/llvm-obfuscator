; ModuleID = 'output/cff/ex4/ex4.ll'
source_filename = "input/cff/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem18 = alloca i32, align 4
  %.reg2mem16 = alloca i32, align 4
  %.reg2mem14 = alloca i32, align 4
  %.reg2mem10 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher3 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher3, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %2
    i32 2, label %NodeBlock1
    i32 3, label %NodeBlock
    i32 4, label %LeafBlock
    i32 5, label %6
    i32 6, label %11
    i32 7, label %16
    i32 8, label %17
    i32 9, label %20
  ]

EntryBasicBlockSplit:                             ; preds = %loopStart
  store i32 1, i32* %dispatcher, align 4
  store i32 %0, i32* %.reg2mem14, align 4
  store i32 0, i32* %.reg2mem16, align 4
  br label %loopEnd

2:                                                ; preds = %loopStart
  %.reload17 = load i32, i32* %.reg2mem16, align 4
  %.reload15 = load i32, i32* %.reg2mem14, align 4
  store i32 %.reload17, i32* %.reg2mem10, align 4
  store i32 %.reload15, i32* %.reg2mem, align 4
  store i32 2, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock1:                                       ; preds = %loopStart
  %.reload13 = load i32, i32* %.reg2mem10, align 4
  %Pivot2 = icmp slt i32 %.reload13, 2
  %3 = select i1 %Pivot2, i32 4, i32 3
  store i32 %3, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock:                                        ; preds = %loopStart
  %.reload11 = load i32, i32* %.reg2mem10, align 4
  %Pivot = icmp slt i32 %.reload11, 3
  %4 = select i1 %Pivot, i32 8, i32 9
  store i32 %4, i32* %dispatcher, align 4
  br label %loopEnd

LeafBlock:                                        ; preds = %loopStart
  %.reload12 = load i32, i32* %.reg2mem10, align 4
  %SwitchLeaf = icmp eq i32 %.reload12, 1
  %5 = select i1 %SwitchLeaf, i32 6, i32 5
  store i32 %5, i32* %dispatcher, align 4
  br label %loopEnd

6:                                                ; preds = %loopStart
  %.reload9 = load i32, i32* %.reg2mem, align 4
  %7 = icmp slt i32 %.reload9, %1
  %8 = select i1 %7, i32 %1, i32 0
  %.reload8 = load i32, i32* %.reg2mem, align 4
  %9 = add nsw i32 %8, %.reload8
  %10 = select i1 %7, i32 3, i32 1
  store i32 7, i32* %dispatcher, align 4
  store i32 %9, i32* %.reg2mem18, align 4
  store i32 %10, i32* %.reg2mem20, align 4
  br label %loopEnd

11:                                               ; preds = %loopStart
  %.reload7 = load i32, i32* %.reg2mem, align 4
  %12 = icmp eq i32 %.reload7, %1
  %.reload6 = load i32, i32* %.reg2mem, align 4
  %13 = sub nsw i32 %1, %.reload6
  %.reload5 = load i32, i32* %.reg2mem, align 4
  %14 = select i1 %12, i32 %13, i32 %.reload5
  %15 = select i1 %12, i32 3, i32 2
  store i32 7, i32* %dispatcher, align 4
  store i32 %14, i32* %.reg2mem18, align 4
  store i32 %15, i32* %.reg2mem20, align 4
  br label %loopEnd

16:                                               ; preds = %loopStart
  %.reload21 = load i32, i32* %.reg2mem20, align 4
  %.reload19 = load i32, i32* %.reg2mem18, align 4
  store i32 1, i32* %dispatcher, align 4
  store i32 %.reload19, i32* %.reg2mem14, align 4
  store i32 %.reload21, i32* %.reg2mem16, align 4
  br label %loopEnd

17:                                               ; preds = %loopStart
  %.reload4 = load i32, i32* %.reg2mem, align 4
  %18 = shl i32 %.reload4, 1
  %19 = sub i32 %18, %1
  store i32 7, i32* %dispatcher, align 4
  store i32 %19, i32* %.reg2mem18, align 4
  store i32 3, i32* %.reg2mem20, align 4
  br label %loopEnd

20:                                               ; preds = %loopStart
  %.reload = load i32, i32* %.reg2mem, align 4
  ret i32 %.reload

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %17, %16, %11, %6, %LeafBlock, %NodeBlock, %NodeBlock1, %2, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
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

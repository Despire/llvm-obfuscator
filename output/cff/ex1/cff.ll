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
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %3
    i32 2, label %11
  ]

EntryBasicBlockSplit:                             ; preds = %loopStart
  %1 = icmp sgt i32 %0, 0
  %2 = select i1 %1, i32 1, i32 2
  store i32 %2, i32* %dispatcher, align 4
  store i32 0, i32* %.reg2mem, align 4
  store i32 %0, i32* %.reg2mem2, align 4
  store i32 0, i32* %.reg2mem4, align 4
  br label %loopEnd

3:                                                ; preds = %loopStart
  %.reload3 = load i32, i32* %.reg2mem2, align 4
  %.reload = load i32, i32* %.reg2mem, align 4
  %4 = freeze i32 %.reload3
  %5 = sdiv i32 %4, 10
  %6 = mul i32 %5, 10
  %7 = sub i32 %4, %6
  %8 = add nsw i32 %.reload, %7
  %9 = icmp sgt i32 %.reload3, 9
  %10 = select i1 %9, i32 1, i32 2
  store i32 %10, i32* %dispatcher, align 4
  store i32 %8, i32* %.reg2mem, align 4
  store i32 %5, i32* %.reg2mem2, align 4
  store i32 %8, i32* %.reg2mem4, align 4
  br label %loopEnd

11:                                               ; preds = %loopStart
  %.reload5 = load i32, i32* %.reg2mem4, align 4
  ret i32 %.reload5

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %3, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
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

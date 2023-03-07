; ModuleID = 'output/cff/ex3/ex3.ll'
source_filename = "input/cff/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %.reg2mem = alloca i32, align 4
  %lookupTable = alloca [7 x i32], align 4
  %2 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 6
  store i32 6, i32* %2, align 4
  %3 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 5
  store i32 5, i32* %3, align 4
  %4 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 4
  store i32 4, i32* %4, align 4
  %5 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 3
  store i32 3, i32* %5, align 4
  %6 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 2
  store i32 2, i32* %6, align 4
  %7 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %21
    i32 2, label %28
    i32 3, label %41
    i32 4, label %48
    i32 5, label %56
    i32 6, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %9 = icmp slt i32 %0, %1
  %10 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %16, %18
  %20 = select i1 %9, i32 %14, i32 %19
  store i32 %20, i32* %dispatcher, align 4
  br label %loopEnd

21:                                               ; preds = %loopStart
  %22 = add nsw i32 %1, %0
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %24, %26
  store i32 %27, i32* %dispatcher, align 4
  store i32 %22, i32* %.reg2mem, align 4
  br label %loopEnd

28:                                               ; preds = %loopStart
  %29 = icmp eq i32 %0, %1
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %31, %33
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 %36, %38
  %40 = select i1 %29, i32 %34, i32 %39
  store i32 %40, i32* %dispatcher, align 4
  br label %loopEnd

41:                                               ; preds = %loopStart
  %42 = mul i32 %1, -2
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %44, %46
  store i32 %47, i32* %dispatcher, align 4
  store i32 %42, i32* %.reg2mem, align 4
  br label %loopEnd

48:                                               ; preds = %loopStart
  %49 = shl i32 %0, 1
  %50 = sub i32 %49, %1
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %52, %54
  store i32 %55, i32* %dispatcher, align 4
  store i32 %50, i32* %.reg2mem, align 4
  br label %loopEnd

56:                                               ; preds = %loopStart
  %.reload = load i32, i32* %.reg2mem, align 4
  ret i32 %.reload

BogusBasicBlock:                                  ; preds = %loopStart
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %58, align 4
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 3
  store i32 2, i32* %59, align 4
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %60, align 4
  %61 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 5
  store i32 4, i32* %61, align 4
  %62 = getelementptr inbounds [7 x i32], [7 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %62, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %48, %41, %28, %21, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
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

; ModuleID = 'output/cff/ex3/ex3.ll'
source_filename = "input/cff/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %.reg2mem = alloca i32, align 4
  %lookupTable = alloca [11 x i32], align 4
  %2 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %2, align 4
  %3 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %3, align 4
  %4 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %4, align 4
  %5 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %7, align 4
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %8, align 4
  %9 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %9, align 4
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  store i32 5, i32* %10, align 4
  %11 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 9
  store i32 6, i32* %11, align 4
  %12 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  store i32 7, i32* %12, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %25
    i32 2, label %32
    i32 3, label %45
    i32 4, label %52
    i32 5, label %60
    i32 6, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %13 = icmp slt i32 %0, %1
  %14 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %15, %17
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = sub i32 %20, %22
  %24 = select i1 %13, i32 %18, i32 %23
  store i32 %24, i32* %dispatcher, align 4
  br label %loopEnd

25:                                               ; preds = %loopStart
  %26 = add nsw i32 %1, %0
  %27 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %28, %30
  store i32 %31, i32* %dispatcher, align 4
  store i32 %26, i32* %.reg2mem, align 4
  br label %loopEnd

32:                                               ; preds = %loopStart
  %33 = icmp eq i32 %0, %1
  %34 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %35, %37
  %39 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %40, %42
  %44 = select i1 %33, i32 %38, i32 %43
  store i32 %44, i32* %dispatcher, align 4
  br label %loopEnd

45:                                               ; preds = %loopStart
  %46 = mul i32 %1, -2
  %47 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %48, %50
  store i32 %51, i32* %dispatcher, align 4
  store i32 %46, i32* %.reg2mem, align 4
  br label %loopEnd

52:                                               ; preds = %loopStart
  %53 = shl i32 %0, 1
  %54 = sub i32 %53, %1
  %55 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = srem i32 %56, %58
  store i32 %59, i32* %dispatcher, align 4
  store i32 %54, i32* %.reg2mem, align 4
  br label %loopEnd

60:                                               ; preds = %loopStart
  %.reload = load i32, i32* %.reg2mem, align 4
  ret i32 %.reload

BogusBasicBlock:                                  ; preds = %loopStart
  %61 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %61, align 4
  %62 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %63, align 4
  %64 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %64, align 4
  %65 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %65, align 4
  %66 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  store i32 9, i32* %66, align 4
  %67 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %52, %45, %32, %25, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
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

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
  %lookupTable = alloca [11 x i32], align 4
  %2 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  store i32 10, i32* %2, align 4
  %3 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 9
  store i32 9, i32* %3, align 4
  %4 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  store i32 8, i32* %4, align 4
  %5 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  store i32 7, i32* %5, align 4
  %6 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  store i32 6, i32* %6, align 4
  %7 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  store i32 5, i32* %7, align 4
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  store i32 4, i32* %8, align 4
  %9 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  store i32 3, i32* %9, align 4
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 2
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher3 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher3, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %18
    i32 2, label %NodeBlock1
    i32 3, label %NodeBlock
    i32 4, label %LeafBlock
    i32 5, label %57
    i32 6, label %67
    i32 7, label %77
    i32 8, label %83
    i32 9, label %91
    i32 10, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %14, %16
  store i32 %17, i32* %dispatcher, align 4
  store i32 %0, i32* %.reg2mem14, align 4
  store i32 0, i32* %.reg2mem16, align 4
  br label %loopEnd

18:                                               ; preds = %loopStart
  %.reload17 = load i32, i32* %.reg2mem16, align 4
  %.reload15 = load i32, i32* %.reg2mem14, align 4
  store i32 %.reload17, i32* %.reg2mem10, align 4
  store i32 %.reload15, i32* %.reg2mem, align 4
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = sub i32 %20, %22
  store i32 %23, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock1:                                       ; preds = %loopStart
  %.reload13 = load i32, i32* %.reg2mem10, align 4
  %Pivot2 = icmp slt i32 %.reload13, 2
  %24 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %25, %27
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %30, %32
  %34 = select i1 %Pivot2, i32 %28, i32 %33
  store i32 %34, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock:                                        ; preds = %loopStart
  %.reload11 = load i32, i32* %.reg2mem10, align 4
  %Pivot = icmp slt i32 %.reload11, 3
  %35 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 %36, %38
  %40 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %41, %43
  %45 = select i1 %Pivot, i32 %39, i32 %44
  store i32 %45, i32* %dispatcher, align 4
  br label %loopEnd

LeafBlock:                                        ; preds = %loopStart
  %.reload12 = load i32, i32* %.reg2mem10, align 4
  %SwitchLeaf = icmp eq i32 %.reload12, 1
  %46 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %47, %49
  %51 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %52, %54
  %56 = select i1 %SwitchLeaf, i32 %50, i32 %55
  store i32 %56, i32* %dispatcher, align 4
  br label %loopEnd

57:                                               ; preds = %loopStart
  %.reload9 = load i32, i32* %.reg2mem, align 4
  %58 = icmp slt i32 %.reload9, %1
  %59 = select i1 %58, i32 %1, i32 0
  %.reload8 = load i32, i32* %.reg2mem, align 4
  %60 = add nsw i32 %59, %.reload8
  %61 = select i1 %58, i32 3, i32 1
  %62 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %63, %65
  store i32 %66, i32* %dispatcher, align 4
  store i32 %60, i32* %.reg2mem18, align 4
  store i32 %61, i32* %.reg2mem20, align 4
  br label %loopEnd

67:                                               ; preds = %loopStart
  %.reload7 = load i32, i32* %.reg2mem, align 4
  %68 = icmp eq i32 %.reload7, %1
  %.reload6 = load i32, i32* %.reg2mem, align 4
  %69 = sub nsw i32 %1, %.reload6
  %.reload5 = load i32, i32* %.reg2mem, align 4
  %70 = select i1 %68, i32 %69, i32 %.reload5
  %71 = select i1 %68, i32 3, i32 2
  %72 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub i32 %73, %75
  store i32 %76, i32* %dispatcher, align 4
  store i32 %70, i32* %.reg2mem18, align 4
  store i32 %71, i32* %.reg2mem20, align 4
  br label %loopEnd

77:                                               ; preds = %loopStart
  %.reload21 = load i32, i32* %.reg2mem20, align 4
  %.reload19 = load i32, i32* %.reg2mem18, align 4
  %78 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %79, %81
  store i32 %82, i32* %dispatcher, align 4
  store i32 %.reload19, i32* %.reg2mem14, align 4
  store i32 %.reload21, i32* %.reg2mem16, align 4
  br label %loopEnd

83:                                               ; preds = %loopStart
  %.reload4 = load i32, i32* %.reg2mem, align 4
  %84 = shl i32 %.reload4, 1
  %85 = sub i32 %84, %1
  %86 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub i32 %87, %89
  store i32 %90, i32* %dispatcher, align 4
  store i32 %85, i32* %.reg2mem18, align 4
  store i32 3, i32* %.reg2mem20, align 4
  br label %loopEnd

91:                                               ; preds = %loopStart
  %.reload = load i32, i32* %.reg2mem, align 4
  ret i32 %.reload

BogusBasicBlock:                                  ; preds = %loopStart
  %92 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %93, align 4
  %94 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 3
  store i32 2, i32* %94, align 4
  %95 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %95, align 4
  %96 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 5
  store i32 4, i32* %96, align 4
  %97 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %97, align 4
  %98 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 7
  store i32 6, i32* %98, align 4
  %99 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %99, align 4
  %100 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 9
  store i32 8, i32* %100, align 4
  %101 = getelementptr inbounds [11 x i32], [11 x i32]* %lookupTable, i32 0, i32 10
  store i32 9, i32* %101, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %83, %77, %67, %57, %LeafBlock, %NodeBlock, %NodeBlock1, %18, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
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

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
  %lookupTable = alloca [15 x i32], align 4
  %2 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %2, align 4
  %3 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %3, align 4
  %4 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %4, align 4
  %5 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %7, align 4
  %8 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %8, align 4
  %9 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %9, align 4
  %10 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 8
  store i32 5, i32* %10, align 4
  %11 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 9
  store i32 6, i32* %11, align 4
  %12 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 10
  store i32 7, i32* %12, align 4
  %13 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 11
  store i32 8, i32* %13, align 4
  %14 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 12
  store i32 9, i32* %14, align 4
  %15 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 13
  store i32 10, i32* %15, align 4
  %16 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 14
  store i32 11, i32* %16, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher3 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher3, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %22
    i32 2, label %NodeBlock1
    i32 3, label %NodeBlock
    i32 4, label %LeafBlock
    i32 5, label %61
    i32 6, label %71
    i32 7, label %81
    i32 8, label %87
    i32 9, label %95
    i32 10, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %17 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 14
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %18, %20
  store i32 %21, i32* %dispatcher, align 4
  store i32 %0, i32* %.reg2mem14, align 4
  store i32 0, i32* %.reg2mem16, align 4
  br label %loopEnd

22:                                               ; preds = %loopStart
  %.reload17 = load i32, i32* %.reg2mem16, align 4
  %.reload15 = load i32, i32* %.reg2mem14, align 4
  store i32 %.reload17, i32* %.reg2mem10, align 4
  store i32 %.reload15, i32* %.reg2mem, align 4
  %23 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %24, %26
  store i32 %27, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock1:                                       ; preds = %loopStart
  %.reload13 = load i32, i32* %.reg2mem10, align 4
  %Pivot2 = icmp slt i32 %.reload13, 2
  %28 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 14
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %29, %31
  %33 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 13
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %34, %36
  %38 = select i1 %Pivot2, i32 %32, i32 %37
  store i32 %38, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock:                                        ; preds = %loopStart
  %.reload11 = load i32, i32* %.reg2mem10, align 4
  %Pivot = icmp slt i32 %.reload11, 3
  %39 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 14
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %40, %42
  %44 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 12
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 14
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %45, %47
  %49 = select i1 %Pivot, i32 %43, i32 %48
  store i32 %49, i32* %dispatcher, align 4
  br label %loopEnd

LeafBlock:                                        ; preds = %loopStart
  %.reload12 = load i32, i32* %.reg2mem10, align 4
  %SwitchLeaf = icmp eq i32 %.reload12, 1
  %50 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %51, %53
  %55 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sub i32 %56, %58
  %60 = select i1 %SwitchLeaf, i32 %54, i32 %59
  store i32 %60, i32* %dispatcher, align 4
  br label %loopEnd

61:                                               ; preds = %loopStart
  %.reload9 = load i32, i32* %.reg2mem, align 4
  %62 = icmp slt i32 %.reload9, %1
  %63 = select i1 %62, i32 %1, i32 0
  %.reload8 = load i32, i32* %.reg2mem, align 4
  %64 = add nsw i32 %63, %.reload8
  %65 = select i1 %62, i32 3, i32 1
  %66 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 %67, %69
  store i32 %70, i32* %dispatcher, align 4
  store i32 %64, i32* %.reg2mem18, align 4
  store i32 %65, i32* %.reg2mem20, align 4
  br label %loopEnd

71:                                               ; preds = %loopStart
  %.reload7 = load i32, i32* %.reg2mem, align 4
  %72 = icmp eq i32 %.reload7, %1
  %.reload6 = load i32, i32* %.reg2mem, align 4
  %73 = sub nsw i32 %1, %.reload6
  %.reload5 = load i32, i32* %.reg2mem, align 4
  %74 = select i1 %72, i32 %73, i32 %.reload5
  %75 = select i1 %72, i32 3, i32 2
  %76 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 13
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = sub i32 %77, %79
  store i32 %80, i32* %dispatcher, align 4
  store i32 %74, i32* %.reg2mem18, align 4
  store i32 %75, i32* %.reg2mem20, align 4
  br label %loopEnd

81:                                               ; preds = %loopStart
  %.reload21 = load i32, i32* %.reg2mem20, align 4
  %.reload19 = load i32, i32* %.reg2mem18, align 4
  %82 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sub i32 %83, %85
  store i32 %86, i32* %dispatcher, align 4
  store i32 %.reload19, i32* %.reg2mem14, align 4
  store i32 %.reload21, i32* %.reg2mem16, align 4
  br label %loopEnd

87:                                               ; preds = %loopStart
  %.reload4 = load i32, i32* %.reg2mem, align 4
  %88 = shl i32 %.reload4, 1
  %89 = sub i32 %88, %1
  %90 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %91, %93
  store i32 %94, i32* %dispatcher, align 4
  store i32 %89, i32* %.reg2mem18, align 4
  store i32 3, i32* %.reg2mem20, align 4
  br label %loopEnd

95:                                               ; preds = %loopStart
  %.reload = load i32, i32* %.reg2mem, align 4
  ret i32 %.reload

BogusBasicBlock:                                  ; preds = %loopStart
  %96 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %96, align 4
  %97 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %97, align 4
  %98 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %98, align 4
  %99 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %99, align 4
  %100 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %100, align 4
  %101 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 10
  store i32 9, i32* %101, align 4
  %102 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 12
  store i32 11, i32* %102, align 4
  %103 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 14
  store i32 13, i32* %103, align 4
  %104 = getelementptr inbounds [15 x i32], [15 x i32]* %lookupTable, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %87, %81, %71, %61, %LeafBlock, %NodeBlock, %NodeBlock1, %22, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
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

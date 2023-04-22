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
  %lookupTable = alloca [10 x i32], align 4
  %1 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 0
  store i32 -3, i32* %1, align 4
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 1
  store i32 -2, i32* %2, align 4
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 2
  store i32 -1, i32* %3, align 4
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 3
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 4
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 5
  store i32 2, i32* %6, align 4
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 6
  store i32 3, i32* %7, align 4
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 7
  store i32 4, i32* %8, align 4
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 8
  store i32 5, i32* %9, align 4
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  store i32 6, i32* %10, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %16
    i32 2, label %29
    i32 3, label %47
    i32 4, label %60
    i32 5, label %BogusBasicBlock
  ]

EntryBasicBlockSplit:                             ; preds = %BogusBasicBlock, %loopStart
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %12, %14
  store i32 %15, i32* %dispatcher, align 4
  store i32 %0, i32* %.reg2mem3, align 4
  store i32 0, i32* %.reg2mem5, align 4
  br label %loopEnd

16:                                               ; preds = %loopStart
  %.reload6 = load i32, i32* %.reg2mem5, align 4
  %.reload4 = load i32, i32* %.reg2mem3, align 4
  %17 = icmp sgt i32 %.reload4, 0
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %19, %21
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %24, %26
  %28 = select i1 %17, i32 %22, i32 %27
  store i32 %28, i32* %dispatcher, align 4
  store i32 %.reload6, i32* %.reg2mem7, align 4
  store i32 %.reload4, i32* %.reg2mem9, align 4
  store i32 %.reload4, i32* %.reg2mem11, align 4
  store i32 %.reload6, i32* %.reg2mem13, align 4
  br label %loopEnd

29:                                               ; preds = %loopStart
  %.reload10 = load i32, i32* %.reg2mem9, align 4
  %.reload8 = load i32, i32* %.reg2mem7, align 4
  %30 = freeze i32 %.reload10
  %31 = sdiv i32 %30, 10
  %32 = mul i32 %31, 10
  %33 = sub i32 %30, %32
  %34 = add nsw i32 %.reload8, %33
  %35 = icmp sgt i32 %.reload10, 9
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %37, %39
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = srem i32 %42, %44
  %46 = select i1 %35, i32 %40, i32 %45
  store i32 %46, i32* %dispatcher, align 4
  store i32 %34, i32* %.reg2mem7, align 4
  store i32 %31, i32* %.reg2mem9, align 4
  store i32 %31, i32* %.reg2mem11, align 4
  store i32 %34, i32* %.reg2mem13, align 4
  br label %loopEnd

47:                                               ; preds = %loopStart
  %.reload14 = load i32, i32* %.reg2mem13, align 4
  %.reload12 = load i32, i32* %.reg2mem11, align 4
  store i32 %.reload14, i32* %.reg2mem, align 4
  %48 = icmp eq i32 %.reload12, 0
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %50, %52
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sub i32 %55, %57
  %59 = select i1 %48, i32 %53, i32 %58
  store i32 %59, i32* %dispatcher, align 4
  %.reload2 = load i32, i32* %.reg2mem, align 4
  store i32 %.reload12, i32* %.reg2mem3, align 4
  store i32 %.reload2, i32* %.reg2mem5, align 4
  br label %loopEnd

60:                                               ; preds = %loopStart
  %.reload = load i32, i32* %.reg2mem, align 4
  ret i32 %.reload

BogusBasicBlock:                                  ; preds = %loopStart
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 0
  store i32 -1, i32* %61, align 4
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 4
  store i32 3, i32* %63, align 4
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 6
  store i32 5, i32* %64, align 4
  %65 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 8
  store i32 7, i32* %65, align 4
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %lookupTable, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %dispatcher, align 4
  br label %EntryBasicBlockSplit

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %47, %29, %16, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
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

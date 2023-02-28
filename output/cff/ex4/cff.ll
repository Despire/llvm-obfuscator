; ModuleID = 'output/cff/ex4/ex4.ll'
source_filename = "input/cff/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"25\00", align 1

; Function Attrs: mustprogress noinline nounwind ssp uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %35, %2
  %7 = load i32, i32* %5, align 4
  br label %NodeBlock5

NodeBlock5:                                       ; preds = %6
  %Pivot6 = icmp slt i32 %7, 2
  br i1 %Pivot6, label %NodeBlock, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %Pivot4 = icmp slt i32 %7, 3
  br i1 %Pivot4, label %26, label %LeafBlock1

LeafBlock1:                                       ; preds = %NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %7, 3
  br i1 %SwitchLeaf2, label %32, label %34

NodeBlock:                                        ; preds = %NodeBlock5
  %Pivot = icmp slt i32 %7, 1
  br i1 %Pivot, label %LeafBlock, label %17

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %7, 0
  br i1 %SwitchLeaf, label %8, label %34

8:                                                ; preds = %LeafBlock
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %3, align 4
  store i32 3, i32* %5, align 4
  br label %35

16:                                               ; preds = %8
  store i32 1, i32* %5, align 4
  br label %35

17:                                               ; preds = %NodeBlock
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  store i32 3, i32* %5, align 4
  br label %35

25:                                               ; preds = %17
  store i32 2, i32* %5, align 4
  br label %35

26:                                               ; preds = %NodeBlock3
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %3, align 4
  store i32 3, i32* %5, align 4
  br label %35

32:                                               ; preds = %LeafBlock1
  %33 = load i32, i32* %3, align 4
  ret i32 %33

34:                                               ; preds = %LeafBlock1, %LeafBlock
  br label %35

35:                                               ; preds = %34, %26, %25, %21, %16, %12
  br label %6, !llvm.loop !10
}

; Function Attrs: mustprogress noinline norecurse ssp uwtable
define i32 @main(i32 %0, i8** %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @atoi(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %6, align 4
  %9 = call i32 @atoi(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @_Z6decideii(i32 %10, i32 %11)
  ret i32 %12
}

declare i32 @atoi(i8*) #2

attributes #0 = { mustprogress noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}

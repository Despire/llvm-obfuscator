; ModuleID = 'output/cff/ex1/ex1.ll'
source_filename = "input/cff/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"25\00", align 1

; Function Attrs: mustprogress noinline nounwind ssp uwtable
define i32 @_Z8digitSumi(i32 %0) #0 {
entry:
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher1 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher1, label %defaultSwitchBasicBlock [
    i32 0, label %3
    i32 1, label %7
    i32 2, label %14
  ]

3:                                                ; preds = %loopStart
  %4 = load i32, i32* %1, align 4
  %5 = icmp sgt i32 %4, 0
  %6 = select i1 %5, i32 1, i32 2
  store i32 %6, i32* %dispatcher, align 4
  br label %loopEnd

7:                                                ; preds = %loopStart
  %8 = load i32, i32* %1, align 4
  %9 = srem i32 %8, 10
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = sdiv i32 %12, 10
  store i32 %13, i32* %1, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopEnd

14:                                               ; preds = %loopStart
  %15 = load i32, i32* %2, align 4
  ret i32 %15

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %7, %3, %defaultSwitchBasicBlock
  br label %loopStart
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
  %11 = call i32 @_Z8digitSumi(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @_Z8digitSumi(i32 %12)
  %14 = add nsw i32 %11, %13
  ret i32 %14
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

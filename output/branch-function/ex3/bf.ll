; ModuleID = 'output/branch-function/ex3/ex3.ll'
source_filename = "input/branch-function/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsblockAddrLookupTable13185948469323253732 = private global [5 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @h17192550222967064324 to i8*), i8* bitcast (i8** (i32*)* @bf9484345249352276228 to i8*), i8* bitcast ([5 x i8*]* @obfsblockAddrLookupTable13185948469323253732 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i64 @h17192550222967064324(i64 2147483647)
  %5 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable13185948469323253732, i32 0, i64 %4
  store i8* blockaddress(@_Z6decideii, %76), i8** %5, align 8
  %6 = call i64 @h17192550222967064324(i64 2147483646)
  %7 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable13185948469323253732, i32 0, i64 %6
  store i8* blockaddress(@_Z6decideii, %40), i8** %7, align 8
  %8 = call i64 @h17192550222967064324(i64 2147483645)
  %9 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable13185948469323253732, i32 0, i64 %8
  store i8* blockaddress(@_Z6decideii, %34), i8** %9, align 8
  %10 = call i64 @h17192550222967064324(i64 2147483643)
  %11 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable13185948469323253732, i32 0, i64 %10
  store i8* blockaddress(@_Z6decideii, %59), i8** %11, align 8
  %12 = call i64 @h17192550222967064324(i64 2147483644)
  %13 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable13185948469323253732, i32 0, i64 %12
  store i8* blockaddress(@_Z6decideii, %19), i8** %13, align 8
  %14 = icmp slt i32 %0, %1
  %15 = select i1 %14, i32 2147483645, i32 2147483644
  %16 = xor i32 %15, 1
  store i32 %16, i32* %3, align 4
  %17 = call i8** @bf9484345249352276228(i32* %3)
  %18 = load i8*, i8** %17, align 8
  indirectbr i8* %18, [label %19, label %34]

19:                                               ; preds = %19, %2
  %20 = add nsw i32 %1, %0
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 1
  %25 = mul i8 %22, %22
  %26 = add i8 %25, %22
  %27 = srem i8 %26, 2
  %28 = icmp eq i8 %27, 0
  %29 = or i1 %24, %28
  %30 = select i1 %29, i32 2147483645, i32 2147483647
  %31 = xor i32 %30, 2
  store i32 %31, i32* %3, align 4
  %32 = call i8** @bf9484345249352276228(i32* %3)
  %33 = load i8*, i8** %32, align 8
  indirectbr i8* %33, [label %76, label %19]

34:                                               ; preds = %2
  %35 = icmp eq i32 %0, %1
  %36 = select i1 %35, i32 2147483643, i32 2147483646
  %37 = xor i32 %36, 5
  store i32 %37, i32* %3, align 4
  %38 = call i8** @bf9484345249352276228(i32* %3)
  %39 = load i8*, i8** %38, align 8
  indirectbr i8* %39, [label %40, label %59]

40:                                               ; preds = %40, %34
  %41 = mul i32 %1, -2
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = mul i8 %43, 2
  %45 = mul i8 %43, 2
  %46 = add i8 2, %45
  %47 = mul i8 %44, %46
  %48 = srem i8 %47, 4
  %49 = icmp eq i8 %48, 0
  %50 = mul i8 %43, %43
  %51 = add i8 %50, %43
  %52 = srem i8 %51, 2
  %53 = icmp eq i8 %52, 0
  %54 = and i1 %49, %53
  %55 = select i1 %54, i32 2147483647, i32 2147483647
  %56 = xor i32 %55, 0
  store i32 %56, i32* %3, align 4
  %57 = call i8** @bf9484345249352276228(i32* %3)
  %58 = load i8*, i8** %57, align 8
  indirectbr i8* %58, [label %76, label %40]

59:                                               ; preds = %59, %34
  %60 = shl i32 %0, 1
  %61 = sub i32 %60, %1
  %62 = load i8*, i8** %11, align 8
  %63 = load i8, i8* %62, align 1
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %66 = mul i8 %63, %63
  %67 = add i8 %66, %63
  %68 = mul i8 %67, 3
  %69 = srem i8 %68, 2
  %70 = icmp eq i8 %69, 0
  %71 = or i1 %65, %70
  %72 = select i1 %71, i32 2147483647, i32 2147483647
  %73 = xor i32 %72, 0
  store i32 %73, i32* %3, align 4
  %74 = call i8** @bf9484345249352276228(i32* %3)
  %75 = load i8*, i8** %74, align 8
  indirectbr i8* %75, [label %76, label %59]

76:                                               ; preds = %59, %40, %19
  %77 = phi i32 [ %20, %19 ], [ %41, %40 ], [ %61, %59 ]
  ret i32 %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %4
}

define private i64 @h17192550222967064324(i64 %0) {
  %2 = alloca i32, align 4
  %3 = xor i64 2147483647, %0
  ret i64 %3
}

define private i8** @bf9484345249352276228(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h17192550222967064324(i64 %4)
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable13185948469323253732, i32 0, i64 %5
  ret i8** %6
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

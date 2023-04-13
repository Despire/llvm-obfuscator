; ModuleID = 'output/branch-function/ex4/ex4.ll'
source_filename = "input/branch-function/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsblockAddrLookupTable13251095044736237347 = private global [7 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @h13710131507787229733 to i8*), i8* bitcast (i8** (i32*)* @bf7184312460549956911 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable13251095044736237347 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i64 @h13710131507787229733(i64 2147483643)
  %5 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable13251095044736237347, i32 0, i64 %4
  store i8* blockaddress(@_Z6decideii, %86), i8** %5, align 8
  %6 = call i64 @h13710131507787229733(i64 2147483647)
  %7 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable13251095044736237347, i32 0, i64 %6
  store i8* blockaddress(@_Z6decideii, %20), i8** %7, align 8
  %8 = call i64 @h13710131507787229733(i64 2147483645)
  %9 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable13251095044736237347, i32 0, i64 %8
  store i8* blockaddress(@_Z6decideii, %21), i8** %9, align 8
  %10 = call i64 @h13710131507787229733(i64 2147483642)
  %11 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable13251095044736237347, i32 0, i64 %10
  store i8* blockaddress(@_Z6decideii, %66), i8** %11, align 8
  %12 = call i64 @h13710131507787229733(i64 2147483646)
  %13 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable13251095044736237347, i32 0, i64 %12
  store i8* blockaddress(@_Z6decideii, %102), i8** %13, align 8
  %14 = call i64 @h13710131507787229733(i64 2147483641)
  %15 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable13251095044736237347, i32 0, i64 %14
  store i8* blockaddress(@_Z6decideii, %24), i8** %15, align 8
  %16 = call i64 @h13710131507787229733(i64 2147483644)
  %17 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable13251095044736237347, i32 0, i64 %16
  store i8* blockaddress(@_Z6decideii, %45), i8** %17, align 8
  store i32 2147483645, i32* %3, align 4
  %18 = call i8** @bf7184312460549956911(i32* %3)
  %19 = load i8*, i8** %18, align 8
  indirectbr i8* %19, [label %21]

20:                                               ; preds = %21
  unreachable

21:                                               ; preds = %66, %2
  %22 = phi i32 [ %0, %2 ], [ %67, %66 ]
  %23 = phi i32 [ 0, %2 ], [ %68, %66 ]
  switch i32 %23, label %20 [
    i32 0, label %24
    i32 1, label %45
    i32 2, label %86
    i32 3, label %102
  ], !llvm.loop !10

24:                                               ; preds = %24, %21
  %25 = icmp slt i32 %22, %1
  %26 = select i1 %25, i32 %1, i32 0
  %27 = add nsw i32 %26, %22
  %28 = select i1 %25, i32 3, i32 1
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = mul i8 %30, %30
  %32 = add i8 %31, %30
  %33 = mul i8 %32, 3
  %34 = srem i8 %33, 2
  %35 = icmp eq i8 %34, 0
  %36 = mul i8 %30, %30
  %37 = add i8 %36, %30
  %38 = srem i8 %37, 2
  %39 = icmp eq i8 %38, 0
  %40 = and i1 %35, %39
  %41 = select i1 %40, i32 2147483644, i32 2147483642
  %42 = xor i32 %41, 6
  store i32 %42, i32* %3, align 4
  %43 = call i8** @bf7184312460549956911(i32* %3)
  %44 = load i8*, i8** %43, align 8
  indirectbr i8* %44, [label %66, label %24]

45:                                               ; preds = %45, %21
  %46 = icmp eq i32 %22, %1
  %47 = sub nsw i32 %1, %22
  %48 = select i1 %46, i32 %47, i32 %22
  %49 = select i1 %46, i32 3, i32 2
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = mul i8 %51, %51
  %53 = add i8 %52, %51
  %54 = mul i8 %53, 3
  %55 = srem i8 %54, 2
  %56 = icmp eq i8 %55, 0
  %57 = mul i8 %51, %51
  %58 = add i8 %57, %51
  %59 = srem i8 %58, 2
  %60 = icmp eq i8 %59, 0
  %61 = and i1 %56, %60
  %62 = select i1 %61, i32 2147483644, i32 2147483642
  %63 = xor i32 %62, 6
  store i32 %63, i32* %3, align 4
  %64 = call i8** @bf7184312460549956911(i32* %3)
  %65 = load i8*, i8** %64, align 8
  indirectbr i8* %65, [label %66, label %45]

66:                                               ; preds = %86, %66, %45, %24
  %67 = phi i32 [ %88, %86 ], [ %27, %24 ], [ %48, %45 ], [ 0, %66 ]
  %68 = phi i32 [ 3, %86 ], [ %28, %24 ], [ %49, %45 ], [ 0, %66 ]
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = mul i8 %70, 2
  %72 = mul i8 %70, 2
  %73 = add i8 2, %72
  %74 = mul i8 %71, %73
  %75 = srem i8 %74, 4
  %76 = icmp eq i8 %75, 0
  %77 = mul i8 %70, %70
  %78 = add i8 %77, %70
  %79 = srem i8 %78, 2
  %80 = icmp eq i8 %79, 0
  %81 = or i1 %76, %80
  %82 = select i1 %81, i32 2147483643, i32 2147483645
  %83 = xor i32 %82, 6
  store i32 %83, i32* %3, align 4
  %84 = call i8** @bf7184312460549956911(i32* %3)
  %85 = load i8*, i8** %84, align 8
  indirectbr i8* %85, [label %21, label %66]

86:                                               ; preds = %86, %21
  %87 = shl i32 %22, 1
  %88 = sub i32 %87, %1
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 1
  %93 = mul i8 %90, %90
  %94 = add i8 %93, %90
  %95 = srem i8 %94, 2
  %96 = icmp eq i8 %95, 0
  %97 = or i1 %92, %96
  %98 = select i1 %97, i32 2147483645, i32 2147483642
  %99 = xor i32 %98, 7
  store i32 %99, i32* %3, align 4
  %100 = call i8** @bf7184312460549956911(i32* %3)
  %101 = load i8*, i8** %100, align 8
  indirectbr i8* %101, [label %66, label %86]

102:                                              ; preds = %21
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %4
}

define private i64 @h13710131507787229733(i64 %0) {
  %2 = alloca i32, align 4
  %3 = xor i64 2147483647, %0
  ret i64 %3
}

define private i8** @bf7184312460549956911(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h13710131507787229733(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable13251095044736237347, i32 0, i64 %5
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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}

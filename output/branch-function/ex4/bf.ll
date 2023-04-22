; ModuleID = 'output/branch-function/ex4/ex4.ll'
source_filename = "input/branch-function/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsblockAddrLookupTable17044889739979023493 = private global [7 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @h11640302267615006752 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable17044889739979023493 to i8*), i8* bitcast (i8** (i32*)* @bf12656386857778698221 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i64 @h11640302267615006752(i64 186029238)
  %5 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17044889739979023493, i32 0, i64 %4
  store i8* blockaddress(@_Z6decideii, %109), i8** %5, align 8
  %6 = call i64 @h11640302267615006752(i64 186029235)
  %7 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17044889739979023493, i32 0, i64 %6
  store i8* blockaddress(@_Z6decideii, %90), i8** %7, align 8
  %8 = call i64 @h11640302267615006752(i64 186029237)
  %9 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17044889739979023493, i32 0, i64 %8
  store i8* blockaddress(@_Z6decideii, %20), i8** %9, align 8
  %10 = call i64 @h11640302267615006752(i64 186029239)
  %11 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17044889739979023493, i32 0, i64 %10
  store i8* blockaddress(@_Z6decideii, %70), i8** %11, align 8
  %12 = call i64 @h11640302267615006752(i64 186029233)
  %13 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17044889739979023493, i32 0, i64 %12
  store i8* blockaddress(@_Z6decideii, %47), i8** %13, align 8
  %14 = call i64 @h11640302267615006752(i64 186029232)
  %15 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17044889739979023493, i32 0, i64 %14
  store i8* blockaddress(@_Z6decideii, %24), i8** %15, align 8
  %16 = call i64 @h11640302267615006752(i64 186029236)
  %17 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17044889739979023493, i32 0, i64 %16
  store i8* blockaddress(@_Z6decideii, %21), i8** %17, align 8
  store i32 186029236, i32* %3, align 4
  %18 = call i8** @bf12656386857778698221(i32* %3)
  %19 = load i8*, i8** %18, align 8
  indirectbr i8* %19, [label %21]

20:                                               ; preds = %21
  unreachable

21:                                               ; preds = %70, %2
  %22 = phi i32 [ %0, %2 ], [ %71, %70 ]
  %23 = phi i32 [ 0, %2 ], [ %72, %70 ]
  switch i32 %23, label %20 [
    i32 0, label %24
    i32 1, label %47
    i32 2, label %90
    i32 3, label %109
  ], !llvm.loop !10

24:                                               ; preds = %24, %21
  %25 = icmp slt i32 %22, %1
  %26 = select i1 %25, i32 %1, i32 0
  %27 = add nsw i32 %26, %22
  %28 = select i1 %25, i32 3, i32 1
  %29 = load i8*, i8** %11, align 8
  %30 = load i8, i8* %29, align 1
  %31 = mul i8 %30, 2
  %32 = mul i8 %30, 2
  %33 = add i8 2, %32
  %34 = mul i8 %31, %33
  %35 = srem i8 %34, 4
  %36 = icmp eq i8 %35, 0
  %37 = mul i8 %30, %30
  %38 = mul i8 %37, %30
  %39 = add i8 %38, %30
  %40 = srem i8 %39, 2
  %41 = icmp eq i8 %40, 0
  %42 = and i1 %36, %41
  %43 = select i1 %42, i32 186029232, i32 186029239
  %44 = xor i32 %43, 7
  store i32 %44, i32* %3, align 4
  %45 = call i8** @bf12656386857778698221(i32* %3)
  %46 = load i8*, i8** %45, align 8
  indirectbr i8* %46, [label %70, label %24]

47:                                               ; preds = %47, %21
  %48 = icmp eq i32 %22, %1
  %49 = sub nsw i32 %1, %22
  %50 = select i1 %48, i32 %49, i32 %22
  %51 = select i1 %48, i32 3, i32 2
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = mul i8 %53, 2
  %55 = mul i8 %53, 2
  %56 = add i8 2, %55
  %57 = mul i8 %54, %56
  %58 = srem i8 %57, 4
  %59 = icmp eq i8 %58, 0
  %60 = mul i8 %53, %53
  %61 = mul i8 %60, %53
  %62 = add i8 %61, %53
  %63 = srem i8 %62, 2
  %64 = icmp eq i8 %63, 0
  %65 = and i1 %59, %64
  %66 = select i1 %65, i32 186029232, i32 186029239
  %67 = xor i32 %66, 7
  store i32 %67, i32* %3, align 4
  %68 = call i8** @bf12656386857778698221(i32* %3)
  %69 = load i8*, i8** %68, align 8
  indirectbr i8* %69, [label %70, label %47]

70:                                               ; preds = %90, %70, %47, %24
  %71 = phi i32 [ %92, %90 ], [ %27, %24 ], [ %50, %47 ], [ 0, %70 ]
  %72 = phi i32 [ 3, %90 ], [ %28, %24 ], [ %51, %47 ], [ 0, %70 ]
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = mul i8 %74, 2
  %76 = mul i8 %74, 2
  %77 = add i8 2, %76
  %78 = mul i8 %75, %77
  %79 = srem i8 %78, 4
  %80 = icmp eq i8 %79, 0
  %81 = mul i8 %74, %74
  %82 = add i8 %81, %74
  %83 = srem i8 %82, 2
  %84 = icmp eq i8 %83, 0
  %85 = or i1 %80, %84
  %86 = select i1 %85, i32 186029237, i32 186029236
  %87 = xor i32 %86, 1
  store i32 %87, i32* %3, align 4
  %88 = call i8** @bf12656386857778698221(i32* %3)
  %89 = load i8*, i8** %88, align 8
  indirectbr i8* %89, [label %21, label %70]

90:                                               ; preds = %90, %21
  %91 = shl i32 %22, 1
  %92 = sub i32 %91, %1
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = mul i8 %94, %94
  %96 = add i8 %95, %94
  %97 = mul i8 %96, 3
  %98 = srem i8 %97, 2
  %99 = icmp eq i8 %98, 0
  %100 = mul i8 %94, %94
  %101 = add i8 %100, %94
  %102 = srem i8 %101, 2
  %103 = icmp eq i8 %102, 0
  %104 = and i1 %99, %103
  %105 = select i1 %104, i32 186029237, i32 186029239
  %106 = xor i32 %105, 2
  store i32 %106, i32* %3, align 4
  %107 = call i8** @bf12656386857778698221(i32* %3)
  %108 = load i8*, i8** %107, align 8
  indirectbr i8* %108, [label %70, label %90]

109:                                              ; preds = %21
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %4
}

define private i64 @h11640302267615006752(i64 %0) {
  %2 = alloca i32, align 4
  %3 = xor i64 186029237, %0
  ret i64 %3
}

define private i8** @bf12656386857778698221(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h11640302267615006752(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable17044889739979023493, i32 0, i64 %5
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

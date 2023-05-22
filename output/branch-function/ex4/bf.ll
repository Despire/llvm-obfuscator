; ModuleID = 'output/branch-function/ex4/ex4.ll'
source_filename = "input/branch-function/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsblockAddrLookupTable734541827938236404 = private global [7 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @h10201762305506771356 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable734541827938236404 to i8*), i8* bitcast (i8** (i32*)* @bf730399419738766775 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i64 @h10201762305506771356(i64 2129061375)
  %5 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable734541827938236404, i32 0, i64 %4
  store i8* blockaddress(@_Z6decideii, %110), i8** %5, align 8
  %6 = call i64 @h10201762305506771356(i64 2129061368)
  %7 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable734541827938236404, i32 0, i64 %6
  store i8* blockaddress(@_Z6decideii, %89), i8** %7, align 8
  %8 = call i64 @h10201762305506771356(i64 2129061373)
  %9 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable734541827938236404, i32 0, i64 %8
  store i8* blockaddress(@_Z6decideii, %20), i8** %9, align 8
  %10 = call i64 @h10201762305506771356(i64 2129061370)
  %11 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable734541827938236404, i32 0, i64 %10
  store i8* blockaddress(@_Z6decideii, %46), i8** %11, align 8
  %12 = call i64 @h10201762305506771356(i64 2129061372)
  %13 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable734541827938236404, i32 0, i64 %12
  store i8* blockaddress(@_Z6decideii, %68), i8** %13, align 8
  %14 = call i64 @h10201762305506771356(i64 2129061371)
  %15 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable734541827938236404, i32 0, i64 %14
  store i8* blockaddress(@_Z6decideii, %24), i8** %15, align 8
  %16 = call i64 @h10201762305506771356(i64 2129061374)
  %17 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable734541827938236404, i32 0, i64 %16
  store i8* blockaddress(@_Z6decideii, %21), i8** %17, align 8
  store i32 2129061374, i32* %3, align 4
  %18 = call i8** @bf730399419738766775(i32* %3)
  %19 = load i8*, i8** %18, align 8
  indirectbr i8* %19, [label %21]

20:                                               ; preds = %21
  unreachable

21:                                               ; preds = %68, %2
  %22 = phi i32 [ %0, %2 ], [ %69, %68 ]
  %23 = phi i32 [ 0, %2 ], [ %70, %68 ]
  switch i32 %23, label %20 [
    i32 0, label %24
    i32 1, label %46
    i32 2, label %89
    i32 3, label %110
  ], !llvm.loop !10

24:                                               ; preds = %24, %21
  %25 = icmp slt i32 %22, %1
  %26 = select i1 %25, i32 %1, i32 0
  %27 = add nsw i32 %26, %22
  %28 = select i1 %25, i32 3, i32 1
  %29 = load i8*, i8** %15, align 8
  %30 = load i8, i8* %29, align 1
  %31 = mul i8 %30, 2
  %32 = mul i8 %30, 2
  %33 = add i8 2, %32
  %34 = mul i8 %31, %33
  %35 = srem i8 %34, 4
  %36 = icmp eq i8 %35, 0
  %37 = mul i8 %30, %30
  %38 = add i8 %37, %30
  %39 = srem i8 %38, 2
  %40 = icmp eq i8 %39, 0
  %41 = and i1 %36, %40
  %42 = select i1 %41, i32 2129061371, i32 2129061372
  %43 = xor i32 %42, 7
  store i32 %43, i32* %3, align 4
  %44 = call i8** @bf730399419738766775(i32* %3)
  %45 = load i8*, i8** %44, align 8
  indirectbr i8* %45, [label %68, label %24]

46:                                               ; preds = %46, %21
  %47 = icmp eq i32 %22, %1
  %48 = sub nsw i32 %1, %22
  %49 = select i1 %47, i32 %48, i32 %22
  %50 = select i1 %47, i32 3, i32 2
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = mul i8 %52, 2
  %54 = mul i8 %52, 2
  %55 = add i8 2, %54
  %56 = mul i8 %53, %55
  %57 = srem i8 %56, 4
  %58 = icmp eq i8 %57, 0
  %59 = mul i8 %52, %52
  %60 = add i8 %59, %52
  %61 = srem i8 %60, 2
  %62 = icmp eq i8 %61, 0
  %63 = or i1 %58, %62
  %64 = select i1 %63, i32 2129061371, i32 2129061372
  %65 = xor i32 %64, 7
  store i32 %65, i32* %3, align 4
  %66 = call i8** @bf730399419738766775(i32* %3)
  %67 = load i8*, i8** %66, align 8
  indirectbr i8* %67, [label %68, label %46]

68:                                               ; preds = %89, %68, %46, %24
  %69 = phi i32 [ %91, %89 ], [ %27, %24 ], [ %49, %46 ], [ 0, %68 ]
  %70 = phi i32 [ 3, %89 ], [ %28, %24 ], [ %50, %46 ], [ 0, %68 ]
  %71 = load i8*, i8** %17, align 8
  %72 = load i8, i8* %71, align 1
  %73 = mul i8 %72, 2
  %74 = mul i8 %72, 2
  %75 = add i8 2, %74
  %76 = mul i8 %73, %75
  %77 = srem i8 %76, 4
  %78 = icmp eq i8 %77, 0
  %79 = mul i8 %72, %72
  %80 = mul i8 %79, %72
  %81 = add i8 %80, %72
  %82 = srem i8 %81, 2
  %83 = icmp eq i8 %82, 0
  %84 = and i1 %78, %83
  %85 = select i1 %84, i32 2129061375, i32 2129061374
  %86 = xor i32 %85, 1
  store i32 %86, i32* %3, align 4
  %87 = call i8** @bf730399419738766775(i32* %3)
  %88 = load i8*, i8** %87, align 8
  indirectbr i8* %88, [label %21, label %68]

89:                                               ; preds = %89, %21
  %90 = shl i32 %22, 1
  %91 = sub i32 %90, %1
  %92 = load i8*, i8** %13, align 8
  %93 = load i8, i8* %92, align 1
  %94 = mul i8 %93, 2
  %95 = mul i8 %93, 2
  %96 = add i8 2, %95
  %97 = mul i8 %94, %96
  %98 = srem i8 %97, 4
  %99 = icmp eq i8 %98, 0
  %100 = mul i8 %93, %93
  %101 = mul i8 %100, %93
  %102 = add i8 %101, %93
  %103 = srem i8 %102, 2
  %104 = icmp eq i8 %103, 0
  %105 = and i1 %99, %104
  %106 = select i1 %105, i32 2129061371, i32 2129061372
  %107 = xor i32 %106, 7
  store i32 %107, i32* %3, align 4
  %108 = call i8** @bf730399419738766775(i32* %3)
  %109 = load i8*, i8** %108, align 8
  indirectbr i8* %109, [label %68, label %89]

110:                                              ; preds = %21
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %4
}

; Function Attrs: noinline
define internal i64 @h10201762305506771356(i64 %0) #1 {
  %2 = alloca i32, align 4
  %3 = xor i64 2129061374, %0
  ret i64 %3
}

; Function Attrs: noinline
define internal i8** @bf730399419738766775(i32* %0) #1 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h10201762305506771356(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable734541827938236404, i32 0, i64 %5
  ret i8** %6
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline }

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

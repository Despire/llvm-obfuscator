; ModuleID = 'output/branch-function/ex6/ex6.ll'
source_filename = "input/branch-function/ex6/ex6.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsblockAddrLookupTable11185694856677584670 = private global [4 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @h1690397908187187375 to i8*), i8* bitcast ([4 x i8*]* @obfsblockAddrLookupTable11185694856677584670 to i8*), i8* bitcast (i8** (i32*)* @bf17447839282186606708 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = call i64 @h1690397908187187375(i64 789016677)
  %4 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable11185694856677584670, i32 0, i64 %3
  store i8* blockaddress(@_Z8digitSumi, %42), i8** %4, align 8
  %5 = call i64 @h1690397908187187375(i64 789016678)
  %6 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable11185694856677584670, i32 0, i64 %5
  store i8* blockaddress(@_Z8digitSumi, %34), i8** %6, align 8
  %7 = call i64 @h1690397908187187375(i64 789016679)
  %8 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable11185694856677584670, i32 0, i64 %7
  store i8* blockaddress(@_Z8digitSumi, %21), i8** %8, align 8
  %9 = call i64 @h1690397908187187375(i64 789016676)
  %10 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable11185694856677584670, i32 0, i64 %9
  store i8* blockaddress(@_Z8digitSumi, %13), i8** %10, align 8
  store i32 789016676, i32* %2, align 4
  %11 = call i8** @bf17447839282186606708(i32* %2)
  %12 = load i8*, i8** %11, align 8
  indirectbr i8* %12, [label %13]

13:                                               ; preds = %34, %1
  %14 = phi i32 [ %0, %1 ], [ %35, %34 ]
  %15 = phi i32 [ 0, %1 ], [ %36, %34 ]
  %16 = icmp sgt i32 %14, 0
  %17 = select i1 %16, i32 789016678, i32 789016679
  %18 = xor i32 %17, 1
  store i32 %18, i32* %2, align 4
  %19 = call i8** @bf17447839282186606708(i32* %2)
  %20 = load i8*, i8** %19, align 8
  indirectbr i8* %20, [label %21, label %34]

21:                                               ; preds = %21, %13
  %22 = phi i32 [ %28, %21 ], [ %15, %13 ]
  %23 = phi i32 [ %25, %21 ], [ %14, %13 ]
  %24 = freeze i32 %23
  %25 = sdiv i32 %24, 10
  %26 = mul i32 %25, 10
  %27 = sub i32 %24, %26
  %28 = add nsw i32 %22, %27
  %29 = icmp sgt i32 %23, 9
  %30 = select i1 %29, i32 789016678, i32 789016679
  %31 = xor i32 %30, 1
  store i32 %31, i32* %2, align 4
  %32 = call i8** @bf17447839282186606708(i32* %2)
  %33 = load i8*, i8** %32, align 8
  indirectbr i8* %33, [label %21, label %34]

34:                                               ; preds = %21, %13
  %35 = phi i32 [ %14, %13 ], [ %25, %21 ]
  %36 = phi i32 [ %15, %13 ], [ %28, %21 ]
  %37 = icmp eq i32 %35, 0
  %38 = select i1 %37, i32 789016676, i32 789016677
  %39 = xor i32 %38, 1
  store i32 %39, i32* %2, align 4
  %40 = call i8** @bf17447839282186606708(i32* %2)
  %41 = load i8*, i8** %40, align 8
  indirectbr i8* %41, [label %42, label %13]

42:                                               ; preds = %34
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i32 @_Z8digitSumi(i32 15)
  %5 = call i32 @_Z8digitSumi(i32 25)
  %6 = add nsw i32 %5, %4
  ret i32 %6
}

; Function Attrs: noinline
define internal i64 @h1690397908187187375(i64 %0) #1 {
  %2 = alloca i32, align 4
  %3 = xor i64 789016678, %0
  ret i64 %3
}

; Function Attrs: noinline
define internal i8** @bf17447839282186606708(i32* %0) #1 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h1690397908187187375(i64 %4)
  %6 = getelementptr inbounds [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable11185694856677584670, i32 0, i64 %5
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

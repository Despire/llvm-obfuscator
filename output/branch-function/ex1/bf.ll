; ModuleID = 'output/branch-function/ex1/ex1.ll'
source_filename = "input/branch-function/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsblockAddrLookupTable7513842475941600093 = private global [2 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @h18269584627227525413 to i8*), i8* bitcast (i8** (i32*)* @bf6985348808832335078 to i8*), i8* bitcast ([2 x i8*]* @obfsblockAddrLookupTable7513842475941600093 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = call i64 @h18269584627227525413(i64 2147483647)
  %4 = getelementptr [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable7513842475941600093, i32 0, i64 %3
  store i8* blockaddress(@_Z8digitSumi, %25), i8** %4, align 8
  %5 = call i64 @h18269584627227525413(i64 2147483646)
  %6 = getelementptr [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable7513842475941600093, i32 0, i64 %5
  store i8* blockaddress(@_Z8digitSumi, %12), i8** %6, align 8
  %7 = icmp sgt i32 %0, 0
  %8 = select i1 %7, i32 2147483647, i32 2147483646
  %9 = xor i32 %8, 1
  store i32 %9, i32* %2, align 4
  %10 = call i8** @bf6985348808832335078(i32* %2)
  %11 = load i8*, i8** %10, align 8
  indirectbr i8* %11, [label %12, label %25]

12:                                               ; preds = %12, %1
  %13 = phi i32 [ %19, %12 ], [ 0, %1 ]
  %14 = phi i32 [ %16, %12 ], [ %0, %1 ]
  %15 = freeze i32 %14
  %16 = sdiv i32 %15, 10
  %17 = mul i32 %16, 10
  %18 = sub i32 %15, %17
  %19 = add nsw i32 %13, %18
  %20 = icmp sgt i32 %14, 9
  %21 = select i1 %20, i32 2147483647, i32 2147483646
  %22 = xor i32 %21, 1
  store i32 %22, i32* %2, align 4
  %23 = call i8** @bf6985348808832335078(i32* %2)
  %24 = load i8*, i8** %23, align 8
  indirectbr i8* %24, [label %12, label %25]

25:                                               ; preds = %12, %1
  %26 = phi i32 [ 0, %1 ], [ %19, %12 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i32 @_Z8digitSumi(i32 15)
  %5 = call i32 @_Z8digitSumi(i32 25)
  %6 = add nsw i32 %5, %4
  ret i32 %6
}

define private i64 @h18269584627227525413(i64 %0) {
  %2 = alloca i32, align 4
  %3 = xor i64 2147483647, %0
  ret i64 %3
}

define private i8** @bf6985348808832335078(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h18269584627227525413(i64 %4)
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable7513842475941600093, i32 0, i64 %5
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

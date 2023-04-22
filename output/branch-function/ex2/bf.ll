; ModuleID = 'output/branch-function/ex2/ex2.ll'
source_filename = "input/branch-function/ex2/ex2.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsblockAddrLookupTable9915862013206114549 = private global [2 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @h12389072622413360119 to i8*), i8* bitcast ([2 x i8*]* @obfsblockAddrLookupTable9915862013206114549 to i8*), i8* bitcast (i8** (i32*)* @bf2164899037384068363 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = call i64 @h12389072622413360119(i64 1137586048)
  %4 = getelementptr [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable9915862013206114549, i32 0, i64 %3
  store i8* blockaddress(@_Z8digitSumi, %20), i8** %4, align 8
  %5 = call i64 @h12389072622413360119(i64 1137586049)
  %6 = getelementptr [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable9915862013206114549, i32 0, i64 %5
  store i8* blockaddress(@_Z8digitSumi, %9), i8** %6, align 8
  store i32 1137586049, i32* %2, align 4
  %7 = call i8** @bf2164899037384068363(i32* %2)
  %8 = load i8*, i8** %7, align 8
  indirectbr i8* %8, [label %9]

9:                                                ; preds = %9, %1
  %10 = phi i32 [ %0, %1 ], [ %13, %9 ]
  %11 = phi i32 [ 0, %1 ], [ %12, %9 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = sdiv i32 %10, 10
  %14 = add i32 %10, 9
  %15 = icmp ult i32 %14, 19
  %16 = select i1 %15, i32 1137586049, i32 1137586048
  %17 = xor i32 %16, 1
  store i32 %17, i32* %2, align 4
  %18 = call i8** @bf2164899037384068363(i32* %2)
  %19 = load i8*, i8** %18, align 8
  indirectbr i8* %19, [label %20, label %9]

20:                                               ; preds = %9
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i32 @_Z8digitSumi(i32 15)
  %5 = call i32 @_Z8digitSumi(i32 25)
  %6 = add nsw i32 %5, %4
  ret i32 %6
}

define private i64 @h12389072622413360119(i64 %0) {
  %2 = alloca i32, align 4
  %3 = xor i64 1137586049, %0
  ret i64 %3
}

define private i8** @bf2164899037384068363(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h12389072622413360119(i64 %4)
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* @obfsblockAddrLookupTable9915862013206114549, i32 0, i64 %5
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

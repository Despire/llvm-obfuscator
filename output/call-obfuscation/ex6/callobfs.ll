; ModuleID = 'output/call-obfuscation/ex6/ex6.ll'
source_filename = "input/call-obfuscation/ex6/ex6.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsfuncAddrLookupTable6090039098517233741 = private global [2 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @m16624303534586926637 to i8*), i8* bitcast ([2 x i8*]* @obfsfuncAddrLookupTable6090039098517233741 to i8*), i8* bitcast (i8** (i64*)* @lk8304061383374829406 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi i32 [ %0, %1 ], [ %16, %15 ]
  %4 = phi i32 [ 0, %1 ], [ %17, %15 ]
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %13, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %10, %6 ], [ %3, %2 ]
  %9 = freeze i32 %8
  %10 = sdiv i32 %9, 10
  %11 = mul i32 %10, 10
  %12 = sub i32 %9, %11
  %13 = add nsw i32 %7, %12
  %14 = icmp sgt i32 %8, 9
  br i1 %14, label %6, label %15, !llvm.loop !10

15:                                               ; preds = %6, %2
  %16 = phi i32 [ %3, %2 ], [ %10, %6 ]
  %17 = phi i32 [ %4, %2 ], [ %13, %6 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %2, !llvm.loop !13

19:                                               ; preds = %15
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = call i64 @m16624303534586926637(i64 -7562281865176535983)
  %5 = getelementptr [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable6090039098517233741, i32 0, i64 %4
  store i8* bitcast (i32 (i32)* @_Z8digitSumi to i8*), i8** %5, align 8
  %6 = call i64 @m16624303534586926637(i64 -7562281865176535984)
  %7 = getelementptr [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable6090039098517233741, i32 0, i64 %6
  store i8* bitcast (i32 (i32)* @_Z8digitSumi to i8*), i8** %7, align 8
  store i64 -7562281865176535983, i64* %3, align 8
  %8 = call i8** @lk8304061383374829406(i64* %3)
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to i32 (i32)*
  %11 = call i32 %10(i32 15)
  store i64 -7562281865176535984, i64* %3, align 8
  %12 = call i8** @lk8304061383374829406(i64* %3)
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to i32 (i32)*
  %15 = call i32 %14(i32 25)
  %16 = add nsw i32 %15, %11
  ret i32 %16
}

define private i64 @m16624303534586926637(i64 %0) {
  %2 = xor i64 -7562281865176535984, %0
  ret i64 %2
}

define private i8** @lk8304061383374829406(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m16624303534586926637(i64 %2)
  %4 = getelementptr inbounds [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable6090039098517233741, i32 0, i64 %3
  ret i8** %4
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
!13 = distinct !{!13, !11, !12}

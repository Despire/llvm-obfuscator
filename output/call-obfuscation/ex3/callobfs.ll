; ModuleID = 'output/call-obfuscation/ex3/ex3.ll'
source_filename = "input/call-obfuscation/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsfuncAddrLookupTable576876653801235617 = private global [1 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @m2821454595056303745 to i8*), i8* bitcast ([1 x i8*]* @obfsfuncAddrLookupTable576876653801235617 to i8*), i8* bitcast (i8** (i64*)* @lk14136087200926583035 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add nsw i32 %1, %0
  br label %13

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, %1
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = mul i32 %1, -2
  br label %13

10:                                               ; preds = %6
  %11 = shl i32 %0, 1
  %12 = sub i32 %11, %1
  br label %13

13:                                               ; preds = %10, %8, %4
  %14 = phi i32 [ %5, %4 ], [ %9, %8 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = call i64 @m2821454595056303745(i64 132921644415563381)
  %5 = getelementptr [1 x i8*], [1 x i8*]* @obfsfuncAddrLookupTable576876653801235617, i32 0, i64 %4
  store i8* bitcast (i32 (i32, i32)* @_Z6decideii to i8*), i8** %5, align 8
  store i64 132921644415563381, i64* %3, align 8
  %6 = call i8** @lk14136087200926583035(i64* %3)
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast i8* %7 to i32 (i32, i32)*
  %9 = call i32 %8(i32 15, i32 25)
  ret i32 %9
}

define private i64 @m2821454595056303745(i64 %0) {
  %2 = xor i64 132921644415563381, %0
  ret i64 %2
}

define private i8** @lk14136087200926583035(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m2821454595056303745(i64 %2)
  %4 = getelementptr inbounds [1 x i8*], [1 x i8*]* @obfsfuncAddrLookupTable576876653801235617, i32 0, i64 %3
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

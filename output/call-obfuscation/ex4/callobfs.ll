; ModuleID = 'output/call-obfuscation/ex4/ex4.ll'
source_filename = "input/call-obfuscation/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsfuncAddrLookupTable9158615571402766931 = private global [1 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @m5196880132477644290 to i8*), i8* bitcast ([1 x i8*]* @obfsfuncAddrLookupTable9158615571402766931 to i8*), i8* bitcast (i8** (i64*)* @lk15152110804991128255 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  br label %4

3:                                                ; preds = %4
  unreachable

4:                                                ; preds = %17, %2
  %5 = phi i32 [ %0, %2 ], [ %18, %17 ]
  %6 = phi i32 [ 0, %2 ], [ %19, %17 ]
  switch i32 %6, label %3 [
    i32 0, label %7
    i32 1, label %12
    i32 2, label %20
    i32 3, label %23
  ], !llvm.loop !10

7:                                                ; preds = %4
  %8 = icmp slt i32 %5, %1
  %9 = select i1 %8, i32 %1, i32 0
  %10 = add nsw i32 %9, %5
  %11 = select i1 %8, i32 3, i32 1
  br label %17

12:                                               ; preds = %4
  %13 = icmp eq i32 %5, %1
  %14 = sub nsw i32 %1, %5
  %15 = select i1 %13, i32 %14, i32 %5
  %16 = select i1 %13, i32 3, i32 2
  br label %17

17:                                               ; preds = %20, %12, %7
  %18 = phi i32 [ %22, %20 ], [ %10, %7 ], [ %15, %12 ]
  %19 = phi i32 [ 3, %20 ], [ %11, %7 ], [ %16, %12 ]
  br label %4, !llvm.loop !10

20:                                               ; preds = %4
  %21 = shl i32 %5, 1
  %22 = sub i32 %21, %1
  br label %17

23:                                               ; preds = %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = call i64 @m5196880132477644290(i64 2801612768248592507)
  %5 = getelementptr [1 x i8*], [1 x i8*]* @obfsfuncAddrLookupTable9158615571402766931, i32 0, i64 %4
  store i8* bitcast (i32 (i32, i32)* @_Z6decideii to i8*), i8** %5, align 8
  store i64 2801612768248592507, i64* %3, align 8
  %6 = call i8** @lk15152110804991128255(i64* %3)
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast i8* %7 to i32 (i32, i32)*
  %9 = call i32 %8(i32 15, i32 25)
  ret i32 %9
}

define private i64 @m5196880132477644290(i64 %0) {
  %2 = xor i64 2801612768248592507, %0
  ret i64 %2
}

define private i8** @lk15152110804991128255(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m5196880132477644290(i64 %2)
  %4 = getelementptr inbounds [1 x i8*], [1 x i8*]* @obfsfuncAddrLookupTable9158615571402766931, i32 0, i64 %3
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

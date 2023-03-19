; ModuleID = 'output/opaque-predicates/ex3/ex3.ll'
source_filename = "input/opaque-predicates/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, %1
  %4 = srem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %6
  br i1 %3, label %9, label %24

9:                                                ; preds = %8
  %10 = add nsw i32 %1, %0
  %11 = icmp sge i1 %5, %5
  %12 = icmp sle i1 %5, %5
  %13 = xor i1 %12, true
  %14 = xor i1 %11, %13
  %15 = and i1 %14, %11
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = sdiv i32 645734148, -2037789133
  %18 = sub i32 -2000693921, -68462025
  %19 = sub i32 -1296124601, 1328038960
  %20 = sub i32 1208819680, 160272319
  %21 = sdiv i32 1135748781, 1872078820
  %22 = sdiv i32 765217076, -967788661
  br label %23

23:                                               ; preds = %9, %16
  br label %50

24:                                               ; preds = %8
  %25 = srem i32 %1, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = icmp eq i32 %0, %1
  br label %31

29:                                               ; preds = %24
  %30 = icmp eq i32 %0, %1
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i1 [ %30, %29 ], [ %28, %27 ]
  br i1 %32, label %33, label %42

33:                                               ; preds = %31
  %34 = srem i1 %3, false
  %35 = icmp eq i1 %34, false
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = mul i32 %1, -2
  br label %40

38:                                               ; preds = %33
  %39 = mul i32 %1, -2
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ]
  br label %50

42:                                               ; preds = %31
  %43 = shl i32 %0, 1
  %44 = sub i32 %43, %1
  %45 = srem i1 %3, false
  %46 = icmp eq i1 %45, false
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %40, %23
  %51 = phi i32 [ %10, %23 ], [ %41, %40 ], [ %44, %49 ]
  %52 = icmp eq i32 %1, 0
  %53 = icmp ne i32 %1, 0
  %54 = xor i1 %53, true
  %55 = and i1 %52, %54
  %56 = add i1 %55, %53
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = sub i32 -1329477330, -440677040
  %59 = sub i32 -1320661484, -1975387514
  %60 = sub i32 101674409, 211682096
  %61 = mul i32 -839431564, 787135270
  %62 = add i32 -213458120, 410716412
  %63 = mul i32 562717276, 1087915771
  %64 = sdiv i32 1736462242, 44172761
  %65 = add i32 -492013009, 1748027342
  br label %66

66:                                               ; preds = %50, %57
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  %4 = icmp eq i32 %0, 0
  %5 = icmp ne i32 %0, 0
  %6 = and i1 %4, %5
  %7 = xor i1 %4, %5
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = sub i32 316516332, -381655424
  %11 = sub i32 2106361901, 1951294200
  %12 = mul i32 1148722652, -798905619
  %13 = sub i32 393760847, 679316275
  %14 = sdiv i32 904153524, -1680673530
  %15 = sdiv i32 -1121108893, 1181261839
  %16 = sub i32 -297482968, 448657975
  %17 = mul i32 1589851762, 436504328
  %18 = sdiv i32 31304136, 9280666
  %19 = sdiv i32 2050554369, 722044045
  br label %20

20:                                               ; preds = %2, %9
  ret i32 %3
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

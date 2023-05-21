; ModuleID = 'output/jump-into-loop/ex4/ex4.ll'
source_filename = "input/jump-into-loop/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = mul i32 %0, 2
  %4 = mul i32 %0, 2
  %5 = add i32 2, %4
  %6 = mul i32 %3, %5
  %7 = srem i32 %6, 4
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %0, %0
  %10 = add i32 %9, %0
  %11 = srem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %8, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  br label %17

16:                                               ; preds = %17
  unreachable

17:                                               ; preds = %46, %30, %15
  %18 = phi i32 [ %0, %15 ], [ %31, %30 ], [ 0, %46 ]
  %19 = phi i32 [ 0, %15 ], [ %32, %30 ], [ 0, %46 ]
  switch i32 %19, label %16 [
    i32 0, label %20
    i32 1, label %25
    i32 2, label %33
    i32 3, label %81
  ], !llvm.loop !10

20:                                               ; preds = %17
  %21 = icmp slt i32 %18, %1
  %22 = select i1 %21, i32 %1, i32 0
  %23 = add nsw i32 %22, %18
  %24 = select i1 %21, i32 3, i32 1
  br label %30

25:                                               ; preds = %17
  %26 = icmp eq i32 %18, %1
  %27 = sub nsw i32 %1, %18
  %28 = select i1 %26, i32 %27, i32 %18
  %29 = select i1 %26, i32 3, i32 2
  br label %30

30:                                               ; preds = %78, %25, %20
  %31 = phi i32 [ %80, %78 ], [ %23, %20 ], [ %28, %25 ]
  %32 = phi i32 [ 3, %78 ], [ %24, %20 ], [ %29, %25 ]
  br label %17, !llvm.loop !10

33:                                               ; preds = %17
  %34 = mul i32 %18, 2
  %35 = mul i32 %18, 2
  %36 = add i32 2, %35
  %37 = mul i32 %34, %36
  %38 = srem i32 %37, 4
  %39 = icmp eq i32 %38, 0
  %40 = mul i32 %18, %18
  %41 = mul i32 %40, %18
  %42 = add i32 %41, %18
  %43 = srem i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = and i1 %39, %44
  br i1 %45, label %78, label %46

46:                                               ; preds = %14, %46, %33
  %47 = add i32 7, 94
  %48 = mul i32 12, 46
  %49 = sub i32 122, 38
  %50 = mul i32 64, 119
  %51 = add i32 7, 125
  %52 = add i32 90, 107
  %53 = sdiv i32 1, 63
  %54 = mul i32 36, 126
  %55 = sub i32 27, 76
  %56 = sdiv i32 %53, 15
  %57 = add i32 %47, 85
  %58 = add i32 %55, 115
  %59 = add i32 %55, 58
  %60 = sub i32 %50, 58
  %61 = sdiv i32 %49, 44
  %62 = add i32 0, %56
  %63 = add i32 %62, %57
  %64 = add i32 %63, %58
  %65 = add i32 %64, %59
  %66 = add i32 %65, %60
  %67 = add i32 %66, %61
  %68 = mul i32 %67, %67
  %69 = add i32 %68, %67
  %70 = mul i32 %69, 3
  %71 = srem i32 %70, 2
  %72 = icmp eq i32 %71, 0
  %73 = mul i32 %67, %67
  %74 = add i32 %73, %67
  %75 = srem i32 %74, 2
  %76 = icmp eq i32 %75, 0
  %77 = and i1 %72, %76
  br i1 %77, label %17, label %46

78:                                               ; preds = %33
  %79 = shl i32 %18, 1
  %80 = sub i32 %79, %1
  br label %30

81:                                               ; preds = %17
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}

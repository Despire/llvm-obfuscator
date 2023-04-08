; ModuleID = 'output/opaque-predicates/ex1/ex1.ll'
source_filename = "input/opaque-predicates/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %48, %1
  %3 = phi i32 [ %0, %1 ], [ %49, %48 ]
  %4 = phi i32 [ 0, %1 ], [ %50, %48 ]
  %5 = icmp sgt i32 %3, 0
  %6 = mul i32 %0, 2
  %7 = mul i32 %0, 2
  %8 = add i32 2, %7
  %9 = mul i32 %6, %8
  %10 = srem i32 %9, 4
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %0, %0
  %13 = mul i32 %12, %0
  %14 = add i32 %13, %0
  %15 = srem i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = xor i1 %11, true
  %18 = or i1 %17, %16
  %19 = xor i1 %11, true
  %20 = sub i1 %18, %19
  %21 = xor i1 %20, true
  %22 = xor i1 %5, %21
  %23 = and i1 %22, %5
  br i1 %23, label %24, label %48

24:                                               ; preds = %24, %2
  %25 = phi i32 [ %31, %24 ], [ %4, %2 ]
  %26 = phi i32 [ %28, %24 ], [ %3, %2 ]
  %27 = freeze i32 %26
  %28 = sdiv i32 %27, 10
  %29 = mul i32 %28, 10
  %30 = sub i32 %27, %29
  %31 = add nsw i32 %25, %30
  %32 = icmp sgt i32 %26, 9
  %33 = and i32 %3, 1
  %34 = icmp eq i32 %33, 0
  %35 = mul i32 %3, %3
  %36 = add i32 %35, %3
  %37 = mul i32 %36, 3
  %38 = srem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = xor i1 %39, true
  %41 = and i1 %34, %40
  %42 = add i1 %41, %39
  %43 = xor i1 %32, true
  %44 = xor i1 %42, true
  %45 = or i1 %43, %44
  %46 = xor i1 %45, true
  %47 = and i1 %46, true
  br i1 %47, label %24, label %48, !llvm.loop !10

48:                                               ; preds = %24, %2
  %49 = phi i32 [ %3, %2 ], [ %28, %24 ]
  %50 = phi i32 [ %4, %2 ], [ %31, %24 ]
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %2, !llvm.loop !13

52:                                               ; preds = %48
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = call i32 @_Z8digitSumi(i32 25)
  %5 = add nsw i32 %4, %3
  ret i32 %5
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

; ModuleID = 'output/opaque-predicates/ex1/ex1.ll'
source_filename = "input/opaque-predicates/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %60, %1
  %3 = phi i32 [ %0, %1 ], [ %61, %60 ]
  %4 = phi i32 [ 0, %1 ], [ %62, %60 ]
  %5 = icmp sgt i32 %3, 0
  %6 = mul i32 %0, 2
  %7 = mul i32 %0, 2
  %8 = add i32 2, %7
  %9 = mul i32 %6, %8
  %10 = srem i32 %9, 4
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %0, %0
  %13 = add i32 %12, %0
  %14 = srem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %11, %16
  %18 = and i1 %17, %11
  %19 = xor i1 %18, true
  %20 = xor i1 %5, %19
  %21 = and i1 %20, %5
  br i1 %21, label %22, label %60

22:                                               ; preds = %22, %2
  %23 = phi i32 [ %29, %22 ], [ %4, %2 ]
  %24 = phi i32 [ %26, %22 ], [ %3, %2 ]
  %25 = freeze i32 %24
  %26 = sdiv i32 %25, 10
  %27 = mul i32 %26, 10
  %28 = sub i32 %25, %27
  %29 = add nsw i32 %23, %28
  %30 = icmp sgt i32 %24, 9
  %31 = mul i32 %4, 2
  %32 = mul i32 %4, 2
  %33 = add i32 2, %32
  %34 = mul i32 %31, %33
  %35 = srem i32 %34, 4
  %36 = icmp eq i32 %35, 0
  %37 = mul i32 %4, %4
  %38 = add i32 %37, %4
  %39 = srem i32 %38, 2
  %40 = icmp eq i32 %39, 0
  %41 = xor i1 %36, true
  %42 = and i1 %41, false
  %43 = and i1 %36, true
  %44 = or i1 %42, %43
  %45 = xor i1 %40, true
  %46 = and i1 %45, false
  %47 = and i1 %40, true
  %48 = or i1 %46, %47
  %49 = xor i1 %44, %48
  %50 = xor i1 %36, true
  %51 = xor i1 %40, true
  %52 = or i1 %50, %51
  %53 = xor i1 %52, true
  %54 = and i1 %53, true
  %55 = or i1 %49, %54
  %56 = xor i1 %30, true
  %57 = or i1 %56, %55
  %58 = xor i1 %30, true
  %59 = sub i1 %57, %58
  br i1 %59, label %22, label %60, !llvm.loop !10

60:                                               ; preds = %22, %2
  %61 = phi i32 [ %3, %2 ], [ %26, %22 ]
  %62 = phi i32 [ %4, %2 ], [ %29, %22 ]
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %2, !llvm.loop !13

64:                                               ; preds = %60
  ret i32 %62
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

; ModuleID = 'output/substitution/additions/8bit-example/8bit-example.ll'
source_filename = "input/substitution/additions/8bit-example/8bit-example.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define signext i8 @_Z8digitSuma(i8 signext %0) local_unnamed_addr #0 {
  %2 = icmp sgt i8 %0, 0
  br i1 %2, label %3, label %18

3:                                                ; preds = %3, %1
  %4 = phi i8 [ %16, %3 ], [ %0, %1 ]
  %5 = phi i8 [ %15, %3 ], [ 0, %1 ]
  %6 = sext i8 %4 to i32
  %7 = freeze i32 %6
  %8 = sdiv i32 %7, 10
  %9 = mul i32 %8, 10
  %10 = sub i32 %7, -278370236
  %11 = sub i32 %10, %9
  %12 = add i32 %11, -278370236
  %13 = trunc i32 %12 to i8
  %14 = sub i8 0, %13
  %15 = sub i8 %5, %14
  %16 = trunc i32 %8 to i8
  %17 = icmp sgt i8 %16, 0
  br i1 %17, label %3, label %18, !llvm.loop !10

18:                                               ; preds = %3, %1
  %19 = phi i8 [ 0, %1 ], [ %15, %3 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main() local_unnamed_addr #0 {
  %1 = call signext i8 @_Z8digitSuma(i8 signext 15)
  %2 = call signext i8 @_Z8digitSuma(i8 signext 30)
  %3 = call signext i8 @_Z8digitSuma(i8 signext 45)
  %4 = call signext i8 @_Z8digitSuma(i8 signext 10)
  %5 = call signext i8 @_Z8digitSuma(i8 signext %1)
  %6 = sext i8 %5 to i32
  %7 = call signext i8 @_Z8digitSuma(i8 signext %2)
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, %6
  %10 = or i32 %8, %6
  %11 = add i32 %9, %10
  %12 = call signext i8 @_Z8digitSuma(i8 signext %3)
  %13 = sext i8 %12 to i32
  %14 = sub i32 0, %13
  %15 = sub i32 %11, %14
  %16 = call signext i8 @_Z8digitSuma(i8 signext %4)
  %17 = sext i8 %16 to i32
  %18 = sub i32 %15, 738106558
  %19 = add i32 %18, %17
  %20 = add i32 %19, 738106558
  ret i32 %20
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

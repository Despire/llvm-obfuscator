; ModuleID = 'output/substitution/additions/8bit-example/8bit-example.ll'
source_filename = "input/substitution/additions/8bit-example/8bit-example.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define signext i8 @_Z10add_valuesaaaa(i8 signext %0, i8 signext %1, i8 signext %2, i8 signext %3) local_unnamed_addr #0 {
  %5 = xor i8 %1, %0
  %6 = and i8 %1, %0
  %7 = mul i8 2, %6
  %8 = add i8 %5, %7
  %9 = mul i8 39, %8
  %10 = add i8 23, %9
  %11 = mul i8 -105, %10
  %12 = add i8 111, %11
  %13 = sub i8 %12, 72
  %14 = add i8 %13, %2
  %15 = add i8 %14, 72
  %16 = sub i8 %15, 71
  %17 = add i8 %16, %3
  %18 = add i8 %17, 71
  ret i8 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main() local_unnamed_addr #0 {
  %1 = call signext i8 @_Z10add_valuesaaaa(i8 signext 15, i8 signext 30, i8 signext 45, i8 signext 10)
  %2 = sext i8 %1 to i32
  ret i32 %2
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

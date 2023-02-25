; ModuleID = 'output/substitution/or/ex1/ex1.ll'
source_filename = "input/substitution/or/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z10xor_valuesiiii(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = xor i32 %1, -1
  %6 = and i32 %5, -163482149
  %7 = and i32 %1, 163482148
  %8 = or i32 %6, %7
  %9 = xor i32 %0, -1
  %10 = and i32 %9, -163482149
  %11 = and i32 %0, 163482148
  %12 = or i32 %10, %11
  %13 = xor i32 %8, %12
  %14 = xor i32 %1, -1
  %15 = xor i32 %0, -1
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %17, -1
  %19 = or i32 %13, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %20, -621127148
  %22 = and i32 %19, 621127147
  %23 = or i32 %21, %22
  %24 = xor i32 %2, -1
  %25 = and i32 %24, -621127148
  %26 = and i32 %2, 621127147
  %27 = or i32 %25, %26
  %28 = xor i32 %23, %27
  %29 = xor i32 %19, -1
  %30 = xor i32 %2, -1
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %32, -1
  %34 = or i32 %28, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %35, -321938434
  %37 = and i32 %34, 321938433
  %38 = or i32 %36, %37
  %39 = xor i32 %3, -1
  %40 = and i32 %39, -321938434
  %41 = and i32 %3, 321938433
  %42 = or i32 %40, %41
  %43 = xor i32 %38, %42
  %44 = xor i32 %34, -1
  %45 = xor i32 %3, -1
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %47, -1
  %49 = or i32 %43, %48
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main() local_unnamed_addr #0 {
  %1 = call i32 @_Z10xor_valuesiiii(i32 1, i32 2, i32 3, i32 4)
  ret i32 %1
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

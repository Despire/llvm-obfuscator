; ModuleID = 'input/substitution/subtractions/ex1/ex1.cpp'
source_filename = "input/substitution/subtractions/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @_Z10sub_valuesiiii(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = sub i32 %3, %2
  %6 = shl i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @_Z7absDiffii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = sub nsw i32 %0, %1
  %4 = call i32 @llvm.abs.i32(i32 %3, i1 true)
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @main() local_unnamed_addr #0 {
  %1 = call i32 @_Z7absDiffii(i32 15, i32 51)
  %2 = call i32 @_Z7absDiffii(i32 30, i32 35)
  %3 = call i32 @_Z7absDiffii(i32 45, i32 54)
  %4 = call i32 @_Z7absDiffii(i32 10, i32 15)
  %5 = call i32 @_Z10sub_valuesiiii(i32 %1, i32 %2, i32 %3, i32 %4)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Apple clang version 14.0.0 (clang-1400.0.29.202)"}

; ModuleID = 'output/opaque-predicates/ex2/ex2.ll'
source_filename = "input/opaque-predicates/ex2/ex2.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z4testv() local_unnamed_addr #0 {
  %1 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  call void @_Z4testv()
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ %0, %1 ], [ %6, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %5, %2 ]
  %5 = add nuw nsw i32 %4, 1
  %6 = sdiv i32 %3, 10
  %7 = add i32 %3, 9
  %8 = icmp ult i32 %7, 19
  %9 = and i32 %0, 1
  %10 = icmp eq i32 %9, 0
  %11 = mul i32 %0, %0
  %12 = add i32 %11, %0
  %13 = mul i32 %12, 3
  %14 = srem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = xor i1 %10, true
  %17 = and i1 %16, true
  %18 = and i1 %10, false
  %19 = or i1 %17, %18
  %20 = xor i1 %15, true
  %21 = and i1 %20, true
  %22 = and i1 %15, false
  %23 = or i1 %21, %22
  %24 = xor i1 %19, %23
  %25 = xor i1 %10, true
  %26 = xor i1 %15, true
  %27 = or i1 %25, %26
  %28 = xor i1 %27, true
  %29 = and i1 %28, true
  %30 = or i1 %24, %29
  %31 = xor i1 %8, true
  %32 = xor i1 %30, true
  %33 = or i1 %31, %32
  %34 = xor i1 %33, true
  %35 = and i1 %34, true
  br i1 %35, label %36, label %2, !llvm.loop !10

36:                                               ; preds = %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #2 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = call i32 @_Z8digitSumi(i32 25)
  %5 = add nsw i32 %4, %3
  ret i32 %5
}

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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

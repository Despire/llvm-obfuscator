; ModuleID = 'output/jump-into-loop/ex2/ex2.ll'
source_filename = "input/jump-into-loop/ex2/ex2.cpp"
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
  %2 = add i32 %0, 1
  %3 = mul i32 3, %2
  %4 = add i32 %0, 2
  %5 = mul i32 %3, %4
  %6 = srem i32 %5, 6
  %7 = icmp eq i32 %6, 0
  %8 = mul i32 %0, %0
  %9 = add i32 %8, %0
  %10 = srem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = and i1 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %13, %15, %14
  %16 = phi i32 [ %0, %14 ], [ %19, %15 ], [ 0, %13 ]
  %17 = phi i32 [ 0, %14 ], [ %18, %15 ], [ 0, %13 ]
  %18 = add nuw nsw i32 %17, 1
  %19 = sdiv i32 %16, 10
  %20 = add i32 %16, 9
  %21 = icmp ult i32 %20, 19
  br i1 %21, label %22, label %15, !llvm.loop !10

22:                                               ; preds = %15
  ret i32 %18
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

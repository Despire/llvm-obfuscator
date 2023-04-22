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
  %2 = add i32 %0, 9
  %3 = icmp ult i32 %2, 19
  br i1 %3, label %35, label %.preheader

.preheader:                                       ; preds = %1
  %4 = mul i32 %0, %0
  %5 = add i32 %4, %0
  %6 = mul i32 %5, 3
  %7 = srem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %0, %0
  %10 = add i32 %9, %0
  %11 = srem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = and i1 %8, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %.preheader
  br label %27

15:                                               ; preds = %.preheader
  br label %16

16:                                               ; preds = %15, %27
  %17 = phi i32 [ %32, %27 ], [ 1, %15 ]
  %18 = phi i32 [ %31, %27 ], [ %0, %15 ]
  %19 = phi i32 [ %28, %27 ], [ 0, %15 ]
  %20 = sdiv i32 %18, 10
  %21 = add i32 %18, 19
  %22 = icmp ult i32 %21, 10
  %23 = select i1 %22, i32 %17, i32 %19
  %24 = select i1 %22, i32 1, i32 %19
  %25 = add nsw i32 %24, %20
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %.loopexit, label %27

27:                                               ; preds = %14, %16
  %28 = phi i32 [ %23, %16 ], [ 0, %14 ]
  %29 = phi i32 [ %25, %16 ], [ 0, %14 ]
  %30 = shl nsw i32 %28, 1
  %31 = add nsw i32 %29, %30
  %32 = add nsw i32 %28, 1
  %33 = add i32 %31, 9
  %34 = icmp ult i32 %33, 19
  br i1 %34, label %.loopexit, label %16, !llvm.loop !10

.loopexit:                                        ; preds = %16, %27
  %.ph = phi i32 [ %23, %16 ], [ %32, %27 ]
  br label %35

35:                                               ; preds = %.loopexit, %1
  %36 = phi i32 [ 1, %1 ], [ %.ph, %.loopexit ]
  ret i32 %36
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

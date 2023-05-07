; ModuleID = 'output/merge-funcs/ex1/ex1.ll'
source_filename = "input/merge-funcs/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #3
  store i32 25, i32* %3, align 4, !tbaa !10
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #3
  %7 = alloca i32, align 4
  call void @"10525189165331625461"(i32 1, i32* null, i32* null, i32 15, i32* %7)
  %8 = load i32, i32* %7, align 4
  %9 = alloca i32, align 4
  call void @"10525189165331625461"(i32 0, i32* %3, i32* %9, i32 0, i32* null)
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, %8
  store i32 %11, i32* %4, align 4, !tbaa !10
  %12 = alloca i32, align 4
  call void @"10525189165331625461"(i32 0, i32* %4, i32* %12, i32 0, i32* null)
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, %11
  store i32 %14, i32* %4, align 4, !tbaa !10
  %15 = alloca i32, align 4
  call void @"10525189165331625461"(i32 1, i32* null, i32* null, i32 40, i32* %15)
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, %14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #3
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

define internal fastcc void @"10525189165331625461"(i32 %0, i32* %1, i32* %2, i32 %3, i32* %4) unnamed_addr #2 {
  switch i32 %0, label %6 [
    i32 0, label %7
    i32 1, label %21
  ]

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = load i32, i32* %1, align 4, !tbaa !10
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %10, %7
  %11 = phi i32 [ %17, %10 ], [ 0, %7 ]
  %12 = phi i32 [ %14, %10 ], [ %8, %7 ]
  %13 = freeze i32 %12
  %14 = sdiv i32 %13, 10
  %15 = mul i32 %14, 10
  %16 = sub i32 %13, %15
  %17 = add nsw i32 %11, %16
  %18 = icmp sgt i32 %12, 9
  br i1 %18, label %10, label %19, !llvm.loop !14

19:                                               ; preds = %10, %7
  %20 = phi i32 [ 0, %7 ], [ %17, %10 ]
  store i32 %20, i32* %2, align 4
  ret void

21:                                               ; preds = %5
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %30, %23 ], [ 0, %21 ]
  %25 = phi i32 [ %27, %23 ], [ %3, %21 ]
  %26 = freeze i32 %25
  %27 = sdiv i32 %26, 10
  %28 = mul i32 %27, 10
  %29 = sub i32 %26, %28
  %30 = add nsw i32 %24, %29
  %31 = icmp sgt i32 %25, 9
  br i1 %31, label %23, label %32, !llvm.loop !17

32:                                               ; preds = %23, %21
  %33 = phi i32 [ 0, %21 ], [ %30, %23 ]
  store i32 %33, i32* %4, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !15, !16}

; ModuleID = 'input/cff/ex5/ex5.cpp'
source_filename = "input/cff/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z12duffs_deviceiPiS_(i32 %0, i32* nocapture readonly %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %0, 7
  %5 = sdiv i32 %4, 8
  %6 = srem i32 %0, 8
  switch i32 %6, label %49 [
    i32 0, label %7
    i32 7, label %12
    i32 6, label %17
    i32 5, label %22
    i32 4, label %27
    i32 3, label %32
    i32 2, label %37
    i32 1, label %42
  ]

7:                                                ; preds = %3, %42
  %8 = phi i32* [ %45, %42 ], [ %1, %3 ]
  %9 = phi i32 [ %47, %42 ], [ %5, %3 ]
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* %8, align 4, !tbaa !10
  store i32 %11, i32* %2, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi i32* [ %10, %7 ], [ %1, %3 ]
  %14 = phi i32 [ %9, %7 ], [ %5, %3 ]
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* %13, align 4, !tbaa !10
  store i32 %16, i32* %2, align 4, !tbaa !10
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi i32* [ %15, %12 ], [ %1, %3 ]
  %19 = phi i32 [ %14, %12 ], [ %5, %3 ]
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* %18, align 4, !tbaa !10
  store i32 %21, i32* %2, align 4, !tbaa !10
  br label %22

22:                                               ; preds = %3, %17
  %23 = phi i32* [ %20, %17 ], [ %1, %3 ]
  %24 = phi i32 [ %19, %17 ], [ %5, %3 ]
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* %23, align 4, !tbaa !10
  store i32 %26, i32* %2, align 4, !tbaa !10
  br label %27

27:                                               ; preds = %3, %22
  %28 = phi i32* [ %25, %22 ], [ %1, %3 ]
  %29 = phi i32 [ %24, %22 ], [ %5, %3 ]
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* %28, align 4, !tbaa !10
  store i32 %31, i32* %2, align 4, !tbaa !10
  br label %32

32:                                               ; preds = %3, %27
  %33 = phi i32* [ %30, %27 ], [ %1, %3 ]
  %34 = phi i32 [ %29, %27 ], [ %5, %3 ]
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* %33, align 4, !tbaa !10
  store i32 %36, i32* %2, align 4, !tbaa !10
  br label %37

37:                                               ; preds = %3, %32
  %38 = phi i32* [ %35, %32 ], [ %1, %3 ]
  %39 = phi i32 [ %34, %32 ], [ %5, %3 ]
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* %38, align 4, !tbaa !10
  store i32 %41, i32* %2, align 4, !tbaa !10
  br label %42

42:                                               ; preds = %3, %37
  %43 = phi i32* [ %1, %3 ], [ %40, %37 ]
  %44 = phi i32 [ %5, %3 ], [ %39, %37 ]
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  %46 = load i32, i32* %43, align 4, !tbaa !10
  store i32 %46, i32* %2, align 4, !tbaa !10
  %47 = add nsw i32 %44, -1
  %48 = icmp sgt i32 %44, 1
  br i1 %48, label %7, label %49, !llvm.loop !14

49:                                               ; preds = %42, %3
  %50 = phi i32* [ %1, %3 ], [ %45, %42 ]
  %51 = load i32, i32* %50, align 4, !tbaa !10
  %52 = add nsw i32 %51, %0
  %53 = load i32, i32* %2, align 4, !tbaa !10
  %54 = add nsw i32 %52, %53
  ret i32 %54
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #2
  store i32 1, i32* %3, align 4, !tbaa !10
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #2
  store i32 5, i32* %4, align 4, !tbaa !10
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #2
  store i32 1, i32* %5, align 4, !tbaa !10
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #2
  store i32 5, i32* %6, align 4, !tbaa !10
  %11 = call i32 @_Z12duffs_deviceiPiS_(i32 15, i32* nonnull %3, i32* nonnull %4)
  %12 = call i32 @_Z12duffs_deviceiPiS_(i32 25, i32* nonnull %5, i32* nonnull %6)
  %13 = add nsw i32 %12, %11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #2
  ret i32 %13
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}

; ModuleID = 'input/substitution/or/ex1/ex1.cpp'
source_filename = "input/substitution/or/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@__const.main.A = private unnamed_addr constant [4 x i32] [i32 1, i32 3, i32 5, i32 7], align 4
@__const.main.B = private unnamed_addr constant [4 x i32] [i32 2, i32 4, i32 6, i32 8], align 4

; Function Attrs: mustprogress nofree nosync nounwind ssp uwtable
define void @_Z9unionSetsPiS_S_iiRi(i32* nocapture readonly %0, i32* nocapture readonly %1, i32* nocapture %2, i32 %3, i32 %4, i32* nocapture nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 {
  %7 = alloca [31251 x i32], align 4
  %8 = bitcast [31251 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 125004, i8* nonnull %8) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(125004) %8, i8 0, i64 125004, i1 false)
  store i32 0, i32* %5, align 4, !tbaa !10
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = zext i32 %3 to i64
  br label %17

12:                                               ; preds = %17, %6
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %30, %12
  br label %44

15:                                               ; preds = %12
  %16 = zext i32 %4 to i64
  br label %30

17:                                               ; preds = %10, %17
  %18 = phi i64 [ 0, %10 ], [ %28, %17 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !10
  %21 = sdiv i32 %20, 32
  %22 = and i32 %20, 31
  %23 = shl i32 1, %22
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds [31251 x i32], [31251 x i32]* %7, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !10
  %27 = or i32 %23, %26
  store i32 %27, i32* %25, align 4, !tbaa !10
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %11
  br i1 %29, label %12, label %17, !llvm.loop !14

30:                                               ; preds = %15, %30
  %31 = phi i64 [ 0, %15 ], [ %41, %30 ]
  %32 = getelementptr inbounds i32, i32* %1, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !10
  %34 = sdiv i32 %33, 32
  %35 = and i32 %33, 31
  %36 = shl i32 1, %35
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds [31251 x i32], [31251 x i32]* %7, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !10
  %40 = or i32 %36, %39
  store i32 %40, i32* %38, align 4, !tbaa !10
  %41 = add nuw nsw i64 %31, 1
  %42 = icmp eq i64 %41, %16
  br i1 %42, label %14, label %30, !llvm.loop !17

43:                                               ; preds = %59
  call void @llvm.lifetime.end.p0i8(i64 125004, i8* nonnull %8) #6
  ret void

44:                                               ; preds = %14, %59
  %45 = phi i32 [ %60, %59 ], [ 0, %14 ]
  %46 = lshr i32 %45, 5
  %47 = and i32 %45, 31
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds [31251 x i32], [31251 x i32]* %7, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !10
  %51 = shl i32 1, %47
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4, !tbaa !10
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4, !tbaa !10
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %2, i64 %57
  store i32 %45, i32* %58, align 4, !tbaa !10
  br label %59

59:                                               ; preds = %54, %44
  %60 = add nuw nsw i32 %45, 1
  %61 = icmp eq i32 %60, 1000000
  br i1 %61, label %43, label %44, !llvm.loop !18
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @_Z9or_valuesiiii(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 {
  %5 = or i32 %1, %0
  %6 = or i32 %5, %2
  %7 = or i32 %6, %3
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
  %1 = alloca [4 x i32], align 4
  %2 = alloca [4 x i32], align 4
  %3 = alloca [8 x i32], align 4
  %4 = alloca i32, align 4
  %5 = bitcast [4 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %5, i8* noundef nonnull align 4 dereferenceable(16) bitcast ([4 x i32]* @__const.main.A to i8*), i64 16, i1 false)
  %6 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %6, i8* noundef nonnull align 4 dereferenceable(16) bitcast ([4 x i32]* @__const.main.B to i8*), i64 16, i1 false)
  %7 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #6
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #6
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  call void @_Z9unionSetsPiS_S_iiRi(i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 4, i32 4, i32* nonnull align 4 dereferenceable(4) %4)
  %12 = call i32 @_Z9or_valuesiiii(i32 1, i32 2, i32 3, i32 4)
  %13 = load i32, i32* %4, align 4, !tbaa !10
  %14 = call i32 @_Z9or_valuesiiii(i32 4, i32 4, i32 %13, i32 4)
  %15 = or i32 %14, %12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!17 = distinct !{!17, !15, !16}
!18 = distinct !{!18, !15, !16}

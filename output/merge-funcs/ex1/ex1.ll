; ModuleID = 'input/merge-funcs/ex1/ex1.cpp'
source_filename = "input/merge-funcs/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #3
  store i32 25, i32* %3, align 4, !tbaa !10
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #3
  %7 = call fastcc i32 @_ZL8digitSumi(i32 15)
  %8 = call fastcc i32 @_ZL9digitSum2Pi(i32* nonnull %3)
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* %4, align 4, !tbaa !10
  %10 = call fastcc i32 @_ZL9digitSum2Pi(i32* nonnull %4)
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* %4, align 4, !tbaa !10
  %12 = call fastcc i32 @_ZL8digitSumi(i32 40)
  %13 = add nsw i32 %12, %11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #3
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define internal fastcc i32 @_ZL8digitSumi(i32 %0) unnamed_addr #2 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %10, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %7, %3 ], [ %0, %1 ]
  %6 = freeze i32 %5
  %7 = sdiv i32 %6, 10
  %8 = mul i32 %7, 10
  %9 = sub i32 %6, %8
  %10 = add nsw i32 %4, %9
  %11 = icmp sgt i32 %5, 9
  br i1 %11, label %3, label %12, !llvm.loop !14

12:                                               ; preds = %3, %1
  %13 = phi i32 [ 0, %1 ], [ %10, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp uwtable willreturn
define internal fastcc i32 @_ZL9digitSum2Pi(i32* nocapture readonly %0) unnamed_addr #0 {
  %2 = load i32, i32* %0, align 4, !tbaa !10
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %11, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %8, %4 ], [ %2, %1 ]
  %7 = freeze i32 %6
  %8 = sdiv i32 %7, 10
  %9 = mul i32 %8, 10
  %10 = sub i32 %7, %9
  %11 = add nsw i32 %5, %10
  %12 = icmp sgt i32 %6, 9
  br i1 %12, label %4, label %13, !llvm.loop !17

13:                                               ; preds = %4, %1
  %14 = phi i32 [ 0, %1 ], [ %11, %4 ]
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind }

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

; ModuleID = 'input/call-obfuscation/ex1/ex1.cpp'
source_filename = "input/call-obfuscation/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%class.H = type { i8 }

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @_Z3subi(i32 %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %6, %1
  %4 = phi i32 [ %0, %1 ], [ %9, %6 ]
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %18

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %1 ]
  %8 = phi i32 [ %9, %6 ], [ %0, %1 ]
  %9 = add nsw i32 %8, -5
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp slt i32 %10, %9
  br i1 %11, label %6, label %3, !llvm.loop !10

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %14 = phi i32 [ %15, %12 ], [ %4, %3 ]
  %15 = add nsw i32 %14, -5
  %16 = add nuw nsw i32 %13, 1
  %17 = icmp slt i32 %13, %15
  br i1 %17, label %18, label %12, !llvm.loop !13

18:                                               ; preds = %12, %3
  %19 = phi i32 [ %4, %3 ], [ %15, %12 ]
  %20 = icmp slt i32 %19, -5
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %21
  %22 = phi i32 [ %25, %21 ], [ 0, %18 ]
  %23 = phi i32 [ %24, %21 ], [ %19, %18 ]
  %24 = add nsw i32 %23, -5
  %25 = add nuw nsw i32 %22, 1
  %26 = icmp slt i32 %22, %24
  br i1 %26, label %27, label %21, !llvm.loop !14

27:                                               ; preds = %21, %18
  %28 = phi i32 [ %19, %18 ], [ %24, %21 ]
  %29 = icmp slt i32 %28, -50
  br i1 %29, label %30, label %36

30:                                               ; preds = %27, %30
  %31 = phi i32 [ %34, %30 ], [ 0, %27 ]
  %32 = phi i32 [ %33, %30 ], [ %28, %27 ]
  %33 = add nsw i32 %32, -5
  %34 = add nuw nsw i32 %31, 1
  %35 = icmp slt i32 %31, %33
  br i1 %35, label %36, label %30, !llvm.loop !15

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %28, %27 ], [ %33, %30 ]
  %38 = icmp slt i32 %37, -50
  br i1 %38, label %39, label %45

39:                                               ; preds = %36, %39
  %40 = phi i32 [ %43, %39 ], [ 0, %36 ]
  %41 = phi i32 [ %42, %39 ], [ %37, %36 ]
  %42 = add nsw i32 %41, -5
  %43 = add nuw nsw i32 %40, 1
  %44 = icmp slt i32 %40, %42
  br i1 %44, label %45, label %39, !llvm.loop !16

45:                                               ; preds = %39, %36
  %46 = phi i32 [ %37, %36 ], [ %42, %39 ]
  %47 = icmp slt i32 %46, -100
  br i1 %47, label %48, label %54

48:                                               ; preds = %45, %48
  %49 = phi i32 [ %52, %48 ], [ 0, %45 ]
  %50 = phi i32 [ %51, %48 ], [ %46, %45 ]
  %51 = add nsw i32 %50, -5
  %52 = add nuw nsw i32 %49, 1
  %53 = icmp slt i32 %49, %51
  br i1 %53, label %54, label %48, !llvm.loop !17

54:                                               ; preds = %48, %45
  %55 = phi i32 [ %46, %45 ], [ %51, %48 ]
  ret i32 %55
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress ssp uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #2 {
  %2 = alloca %class.H, align 1
  %3 = getelementptr inbounds %class.H, %class.H* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #5
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %7 = phi i32 [ %9, %5 ], [ %0, %1 ]
  %8 = freeze i32 %7
  %9 = sdiv i32 %8, 10
  %10 = mul i32 %9, 10
  %11 = sub i32 %8, %10
  %12 = add nsw i32 %6, %11
  call void @_ZN1H1pEv(%class.H* nonnull %2)
  %13 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp sgt i32 %7, 9
  br i1 %14, label %5, label %15, !llvm.loop !18

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %5 ]
  %17 = call i32 @_Z3subi(i32 %0)
  call void @_ZN1H1pEv(%class.H* nonnull %2)
  %18 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  call void @_ZN1H1pEv(%class.H* nonnull %2)
  %19 = call i32 @_Z3subi(i32 %16)
  %20 = add i32 %17, %19
  %21 = sub i32 %16, %20
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #5
  ret i32 %21
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZN1H1pEv(%class.H* %0) local_unnamed_addr #2 align 2 {
  %2 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #4 {
  %3 = alloca %class.H, align 1
  %4 = getelementptr inbounds %class.H, %class.H* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #5
  call void @_ZN1H1pEv(%class.H* nonnull %3)
  %5 = call i32 @_Z8digitSumi(i32 15)
  %6 = call i32 @_Z8digitSumi(i32 25)
  %7 = add nsw i32 %6, %5
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #5
  ret i32 %7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind }

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}

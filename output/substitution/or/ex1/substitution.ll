; ModuleID = 'output/substitution/or/ex1/ex1.ll'
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

14:                                               ; preds = %35, %12
  br label %54

15:                                               ; preds = %12
  %16 = zext i32 %4 to i64
  br label %35

17:                                               ; preds = %17, %10
  %18 = phi i64 [ 0, %10 ], [ %33, %17 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !10
  %21 = sdiv i32 %20, 32
  %22 = xor i32 %20, -32
  %23 = and i32 %22, %20
  %24 = shl i32 1, %23
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds [31251 x i32], [31251 x i32]* %7, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !10
  %28 = and i32 %24, %27
  %29 = xor i32 %24, %27
  %30 = or i32 %28, %29
  store i32 %30, i32* %26, align 4, !tbaa !10
  %31 = sub i64 %18, -5468325209379065095
  %32 = add i64 %31, 1
  %33 = add i64 %32, -5468325209379065095
  %34 = icmp eq i64 %33, %11
  br i1 %34, label %12, label %17, !llvm.loop !14

35:                                               ; preds = %35, %15
  %36 = phi i64 [ 0, %15 ], [ %51, %35 ]
  %37 = getelementptr inbounds i32, i32* %1, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !10
  %39 = sdiv i32 %38, 32
  %40 = xor i32 %38, -1
  %41 = or i32 %40, -32
  %42 = xor i32 %41, -1
  %43 = and i32 %42, -1
  %44 = shl i32 1, %43
  %45 = sext i32 %39 to i64
  %46 = getelementptr inbounds [31251 x i32], [31251 x i32]* %7, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !10
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = add i32 %49, %47
  store i32 %50, i32* %46, align 4, !tbaa !10
  %51 = sub i64 %36, -1
  %52 = icmp eq i64 %51, %16
  br i1 %52, label %14, label %35, !llvm.loop !17

53:                                               ; preds = %77
  call void @llvm.lifetime.end.p0i8(i64 125004, i8* nonnull %8) #6
  ret void

54:                                               ; preds = %77, %14
  %55 = phi i32 [ %80, %77 ], [ 0, %14 ]
  %56 = lshr i32 %55, 5
  %57 = xor i32 %55, -1
  %58 = or i32 %57, 31
  %59 = xor i32 %55, -1
  %60 = sub i32 %58, %59
  %61 = zext i32 %56 to i64
  %62 = getelementptr inbounds [31251 x i32], [31251 x i32]* %7, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !10
  %64 = shl i32 1, %60
  %65 = xor i32 %63, -1
  %66 = or i32 %65, %64
  %67 = xor i32 %63, -1
  %68 = sub i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %5, align 4, !tbaa !10
  %72 = sub i32 %71, 153590410
  %73 = add i32 %72, 1
  %74 = add i32 %73, 153590410
  store i32 %74, i32* %5, align 4, !tbaa !10
  %75 = sext i32 %71 to i64
  %76 = getelementptr inbounds i32, i32* %2, i64 %75
  store i32 %55, i32* %76, align 4, !tbaa !10
  br label %77

77:                                               ; preds = %70, %54
  %78 = add i32 %55, 752097512
  %79 = add i32 %78, 1
  %80 = sub i32 %79, 752097512
  %81 = icmp eq i32 %80, 1000000
  br i1 %81, label %53, label %54, !llvm.loop !18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z9or_valuesiiii(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 {
  %5 = xor i32 %0, -1
  %6 = and i32 %1, %5
  %7 = add i32 %6, %0
  %8 = and i32 %7, %2
  %9 = xor i32 %7, %2
  %10 = or i32 %8, %9
  %11 = xor i32 %3, -1
  %12 = and i32 %10, %11
  %13 = add i32 %12, %3
  ret i32 %13
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
  %15 = xor i32 %12, -1
  %16 = and i32 %14, %15
  %17 = add i32 %16, %12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!18 = distinct !{!18, !15, !16}

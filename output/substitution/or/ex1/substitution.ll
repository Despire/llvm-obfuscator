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

14:                                               ; preds = %49, %12
  br label %70

15:                                               ; preds = %12
  %16 = zext i32 %4 to i64
  br label %49

17:                                               ; preds = %17, %10
  %18 = phi i64 [ 0, %10 ], [ %47, %17 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !10
  %21 = sdiv i32 %20, 32
  %22 = xor i32 %20, -1
  %23 = or i32 %22, 31
  %24 = xor i32 %20, -1
  %25 = sub i32 %23, %24
  %26 = shl i32 1, %25
  %27 = sext i32 %21 to i64
  %28 = getelementptr inbounds [31251 x i32], [31251 x i32]* %7, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !10
  %30 = xor i32 %26, -1
  %31 = and i32 %30, -1841722790
  %32 = and i32 %26, 1841722789
  %33 = or i32 %31, %32
  %34 = xor i32 %29, -1
  %35 = and i32 %34, -1841722790
  %36 = and i32 %29, 1841722789
  %37 = or i32 %35, %36
  %38 = xor i32 %33, %37
  %39 = xor i32 %26, -1
  %40 = xor i32 %29, -1
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %42, -1
  %44 = or i32 %38, %43
  store i32 %44, i32* %28, align 4, !tbaa !10
  %45 = and i64 %18, 1
  %46 = or i64 %18, 1
  %47 = add i64 %45, %46
  %48 = icmp eq i64 %47, %11
  br i1 %48, label %12, label %17, !llvm.loop !14

49:                                               ; preds = %49, %15
  %50 = phi i64 [ 0, %15 ], [ %67, %49 ]
  %51 = getelementptr inbounds i32, i32* %1, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !10
  %53 = sdiv i32 %52, 32
  %54 = xor i32 %52, -1
  %55 = or i32 %54, -32
  %56 = xor i32 %55, -1
  %57 = and i32 %56, -1
  %58 = shl i32 1, %57
  %59 = sext i32 %53 to i64
  %60 = getelementptr inbounds [31251 x i32], [31251 x i32]* %7, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !10
  %62 = and i32 %58, %61
  %63 = xor i32 %58, %61
  %64 = or i32 %62, %63
  store i32 %64, i32* %60, align 4, !tbaa !10
  %65 = add i64 %50, -19148294312209565
  %66 = add i64 %65, 1
  %67 = sub i64 %66, -19148294312209565
  %68 = icmp eq i64 %67, %16
  br i1 %68, label %14, label %49, !llvm.loop !17

69:                                               ; preds = %94
  call void @llvm.lifetime.end.p0i8(i64 125004, i8* nonnull %8) #6
  ret void

70:                                               ; preds = %94, %14
  %71 = phi i32 [ %97, %94 ], [ 0, %14 ]
  %72 = lshr i32 %71, 5
  %73 = xor i32 %71, -1
  %74 = or i32 %73, 31
  %75 = xor i32 %71, -1
  %76 = sub i32 %74, %75
  %77 = zext i32 %72 to i64
  %78 = getelementptr inbounds [31251 x i32], [31251 x i32]* %7, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4, !tbaa !10
  %80 = shl i32 1, %76
  %81 = xor i32 %79, -1
  %82 = xor i32 %80, -1
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %84, -1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %5, align 4, !tbaa !10
  %89 = sub i32 %88, 1206627287
  %90 = add i32 %89, 1
  %91 = add i32 %90, 1206627287
  store i32 %91, i32* %5, align 4, !tbaa !10
  %92 = sext i32 %88 to i64
  %93 = getelementptr inbounds i32, i32* %2, i64 %92
  store i32 %71, i32* %93, align 4, !tbaa !10
  br label %94

94:                                               ; preds = %87, %70
  %95 = and i32 %71, 1
  %96 = or i32 %71, 1
  %97 = add i32 %95, %96
  %98 = icmp eq i32 %97, 1000000
  br i1 %98, label %69, label %70, !llvm.loop !18
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
  %11 = xor i32 %10, -1
  %12 = and i32 %11, 209214797
  %13 = and i32 %10, -209214798
  %14 = or i32 %12, %13
  %15 = xor i32 %3, -1
  %16 = and i32 %15, 209214797
  %17 = and i32 %3, -209214798
  %18 = or i32 %16, %17
  %19 = xor i32 %14, %18
  %20 = xor i32 %10, -1
  %21 = xor i32 %3, -1
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %23, -1
  %25 = or i32 %19, %24
  ret i32 %25
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
  %15 = xor i32 %14, -1
  %16 = and i32 %15, 1951794528
  %17 = and i32 %14, -1951794529
  %18 = or i32 %16, %17
  %19 = xor i32 %12, -1
  %20 = and i32 %19, 1951794528
  %21 = and i32 %12, -1951794529
  %22 = or i32 %20, %21
  %23 = xor i32 %18, %22
  %24 = xor i32 %14, -1
  %25 = xor i32 %12, -1
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %27, -1
  %29 = or i32 %23, %28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6
  ret i32 %29
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

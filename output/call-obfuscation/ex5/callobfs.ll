; ModuleID = 'output/call-obfuscation/ex5/ex5.ll'
source_filename = "input/call-obfuscation/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsfuncAddrLookupTable10232441089807344853 = private global [2 x i8*] zeroinitializer
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i64 (i64)* @m2373318475414462246 to i8*), i8* bitcast ([2 x i8*]* @obfsfuncAddrLookupTable10232441089807344853 to i8*), i8* bitcast (i8** (i64*)* @lk10805043312460219395 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = add nsw i32 %0, 7
  %7 = sdiv i32 %6, 8
  %8 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  br label %14

9:                                                ; preds = %14, %3
  %10 = load i32, i32* %1, align 4, !tbaa !10
  %11 = add nsw i32 %10, %0
  %12 = load i32, i32* %2, align 4, !tbaa !10
  %13 = add nsw i32 %11, %12
  ret i32 %13

14:                                               ; preds = %14, %5
  %15 = phi i32 [ %18, %14 ], [ 0, %5 ]
  %16 = load i32, i32* %1, align 4, !tbaa !10
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4, !tbaa !10
  store i32 %16, i32* %2, align 4, !tbaa !10
  %18 = add nuw nsw i32 %15, 1
  %19 = icmp eq i32 %18, %8
  br i1 %19, label %9, label %14, !llvm.loop !14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = call i64 @m2373318475414462246(i64 -2901928339368839757)
  %5 = getelementptr [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable10232441089807344853, i32 0, i64 %4
  store i8* bitcast (i32 (i32, i32*, i32*)* @_Z1diPiS_ to i8*), i8** %5, align 8
  %6 = call i64 @m2373318475414462246(i64 -2901928339368839758)
  %7 = getelementptr [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable10232441089807344853, i32 0, i64 %6
  store i8* bitcast (i32 (i32, i32*, i32*)* @_Z1diPiS_ to i8*), i8** %7, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #3
  store i32 1, i32* %8, align 4, !tbaa !10
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #3
  store i32 5, i32* %9, align 4, !tbaa !10
  %14 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 1, i32* %10, align 4, !tbaa !10
  %15 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 5, i32* %11, align 4, !tbaa !10
  store i64 -2901928339368839757, i64* %3, align 8
  %16 = call i8** @lk10805043312460219395(i64* %3)
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32 (i32, i32*, i32*)*
  %19 = call i32 %18(i32 15, i32* %8, i32* %9)
  store i64 -2901928339368839758, i64* %3, align 8
  %20 = call i8** @lk10805043312460219395(i64* %3)
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to i32 (i32, i32*, i32*)*
  %23 = call i32 %22(i32 25, i32* %10, i32* %11)
  %24 = add nsw i32 %23, %19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #3
  ret i32 %24
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

define private i64 @m2373318475414462246(i64 %0) {
  %2 = xor i64 -2901928339368839757, %0
  ret i64 %2
}

define private i8** @lk10805043312460219395(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m2373318475414462246(i64 %2)
  %4 = getelementptr inbounds [2 x i8*], [2 x i8*]* @obfsfuncAddrLookupTable10232441089807344853, i32 0, i64 %3
  ret i8** %4
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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

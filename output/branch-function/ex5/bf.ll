; ModuleID = 'output/branch-function/ex5/ex5.ll'
source_filename = "input/branch-function/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@obfsblockAddrLookupTable835780798882194660 = private global [3 x i8*] zeroinitializer
@obfsblockAddrLookupTable5138282583842112688 = private global [4 x i8*] zeroinitializer
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i64 (i64)* @h10088896865765235014 to i8*), i8* bitcast ([3 x i8*]* @obfsblockAddrLookupTable835780798882194660 to i8*), i8* bitcast (i8** (i32*)* @bf9447726664922262424 to i8*), i8* bitcast ([4 x i8*]* @obfsblockAddrLookupTable5138282583842112688 to i8*), i8* bitcast (i8** (i32*)* @bf13683687228470503200 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = call i64 @h10088896865765235014(i64 381779403)
  %6 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable5138282583842112688, i32 0, i64 %5
  store i8* blockaddress(@_Z1diPiS_, %36), i8** %6, align 8
  %7 = call i64 @h10088896865765235014(i64 381779401)
  %8 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable5138282583842112688, i32 0, i64 %7
  store i8* blockaddress(@_Z1diPiS_, %41), i8** %8, align 8
  %9 = call i64 @h10088896865765235014(i64 381779400)
  %10 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable5138282583842112688, i32 0, i64 %9
  store i8* blockaddress(@_Z1diPiS_, %16), i8** %10, align 8
  %11 = icmp sgt i32 %0, 0
  %12 = select i1 %11, i32 381779403, i32 381779400
  %13 = xor i32 %12, 3
  store i32 %13, i32* %4, align 4
  %14 = call i8** @bf13683687228470503200(i32* %4)
  %15 = load i8*, i8** %14, align 8
  indirectbr i8* %15, [label %16, label %36]

16:                                               ; preds = %16, %3
  %17 = add nsw i32 %0, 7
  %18 = sdiv i32 %17, 8
  %19 = call i32 @llvm.smax.i32(i32 %18, i32 1)
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = mul i8 %21, %21
  %23 = add i8 %22, %21
  %24 = mul i8 %23, 3
  %25 = srem i8 %24, 2
  %26 = icmp eq i8 %25, 0
  %27 = mul i8 %21, %21
  %28 = add i8 %27, %21
  %29 = srem i8 %28, 2
  %30 = icmp eq i8 %29, 0
  %31 = and i1 %26, %30
  %32 = select i1 %31, i32 381779403, i32 381779401
  %33 = xor i32 %32, 2
  store i32 %33, i32* %4, align 4
  %34 = call i8** @bf13683687228470503200(i32* %4)
  %35 = load i8*, i8** %34, align 8
  indirectbr i8* %35, [label %41, label %16]

36:                                               ; preds = %41, %3
  %37 = load i32, i32* %1, align 4, !tbaa !10
  %38 = add nsw i32 %37, %0
  %39 = load i32, i32* %2, align 4, !tbaa !10
  %40 = add nsw i32 %38, %39
  ret i32 %40

41:                                               ; preds = %41, %16
  %42 = phi i32 [ %45, %41 ], [ 0, %16 ]
  %43 = load i32, i32* %1, align 4, !tbaa !10
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4, !tbaa !10
  store i32 %43, i32* %2, align 4, !tbaa !10
  %45 = add nuw nsw i32 %42, 1
  %46 = icmp eq i32 %45, %19
  %47 = select i1 %46, i32 381779401, i32 381779403
  %48 = xor i32 %47, 2
  store i32 %48, i32* %4, align 4
  %49 = call i8** @bf13683687228470503200(i32* %4)
  %50 = load i8*, i8** %49, align 8
  indirectbr i8* %50, [label %36, label %41]
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4
  store i32 1, i32* %4, align 4, !tbaa !10
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4
  store i32 5, i32* %5, align 4, !tbaa !10
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4
  store i32 1, i32* %6, align 4, !tbaa !10
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4
  store i32 5, i32* %7, align 4, !tbaa !10
  %12 = call i32 @_Z1diPiS_(i32 15, i32* nonnull %4, i32* nonnull %5)
  %13 = call i32 @_Z1diPiS_(i32 25, i32* nonnull %6, i32* nonnull %7)
  %14 = add nsw i32 %13, %12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: noinline
define internal i64 @h10088896865765235014(i64 %0) #3 {
  %2 = alloca i32, align 4
  %3 = xor i64 381779400, %0
  ret i64 %3
}

; Function Attrs: noinline
define internal i8** @bf9447726664922262424(i32* %0) #3 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h10088896865765235014(i64 %4)
  %6 = getelementptr inbounds [3 x i8*], [3 x i8*]* @obfsblockAddrLookupTable835780798882194660, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf13683687228470503200(i32* %0) #3 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h10088896865765235014(i64 %4)
  %6 = getelementptr inbounds [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable5138282583842112688, i32 0, i64 %5
  ret i8** %6
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noinline }
attributes #4 = { nounwind }

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

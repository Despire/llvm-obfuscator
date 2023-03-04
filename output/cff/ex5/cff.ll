; ModuleID = 'output/cff/ex5/ex5.ll'
source_filename = "input/cff/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z12duffs_deviceiPiS_(i32 %0, i32* nocapture readonly %1, i32* nocapture %2) local_unnamed_addr #0 {
entry:
  %.reg2mem62 = alloca i32*, align 8
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem58 = alloca i32*, align 8
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem54 = alloca i32*, align 8
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem50 = alloca i32*, align 8
  %.reg2mem48 = alloca i32, align 4
  %.reg2mem46 = alloca i32*, align 8
  %.reg2mem44 = alloca i32, align 4
  %.reg2mem42 = alloca i32*, align 8
  %.reg2mem40 = alloca i32, align 4
  %.reg2mem38 = alloca i32*, align 8
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem34 = alloca i32*, align 8
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem30 = alloca i32*, align 8
  %.reg2mem21 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %3 = add nsw i32 %0, 7
  %4 = sdiv i32 %3, 8
  store i32 %4, i32* %.reg2mem, align 4
  %dispatcher = alloca i32, align 4
  store i32 0, i32* %dispatcher, align 4
  br label %loopStart

loopStart:                                        ; preds = %loopEnd, %entry
  %dispatcher13 = load i32, i32* %dispatcher, align 4
  switch i32 %dispatcher13, label %defaultSwitchBasicBlock [
    i32 0, label %EntryBasicBlockSplit
    i32 1, label %NodeBlock11
    i32 2, label %NodeBlock9
    i32 3, label %NodeBlock7
    i32 4, label %NodeBlock5
    i32 5, label %NodeBlock3
    i32 6, label %NodeBlock1
    i32 7, label %NodeBlock
    i32 8, label %LeafBlock
    i32 9, label %14
    i32 10, label %17
    i32 11, label %20
    i32 12, label %23
    i32 13, label %26
    i32 14, label %29
    i32 15, label %32
    i32 16, label %35
    i32 17, label %41
  ]

EntryBasicBlockSplit:                             ; preds = %loopStart
  %5 = srem i32 %0, 8
  store i32 %5, i32* %.reg2mem21, align 4
  store i32 1, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock11:                                      ; preds = %loopStart
  %.reload29 = load i32, i32* %.reg2mem21, align 4
  %Pivot12 = icmp slt i32 %.reload29, 4
  %6 = select i1 %Pivot12, i32 5, i32 2
  store i32 %6, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock9:                                       ; preds = %loopStart
  %.reload24 = load i32, i32* %.reg2mem21, align 4
  %Pivot10 = icmp slt i32 %.reload24, 6
  %7 = select i1 %Pivot10, i32 4, i32 3
  store i32 %7, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock7:                                       ; preds = %loopStart
  %.reload22 = load i32, i32* %.reg2mem21, align 4
  %Pivot8 = icmp slt i32 %.reload22, 7
  %8 = select i1 %Pivot8, i32 11, i32 10
  store i32 %8, i32* %dispatcher, align 4
  %.reload18 = load i32, i32* %.reg2mem, align 4
  %.reload19 = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem34, align 8
  store i32 %.reload19, i32* %.reg2mem36, align 4
  store i32* %1, i32** %.reg2mem38, align 8
  store i32 %.reload18, i32* %.reg2mem40, align 4
  br label %loopEnd

NodeBlock5:                                       ; preds = %loopStart
  %.reload23 = load i32, i32* %.reg2mem21, align 4
  %Pivot6 = icmp slt i32 %.reload23, 5
  %9 = select i1 %Pivot6, i32 13, i32 12
  store i32 %9, i32* %dispatcher, align 4
  %.reload16 = load i32, i32* %.reg2mem, align 4
  %.reload17 = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem42, align 8
  store i32 %.reload17, i32* %.reg2mem44, align 4
  store i32* %1, i32** %.reg2mem46, align 8
  store i32 %.reload16, i32* %.reg2mem48, align 4
  br label %loopEnd

NodeBlock3:                                       ; preds = %loopStart
  %.reload28 = load i32, i32* %.reg2mem21, align 4
  %Pivot4 = icmp slt i32 %.reload28, 2
  %10 = select i1 %Pivot4, i32 7, i32 6
  store i32 %10, i32* %dispatcher, align 4
  br label %loopEnd

NodeBlock1:                                       ; preds = %loopStart
  %.reload25 = load i32, i32* %.reg2mem21, align 4
  %Pivot2 = icmp slt i32 %.reload25, 3
  %11 = select i1 %Pivot2, i32 15, i32 14
  store i32 %11, i32* %dispatcher, align 4
  %.reload14 = load i32, i32* %.reg2mem, align 4
  %.reload15 = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem50, align 8
  store i32 %.reload15, i32* %.reg2mem52, align 4
  store i32* %1, i32** %.reg2mem54, align 8
  store i32 %.reload14, i32* %.reg2mem56, align 4
  br label %loopEnd

NodeBlock:                                        ; preds = %loopStart
  %.reload27 = load i32, i32* %.reg2mem21, align 4
  %Pivot = icmp slt i32 %.reload27, 1
  %12 = select i1 %Pivot, i32 8, i32 16
  store i32 %12, i32* %dispatcher, align 4
  %.reload = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem58, align 8
  store i32 %.reload, i32* %.reg2mem60, align 4
  br label %loopEnd

LeafBlock:                                        ; preds = %loopStart
  %.reload26 = load i32, i32* %.reg2mem21, align 4
  %SwitchLeaf = icmp eq i32 %.reload26, 0
  %13 = select i1 %SwitchLeaf, i32 9, i32 17
  store i32 %13, i32* %dispatcher, align 4
  %.reload20 = load i32, i32* %.reg2mem, align 4
  store i32* %1, i32** %.reg2mem30, align 8
  store i32 %.reload20, i32* %.reg2mem32, align 4
  store i32* %1, i32** %.reg2mem62, align 8
  br label %loopEnd

14:                                               ; preds = %loopStart
  %.reload33 = load i32, i32* %.reg2mem32, align 4
  %.reload31 = load i32*, i32** %.reg2mem30, align 8
  %15 = getelementptr inbounds i32, i32* %.reload31, i64 1
  %16 = load i32, i32* %.reload31, align 4, !tbaa !10
  store i32 %16, i32* %2, align 4, !tbaa !10
  store i32 10, i32* %dispatcher, align 4
  store i32* %15, i32** %.reg2mem34, align 8
  store i32 %.reload33, i32* %.reg2mem36, align 4
  br label %loopEnd

17:                                               ; preds = %loopStart
  %.reload37 = load i32, i32* %.reg2mem36, align 4
  %.reload35 = load i32*, i32** %.reg2mem34, align 8
  %18 = getelementptr inbounds i32, i32* %.reload35, i64 1
  %19 = load i32, i32* %.reload35, align 4, !tbaa !10
  store i32 %19, i32* %2, align 4, !tbaa !10
  store i32 11, i32* %dispatcher, align 4
  store i32* %18, i32** %.reg2mem38, align 8
  store i32 %.reload37, i32* %.reg2mem40, align 4
  br label %loopEnd

20:                                               ; preds = %loopStart
  %.reload41 = load i32, i32* %.reg2mem40, align 4
  %.reload39 = load i32*, i32** %.reg2mem38, align 8
  %21 = getelementptr inbounds i32, i32* %.reload39, i64 1
  %22 = load i32, i32* %.reload39, align 4, !tbaa !10
  store i32 %22, i32* %2, align 4, !tbaa !10
  store i32 12, i32* %dispatcher, align 4
  store i32* %21, i32** %.reg2mem42, align 8
  store i32 %.reload41, i32* %.reg2mem44, align 4
  br label %loopEnd

23:                                               ; preds = %loopStart
  %.reload45 = load i32, i32* %.reg2mem44, align 4
  %.reload43 = load i32*, i32** %.reg2mem42, align 8
  %24 = getelementptr inbounds i32, i32* %.reload43, i64 1
  %25 = load i32, i32* %.reload43, align 4, !tbaa !10
  store i32 %25, i32* %2, align 4, !tbaa !10
  store i32 13, i32* %dispatcher, align 4
  store i32* %24, i32** %.reg2mem46, align 8
  store i32 %.reload45, i32* %.reg2mem48, align 4
  br label %loopEnd

26:                                               ; preds = %loopStart
  %.reload49 = load i32, i32* %.reg2mem48, align 4
  %.reload47 = load i32*, i32** %.reg2mem46, align 8
  %27 = getelementptr inbounds i32, i32* %.reload47, i64 1
  %28 = load i32, i32* %.reload47, align 4, !tbaa !10
  store i32 %28, i32* %2, align 4, !tbaa !10
  store i32 14, i32* %dispatcher, align 4
  store i32* %27, i32** %.reg2mem50, align 8
  store i32 %.reload49, i32* %.reg2mem52, align 4
  br label %loopEnd

29:                                               ; preds = %loopStart
  %.reload53 = load i32, i32* %.reg2mem52, align 4
  %.reload51 = load i32*, i32** %.reg2mem50, align 8
  %30 = getelementptr inbounds i32, i32* %.reload51, i64 1
  %31 = load i32, i32* %.reload51, align 4, !tbaa !10
  store i32 %31, i32* %2, align 4, !tbaa !10
  store i32 15, i32* %dispatcher, align 4
  store i32* %30, i32** %.reg2mem54, align 8
  store i32 %.reload53, i32* %.reg2mem56, align 4
  br label %loopEnd

32:                                               ; preds = %loopStart
  %.reload57 = load i32, i32* %.reg2mem56, align 4
  %.reload55 = load i32*, i32** %.reg2mem54, align 8
  %33 = getelementptr inbounds i32, i32* %.reload55, i64 1
  %34 = load i32, i32* %.reload55, align 4, !tbaa !10
  store i32 %34, i32* %2, align 4, !tbaa !10
  store i32 16, i32* %dispatcher, align 4
  store i32* %33, i32** %.reg2mem58, align 8
  store i32 %.reload57, i32* %.reg2mem60, align 4
  br label %loopEnd

35:                                               ; preds = %loopStart
  %.reload61 = load i32, i32* %.reg2mem60, align 4
  %.reload59 = load i32*, i32** %.reg2mem58, align 8
  %36 = getelementptr inbounds i32, i32* %.reload59, i64 1
  %37 = load i32, i32* %.reload59, align 4, !tbaa !10
  store i32 %37, i32* %2, align 4, !tbaa !10
  %38 = add nsw i32 %.reload61, -1
  %39 = icmp sgt i32 %.reload61, 1
  %40 = select i1 %39, i32 9, i32 17
  store i32 %40, i32* %dispatcher, align 4
  store i32* %36, i32** %.reg2mem30, align 8
  store i32 %38, i32* %.reg2mem32, align 4
  store i32* %36, i32** %.reg2mem62, align 8
  br label %loopEnd

41:                                               ; preds = %loopStart
  %.reload63 = load i32*, i32** %.reg2mem62, align 8
  %42 = load i32, i32* %.reload63, align 4, !tbaa !10
  %43 = add nsw i32 %42, %0
  %44 = load i32, i32* %2, align 4, !tbaa !10
  %45 = add nsw i32 %43, %44
  ret i32 %45

defaultSwitchBasicBlock:                          ; preds = %loopStart
  br label %loopEnd

loopEnd:                                          ; preds = %35, %32, %29, %26, %23, %20, %17, %14, %LeafBlock, %NodeBlock, %NodeBlock1, %NodeBlock3, %NodeBlock5, %NodeBlock7, %NodeBlock9, %NodeBlock11, %EntryBasicBlockSplit, %defaultSwitchBasicBlock
  br label %loopStart
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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

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

; ModuleID = 'output/block-extraction/ex5/ex5.ll'
source_filename = "input/block-extraction/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %.loc = alloca i32, align 4
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %codeRepl, label %5

codeRepl:                                         ; preds = %3
  %lt.cast = bitcast i32* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  call void @_Z1diPiS_.extracted(i32 %0, i32* %.loc)
  %.reload = load i32, i32* %.loc, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  br label %codeRepl1

5:                                                ; preds = %codeRepl1, %3
  %6 = load i32, i32* %1, align 4, !tbaa !10
  %7 = add nsw i32 %6, %0
  %8 = load i32, i32* %2, align 4, !tbaa !10
  %9 = add nsw i32 %7, %8
  ret i32 %9

codeRepl1:                                        ; preds = %codeRepl
  call void @_Z1diPiS_.extracted.1(i32* %1, i32* %2, i32 %.reload)
  br label %5
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  store i32 1, i32* %3, align 4, !tbaa !10
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4
  store i32 5, i32* %4, align 4, !tbaa !10
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4
  store i32 1, i32* %5, align 4, !tbaa !10
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4
  store i32 5, i32* %6, align 4, !tbaa !10
  %11 = call i32 @_Z1diPiS_(i32 15, i32* nonnull %3, i32* nonnull %4)
  %12 = call i32 @_Z1diPiS_(i32 25, i32* nonnull %5, i32* nonnull %6)
  %13 = add nsw i32 %12, %11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal void @_Z1diPiS_.extracted(i32 %0, i32* %.out) #3 {
newFuncRoot:
  br label %1

1:                                                ; preds = %newFuncRoot
  %2 = add nsw i32 %0, 7
  %3 = sdiv i32 %2, 8
  %4 = call i32 @llvm.smax.i32(i32 %3, i32 1)
  store i32 %4, i32* %.out, align 4
  br label %.exitStub

.exitStub:                                        ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal void @_Z1diPiS_.extracted.1(i32* %0, i32* %1, i32 %.reload) #3 {
newFuncRoot:
  %.loc = alloca i32, align 4
  br label %2

2:                                                ; preds = %codeRepl, %newFuncRoot
  %3 = phi i32 [ %.reload1, %codeRepl ], [ 0, %newFuncRoot ]
  %4 = load i32, i32* %0, align 4, !tbaa !10
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %0, align 4, !tbaa !10
  br label %codeRepl

codeRepl:                                         ; preds = %2
  %lt.cast = bitcast i32* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  %targetBlock = call i1 @_Z1diPiS_.extracted.1.extracted(i32 %4, i32* %1, i32 %3, i32 %.reload, i32* %.loc)
  %.reload1 = load i32, i32* %.loc, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  br i1 %targetBlock, label %.exitStub, label %2

.exitStub:                                        ; preds = %codeRepl
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal i1 @_Z1diPiS_.extracted.1.extracted(i32 %0, i32* %1, i32 %2, i32 %.reload, i32* %.out) #3 {
newFuncRoot:
  br label %3

3:                                                ; preds = %newFuncRoot
  store i32 %0, i32* %1, align 4, !tbaa !10
  %4 = add nuw nsw i32 %2, 1
  store i32 %4, i32* %.out, align 4
  %5 = icmp eq i32 %4, %.reload
  br i1 %5, label %.exitStub.exitStub, label %.exitStub, !llvm.loop !14

.exitStub.exitStub:                               ; preds = %3
  ret i1 true

.exitStub:                                        ; preds = %3
  ret i1 false
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}

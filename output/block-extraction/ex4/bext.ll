; ModuleID = 'output/block-extraction/ex4/ex4.ll'
source_filename = "input/block-extraction/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %.loc = alloca i32, align 4
  br label %4

3:                                                ; preds = %codeRepl
  unreachable

4:                                                ; preds = %codeRepl1, %2
  %5 = phi i32 [ %0, %2 ], [ %18, %codeRepl1 ]
  %6 = phi i32 [ 0, %2 ], [ %19, %codeRepl1 ]
  br label %codeRepl

codeRepl:                                         ; preds = %4
  %targetBlock = call i16 @_Z6decideii..split(i32 %6)
  switch i16 %targetBlock, label %20 [
    i16 0, label %3
    i16 1, label %7
    i16 2, label %12
    i16 3, label %codeRepl2
  ]

7:                                                ; preds = %codeRepl
  %8 = icmp slt i32 %5, %1
  %9 = select i1 %8, i32 %1, i32 0
  %10 = add nsw i32 %9, %5
  %11 = select i1 %8, i32 3, i32 1
  br label %17

12:                                               ; preds = %codeRepl
  %13 = icmp eq i32 %5, %1
  %14 = sub nsw i32 %1, %5
  %15 = select i1 %13, i32 %14, i32 %5
  %16 = select i1 %13, i32 3, i32 2
  br label %17

17:                                               ; preds = %codeRepl2, %12, %7
  %18 = phi i32 [ %.reload, %codeRepl2 ], [ %10, %7 ], [ %15, %12 ]
  %19 = phi i32 [ 3, %codeRepl2 ], [ %11, %7 ], [ %16, %12 ]
  br label %codeRepl1

codeRepl1:                                        ; preds = %17
  call void @_Z6decideii..split.1()
  br label %4

codeRepl2:                                        ; preds = %codeRepl
  %lt.cast = bitcast i32* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  call void @_Z6decideii.extracted(i32 %5, i32 %1, i32* %.loc)
  %.reload = load i32, i32* %.loc, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  br label %17

20:                                               ; preds = %codeRepl
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal i16 @_Z6decideii..split(i32 %0) #1 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  switch i32 %0, label %.exitStub [
    i32 0, label %.exitStub1
    i32 1, label %.exitStub2
    i32 2, label %.exitStub3
    i32 3, label %.exitStub4
  ], !llvm.loop !10

.exitStub:                                        ; preds = %.split
  ret i16 0

.exitStub1:                                       ; preds = %.split
  ret i16 1

.exitStub2:                                       ; preds = %.split
  ret i16 2

.exitStub3:                                       ; preds = %.split
  ret i16 3

.exitStub4:                                       ; preds = %.split
  ret i16 4
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal void @_Z6decideii..split.1() #1 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  br label %.exitStub, !llvm.loop !10

.exitStub:                                        ; preds = %.split
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal void @_Z6decideii.extracted(i32 %0, i32 %1, i32* %.out) #1 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot
  %3 = shl i32 %0, 1
  %4 = sub i32 %3, %1
  store i32 %4, i32* %.out, align 4
  br label %.exitStub

.exitStub:                                        ; preds = %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}

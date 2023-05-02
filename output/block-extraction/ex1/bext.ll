; ModuleID = 'output/block-extraction/ex1/ex1.ll'
source_filename = "input/block-extraction/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%class.H = type { i8 }

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z3subi(i32 %0) local_unnamed_addr #0 {
  %.loc3 = alloca i32, align 4
  %.loc = alloca i32, align 4
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %codeRepl, label %3

3:                                                ; preds = %codeRepl, %1
  %4 = phi i32 [ %0, %1 ], [ %.reload, %codeRepl ]
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %12

codeRepl:                                         ; preds = %1
  %lt.cast = bitcast i32* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  call void @_Z3subi.extracted(i32 %0, i32* %.loc)
  %.reload = load i32, i32* %.loc, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  br label %3

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %8 = phi i32 [ %9, %6 ], [ %4, %3 ]
  %9 = add nsw i32 %8, -5
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp slt i32 %7, %9
  br i1 %11, label %12, label %6, !llvm.loop !10

12:                                               ; preds = %6, %3
  %13 = phi i32 [ %4, %3 ], [ %9, %6 ]
  %14 = icmp slt i32 %13, -5
  br i1 %14, label %15, label %21

15:                                               ; preds = %15, %12
  %16 = phi i32 [ %19, %15 ], [ 0, %12 ]
  %17 = phi i32 [ %18, %15 ], [ %13, %12 ]
  %18 = add nsw i32 %17, -5
  %19 = add nuw nsw i32 %16, 1
  %20 = icmp slt i32 %16, %18
  br i1 %20, label %21, label %15, !llvm.loop !13

21:                                               ; preds = %15, %12
  %22 = phi i32 [ %13, %12 ], [ %18, %15 ]
  %23 = icmp slt i32 %22, -50
  br i1 %23, label %24, label %30

24:                                               ; preds = %24, %21
  %25 = phi i32 [ %28, %24 ], [ 0, %21 ]
  %26 = phi i32 [ %27, %24 ], [ %22, %21 ]
  %27 = add nsw i32 %26, -5
  %28 = add nuw nsw i32 %25, 1
  %29 = icmp slt i32 %25, %27
  br i1 %29, label %30, label %24, !llvm.loop !14

30:                                               ; preds = %24, %21
  %31 = phi i32 [ %22, %21 ], [ %27, %24 ]
  br label %codeRepl1

codeRepl1:                                        ; preds = %30
  %targetBlock = call i1 @_Z3subi..split(i32 %31)
  br i1 %targetBlock, label %32, label %38

32:                                               ; preds = %codeRepl1, %32
  %33 = phi i32 [ %36, %32 ], [ 0, %codeRepl1 ]
  %34 = phi i32 [ %35, %32 ], [ %31, %codeRepl1 ]
  %35 = add nsw i32 %34, -5
  %36 = add nuw nsw i32 %33, 1
  %37 = icmp slt i32 %33, %35
  br i1 %37, label %38, label %32, !llvm.loop !15

38:                                               ; preds = %codeRepl1, %32
  %39 = phi i32 [ %31, %codeRepl1 ], [ %35, %32 ]
  %40 = icmp slt i32 %39, -100
  br i1 %40, label %codeRepl2, label %41

codeRepl2:                                        ; preds = %38
  %lt.cast5 = bitcast i32* %.loc3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast5)
  call void @_Z3subi.extracted.1(i32 %39, i32* %.loc3)
  %.reload4 = load i32, i32* %.loc3, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast5)
  br label %41

41:                                               ; preds = %codeRepl2, %38
  %42 = phi i32 [ %39, %38 ], [ %.reload4, %codeRepl2 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress ssp uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #2 {
  %.loc = alloca i32, align 4
  %2 = alloca %class.H, align 1
  %3 = getelementptr inbounds %class.H, %class.H* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #7
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %5, %1
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
  br i1 %14, label %5, label %15, !llvm.loop !16

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %5 ]
  br label %codeRepl

codeRepl:                                         ; preds = %15
  %lt.cast = bitcast i32* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  call void @_Z8digitSumi..split(i32 %0, %class.H* %2, i32 %16, i8* %3, i32* %.loc)
  %.reload = load i32, i32* %.loc, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  br label %.ret

.ret:                                             ; preds = %codeRepl
  ret i32 %.reload
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #7
  call void @_ZN1H1pEv(%class.H* nonnull %3)
  %5 = call i32 @_Z8digitSumi(i32 15)
  %6 = call i32 @_Z8digitSumi(i32 25)
  %7 = add nsw i32 %6, %5
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #7
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal void @_Z3subi.extracted(i32 %0, i32* %.out) #5 {
newFuncRoot:
  br label %1

1:                                                ; preds = %newFuncRoot, %1
  %2 = phi i32 [ %5, %1 ], [ 0, %newFuncRoot ]
  %3 = phi i32 [ %4, %1 ], [ %0, %newFuncRoot ]
  %4 = add nsw i32 %3, -5
  store i32 %4, i32* %.out, align 4
  %5 = add nuw nsw i32 %2, 1
  %6 = icmp slt i32 %5, %4
  br i1 %6, label %1, label %.exitStub, !llvm.loop !17

.exitStub:                                        ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal i1 @_Z3subi..split(i32 %0) #5 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %1 = icmp slt i32 %0, -50
  br i1 %1, label %.exitStub, label %.exitStub1

.exitStub:                                        ; preds = %.split
  ret i1 true

.exitStub1:                                       ; preds = %.split
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable
define internal void @_Z3subi.extracted.1(i32 %0, i32* %.out) #5 {
newFuncRoot:
  br label %1

1:                                                ; preds = %newFuncRoot, %1
  %2 = phi i32 [ %5, %1 ], [ 0, %newFuncRoot ]
  %3 = phi i32 [ %4, %1 ], [ %0, %newFuncRoot ]
  %4 = add nsw i32 %3, -5
  store i32 %4, i32* %.out, align 4
  %5 = add nuw nsw i32 %2, 1
  %6 = icmp slt i32 %2, %4
  br i1 %6, label %.exitStub, label %1, !llvm.loop !18

.exitStub:                                        ; preds = %1
  ret void
}

; Function Attrs: mustprogress noinline ssp uwtable
define internal void @_Z8digitSumi..split(i32 %0, %class.H* %1, i32 %2, i8* %3, i32* %.out) #6 {
newFuncRoot:
  br label %.split

.split:                                           ; preds = %newFuncRoot
  %4 = call i32 @_Z3subi(i32 %0)
  call void @_ZN1H1pEv(%class.H* nonnull %1)
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %codeRepl

codeRepl:                                         ; preds = %.split
  call void @_Z8digitSumi..split.extracted(%class.H* %1, i32 %2, i32 %4, i32* %.out)
  br label %.ret.exitStub

.ret.exitStub:                                    ; preds = %codeRepl
  ret void
}

; Function Attrs: mustprogress noinline ssp uwtable
define internal void @_Z8digitSumi..split.extracted(%class.H* %0, i32 %1, i32 %2, i32* %.out) #6 {
newFuncRoot:
  br label %3

3:                                                ; preds = %newFuncRoot
  call void @_ZN1H1pEv(%class.H* nonnull %0)
  %4 = sub nsw i32 %1, %2
  store i32 %4, i32* %.out, align 4
  br label %.ret.exitStub.exitStub

.ret.exitStub.exitStub:                           ; preds = %3
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress noinline ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind }

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
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}

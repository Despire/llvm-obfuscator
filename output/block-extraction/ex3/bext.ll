; ModuleID = 'output/block-extraction/ex3/ex3.ll'
source_filename = "input/block-extraction/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %.loc = alloca i32, align 4
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add nsw i32 %1, %0
  br label %10

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, %1
  br i1 %7, label %8, label %codeRepl

8:                                                ; preds = %6
  %9 = mul i32 %1, -2
  br label %10

codeRepl:                                         ; preds = %6
  %lt.cast = bitcast i32* %.loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %lt.cast)
  call void @_Z6decideii.extracted(i32 %0, i32 %1, i32* %.loc)
  %.reload = load i32, i32* %.loc, align 4
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %lt.cast)
  br label %10

10:                                               ; preds = %codeRepl, %8, %4
  %11 = phi i32 [ %5, %4 ], [ %9, %8 ], [ %.reload, %codeRepl ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @_Z6decideii(i32 15, i32 25)
  ret i32 %3
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

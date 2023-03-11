; ModuleID = 'output/opaque-predicates/ex5/ex5.ll'
source_filename = "input/opaque-predicates/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z12duffs_deviceiPiS_(i32 %0, i32* nocapture readonly %1, i32* nocapture %2) local_unnamed_addr #0 {
"0":
  %3 = icmp eq i32 %0, 0
  %4 = icmp ne i32 %0, 0
  %5 = or i1 %3, %4
  %6 = add nsw i32 %0, 7
  br i1 %5, label %splitBB, label %"5"

splitBB:                                          ; preds = %"0"
  %7 = icmp eq i1 %5, false
  %8 = icmp ne i1 %5, false
  %9 = or i1 %7, %8
  %10 = sdiv i32 %6, 8
  %11 = srem i32 %0, 8
  br i1 %9, label %splitBB1, label %"5"

splitBB1:                                         ; preds = %splitBB
  switch i32 %11, label %"9" [
    i32 0, label %"1"
    i32 7, label %"2"
    i32 6, label %"3"
    i32 5, label %"4"
    i32 4, label %"5"
    i32 3, label %"6"
    i32 2, label %"7"
    i32 1, label %"8"
  ]

"1":                                              ; preds = %"8", %splitBB27, %splitBB1
  %12 = phi i32* [ %114, %splitBB27 ], [ %1, %splitBB1 ], [ null, %"8" ]
  %13 = phi i32 [ %119, %splitBB27 ], [ %10, %splitBB1 ], [ %0, %"8" ]
  %14 = icmp eq i1 %3, false
  %15 = icmp ne i1 %3, false
  %16 = or i1 %14, %15
  br i1 %16, label %splitBB2, label %"2"

splitBB2:                                         ; preds = %"1"
  %17 = icmp eq i1 %4, false
  %18 = icmp ne i1 %4, false
  %19 = or i1 %17, %18
  %20 = getelementptr inbounds i32, i32* %12, i64 1
  br i1 %19, label %splitBB3, label %"2"

splitBB3:                                         ; preds = %splitBB2
  %21 = icmp eq i32 %6, 0
  %22 = icmp ne i32 %6, 0
  %23 = or i1 %21, %22
  %24 = load i32, i32* %12, align 4, !tbaa !10
  store i32 %24, i32* %2, align 4, !tbaa !10
  br i1 %23, label %splitBB4, label %"2"

splitBB4:                                         ; preds = %splitBB3
  br label %"2"

"2":                                              ; preds = %splitBB3, %splitBB2, %"1", %splitBB4, %splitBB1
  %25 = phi i32* [ %20, %splitBB4 ], [ %1, %splitBB1 ], [ null, %"1" ], [ null, %splitBB2 ], [ null, %splitBB3 ]
  %26 = phi i32 [ %13, %splitBB4 ], [ %10, %splitBB1 ], [ %0, %"1" ], [ %0, %splitBB2 ], [ %0, %splitBB3 ]
  %27 = icmp eq i1 %5, false
  %28 = icmp ne i1 %5, false
  %29 = or i1 %27, %28
  %30 = getelementptr inbounds i32, i32* %25, i64 1
  br i1 %29, label %splitBB5, label %"3"

splitBB5:                                         ; preds = %"2"
  %31 = icmp eq i1 %29, false
  %32 = icmp ne i1 %29, false
  %33 = or i1 %31, %32
  %34 = load i32, i32* %25, align 4, !tbaa !10
  store i32 %34, i32* %2, align 4, !tbaa !10
  br i1 %33, label %splitBB6, label %"3"

splitBB6:                                         ; preds = %splitBB5
  br label %"3"

"3":                                              ; preds = %splitBB5, %"2", %splitBB6, %splitBB1
  %35 = phi i32* [ %30, %splitBB6 ], [ %1, %splitBB1 ], [ null, %"2" ], [ null, %splitBB5 ]
  %36 = phi i32 [ %26, %splitBB6 ], [ %10, %splitBB1 ], [ %0, %"2" ], [ %0, %splitBB5 ]
  %37 = icmp eq i32 %6, 0
  %38 = icmp ne i32 %6, 0
  %39 = or i1 %37, %38
  %40 = getelementptr inbounds i32, i32* %35, i64 1
  br i1 %39, label %splitBB7, label %"4"

splitBB7:                                         ; preds = %"3"
  %41 = icmp eq i1 %39, false
  %42 = icmp ne i1 %39, false
  %43 = or i1 %41, %42
  br i1 %43, label %splitBB8, label %"4"

splitBB8:                                         ; preds = %splitBB7
  %44 = icmp eq i1 %39, false
  %45 = icmp ne i1 %39, false
  %46 = or i1 %44, %45
  %47 = load i32, i32* %35, align 4, !tbaa !10
  store i32 %47, i32* %2, align 4, !tbaa !10
  br i1 %46, label %splitBB9, label %"4"

splitBB9:                                         ; preds = %splitBB8
  br label %"4"

"4":                                              ; preds = %splitBB8, %splitBB7, %"3", %splitBB9, %splitBB1
  %48 = phi i32* [ %40, %splitBB9 ], [ %1, %splitBB1 ], [ null, %"3" ], [ null, %splitBB7 ], [ null, %splitBB8 ]
  %49 = phi i32 [ %36, %splitBB9 ], [ %10, %splitBB1 ], [ %0, %"3" ], [ %0, %splitBB7 ], [ %0, %splitBB8 ]
  %50 = icmp eq i1 %5, false
  %51 = icmp ne i1 %5, false
  %52 = or i1 %50, %51
  br i1 %52, label %splitBB10, label %"5"

splitBB10:                                        ; preds = %"4"
  %53 = icmp eq i1 %4, false
  %54 = icmp ne i1 %4, false
  %55 = or i1 %53, %54
  %56 = getelementptr inbounds i32, i32* %48, i64 1
  br i1 %55, label %splitBB11, label %"5"

splitBB11:                                        ; preds = %splitBB10
  %57 = icmp eq i1 %4, false
  %58 = icmp ne i1 %4, false
  %59 = or i1 %57, %58
  %60 = load i32, i32* %48, align 4, !tbaa !10
  store i32 %60, i32* %2, align 4, !tbaa !10
  br i1 %59, label %splitBB12, label %"5"

splitBB12:                                        ; preds = %splitBB11
  br label %"5"

"5":                                              ; preds = %splitBB11, %splitBB10, %"4", %splitBB, %"0", %splitBB12, %splitBB1
  %61 = phi i32* [ %56, %splitBB12 ], [ %1, %splitBB1 ], [ null, %"0" ], [ null, %splitBB ], [ null, %"4" ], [ null, %splitBB10 ], [ null, %splitBB11 ]
  %62 = phi i32 [ %49, %splitBB12 ], [ %10, %splitBB1 ], [ %0, %"0" ], [ %0, %splitBB ], [ %0, %"4" ], [ %0, %splitBB10 ], [ %0, %splitBB11 ]
  %63 = icmp eq i1 %3, false
  %64 = icmp ne i1 %3, false
  %65 = or i1 %63, %64
  br i1 %65, label %splitBB13, label %"6"

splitBB13:                                        ; preds = %"5"
  %66 = icmp eq i1 %4, false
  %67 = icmp ne i1 %4, false
  %68 = or i1 %66, %67
  %69 = getelementptr inbounds i32, i32* %61, i64 1
  %70 = load i32, i32* %61, align 4, !tbaa !10
  br i1 %68, label %splitBB14, label %"6"

splitBB14:                                        ; preds = %splitBB13
  %71 = icmp eq i1 %63, false
  %72 = icmp ne i1 %63, false
  %73 = or i1 %71, %72
  br i1 %73, label %splitBB15, label %"6"

splitBB15:                                        ; preds = %splitBB14
  %74 = icmp eq i1 %4, false
  %75 = icmp ne i1 %4, false
  %76 = or i1 %74, %75
  store i32 %70, i32* %2, align 4, !tbaa !10
  br i1 %76, label %splitBB16, label %"6"

splitBB16:                                        ; preds = %splitBB15
  br label %"6"

"6":                                              ; preds = %splitBB15, %splitBB14, %splitBB13, %"5", %splitBB16, %splitBB1
  %77 = phi i32* [ %69, %splitBB16 ], [ %1, %splitBB1 ], [ null, %"5" ], [ null, %splitBB13 ], [ null, %splitBB14 ], [ null, %splitBB15 ]
  %78 = phi i32 [ %62, %splitBB16 ], [ %10, %splitBB1 ], [ %0, %"5" ], [ %0, %splitBB13 ], [ %70, %splitBB14 ], [ %70, %splitBB15 ]
  %79 = icmp eq i32 %0, 0
  %80 = icmp ne i32 %0, 0
  %81 = or i1 %79, %80
  %82 = getelementptr inbounds i32, i32* %77, i64 1
  br i1 %81, label %splitBB17, label %"7"

splitBB17:                                        ; preds = %"6"
  %83 = icmp eq i1 %3, false
  %84 = icmp ne i1 %3, false
  %85 = or i1 %83, %84
  br i1 %85, label %splitBB18, label %"7"

splitBB18:                                        ; preds = %splitBB17
  %86 = icmp eq i1 %84, false
  %87 = icmp ne i1 %84, false
  %88 = or i1 %86, %87
  %89 = load i32, i32* %77, align 4, !tbaa !10
  br i1 %88, label %splitBB19, label %"7"

splitBB19:                                        ; preds = %splitBB18
  %90 = icmp eq i1 %5, false
  %91 = icmp ne i1 %5, false
  %92 = or i1 %90, %91
  br i1 %92, label %splitBB20, label %"7"

splitBB20:                                        ; preds = %splitBB19
  %93 = icmp eq i1 %5, false
  %94 = icmp ne i1 %5, false
  %95 = or i1 %93, %94
  br i1 %95, label %splitBB21, label %"7"

splitBB21:                                        ; preds = %splitBB20
  %96 = icmp eq i1 %90, false
  %97 = icmp ne i1 %90, false
  %98 = or i1 %96, %97
  store i32 %89, i32* %2, align 4, !tbaa !10
  br i1 %98, label %splitBB22, label %"7"

splitBB22:                                        ; preds = %splitBB21
  br label %"7"

"7":                                              ; preds = %splitBB21, %splitBB20, %splitBB19, %splitBB18, %splitBB17, %"6", %splitBB22, %splitBB1
  %99 = phi i32* [ %82, %splitBB22 ], [ %1, %splitBB1 ], [ null, %"6" ], [ null, %splitBB17 ], [ null, %splitBB18 ], [ null, %splitBB19 ], [ null, %splitBB20 ], [ null, %splitBB21 ]
  %100 = phi i32 [ %78, %splitBB22 ], [ %10, %splitBB1 ], [ %0, %"6" ], [ %0, %splitBB17 ], [ %0, %splitBB18 ], [ %0, %splitBB19 ], [ %0, %splitBB20 ], [ %0, %splitBB21 ]
  %101 = icmp eq i1 %3, false
  %102 = icmp ne i1 %3, false
  %103 = or i1 %101, %102
  %104 = getelementptr inbounds i32, i32* %99, i64 1
  br i1 %103, label %splitBB23, label %"8"

splitBB23:                                        ; preds = %"7"
  %105 = icmp eq i32 %100, 0
  %106 = icmp ne i32 %100, 0
  %107 = or i1 %105, %106
  %108 = load i32, i32* %99, align 4, !tbaa !10
  store i32 %108, i32* %2, align 4, !tbaa !10
  br i1 %107, label %splitBB24, label %"8"

splitBB24:                                        ; preds = %splitBB23
  br label %"8"

"8":                                              ; preds = %splitBB23, %"7", %splitBB24, %splitBB1
  %109 = phi i32* [ %1, %splitBB1 ], [ %104, %splitBB24 ], [ null, %"7" ], [ null, %splitBB23 ]
  %110 = phi i32 [ %10, %splitBB1 ], [ %100, %splitBB24 ], [ %0, %"7" ], [ %0, %splitBB23 ]
  %111 = icmp eq i1 %4, false
  %112 = icmp ne i1 %4, false
  %113 = or i1 %111, %112
  %114 = getelementptr inbounds i32, i32* %109, i64 1
  br i1 %113, label %splitBB25, label %"1"

splitBB25:                                        ; preds = %"8"
  %115 = icmp eq i32 %0, 0
  %116 = icmp ne i32 %0, 0
  %117 = or i1 %115, %116
  %118 = load i32, i32* %109, align 4, !tbaa !10
  store i32 %118, i32* %2, align 4, !tbaa !10
  %119 = add nsw i32 %110, -1
  br i1 %117, label %splitBB26, label %"9"

splitBB26:                                        ; preds = %splitBB25
  %120 = icmp eq i1 %111, false
  %121 = icmp ne i1 %111, false
  %122 = or i1 %120, %121
  %123 = icmp sgt i32 %110, 1
  br i1 %122, label %splitBB27, label %"9"

splitBB27:                                        ; preds = %splitBB26
  br i1 %123, label %"1", label %"9", !llvm.loop !14

"9":                                              ; preds = %splitBB26, %splitBB25, %splitBB27, %splitBB1
  %124 = phi i32* [ %1, %splitBB1 ], [ %114, %splitBB27 ], [ null, %splitBB25 ], [ null, %splitBB26 ]
  %125 = load i32, i32* %124, align 4, !tbaa !10
  %126 = add nsw i32 %125, %0
  %127 = load i32, i32* %2, align 4, !tbaa !10
  %128 = add nsw i32 %126, %127
  ret i32 %128
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
"0":
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #2
  store i32 1, i32* %2, align 4, !tbaa !10
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #2
  store i32 5, i32* %3, align 4, !tbaa !10
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #2
  store i32 1, i32* %4, align 4, !tbaa !10
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #2
  store i32 5, i32* %5, align 4, !tbaa !10
  %10 = call i32 @_Z12duffs_deviceiPiS_(i32 15, i32* nonnull %2, i32* nonnull %3)
  %11 = call i32 @_Z12duffs_deviceiPiS_(i32 25, i32* nonnull %4, i32* nonnull %5)
  %12 = add nsw i32 %11, %10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #2
  ret i32 %12
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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}

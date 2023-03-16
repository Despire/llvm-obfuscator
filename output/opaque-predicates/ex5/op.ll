; ModuleID = 'output/opaque-predicates/ex5/ex5.ll'
source_filename = "input/opaque-predicates/ex5/ex5.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define i32 @_Z1diPiS_(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %0, 0
  %5 = icmp ne i32 %0, 0
  %6 = xor i1 %5, true
  %7 = and i1 %4, %6
  %8 = add i1 %7, %5
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = sub i32 %0, %0
  %11 = sub i32 %0, %0
  %12 = sdiv i32 %0, %0
  %13 = sub i32 %0, %0
  %14 = add i32 %0, %0
  %15 = mul i32 %0, %0
  br label %16

16:                                               ; preds = %3, %9
  %17 = icmp sgt i32 %0, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %16
  %19 = icmp eq i1 %7, false
  %20 = icmp ne i1 %7, false
  %21 = xor i1 %19, true
  %22 = and i1 %21, false
  %23 = and i1 %19, true
  %24 = or i1 %22, %23
  %25 = xor i1 %20, true
  %26 = and i1 %25, false
  %27 = and i1 %20, true
  %28 = or i1 %26, %27
  %29 = xor i1 %24, %28
  %30 = xor i1 %19, true
  %31 = xor i1 %20, true
  %32 = or i1 %30, %31
  %33 = xor i1 %32, true
  %34 = and i1 %33, true
  %35 = or i1 %29, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %18
  %37 = sdiv i1 %6, %6
  %38 = sub i1 %7, %7
  %39 = sdiv i1 %8, %8
  %40 = mul i1 %5, %5
  %41 = mul i32 %0, %0
  %42 = sdiv i1 %7, %7
  %43 = sub i1 %8, %8
  br label %44

44:                                               ; preds = %18, %36
  %45 = load i32, i32* %2, align 4, !tbaa !10
  br label %64

46:                                               ; preds = %16
  %47 = icmp eq i1 %5, false
  %48 = icmp ne i1 %5, false
  %49 = and i1 %47, %48
  %50 = xor i1 %47, %48
  %51 = or i1 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = add i1 %17, %17
  %54 = sub i1 %7, %7
  %55 = mul i1 %8, %8
  %56 = sub i1 %17, %17
  %57 = mul i1 %8, %8
  %58 = sdiv i1 %4, %4
  %59 = sub i1 %7, %7
  %60 = sdiv i1 %8, %8
  br label %61

61:                                               ; preds = %46, %52
  %62 = add nuw nsw i32 %0, 7
  %63 = lshr i32 %62, 3
  br label %95

64:                                               ; preds = %113, %44
  %65 = phi i32 [ %45, %44 ], [ %97, %113 ]
  %66 = load i32, i32* %1, align 4, !tbaa !10
  %67 = add nsw i32 %66, %0
  %68 = add nsw i32 %67, %65
  %69 = icmp eq i1 %7, false
  %70 = icmp ne i1 %7, false
  %71 = xor i1 %69, true
  %72 = and i1 %71, false
  %73 = and i1 %69, true
  %74 = or i1 %72, %73
  %75 = xor i1 %70, true
  %76 = and i1 %75, false
  %77 = and i1 %70, true
  %78 = or i1 %76, %77
  %79 = xor i1 %74, %78
  %80 = xor i1 %69, true
  %81 = xor i1 %70, true
  %82 = or i1 %80, %81
  %83 = xor i1 %82, true
  %84 = and i1 %83, true
  %85 = or i1 %79, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %64
  %87 = add i1 %5, %5
  %88 = sub i1 %5, %5
  %89 = sub i1 %17, %17
  %90 = sub i1 %4, %4
  %91 = add i1 %5, %5
  %92 = mul i1 %8, %8
  %93 = mul i1 %5, %5
  br label %94

94:                                               ; preds = %64, %86
  ret i32 %68

95:                                               ; preds = %113, %61
  %96 = phi i32 [ %114, %113 ], [ 0, %61 ]
  %97 = load i32, i32* %1, align 4, !tbaa !10
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4, !tbaa !10
  %99 = icmp sge i1 %4, %4
  %100 = icmp sle i1 %4, %4
  %101 = xor i1 %99, true
  %102 = xor i1 %100, true
  %103 = or i1 %101, %102
  %104 = xor i1 %103, true
  %105 = and i1 %104, true
  br i1 %105, label %106, label %113

106:                                              ; preds = %95
  %107 = sub i1 %7, %7
  %108 = add i1 %5, %5
  %109 = add i32 %63, %63
  %110 = mul i1 %5, %5
  %111 = mul i32 %0, %0
  %112 = sub i32 %0, %0
  br label %113

113:                                              ; preds = %95, %106
  store i32 %97, i32* %2, align 4, !tbaa !10
  %114 = add nuw nsw i32 %96, 1
  %115 = icmp eq i32 %114, %63
  br i1 %115, label %64, label %95, !llvm.loop !14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #1 {
  ret i32 54
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}

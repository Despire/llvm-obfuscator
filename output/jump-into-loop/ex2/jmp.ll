; ModuleID = 'output/jump-into-loop/ex2/ex2.ll'
source_filename = "input/jump-into-loop/ex2/ex2.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z4testv() local_unnamed_addr #0 {
  %1 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  call void @_Z4testv()
  %2 = add i32 %0, 9
  %3 = icmp ult i32 %2, 19
  br i1 %3, label %79, label %.preheader

.preheader:                                       ; preds = %1
  %4 = mul i32 %0, 2
  %5 = mul i32 %0, 2
  %6 = add i32 2, %5
  %7 = mul i32 %4, %6
  %8 = srem i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = mul i32 %0, %0
  %11 = add i32 %10, %0
  %12 = srem i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = and i1 %9, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %.preheader
  br label %31

16:                                               ; preds = %.preheader
  br label %17

17:                                               ; preds = %31, %16, %73
  %18 = phi i32 [ %76, %73 ], [ 1, %16 ], [ 0, %31 ]
  %19 = phi i32 [ %75, %73 ], [ %0, %16 ], [ 0, %31 ]
  %20 = phi i32 [ %69, %73 ], [ 0, %16 ], [ 0, %31 ]
  %21 = mul i32 %2, %2
  %22 = add i32 %21, %2
  %23 = mul i32 %22, 3
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = mul i32 %2, %2
  %27 = add i32 %26, %2
  %28 = srem i32 %27, 2
  %29 = icmp eq i32 %28, 0
  %30 = and i1 %25, %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %15, %31, %17
  %32 = sdiv i32 94, 5
  %33 = mul i32 74, 3
  %34 = add i32 97, 2
  %35 = sdiv i32 89, 63
  %36 = mul i32 59, 54
  %37 = sdiv i32 29, 29
  %38 = add i32 53, 82
  %39 = sub i32 22, 110
  %40 = sdiv i32 81, 47
  %41 = add i32 %34, 109
  %42 = sub i32 %40, 55
  %43 = sub i32 %38, 68
  %44 = sdiv i32 %37, 48
  %45 = sub i32 %34, 102
  %46 = sub i32 %36, 24
  %47 = add i32 %39, 19
  %48 = mul i32 %37, 5
  %49 = add i32 0, %41
  %50 = add i32 %49, %42
  %51 = add i32 %50, %43
  %52 = add i32 %51, %44
  %53 = add i32 %52, %45
  %54 = add i32 %53, %46
  %55 = add i32 %54, %47
  %56 = add i32 %55, %48
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  %59 = mul i32 %56, %56
  %60 = add i32 %59, %56
  %61 = mul i32 %60, 3
  %62 = srem i32 %61, 2
  %63 = icmp eq i32 %62, 0
  %64 = or i1 %58, %63
  br i1 %64, label %17, label %31

65:                                               ; preds = %17
  %66 = sdiv i32 %19, 10
  %67 = add i32 %19, 19
  %68 = icmp ult i32 %67, 10
  %69 = select i1 %68, i32 %18, i32 %20
  %70 = select i1 %68, i32 1, i32 %20
  %71 = add nsw i32 %70, %66
  %72 = icmp eq i32 %71, 5
  br i1 %72, label %.loopexit, label %73

73:                                               ; preds = %65
  %74 = shl nsw i32 %69, 1
  %75 = add nsw i32 %71, %74
  %76 = add nsw i32 %69, 1
  %77 = add i32 %75, 9
  %78 = icmp ult i32 %77, 19
  br i1 %78, label %.loopexit, label %17, !llvm.loop !10

.loopexit:                                        ; preds = %65, %73
  %.ph = phi i32 [ %69, %65 ], [ %76, %73 ]
  br label %79

79:                                               ; preds = %.loopexit, %1
  %80 = phi i32 [ 1, %1 ], [ %.ph, %.loopexit ]
  ret i32 %80
}

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #2 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = call i32 @_Z8digitSumi(i32 25)
  %5 = add nsw i32 %4, %3
  ret i32 %5
}

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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

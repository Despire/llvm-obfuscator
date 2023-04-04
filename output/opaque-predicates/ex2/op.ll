; ModuleID = 'output/opaque-predicates/ex2/ex2.ll'
source_filename = "input/opaque-predicates/ex2/ex2.cpp"
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
  %2 = srem i32 %0, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @_Z4testv()
  br label %6

5:                                                ; preds = %1
  call void @_Z4testv()
  br label %6

6:                                                ; preds = %5, %4
  br label %7

7:                                                ; preds = %76, %6
  %8 = phi i32 [ %0, %6 ], [ %11, %76 ]
  %9 = phi i32 [ 0, %6 ], [ %10, %76 ]
  %10 = add nuw nsw i32 %9, 1
  %11 = sdiv i32 %8, 10
  %12 = add i32 %8, 9
  %13 = icmp ult i32 %12, 19
  %14 = add i32 %0, 1
  %15 = mul i32 3, %14
  %16 = add i32 %0, 2
  %17 = mul i32 %15, %16
  %18 = srem i32 %17, 6
  %19 = icmp eq i32 %18, 0
  %20 = mul i32 %0, %0
  %21 = add i32 %20, %0
  %22 = srem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = srem i32 %0, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %7
  %27 = xor i1 %19, true
  %28 = or i1 %27, %23
  %29 = xor i1 %19, true
  %30 = sub i1 %28, %29
  %31 = xor i1 %13, true
  %32 = or i1 %31, %30
  %33 = xor i1 %13, true
  %34 = sub i1 %32, %33
  br label %76

35:                                               ; preds = %7
  %36 = xor i1 %19, true
  %37 = and i1 %36, true
  %38 = and i1 %19, false
  %39 = or i1 %37, %38
  %40 = xor i1 %39, false
  %41 = xor i1 %23, true
  %42 = and i1 %40, %41
  %43 = add i1 %42, %23
  %44 = xor i1 %19, true
  %45 = and i1 %44, true
  %46 = and i1 %19, false
  %47 = or i1 %45, %46
  %48 = sub i1 false, %47
  %49 = add i1 %43, %48
  %50 = xor i1 %13, true
  %51 = and i1 %50, true
  %52 = and i1 %13, false
  %53 = or i1 %51, %52
  %54 = xor i1 %53, false
  %55 = xor i1 %54, true
  %56 = and i1 %55, true
  %57 = and i1 %54, false
  %58 = or i1 %56, %57
  %59 = xor i1 %49, true
  %60 = and i1 %59, true
  %61 = and i1 %49, false
  %62 = or i1 %60, %61
  %63 = xor i1 %58, %62
  %64 = xor i1 %54, true
  %65 = xor i1 %49, true
  %66 = or i1 %64, %65
  %67 = xor i1 %66, true
  %68 = and i1 %67, true
  %69 = or i1 %63, %68
  %70 = or i1 %13, true
  %71 = and i1 %13, true
  %72 = sub i1 %70, %71
  %73 = add i1 %69, false
  %74 = sub i1 %73, %72
  %75 = sub i1 %74, false
  br label %76

76:                                               ; preds = %35, %26
  %77 = phi i1 [ %40, %35 ], [ %27, %26 ]
  %78 = phi i1 [ %43, %35 ], [ %28, %26 ]
  %79 = phi i1 [ %47, %35 ], [ %29, %26 ]
  %80 = phi i1 [ %49, %35 ], [ %30, %26 ]
  %81 = phi i1 [ %54, %35 ], [ %31, %26 ]
  %82 = phi i1 [ %69, %35 ], [ %32, %26 ]
  %83 = phi i1 [ %72, %35 ], [ %33, %26 ]
  %84 = phi i1 [ %75, %35 ], [ %34, %26 ]
  br i1 %84, label %85, label %7, !llvm.loop !10

85:                                               ; preds = %76
  %86 = srem i32 %12, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %90

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %88
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #2 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = call i32 @_Z8digitSumi(i32 25)
  %5 = add nsw i32 %4, %3
  %6 = add i32 %0, 1
  %7 = mul i32 3, %6
  %8 = add i32 %0, 2
  %9 = mul i32 %7, %8
  %10 = srem i32 %9, 6
  %11 = icmp eq i32 %10, 0
  %12 = mul i32 %0, %0
  %13 = add i32 %12, %0
  %14 = srem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = xor i1 %15, true
  %17 = and i1 %11, %16
  %18 = add i1 %17, %15
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = sdiv i32 57, 2
  %21 = add i32 65, 66
  %22 = sdiv i32 113, 126
  %23 = sub i32 11, 61
  %24 = sdiv i32 86, 74
  %25 = sub i32 65, 94
  %26 = sdiv i32 42, 21
  br label %27

27:                                               ; preds = %2, %19
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

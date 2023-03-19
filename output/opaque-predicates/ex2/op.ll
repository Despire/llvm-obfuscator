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
  call void @_Z4testv()
  %2 = srem i32 %0, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %4
  br label %7

7:                                                ; preds = %39, %6
  %8 = phi i32 [ %0, %6 ], [ %11, %39 ]
  %9 = phi i32 [ 0, %6 ], [ %10, %39 ]
  %10 = add nuw nsw i32 %9, 1
  %11 = sdiv i32 %8, 10
  %12 = add i32 %8, 9
  %13 = icmp eq i32 %0, 0
  %14 = icmp ne i32 %0, 0
  %15 = xor i1 %13, true
  %16 = and i1 %15, false
  %17 = and i1 %13, true
  %18 = or i1 %16, %17
  %19 = xor i1 %14, true
  %20 = and i1 %19, false
  %21 = and i1 %14, true
  %22 = or i1 %20, %21
  %23 = xor i1 %18, %22
  %24 = xor i1 %13, true
  %25 = xor i1 %14, true
  %26 = or i1 %24, %25
  %27 = xor i1 %26, true
  %28 = and i1 %27, true
  %29 = or i1 %23, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %7
  %31 = sdiv i32 -341937562, 1613225169
  %32 = sub i32 1904027927, -53319
  %33 = sub i32 1217948289, 593660589
  %34 = add i32 -718764482, -335126738
  %35 = mul i32 -1169907933, -1050535341
  %36 = add i32 1690739102, -1086316295
  %37 = sub i32 1106720571, -1358343446
  %38 = sdiv i32 -1474138743, 549639291
  br label %39

39:                                               ; preds = %7, %30
  %40 = icmp ult i32 %12, 19
  %41 = and i32 %0, 1
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %0, 1
  %44 = icmp eq i32 %43, 1
  %45 = xor i1 %42, true
  %46 = and i1 %45, false
  %47 = and i1 %42, true
  %48 = or i1 %46, %47
  %49 = xor i1 %44, true
  %50 = and i1 %49, false
  %51 = and i1 %44, true
  %52 = or i1 %50, %51
  %53 = xor i1 %48, %52
  %54 = xor i1 %42, true
  %55 = xor i1 %44, true
  %56 = or i1 %54, %55
  %57 = xor i1 %56, true
  %58 = and i1 %57, true
  %59 = or i1 %53, %58
  %60 = xor i1 %40, true
  %61 = xor i1 %59, true
  %62 = or i1 %60, %61
  %63 = xor i1 %62, true
  %64 = and i1 %63, true
  br i1 %64, label %65, label %7, !llvm.loop !10

65:                                               ; preds = %39
  %66 = icmp sge i1 %49, %49
  %67 = icmp sle i1 %49, %49
  %68 = xor i1 %66, true
  %69 = or i1 %68, %67
  %70 = xor i1 %66, true
  %71 = sub i1 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = add i32 -569459203, -1841093520
  %74 = sub i32 79495543, 2130484880
  %75 = sdiv i32 -1578064572, -1437441193
  %76 = mul i32 -398436606, 1428595511
  %77 = add i32 -334994739, 1302570621
  %78 = mul i32 473875570, -1607268594
  %79 = mul i32 899871668, 1319560358
  %80 = add i32 -774635534, -846928865
  br label %81

81:                                               ; preds = %65, %72
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #2 {
  %3 = call i32 @_Z8digitSumi(i32 15)
  %4 = icmp eq i32 %0, 0
  %5 = icmp ne i32 %0, 0
  %6 = xor i1 %4, true
  %7 = and i1 %6, false
  %8 = and i1 %4, true
  %9 = or i1 %7, %8
  %10 = xor i1 %5, true
  %11 = and i1 %10, false
  %12 = and i1 %5, true
  %13 = or i1 %11, %12
  %14 = xor i1 %9, %13
  %15 = xor i1 %4, true
  %16 = xor i1 %5, true
  %17 = or i1 %15, %16
  %18 = xor i1 %17, true
  %19 = and i1 %18, true
  %20 = or i1 %14, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = mul i32 292937270, -2126491799
  %23 = sub i32 -209236431, -1836331790
  %24 = sdiv i32 -751643929, -1518700118
  %25 = mul i32 -401255694, -880082369
  %26 = mul i32 -297546178, 1005837691
  %27 = add i32 1570348966, 87327712
  %28 = mul i32 284907370, 1365574505
  %29 = sdiv i32 986542269, 292944143
  br label %30

30:                                               ; preds = %2, %21
  %31 = call i32 @_Z8digitSumi(i32 25)
  %32 = add nsw i32 %31, %3
  ret i32 %32
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

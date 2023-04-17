; ModuleID = 'output/const-obfuscation/ex3/ex3.ll'
source_filename = "input/const-obfuscation/ex3/ex3.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z6decideii(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add nsw i32 %1, %0
  br label %106

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, %1
  br i1 %7, label %8, label %59

8:                                                ; preds = %6
  %9 = sext i32 %0 to i64
  %10 = or i64 %9, -8288473769543057564
  %11 = xor i64 %9, -1
  %12 = and i64 %11, 5981708067402748073
  %13 = and i64 %9, -5981708067402748074
  %14 = or i64 %12, %13
  %15 = xor i64 -2307489192069877811, %14
  %16 = xor i64 %9, -1
  %17 = or i64 8288473769543057563, %16
  %18 = xor i64 %17, -1
  %19 = and i64 %18, -1
  %20 = or i64 %15, %19
  %21 = sext i32 %0 to i64
  %22 = and i64 %21, -4918060672388896987
  %23 = xor i64 %21, -1
  %24 = xor i64 -4918060672388896987, %23
  %25 = and i64 %24, -4918060672388896987
  %26 = sext i32 %0 to i64
  %27 = add i64 %26, 3944222506890947146
  %28 = add i64 3685200233419521719, %26
  %29 = sub i64 %28, -259022273471425427
  %30 = xor i64 %25, 5462593569474046875
  %31 = xor i64 %30, %22
  %32 = xor i64 %31, %20
  %33 = xor i64 %32, %29
  %34 = xor i64 %33, %10
  %35 = xor i64 %34, %27
  %36 = sext i32 %0 to i64
  %37 = or i64 %36, -6388833646436436613
  %38 = and i64 -6388833646436436613, %36
  %39 = xor i64 -6388833646436436613, %36
  %40 = or i64 %38, %39
  %41 = sext i32 %1 to i64
  %42 = add i64 %41, -7988975337702250978
  %43 = and i64 -7988975337702250978, %41
  %44 = or i64 -7988975337702250978, %41
  %45 = add i64 %43, %44
  %46 = sext i32 %0 to i64
  %47 = add i64 %46, -6637677521464595208
  %48 = sub i64 0, %46
  %49 = sub i64 -6637677521464595208, %48
  %50 = xor i64 %37, %45
  %51 = xor i64 %50, %42
  %52 = xor i64 %51, %49
  %53 = xor i64 %52, -4073843177460073766
  %54 = xor i64 %53, %40
  %55 = xor i64 %54, %47
  %56 = mul i64 %35, %55
  %57 = trunc i64 %56 to i32
  %58 = mul i32 %1, %57
  br label %106

59:                                               ; preds = %6
  %60 = sext i32 %0 to i64
  %61 = or i64 %60, 7533599109852642732
  %62 = and i64 7533599109852642732, %60
  %63 = xor i64 7533599109852642732, %60
  %64 = or i64 %62, %63
  %65 = sext i32 %1 to i64
  %66 = and i64 %65, 6164432975734922843
  %67 = xor i64 %65, -1
  %68 = or i64 -6164432975734922844, %67
  %69 = xor i64 %68, -1
  %70 = and i64 %69, -1
  %71 = xor i64 %70, %61
  %72 = xor i64 %71, %66
  %73 = xor i64 %72, 521904717632200047
  %74 = xor i64 %73, %64
  %75 = sext i32 %0 to i64
  %76 = and i64 %75, -5805466968567394831
  %77 = xor i64 %75, -1
  %78 = xor i64 -5805466968567394831, %77
  %79 = and i64 %78, -5805466968567394831
  %80 = sext i32 %1 to i64
  %81 = or i64 %80, 4168949805142287346
  %82 = xor i64 %80, -1
  %83 = and i64 %82, 8839025428592983634
  %84 = and i64 %80, -8839025428592983635
  %85 = or i64 %83, %84
  %86 = xor i64 4859827142761733536, %85
  %87 = xor i64 %80, -1
  %88 = or i64 -4168949805142287347, %87
  %89 = xor i64 %88, -1
  %90 = and i64 %89, -1
  %91 = or i64 %86, %90
  %92 = sext i32 %1 to i64
  %93 = add i64 %92, -2929161150274850750
  %94 = add i64 -1971409521198697805, %92
  %95 = sub i64 %94, 957751629076152945
  %96 = xor i64 5588630613861507471, %91
  %97 = xor i64 %96, %76
  %98 = xor i64 %97, %93
  %99 = xor i64 %98, %81
  %100 = xor i64 %99, %79
  %101 = xor i64 %100, %95
  %102 = mul i64 %74, %101
  %103 = trunc i64 %102 to i32
  %104 = shl i32 %0, %103
  %105 = sub i32 %104, %1
  br label %106

106:                                              ; preds = %59, %8, %4
  %107 = phi i32 [ %5, %4 ], [ %58, %8 ], [ %105, %59 ]
  ret i32 %107
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = add i64 %3, -5975535377168199234
  %5 = add i64 5625888934039238002, %3
  %6 = add i64 %5, 6845319762502114380
  %7 = sext i32 %0 to i64
  %8 = add i64 %7, -1048393128925808750
  %9 = xor i64 -1048393128925808750, %7
  %10 = and i64 -1048393128925808750, %7
  %11 = mul i64 2, %10
  %12 = add i64 %9, %11
  %13 = sext i32 %0 to i64
  %14 = and i64 %13, -6335815086314195059
  %15 = xor i64 %13, -1
  %16 = xor i64 -6335815086314195059, %15
  %17 = and i64 %16, -6335815086314195059
  %18 = xor i64 %17, %14
  %19 = xor i64 %18, %8
  %20 = xor i64 %19, %6
  %21 = xor i64 %20, %4
  %22 = xor i64 %21, 6057785054974075601
  %23 = xor i64 %22, %12
  %24 = sext i32 %0 to i64
  %25 = or i64 %24, -404160262244137639
  %26 = and i64 -404160262244137639, %24
  %27 = xor i64 -404160262244137639, %24
  %28 = or i64 %26, %27
  %29 = sext i32 %0 to i64
  %30 = and i64 %29, -7352141028015002044
  %31 = xor i64 %29, -1
  %32 = xor i64 -7352141028015002044, %31
  %33 = and i64 %32, -7352141028015002044
  %34 = xor i64 -785322129908028193, %33
  %35 = xor i64 %34, %30
  %36 = xor i64 %35, %25
  %37 = xor i64 %36, %28
  %38 = mul i64 %23, %37
  %39 = trunc i64 %38 to i32
  %40 = sext i32 %0 to i64
  %41 = or i64 %40, 3111046132478832559
  %42 = xor i64 %40, -1
  %43 = and i64 3111046132478832559, %42
  %44 = add i64 %43, %40
  %45 = sext i32 %0 to i64
  %46 = add i64 %45, 2068527203221338450
  %47 = sub i64 0, %45
  %48 = add i64 -2068527203221338450, %47
  %49 = sub i64 0, %48
  %50 = sext i32 %0 to i64
  %51 = add i64 %50, 6784191770476553674
  %52 = sub i64 0, %50
  %53 = sub i64 6784191770476553674, %52
  %54 = xor i64 %53, %51
  %55 = xor i64 %54, %41
  %56 = xor i64 %55, 1528765346388622275
  %57 = xor i64 %56, %44
  %58 = xor i64 %57, %46
  %59 = xor i64 %58, %49
  %60 = sext i32 %0 to i64
  %61 = and i64 %60, 8451211149666120876
  %62 = xor i64 %60, -1
  %63 = or i64 -8451211149666120877, %62
  %64 = xor i64 %63, -1
  %65 = and i64 %64, -1
  %66 = sext i32 %0 to i64
  %67 = add i64 %66, 3105426167807477245
  %68 = add i64 7186685416743704011, %66
  %69 = add i64 %68, -4081259248936226766
  %70 = sext i32 %0 to i64
  %71 = or i64 %70, -1180523579004604915
  %72 = xor i64 %70, -1
  %73 = and i64 -1180523579004604915, %72
  %74 = add i64 %73, %70
  %75 = xor i64 %65, 5331978877991502579
  %76 = xor i64 %75, %74
  %77 = xor i64 %76, %61
  %78 = xor i64 %77, %67
  %79 = xor i64 %78, %69
  %80 = xor i64 %79, %71
  %81 = mul i64 %59, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @_Z6decideii(i32 %39, i32 %82)
  ret i32 %83
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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

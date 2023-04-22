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
  br label %115

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, %1
  br i1 %7, label %8, label %63

8:                                                ; preds = %6
  %9 = sext i32 %1 to i64
  %10 = and i64 %9, 2731622179988945516
  %11 = xor i64 %9, -1
  %12 = xor i64 2731622179988945516, %11
  %13 = and i64 %12, 2731622179988945516
  %14 = sext i32 %0 to i64
  %15 = and i64 %14, 3145343081167892836
  %16 = xor i64 %14, -1
  %17 = or i64 -3145343081167892837, %16
  %18 = xor i64 %17, -1
  %19 = and i64 %18, -1
  %20 = sext i32 %0 to i64
  %21 = or i64 %20, -6723899049892159177
  %22 = xor i64 %20, -1
  %23 = and i64 %22, 75279947176078991
  %24 = and i64 %20, -75279947176078992
  %25 = or i64 %23, %24
  %26 = xor i64 -6655023071021985864, %25
  %27 = xor i64 %20, -1
  %28 = or i64 6723899049892159176, %27
  %29 = xor i64 %28, -1
  %30 = and i64 %29, -1
  %31 = or i64 %26, %30
  %32 = xor i64 %19, %21
  %33 = xor i64 %32, 3750599819256414713
  %34 = xor i64 %33, %13
  %35 = xor i64 %34, %10
  %36 = xor i64 %35, %31
  %37 = xor i64 %36, %15
  %38 = sext i32 %0 to i64
  %39 = and i64 %38, -2409634867006983556
  %40 = xor i64 %38, -1
  %41 = or i64 2409634867006983555, %40
  %42 = xor i64 %41, -1
  %43 = and i64 %42, -1
  %44 = sext i32 %1 to i64
  %45 = or i64 %44, -4809016431187276854
  %46 = xor i64 %44, -1
  %47 = and i64 %46, -4875590610081221919
  %48 = and i64 %44, 4875590610081221918
  %49 = or i64 %47, %48
  %50 = xor i64 77859875609131307, %49
  %51 = xor i64 %44, -1
  %52 = or i64 4809016431187276853, %51
  %53 = xor i64 %52, -1
  %54 = and i64 %53, -1
  %55 = or i64 %50, %54
  %56 = xor i64 -1991330378030080146, %45
  %57 = xor i64 %56, %55
  %58 = xor i64 %57, %43
  %59 = xor i64 %58, %39
  %60 = mul i64 %37, %59
  %61 = trunc i64 %60 to i32
  %62 = mul i32 %1, %61
  br label %115

63:                                               ; preds = %6
  %64 = sext i32 %0 to i64
  %65 = or i64 %64, -1164557922036529120
  %66 = xor i64 %64, -1
  %67 = and i64 %66, 2497461818214585758
  %68 = and i64 %64, -2497461818214585759
  %69 = or i64 %67, %68
  %70 = xor i64 -3639351637225677378, %69
  %71 = xor i64 %64, -1
  %72 = or i64 1164557922036529119, %71
  %73 = xor i64 %72, -1
  %74 = and i64 %73, -1
  %75 = or i64 %70, %74
  %76 = sext i32 %0 to i64
  %77 = or i64 %76, 3924611603422950677
  %78 = and i64 3924611603422950677, %76
  %79 = xor i64 3924611603422950677, %76
  %80 = or i64 %78, %79
  %81 = sext i32 %1 to i64
  %82 = or i64 %81, 3183821296371152476
  %83 = xor i64 %81, -1
  %84 = and i64 3183821296371152476, %83
  %85 = add i64 %84, %81
  %86 = xor i64 8978676015522579311, %77
  %87 = xor i64 %86, %82
  %88 = xor i64 %87, %65
  %89 = xor i64 %88, %85
  %90 = xor i64 %89, %80
  %91 = xor i64 %90, %75
  %92 = sext i32 %1 to i64
  %93 = and i64 %92, -4133962680457486515
  %94 = or i64 4133962680457486514, %92
  %95 = sub i64 %94, 4133962680457486514
  %96 = sext i32 %0 to i64
  %97 = and i64 %96, -1488567502413336502
  %98 = or i64 1488567502413336501, %96
  %99 = sub i64 %98, 1488567502413336501
  %100 = sext i32 %0 to i64
  %101 = or i64 %100, 3805525838835594891
  %102 = xor i64 %100, -1
  %103 = and i64 3805525838835594891, %102
  %104 = add i64 %103, %100
  %105 = xor i64 -703999371744003185, %93
  %106 = xor i64 %105, %95
  %107 = xor i64 %106, %101
  %108 = xor i64 %107, %104
  %109 = xor i64 %108, %97
  %110 = xor i64 %109, %99
  %111 = mul i64 %91, %110
  %112 = trunc i64 %111 to i32
  %113 = shl i32 %0, %112
  %114 = sub i32 %113, %1
  br label %115

115:                                              ; preds = %63, %8, %4
  %116 = phi i32 [ %5, %4 ], [ %62, %8 ], [ %114, %63 ]
  ret i32 %116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = add i64 %3, -5177143064711532035
  %5 = sub i64 0, %3
  %6 = add i64 5177143064711532035, %5
  %7 = sub i64 0, %6
  %8 = sext i32 %0 to i64
  %9 = add i64 %8, -1871702796455661060
  %10 = xor i64 -1871702796455661060, %8
  %11 = and i64 -1871702796455661060, %8
  %12 = mul i64 2, %11
  %13 = add i64 %10, %12
  %14 = sext i32 %0 to i64
  %15 = and i64 %14, 8735348548674751493
  %16 = or i64 -8735348548674751494, %14
  %17 = sub i64 %16, -8735348548674751494
  %18 = xor i64 %13, 8206344568350141817
  %19 = xor i64 %18, %4
  %20 = xor i64 %19, %15
  %21 = xor i64 %20, %7
  %22 = xor i64 %21, %9
  %23 = xor i64 %22, %17
  %24 = sext i32 %0 to i64
  %25 = add i64 %24, 5649848501810630170
  %26 = add i64 -4227787700742720903, %24
  %27 = add i64 %26, -8569107871156200543
  %28 = sext i32 %0 to i64
  %29 = and i64 %28, 7212575013218697458
  %30 = xor i64 %28, -1
  %31 = or i64 -7212575013218697459, %30
  %32 = xor i64 %31, -1
  %33 = and i64 %32, -1
  %34 = xor i64 %29, 8437516066088443847
  %35 = xor i64 %34, %27
  %36 = xor i64 %35, %25
  %37 = xor i64 %36, %33
  %38 = mul i64 %23, %37
  %39 = trunc i64 %38 to i32
  %40 = sext i32 %0 to i64
  %41 = or i64 %40, -3177407149912723986
  %42 = xor i64 %40, -1
  %43 = and i64 %42, -2808213373216495203
  %44 = and i64 %40, 2808213373216495202
  %45 = or i64 %43, %44
  %46 = xor i64 783817482300785779, %45
  %47 = xor i64 %40, -1
  %48 = or i64 3177407149912723985, %47
  %49 = xor i64 %48, -1
  %50 = and i64 %49, -1
  %51 = or i64 %46, %50
  %52 = sext i32 %0 to i64
  %53 = and i64 %52, -8889478353733059689
  %54 = xor i64 %52, -1
  %55 = or i64 8889478353733059688, %54
  %56 = xor i64 %55, -1
  %57 = and i64 %56, -1
  %58 = xor i64 %53, 6891861597413272095
  %59 = xor i64 %58, %51
  %60 = xor i64 %59, %57
  %61 = xor i64 %60, %41
  %62 = sext i32 %0 to i64
  %63 = add i64 %62, 4309511771137682729
  %64 = add i64 -2435481327237790737, %62
  %65 = add i64 %64, 6744993098375473466
  %66 = sext i32 %0 to i64
  %67 = and i64 %66, -517786356473847921
  %68 = xor i64 %66, -1
  %69 = xor i64 -517786356473847921, %68
  %70 = and i64 %69, -517786356473847921
  %71 = sext i32 %0 to i64
  %72 = and i64 %71, -7736808047152778056
  %73 = xor i64 %71, -1
  %74 = xor i64 -7736808047152778056, %73
  %75 = and i64 %74, -7736808047152778056
  %76 = xor i64 3228313969780670151, %72
  %77 = xor i64 %76, %70
  %78 = xor i64 %77, %65
  %79 = xor i64 %78, %75
  %80 = xor i64 %79, %63
  %81 = xor i64 %80, %67
  %82 = mul i64 %61, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @_Z6decideii(i32 %39, i32 %83)
  ret i32 %84
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

; ModuleID = 'output/branch-function/ex1/ex1.ll'
source_filename = "input/branch-function/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%class.H = type { i8 }

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@obfsblockAddrLookupTable11828727644667858779 = private global [12 x i8*] zeroinitializer
@obfsblockAddrLookupTable3906514335015601847 = private global [3 x i8*] zeroinitializer
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i64 (i64)* @h18033768652167424680 to i8*), i8* bitcast ([12 x i8*]* @obfsblockAddrLookupTable11828727644667858779 to i8*), i8* bitcast (i8** (i32*)* @bf12835053811268639009 to i8*), i8* bitcast ([3 x i8*]* @obfsblockAddrLookupTable3906514335015601847 to i8*), i8* bitcast (i8** (i32*)* @bf1490753578429213757 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z3subi(i32 %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = call i64 @h18033768652167424680(i64 1187166930)
  %4 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %3
  store i8* blockaddress(@_Z3subi, %127), i8** %4, align 8
  %5 = call i64 @h18033768652167424680(i64 1187166939)
  %6 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %5
  store i8* blockaddress(@_Z3subi, %83), i8** %6, align 8
  %7 = call i64 @h18033768652167424680(i64 1187166936)
  %8 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %7
  store i8* blockaddress(@_Z3subi, %76), i8** %8, align 8
  %9 = call i64 @h18033768652167424680(i64 1187166937)
  %10 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %9
  store i8* blockaddress(@_Z3subi, %66), i8** %10, align 8
  %11 = call i64 @h18033768652167424680(i64 1187166934)
  %12 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %11
  store i8* blockaddress(@_Z3subi, %59), i8** %12, align 8
  %13 = call i64 @h18033768652167424680(i64 1187166928)
  %14 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %13
  store i8* blockaddress(@_Z3subi, %100), i8** %14, align 8
  %15 = call i64 @h18033768652167424680(i64 1187166933)
  %16 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %15
  store i8* blockaddress(@_Z3subi, %117), i8** %16, align 8
  %17 = call i64 @h18033768652167424680(i64 1187166932)
  %18 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %17
  store i8* blockaddress(@_Z3subi, %110), i8** %18, align 8
  %19 = call i64 @h18033768652167424680(i64 1187166929)
  %20 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %19
  store i8* blockaddress(@_Z3subi, %93), i8** %20, align 8
  %21 = call i64 @h18033768652167424680(i64 1187166938)
  %22 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %21
  store i8* blockaddress(@_Z3subi, %49), i8** %22, align 8
  %23 = call i64 @h18033768652167424680(i64 1187166931)
  %24 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %23
  store i8* blockaddress(@_Z3subi, %39), i8** %24, align 8
  %25 = call i64 @h18033768652167424680(i64 1187166935)
  %26 = getelementptr [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %25
  store i8* blockaddress(@_Z3subi, %32), i8** %26, align 8
  %27 = icmp sgt i32 %0, 0
  %28 = select i1 %27, i32 1187166935, i32 1187166931
  %29 = xor i32 %28, 4
  store i32 %29, i32* %2, align 4
  %30 = call i8** @bf12835053811268639009(i32* %2)
  %31 = load i8*, i8** %30, align 8
  indirectbr i8* %31, [label %39, label %32]

32:                                               ; preds = %39, %1
  %33 = phi i32 [ %0, %1 ], [ %42, %39 ]
  %34 = icmp slt i32 %33, 0
  %35 = select i1 %34, i32 1187166934, i32 1187166938
  %36 = xor i32 %35, 12
  store i32 %36, i32* %2, align 4
  %37 = call i8** @bf12835053811268639009(i32* %2)
  %38 = load i8*, i8** %37, align 8
  indirectbr i8* %38, [label %49, label %59]

39:                                               ; preds = %39, %1
  %40 = phi i32 [ %43, %39 ], [ 0, %1 ]
  %41 = phi i32 [ %42, %39 ], [ %0, %1 ]
  %42 = add nsw i32 %41, -5
  %43 = add nuw nsw i32 %40, 1
  %44 = icmp slt i32 %43, %42
  %45 = select i1 %44, i32 1187166935, i32 1187166931
  %46 = xor i32 %45, 4
  store i32 %46, i32* %2, align 4
  %47 = call i8** @bf12835053811268639009(i32* %2)
  %48 = load i8*, i8** %47, align 8
  indirectbr i8* %48, [label %39, label %32]

49:                                               ; preds = %49, %32
  %50 = phi i32 [ %53, %49 ], [ 0, %32 ]
  %51 = phi i32 [ %52, %49 ], [ %33, %32 ]
  %52 = add nsw i32 %51, -5
  %53 = add nuw nsw i32 %50, 1
  %54 = icmp slt i32 %50, %52
  %55 = select i1 %54, i32 1187166938, i32 1187166934
  %56 = xor i32 %55, 12
  store i32 %56, i32* %2, align 4
  %57 = call i8** @bf12835053811268639009(i32* %2)
  %58 = load i8*, i8** %57, align 8
  indirectbr i8* %58, [label %59, label %49]

59:                                               ; preds = %49, %32
  %60 = phi i32 [ %33, %32 ], [ %52, %49 ]
  %61 = icmp slt i32 %60, -5
  %62 = select i1 %61, i32 1187166936, i32 1187166937
  %63 = xor i32 %62, 1
  store i32 %63, i32* %2, align 4
  %64 = call i8** @bf12835053811268639009(i32* %2)
  %65 = load i8*, i8** %64, align 8
  indirectbr i8* %65, [label %66, label %76]

66:                                               ; preds = %66, %59
  %67 = phi i32 [ %70, %66 ], [ 0, %59 ]
  %68 = phi i32 [ %69, %66 ], [ %60, %59 ]
  %69 = add nsw i32 %68, -5
  %70 = add nuw nsw i32 %67, 1
  %71 = icmp slt i32 %67, %69
  %72 = select i1 %71, i32 1187166937, i32 1187166936
  %73 = xor i32 %72, 1
  store i32 %73, i32* %2, align 4
  %74 = call i8** @bf12835053811268639009(i32* %2)
  %75 = load i8*, i8** %74, align 8
  indirectbr i8* %75, [label %76, label %66]

76:                                               ; preds = %66, %59
  %77 = phi i32 [ %60, %59 ], [ %69, %66 ]
  %78 = icmp slt i32 %77, -50
  %79 = select i1 %78, i32 1187166929, i32 1187166939
  %80 = xor i32 %79, 10
  store i32 %80, i32* %2, align 4
  %81 = call i8** @bf12835053811268639009(i32* %2)
  %82 = load i8*, i8** %81, align 8
  indirectbr i8* %82, [label %83, label %93]

83:                                               ; preds = %83, %76
  %84 = phi i32 [ %87, %83 ], [ 0, %76 ]
  %85 = phi i32 [ %86, %83 ], [ %77, %76 ]
  %86 = add nsw i32 %85, -5
  %87 = add nuw nsw i32 %84, 1
  %88 = icmp slt i32 %84, %86
  %89 = select i1 %88, i32 1187166939, i32 1187166929
  %90 = xor i32 %89, 10
  store i32 %90, i32* %2, align 4
  %91 = call i8** @bf12835053811268639009(i32* %2)
  %92 = load i8*, i8** %91, align 8
  indirectbr i8* %92, [label %93, label %83]

93:                                               ; preds = %83, %76
  %94 = phi i32 [ %77, %76 ], [ %86, %83 ]
  %95 = icmp slt i32 %94, -50
  %96 = select i1 %95, i32 1187166932, i32 1187166928
  %97 = xor i32 %96, 4
  store i32 %97, i32* %2, align 4
  %98 = call i8** @bf12835053811268639009(i32* %2)
  %99 = load i8*, i8** %98, align 8
  indirectbr i8* %99, [label %100, label %110]

100:                                              ; preds = %100, %93
  %101 = phi i32 [ %104, %100 ], [ 0, %93 ]
  %102 = phi i32 [ %103, %100 ], [ %94, %93 ]
  %103 = add nsw i32 %102, -5
  %104 = add nuw nsw i32 %101, 1
  %105 = icmp slt i32 %101, %103
  %106 = select i1 %105, i32 1187166928, i32 1187166932
  %107 = xor i32 %106, 4
  store i32 %107, i32* %2, align 4
  %108 = call i8** @bf12835053811268639009(i32* %2)
  %109 = load i8*, i8** %108, align 8
  indirectbr i8* %109, [label %110, label %100]

110:                                              ; preds = %100, %93
  %111 = phi i32 [ %94, %93 ], [ %103, %100 ]
  %112 = icmp slt i32 %111, -100
  %113 = select i1 %112, i32 1187166930, i32 1187166933
  %114 = xor i32 %113, 7
  store i32 %114, i32* %2, align 4
  %115 = call i8** @bf12835053811268639009(i32* %2)
  %116 = load i8*, i8** %115, align 8
  indirectbr i8* %116, [label %117, label %127]

117:                                              ; preds = %117, %110
  %118 = phi i32 [ %121, %117 ], [ 0, %110 ]
  %119 = phi i32 [ %120, %117 ], [ %111, %110 ]
  %120 = add nsw i32 %119, -5
  %121 = add nuw nsw i32 %118, 1
  %122 = icmp slt i32 %118, %120
  %123 = select i1 %122, i32 1187166933, i32 1187166930
  %124 = xor i32 %123, 7
  store i32 %124, i32* %2, align 4
  %125 = call i8** @bf12835053811268639009(i32* %2)
  %126 = load i8*, i8** %125, align 8
  indirectbr i8* %126, [label %127, label %117]

127:                                              ; preds = %117, %110
  %128 = phi i32 [ %111, %110 ], [ %120, %117 ]
  ret i32 %128
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress ssp uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = call i64 @h18033768652167424680(i64 1187166930)
  %4 = getelementptr [3 x i8*], [3 x i8*]* @obfsblockAddrLookupTable3906514335015601847, i32 0, i64 %3
  store i8* blockaddress(@_Z8digitSumi, %28), i8** %4, align 8
  %5 = call i64 @h18033768652167424680(i64 1187166931)
  %6 = getelementptr [3 x i8*], [3 x i8*]* @obfsblockAddrLookupTable3906514335015601847, i32 0, i64 %5
  store i8* blockaddress(@_Z8digitSumi, %14), i8** %6, align 8
  %7 = alloca %class.H, align 1
  %8 = getelementptr inbounds %class.H, %class.H* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #6
  %9 = icmp sgt i32 %0, 0
  %10 = select i1 %9, i32 1187166930, i32 1187166931
  %11 = xor i32 %10, 1
  store i32 %11, i32* %2, align 4
  %12 = call i8** @bf1490753578429213757(i32* %2)
  %13 = load i8*, i8** %12, align 8
  indirectbr i8* %13, [label %14, label %28]

14:                                               ; preds = %14, %1
  %15 = phi i32 [ %21, %14 ], [ 0, %1 ]
  %16 = phi i32 [ %18, %14 ], [ %0, %1 ]
  %17 = freeze i32 %16
  %18 = sdiv i32 %17, 10
  %19 = mul i32 %18, 10
  %20 = sub i32 %17, %19
  %21 = add nsw i32 %15, %20
  call void @_ZN1H1pEv(%class.H* nonnull %7)
  %22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp sgt i32 %16, 9
  %24 = select i1 %23, i32 1187166930, i32 1187166931
  %25 = xor i32 %24, 1
  store i32 %25, i32* %2, align 4
  %26 = call i8** @bf1490753578429213757(i32* %2)
  %27 = load i8*, i8** %26, align 8
  indirectbr i8* %27, [label %14, label %28]

28:                                               ; preds = %14, %1
  %29 = phi i32 [ 0, %1 ], [ %21, %14 ]
  %30 = call i32 @_Z3subi(i32 %0)
  call void @_ZN1H1pEv(%class.H* nonnull %7)
  %31 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  call void @_ZN1H1pEv(%class.H* nonnull %7)
  %32 = sub nsw i32 %29, %30
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #6
  ret i32 %32
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZN1H1pEv(%class.H* %0) local_unnamed_addr #2 align 2 {
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = alloca %class.H, align 1
  %5 = getelementptr inbounds %class.H, %class.H* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #6
  call void @_ZN1H1pEv(%class.H* nonnull %4)
  %6 = call i32 @_Z8digitSumi(i32 15)
  %7 = call i32 @_Z8digitSumi(i32 25)
  %8 = add nsw i32 %7, %6
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #6
  ret i32 %8
}

; Function Attrs: noinline
define internal i64 @h18033768652167424680(i64 %0) #5 {
  %2 = alloca i32, align 4
  %3 = xor i64 1187166931, %0
  ret i64 %3
}

; Function Attrs: noinline
define internal i8** @bf12835053811268639009(i32* %0) #5 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h18033768652167424680(i64 %4)
  %6 = getelementptr inbounds [12 x i8*], [12 x i8*]* @obfsblockAddrLookupTable11828727644667858779, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf1490753578429213757(i32* %0) #5 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h18033768652167424680(i64 %4)
  %6 = getelementptr inbounds [3 x i8*], [3 x i8*]* @obfsblockAddrLookupTable3906514335015601847, i32 0, i64 %5
  ret i8** %6
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noinline }
attributes #6 = { nounwind }

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

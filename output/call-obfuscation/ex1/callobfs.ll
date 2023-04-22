; ModuleID = 'output/call-obfuscation/ex1/ex1.ll'
source_filename = "input/call-obfuscation/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%class.H = type { i8 }

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@obfsfuncAddrLookupTable3461166234789197480 = private global [7 x i8*] zeroinitializer
@obfsfuncAddrLookupTable3708285264181496015 = private global [1 x i8*] zeroinitializer
@obfsfuncAddrLookupTable4393405372055863602 = private global [3 x i8*] zeroinitializer
@llvm.compiler.used = appending global [7 x i8*] [i8* bitcast (i64 (i64)* @m15422940958357560741 to i8*), i8* bitcast ([7 x i8*]* @obfsfuncAddrLookupTable3461166234789197480 to i8*), i8* bitcast (i8** (i64*)* @lk11903805367370075611 to i8*), i8* bitcast ([1 x i8*]* @obfsfuncAddrLookupTable3708285264181496015 to i8*), i8* bitcast (i8** (i64*)* @lk923691864689839250 to i8*), i8* bitcast ([3 x i8*]* @obfsfuncAddrLookupTable4393405372055863602 to i8*), i8* bitcast (i8** (i64*)* @lk5823184349590504625 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @_Z3subi(i32 %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %6, %1
  %4 = phi i32 [ %0, %1 ], [ %9, %6 ]
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %18

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %10, %6 ], [ 0, %1 ]
  %8 = phi i32 [ %9, %6 ], [ %0, %1 ]
  %9 = add nsw i32 %8, -5
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp slt i32 %10, %9
  br i1 %11, label %6, label %3, !llvm.loop !10

12:                                               ; preds = %12, %3
  %13 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %14 = phi i32 [ %15, %12 ], [ %4, %3 ]
  %15 = add nsw i32 %14, -5
  %16 = add nuw nsw i32 %13, 1
  %17 = icmp slt i32 %13, %15
  br i1 %17, label %18, label %12, !llvm.loop !13

18:                                               ; preds = %12, %3
  %19 = phi i32 [ %4, %3 ], [ %15, %12 ]
  %20 = icmp slt i32 %19, -5
  br i1 %20, label %21, label %27

21:                                               ; preds = %21, %18
  %22 = phi i32 [ %25, %21 ], [ 0, %18 ]
  %23 = phi i32 [ %24, %21 ], [ %19, %18 ]
  %24 = add nsw i32 %23, -5
  %25 = add nuw nsw i32 %22, 1
  %26 = icmp slt i32 %22, %24
  br i1 %26, label %27, label %21, !llvm.loop !14

27:                                               ; preds = %21, %18
  %28 = phi i32 [ %19, %18 ], [ %24, %21 ]
  %29 = icmp slt i32 %28, -50
  br i1 %29, label %30, label %36

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %34, %30 ], [ 0, %27 ]
  %32 = phi i32 [ %33, %30 ], [ %28, %27 ]
  %33 = add nsw i32 %32, -5
  %34 = add nuw nsw i32 %31, 1
  %35 = icmp slt i32 %31, %33
  br i1 %35, label %36, label %30, !llvm.loop !15

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %28, %27 ], [ %33, %30 ]
  %38 = icmp slt i32 %37, -50
  br i1 %38, label %39, label %45

39:                                               ; preds = %39, %36
  %40 = phi i32 [ %43, %39 ], [ 0, %36 ]
  %41 = phi i32 [ %42, %39 ], [ %37, %36 ]
  %42 = add nsw i32 %41, -5
  %43 = add nuw nsw i32 %40, 1
  %44 = icmp slt i32 %40, %42
  br i1 %44, label %45, label %39, !llvm.loop !16

45:                                               ; preds = %39, %36
  %46 = phi i32 [ %37, %36 ], [ %42, %39 ]
  %47 = icmp slt i32 %46, -100
  br i1 %47, label %48, label %54

48:                                               ; preds = %48, %45
  %49 = phi i32 [ %52, %48 ], [ 0, %45 ]
  %50 = phi i32 [ %51, %48 ], [ %46, %45 ]
  %51 = add nsw i32 %50, -5
  %52 = add nuw nsw i32 %49, 1
  %53 = icmp slt i32 %49, %51
  br i1 %53, label %54, label %48, !llvm.loop !17

54:                                               ; preds = %48, %45
  %55 = phi i32 [ %46, %45 ], [ %51, %48 ]
  ret i32 %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress ssp uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #2 {
  %2 = alloca i64, align 8
  %3 = call i64 @m15422940958357560741(i64 -2213941384103995549)
  %4 = getelementptr [7 x i8*], [7 x i8*]* @obfsfuncAddrLookupTable3461166234789197480, i32 0, i64 %3
  store i8* bitcast (void (%class.H*)* @_ZN1H1pEv to i8*), i8** %4, align 8
  %5 = call i64 @m15422940958357560741(i64 -2213941384103995547)
  %6 = getelementptr [7 x i8*], [7 x i8*]* @obfsfuncAddrLookupTable3461166234789197480, i32 0, i64 %5
  store i8* bitcast (i32 (i8*, ...)* @printf to i8*), i8** %6, align 8
  %7 = call i64 @m15422940958357560741(i64 -2213941384103995550)
  %8 = getelementptr [7 x i8*], [7 x i8*]* @obfsfuncAddrLookupTable3461166234789197480, i32 0, i64 %7
  store i8* bitcast (i32 (i32)* @_Z3subi to i8*), i8** %8, align 8
  %9 = call i64 @m15422940958357560741(i64 -2213941384103995545)
  %10 = getelementptr [7 x i8*], [7 x i8*]* @obfsfuncAddrLookupTable3461166234789197480, i32 0, i64 %9
  store i8* bitcast (void (%class.H*)* @_ZN1H1pEv to i8*), i8** %10, align 8
  %11 = call i64 @m15422940958357560741(i64 -2213941384103995546)
  %12 = getelementptr [7 x i8*], [7 x i8*]* @obfsfuncAddrLookupTable3461166234789197480, i32 0, i64 %11
  store i8* bitcast (i32 (i8*, ...)* @printf to i8*), i8** %12, align 8
  %13 = call i64 @m15422940958357560741(i64 -2213941384103995548)
  %14 = getelementptr [7 x i8*], [7 x i8*]* @obfsfuncAddrLookupTable3461166234789197480, i32 0, i64 %13
  store i8* bitcast (void (%class.H*)* @_ZN1H1pEv to i8*), i8** %14, align 8
  %15 = call i64 @m15422940958357560741(i64 -2213941384103995551)
  %16 = getelementptr [7 x i8*], [7 x i8*]* @obfsfuncAddrLookupTable3461166234789197480, i32 0, i64 %15
  store i8* bitcast (i32 (i32)* @_Z3subi to i8*), i8** %16, align 8
  %17 = alloca %class.H, align 1
  %18 = getelementptr inbounds %class.H, %class.H* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #5
  %19 = icmp sgt i32 %0, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %20, %1
  %21 = phi i32 [ %27, %20 ], [ 0, %1 ]
  %22 = phi i32 [ %24, %20 ], [ %0, %1 ]
  %23 = freeze i32 %22
  %24 = sdiv i32 %23, 10
  %25 = mul i32 %24, 10
  %26 = sub i32 %23, %25
  %27 = add nsw i32 %21, %26
  store i64 -2213941384103995549, i64* %2, align 8
  %28 = call i8** @lk11903805367370075611(i64* %2)
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to void (%class.H*)*
  call void %30(%class.H* %17)
  store i64 -2213941384103995547, i64* %2, align 8
  %31 = call i8** @lk11903805367370075611(i64* %2)
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to i32 (i8*, ...)*
  %34 = call i32 (i8*, ...) %33(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %35 = icmp sgt i32 %22, 9
  br i1 %35, label %20, label %36, !llvm.loop !18

36:                                               ; preds = %20, %1
  %37 = phi i32 [ 0, %1 ], [ %27, %20 ]
  store i64 -2213941384103995550, i64* %2, align 8
  %38 = call i8** @lk11903805367370075611(i64* %2)
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to i32 (i32)*
  %41 = call i32 %40(i32 %0)
  store i64 -2213941384103995545, i64* %2, align 8
  %42 = call i8** @lk11903805367370075611(i64* %2)
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to void (%class.H*)*
  call void %44(%class.H* %17)
  store i64 -2213941384103995546, i64* %2, align 8
  %45 = call i8** @lk11903805367370075611(i64* %2)
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to i32 (i8*, ...)*
  %48 = call i32 (i8*, ...) %47(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 -2213941384103995548, i64* %2, align 8
  %49 = call i8** @lk11903805367370075611(i64* %2)
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to void (%class.H*)*
  call void %51(%class.H* %17)
  store i64 -2213941384103995551, i64* %2, align 8
  %52 = call i8** @lk11903805367370075611(i64* %2)
  %53 = load i8*, i8** %52, align 8
  %54 = bitcast i8* %53 to i32 (i32)*
  %55 = call i32 %54(i32 %37)
  %56 = add i32 %41, %55
  %57 = sub i32 %37, %56
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #5
  ret i32 %57
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZN1H1pEv(%class.H* %0) local_unnamed_addr #2 align 2 {
  %2 = alloca i64, align 8
  %3 = call i64 @m15422940958357560741(i64 -2213941384103995545)
  %4 = getelementptr [1 x i8*], [1 x i8*]* @obfsfuncAddrLookupTable3708285264181496015, i32 0, i64 %3
  store i8* bitcast (i32 (i8*, ...)* @printf to i8*), i8** %4, align 8
  store i64 -2213941384103995545, i64* %2, align 8
  %5 = call i8** @lk923691864689839250(i64* %2)
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to i32 (i8*, ...)*
  %8 = call i32 (i8*, ...) %7(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #4 {
  %3 = alloca i64, align 8
  %4 = call i64 @m15422940958357560741(i64 -2213941384103995547)
  %5 = getelementptr [3 x i8*], [3 x i8*]* @obfsfuncAddrLookupTable4393405372055863602, i32 0, i64 %4
  store i8* bitcast (void (%class.H*)* @_ZN1H1pEv to i8*), i8** %5, align 8
  %6 = call i64 @m15422940958357560741(i64 -2213941384103995545)
  %7 = getelementptr [3 x i8*], [3 x i8*]* @obfsfuncAddrLookupTable4393405372055863602, i32 0, i64 %6
  store i8* bitcast (i32 (i32)* @_Z8digitSumi to i8*), i8** %7, align 8
  %8 = call i64 @m15422940958357560741(i64 -2213941384103995546)
  %9 = getelementptr [3 x i8*], [3 x i8*]* @obfsfuncAddrLookupTable4393405372055863602, i32 0, i64 %8
  store i8* bitcast (i32 (i32)* @_Z8digitSumi to i8*), i8** %9, align 8
  %10 = alloca %class.H, align 1
  %11 = getelementptr inbounds %class.H, %class.H* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #5
  store i64 -2213941384103995547, i64* %3, align 8
  %12 = call i8** @lk5823184349590504625(i64* %3)
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to void (%class.H*)*
  call void %14(%class.H* %10)
  store i64 -2213941384103995545, i64* %3, align 8
  %15 = call i8** @lk5823184349590504625(i64* %3)
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to i32 (i32)*
  %18 = call i32 %17(i32 15)
  store i64 -2213941384103995546, i64* %3, align 8
  %19 = call i8** @lk5823184349590504625(i64* %3)
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to i32 (i32)*
  %22 = call i32 %21(i32 25)
  %23 = add nsw i32 %22, %18
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #5
  ret i32 %23
}

define private i64 @m15422940958357560741(i64 %0) {
  %2 = xor i64 -2213941384103995545, %0
  ret i64 %2
}

define private i8** @lk11903805367370075611(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m15422940958357560741(i64 %2)
  %4 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsfuncAddrLookupTable3461166234789197480, i32 0, i64 %3
  ret i8** %4
}

define private i8** @lk923691864689839250(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m15422940958357560741(i64 %2)
  %4 = getelementptr inbounds [1 x i8*], [1 x i8*]* @obfsfuncAddrLookupTable3708285264181496015, i32 0, i64 %3
  ret i8** %4
}

define private i8** @lk5823184349590504625(i64* %0) {
  %2 = load i64, i64* %0, align 8
  %3 = call i64 @m15422940958357560741(i64 %2)
  %4 = getelementptr inbounds [3 x i8*], [3 x i8*]* @obfsfuncAddrLookupTable4393405372055863602, i32 0, i64 %3
  ret i8** %4
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind }

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

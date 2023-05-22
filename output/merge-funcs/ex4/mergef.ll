; ModuleID = 'output/merge-funcs/ex4/ex4.ll'
source_filename = "input/merge-funcs/ex4/ex4.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 }
%"class.std::__1::__wrap_iter" = type { i8* }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], %struct.anon }
%struct.anon = type { i8 }
%"class.std::__1::__basic_string_common" = type { i8 }

@_ZN2HH2ttE = local_unnamed_addr global i32 10, align 4
@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: mustprogress norecurse ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = bitcast %"class.std::__1::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25
  %7 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* nonnull %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = call fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* nonnull %3) #25
  %9 = call i32 @atoi(i8* %8)
  %10 = invoke fastcc i32* @_ZL8digitSumi(i32 %9)
          to label %11 unwind label %31

11:                                               ; preds = %2
  %12 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %3) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25
  %13 = call i32 @_ZN2HH8digitSumEi(i32 13)
  %14 = bitcast %"class.std::__1::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #25
  %15 = bitcast %"class.std::__1::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #25
  %16 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* nonnull %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  invoke fastcc void @_ZL9stringMulRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* nonnull sret(%"class.std::__1::basic_string") align 8 %4, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %5)
          to label %17 unwind label %34

17:                                               ; preds = %11
  %18 = call fastcc i32 @_ZL9stringSumRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %4)
  %19 = invoke fastcc i32* @_ZL8digitSumi(i32 %18)
          to label %20 unwind label %36

20:                                               ; preds = %17
  %21 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %4) #25
  %22 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %5) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #25
  %23 = load i32, i32* %10, align 4, !tbaa !10
  %24 = add nsw i32 %23, %13
  %25 = load i32, i32* %19, align 4, !tbaa !10
  %26 = add nsw i32 %24, %25
  %27 = call fastcc i32 @_ZL9singletoni(i32 %26)
  %28 = bitcast i32* %10 to i8*
  call void @_ZdlPv(i8* %28) #26
  %29 = bitcast i32* %19 to i8*
  call void @_ZdlPv(i8* %29) #26
  %30 = add nsw i32 %26, %27
  ret i32 %30

31:                                               ; preds = %2
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %3) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25
  br label %42

34:                                               ; preds = %11
  %35 = landingpad { i8*, i32 }
          cleanup
  br label %39

36:                                               ; preds = %17
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %4) #25
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi { i8*, i32 } [ %37, %36 ], [ %35, %34 ]
  %41 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %5) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #25
  br label %42

42:                                               ; preds = %39, %31
  %43 = phi { i8*, i32 } [ %40, %39 ], [ %32, %31 ]
  resume { i8*, i32 } %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse ssp uwtable
define internal fastcc noalias nonnull i32* @_ZL8digitSumi(i32 %0) unnamed_addr #0 {
  %2 = call noalias nonnull dereferenceable(4) i8* @_Znwm(i64 4) #27
  %3 = bitcast i8* %2 to i32*
  %4 = shl nsw i32 %0, 1
  store i32 %4, i32* %3, align 4, !tbaa !10
  ret i32* %3
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @atoi(i8* nocapture) local_unnamed_addr #2

; Function Attrs: norecurse ssp uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* returned %0, i8* %1) unnamed_addr #3 align 2 {
  %3 = alloca %"class.std::__1::basic_string"*, align 8
  call void @"5799887338402273872"(i32 8, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* %0, i8* %1, %"class.std::__1::basic_string"** %3, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %4 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %3, align 8
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #4 align 2 {
  %2 = call fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %0) #25
  ret i8* %2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #5 align 2 {
  %2 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* %0) #25
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr i32 @_ZN2HH8digitSumEi(i32 %0) local_unnamed_addr #6 align 2 {
  %2 = shl nsw i32 %0, 1
  %3 = load i32, i32* @_ZN2HH2ttE, align 4, !tbaa !10
  %4 = mul nsw i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define internal fastcc i32 @_ZL9stringSumRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = bitcast %"class.std::__1::__wrap_iter"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #25
  %5 = alloca i64, align 8
  call void @"5799887338402273872"(i32 6, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %0, i64* %5, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i64 0, i32 0
  %8 = inttoptr i64 %6 to i8*
  store i8* %8, i8** %7, align 8
  %9 = bitcast %"class.std::__1::__wrap_iter"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #25
  %10 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv(%"class.std::__1::basic_string"* nonnull %0) #25
  %11 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i64 0, i32 0
  %12 = inttoptr i64 %10 to i8*
  store i8* %12, i8** %11, align 8
  %13 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %2, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %3) #25
  br i1 %13, label %16, label %14

14:                                               ; preds = %16, %1
  %15 = phi i32 [ 0, %1 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #25
  ret i32 %15

16:                                               ; preds = %16, %1
  %17 = phi i32 [ %21, %16 ], [ 0, %1 ]
  %18 = call fastcc nonnull align 1 dereferenceable(1) i8* @_ZNKSt3__111__wrap_iterIPKcEdeEv(%"class.std::__1::__wrap_iter"* nonnull %2) #25
  %19 = load i8, i8* %18, align 1, !tbaa !14
  %20 = sext i8 %19 to i32
  %21 = add nsw i32 %17, %20
  call fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nonnull %2) #25
  %22 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %2, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %3) #25
  br i1 %22, label %16, label %14, !llvm.loop !15
}

; Function Attrs: mustprogress norecurse ssp uwtable
define internal fastcc void @_ZL9stringMulRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* noalias sret(%"class.std::__1::basic_string") align 8 %0, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = alloca %"class.std::__1::__wrap_iter", align 8
  %5 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev(%"class.std::__1::basic_string"* %0) #25
  %6 = bitcast %"class.std::__1::__wrap_iter"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #25
  %7 = alloca i64, align 8
  call void @"5799887338402273872"(i32 6, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %1, i64* %7, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i64 0, i32 0
  %10 = inttoptr i64 %8 to i8*
  store i8* %10, i8** %9, align 8
  %11 = bitcast %"class.std::__1::__wrap_iter"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #25
  %12 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv(%"class.std::__1::basic_string"* nonnull %1) #25
  %13 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %4, i64 0, i32 0
  %14 = inttoptr i64 %12 to i8*
  store i8* %14, i8** %13, align 8
  %15 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %3, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %4) #25
  br i1 %15, label %17, label %16

16:                                               ; preds = %21, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #25
  ret void

17:                                               ; preds = %21, %2
  %18 = call fastcc nonnull align 1 dereferenceable(1) i8* @_ZNKSt3__111__wrap_iterIPKcEdeEv(%"class.std::__1::__wrap_iter"* nonnull %3) #25
  %19 = load i8, i8* %18, align 1, !tbaa !14
  %20 = shl i8 %19, 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"* %0, i8 signext %20)
          to label %21 unwind label %23

21:                                               ; preds = %17
  call fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nonnull %3) #25
  %22 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %3, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %4) #25
  br i1 %22, label %17, label %16, !llvm.loop !17

23:                                               ; preds = %17
  %24 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #25
  %25 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %0) #25
  resume { i8*, i32 } %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i32 @_ZL9singletoni(i32 %0) unnamed_addr #8 {
  %2 = shl nsw i32 %0, 1
  ret i32 %2
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znwm(i64) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv(%"class.std::__1::basic_string"* %0) unnamed_addr #11 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca i8*, align 8
  call void @"5799887338402273872"(i32 5, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %0, i8** %3, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %4 = load i8*, i8** %3, align 8
  %5 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"5799887338402273872"(i32 9, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %2, i8* %4, %"class.std::__1::__wrap_iter"** %5, i32 0, i32** null)
  %6 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %5, align 8
  %7 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = ptrtoint i8* %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv(%"class.std::__1::basic_string"* %0) unnamed_addr #11 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca i8*, align 8
  call void @"5799887338402273872"(i32 5, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %0, i8** %3, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %4 = load i8*, i8** %3, align 8
  %5 = alloca i64, align 8
  call void @"5799887338402273872"(i32 3, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* %0, i64* %5, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  %8 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"5799887338402273872"(i32 9, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %2, i8* %7, %"class.std::__1::__wrap_iter"** %8, i32 0, i32** null)
  %9 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = ptrtoint i8* %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #4 {
  %3 = call fastcc zeroext i1 @_ZNSt3__1eqIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %1) #25
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc nonnull align 1 dereferenceable(1) i8* @_ZNKSt3__111__wrap_iterIPKcEdeEv(%"class.std::__1::__wrap_iter"* nocapture readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !18
  ret i8* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nocapture %0) unnamed_addr #11 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !18
  %4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %4, i8** %2, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %0) unnamed_addr #4 align 2 {
  %2 = alloca i1, align 1
  call void @"5799887338402273872"(i32 7, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i1* %2, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %3 = load i1, i1* %2, align 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = call fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %0) #25
  br label %9

6:                                                ; preds = %1
  %7 = alloca i8*, align 8
  call void @"5799887338402273872"(i32 4, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i8** %7, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %8 = load i8*, i8** %7, align 8
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i8* [ %5, %4 ], [ %8, %6 ]
  ret i8* %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC1ES2_(%"class.std::__1::__wrap_iter"* returned %0, i8* %1) unnamed_addr #12 align 2 {
  %3 = call fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC2ES2_(%"class.std::__1::__wrap_iter"* %0, i8* %1) #25
  ret %"class.std::__1::__wrap_iter"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to %"struct.std::__1::basic_string<char>::__short"*
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %4, i64 0, i32 1, i32 0
  %6 = load i8, i8* %5, align 1, !tbaa !14
  %7 = icmp slt i8 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %3, i64 0, i32 0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !tbaa !14
  ret i8* %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* readnone %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to i8*
  ret i8* %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* readnone %0) unnamed_addr #8 align 2 {
  %2 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %2) #25
  ret %"struct.std::__1::basic_string<char>::__rep"* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* readnone %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %0, i64 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC2ES2_(%"class.std::__1::__wrap_iter"* returned %0, i8* %1) unnamed_addr #12 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  store i8* %1, i8** %3, align 8, !tbaa !18
  ret %"class.std::__1::__wrap_iter"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %0) unnamed_addr #4 align 2 {
  %2 = alloca i1, align 1
  call void @"5799887338402273872"(i32 7, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i1* %2, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %3 = load i1, i1* %2, align 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %0) #25
  br label %9

6:                                                ; preds = %1
  %7 = alloca i64, align 8
  call void @"5799887338402273872"(i32 1, i64 0, i8** null, %"class.std::__1::basic_string"* %0, i64* %7, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %8 = load i64, i64* %7, align 8
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i64 [ %5, %4 ], [ %8, %6 ]
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %3, i64 0, i32 0, i32 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !14
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to %"struct.std::__1::basic_string<char>::__short"*
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %4, i64 0, i32 1, i32 0
  %6 = load i8, i8* %5, align 1, !tbaa !14
  %7 = zext i8 %6 to i64
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc zeroext i1 @_ZNSt3__1eqIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #4 {
  %3 = call fastcc i8* @_ZNKSt3__111__wrap_iterIPKcE4baseEv(%"class.std::__1::__wrap_iter"* nonnull %0) #25
  %4 = call fastcc i8* @_ZNKSt3__111__wrap_iterIPKcE4baseEv(%"class.std::__1::__wrap_iter"* nonnull %1) #25
  %5 = icmp eq i8* %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__111__wrap_iterIPKcE4baseEv(%"class.std::__1::__wrap_iter"* nocapture readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !18
  ret i8* %3
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp writeonly uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #13 align 2 {
  %2 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev(%"class.std::__1::basic_string"* %0) #25
  ret %"class.std::__1::basic_string"* %0
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"*, i8 signext) local_unnamed_addr #14

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp writeonly uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #13 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %0) #25
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %0) unnamed_addr #15 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* readnone %0) unnamed_addr #8 align 2 {
  %2 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %2) #25
  ret %"struct.std::__1::basic_string<char>::__rep"* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* readnone %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %0, i64 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %2
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #5 align 2 {
  %2 = alloca i1, align 1
  call void @"5799887338402273872"(i32 7, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i1* %2, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %3 = load i1, i1* %2, align 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = call fastcc i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %0) #25
  call fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %5) #25
  br label %6

6:                                                ; preds = %4, %1
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %0) unnamed_addr #6 align 2 {
  call fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %3, i64 0, i32 0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !tbaa !14
  ret i8* %5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  call fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0) unnamed_addr #16 {
  call fastcc void @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* %0) unnamed_addr #6 {
  call fastcc void @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_(i8* %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_(i8* %0) unnamed_addr #6 {
  call void @_ZdlPv(i8* %0) #26
  ret void
}

; Function Attrs: norecurse ssp uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* returned %0, i8* %1) unnamed_addr #3 align 2 {
  %3 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %1) #25
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %0, i8* %1, i64 %3)
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: inlinehint mustprogress ssp uwtable
define available_externally void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %0, i8* %1, i64 %2) local_unnamed_addr #17 align 2 {
  %4 = alloca i8, align 1
  %5 = icmp ugt i64 %2, -17
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  call fastcc void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorEv(%"class.std::__1::basic_string"* %0) #28
  unreachable

7:                                                ; preds = %3
  %8 = icmp ult i64 %2, 23
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %0, i64 %2) #25
  %10 = call fastcc i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %0) #25
  br label %16

11:                                               ; preds = %7
  %12 = alloca i64, align 8
  call void @"5799887338402273872"(i32 2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 %2, i64* %12, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, 1
  %15 = call fastcc i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(i64 %14)
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %0, i8* nonnull %15) #25
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %0, i64 %14) #25
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %0, i64 %2) #25
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i8* [ %10, %9 ], [ %15, %11 ]
  %18 = call i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8* nonnull %17, i8* %1, i64 %2) #25
  %19 = getelementptr inbounds i8, i8* %17, i64 %2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #25
  store i8 0, i8* %4, align 1, !tbaa !14
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* nonnull align 1 dereferenceable(1) %19, i8* nonnull align 1 dereferenceable(1) %4) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %0) local_unnamed_addr #16 align 2 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #25
  ret i64 %2
}

; Function Attrs: mustprogress noreturn ssp uwtable
define internal fastcc void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorEv(%"class.std::__1::basic_string"* %0) unnamed_addr #18 align 2 {
  %2 = bitcast %"class.std::__1::basic_string"* %0 to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %2) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #12 align 2 {
  %3 = trunc i64 %1 to i8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %5 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #25
  %6 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %5 to %"struct.std::__1::basic_string<char>::__short"*
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %6, i64 0, i32 1, i32 0
  store i8 %3, i8* %7, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* readnone %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to i8*
  ret i8* %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %0) unnamed_addr #8 align 2 {
  %2 = add i64 %0, 1
  %3 = call fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %2) #25
  %4 = add i64 %3, -1
  %5 = icmp eq i64 %4, 23
  %6 = select i1 %5, i64 %3, i64 %4
  ret i64 %6
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(i64 %0) unnamed_addr #19 align 2 {
  %2 = alloca i8*, align 8
  call void @"5799887338402273872"(i32 0, i64 %0, i8** %2, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %0, i8* %1) unnamed_addr #12 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %3) #25
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %4, i64 0, i32 0, i32 0, i32 0
  store i8* %1, i8** %5, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #12 align 2 {
  %3 = or i64 %1, -9223372036854775808
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %5 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #25
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i64 0, i32 0, i32 0, i32 2
  store i64 %3, i64* %6, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #12 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %3) #25
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %4, i64 0, i32 0, i32 0, i32 1
  store i64 %1, i64* %5, align 8, !tbaa !14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8* %0, i8* %1, i64 %2) local_unnamed_addr #16 align 2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  br label %6

6:                                                ; preds = %5, %3
  ret i8* %0
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* nonnull align 1 dereferenceable(1) %0, i8* nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #16 align 2 {
  %3 = load i8, i8* %1, align 1, !tbaa !14
  store i8 %3, i8* %0, align 1, !tbaa !14
  ret void
}

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %0) unnamed_addr #8 align 2 {
  %2 = add i64 %0, 15
  %3 = and i64 %2, -16
  ret i64 %3
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__19allocatorIcE8allocateEm(i64 %0) unnamed_addr #19 align 2 {
  %2 = call fastcc i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %0)
  ret i8* %2
}

; Function Attrs: inlinehint mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %0) unnamed_addr #17 {
  %2 = call fastcc i8* @_ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_(i64 %0)
  ret i8* %2
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_(i64 %0) unnamed_addr #19 {
  %2 = call noalias nonnull i8* @_Znwm(i64 %0) #27
  ret i8* %2
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #4 align 2 {
  %2 = alloca i8*, align 8
  call void @"5799887338402273872"(i32 5, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %0, i8** %2, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

define internal fastcc void @"5799887338402273872"(i32 %0, i64 %1, i8** %2, %"class.std::__1::basic_string"* %3, i64* %4, i64 %5, i64* %6, %"class.std::__1::basic_string"* %7, i64* %8, %"class.std::__1::basic_string"* %9, i8** %10, %"class.std::__1::basic_string"* %11, i8** %12, %"class.std::__1::basic_string"* %13, i64* %14, %"class.std::__1::basic_string"* %15, i1* %16, %"class.std::__1::basic_string"* %17, i8* %18, %"class.std::__1::basic_string"** %19, %"class.std::__1::__wrap_iter"* %20, i8* %21, %"class.std::__1::__wrap_iter"** %22, i32 %23, i32** %24) unnamed_addr #24 {
  switch i32 %0, label %26 [
    i32 0, label %27
    i32 1, label %29
    i32 2, label %36
    i32 3, label %42
    i32 4, label %52
    i32 5, label %56
    i32 6, label %66
    i32 7, label %75
    i32 8, label %82
    i32 9, label %84
    i32 10, label %86
  ]

26:                                               ; preds = %25
  ret void

27:                                               ; preds = %25
  %28 = call fastcc i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %1)
  store i8* %28, i8** %2, align 8
  ret void

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i64 0, i32 0
  %31 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %30) #25
  %32 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %31 to %"struct.std::__1::basic_string<char>::__short"*
  %33 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %32, i64 0, i32 1, i32 0
  %34 = load i8, i8* %33, align 1, !tbaa !14
  %35 = zext i8 %34 to i64
  store i64 %35, i64* %4, align 8
  ret void

36:                                               ; preds = %25
  %37 = add i64 %5, 1
  %38 = call fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %37) #25
  %39 = add i64 %38, -1
  %40 = icmp eq i64 %39, 23
  %41 = select i1 %40, i64 %38, i64 %39
  store i64 %41, i64* %6, align 8
  ret void

42:                                               ; preds = %25
  %43 = alloca i1, align 1
  call void @"5799887338402273872"(i32 7, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %7, i1* %43, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %44 = load i1, i1* %43, align 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %7) #25
  br label %50

47:                                               ; preds = %42
  %48 = alloca i64, align 8
  call void @"5799887338402273872"(i32 1, i64 0, i8** null, %"class.std::__1::basic_string"* %7, i64* %48, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %49 = load i64, i64* %48, align 8
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i64 [ %46, %45 ], [ %49, %47 ]
  store i64 %51, i64* %8, align 8
  ret void

52:                                               ; preds = %25
  %53 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %9, i64 0, i32 0
  %54 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %53) #25
  %55 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %54 to i8*
  store i8* %55, i8** %10, align 8
  ret void

56:                                               ; preds = %25
  %57 = alloca i1, align 1
  call void @"5799887338402273872"(i32 7, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %11, i1* %57, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %58 = load i1, i1* %57, align 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %11) #25
  br label %64

61:                                               ; preds = %56
  %62 = alloca i8*, align 8
  call void @"5799887338402273872"(i32 4, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %11, i8** %62, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %63 = load i8*, i8** %62, align 8
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i8* [ %60, %59 ], [ %63, %61 ]
  store i8* %65, i8** %12, align 8
  ret void

66:                                               ; preds = %25
  %67 = alloca %"class.std::__1::__wrap_iter", align 8
  %68 = alloca i8*, align 8
  call void @"5799887338402273872"(i32 5, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %13, i8** %68, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i32 0, i32** null)
  %69 = load i8*, i8** %68, align 8
  %70 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"5799887338402273872"(i32 9, i64 0, i8** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %67, i8* %69, %"class.std::__1::__wrap_iter"** %70, i32 0, i32** null)
  %71 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %70, align 8
  %72 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %67, i64 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %73 to i64
  store i64 %74, i64* %14, align 8
  ret void

75:                                               ; preds = %25
  %76 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %15, i64 0, i32 0
  %77 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %76) #25
  %78 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %77 to %"struct.std::__1::basic_string<char>::__short"*
  %79 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %78, i64 0, i32 1, i32 0
  %80 = load i8, i8* %79, align 1, !tbaa !14
  %81 = icmp slt i8 %80, 0
  store i1 %81, i1* %16, align 1
  ret void

82:                                               ; preds = %25
  %83 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %18) #25
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %17, i8* %18, i64 %83)
  store %"class.std::__1::basic_string"* %17, %"class.std::__1::basic_string"** %19, align 8
  ret void

84:                                               ; preds = %25
  %85 = call fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC2ES2_(%"class.std::__1::__wrap_iter"* %20, i8* %21) #25
  store %"class.std::__1::__wrap_iter"* %20, %"class.std::__1::__wrap_iter"** %22, align 8
  ret void

86:                                               ; preds = %25
  %87 = call noalias nonnull dereferenceable(4) i8* @_Znwm(i64 4) #27
  %88 = bitcast i8* %87 to i32*
  %89 = shl nsw i32 %23, 1
  store i32 %89, i32* %88, align 4, !tbaa !10
  store i32* %88, i32** %24, align 8
  ret void
}

attributes #0 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind ssp writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #14 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind ssp writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #16 = { inlinehint mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #17 = { inlinehint mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #18 = { mustprogress noreturn ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #19 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #20 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #21 = { argmemonly nocallback nofree nounwind willreturn }
attributes #22 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #23 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #24 = { "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn }

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
!14 = !{!12, !12, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSNSt3__111__wrap_iterIPKcEE", !20, i64 0}
!20 = !{!"any pointer", !12, i64 0}

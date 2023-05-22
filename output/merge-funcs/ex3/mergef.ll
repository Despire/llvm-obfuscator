; ModuleID = 'output/merge-funcs/ex3/ex3.ll'
source_filename = "input/merge-funcs/ex3/ex3.cpp"
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
  %7 = alloca %"class.std::__1::basic_string"*, align 8
  call void @"1902169642944650922"(i32 13, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %"class.std::__1::basic_string"** %7, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %8 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %7, align 8
  %9 = call fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* nonnull %3) #25
  %10 = call i32 @atoi(i8* %9)
  %11 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %3) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25
  %12 = call i32 @_ZN2HH8digitSumEi(i32 13)
  %13 = bitcast %"class.std::__1::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #25
  %14 = bitcast %"class.std::__1::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #25
  %15 = alloca %"class.std::__1::basic_string"*, align 8
  call void @"1902169642944650922"(i32 13, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %"class.std::__1::basic_string"** %15, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %16 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %15, align 8
  invoke fastcc void @_ZL9stringMulRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* nonnull sret(%"class.std::__1::basic_string") align 8 %4, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %5)
          to label %17 unwind label %30

17:                                               ; preds = %2
  %18 = alloca i32, align 4
  call void @"1902169642944650922"(i32 16, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 %10, i32* %18)
  %19 = load i32, i32* %18, align 4
  %20 = alloca i32, align 4
  call void @"1902169642944650922"(i32 3, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* %4, i32* %20, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %21 = load i32, i32* %20, align 4
  %22 = alloca i32, align 4
  call void @"1902169642944650922"(i32 16, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 %21, i32* %22)
  %23 = load i32, i32* %22, align 4
  %24 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %4) #25
  %25 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %5) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #25
  %26 = add nsw i32 %19, %12
  %27 = add nsw i32 %26, %23
  %28 = call fastcc i32 @_ZL9singletoni(i32 %27)
  %29 = add nsw i32 %28, %27
  ret i32 %29

30:                                               ; preds = %2
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %5) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #25
  resume { i8*, i32 } %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i32 @_ZL8digitSumi(i32 %0) unnamed_addr #2 {
  %2 = shl nsw i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @atoi(i8* nocapture) local_unnamed_addr #3

; Function Attrs: norecurse ssp uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* returned %0, i8* %1) unnamed_addr #4 align 2 {
  %3 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* %0, i8* %1)
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = call fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %0) #25
  ret i8* %2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #6 align 2 {
  %2 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* %0) #25
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr i32 @_ZN2HH8digitSumEi(i32 %0) local_unnamed_addr #7 align 2 {
  %2 = shl nsw i32 %0, 1
  %3 = load i32, i32* @_ZN2HH2ttE, align 4, !tbaa !10
  %4 = mul nsw i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define internal fastcc i32 @_ZL9stringSumRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = bitcast %"class.std::__1::__wrap_iter"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #25
  %5 = alloca i64, align 8
  call void @"1902169642944650922"(i32 11, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i64* %5, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i64 0, i32 0
  %8 = inttoptr i64 %6 to i8*
  store i8* %8, i8** %7, align 8
  %9 = bitcast %"class.std::__1::__wrap_iter"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #25
  %10 = alloca i64, align 8
  call void @"1902169642944650922"(i32 10, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* %0, i64* %10, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i64 0, i32 0
  %13 = inttoptr i64 %11 to i8*
  store i8* %13, i8** %12, align 8
  %14 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %2, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %3) #25
  br i1 %14, label %17, label %15

15:                                               ; preds = %17, %1
  %16 = phi i32 [ 0, %1 ], [ %23, %17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #25
  ret i32 %16

17:                                               ; preds = %17, %1
  %18 = phi i32 [ %23, %17 ], [ 0, %1 ]
  %19 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 8, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* %2, i8** %19, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1, !tbaa !14
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %18, %22
  call fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nonnull %2) #25
  %24 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %2, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %3) #25
  br i1 %24, label %17, label %15, !llvm.loop !15
}

; Function Attrs: mustprogress norecurse ssp uwtable
define internal fastcc void @_ZL9stringMulRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* noalias sret(%"class.std::__1::basic_string") align 8 %0, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = alloca %"class.std::__1::__wrap_iter", align 8
  %5 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev(%"class.std::__1::basic_string"* %0) #25
  %6 = bitcast %"class.std::__1::__wrap_iter"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #25
  %7 = alloca i64, align 8
  call void @"1902169642944650922"(i32 11, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %1, i64* %7, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i64 0, i32 0
  %10 = inttoptr i64 %8 to i8*
  store i8* %10, i8** %9, align 8
  %11 = bitcast %"class.std::__1::__wrap_iter"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #25
  %12 = alloca i64, align 8
  call void @"1902169642944650922"(i32 10, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* %1, i64* %12, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %4, i64 0, i32 0
  %15 = inttoptr i64 %13 to i8*
  store i8* %15, i8** %14, align 8
  %16 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %3, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %4) #25
  br i1 %16, label %18, label %17

17:                                               ; preds = %23, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #25
  ret void

18:                                               ; preds = %23, %2
  %19 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 8, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* %3, i8** %19, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1, !tbaa !14
  %22 = shl i8 %21, 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"* %0, i8 signext %22)
          to label %23 unwind label %25

23:                                               ; preds = %18
  call fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nonnull %3) #25
  %24 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %3, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %4) #25
  br i1 %24, label %18, label %17, !llvm.loop !17

25:                                               ; preds = %18
  %26 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #25
  %27 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %0) #25
  resume { i8*, i32 } %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i32 @_ZL9singletoni(i32 %0) unnamed_addr #2 {
  %2 = shl nsw i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv(%"class.std::__1::basic_string"* %0) unnamed_addr #9 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 6, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* %0, i8** %3, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %4 = load i8*, i8** %3, align 8
  %5 = call fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC1ES2_(%"class.std::__1::__wrap_iter"* nonnull %2, i8* %4) #25
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = ptrtoint i8* %7 to i64
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv(%"class.std::__1::basic_string"* %0) unnamed_addr #9 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 6, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* %0, i8** %3, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %4 = load i8*, i8** %3, align 8
  %5 = alloca i64, align 8
  call void @"1902169642944650922"(i32 7, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %0, i64* %5, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  %8 = call fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC1ES2_(%"class.std::__1::__wrap_iter"* nonnull %2, i8* %7) #25
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %10 to i64
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #5 {
  %3 = alloca i1, align 1
  call void @"1902169642944650922"(i32 14, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %0, %"class.std::__1::__wrap_iter"* %1, i1* %3, i64 0, i8** null, i32 0, i32* null)
  %4 = load i1, i1* %3, align 1
  %5 = xor i1 %4, true
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc nonnull align 1 dereferenceable(1) i8* @_ZNKSt3__111__wrap_iterIPKcEdeEv(%"class.std::__1::__wrap_iter"* nocapture readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !18
  ret i8* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nocapture %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !18
  %4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %4, i8** %2, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %0) unnamed_addr #5 align 2 {
  %2 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %0) #25
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = call fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %0) #25
  br label %8

5:                                                ; preds = %1
  %6 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 4, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* %0, i8** %6, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %7 = load i8*, i8** %6, align 8
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i8* [ %4, %3 ], [ %7, %5 ]
  ret i8* %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC1ES2_(%"class.std::__1::__wrap_iter"* returned %0, i8* %1) unnamed_addr #10 align 2 {
  %3 = call fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC2ES2_(%"class.std::__1::__wrap_iter"* %0, i8* %1) #25
  ret %"class.std::__1::__wrap_iter"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to %"struct.std::__1::basic_string<char>::__short"*
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %4, i64 0, i32 1, i32 0
  %6 = load i8, i8* %5, align 1, !tbaa !14
  %7 = icmp slt i8 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %3, i64 0, i32 0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !tbaa !14
  ret i8* %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* readnone %0) unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to i8*
  ret i8* %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* readnone %0) unnamed_addr #2 align 2 {
  %2 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %0, i64 0, i32 0
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"1902169642944650922"(i32 9, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  ret %"struct.std::__1::basic_string<char>::__rep"* %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* readnone %0) unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %0, i64 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC2ES2_(%"class.std::__1::__wrap_iter"* returned %0, i8* %1) unnamed_addr #10 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  store i8* %1, i8** %3, align 8, !tbaa !18
  ret %"class.std::__1::__wrap_iter"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %0) unnamed_addr #5 align 2 {
  %2 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %0) #25
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %0) #25
  br label %7

5:                                                ; preds = %1
  %6 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %0) #25
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i64 [ %4, %3 ], [ %6, %5 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %3, i64 0, i32 0, i32 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !14
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to %"struct.std::__1::basic_string<char>::__short"*
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %4, i64 0, i32 1, i32 0
  %6 = load i8, i8* %5, align 1, !tbaa !14
  %7 = zext i8 %6 to i64
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc zeroext i1 @_ZNSt3__1eqIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #5 {
  %3 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 5, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %0, i8** %3, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %4 = load i8*, i8** %3, align 8
  %5 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 5, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %1, i8** %5, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__111__wrap_iterIPKcE4baseEv(%"class.std::__1::__wrap_iter"* nocapture readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !18
  ret i8* %3
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp writeonly uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #11 align 2 {
  %2 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev(%"class.std::__1::basic_string"* %0) #25
  ret %"class.std::__1::basic_string"* %0
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"*, i8 signext) local_unnamed_addr #12

; Function Attrs: inlinehint nofree norecurse nosync nounwind ssp writeonly uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #11 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %0) #25
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %0) unnamed_addr #13 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"1902169642944650922"(i32 2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  %5 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* readnone %0) unnamed_addr #2 align 2 {
  %2 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %2) #25
  ret %"struct.std::__1::basic_string<char>::__rep"* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* readnone %0) unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %0, i64 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %2
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #6 align 2 {
  %2 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %0) #25
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = call fastcc i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %0) #25
  call fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %4) #25
  br label %5

5:                                                ; preds = %3, %1
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %0) unnamed_addr #7 align 2 {
  call fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"1902169642944650922"(i32 2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %4, i64 0, i32 0, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !14
  ret i8* %6
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  call fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0) unnamed_addr #14 {
  call fastcc void @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* %0) unnamed_addr #7 {
  call fastcc void @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_(i8* %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_(i8* %0) unnamed_addr #7 {
  call void @_ZdlPv(i8* %0) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #15

; Function Attrs: norecurse ssp uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* returned %0, i8* %1) unnamed_addr #4 align 2 {
  %3 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %1) #25
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %0, i8* %1, i64 %3)
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: inlinehint mustprogress ssp uwtable
define available_externally void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %0, i8* %1, i64 %2) local_unnamed_addr #16 align 2 {
  %4 = alloca i8, align 1
  %5 = icmp ugt i64 %2, -17
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  call fastcc void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorEv(%"class.std::__1::basic_string"* %0) #27
  unreachable

7:                                                ; preds = %3
  %8 = icmp ult i64 %2, 23
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %0, i64 %2) #25
  %10 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 1, i64 0, i8** null, %"class.std::__1::basic_string"* %0, i8** %10, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %11 = load i8*, i8** %10, align 8
  br label %16

12:                                               ; preds = %7
  %13 = call fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %2) #25
  %14 = add i64 %13, 1
  %15 = call fastcc i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(i64 %14)
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %0, i8* nonnull %15) #25
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %0, i64 %14) #25
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %0, i64 %2) #25
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i8* [ %11, %9 ], [ %15, %12 ]
  %18 = call i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8* nonnull %17, i8* %1, i64 %2) #25
  %19 = getelementptr inbounds i8, i8* %17, i64 %2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #25
  store i8 0, i8* %4, align 1, !tbaa !14
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* nonnull align 1 dereferenceable(1) %19, i8* nonnull align 1 dereferenceable(1) %4) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %0) local_unnamed_addr #14 align 2 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #25
  ret i64 %2
}

; Function Attrs: mustprogress noreturn ssp uwtable
define internal fastcc void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorEv(%"class.std::__1::basic_string"* %0) unnamed_addr #17 align 2 {
  %2 = bitcast %"class.std::__1::basic_string"* %0 to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %2) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #10 align 2 {
  %3 = trunc i64 %1 to i8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %5 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"1902169642944650922"(i32 2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* %4, %"struct.std::__1::basic_string<char>::__rep"** %5, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %6 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %5, align 8
  %7 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %6 to %"struct.std::__1::basic_string<char>::__short"*
  %8 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %7, i64 0, i32 1, i32 0
  store i8 %3, i8* %8, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* readnone %0) unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"1902169642944650922"(i32 2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  %5 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %4 to i8*
  ret i8* %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %0) unnamed_addr #2 align 2 {
  %2 = add i64 %0, 1
  %3 = call fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %2) #25
  %4 = add i64 %3, -1
  %5 = icmp eq i64 %4, 23
  %6 = select i1 %5, i64 %3, i64 %4
  ret i64 %6
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(i64 %0) unnamed_addr #18 align 2 {
  %2 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 15, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 %0, i8** %2, i32 0, i32* null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %0, i8* %1) unnamed_addr #10 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"1902169642944650922"(i32 2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* %3, %"struct.std::__1::basic_string<char>::__rep"** %4, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %5 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i64 0, i32 0, i32 0, i32 0
  store i8* %1, i8** %6, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #10 align 2 {
  %3 = or i64 %1, -9223372036854775808
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %5 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"1902169642944650922"(i32 2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* %4, %"struct.std::__1::basic_string<char>::__rep"** %5, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %6 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %5, align 8
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %6, i64 0, i32 0, i32 0, i32 2
  store i64 %3, i64* %7, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #10 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"1902169642944650922"(i32 2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* %3, %"struct.std::__1::basic_string<char>::__rep"** %4, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %5 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i64 0, i32 0, i32 0, i32 1
  store i64 %1, i64* %6, align 8, !tbaa !14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8* %0, i8* %1, i64 %2) local_unnamed_addr #14 align 2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  br label %6

6:                                                ; preds = %5, %3
  ret i8* %0
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* nonnull align 1 dereferenceable(1) %0, i8* nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #14 align 2 {
  %3 = load i8, i8* %1, align 1, !tbaa !14
  store i8 %3, i8* %0, align 1, !tbaa !14
  ret void
}

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %0) unnamed_addr #2 align 2 {
  %2 = add i64 %0, 15
  %3 = and i64 %2, -16
  ret i64 %3
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__19allocatorIcE8allocateEm(i64 %0) unnamed_addr #18 align 2 {
  %2 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 12, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 %0, i8** %2, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: inlinehint mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %0) unnamed_addr #16 {
  %2 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 0, i64 %0, i8** %2, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_(i64 %0) unnamed_addr #18 {
  %2 = call noalias nonnull i8* @_Znwm(i64 %0) #28
  ret i8* %2
}

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znwm(i64) local_unnamed_addr #20

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 6, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* %0, i8** %2, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

define internal fastcc void @"1902169642944650922"(i32 %0, i64 %1, i8** %2, %"class.std::__1::basic_string"* %3, i8** %4, %"class.std::__1::__compressed_pair"* %5, %"struct.std::__1::basic_string<char>::__rep"** %6, %"class.std::__1::basic_string"* %7, i32* %8, %"class.std::__1::basic_string"* %9, i8** %10, %"class.std::__1::__wrap_iter"* %11, i8** %12, %"class.std::__1::basic_string"* %13, i8** %14, %"class.std::__1::basic_string"* %15, i64* %16, %"class.std::__1::__wrap_iter"* %17, i8** %18, %"struct.std::__1::__compressed_pair_elem"* %19, %"struct.std::__1::basic_string<char>::__rep"** %20, %"class.std::__1::basic_string"* %21, i64* %22, %"class.std::__1::basic_string"* %23, i64* %24, i64 %25, i8** %26, %"class.std::__1::basic_string"* %27, i8* %28, %"class.std::__1::basic_string"** %29, %"class.std::__1::__wrap_iter"* %30, %"class.std::__1::__wrap_iter"* %31, i1* %32, i64 %33, i8** %34, i32 %35, i32* %36) unnamed_addr #24 {
  switch i32 %0, label %38 [
    i32 0, label %39
    i32 1, label %41
    i32 2, label %46
    i32 3, label %49
    i32 4, label %73
    i32 5, label %77
    i32 6, label %80
    i32 7, label %89
    i32 8, label %97
    i32 9, label %100
    i32 10, label %102
    i32 11, label %113
    i32 12, label %121
    i32 13, label %124
    i32 14, label %126
    i32 15, label %132
    i32 16, label %135
  ]

38:                                               ; preds = %37
  ret void

39:                                               ; preds = %37
  %40 = call noalias nonnull i8* @_Znwm(i64 %1) #28
  store i8* %40, i8** %2, align 8
  ret void

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i64 0, i32 0
  %43 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"1902169642944650922"(i32 2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* %42, %"struct.std::__1::basic_string<char>::__rep"** %43, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %44 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %43, align 8
  %45 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %44 to i8*
  store i8* %45, i8** %4, align 8
  ret void

46:                                               ; preds = %37
  %47 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %5, i64 0, i32 0
  %48 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %47) #25
  store %"struct.std::__1::basic_string<char>::__rep"* %48, %"struct.std::__1::basic_string<char>::__rep"** %6, align 8
  ret void

49:                                               ; preds = %37
  %50 = alloca %"class.std::__1::__wrap_iter", align 8
  %51 = alloca %"class.std::__1::__wrap_iter", align 8
  %52 = bitcast %"class.std::__1::__wrap_iter"* %50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #25
  %53 = alloca i64, align 8
  call void @"1902169642944650922"(i32 11, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %7, i64* %53, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %50, i64 0, i32 0
  %56 = inttoptr i64 %54 to i8*
  store i8* %56, i8** %55, align 8
  %57 = bitcast %"class.std::__1::__wrap_iter"* %51 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #25
  %58 = alloca i64, align 8
  call void @"1902169642944650922"(i32 10, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* %7, i64* %58, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %51, i64 0, i32 0
  %61 = inttoptr i64 %59 to i8*
  store i8* %61, i8** %60, align 8
  %62 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %50, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %51) #25
  br i1 %62, label %65, label %63

63:                                               ; preds = %65, %49
  %64 = phi i32 [ 0, %49 ], [ %71, %65 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #25
  store i32 %64, i32* %8, align 4
  ret void

65:                                               ; preds = %65, %49
  %66 = phi i32 [ %71, %65 ], [ 0, %49 ]
  %67 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 8, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* %50, i8** %67, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1, !tbaa !14
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %66, %70
  call fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nonnull %50) #25
  %72 = call fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %50, %"class.std::__1::__wrap_iter"* nonnull align 8 dereferenceable(8) %51) #25
  br i1 %72, label %65, label %63, !llvm.loop !15

73:                                               ; preds = %37
  %74 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %9, i64 0, i32 0
  %75 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %74) #25
  %76 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %75 to i8*
  store i8* %76, i8** %10, align 8
  ret void

77:                                               ; preds = %37
  %78 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %11, i64 0, i32 0
  %79 = load i8*, i8** %78, align 8, !tbaa !18
  store i8* %79, i8** %12, align 8
  ret void

80:                                               ; preds = %37
  %81 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %13) #25
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = call fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %13) #25
  br label %87

84:                                               ; preds = %80
  %85 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 4, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* %13, i8** %85, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %86 = load i8*, i8** %85, align 8
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi i8* [ %83, %82 ], [ %86, %84 ]
  store i8* %88, i8** %14, align 8
  ret void

89:                                               ; preds = %37
  %90 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %15) #25
  br i1 %90, label %91, label %93

91:                                               ; preds = %89
  %92 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %15) #25
  br label %95

93:                                               ; preds = %89
  %94 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %15) #25
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i64 [ %92, %91 ], [ %94, %93 ]
  store i64 %96, i64* %16, align 8
  ret void

97:                                               ; preds = %37
  %98 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %17, i64 0, i32 0
  %99 = load i8*, i8** %98, align 8, !tbaa !18
  store i8* %99, i8** %18, align 8
  ret void

100:                                              ; preds = %37
  %101 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %19, i64 0, i32 0
  store %"struct.std::__1::basic_string<char>::__rep"* %101, %"struct.std::__1::basic_string<char>::__rep"** %20, align 8
  ret void

102:                                              ; preds = %37
  %103 = alloca %"class.std::__1::__wrap_iter", align 8
  %104 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 6, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* %21, i8** %104, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %105 = load i8*, i8** %104, align 8
  %106 = alloca i64, align 8
  call void @"1902169642944650922"(i32 7, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %21, i64* %106, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = call fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC1ES2_(%"class.std::__1::__wrap_iter"* nonnull %103, i8* %108) #25
  %110 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %103, i64 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = ptrtoint i8* %111 to i64
  store i64 %112, i64* %22, align 8
  ret void

113:                                              ; preds = %37
  %114 = alloca %"class.std::__1::__wrap_iter", align 8
  %115 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 6, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* %23, i8** %115, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %116 = load i8*, i8** %115, align 8
  %117 = call fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC1ES2_(%"class.std::__1::__wrap_iter"* nonnull %114, i8* %116) #25
  %118 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %114, i64 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %119 to i64
  store i64 %120, i64* %24, align 8
  ret void

121:                                              ; preds = %37
  %122 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 0, i64 %25, i8** %122, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %26, align 8
  ret void

124:                                              ; preds = %37
  %125 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* %27, i8* %28)
  store %"class.std::__1::basic_string"* %27, %"class.std::__1::basic_string"** %29, align 8
  ret void

126:                                              ; preds = %37
  %127 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 5, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %30, i8** %127, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %128 = load i8*, i8** %127, align 8
  %129 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 5, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %31, i8** %129, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %130 = load i8*, i8** %129, align 8
  %131 = icmp eq i8* %128, %130
  store i1 %131, i1* %32, align 1
  ret void

132:                                              ; preds = %37
  %133 = alloca i8*, align 8
  call void @"1902169642944650922"(i32 12, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i32* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, i64 %33, i8** %133, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, i64 0, i8** null, i32 0, i32* null)
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %34, align 8
  ret void

135:                                              ; preds = %37
  %136 = shl nsw i32 %35, 1
  store i32 %136, i32* %36, align 4
  ret void
}

attributes #0 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind ssp writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #12 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind ssp writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #14 = { inlinehint mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #16 = { inlinehint mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #17 = { mustprogress noreturn ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #18 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #19 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #20 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #21 = { argmemonly nocallback nofree nounwind willreturn }
attributes #22 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #23 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #24 = { "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }

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

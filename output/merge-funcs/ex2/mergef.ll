; ModuleID = 'output/merge-funcs/ex2/ex2.ll'
source_filename = "input/merge-funcs/ex2/ex2.cpp"
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
  %10 = call i32 @_ZN2HH8digitSumEi(i32 13)
  %11 = bitcast %"class.std::__1::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #25
  %12 = bitcast %"class.std::__1::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #25
  %13 = invoke fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* nonnull %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
          to label %14 unwind label %24

14:                                               ; preds = %2
  invoke fastcc void @_ZL9stringMulRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* nonnull sret(%"class.std::__1::basic_string") align 8 %4, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %5)
          to label %15 unwind label %26

15:                                               ; preds = %14
  %16 = call fastcc i32 @_ZL8digitSumi(i32 %9)
  %17 = add nsw i32 %16, %10
  %18 = call fastcc i32 @_ZL9stringSumRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %4)
  %19 = call fastcc i32 @_ZL8digitSumi(i32 %18)
  %20 = add nsw i32 %17, %19
  %21 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %4) #25
  %22 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %5) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #25
  %23 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %3) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25
  ret i32 %20

24:                                               ; preds = %2
  %25 = landingpad { i8*, i32 }
          cleanup
  br label %29

26:                                               ; preds = %14
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %5) #25
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi { i8*, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #25
  %31 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %3) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25
  resume { i8*, i32 } %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i32 @_ZL8digitSumi(i32 %0) unnamed_addr #1 {
  %2 = shl nsw i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @atoi(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse ssp uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* returned %0, i8* %1) unnamed_addr #4 align 2 {
  %3 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* %0, i8* %1)
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 0, %"class.std::__1::basic_string"* %0, i8** %2, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr i32 @_ZN2HH8digitSumEi(i32 %0) local_unnamed_addr #6 align 2 {
  %2 = shl nsw i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable
define internal fastcc i32 @_ZL9stringSumRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = bitcast %"class.std::__1::__wrap_iter"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #25
  %5 = alloca i64, align 8
  call void @"14989644113125594000"(i32 15, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i64* %5, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i64 0, i32 0
  %8 = inttoptr i64 %6 to i8*
  store i8* %8, i8** %7, align 8
  %9 = bitcast %"class.std::__1::__wrap_iter"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #25
  %10 = alloca i64, align 8
  call void @"14989644113125594000"(i32 13, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* %0, i64* %10, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i64 0, i32 0
  %13 = inttoptr i64 %11 to i8*
  store i8* %13, i8** %12, align 8
  %14 = alloca i1, align 1
  call void @"14989644113125594000"(i32 12, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %2, %"class.std::__1::__wrap_iter"* %3, i1* %14, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %15 = load i1, i1* %14, align 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %18, %1
  %17 = phi i32 [ 0, %1 ], [ %24, %18 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #25
  ret i32 %17

18:                                               ; preds = %18, %1
  %19 = phi i32 [ %24, %18 ], [ 0, %1 ]
  %20 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 9, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* %2, i8** %20, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1, !tbaa !10
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %19, %23
  call fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nonnull %2) #25
  %25 = alloca i1, align 1
  call void @"14989644113125594000"(i32 12, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %2, %"class.std::__1::__wrap_iter"* %3, i1* %25, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %26 = load i1, i1* %25, align 1
  br i1 %26, label %18, label %16, !llvm.loop !13
}

; Function Attrs: mustprogress norecurse ssp uwtable
define internal fastcc void @_ZL9stringMulRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* noalias sret(%"class.std::__1::basic_string") align 8 %0, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = alloca %"class.std::__1::__wrap_iter", align 8
  %5 = alloca %"class.std::__1::basic_string"*, align 8
  call void @"14989644113125594000"(i32 11, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %5, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %6 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %5, align 8
  %7 = bitcast %"class.std::__1::__wrap_iter"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #25
  %8 = alloca i64, align 8
  call void @"14989644113125594000"(i32 15, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %1, i64* %8, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i64 0, i32 0
  %11 = inttoptr i64 %9 to i8*
  store i8* %11, i8** %10, align 8
  %12 = bitcast %"class.std::__1::__wrap_iter"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #25
  %13 = alloca i64, align 8
  call void @"14989644113125594000"(i32 13, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* %1, i64* %13, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %4, i64 0, i32 0
  %16 = inttoptr i64 %14 to i8*
  store i8* %16, i8** %15, align 8
  %17 = alloca i1, align 1
  call void @"14989644113125594000"(i32 12, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %3, %"class.std::__1::__wrap_iter"* %4, i1* %17, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %18 = load i1, i1* %17, align 1
  br i1 %18, label %20, label %19

19:                                               ; preds = %25, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #25
  ret void

20:                                               ; preds = %25, %2
  %21 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 9, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* %3, i8** %21, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1, !tbaa !10
  %24 = shl i8 %23, 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"* %0, i8 signext %24)
          to label %25 unwind label %28

25:                                               ; preds = %20
  call fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nonnull %3) #25
  %26 = alloca i1, align 1
  call void @"14989644113125594000"(i32 12, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %3, %"class.std::__1::__wrap_iter"* %4, i1* %26, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %27 = load i1, i1* %26, align 1
  br i1 %27, label %20, label %19, !llvm.loop !15

28:                                               ; preds = %20
  %29 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #25
  %30 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %0) #25
  resume { i8*, i32 } %29
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #8 align 2 {
  %2 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* %0) #25
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv(%"class.std::__1::basic_string"* %0) unnamed_addr #9 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 16, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i8** %3, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %4 = load i8*, i8** %3, align 8
  %5 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"14989644113125594000"(i32 8, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* %2, i8* %4, %"class.std::__1::__wrap_iter"** %5, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %6 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %5, align 8
  %7 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = ptrtoint i8* %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv(%"class.std::__1::basic_string"* %0) unnamed_addr #9 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 16, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i8** %3, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %4 = load i8*, i8** %3, align 8
  %5 = alloca i64, align 8
  call void @"14989644113125594000"(i32 7, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %0, i64* %5, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  %8 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"14989644113125594000"(i32 8, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* %2, i8* %7, %"class.std::__1::__wrap_iter"** %8, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %9 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = ptrtoint i8* %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc zeroext i1 @_ZNSt3__1neIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #5 {
  %3 = alloca i1, align 1
  call void @"14989644113125594000"(i32 17, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %0, %"class.std::__1::__wrap_iter"* %1, i1* %3, %"class.std::__1::basic_string"* null, i8** null)
  %4 = load i1, i1* %3, align 1
  %5 = xor i1 %4, true
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc nonnull align 1 dereferenceable(1) i8* @_ZNKSt3__111__wrap_iterIPKcEdeEv(%"class.std::__1::__wrap_iter"* nocapture readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !16
  ret i8* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nocapture %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !16
  %4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %4, i8** %2, align 8, !tbaa !16
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
  call void @"14989644113125594000"(i32 18, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* %0, i8** %6)
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
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"14989644113125594000"(i32 10, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  %5 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %4 to %"struct.std::__1::basic_string<char>::__short"*
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %5, i64 0, i32 1, i32 0
  %7 = load i8, i8* %6, align 1, !tbaa !10
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"14989644113125594000"(i32 10, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %4, i64 0, i32 0, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !10
  ret i8* %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* readnone %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"14989644113125594000"(i32 10, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  %5 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %4 to i8*
  ret i8* %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* readnone %0) unnamed_addr #1 align 2 {
  %2 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %2) #25
  ret %"struct.std::__1::basic_string<char>::__rep"* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* readnone %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %0, i64 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC2ES2_(%"class.std::__1::__wrap_iter"* returned %0, i8* %1) unnamed_addr #10 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  store i8* %1, i8** %3, align 8, !tbaa !16
  ret %"class.std::__1::__wrap_iter"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %0) unnamed_addr #5 align 2 {
  %2 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %0) #25
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %0) #25
  br label %8

5:                                                ; preds = %1
  %6 = alloca i64, align 8
  call void @"14989644113125594000"(i32 14, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i64* %6, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %7 = load i64, i64* %6, align 8
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i64 [ %4, %3 ], [ %7, %5 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"14989644113125594000"(i32 10, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %4, i64 0, i32 0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !10
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"14989644113125594000"(i32 10, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  %5 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %4 to %"struct.std::__1::basic_string<char>::__short"*
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %5, i64 0, i32 1, i32 0
  %7 = load i8, i8* %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i64
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc zeroext i1 @_ZNSt3__1eqIPKcEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* nocapture nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #5 {
  %3 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 5, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %0, i8** %3, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %4 = load i8*, i8** %3, align 8
  %5 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 5, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %1, i8** %5, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNKSt3__111__wrap_iterIPKcE4baseEv(%"class.std::__1::__wrap_iter"* nocapture readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !16
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
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* readnone %0) unnamed_addr #1 align 2 {
  %2 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %2) #25
  ret %"struct.std::__1::basic_string<char>::__rep"* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* readnone %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %0, i64 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %2
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #8 align 2 {
  %2 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %0) #25
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 4, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* %0, i8** %4, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %5 = load i8*, i8** %4, align 8
  call fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %5) #25
  br label %6

6:                                                ; preds = %3, %1
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %0) unnamed_addr #6 align 2 {
  call fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %3, i64 0, i32 0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !tbaa !10
  ret i8* %5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  call fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0) unnamed_addr #14 {
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
  call void @"14989644113125594000"(i32 6, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* %0, i8** %10, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
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
  store i8 0, i8* %4, align 1, !tbaa !10
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
  %5 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #25
  %6 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %5 to %"struct.std::__1::basic_string<char>::__short"*
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %6, i64 0, i32 1, i32 0
  store i8 %3, i8* %7, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* readnone %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #25
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to i8*
  ret i8* %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %0) unnamed_addr #1 align 2 {
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
  call void @"14989644113125594000"(i32 3, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 %0, i8** %2, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %0, i8* %1) unnamed_addr #10 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %3) #25
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %4, i64 0, i32 0, i32 0, i32 0
  store i8* %1, i8** %5, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #10 align 2 {
  %3 = or i64 %1, -9223372036854775808
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %5 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #25
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i64 0, i32 0, i32 0, i32 2
  store i64 %3, i64* %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #10 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %3) #25
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %4, i64 0, i32 0, i32 0, i32 1
  store i64 %1, i64* %5, align 8, !tbaa !10
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
  %3 = load i8, i8* %1, align 1, !tbaa !10
  store i8 %3, i8* %0, align 1, !tbaa !10
  ret void
}

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %0) unnamed_addr #1 align 2 {
  %2 = add i64 %0, 15
  %3 = and i64 %2, -16
  ret i64 %3
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__19allocatorIcE8allocateEm(i64 %0) unnamed_addr #18 align 2 {
  %2 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 2, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 %0, i8** %2, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: inlinehint mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %0) unnamed_addr #16 {
  %2 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 1, %"class.std::__1::basic_string"* null, i8** null, i64 %0, i8** %2, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
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
  call void @"14989644113125594000"(i32 16, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %0, i8** %2, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

define internal fastcc void @"14989644113125594000"(i32 %0, %"class.std::__1::basic_string"* %1, i8** %2, i64 %3, i8** %4, i64 %5, i8** %6, i64 %7, i8** %8, %"class.std::__1::basic_string"* %9, i8** %10, %"class.std::__1::__wrap_iter"* %11, i8** %12, %"class.std::__1::basic_string"* %13, i8** %14, %"class.std::__1::basic_string"* %15, i64* %16, %"class.std::__1::__wrap_iter"* %17, i8* %18, %"class.std::__1::__wrap_iter"** %19, %"class.std::__1::__wrap_iter"* %20, i8** %21, %"class.std::__1::__compressed_pair"* %22, %"struct.std::__1::basic_string<char>::__rep"** %23, %"class.std::__1::basic_string"* %24, %"class.std::__1::basic_string"** %25, %"class.std::__1::__wrap_iter"* %26, %"class.std::__1::__wrap_iter"* %27, i1* %28, %"class.std::__1::basic_string"* %29, i64* %30, %"class.std::__1::basic_string"* %31, i64* %32, %"class.std::__1::basic_string"* %33, i64* %34, %"class.std::__1::basic_string"* %35, i8** %36, %"class.std::__1::__wrap_iter"* %37, %"class.std::__1::__wrap_iter"* %38, i1* %39, %"class.std::__1::basic_string"* %40, i8** %41) unnamed_addr #24 align 2 {
  switch i32 %0, label %43 [
    i32 0, label %44
    i32 1, label %47
    i32 2, label %49
    i32 3, label %52
    i32 4, label %55
    i32 5, label %60
    i32 6, label %63
    i32 7, label %67
    i32 8, label %76
    i32 9, label %78
    i32 10, label %81
    i32 11, label %84
    i32 12, label %86
    i32 13, label %90
    i32 14, label %102
    i32 15, label %110
    i32 16, label %119
    i32 17, label %128
    i32 18, label %134
  ]

43:                                               ; preds = %42
  ret void

44:                                               ; preds = %42
  %45 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 16, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %1, i8** %45, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %2, align 8
  ret void

47:                                               ; preds = %42
  %48 = call noalias nonnull i8* @_Znwm(i64 %3) #28
  store i8* %48, i8** %4, align 8
  ret void

49:                                               ; preds = %42
  %50 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 1, %"class.std::__1::basic_string"* null, i8** null, i64 %5, i8** %50, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %6, align 8
  ret void

52:                                               ; preds = %42
  %53 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 2, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 %7, i8** %53, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %8, align 8
  ret void

55:                                               ; preds = %42
  %56 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %9, i64 0, i32 0
  %57 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %56) #25
  %58 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %57, i64 0, i32 0, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8, !tbaa !10
  store i8* %59, i8** %10, align 8
  ret void

60:                                               ; preds = %42
  %61 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %11, i64 0, i32 0
  %62 = load i8*, i8** %61, align 8, !tbaa !16
  store i8* %62, i8** %12, align 8
  ret void

63:                                               ; preds = %42
  %64 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %13, i64 0, i32 0
  %65 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %64) #25
  %66 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %65 to i8*
  store i8* %66, i8** %14, align 8
  ret void

67:                                               ; preds = %42
  %68 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %15) #25
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %70 = call fastcc i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %15) #25
  br label %74

71:                                               ; preds = %67
  %72 = alloca i64, align 8
  call void @"14989644113125594000"(i32 14, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %15, i64* %72, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %73 = load i64, i64* %72, align 8
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i64 [ %70, %69 ], [ %73, %71 ]
  store i64 %75, i64* %16, align 8
  ret void

76:                                               ; preds = %42
  %77 = call fastcc %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPKcEC2ES2_(%"class.std::__1::__wrap_iter"* %17, i8* %18) #25
  store %"class.std::__1::__wrap_iter"* %17, %"class.std::__1::__wrap_iter"** %19, align 8
  ret void

78:                                               ; preds = %42
  %79 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %20, i64 0, i32 0
  %80 = load i8*, i8** %79, align 8, !tbaa !16
  store i8* %80, i8** %21, align 8
  ret void

81:                                               ; preds = %42
  %82 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %22, i64 0, i32 0
  %83 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %82) #25
  store %"struct.std::__1::basic_string<char>::__rep"* %83, %"struct.std::__1::basic_string<char>::__rep"** %23, align 8
  ret void

84:                                               ; preds = %42
  %85 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev(%"class.std::__1::basic_string"* %24) #25
  store %"class.std::__1::basic_string"* %24, %"class.std::__1::basic_string"** %25, align 8
  ret void

86:                                               ; preds = %42
  %87 = alloca i1, align 1
  call void @"14989644113125594000"(i32 17, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %26, %"class.std::__1::__wrap_iter"* %27, i1* %87, %"class.std::__1::basic_string"* null, i8** null)
  %88 = load i1, i1* %87, align 1
  %89 = xor i1 %88, true
  store i1 %89, i1* %28, align 1
  ret void

90:                                               ; preds = %42
  %91 = alloca %"class.std::__1::__wrap_iter", align 8
  %92 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 16, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %29, i8** %92, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %93 = load i8*, i8** %92, align 8
  %94 = alloca i64, align 8
  call void @"14989644113125594000"(i32 7, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %29, i64* %94, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"14989644113125594000"(i32 8, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* %91, i8* %96, %"class.std::__1::__wrap_iter"** %97, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %98 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %97, align 8
  %99 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %91, i64 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %100 to i64
  store i64 %101, i64* %30, align 8
  ret void

102:                                              ; preds = %42
  %103 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %31, i64 0, i32 0
  %104 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"14989644113125594000"(i32 10, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* %103, %"struct.std::__1::basic_string<char>::__rep"** %104, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %105 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %104, align 8
  %106 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %105 to %"struct.std::__1::basic_string<char>::__short"*
  %107 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %106, i64 0, i32 1, i32 0
  %108 = load i8, i8* %107, align 1, !tbaa !10
  %109 = zext i8 %108 to i64
  store i64 %109, i64* %32, align 8
  ret void

110:                                              ; preds = %42
  %111 = alloca %"class.std::__1::__wrap_iter", align 8
  %112 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 16, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %33, i8** %112, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %113 = load i8*, i8** %112, align 8
  %114 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"14989644113125594000"(i32 8, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* %111, i8* %113, %"class.std::__1::__wrap_iter"** %114, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %115 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %114, align 8
  %116 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %111, i64 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = ptrtoint i8* %117 to i64
  store i64 %118, i64* %34, align 8
  ret void

119:                                              ; preds = %42
  %120 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %35) #25
  br i1 %120, label %121, label %123

121:                                              ; preds = %119
  %122 = call fastcc i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %35) #25
  br label %126

123:                                              ; preds = %119
  %124 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 18, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* %35, i8** %124)
  %125 = load i8*, i8** %124, align 8
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi i8* [ %122, %121 ], [ %125, %123 ]
  store i8* %127, i8** %36, align 8
  ret void

128:                                              ; preds = %42
  %129 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 5, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %37, i8** %129, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %130 = load i8*, i8** %129, align 8
  %131 = alloca i8*, align 8
  call void @"14989644113125594000"(i32 5, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* %38, i8** %131, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %132 = load i8*, i8** %131, align 8
  %133 = icmp eq i8* %130, %132
  store i1 %133, i1* %39, align 1
  ret void

134:                                              ; preds = %42
  %135 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %40, i64 0, i32 0
  %136 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"14989644113125594000"(i32 10, %"class.std::__1::basic_string"* null, i8** null, i64 0, i8** null, i64 0, i8** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__compressed_pair"* %135, %"struct.std::__1::basic_string<char>::__rep"** %136, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null)
  %137 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %136, align 8
  %138 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %137 to i8*
  store i8* %138, i8** %41, align 8
  ret void
}

attributes #0 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !14}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt3__111__wrap_iterIPKcEE", !18, i64 0}
!18 = !{!"any pointer", !11, i64 0}

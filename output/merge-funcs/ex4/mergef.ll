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
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], %struct.anon }
%struct.anon = type { i8 }

@_ZN2HH2ttE = local_unnamed_addr global i32 10, align 4
@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: mustprogress norecurse ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = bitcast %"class.std::__1::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19
  %7 = alloca %"class.std::__1::basic_string"*, align 8
  call void @"10883473988647307122"(i32 33, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %"class.std::__1::basic_string"** %7, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %8 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %7, align 8
  %9 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 29, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* %3, i8** %9, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @atoi(i8* %10)
  %12 = invoke fastcc i32* @_ZL8digitSumi(i32 %11)
          to label %13 unwind label %36

13:                                               ; preds = %2
  %14 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %3) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19
  %15 = call i32 @_ZN2HH8digitSumEi(i32 13)
  %16 = bitcast %"class.std::__1::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #19
  %17 = bitcast %"class.std::__1::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #19
  %18 = alloca %"class.std::__1::basic_string"*, align 8
  call void @"10883473988647307122"(i32 33, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %"class.std::__1::basic_string"** %18, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %19 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %18, align 8
  invoke fastcc void @_ZL9stringMulRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* nonnull sret(%"class.std::__1::basic_string") align 8 %4, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %5)
          to label %20 unwind label %39

20:                                               ; preds = %13
  %21 = alloca i32, align 4
  call void @"10883473988647307122"(i32 35, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* %4, i32* %21)
  %22 = load i32, i32* %21, align 4
  %23 = invoke fastcc i32* @_ZL8digitSumi(i32 %22)
          to label %24 unwind label %41

24:                                               ; preds = %20
  %25 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %4) #19
  %26 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %5) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #19
  %27 = load i32, i32* %12, align 4, !tbaa !10
  %28 = add nsw i32 %27, %15
  %29 = load i32, i32* %23, align 4, !tbaa !10
  %30 = add nsw i32 %28, %29
  %31 = alloca i32, align 4
  call void @"10883473988647307122"(i32 28, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 %30, i32* %31, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %32 = load i32, i32* %31, align 4
  %33 = bitcast i32* %12 to i8*
  call void @_ZdlPv(i8* %33) #20
  %34 = bitcast i32* %23 to i8*
  call void @_ZdlPv(i8* %34) #20
  %35 = add nsw i32 %30, %32
  ret i32 %35

36:                                               ; preds = %2
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %3) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19
  br label %47

39:                                               ; preds = %13
  %40 = landingpad { i8*, i32 }
          cleanup
  br label %44

41:                                               ; preds = %20
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %4) #19
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi { i8*, i32 } [ %42, %41 ], [ %40, %39 ]
  %46 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %5) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #19
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi { i8*, i32 } [ %45, %44 ], [ %37, %36 ]
  resume { i8*, i32 } %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse ssp uwtable
define internal fastcc noalias nonnull i32* @_ZL8digitSumi(i32 %0) unnamed_addr #0 {
  %2 = call noalias nonnull dereferenceable(4) i8* @_Znwm(i64 4) #21
  %3 = bitcast i8* %2 to i32*
  %4 = shl nsw i32 %0, 1
  store i32 %4, i32* %3, align 4, !tbaa !10
  ret i32* %3
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @atoi(i8* nocapture) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #3 align 2 {
  %2 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* %0) #19
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr i32 @_ZN2HH8digitSumEi(i32 %0) local_unnamed_addr #4 align 2 {
  %2 = shl nsw i32 %0, 1
  %3 = load i32, i32* @_ZN2HH2ttE, align 4, !tbaa !10
  %4 = mul nsw i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress norecurse ssp uwtable
define internal fastcc void @_ZL9stringMulRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::basic_string"* noalias sret(%"class.std::__1::basic_string") align 8 %0, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = alloca %"class.std::__1::__wrap_iter", align 8
  %5 = alloca %"class.std::__1::basic_string"*, align 8
  call void @"10883473988647307122"(i32 8, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %5, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %6 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %5, align 8
  %7 = bitcast %"class.std::__1::__wrap_iter"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #19
  %8 = alloca i64, align 8
  call void @"10883473988647307122"(i32 27, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %1, i64* %8, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i64 0, i32 0
  %11 = inttoptr i64 %9 to i8*
  store i8* %11, i8** %10, align 8
  %12 = bitcast %"class.std::__1::__wrap_iter"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #19
  %13 = alloca i64, align 8
  call void @"10883473988647307122"(i32 22, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %1, i64* %13, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %4, i64 0, i32 0
  %16 = inttoptr i64 %14 to i8*
  store i8* %16, i8** %15, align 8
  %17 = alloca i1, align 1
  call void @"10883473988647307122"(i32 20, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %3, %"class.std::__1::__wrap_iter"* %4, i1* %17, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %18 = load i1, i1* %17, align 1
  br i1 %18, label %20, label %19

19:                                               ; preds = %25, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #19
  ret void

20:                                               ; preds = %25, %2
  %21 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 10, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %3, i8** %21, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1, !tbaa !14
  %24 = shl i8 %23, 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"* %0, i8 signext %24)
          to label %25 unwind label %28

25:                                               ; preds = %20
  call fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nonnull %3) #19
  %26 = alloca i1, align 1
  call void @"10883473988647307122"(i32 20, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %3, %"class.std::__1::__wrap_iter"* %4, i1* %26, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %27 = load i1, i1* %26, align 1
  br i1 %27, label %20, label %19, !llvm.loop !15

28:                                               ; preds = %20
  %29 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #19
  %30 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %0) #19
  resume { i8*, i32 } %29
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znwm(i64) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable
define internal fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nocapture %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %4, i8** %2, align 8, !tbaa !17
  ret void
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"*, i8 signext) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 5, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* %2, %"struct.std::__1::basic_string<char>::__rep"** %3, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %4 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %3, align 8
  %5 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #3 align 2 {
  %2 = alloca i1, align 1
  call void @"10883473988647307122"(i32 24, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %0, i1* %2, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %3 = load i1, i1* %2, align 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 3, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* %0, i8** %5, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %6 = load i8*, i8** %5, align 8
  call fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %6) #19
  br label %7

7:                                                ; preds = %4, %1
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %0) unnamed_addr #4 align 2 {
  call fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  call fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0) unnamed_addr #10 {
  call fastcc void @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* %0) unnamed_addr #4 {
  call fastcc void @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_(i8* %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_(i8* %0) unnamed_addr #4 {
  call void @_ZdlPv(i8* %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress ssp uwtable
define available_externally void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %0, i8* %1, i64 %2) local_unnamed_addr #11 align 2 {
  %4 = alloca i8, align 1
  %5 = icmp ugt i64 %2, -17
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  call fastcc void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorEv(%"class.std::__1::basic_string"* %0) #22
  unreachable

7:                                                ; preds = %3
  %8 = icmp ult i64 %2, 23
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %0, i64 %2) #19
  %10 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 21, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* %0, i8** %10, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %11 = load i8*, i8** %10, align 8
  br label %18

12:                                               ; preds = %7
  %13 = alloca i64, align 8
  call void @"10883473988647307122"(i32 32, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 %2, i64* %13, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, 1
  %16 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 17, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 %15, i8** %16, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %17 = load i8*, i8** %16, align 8
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %0, i8* nonnull %17) #19
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %0, i64 %15) #19
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %0, i64 %2) #19
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i8* [ %11, %9 ], [ %17, %12 ]
  %20 = call i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8* nonnull %19, i8* %1, i64 %2) #19
  %21 = getelementptr inbounds i8, i8* %19, i64 %2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #19
  store i8 0, i8* %4, align 1, !tbaa !14
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* nonnull align 1 dereferenceable(1) %21, i8* nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %0) local_unnamed_addr #10 align 2 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noreturn ssp uwtable
define internal fastcc void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorEv(%"class.std::__1::basic_string"* %0) unnamed_addr #12 align 2 {
  %2 = bitcast %"class.std::__1::basic_string"* %0 to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %2) #22
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #13 align 2 {
  %3 = trunc i64 %1 to i8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %5 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 5, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* %4, %"struct.std::__1::basic_string<char>::__rep"** %5, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %6 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %5, align 8
  %7 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %6 to %"struct.std::__1::basic_string<char>::__short"*
  %8 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %7, i64 0, i32 1, i32 0
  store i8 %3, i8* %8, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %0, i8* %1) unnamed_addr #13 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 5, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* %3, %"struct.std::__1::basic_string<char>::__rep"** %4, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %5 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i64 0, i32 0, i32 0, i32 0
  store i8* %1, i8** %6, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #13 align 2 {
  %3 = or i64 %1, -9223372036854775808
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %5 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 5, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* %4, %"struct.std::__1::basic_string<char>::__rep"** %5, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %6 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %5, align 8
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %6, i64 0, i32 0, i32 0, i32 2
  store i64 %3, i64* %7, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #13 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 5, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* %3, %"struct.std::__1::basic_string<char>::__rep"** %4, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %5 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i64 0, i32 0, i32 0, i32 1
  store i64 %1, i64* %6, align 8, !tbaa !14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8* %0, i8* %1, i64 %2) local_unnamed_addr #10 align 2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  br label %6

6:                                                ; preds = %5, %3
  ret i8* %0
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* nonnull align 1 dereferenceable(1) %0, i8* nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #10 align 2 {
  %3 = load i8, i8* %1, align 1, !tbaa !14
  store i8 %3, i8* %0, align 1, !tbaa !14
  ret void
}

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) local_unnamed_addr #14

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #17

define internal fastcc void @"10883473988647307122"(i32 %0, i64 %1, i8** %2, i64 %3, i8** %4, i64 %5, i64* %6, %"class.std::__1::basic_string"* %7, i8** %8, %"struct.std::__1::__compressed_pair_elem"* %9, %"struct.std::__1::basic_string<char>::__rep"** %10, %"class.std::__1::__compressed_pair"* %11, %"struct.std::__1::basic_string<char>::__rep"** %12, %"class.std::__1::basic_string"* %13, i64* %14, %"class.std::__1::__compressed_pair"* %15, %"struct.std::__1::basic_string<char>::__rep"** %16, %"class.std::__1::basic_string"* %17, %"class.std::__1::basic_string"** %18, %"class.std::__1::basic_string"* %19, %"class.std::__1::basic_string"** %20, %"class.std::__1::__wrap_iter"* %21, i8** %22, %"class.std::__1::__wrap_iter"* %23, i8** %24, i64 %25, i8** %26, %"struct.std::__1::__compressed_pair_elem"* %27, %"struct.std::__1::basic_string<char>::__rep"** %28, %"class.std::__1::__wrap_iter"* %29, %"class.std::__1::__wrap_iter"* %30, i1* %31, %"class.std::__1::basic_string"* %32, i64* %33, %"class.std::__1::__wrap_iter"* %34, i8* %35, %"class.std::__1::__wrap_iter"** %36, i64 %37, i8** %38, %"class.std::__1::basic_string"* %39, i8** %40, %"class.std::__1::basic_string"* %41, i8* %42, %"class.std::__1::basic_string"** %43, %"class.std::__1::__wrap_iter"* %44, %"class.std::__1::__wrap_iter"* %45, i1* %46, %"class.std::__1::basic_string"* %47, i8** %48, %"class.std::__1::basic_string"* %49, i64* %50, %"class.std::__1::basic_string"* %51, i8** %52, %"class.std::__1::basic_string"* %53, i1* %54, %"class.std::__1::basic_string"* %55, i8** %56, %"class.std::__1::basic_string"* %57, i8** %58, %"class.std::__1::basic_string"* %59, i64* %60, i32 %61, i32* %62, %"class.std::__1::basic_string"* %63, i8** %64, i32 %65, i32** %66, %"class.std::__1::basic_string"* %67, i64* %68, i64 %69, i64* %70, %"class.std::__1::basic_string"* %71, i8* %72, %"class.std::__1::basic_string"** %73, %"class.std::__1::__wrap_iter"* %74, i8* %75, %"class.std::__1::__wrap_iter"** %76, %"class.std::__1::basic_string"* %77, i32* %78) unnamed_addr #18 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  switch i32 %0, label %80 [
    i32 0, label %81
    i32 1, label %83
    i32 2, label %86
    i32 3, label %89
    i32 4, label %95
    i32 5, label %97
    i32 6, label %101
    i32 7, label %109
    i32 8, label %113
    i32 9, label %116
    i32 10, label %117
    i32 11, label %120
    i32 12, label %123
    i32 13, label %126
    i32 14, label %128
    i32 15, label %134
    i32 16, label %145
    i32 17, label %147
    i32 18, label %150
    i32 19, label %155
    i32 20, label %157
    i32 21, label %161
    i32 22, label %166
    i32 23, label %178
    i32 24, label %181
    i32 25, label %189
    i32 26, label %200
    i32 27, label %206
    i32 28, label %215
    i32 29, label %217
    i32 30, label %220
    i32 31, label %224
    i32 32, label %230
    i32 33, label %237
    i32 34, label %240
    i32 35, label %243
  ]

80:                                               ; preds = %79
  ret void

81:                                               ; preds = %79
  %82 = call noalias nonnull i8* @_Znwm(i64 %1) #21
  store i8* %82, i8** %2, align 8
  ret void

83:                                               ; preds = %79
  %84 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 0, i64 %3, i8** %84, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %4, align 8
  ret void

86:                                               ; preds = %79
  %87 = add i64 %5, 15
  %88 = and i64 %87, -16
  store i64 %88, i64* %6, align 8
  ret void

89:                                               ; preds = %79
  %90 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %7, i64 0, i32 0
  %91 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 5, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* %90, %"struct.std::__1::basic_string<char>::__rep"** %91, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %92 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %91, align 8
  %93 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %92, i64 0, i32 0, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8, !tbaa !14
  store i8* %94, i8** %8, align 8
  ret void

95:                                               ; preds = %79
  %96 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %9, i64 0, i32 0
  store %"struct.std::__1::basic_string<char>::__rep"* %96, %"struct.std::__1::basic_string<char>::__rep"** %10, align 8
  ret void

97:                                               ; preds = %79
  %98 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %11, i64 0, i32 0
  %99 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 4, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* %98, %"struct.std::__1::basic_string<char>::__rep"** %99, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %100 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %99, align 8
  store %"struct.std::__1::basic_string<char>::__rep"* %100, %"struct.std::__1::basic_string<char>::__rep"** %12, align 8
  ret void

101:                                              ; preds = %79
  %102 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %13, i64 0, i32 0
  %103 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 7, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* %102, %"struct.std::__1::basic_string<char>::__rep"** %103, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %104 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %103, align 8
  %105 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %104 to %"struct.std::__1::basic_string<char>::__short"*
  %106 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %105, i64 0, i32 1, i32 0
  %107 = load i8, i8* %106, align 1, !tbaa !14
  %108 = zext i8 %107 to i64
  store i64 %108, i64* %14, align 8
  ret void

109:                                              ; preds = %79
  %110 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %15, i64 0, i32 0
  %111 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 13, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* %110, %"struct.std::__1::basic_string<char>::__rep"** %111, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %112 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %111, align 8
  store %"struct.std::__1::basic_string<char>::__rep"* %112, %"struct.std::__1::basic_string<char>::__rep"** %16, align 8
  ret void

113:                                              ; preds = %79
  %114 = alloca %"class.std::__1::basic_string"*, align 8
  call void @"10883473988647307122"(i32 9, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* %17, %"class.std::__1::basic_string"** %114, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %115 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %114, align 8
  store %"class.std::__1::basic_string"* %17, %"class.std::__1::basic_string"** %18, align 8
  ret void

116:                                              ; preds = %79
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %19) #19
  store %"class.std::__1::basic_string"* %19, %"class.std::__1::basic_string"** %20, align 8
  ret void

117:                                              ; preds = %79
  %118 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %21, i64 0, i32 0
  %119 = load i8*, i8** %118, align 8, !tbaa !17
  store i8* %119, i8** %22, align 8
  ret void

120:                                              ; preds = %79
  %121 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %23, i64 0, i32 0
  %122 = load i8*, i8** %121, align 8, !tbaa !17
  store i8* %122, i8** %24, align 8
  ret void

123:                                              ; preds = %79
  %124 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 1, i64 0, i8** null, i64 %25, i8** %124, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %26, align 8
  ret void

126:                                              ; preds = %79
  %127 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %27, i64 0, i32 0
  store %"struct.std::__1::basic_string<char>::__rep"* %127, %"struct.std::__1::basic_string<char>::__rep"** %28, align 8
  ret void

128:                                              ; preds = %79
  %129 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 11, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* %29, i8** %129, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %130 = load i8*, i8** %129, align 8
  %131 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 11, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* %30, i8** %131, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %132 = load i8*, i8** %131, align 8
  %133 = icmp eq i8* %130, %132
  store i1 %133, i1* %31, align 1
  ret void

134:                                              ; preds = %79
  %135 = alloca i1, align 1
  call void @"10883473988647307122"(i32 24, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %32, i1* %135, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %136 = load i1, i1* %135, align 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = alloca i64, align 8
  call void @"10883473988647307122"(i32 31, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* %32, i64* %138, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %139 = load i64, i64* %138, align 8
  br label %143

140:                                              ; preds = %134
  %141 = alloca i64, align 8
  call void @"10883473988647307122"(i32 6, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* %32, i64* %141, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %142 = load i64, i64* %141, align 8
  br label %143

143:                                              ; preds = %140, %137
  %144 = phi i64 [ %139, %137 ], [ %142, %140 ]
  store i64 %144, i64* %33, align 8
  ret void

145:                                              ; preds = %79
  %146 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %34, i64 0, i32 0
  store i8* %35, i8** %146, align 8, !tbaa !17
  store %"class.std::__1::__wrap_iter"* %34, %"class.std::__1::__wrap_iter"** %36, align 8
  ret void

147:                                              ; preds = %79
  %148 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 12, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 %37, i8** %148, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %38, align 8
  ret void

150:                                              ; preds = %79
  %151 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %39, i64 0, i32 0
  %152 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 7, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* %151, %"struct.std::__1::basic_string<char>::__rep"** %152, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %153 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %152, align 8
  %154 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %153 to i8*
  store i8* %154, i8** %40, align 8
  ret void

155:                                              ; preds = %79
  %156 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %42) #19
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %41, i8* %42, i64 %156)
  store %"class.std::__1::basic_string"* %41, %"class.std::__1::basic_string"** %43, align 8
  ret void

157:                                              ; preds = %79
  %158 = alloca i1, align 1
  call void @"10883473988647307122"(i32 14, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* %44, %"class.std::__1::__wrap_iter"* %45, i1* %158, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %159 = load i1, i1* %158, align 1
  %160 = xor i1 %159, true
  store i1 %160, i1* %46, align 1
  ret void

161:                                              ; preds = %79
  %162 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %47, i64 0, i32 0
  %163 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 5, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* %162, %"struct.std::__1::basic_string<char>::__rep"** %163, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %164 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %163, align 8
  %165 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %164 to i8*
  store i8* %165, i8** %48, align 8
  ret void

166:                                              ; preds = %79
  %167 = alloca %"class.std::__1::__wrap_iter", align 8
  %168 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 25, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* %49, i8** %168, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %169 = load i8*, i8** %168, align 8
  %170 = alloca i64, align 8
  call void @"10883473988647307122"(i32 15, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* %49, i64* %170, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"10883473988647307122"(i32 34, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %167, i8* %172, %"class.std::__1::__wrap_iter"** %173, %"class.std::__1::basic_string"* null, i32* null)
  %174 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %173, align 8
  %175 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %167, i64 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = ptrtoint i8* %176 to i64
  store i64 %177, i64* %50, align 8
  ret void

178:                                              ; preds = %79
  %179 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 25, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* %51, i8** %179, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %52, align 8
  ret void

181:                                              ; preds = %79
  %182 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %53, i64 0, i32 0
  %183 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 7, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* %182, %"struct.std::__1::basic_string<char>::__rep"** %183, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %184 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %183, align 8
  %185 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %184 to %"struct.std::__1::basic_string<char>::__short"*
  %186 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %185, i64 0, i32 1, i32 0
  %187 = load i8, i8* %186, align 1, !tbaa !14
  %188 = icmp slt i8 %187, 0
  store i1 %188, i1* %54, align 1
  ret void

189:                                              ; preds = %79
  %190 = alloca i1, align 1
  call void @"10883473988647307122"(i32 24, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %55, i1* %190, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %191 = load i1, i1* %190, align 1
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 26, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %55, i8** %193, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %194 = load i8*, i8** %193, align 8
  br label %198

195:                                              ; preds = %189
  %196 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 18, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* %55, i8** %196, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %197 = load i8*, i8** %196, align 8
  br label %198

198:                                              ; preds = %195, %192
  %199 = phi i8* [ %194, %192 ], [ %197, %195 ]
  store i8* %199, i8** %56, align 8
  ret void

200:                                              ; preds = %79
  %201 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %57, i64 0, i32 0
  %202 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 7, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* %201, %"struct.std::__1::basic_string<char>::__rep"** %202, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %203 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %202, align 8
  %204 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %203, i64 0, i32 0, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8, !tbaa !14
  store i8* %205, i8** %58, align 8
  ret void

206:                                              ; preds = %79
  %207 = alloca %"class.std::__1::__wrap_iter", align 8
  %208 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 25, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* %59, i8** %208, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %209 = load i8*, i8** %208, align 8
  %210 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"10883473988647307122"(i32 34, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %207, i8* %209, %"class.std::__1::__wrap_iter"** %210, %"class.std::__1::basic_string"* null, i32* null)
  %211 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %210, align 8
  %212 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %207, i64 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = ptrtoint i8* %213 to i64
  store i64 %214, i64* %60, align 8
  ret void

215:                                              ; preds = %79
  %216 = shl nsw i32 %61, 1
  store i32 %216, i32* %62, align 4
  ret void

217:                                              ; preds = %79
  %218 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 23, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* %63, i8** %218, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %219 = load i8*, i8** %218, align 8
  store i8* %219, i8** %64, align 8
  ret void

220:                                              ; preds = %79
  %221 = call noalias nonnull dereferenceable(4) i8* @_Znwm(i64 4) #21
  %222 = bitcast i8* %221 to i32*
  %223 = shl nsw i32 %65, 1
  store i32 %223, i32* %222, align 4, !tbaa !10
  store i32* %222, i32** %66, align 8
  ret void

224:                                              ; preds = %79
  %225 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %67, i64 0, i32 0
  %226 = alloca %"struct.std::__1::basic_string<char>::__rep"*, align 8
  call void @"10883473988647307122"(i32 7, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* %225, %"struct.std::__1::basic_string<char>::__rep"** %226, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %227 = load %"struct.std::__1::basic_string<char>::__rep"*, %"struct.std::__1::basic_string<char>::__rep"** %226, align 8
  %228 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %227, i64 0, i32 0, i32 0, i32 1
  %229 = load i64, i64* %228, align 8, !tbaa !14
  store i64 %229, i64* %68, align 8
  ret void

230:                                              ; preds = %79
  %231 = add i64 %69, 1
  %232 = alloca i64, align 8
  call void @"10883473988647307122"(i32 2, i64 0, i8** null, i64 0, i8** null, i64 %231, i64* %232, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %233 = load i64, i64* %232, align 8
  %234 = add i64 %233, -1
  %235 = icmp eq i64 %234, 23
  %236 = select i1 %235, i64 %233, i64 %234
  store i64 %236, i64* %70, align 8
  ret void

237:                                              ; preds = %79
  %238 = alloca %"class.std::__1::basic_string"*, align 8
  call void @"10883473988647307122"(i32 19, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %71, i8* %72, %"class.std::__1::basic_string"** %238, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %239 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %238, align 8
  store %"class.std::__1::basic_string"* %71, %"class.std::__1::basic_string"** %73, align 8
  ret void

240:                                              ; preds = %79
  %241 = alloca %"class.std::__1::__wrap_iter"*, align 8
  call void @"10883473988647307122"(i32 16, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* %74, i8* %75, %"class.std::__1::__wrap_iter"** %241, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %242 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %241, align 8
  store %"class.std::__1::__wrap_iter"* %74, %"class.std::__1::__wrap_iter"** %76, align 8
  ret void

243:                                              ; preds = %79
  %244 = alloca %"class.std::__1::__wrap_iter", align 8
  %245 = alloca %"class.std::__1::__wrap_iter", align 8
  %246 = bitcast %"class.std::__1::__wrap_iter"* %244 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %246) #19
  %247 = alloca i64, align 8
  call void @"10883473988647307122"(i32 27, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %77, i64* %247, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %244, i64 0, i32 0
  %250 = inttoptr i64 %248 to i8*
  store i8* %250, i8** %249, align 8
  %251 = bitcast %"class.std::__1::__wrap_iter"* %245 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %251) #19
  %252 = alloca i64, align 8
  call void @"10883473988647307122"(i32 22, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* %77, i64* %252, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %245, i64 0, i32 0
  %255 = inttoptr i64 %253 to i8*
  store i8* %255, i8** %254, align 8
  %256 = alloca i1, align 1
  call void @"10883473988647307122"(i32 20, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %244, %"class.std::__1::__wrap_iter"* %245, i1* %256, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %257 = load i1, i1* %256, align 1
  br i1 %257, label %260, label %258

258:                                              ; preds = %260, %243
  %259 = phi i32 [ 0, %243 ], [ %266, %260 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %251) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %246) #19
  store i32 %259, i32* %78, align 4
  ret void

260:                                              ; preds = %260, %243
  %261 = phi i32 [ %266, %260 ], [ 0, %243 ]
  %262 = alloca i8*, align 8
  call void @"10883473988647307122"(i32 10, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %244, i8** %262, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %263 = load i8*, i8** %262, align 8
  %264 = load i8, i8* %263, align 1, !tbaa !14
  %265 = sext i8 %264 to i32
  %266 = add nsw i32 %261, %265
  call fastcc void @_ZNSt3__111__wrap_iterIPKcEppEv(%"class.std::__1::__wrap_iter"* nonnull %244) #19
  %267 = alloca i1, align 1
  call void @"10883473988647307122"(i32 20, i64 0, i8** null, i64 0, i8** null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__compressed_pair"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::basic_string"* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8** null, %"class.std::__1::__wrap_iter"* null, i8** null, i64 0, i8** null, %"struct.std::__1::__compressed_pair_elem"* null, %"struct.std::__1::basic_string<char>::__rep"** null, %"class.std::__1::__wrap_iter"* null, %"class.std::__1::__wrap_iter"* null, i1* null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, i64 0, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* %244, %"class.std::__1::__wrap_iter"* %245, i1* %267, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i1* null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i8** null, %"class.std::__1::basic_string"* null, i64* null, i32 0, i32* null, %"class.std::__1::basic_string"* null, i8** null, i32 0, i32** null, %"class.std::__1::basic_string"* null, i64* null, i64 0, i64* null, %"class.std::__1::basic_string"* null, i8* null, %"class.std::__1::basic_string"** null, %"class.std::__1::__wrap_iter"* null, i8* null, %"class.std::__1::__wrap_iter"** null, %"class.std::__1::basic_string"* null, i32* null)
  %268 = load i1, i1* %267, align 1
  br i1 %268, label %260, label %258, !llvm.loop !20
}

attributes #0 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind ssp writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { inlinehint mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { inlinehint mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #12 = { mustprogress noreturn ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #15 = { argmemonly nocallback nofree nounwind willreturn }
attributes #16 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #17 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #18 = { "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn }

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
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSNSt3__111__wrap_iterIPKcEE", !19, i64 0}
!19 = !{!"any pointer", !12, i64 0}
!20 = distinct !{!20, !16}

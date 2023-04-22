; ModuleID = 'output/string-obfuscation/ex1/ex1.ll'
source_filename = "input/string-obfuscation/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%struct.s = type { %"class.std::__1::basic_string" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], %struct.anon }
%struct.anon = type { i8 }

@.str.5 = private unnamed_addr global [23 x i8] c"\01\01\01\00\00\01\00\00\00\00\00\01\01\00\01\00\01\00\00\01\01\01\01", align 1
@str = private unnamed_addr global [17 x i8] c"\01\00\00\01\01\01\01\01\00\00\01\01\00\00\00\01\00", align 1
@str.7 = private unnamed_addr global [17 x i8] c"\00\01\01\00\00\00\01\00\01\01\01\01\01\00\01\00\01", align 1
@str.8 = private unnamed_addr global [14 x i8] c"\01\01\00\01\00\00\01\01\00\01\00\01\01\01", align 1
@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @init3485729344507855481, i8* null }]

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define i32 @_Z8digitSumi(i32 %0) local_unnamed_addr #0 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str, i64 0, i64 0))
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %11, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %8, %4 ], [ %0, %1 ]
  %7 = freeze i32 %6
  %8 = sdiv i32 %7, 10
  %9 = mul i32 %8, 10
  %10 = sub i32 %7, %9
  %11 = add nsw i32 %5, %10
  %12 = icmp sgt i32 %6, 9
  br i1 %12, label %4, label %13, !llvm.loop !10

13:                                               ; preds = %4, %1
  %14 = phi i32 [ 0, %1 ], [ %11, %4 ]
  %15 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.7, i64 0, i64 0))
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %struct.s, align 8
  %4 = bitcast %struct.s* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #20
  %5 = call %struct.s* @_ZN1sC1Ev(%struct.s* nonnull %3)
  %6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.8, i64 0, i64 0))
  %7 = call i32 @_Z8digitSumi(i32 15)
  %8 = call i32 @_Z8digitSumi(i32 25)
  %9 = add nsw i32 %8, %7
  %10 = call %struct.s* @_ZN1sD1Ev(%struct.s* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #20
  ret i32 %9
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr %struct.s* @_ZN1sC1Ev(%struct.s* returned %0) unnamed_addr #3 align 2 {
  %2 = call %struct.s* @_ZN1sC2Ev(%struct.s* %0)
  ret %struct.s* %0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr %struct.s* @_ZN1sD1Ev(%struct.s* returned %0) unnamed_addr #4 align 2 {
  %2 = call %struct.s* @_ZN1sD2Ev(%struct.s* %0) #20
  ret %struct.s* %0
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr %struct.s* @_ZN1sC2Ev(%struct.s* returned %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %struct.s, %struct.s* %0, i64 0, i32 0
  %3 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %2)
  ret %struct.s* %0
}

; Function Attrs: ssp uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* returned %0) unnamed_addr #5 align 2 {
  %2 = call fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* %0)
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: ssp uwtable
define internal fastcc %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* returned %0) unnamed_addr #5 align 2 {
  %2 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #20
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %2)
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: inlinehint mustprogress ssp uwtable
define available_externally void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %0, i8* %1, i64 %2) local_unnamed_addr #6 align 2 {
  %4 = alloca i8, align 1
  %5 = icmp ugt i64 %2, -17
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  call fastcc void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorEv(%"class.std::__1::basic_string"* %0) #21
  unreachable

7:                                                ; preds = %3
  %8 = icmp ult i64 %2, 23
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %0, i64 %2) #20
  %10 = call fastcc i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %0) #20
  br label %15

11:                                               ; preds = %7
  %12 = call fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %2) #20
  %13 = add i64 %12, 1
  %14 = call fastcc i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(i64 %13)
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %0, i8* nonnull %14) #20
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %0, i64 %13) #20
  call fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %0, i64 %2) #20
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i8* [ %10, %9 ], [ %14, %11 ]
  %17 = call i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8* nonnull %16, i8* %1, i64 %2) #20
  %18 = getelementptr inbounds i8, i8* %16, i64 %2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #20
  store i8 0, i8* %4, align 1, !tbaa !13
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* nonnull align 1 dereferenceable(1) %18, i8* nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %0) local_unnamed_addr #7 align 2 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noreturn ssp uwtable
define internal fastcc void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorEv(%"class.std::__1::basic_string"* %0) unnamed_addr #8 align 2 {
  %2 = bitcast %"class.std::__1::basic_string"* %0 to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %2) #21
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #9 align 2 {
  %3 = trunc i64 %1 to i8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %5 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #20
  %6 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %5 to %"struct.std::__1::basic_string<char>::__short"*
  %7 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %6, i64 0, i32 1, i32 0
  store i8 %3, i8* %7, align 1, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* readnone %0) unnamed_addr #10 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #20
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to i8*
  ret i8* %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %0) unnamed_addr #10 align 2 {
  %2 = add i64 %0, 1
  %3 = call fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %2) #20
  %4 = add i64 %3, -1
  %5 = icmp eq i64 %4, 23
  %6 = select i1 %5, i64 %3, i64 %4
  ret i64 %6
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(i64 %0) unnamed_addr #11 align 2 {
  %2 = call fastcc i8* @_ZNSt3__19allocatorIcE8allocateEm(i64 %0)
  ret i8* %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %0, i8* %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %3) #20
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %4, i64 0, i32 0, i32 0, i32 0
  store i8* %1, i8** %5, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #9 align 2 {
  %3 = or i64 %1, -9223372036854775808
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %5 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #20
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i64 0, i32 0, i32 0, i32 2
  store i64 %3, i64* %6, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable
define internal fastcc void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %0, i64 %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %4 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %3) #20
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %4, i64 0, i32 0, i32 0, i32 1
  store i64 %1, i64* %5, align 8, !tbaa !13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8* %0, i8* %1, i64 %2) local_unnamed_addr #7 align 2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  br label %6

6:                                                ; preds = %5, %3
  ret i8* %0
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* nonnull align 1 dereferenceable(1) %0, i8* nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #7 align 2 {
  %3 = load i8, i8* %1, align 1, !tbaa !13
  store i8 %3, i8* %0, align 1, !tbaa !13
  ret void
}

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* readnone %0) unnamed_addr #10 align 2 {
  %2 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %2) #20
  ret %"struct.std::__1::basic_string<char>::__rep"* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* readnone %0) unnamed_addr #10 align 2 {
  %2 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %0, i64 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %0) unnamed_addr #10 align 2 {
  %2 = add i64 %0, 15
  %3 = and i64 %2, -16
  ret i64 %3
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__19allocatorIcE8allocateEm(i64 %0) unnamed_addr #11 align 2 {
  %2 = call fastcc i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %0)
  ret i8* %2
}

; Function Attrs: inlinehint mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %0) unnamed_addr #6 {
  %2 = call fastcc i8* @_ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_(i64 %0)
  ret i8* %2
}

; Function Attrs: mustprogress ssp uwtable
define internal fastcc noalias nonnull i8* @_ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_(i64 %0) unnamed_addr #11 {
  %2 = call noalias nonnull i8* @_Znwm(i64 %0) #22
  ret i8* %2
}

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znwm(i64) local_unnamed_addr #13

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr %struct.s* @_ZN1sD2Ev(%struct.s* returned %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %struct.s, %struct.s* %0, i64 0, i32 0
  %3 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %2) #20
  ret %struct.s* %0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #4 align 2 {
  %2 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* %0) #20
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* returned %0) unnamed_addr #4 align 2 {
  %2 = call fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %0) #20
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = call fastcc i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %0) #20
  call fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %4) #20
  br label %5

5:                                                ; preds = %3, %1
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #16 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #20
  %4 = bitcast %"struct.std::__1::basic_string<char>::__rep"* %3 to %"struct.std::__1::basic_string<char>::__short"*
  %5 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %4, i64 0, i32 1, i32 0
  %6 = load i8, i8* %5, align 1, !tbaa !13
  %7 = icmp slt i8 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm(i8* %0) unnamed_addr #17 align 2 {
  call fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable
define internal fastcc i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* readonly %0) unnamed_addr #16 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %2) #20
  %4 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %3, i64 0, i32 0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !tbaa !13
  ret i8* %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* readnone %0) unnamed_addr #10 align 2 {
  %2 = getelementptr %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair"* %0, i64 0, i32 0
  %3 = call fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %2) #20
  ret %"struct.std::__1::basic_string<char>::__rep"* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define internal fastcc nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* readnone %0) unnamed_addr #10 align 2 {
  %2 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %0, i64 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__19allocatorIcE10deallocateEPcm(i8* %0) unnamed_addr #17 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  call fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L19__libcpp_deallocateEPvmm(i8* %0) unnamed_addr #7 {
  call fastcc void @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* %0) unnamed_addr #17 {
  call fastcc void @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_(i8* %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal fastcc void @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_(i8* %0) unnamed_addr #17 {
  call void @_ZdlPv(i8* %0) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #19

define void @decode3771068132186225686(i8* %0, i32 %1, i8* %2, i32* %3, i8* %4) {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = zext i32 %1 to i64
  br label %10

9:                                                ; preds = %10, %5
  ret void

10:                                               ; preds = %10, %7
  %11 = phi i64 [ 0, %7 ], [ %24, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %23, %10 ]
  %13 = getelementptr inbounds i8, i8* %0, i64 %11
  %14 = load i8, i8* %13, align 1
  %15 = shl i32 %12, 1
  %16 = sext i8 %14 to i32
  %17 = add nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %4, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = getelementptr inbounds i8, i8* %2, i64 %11
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds i32, i32* %3, i64 %18
  %23 = load i32, i32* %22, align 4
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %9, label %10
}

define internal void @init3485729344507855481() {
  %outArray = alloca [34 x i8], align 1
  %1 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 0
  store i8 119, i8* %1, align 1
  %2 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 1
  store i8 119, i8* %2, align 1
  %3 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 2
  store i8 101, i8* %3, align 1
  %4 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 3
  store i8 101, i8* %4, align 1
  %5 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 4
  store i8 113, i8* %5, align 1
  %6 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 5
  store i8 113, i8* %6, align 1
  %7 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 6
  store i8 101, i8* %7, align 1
  %8 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 7
  store i8 119, i8* %8, align 1
  %9 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 8
  store i8 113, i8* %9, align 1
  %10 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 9
  store i8 113, i8* %10, align 1
  %11 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 10
  store i8 67, i8* %11, align 1
  %12 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 11
  store i8 67, i8* %12, align 1
  %13 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 12
  store i8 111, i8* %13, align 1
  %14 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 13
  store i8 114, i8* %14, align 1
  %15 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 14
  store i8 110, i8* %15, align 1
  %16 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 15
  store i8 117, i8* %16, align 1
  %17 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 16
  store i8 116, i8* %17, align 1
  %18 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 17
  store i8 115, i8* %18, align 1
  %19 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 18
  store i8 83, i8* %19, align 1
  %20 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 19
  store i8 116, i8* %20, align 1
  %21 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 20
  store i8 97, i8* %21, align 1
  %22 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 21
  store i8 83, i8* %22, align 1
  %23 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 22
  store i8 83, i8* %23, align 1
  %24 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 23
  store i8 110, i8* %24, align 1
  %25 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 24
  store i8 116, i8* %25, align 1
  %26 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 25
  store i8 115, i8* %26, align 1
  %27 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 26
  store i8 114, i8* %27, align 1
  %28 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 27
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 28
  store i8 83, i8* %29, align 1
  %30 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 29
  store i8 117, i8* %30, align 1
  %31 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 30
  store i8 117, i8* %31, align 1
  %32 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 31
  store i8 99, i8* %32, align 1
  %33 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 32
  store i8 116, i8* %33, align 1
  %34 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 33
  store i8 116, i8* %34, align 1
  %nextArray = alloca [34 x i32], align 4
  %35 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 2
  store i32 4, i32* %37, align 4
  %38 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 3
  store i32 2, i32* %38, align 4
  %39 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 4
  store i32 3, i32* %39, align 4
  %40 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 5
  store i32 3, i32* %40, align 4
  %41 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 6
  store i32 2, i32* %41, align 4
  %42 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 7
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 8
  store i32 5, i32* %43, align 4
  %44 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 9
  store i32 3, i32* %44, align 4
  %45 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 10
  store i32 6, i32* %45, align 4
  %46 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 11
  store i32 6, i32* %46, align 4
  %47 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 12
  store i32 7, i32* %47, align 4
  %48 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 13
  store i32 14, i32* %48, align 4
  %49 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 14
  store i32 8, i32* %49, align 4
  %50 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 15
  store i32 15, i32* %50, align 4
  %51 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 16
  store i32 10, i32* %51, align 4
  %52 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 17
  store i32 9, i32* %52, align 4
  %53 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 18
  store i32 12, i32* %53, align 4
  %54 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 19
  store i32 10, i32* %54, align 4
  %55 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 20
  store i32 11, i32* %55, align 4
  %56 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 21
  store i32 12, i32* %56, align 4
  %57 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 22
  store i32 12, i32* %57, align 4
  %58 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 23
  store i32 8, i32* %58, align 4
  %59 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 24
  store i32 13, i32* %59, align 4
  %60 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 25
  store i32 9, i32* %60, align 4
  %61 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 26
  store i32 14, i32* %61, align 4
  %62 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 27
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 28
  store i32 12, i32* %63, align 4
  %64 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 29
  store i32 15, i32* %64, align 4
  %65 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 30
  store i32 15, i32* %65, align 4
  %66 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 31
  store i32 16, i32* %66, align 4
  %67 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 32
  store i32 10, i32* %67, align 4
  %68 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 33
  store i32 13, i32* %68, align 4
  %69 = getelementptr inbounds [34 x i32], [34 x i32]* %nextArray, i32 0, i32 0
  %70 = getelementptr inbounds [34 x i8], [34 x i8]* %outArray, i32 0, i32 0
  br label %71

71:                                               ; preds = %0
  call void @decode3771068132186225686(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32* %69, i8* %70)
  %outArray1 = alloca [22 x i8], align 1
  %72 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 0
  store i8 105, i8* %72, align 1
  %73 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 1
  store i8 116, i8* %73, align 1
  %74 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 2
  store i8 101, i8* %74, align 1
  %75 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 3
  store i8 105, i8* %75, align 1
  %76 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 4
  store i8 115, i8* %76, align 1
  %77 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 5
  store i8 110, i8* %77, align 1
  %78 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 6
  store i8 116, i8* %78, align 1
  %79 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 7
  store i8 116, i8* %79, align 1
  %80 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 8
  store i8 110, i8* %80, align 1
  %81 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 9
  store i8 110, i8* %81, align 1
  %82 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 10
  store i8 103, i8* %82, align 1
  %83 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 11
  store i8 103, i8* %83, align 1
  %84 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 12
  store i8 32, i8* %84, align 1
  %85 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 13
  store i8 32, i8* %85, align 1
  %86 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 14
  store i8 115, i8* %86, align 1
  %87 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 15
  store i8 49, i8* %87, align 1
  %88 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 16
  store i8 115, i8* %88, align 1
  %89 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 17
  store i8 114, i8* %89, align 1
  %90 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 18
  store i8 101, i8* %90, align 1
  %91 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 19
  store i8 105, i8* %91, align 1
  %92 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 20
  store i8 0, i8* %92, align 1
  %93 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 21
  store i8 101, i8* %93, align 1
  %nextArray2 = alloca [22 x i32], align 4
  %94 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 0
  store i32 4, i32* %94, align 4
  %95 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 1
  store i32 1, i32* %95, align 4
  %96 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 2
  store i32 2, i32* %96, align 4
  %97 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 3
  store i32 4, i32* %97, align 4
  %98 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 4
  store i32 3, i32* %98, align 4
  %99 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 5
  store i32 5, i32* %99, align 4
  %100 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 6
  store i32 8, i32* %100, align 4
  %101 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 7
  store i32 1, i32* %101, align 4
  %102 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 8
  store i32 5, i32* %102, align 4
  %103 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 9
  store i32 5, i32* %103, align 4
  %104 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 10
  store i32 6, i32* %104, align 4
  %105 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 11
  store i32 6, i32* %105, align 4
  %106 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 12
  store i32 7, i32* %106, align 4
  %107 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 13
  store i32 7, i32* %107, align 4
  %108 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 14
  store i32 3, i32* %108, align 4
  %109 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 15
  store i32 10, i32* %109, align 4
  %110 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 16
  store i32 3, i32* %110, align 4
  %111 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 17
  store i32 9, i32* %111, align 4
  %112 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 18
  store i32 2, i32* %112, align 4
  %113 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 19
  store i32 4, i32* %113, align 4
  %114 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 20
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 21
  store i32 2, i32* %115, align 4
  %116 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray2, i32 0, i32 0
  %117 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray1, i32 0, i32 0
  br label %118

118:                                              ; preds = %71
  call void @decode3771068132186225686(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str, i32 0, i32 0), i32* %116, i8* %117)
  %outArray3 = alloca [22 x i8], align 1
  %119 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 0
  store i8 116, i8* %119, align 1
  %120 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 1
  store i8 32, i8* %120, align 1
  %121 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 2
  store i8 105, i8* %121, align 1
  %122 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 3
  store i8 101, i8* %122, align 1
  %123 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 4
  store i8 115, i8* %123, align 1
  %124 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 5
  store i8 115, i8* %124, align 1
  %125 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 6
  store i8 116, i8* %125, align 1
  %126 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 7
  store i8 116, i8* %126, align 1
  %127 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 8
  store i8 110, i8* %127, align 1
  %128 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 9
  store i8 110, i8* %128, align 1
  %129 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 10
  store i8 103, i8* %129, align 1
  %130 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 11
  store i8 103, i8* %130, align 1
  %131 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 12
  store i8 32, i8* %131, align 1
  %132 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 13
  store i8 32, i8* %132, align 1
  %133 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 14
  store i8 50, i8* %133, align 1
  %134 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 15
  store i8 115, i8* %134, align 1
  %135 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 16
  store i8 50, i8* %135, align 1
  %136 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 17
  store i8 114, i8* %136, align 1
  %137 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 18
  store i8 105, i8* %137, align 1
  %138 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 19
  store i8 105, i8* %138, align 1
  %139 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 20
  store i8 110, i8* %139, align 1
  %140 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 21
  store i8 0, i8* %140, align 1
  %nextArray4 = alloca [22 x i32], align 4
  %141 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 0
  store i32 1, i32* %141, align 4
  %142 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 1
  store i32 7, i32* %142, align 4
  %143 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 2
  store i32 4, i32* %143, align 4
  %144 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 3
  store i32 2, i32* %144, align 4
  %145 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 4
  store i32 3, i32* %145, align 4
  %146 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 5
  store i32 3, i32* %146, align 4
  %147 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 6
  store i32 1, i32* %147, align 4
  %148 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 7
  store i32 8, i32* %148, align 4
  %149 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 8
  store i32 5, i32* %149, align 4
  %150 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 9
  store i32 5, i32* %150, align 4
  %151 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 10
  store i32 6, i32* %151, align 4
  %152 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 11
  store i32 6, i32* %152, align 4
  %153 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 12
  store i32 7, i32* %153, align 4
  %154 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 13
  store i32 7, i32* %154, align 4
  %155 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 14
  store i32 10, i32* %155, align 4
  %156 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 15
  store i32 3, i32* %156, align 4
  %157 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 16
  store i32 10, i32* %157, align 4
  %158 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 17
  store i32 9, i32* %158, align 4
  %159 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 18
  store i32 4, i32* %159, align 4
  %160 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 19
  store i32 4, i32* %160, align 4
  %161 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 20
  store i32 5, i32* %161, align 4
  %162 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 21
  store i32 0, i32* %162, align 4
  %163 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray4, i32 0, i32 0
  %164 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray3, i32 0, i32 0
  br label %165

165:                                              ; preds = %118
  call void @decode3771068132186225686(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.7, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.7, i32 0, i32 0), i32* %163, i8* %164)
  %outArray5 = alloca [26 x i8], align 1
  %166 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 0
  store i8 -28, i8* %166, align 1
  %167 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 1
  store i8 72, i8* %167, align 1
  %168 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 2
  store i8 -116, i8* %168, align 1
  %169 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 3
  store i8 101, i8* %169, align 1
  %170 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 4
  store i8 108, i8* %170, align 1
  %171 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 5
  store i8 -72, i8* %171, align 1
  %172 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 6
  store i8 111, i8* %172, align 1
  %173 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 7
  store i8 108, i8* %173, align 1
  %174 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 8
  store i8 44, i8* %174, align 1
  %175 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 9
  store i8 -116, i8* %175, align 1
  %176 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 10
  store i8 108, i8* %176, align 1
  %177 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 11
  store i8 32, i8* %177, align 1
  %178 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 12
  store i8 -107, i8* %178, align 1
  %179 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 13
  store i8 -28, i8* %179, align 1
  %180 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 14
  store i8 -72, i8* %180, align 1
  %181 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 15
  store i8 0, i8* %181, align 1
  %182 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 16
  store i8 -72, i8* %182, align 1
  %183 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 17
  store i8 -106, i8* %183, align 1
  %184 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 18
  store i8 -25, i8* %184, align 1
  %185 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 19
  store i8 -28, i8* %185, align 1
  %186 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 20
  store i8 108, i8* %186, align 1
  %187 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 21
  store i8 -107, i8* %187, align 1
  %188 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 22
  store i8 72, i8* %188, align 1
  %189 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 23
  store i8 -116, i8* %189, align 1
  %190 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 24
  store i8 -107, i8* %190, align 1
  %191 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 25
  store i8 0, i8* %191, align 1
  %nextArray6 = alloca [26 x i32], align 4
  %192 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 0
  store i32 7, i32* %192, align 4
  %193 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 1
  store i32 1, i32* %193, align 4
  %194 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 2
  store i32 12, i32* %194, align 4
  %195 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 3
  store i32 2, i32* %195, align 4
  %196 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 4
  store i32 3, i32* %196, align 4
  %197 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 5
  store i32 8, i32* %197, align 4
  %198 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 6
  store i32 4, i32* %198, align 4
  %199 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 7
  store i32 3, i32* %199, align 4
  %200 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 8
  store i32 5, i32* %200, align 4
  %201 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 9
  store i32 12, i32* %201, align 4
  %202 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 10
  store i32 3, i32* %202, align 4
  %203 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 11
  store i32 6, i32* %203, align 4
  %204 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 12
  store i32 11, i32* %204, align 4
  %205 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 13
  store i32 7, i32* %205, align 4
  %206 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 14
  store i32 8, i32* %206, align 4
  %207 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 15
  store i32 0, i32* %207, align 4
  %208 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 16
  store i32 8, i32* %208, align 4
  %209 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 17
  store i32 9, i32* %209, align 4
  %210 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 18
  store i32 10, i32* %210, align 4
  %211 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 19
  store i32 7, i32* %211, align 4
  %212 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 20
  store i32 3, i32* %212, align 4
  %213 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 21
  store i32 11, i32* %213, align 4
  %214 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 22
  store i32 1, i32* %214, align 4
  %215 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 23
  store i32 12, i32* %215, align 4
  %216 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 24
  store i32 11, i32* %216, align 4
  %217 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 25
  store i32 0, i32* %217, align 4
  %218 = getelementptr inbounds [26 x i32], [26 x i32]* %nextArray6, i32 0, i32 0
  %219 = getelementptr inbounds [26 x i8], [26 x i8]* %outArray5, i32 0, i32 0
  br label %220

220:                                              ; preds = %165
  call void @decode3771068132186225686(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.8, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.8, i32 0, i32 0), i32* %218, i8* %219)
  ret void
}

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { inlinehint ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { inlinehint nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { inlinehint mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { inlinehint mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { mustprogress noreturn ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind ssp willreturn writeonly uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #12 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #14 = { argmemonly nocallback nofree nounwind willreturn }
attributes #15 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind readonly ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #17 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #18 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C++ TBAA"}

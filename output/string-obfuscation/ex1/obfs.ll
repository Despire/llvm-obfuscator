; ModuleID = 'output/string-obfuscation/ex1/ex1.ll'
source_filename = "input/string-obfuscation/ex1/ex1.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@llvm.global_ctors = appending global [3 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @init5143245957389436037, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (i32 ()* @_Z4initv to void ()*), i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_Z5init2v, i8* null }]
@str = private unnamed_addr global [16 x i8] c"\01\01\01\00\00\01\00\00\00\01\01\00\01\00\01\00", align 1
@str.3 = private unnamed_addr global [17 x i8] c"\01\00\00\01\01\00\01\01\00\00\01\01\01\01\01\00\00", align 1
@str.4 = private unnamed_addr global [14 x i8] c"\01\00\01\01\00\00\00\01\01\01\00\00\01\00", align 1

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define i32 @_Z4initv() #0 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str, i64 0, i64 0))
  ret i32 3
}

; Function Attrs: mustprogress nofree nounwind ssp uwtable
define void @_Z5init2v() #0 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #1 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.4, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #2

define void @decode16311072576270362056(i8* %0, i32 %1, i8* %2, i32* %3, i8* %4) {
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

define internal void @init5143245957389436037() {
  %outArray = alloca [22 x i8], align 1
  %1 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 0
  store i8 108, i8* %1, align 1
  %2 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 1
  store i8 73, i8* %2, align 1
  %3 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 2
  store i8 103, i8* %3, align 1
  %4 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 3
  store i8 110, i8* %4, align 1
  %5 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 4
  store i8 103, i8* %5, align 1
  %6 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 5
  store i8 105, i8* %6, align 1
  %7 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 6
  store i8 116, i8* %7, align 1
  %8 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 7
  store i8 97, i8* %8, align 1
  %9 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 8
  store i8 105, i8* %9, align 1
  %10 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 9
  store i8 73, i8* %10, align 1
  %11 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 10
  store i8 108, i8* %11, align 1
  %12 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 11
  store i8 103, i8* %12, align 1
  %13 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 12
  store i8 105, i8* %13, align 1
  %14 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 13
  store i8 108, i8* %14, align 1
  %15 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 14
  store i8 122, i8* %15, align 1
  %16 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 15
  store i8 110, i8* %16, align 1
  %17 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 16
  store i8 108, i8* %17, align 1
  %18 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 17
  store i8 105, i8* %18, align 1
  %19 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 18
  store i8 73, i8* %19, align 1
  %20 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 19
  store i8 46, i8* %20, align 1
  %21 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 20
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 21
  store i8 46, i8* %22, align 1
  %nextArray = alloca [22 x i32], align 4
  %23 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 0
  store i32 6, i32* %23, align 4
  %24 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 2
  store i32 9, i32* %25, align 4
  %26 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 3
  store i32 2, i32* %26, align 4
  %27 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 4
  store i32 9, i32* %27, align 4
  %28 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 5
  store i32 3, i32* %28, align 4
  %29 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 6
  store i32 4, i32* %29, align 4
  %30 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 7
  store i32 5, i32* %30, align 4
  %31 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 8
  store i32 3, i32* %31, align 4
  %32 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 9
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 10
  store i32 6, i32* %33, align 4
  %34 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 11
  store i32 9, i32* %34, align 4
  %35 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 12
  store i32 7, i32* %35, align 4
  %36 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 13
  store i32 6, i32* %36, align 4
  %37 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 14
  store i32 8, i32* %37, align 4
  %38 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 15
  store i32 2, i32* %38, align 4
  %39 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 16
  store i32 6, i32* %39, align 4
  %40 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 17
  store i32 7, i32* %40, align 4
  %41 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 18
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 19
  store i32 10, i32* %42, align 4
  %43 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 20
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 21
  store i32 10, i32* %44, align 4
  %45 = getelementptr inbounds [22 x i32], [22 x i32]* %nextArray, i32 0, i32 0
  %46 = getelementptr inbounds [22 x i8], [22 x i8]* %outArray, i32 0, i32 0
  br label %47

47:                                               ; preds = %0
  call void @decode16311072576270362056(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str, i32 0, i32 0), i32* %45, i8* %46)
  %outArray1 = alloca [24 x i8], align 1
  %48 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 0
  store i8 108, i8* %48, align 1
  %49 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 1
  store i8 73, i8* %49, align 1
  %50 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 2
  store i8 110, i8* %50, align 1
  %51 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 3
  store i8 108, i8* %51, align 1
  %52 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 4
  store i8 105, i8* %52, align 1
  %53 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 5
  store i8 103, i8* %53, align 1
  %54 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 6
  store i8 97, i8* %54, align 1
  %55 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 7
  store i8 116, i8* %55, align 1
  %56 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 8
  store i8 116, i8* %56, align 1
  %57 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 9
  store i8 105, i8* %57, align 1
  %58 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 10
  store i8 108, i8* %58, align 1
  %59 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 11
  store i8 108, i8* %59, align 1
  %60 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 12
  store i8 108, i8* %60, align 1
  %61 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 13
  store i8 105, i8* %61, align 1
  %62 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 14
  store i8 122, i8* %62, align 1
  %63 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 15
  store i8 110, i8* %63, align 1
  %64 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 16
  store i8 105, i8* %64, align 1
  %65 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 17
  store i8 50, i8* %65, align 1
  %66 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 18
  store i8 116, i8* %66, align 1
  %67 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 19
  store i8 50, i8* %67, align 1
  %68 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 20
  store i8 97, i8* %68, align 1
  %69 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 21
  store i8 46, i8* %69, align 1
  %70 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 22
  store i8 0, i8* %70, align 1
  %71 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 23
  store i8 46, i8* %71, align 1
  %nextArray2 = alloca [24 x i32], align 4
  %72 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 0
  store i32 6, i32* %72, align 4
  %73 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 2
  store i32 2, i32* %74, align 4
  %75 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 3
  store i32 6, i32* %75, align 4
  %76 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 4
  store i32 3, i32* %76, align 4
  %77 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 5
  store i32 9, i32* %77, align 4
  %78 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 6
  store i32 5, i32* %78, align 4
  %79 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 7
  store i32 4, i32* %79, align 4
  %80 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 8
  store i32 4, i32* %80, align 4
  %81 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 9
  store i32 3, i32* %81, align 4
  %82 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 10
  store i32 6, i32* %82, align 4
  %83 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 11
  store i32 6, i32* %83, align 4
  %84 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 12
  store i32 6, i32* %84, align 4
  %85 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 13
  store i32 7, i32* %85, align 4
  %86 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 14
  store i32 8, i32* %86, align 4
  %87 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 15
  store i32 2, i32* %87, align 4
  %88 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 16
  store i32 7, i32* %88, align 4
  %89 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 17
  store i32 10, i32* %89, align 4
  %90 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 18
  store i32 4, i32* %90, align 4
  %91 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 19
  store i32 10, i32* %91, align 4
  %92 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 20
  store i32 5, i32* %92, align 4
  %93 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 21
  store i32 11, i32* %93, align 4
  %94 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 22
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 23
  store i32 11, i32* %95, align 4
  %96 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray2, i32 0, i32 0
  %97 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray1, i32 0, i32 0
  br label %98

98:                                               ; preds = %47
  call void @decode16311072576270362056(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.3, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.3, i32 0, i32 0), i32* %96, i8* %97)
  %outArray3 = alloca [24 x i8], align 1
  %99 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 0
  store i8 114, i8* %99, align 1
  %100 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 1
  store i8 72, i8* %100, align 1
  %101 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 2
  store i8 101, i8* %101, align 1
  %102 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 3
  store i8 119, i8* %102, align 1
  %103 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 4
  store i8 111, i8* %103, align 1
  %104 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 5
  store i8 108, i8* %104, align 1
  %105 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 6
  store i8 111, i8* %105, align 1
  %106 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 7
  store i8 108, i8* %106, align 1
  %107 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 8
  store i8 44, i8* %107, align 1
  %108 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 9
  store i8 114, i8* %108, align 1
  %109 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 10
  store i8 32, i8* %109, align 1
  %110 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 11
  store i8 33, i8* %110, align 1
  %111 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 12
  store i8 108, i8* %111, align 1
  %112 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 13
  store i8 119, i8* %112, align 1
  %113 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 14
  store i8 72, i8* %113, align 1
  %114 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 15
  store i8 111, i8* %114, align 1
  %115 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 16
  store i8 108, i8* %115, align 1
  %116 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 17
  store i8 100, i8* %116, align 1
  %117 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 18
  store i8 100, i8* %117, align 1
  %118 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 19
  store i8 114, i8* %118, align 1
  %119 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 20
  store i8 101, i8* %119, align 1
  %120 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 21
  store i8 33, i8* %120, align 1
  %121 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 22
  store i8 0, i8* %121, align 1
  %122 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 23
  store i8 119, i8* %122, align 1
  %nextArray4 = alloca [24 x i32], align 4
  %123 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 0
  store i32 8, i32* %123, align 4
  %124 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 2
  store i32 2, i32* %125, align 4
  %126 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 3
  store i32 7, i32* %126, align 4
  %127 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 4
  store i32 4, i32* %127, align 4
  %128 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 5
  store i32 3, i32* %128, align 4
  %129 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 6
  store i32 4, i32* %129, align 4
  %130 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 7
  store i32 3, i32* %130, align 4
  %131 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 8
  store i32 5, i32* %131, align 4
  %132 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 9
  store i32 8, i32* %132, align 4
  %133 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 10
  store i32 6, i32* %133, align 4
  %134 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 11
  store i32 11, i32* %134, align 4
  %135 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 12
  store i32 3, i32* %135, align 4
  %136 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 13
  store i32 7, i32* %136, align 4
  %137 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 14
  store i32 1, i32* %137, align 4
  %138 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 15
  store i32 4, i32* %138, align 4
  %139 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 16
  store i32 9, i32* %139, align 4
  %140 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 17
  store i32 10, i32* %140, align 4
  %141 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 18
  store i32 10, i32* %141, align 4
  %142 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 19
  store i32 8, i32* %142, align 4
  %143 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 20
  store i32 2, i32* %143, align 4
  %144 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 21
  store i32 11, i32* %144, align 4
  %145 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 22
  store i32 0, i32* %145, align 4
  %146 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 23
  store i32 7, i32* %146, align 4
  %147 = getelementptr inbounds [24 x i32], [24 x i32]* %nextArray4, i32 0, i32 0
  %148 = getelementptr inbounds [24 x i8], [24 x i8]* %outArray3, i32 0, i32 0
  br label %149

149:                                              ; preds = %98
  call void @decode16311072576270362056(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.4, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.4, i32 0, i32 0), i32* %147, i8* %148)
  ret void
}

attributes #0 = { mustprogress nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nounwind }

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

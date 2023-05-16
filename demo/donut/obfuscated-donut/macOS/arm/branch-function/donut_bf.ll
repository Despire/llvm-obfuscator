; ModuleID = '../../../../donut.ll'
source_filename = "donut_deobfuscated.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@Z_SIZE = local_unnamed_addr constant i64 1760, align 8
@B_SIZE = local_unnamed_addr constant i64 1760, align 8
@WAIT_TIME = local_unnamed_addr constant i64 30000, align 8
@.str = private unnamed_addr constant [13 x i8] c".,-~:;=!*#$@\00", align 1
@CHARS = local_unnamed_addr global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@obfsblockAddrLookupTable4199120322427700348 = private global [6 x i8*] zeroinitializer
@obfsblockAddrLookupTable7964110772117758926 = private global [6 x i8*] zeroinitializer
@obfsblockAddrLookupTable11771096605757597677 = private global [4 x i8*] zeroinitializer
@obfsblockAddrLookupTable1391120337868219691 = private global [3 x i8*] zeroinitializer
@obfsblockAddrLookupTable16618186731295122996 = private global [7 x i8*] zeroinitializer
@obfsblockAddrLookupTable12437016231049613996 = private global [7 x i8*] zeroinitializer
@llvm.compiler.used = appending global [13 x i8*] [i8* bitcast (i64 (i64)* @h6533812249063592184 to i8*), i8* bitcast ([6 x i8*]* @obfsblockAddrLookupTable4199120322427700348 to i8*), i8* bitcast (i8** (i32*)* @bf9022961737088127630 to i8*), i8* bitcast ([6 x i8*]* @obfsblockAddrLookupTable7964110772117758926 to i8*), i8* bitcast (i8** (i32*)* @bf10893006493048259891 to i8*), i8* bitcast ([4 x i8*]* @obfsblockAddrLookupTable11771096605757597677 to i8*), i8* bitcast (i8** (i32*)* @bf17378430589564165481 to i8*), i8* bitcast ([3 x i8*]* @obfsblockAddrLookupTable1391120337868219691 to i8*), i8* bitcast (i8** (i32*)* @bf10342255408824087417 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable16618186731295122996 to i8*), i8* bitcast (i8** (i32*)* @bf6394365829040416097 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable12437016231049613996 to i8*), i8* bitcast (i8** (i32*)* @bf3459859208528736595 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @update(float* %0, float* %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i64 @h6533812249063592184(i64 1619156625)
  %5 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable4199120322427700348, i32 0, i64 %4
  store i8* blockaddress(@update, %37), i8** %5, align 8
  %6 = call i64 @h6533812249063592184(i64 1619156630)
  %7 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable4199120322427700348, i32 0, i64 %6
  store i8* blockaddress(@update, %15), i8** %7, align 8
  %8 = icmp eq float* %0, null
  %9 = icmp eq float* %1, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = select i1 %10, i32 1619156630, i32 1619156625
  %12 = xor i32 %11, 7
  store i32 %12, i32* %3, align 4
  %13 = call i8** @bf9022961737088127630(i32* %3)
  %14 = load i8*, i8** %13, align 8
  indirectbr i8* %14, [label %37, label %15]

15:                                               ; preds = %15, %2
  %16 = load float, float* %0, align 4, !tbaa !10
  %17 = fpext float %16 to double
  %18 = fadd double %17, 4.000000e-05
  %19 = fptrunc double %18 to float
  store float %19, float* %0, align 4, !tbaa !10
  %20 = load float, float* %1, align 4, !tbaa !10
  %21 = fpext float %20 to double
  %22 = fadd double %21, 2.000000e-05
  %23 = fptrunc double %22 to float
  store float %23, float* %1, align 4, !tbaa !10
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 1
  %28 = mul i8 %25, %25
  %29 = add i8 %28, %25
  %30 = srem i8 %29, 2
  %31 = icmp eq i8 %30, 0
  %32 = or i1 %27, %31
  %33 = select i1 %32, i32 1619156630, i32 1619156625
  %34 = xor i32 %33, 7
  store i32 %34, i32* %3, align 4
  %35 = call i8** @bf9022961737088127630(i32* %3)
  %36 = load i8*, i8** %35, align 8
  indirectbr i8* %36, [label %37, label %15]

37:                                               ; preds = %15, %2
  %38 = phi i32 [ 0, %15 ], [ 2, %2 ]
  ret i32 %38
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @render(float* %0, float* %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = call i64 @h6533812249063592184(i64 1619156625)
  %7 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable7964110772117758926, i32 0, i64 %6
  store i8* blockaddress(@render, %53), i8** %7, align 8
  %8 = call i64 @h6533812249063592184(i64 1619156626)
  %9 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable7964110772117758926, i32 0, i64 %8
  store i8* blockaddress(@render, %63), i8** %9, align 8
  %10 = call i64 @h6533812249063592184(i64 1619156630)
  %11 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable7964110772117758926, i32 0, i64 %10
  store i8* blockaddress(@render, %36), i8** %11, align 8
  %12 = call i64 @h6533812249063592184(i64 1619156627)
  %13 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable7964110772117758926, i32 0, i64 %12
  store i8* blockaddress(@render, %27), i8** %13, align 8
  %14 = call i64 @h6533812249063592184(i64 1619156624)
  %15 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable7964110772117758926, i32 0, i64 %14
  store i8* blockaddress(@render, %21), i8** %15, align 8
  %16 = icmp eq i64 %3, 1760
  %17 = select i1 %16, i32 1619156626, i32 1619156627
  %18 = xor i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = call i8** @bf10893006493048259891(i32* %5)
  %20 = load i8*, i8** %19, align 8
  indirectbr i8* %20, [label %27, label %63]

21:                                               ; preds = %53
  %22 = icmp eq i64 %58, 1761
  %23 = select i1 %22, i32 1619156627, i32 1619156626
  %24 = xor i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = call i8** @bf10893006493048259891(i32* %5)
  %26 = load i8*, i8** %25, align 8
  indirectbr i8* %26, [label %63, label %27]

27:                                               ; preds = %21, %4
  %28 = phi i64 [ %58, %21 ], [ 0, %4 ]
  %29 = trunc i64 %28 to i32
  %30 = urem i32 %29, 80
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 1619156630, i32 1619156625
  %33 = xor i32 %32, 7
  store i32 %33, i32* %5, align 4
  %34 = call i8** @bf10893006493048259891(i32* %5)
  %35 = load i8*, i8** %34, align 8
  indirectbr i8* %35, [label %53, label %36]

36:                                               ; preds = %36, %27
  %37 = getelementptr inbounds i8, i8* %2, i64 %28
  %38 = load i8, i8* %37, align 1, !tbaa !14
  %39 = sext i8 %38 to i32
  %40 = load i8*, i8** %13, align 8
  %41 = load i8, i8* %40, align 1
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 1
  %44 = mul i8 %41, %41
  %45 = add i8 %44, %41
  %46 = srem i8 %45, 2
  %47 = icmp eq i8 %46, 0
  %48 = or i1 %43, %47
  %49 = select i1 %48, i32 1619156630, i32 1619156625
  %50 = xor i32 %49, 7
  store i32 %50, i32* %5, align 4
  %51 = call i8** @bf10893006493048259891(i32* %5)
  %52 = load i8*, i8** %51, align 8
  indirectbr i8* %52, [label %53, label %36]

53:                                               ; preds = %36, %27
  %54 = phi i32 [ %39, %36 ], [ 10, %27 ]
  %55 = call i32 @putchar(i32 %54)
  %56 = call i32 @update(float* %0, float* %1)
  %57 = icmp eq i32 %56, 0
  %58 = add nuw nsw i64 %28, 1
  %59 = select i1 %57, i32 1619156626, i32 1619156624
  %60 = xor i32 %59, 2
  store i32 %60, i32* %5, align 4
  %61 = call i8** @bf10893006493048259891(i32* %5)
  %62 = load i8*, i8** %61, align 8
  indirectbr i8* %62, [label %21, label %63]

63:                                               ; preds = %53, %21, %4
  %64 = phi i32 [ 2, %4 ], [ %56, %53 ], [ 0, %21 ]
  ret i32 %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @clear(i8* %0, i64 %1, float* %2, i64 %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = call i64 @h6533812249063592184(i64 1619156624)
  %7 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable11771096605757597677, i32 0, i64 %6
  store i8* blockaddress(@clear, %47), i8** %7, align 8
  %8 = call i64 @h6533812249063592184(i64 1619156625)
  %9 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable11771096605757597677, i32 0, i64 %8
  store i8* blockaddress(@clear, %27), i8** %9, align 8
  %10 = call i64 @h6533812249063592184(i64 1619156627)
  %11 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable11771096605757597677, i32 0, i64 %10
  store i8* blockaddress(@clear, %19), i8** %11, align 8
  %12 = icmp eq i8* %0, null
  %13 = icmp eq float* %2, null
  %14 = select i1 %12, i1 true, i1 %13
  %15 = select i1 %14, i32 1619156627, i32 1619156624
  %16 = xor i32 %15, 3
  store i32 %16, i32* %5, align 4
  %17 = call i8** @bf17378430589564165481(i32* %5)
  %18 = load i8*, i8** %17, align 8
  indirectbr i8* %18, [label %47, label %19]

19:                                               ; preds = %4
  %20 = icmp ne i64 %1, 1760
  %21 = icmp ne i64 %3, 7040
  %22 = select i1 %20, i1 true, i1 %21
  %23 = select i1 %22, i32 1619156625, i32 1619156624
  %24 = xor i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = call i8** @bf17378430589564165481(i32* %5)
  %26 = load i8*, i8** %25, align 8
  indirectbr i8* %26, [label %47, label %27]

27:                                               ; preds = %27, %19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #10
  %28 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %28, i8 0, i64 7040, i1 false) #10
  %29 = load i8*, i8** %11, align 8
  %30 = load i8, i8* %29, align 1
  %31 = mul i8 %30, 2
  %32 = mul i8 %30, 2
  %33 = add i8 2, %32
  %34 = mul i8 %31, %33
  %35 = srem i8 %34, 4
  %36 = icmp eq i8 %35, 0
  %37 = mul i8 %30, %30
  %38 = mul i8 %37, %30
  %39 = add i8 %38, %30
  %40 = srem i8 %39, 2
  %41 = icmp eq i8 %40, 0
  %42 = and i1 %36, %41
  %43 = select i1 %42, i32 1619156627, i32 1619156624
  %44 = xor i32 %43, 3
  store i32 %44, i32* %5, align 4
  %45 = call i8** @bf17378430589564165481(i32* %5)
  %46 = load i8*, i8** %45, align 8
  indirectbr i8* %46, [label %47, label %27]

47:                                               ; preds = %27, %19, %4
  %48 = phi i32 [ 0, %27 ], [ 2, %4 ], [ 2, %19 ]
  ret i32 %48
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
  %1 = alloca i32, align 4
  %2 = call i64 @h6533812249063592184(i64 1619156624)
  %3 = getelementptr [3 x i8*], [3 x i8*]* @obfsblockAddrLookupTable1391120337868219691, i32 0, i64 %2
  store i8* blockaddress(@main, %24), i8** %3, align 8
  %4 = call i64 @h6533812249063592184(i64 1619156627)
  %5 = getelementptr [3 x i8*], [3 x i8*]* @obfsblockAddrLookupTable1391120337868219691, i32 0, i64 %4
  store i8* blockaddress(@main, %22), i8** %5, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [1760 x float], align 4
  %9 = alloca [1760 x i8], align 1
  %10 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #10
  store float 0.000000e+00, float* %6, align 4, !tbaa !10
  %11 = bitcast float* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #10
  store float 0.000000e+00, float* %7, align 4, !tbaa !10
  %12 = bitcast [1760 x float]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %12) #10
  %13 = getelementptr inbounds [1760 x i8], [1760 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %13) #10
  %14 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = getelementptr inbounds [1760 x float], [1760 x float]* %8, i64 0, i64 0
  %16 = call fastcc i32 @main_loop(float* nonnull %6, float* nonnull %7, i8* nonnull %13, float* nonnull %15)
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 1619156627, i32 1619156624
  %19 = xor i32 %18, 3
  store i32 %19, i32* %1, align 4
  %20 = call i8** @bf10342255408824087417(i32* %1)
  %21 = load i8*, i8** %20, align 8
  indirectbr i8* %21, [label %24, label %22]

22:                                               ; preds = %24, %0
  %23 = phi i32 [ %16, %0 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %13) #10
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %12) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #10
  ret i32 %23

24:                                               ; preds = %24, %0
  call fastcc void @wait()
  %25 = call fastcc i32 @main_loop(float* nonnull %6, float* nonnull %7, i8* nonnull %13, float* nonnull %15)
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1619156627, i32 1619156624
  %28 = xor i32 %27, 3
  store i32 %28, i32* %1, align 4
  %29 = call i8** @bf10342255408824087417(i32* %1)
  %30 = load i8*, i8** %29, align 8
  indirectbr i8* %30, [label %24, label %22]
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = call i64 @h6533812249063592184(i64 1619156626)
  %7 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable16618186731295122996, i32 0, i64 %6
  store i8* blockaddress(@main_loop, %73), i8** %7, align 8
  %8 = call i64 @h6533812249063592184(i64 1619156625)
  %9 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable16618186731295122996, i32 0, i64 %8
  store i8* blockaddress(@main_loop, %24), i8** %9, align 8
  %10 = call i64 @h6533812249063592184(i64 1619156631)
  %11 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable16618186731295122996, i32 0, i64 %10
  store i8* blockaddress(@main_loop, %56), i8** %11, align 8
  %12 = call i64 @h6533812249063592184(i64 1619156630)
  %13 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable16618186731295122996, i32 0, i64 %12
  store i8* blockaddress(@main_loop, %49), i8** %13, align 8
  %14 = call i64 @h6533812249063592184(i64 1619156624)
  %15 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable16618186731295122996, i32 0, i64 %14
  store i8* blockaddress(@main_loop, %38), i8** %15, align 8
  %16 = call i64 @h6533812249063592184(i64 1619156627)
  %17 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable16618186731295122996, i32 0, i64 %16
  store i8* blockaddress(@main_loop, %31), i8** %17, align 8
  %18 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1619156626, i32 1619156625
  %21 = xor i32 %20, 3
  store i32 %21, i32* %5, align 4
  %22 = call i8** @bf6394365829040416097(i32* %5)
  %23 = load i8*, i8** %22, align 8
  indirectbr i8* %23, [label %24, label %73]

24:                                               ; preds = %4
  %25 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1619156630, i32 1619156624
  %28 = xor i32 %27, 6
  store i32 %28, i32* %5, align 4
  %29 = call i8** @bf6394365829040416097(i32* %5)
  %30 = load i8*, i8** %29, align 8
  indirectbr i8* %30, [label %38, label %49]

31:                                               ; preds = %38
  %32 = call fastcc i32 @inner_loop(float %42, float* %0, float* %1, i8* %2, float* %3)
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 1619156630, i32 1619156624
  %35 = xor i32 %34, 6
  store i32 %35, i32* %5, align 4
  %36 = call i8** @bf6394365829040416097(i32* %5)
  %37 = load i8*, i8** %36, align 8
  indirectbr i8* %37, [label %38, label %49]

38:                                               ; preds = %31, %24
  %39 = phi i32 [ %32, %31 ], [ %25, %24 ]
  %40 = phi double [ %43, %31 ], [ 0.000000e+00, %24 ]
  %41 = fadd double %40, 7.000000e-02
  %42 = fptrunc double %41 to float
  %43 = fpext float %42 to double
  %44 = fcmp olt double %43, 6.280000e+00
  %45 = select i1 %44, i32 1619156630, i32 1619156627
  %46 = xor i32 %45, 5
  store i32 %46, i32* %5, align 4
  %47 = call i8** @bf6394365829040416097(i32* %5)
  %48 = load i8*, i8** %47, align 8
  indirectbr i8* %48, [label %31, label %49]

49:                                               ; preds = %38, %31, %24
  %50 = phi i32 [ %25, %24 ], [ %39, %38 ], [ %32, %31 ]
  %51 = phi i1 [ true, %24 ], [ %44, %31 ], [ %44, %38 ]
  %52 = select i1 %51, i32 1619156631, i32 1619156626
  %53 = xor i32 %52, 5
  store i32 %53, i32* %5, align 4
  %54 = call i8** @bf6394365829040416097(i32* %5)
  %55 = load i8*, i8** %54, align 8
  indirectbr i8* %55, [label %73, label %56]

56:                                               ; preds = %56, %49
  %57 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  %63 = mul i8 %60, %60
  %64 = add i8 %63, %60
  %65 = mul i8 %64, 3
  %66 = srem i8 %65, 2
  %67 = icmp eq i8 %66, 0
  %68 = or i1 %62, %67
  %69 = select i1 %68, i32 1619156630, i32 1619156626
  %70 = xor i32 %69, 4
  store i32 %70, i32* %5, align 4
  %71 = call i8** @bf6394365829040416097(i32* %5)
  %72 = load i8*, i8** %71, align 8
  indirectbr i8* %72, [label %73, label %56]

73:                                               ; preds = %56, %49, %4
  %74 = phi i32 [ %50, %49 ], [ %18, %4 ], [ %58, %56 ]
  ret i32 %74
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #5 {
  %1 = alloca i32, align 4
  %2 = call i32 @"\01_usleep"(i32 30000) #10
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #6 {
  %6 = alloca i32, align 4
  %7 = call i64 @h6533812249063592184(i64 1619156626)
  %8 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable12437016231049613996, i32 0, i64 %7
  store i8* blockaddress(@inner_loop, %159), i8** %8, align 8
  %9 = call i64 @h6533812249063592184(i64 1619156625)
  %10 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable12437016231049613996, i32 0, i64 %9
  store i8* blockaddress(@inner_loop, %150), i8** %10, align 8
  %11 = call i64 @h6533812249063592184(i64 1619156628)
  %12 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable12437016231049613996, i32 0, i64 %11
  store i8* blockaddress(@inner_loop, %125), i8** %12, align 8
  %13 = call i64 @h6533812249063592184(i64 1619156630)
  %14 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable12437016231049613996, i32 0, i64 %13
  store i8* blockaddress(@inner_loop, %114), i8** %14, align 8
  %15 = call i64 @h6533812249063592184(i64 1619156627)
  %16 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable12437016231049613996, i32 0, i64 %15
  store i8* blockaddress(@inner_loop, %50), i8** %16, align 8
  %17 = call i64 @h6533812249063592184(i64 1619156624)
  %18 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable12437016231049613996, i32 0, i64 %17
  store i8* blockaddress(@inner_loop, %30), i8** %18, align 8
  %19 = icmp eq float* %1, null
  %20 = icmp eq float* %2, null
  %21 = select i1 %19, i1 true, i1 %20
  %22 = icmp eq i8* %3, null
  %23 = select i1 %21, i1 true, i1 %22
  %24 = icmp eq float* %4, null
  %25 = select i1 %23, i1 true, i1 %24
  %26 = select i1 %25, i32 1619156624, i32 1619156626
  %27 = xor i32 %26, 2
  store i32 %27, i32* %6, align 4
  %28 = call i8** @bf3459859208528736595(i32* %6)
  %29 = load i8*, i8** %28, align 8
  indirectbr i8* %29, [label %159, label %30]

30:                                               ; preds = %30, %5
  %31 = fpext float %0 to double
  %32 = call double @llvm.cos.f64(double %31)
  %33 = fptrunc double %32 to float
  %34 = call double @llvm.sin.f64(double %31)
  %35 = fptrunc double %34 to float
  %36 = fadd float %33, 2.000000e+00
  %37 = load i8*, i8** %18, align 8
  %38 = load i8, i8* %37, align 1
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 1
  %41 = mul i8 %38, %38
  %42 = add i8 %41, %38
  %43 = srem i8 %42, 2
  %44 = icmp eq i8 %43, 0
  %45 = or i1 %40, %44
  %46 = select i1 %45, i32 1619156627, i32 1619156627
  %47 = xor i32 %46, 0
  store i32 %47, i32* %6, align 4
  %48 = call i8** @bf3459859208528736595(i32* %6)
  %49 = load i8*, i8** %48, align 8
  indirectbr i8* %49, [label %50, label %30]

50:                                               ; preds = %150, %30
  %51 = phi double [ 0.000000e+00, %30 ], [ %153, %150 ]
  %52 = call double @llvm.sin.f64(double %51)
  %53 = fptrunc double %52 to float
  %54 = load float, float* %1, align 4, !tbaa !10
  %55 = fpext float %54 to double
  %56 = call double @llvm.sin.f64(double %55)
  %57 = fptrunc double %56 to float
  %58 = call double @llvm.cos.f64(double %55)
  %59 = fptrunc double %58 to float
  %60 = fmul float %36, %53
  %61 = fmul float %60, %57
  %62 = fmul float %35, %59
  %63 = fadd float %61, %62
  %64 = fadd float %63, 5.000000e+00
  %65 = fdiv float 1.000000e+00, %64
  %66 = call double @llvm.cos.f64(double %51)
  %67 = fptrunc double %66 to float
  %68 = load float, float* %2, align 4, !tbaa !10
  %69 = fpext float %68 to double
  %70 = call double @llvm.cos.f64(double %69)
  %71 = fptrunc double %70 to float
  %72 = call double @llvm.sin.f64(double %69)
  %73 = fptrunc double %72 to float
  %74 = fmul float %60, %59
  %75 = fmul float %35, %57
  %76 = fsub float %74, %75
  %77 = fmul float %65, 3.000000e+01
  %78 = fmul float %36, %67
  %79 = fmul float %78, %71
  %80 = fmul float %76, %73
  %81 = fsub float %79, %80
  %82 = fmul float %81, %77
  %83 = fadd float %82, 4.000000e+01
  %84 = fptosi float %83 to i32
  %85 = fmul float %65, 1.500000e+01
  %86 = fmul float %78, %73
  %87 = fmul float %76, %71
  %88 = fadd float %86, %87
  %89 = fmul float %88, %85
  %90 = fadd float %89, 1.200000e+01
  %91 = fptosi float %90 to i32
  %92 = fmul float %33, %53
  %93 = fmul float %92, %59
  %94 = fsub float %75, %93
  %95 = fmul float %94, %71
  %96 = fmul float %92, %57
  %97 = fsub float %95, %96
  %98 = fsub float %97, %62
  %99 = fmul float %33, %67
  %100 = fmul float %99, %73
  %101 = fsub float %98, %100
  %102 = fmul float %101, 8.000000e+00
  %103 = fptosi float %102 to i32
  %104 = add i32 %91, -1
  %105 = icmp ult i32 %104, 21
  %106 = icmp sgt i32 %84, 0
  %107 = select i1 %105, i1 %106, i1 false
  %108 = icmp slt i32 %84, 80
  %109 = select i1 %107, i1 %108, i1 false
  %110 = select i1 %109, i32 1619156625, i32 1619156630
  %111 = xor i32 %110, 7
  store i32 %111, i32* %6, align 4
  %112 = call i8** @bf3459859208528736595(i32* %6)
  %113 = load i8*, i8** %112, align 8
  indirectbr i8* %113, [label %114, label %150]

114:                                              ; preds = %50
  %115 = mul nsw i32 %91, 80
  %116 = add nsw i32 %115, %84
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %4, i64 %117
  %119 = load float, float* %118, align 4, !tbaa !10
  %120 = fcmp ogt float %65, %119
  %121 = select i1 %120, i32 1619156625, i32 1619156628
  %122 = xor i32 %121, 5
  store i32 %122, i32* %6, align 4
  %123 = call i8** @bf3459859208528736595(i32* %6)
  %124 = load i8*, i8** %123, align 8
  indirectbr i8* %124, [label %125, label %150]

125:                                              ; preds = %125, %114
  store float %65, float* %118, align 4, !tbaa !10
  %126 = load i8*, i8** @CHARS, align 8, !tbaa !15
  %127 = icmp sgt i32 %103, 0
  %128 = select i1 %127, i32 %103, i32 0
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1, !tbaa !14
  %132 = getelementptr inbounds i8, i8* %3, i64 %117
  store i8 %131, i8* %132, align 1, !tbaa !14
  %133 = load i8*, i8** %16, align 8
  %134 = load i8, i8* %133, align 1
  %135 = mul i8 %134, 2
  %136 = mul i8 %134, 2
  %137 = add i8 2, %136
  %138 = mul i8 %135, %137
  %139 = srem i8 %138, 4
  %140 = icmp eq i8 %139, 0
  %141 = mul i8 %134, %134
  %142 = add i8 %141, %134
  %143 = srem i8 %142, 2
  %144 = icmp eq i8 %143, 0
  %145 = or i1 %140, %144
  %146 = select i1 %145, i32 1619156624, i32 1619156625
  %147 = xor i32 %146, 1
  store i32 %147, i32* %6, align 4
  %148 = call i8** @bf3459859208528736595(i32* %6)
  %149 = load i8*, i8** %148, align 8
  indirectbr i8* %149, [label %150, label %125]

150:                                              ; preds = %125, %114, %50
  %151 = fadd double %51, 2.000000e-02
  %152 = fptrunc double %151 to float
  %153 = fpext float %152 to double
  %154 = fcmp olt double %153, 6.280000e+00
  %155 = select i1 %154, i32 1619156626, i32 1619156627
  %156 = xor i32 %155, 1
  store i32 %156, i32* %6, align 4
  %157 = call i8** @bf3459859208528736595(i32* %6)
  %158 = load i8*, i8** %157, align 8
  indirectbr i8* %158, [label %50, label %159]

159:                                              ; preds = %150, %5
  %160 = phi i32 [ 2, %5 ], [ 0, %150 ]
  ret i32 %160
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #7

declare i32 @"\01_usleep"(i32) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

define private i64 @h6533812249063592184(i64 %0) {
  %2 = alloca i32, align 4
  %3 = xor i64 1619156626, %0
  ret i64 %3
}

define private i8** @bf9022961737088127630(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h6533812249063592184(i64 %4)
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable4199120322427700348, i32 0, i64 %5
  ret i8** %6
}

define private i8** @bf10893006493048259891(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h6533812249063592184(i64 %4)
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable7964110772117758926, i32 0, i64 %5
  ret i8** %6
}

define private i8** @bf17378430589564165481(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h6533812249063592184(i64 %4)
  %6 = getelementptr inbounds [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable11771096605757597677, i32 0, i64 %5
  ret i8** %6
}

define private i8** @bf10342255408824087417(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h6533812249063592184(i64 %4)
  %6 = getelementptr inbounds [3 x i8*], [3 x i8*]* @obfsblockAddrLookupTable1391120337868219691, i32 0, i64 %5
  ret i8** %6
}

define private i8** @bf6394365829040416097(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h6533812249063592184(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable16618186731295122996, i32 0, i64 %5
  ret i8** %6
}

define private i8** @bf3459859208528736595(i32* %0) {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h6533812249063592184(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable12437016231049613996, i32 0, i64 %5
  ret i8** %6
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nofree noinline nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }

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
!11 = !{!"float", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!12, !12, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}

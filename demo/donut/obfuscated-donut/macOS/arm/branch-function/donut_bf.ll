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
@.str.2 = private unnamed_addr constant [34 x i8] c"time to render frame: %f seconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@obfsblockAddrLookupTable3846218998116233706 = private global [6 x i8*] zeroinitializer
@obfsblockAddrLookupTable2967602922962663241 = private global [6 x i8*] zeroinitializer
@obfsblockAddrLookupTable17718832480608359114 = private global [4 x i8*] zeroinitializer
@obfsblockAddrLookupTable7480178112207140126 = private global [5 x i8*] zeroinitializer
@obfsblockAddrLookupTable8362518020811344659 = private global [7 x i8*] zeroinitializer
@obfsblockAddrLookupTable3022379268104156912 = private global [7 x i8*] zeroinitializer
@llvm.compiler.used = appending global [13 x i8*] [i8* bitcast (i64 (i64)* @h2295137178619142584 to i8*), i8* bitcast ([6 x i8*]* @obfsblockAddrLookupTable3846218998116233706 to i8*), i8* bitcast (i8** (i32*)* @bf8930832601319990634 to i8*), i8* bitcast ([6 x i8*]* @obfsblockAddrLookupTable2967602922962663241 to i8*), i8* bitcast (i8** (i32*)* @bf17363934464510451272 to i8*), i8* bitcast ([4 x i8*]* @obfsblockAddrLookupTable17718832480608359114 to i8*), i8* bitcast (i8** (i32*)* @bf8464934198616161267 to i8*), i8* bitcast ([5 x i8*]* @obfsblockAddrLookupTable7480178112207140126 to i8*), i8* bitcast (i8** (i32*)* @bf3629142688250549582 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable8362518020811344659 to i8*), i8* bitcast (i8** (i32*)* @bf10322056631839842402 to i8*), i8* bitcast ([7 x i8*]* @obfsblockAddrLookupTable3022379268104156912 to i8*), i8* bitcast (i8** (i32*)* @bf16240364517022626156 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable
define i32 @update(float* %0, float* %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = call i64 @h2295137178619142584(i64 1830874604)
  %5 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable3846218998116233706, i32 0, i64 %4
  store i8* blockaddress(@update, %41), i8** %5, align 8
  %6 = call i64 @h2295137178619142584(i64 1830874606)
  %7 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable3846218998116233706, i32 0, i64 %6
  store i8* blockaddress(@update, %15), i8** %7, align 8
  %8 = icmp eq float* %0, null
  %9 = icmp eq float* %1, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = select i1 %10, i32 1830874606, i32 1830874604
  %12 = xor i32 %11, 2
  store i32 %12, i32* %3, align 4
  %13 = call i8** @bf8930832601319990634(i32* %3)
  %14 = load i8*, i8** %13, align 8
  indirectbr i8* %14, [label %41, label %15]

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
  %26 = mul i8 %25, 2
  %27 = mul i8 %25, 2
  %28 = add i8 2, %27
  %29 = mul i8 %26, %28
  %30 = srem i8 %29, 4
  %31 = icmp eq i8 %30, 0
  %32 = mul i8 %25, %25
  %33 = add i8 %32, %25
  %34 = srem i8 %33, 2
  %35 = icmp eq i8 %34, 0
  %36 = and i1 %31, %35
  %37 = select i1 %36, i32 1830874604, i32 1830874604
  %38 = xor i32 %37, 0
  store i32 %38, i32* %3, align 4
  %39 = call i8** @bf8930832601319990634(i32* %3)
  %40 = load i8*, i8** %39, align 8
  indirectbr i8* %40, [label %41, label %15]

41:                                               ; preds = %15, %2
  %42 = phi i32 [ 0, %15 ], [ 2, %2 ]
  ret i32 %42
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @render(float* %0, float* %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = call i64 @h2295137178619142584(i64 1830874607)
  %7 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable2967602922962663241, i32 0, i64 %6
  store i8* blockaddress(@render, %67), i8** %7, align 8
  %8 = call i64 @h2295137178619142584(i64 1830874604)
  %9 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable2967602922962663241, i32 0, i64 %8
  store i8* blockaddress(@render, %57), i8** %9, align 8
  %10 = call i64 @h2295137178619142584(i64 1830874603)
  %11 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable2967602922962663241, i32 0, i64 %10
  store i8* blockaddress(@render, %27), i8** %11, align 8
  %12 = call i64 @h2295137178619142584(i64 1830874602)
  %13 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable2967602922962663241, i32 0, i64 %12
  store i8* blockaddress(@render, %36), i8** %13, align 8
  %14 = call i64 @h2295137178619142584(i64 1830874606)
  %15 = getelementptr [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable2967602922962663241, i32 0, i64 %14
  store i8* blockaddress(@render, %21), i8** %15, align 8
  %16 = icmp eq i64 %3, 1760
  %17 = select i1 %16, i32 1830874607, i32 1830874603
  %18 = xor i32 %17, 4
  store i32 %18, i32* %5, align 4
  %19 = call i8** @bf17363934464510451272(i32* %5)
  %20 = load i8*, i8** %19, align 8
  indirectbr i8* %20, [label %27, label %67]

21:                                               ; preds = %57
  %22 = icmp eq i64 %62, 1761
  %23 = select i1 %22, i32 1830874603, i32 1830874607
  %24 = xor i32 %23, 4
  store i32 %24, i32* %5, align 4
  %25 = call i8** @bf17363934464510451272(i32* %5)
  %26 = load i8*, i8** %25, align 8
  indirectbr i8* %26, [label %67, label %27]

27:                                               ; preds = %21, %4
  %28 = phi i64 [ %62, %21 ], [ 0, %4 ]
  %29 = trunc i64 %28 to i32
  %30 = urem i32 %29, 80
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 1830874602, i32 1830874604
  %33 = xor i32 %32, 6
  store i32 %33, i32* %5, align 4
  %34 = call i8** @bf17363934464510451272(i32* %5)
  %35 = load i8*, i8** %34, align 8
  indirectbr i8* %35, [label %57, label %36]

36:                                               ; preds = %36, %27
  %37 = getelementptr inbounds i8, i8* %2, i64 %28
  %38 = load i8, i8* %37, align 1, !tbaa !14
  %39 = sext i8 %38 to i32
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = mul i8 %41, 2
  %43 = mul i8 %41, 2
  %44 = add i8 2, %43
  %45 = mul i8 %42, %44
  %46 = srem i8 %45, 4
  %47 = icmp eq i8 %46, 0
  %48 = mul i8 %41, %41
  %49 = add i8 %48, %41
  %50 = srem i8 %49, 2
  %51 = icmp eq i8 %50, 0
  %52 = and i1 %47, %51
  %53 = select i1 %52, i32 1830874606, i32 1830874604
  %54 = xor i32 %53, 2
  store i32 %54, i32* %5, align 4
  %55 = call i8** @bf17363934464510451272(i32* %5)
  %56 = load i8*, i8** %55, align 8
  indirectbr i8* %56, [label %57, label %36]

57:                                               ; preds = %36, %27
  %58 = phi i32 [ %39, %36 ], [ 10, %27 ]
  %59 = call i32 @putchar(i32 %58)
  %60 = call i32 @update(float* %0, float* %1)
  %61 = icmp eq i32 %60, 0
  %62 = add nuw nsw i64 %28, 1
  %63 = select i1 %61, i32 1830874607, i32 1830874606
  %64 = xor i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = call i8** @bf17363934464510451272(i32* %5)
  %66 = load i8*, i8** %65, align 8
  indirectbr i8* %66, [label %21, label %67]

67:                                               ; preds = %57, %21, %4
  %68 = phi i32 [ 2, %4 ], [ %60, %57 ], [ 0, %21 ]
  ret i32 %68
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
  %6 = call i64 @h2295137178619142584(i64 1830874604)
  %7 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable17718832480608359114, i32 0, i64 %6
  store i8* blockaddress(@clear, %46), i8** %7, align 8
  %8 = call i64 @h2295137178619142584(i64 1830874606)
  %9 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable17718832480608359114, i32 0, i64 %8
  store i8* blockaddress(@clear, %27), i8** %9, align 8
  %10 = call i64 @h2295137178619142584(i64 1830874607)
  %11 = getelementptr [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable17718832480608359114, i32 0, i64 %10
  store i8* blockaddress(@clear, %19), i8** %11, align 8
  %12 = icmp eq i8* %0, null
  %13 = icmp eq float* %2, null
  %14 = select i1 %12, i1 true, i1 %13
  %15 = select i1 %14, i32 1830874607, i32 1830874604
  %16 = xor i32 %15, 3
  store i32 %16, i32* %5, align 4
  %17 = call i8** @bf8464934198616161267(i32* %5)
  %18 = load i8*, i8** %17, align 8
  indirectbr i8* %18, [label %46, label %19]

19:                                               ; preds = %4
  %20 = icmp ne i64 %1, 1760
  %21 = icmp ne i64 %3, 7040
  %22 = select i1 %20, i1 true, i1 %21
  %23 = select i1 %22, i32 1830874606, i32 1830874604
  %24 = xor i32 %23, 2
  store i32 %24, i32* %5, align 4
  %25 = call i8** @bf8464934198616161267(i32* %5)
  %26 = load i8*, i8** %25, align 8
  indirectbr i8* %26, [label %46, label %27]

27:                                               ; preds = %27, %19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1760) %0, i8 32, i64 1760, i1 false) #11
  %28 = bitcast float* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7040) %28, i8 0, i64 7040, i1 false) #11
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = mul i8 %30, 2
  %32 = mul i8 %30, 2
  %33 = add i8 2, %32
  %34 = mul i8 %31, %33
  %35 = srem i8 %34, 4
  %36 = icmp eq i8 %35, 0
  %37 = mul i8 %30, %30
  %38 = add i8 %37, %30
  %39 = srem i8 %38, 2
  %40 = icmp eq i8 %39, 0
  %41 = or i1 %36, %40
  %42 = select i1 %41, i32 1830874604, i32 1830874604
  %43 = xor i32 %42, 0
  store i32 %43, i32* %5, align 4
  %44 = call i8** @bf8464934198616161267(i32* %5)
  %45 = load i8*, i8** %44, align 8
  indirectbr i8* %45, [label %46, label %27]

46:                                               ; preds = %27, %19, %4
  %47 = phi i32 [ 0, %27 ], [ 2, %4 ], [ 2, %19 ]
  ret i32 %47
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 {
  %1 = alloca i32, align 4
  %2 = call i64 @h2295137178619142584(i64 1830874605)
  %3 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable7480178112207140126, i32 0, i64 %2
  store i8* blockaddress(@main, %56), i8** %3, align 8
  %4 = call i64 @h2295137178619142584(i64 1830874607)
  %5 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable7480178112207140126, i32 0, i64 %4
  store i8* blockaddress(@main, %50), i8** %5, align 8
  %6 = call i64 @h2295137178619142584(i64 1830874603)
  %7 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable7480178112207140126, i32 0, i64 %6
  store i8* blockaddress(@main, %31), i8** %7, align 8
  %8 = call i64 @h2295137178619142584(i64 1830874606)
  %9 = getelementptr [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable7480178112207140126, i32 0, i64 %8
  store i8* blockaddress(@main, %22), i8** %9, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [1760 x float], align 4
  %13 = alloca [1760 x i8], align 1
  %14 = bitcast float* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #11
  store float 0.000000e+00, float* %10, align 4, !tbaa !10
  %15 = bitcast float* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #11
  store float 0.000000e+00, float* %11, align 4, !tbaa !10
  %16 = bitcast [1760 x float]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7040, i8* nonnull %16) #11
  %17 = getelementptr inbounds [1760 x i8], [1760 x i8]* %13, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1760, i8* nonnull %17) #11
  %18 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds [1760 x float], [1760 x float]* %12, i64 0, i64 0
  store i32 1830874606, i32* %1, align 4
  %20 = call i8** @bf3629142688250549582(i32* %1)
  %21 = load i8*, i8** %20, align 8
  indirectbr i8* %21, [label %22]

22:                                               ; preds = %50, %0
  %23 = phi i32 [ 0, %0 ], [ %51, %50 ]
  %24 = call i64 @"\01_clock"() #11
  %25 = call fastcc i32 @main_loop(float* nonnull %10, float* nonnull %11, i8* nonnull %17, float* nonnull %19)
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1830874607, i32 1830874603
  %28 = xor i32 %27, 4
  store i32 %28, i32* %1, align 4
  %29 = call i8** @bf3629142688250549582(i32* %1)
  %30 = load i8*, i8** %29, align 8
  indirectbr i8* %30, [label %31, label %50]

31:                                               ; preds = %31, %22
  %32 = call i64 @"\01_clock"() #11
  %33 = sub i64 %32, %24
  %34 = uitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), double %35)
  call fastcc void @wait()
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 1
  %41 = mul i8 %38, %38
  %42 = add i8 %41, %38
  %43 = srem i8 %42, 2
  %44 = icmp eq i8 %43, 0
  %45 = or i1 %40, %44
  %46 = select i1 %45, i32 1830874606, i32 1830874607
  %47 = xor i32 %46, 1
  store i32 %47, i32* %1, align 4
  %48 = call i8** @bf3629142688250549582(i32* %1)
  %49 = load i8*, i8** %48, align 8
  indirectbr i8* %49, [label %50, label %31]

50:                                               ; preds = %31, %22
  %51 = phi i32 [ %23, %31 ], [ %25, %22 ]
  %52 = select i1 %26, i32 1830874605, i32 1830874606
  %53 = xor i32 %52, 3
  store i32 %53, i32* %1, align 4
  %54 = call i8** @bf3629142688250549582(i32* %1)
  %55 = load i8*, i8** %54, align 8
  indirectbr i8* %55, [label %22, label %56]

56:                                               ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 1760, i8* nonnull %17) #11
  call void @llvm.lifetime.end.p0i8(i64 7040, i8* nonnull %16) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #11
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

declare i64 @"\01_clock"() local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc i32 @main_loop(float* %0, float* %1, i8* %2, float* %3) unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = call i64 @h2295137178619142584(i64 1830874603)
  %7 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable8362518020811344659, i32 0, i64 %6
  store i8* blockaddress(@main_loop, %75), i8** %7, align 8
  %8 = call i64 @h2295137178619142584(i64 1830874605)
  %9 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable8362518020811344659, i32 0, i64 %8
  store i8* blockaddress(@main_loop, %56), i8** %9, align 8
  %10 = call i64 @h2295137178619142584(i64 1830874607)
  %11 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable8362518020811344659, i32 0, i64 %10
  store i8* blockaddress(@main_loop, %38), i8** %11, align 8
  %12 = call i64 @h2295137178619142584(i64 1830874606)
  %13 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable8362518020811344659, i32 0, i64 %12
  store i8* blockaddress(@main_loop, %49), i8** %13, align 8
  %14 = call i64 @h2295137178619142584(i64 1830874602)
  %15 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable8362518020811344659, i32 0, i64 %14
  store i8* blockaddress(@main_loop, %31), i8** %15, align 8
  %16 = call i64 @h2295137178619142584(i64 1830874604)
  %17 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable8362518020811344659, i32 0, i64 %16
  store i8* blockaddress(@main_loop, %24), i8** %17, align 8
  %18 = call i32 @clear(i8* %2, i64 1760, float* %3, i64 7040)
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1830874603, i32 1830874604
  %21 = xor i32 %20, 7
  store i32 %21, i32* %5, align 4
  %22 = call i8** @bf10322056631839842402(i32* %5)
  %23 = load i8*, i8** %22, align 8
  indirectbr i8* %23, [label %24, label %75]

24:                                               ; preds = %4
  %25 = call fastcc i32 @inner_loop(float 0.000000e+00, float* %0, float* %1, i8* %2, float* %3)
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1830874606, i32 1830874607
  %28 = xor i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = call i8** @bf10322056631839842402(i32* %5)
  %30 = load i8*, i8** %29, align 8
  indirectbr i8* %30, [label %38, label %49]

31:                                               ; preds = %38
  %32 = call fastcc i32 @inner_loop(float %42, float* %0, float* %1, i8* %2, float* %3)
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 1830874606, i32 1830874607
  %35 = xor i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = call i8** @bf10322056631839842402(i32* %5)
  %37 = load i8*, i8** %36, align 8
  indirectbr i8* %37, [label %38, label %49]

38:                                               ; preds = %31, %24
  %39 = phi i32 [ %32, %31 ], [ %25, %24 ]
  %40 = phi double [ %43, %31 ], [ 0.000000e+00, %24 ]
  %41 = fadd double %40, 7.000000e-02
  %42 = fptrunc double %41 to float
  %43 = fpext float %42 to double
  %44 = fcmp olt double %43, 6.280000e+00
  %45 = select i1 %44, i32 1830874606, i32 1830874602
  %46 = xor i32 %45, 4
  store i32 %46, i32* %5, align 4
  %47 = call i8** @bf10322056631839842402(i32* %5)
  %48 = load i8*, i8** %47, align 8
  indirectbr i8* %48, [label %31, label %49]

49:                                               ; preds = %38, %31, %24
  %50 = phi i32 [ %25, %24 ], [ %39, %38 ], [ %32, %31 ]
  %51 = phi i1 [ true, %24 ], [ %44, %31 ], [ %44, %38 ]
  %52 = select i1 %51, i32 1830874605, i32 1830874603
  %53 = xor i32 %52, 6
  store i32 %53, i32* %5, align 4
  %54 = call i8** @bf10322056631839842402(i32* %5)
  %55 = load i8*, i8** %54, align 8
  indirectbr i8* %55, [label %75, label %56]

56:                                               ; preds = %56, %49
  %57 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @render(float* %0, float* %1, i8* %2, i64 1760)
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = mul i8 %60, %60
  %62 = add i8 %61, %60
  %63 = mul i8 %62, 3
  %64 = srem i8 %63, 2
  %65 = icmp eq i8 %64, 0
  %66 = mul i8 %60, %60
  %67 = add i8 %66, %60
  %68 = srem i8 %67, 2
  %69 = icmp eq i8 %68, 0
  %70 = and i1 %65, %69
  %71 = select i1 %70, i32 1830874602, i32 1830874603
  %72 = xor i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = call i8** @bf10322056631839842402(i32* %5)
  %74 = load i8*, i8** %73, align 8
  indirectbr i8* %74, [label %75, label %56]

75:                                               ; preds = %56, %49, %4
  %76 = phi i32 [ %50, %49 ], [ %18, %4 ], [ %58, %56 ]
  ret i32 %76
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @wait() unnamed_addr #6 {
  %1 = alloca i32, align 4
  %2 = call i32 @"\01_usleep"(i32 30000) #11
  ret void
}

; Function Attrs: nofree noinline nosync nounwind ssp uwtable
define internal fastcc i32 @inner_loop(float %0, float* readonly %1, float* readonly %2, i8* %3, float* %4) unnamed_addr #7 {
  %6 = alloca i32, align 4
  %7 = call i64 @h2295137178619142584(i64 1830874604)
  %8 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable3022379268104156912, i32 0, i64 %7
  store i8* blockaddress(@inner_loop, %160), i8** %8, align 8
  %9 = call i64 @h2295137178619142584(i64 1830874603)
  %10 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable3022379268104156912, i32 0, i64 %9
  store i8* blockaddress(@inner_loop, %151), i8** %10, align 8
  %11 = call i64 @h2295137178619142584(i64 1830874602)
  %12 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable3022379268104156912, i32 0, i64 %11
  store i8* blockaddress(@inner_loop, %129), i8** %12, align 8
  %13 = call i64 @h2295137178619142584(i64 1830874606)
  %14 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable3022379268104156912, i32 0, i64 %13
  store i8* blockaddress(@inner_loop, %118), i8** %14, align 8
  %15 = call i64 @h2295137178619142584(i64 1830874605)
  %16 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable3022379268104156912, i32 0, i64 %15
  store i8* blockaddress(@inner_loop, %54), i8** %16, align 8
  %17 = call i64 @h2295137178619142584(i64 1830874607)
  %18 = getelementptr [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable3022379268104156912, i32 0, i64 %17
  store i8* blockaddress(@inner_loop, %30), i8** %18, align 8
  %19 = icmp eq float* %1, null
  %20 = icmp eq float* %2, null
  %21 = select i1 %19, i1 true, i1 %20
  %22 = icmp eq i8* %3, null
  %23 = select i1 %21, i1 true, i1 %22
  %24 = icmp eq float* %4, null
  %25 = select i1 %23, i1 true, i1 %24
  %26 = select i1 %25, i32 1830874607, i32 1830874604
  %27 = xor i32 %26, 3
  store i32 %27, i32* %6, align 4
  %28 = call i8** @bf16240364517022626156(i32* %6)
  %29 = load i8*, i8** %28, align 8
  indirectbr i8* %29, [label %160, label %30]

30:                                               ; preds = %30, %5
  %31 = fpext float %0 to double
  %32 = call double @llvm.cos.f64(double %31)
  %33 = fptrunc double %32 to float
  %34 = call double @llvm.sin.f64(double %31)
  %35 = fptrunc double %34 to float
  %36 = fadd float %33, 2.000000e+00
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = mul i8 %38, 2
  %40 = mul i8 %38, 2
  %41 = add i8 2, %40
  %42 = mul i8 %39, %41
  %43 = srem i8 %42, 4
  %44 = icmp eq i8 %43, 0
  %45 = mul i8 %38, %38
  %46 = add i8 %45, %38
  %47 = srem i8 %46, 2
  %48 = icmp eq i8 %47, 0
  %49 = and i1 %44, %48
  %50 = select i1 %49, i32 1830874602, i32 1830874605
  %51 = xor i32 %50, 7
  store i32 %51, i32* %6, align 4
  %52 = call i8** @bf16240364517022626156(i32* %6)
  %53 = load i8*, i8** %52, align 8
  indirectbr i8* %53, [label %54, label %30]

54:                                               ; preds = %151, %30
  %55 = phi double [ 0.000000e+00, %30 ], [ %154, %151 ]
  %56 = call double @llvm.sin.f64(double %55)
  %57 = fptrunc double %56 to float
  %58 = load float, float* %1, align 4, !tbaa !10
  %59 = fpext float %58 to double
  %60 = call double @llvm.sin.f64(double %59)
  %61 = fptrunc double %60 to float
  %62 = call double @llvm.cos.f64(double %59)
  %63 = fptrunc double %62 to float
  %64 = fmul float %36, %57
  %65 = fmul float %64, %61
  %66 = fmul float %35, %63
  %67 = fadd float %65, %66
  %68 = fadd float %67, 5.000000e+00
  %69 = fdiv float 1.000000e+00, %68
  %70 = call double @llvm.cos.f64(double %55)
  %71 = fptrunc double %70 to float
  %72 = load float, float* %2, align 4, !tbaa !10
  %73 = fpext float %72 to double
  %74 = call double @llvm.cos.f64(double %73)
  %75 = fptrunc double %74 to float
  %76 = call double @llvm.sin.f64(double %73)
  %77 = fptrunc double %76 to float
  %78 = fmul float %64, %63
  %79 = fmul float %35, %61
  %80 = fsub float %78, %79
  %81 = fmul float %69, 3.000000e+01
  %82 = fmul float %36, %71
  %83 = fmul float %82, %75
  %84 = fmul float %80, %77
  %85 = fsub float %83, %84
  %86 = fmul float %85, %81
  %87 = fadd float %86, 4.000000e+01
  %88 = fptosi float %87 to i32
  %89 = fmul float %69, 1.500000e+01
  %90 = fmul float %82, %77
  %91 = fmul float %80, %75
  %92 = fadd float %90, %91
  %93 = fmul float %92, %89
  %94 = fadd float %93, 1.200000e+01
  %95 = fptosi float %94 to i32
  %96 = fmul float %33, %57
  %97 = fmul float %96, %63
  %98 = fsub float %79, %97
  %99 = fmul float %98, %75
  %100 = fmul float %96, %61
  %101 = fsub float %99, %100
  %102 = fsub float %101, %66
  %103 = fmul float %33, %71
  %104 = fmul float %103, %77
  %105 = fsub float %102, %104
  %106 = fmul float %105, 8.000000e+00
  %107 = fptosi float %106 to i32
  %108 = add i32 %95, -1
  %109 = icmp ult i32 %108, 21
  %110 = icmp sgt i32 %88, 0
  %111 = select i1 %109, i1 %110, i1 false
  %112 = icmp slt i32 %88, 80
  %113 = select i1 %111, i1 %112, i1 false
  %114 = select i1 %113, i32 1830874603, i32 1830874606
  %115 = xor i32 %114, 5
  store i32 %115, i32* %6, align 4
  %116 = call i8** @bf16240364517022626156(i32* %6)
  %117 = load i8*, i8** %116, align 8
  indirectbr i8* %117, [label %118, label %151]

118:                                              ; preds = %54
  %119 = mul nsw i32 %95, 80
  %120 = add nsw i32 %119, %88
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %4, i64 %121
  %123 = load float, float* %122, align 4, !tbaa !10
  %124 = fcmp ogt float %69, %123
  %125 = select i1 %124, i32 1830874603, i32 1830874602
  %126 = xor i32 %125, 1
  store i32 %126, i32* %6, align 4
  %127 = call i8** @bf16240364517022626156(i32* %6)
  %128 = load i8*, i8** %127, align 8
  indirectbr i8* %128, [label %129, label %151]

129:                                              ; preds = %129, %118
  store float %69, float* %122, align 4, !tbaa !10
  %130 = load i8*, i8** @CHARS, align 8, !tbaa !15
  %131 = icmp sgt i32 %107, 0
  %132 = select i1 %131, i32 %107, i32 0
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1, !tbaa !14
  %136 = getelementptr inbounds i8, i8* %3, i64 %121
  store i8 %135, i8* %136, align 1, !tbaa !14
  %137 = load i8*, i8** %12, align 8
  %138 = load i8, i8* %137, align 1
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  %141 = mul i8 %138, %138
  %142 = add i8 %141, %138
  %143 = mul i8 %142, 3
  %144 = srem i8 %143, 2
  %145 = icmp eq i8 %144, 0
  %146 = or i1 %140, %145
  %147 = select i1 %146, i32 1830874603, i32 1830874603
  %148 = xor i32 %147, 0
  store i32 %148, i32* %6, align 4
  %149 = call i8** @bf16240364517022626156(i32* %6)
  %150 = load i8*, i8** %149, align 8
  indirectbr i8* %150, [label %151, label %129]

151:                                              ; preds = %129, %118, %54
  %152 = fadd double %55, 2.000000e-02
  %153 = fptrunc double %152 to float
  %154 = fpext float %153 to double
  %155 = fcmp olt double %154, 6.280000e+00
  %156 = select i1 %155, i32 1830874604, i32 1830874605
  %157 = xor i32 %156, 1
  store i32 %157, i32* %6, align 4
  %158 = call i8** @bf16240364517022626156(i32* %6)
  %159 = load i8*, i8** %158, align 8
  indirectbr i8* %159, [label %54, label %160]

160:                                              ; preds = %151, %5
  %161 = phi i32 [ 2, %5 ], [ 0, %151 ]
  ret i32 %161
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #8

declare i32 @"\01_usleep"(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline
define internal i64 @h2295137178619142584(i64 %0) #10 {
  %2 = alloca i32, align 4
  %3 = xor i64 1830874607, %0
  ret i64 %3
}

; Function Attrs: noinline
define internal i8** @bf8930832601319990634(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h2295137178619142584(i64 %4)
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable3846218998116233706, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf17363934464510451272(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h2295137178619142584(i64 %4)
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* @obfsblockAddrLookupTable2967602922962663241, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf8464934198616161267(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h2295137178619142584(i64 %4)
  %6 = getelementptr inbounds [4 x i8*], [4 x i8*]* @obfsblockAddrLookupTable17718832480608359114, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf3629142688250549582(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h2295137178619142584(i64 %4)
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* @obfsblockAddrLookupTable7480178112207140126, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf10322056631839842402(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h2295137178619142584(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable8362518020811344659, i32 0, i64 %5
  ret i8** %6
}

; Function Attrs: noinline
define internal i8** @bf16240364517022626156(i32* %0) #10 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* %0, align 4
  %4 = zext i32 %3 to i64
  %5 = call i64 @h2295137178619142584(i64 %4)
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* @obfsblockAddrLookupTable3022379268104156912, i32 0, i64 %5
  ret i8** %6
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { noinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree noinline nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #10 = { noinline }
attributes #11 = { nounwind }

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

.class public Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;
.super Ljava/lang/Object;
.source "WallpaperPreviewHelper.java"


# static fields
.field private static sInstance:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;


# instance fields
.field private final mWallpaperPreviewPageFraction:F

.field private final mWallpaperPreviewPageMarginFraction:F

.field private final mWallpaperPreviewPageMarginPx:I

.field private final mWallpaperPreviewWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 27
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 28
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 31
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f0c00e7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 32
    .local v3, "previewSideMargin":I
    const v7, 0x7f0c00e3

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 33
    .local v1, "previewItemMargin":I
    const v7, 0x7f0c00e4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 34
    .local v2, "previewItemWidth":I
    const v7, 0x7f0c00e5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 35
    .local v5, "smallPreviewItemWidth":I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewWidth:I

    .line 36
    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewPageFraction:F

    .line 38
    iget v7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewWidth:I

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v2

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v5

    sub-int/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewPageMarginPx:I

    .line 41
    iget v7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewPageMarginPx:I

    int-to-float v7, v7

    iget v8, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewPageMarginFraction:F

    .line 42
    return-void
.end method

.method public static getInstance()Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->sInstance:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->sInstance:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    .line 23
    return-void
.end method


# virtual methods
.method public getWallpaperPreviewPageFraction()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewPageFraction:F

    return v0
.end method

.method public getWallpaperPreviewPageMarginFraction()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewPageMarginFraction:F

    return v0
.end method

.method public getWallpaperPreviewPageMarginPx()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewPageMarginPx:I

    return v0
.end method

.method public getWallpaperPreviewWidth()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->mWallpaperPreviewWidth:I

    return v0
.end method

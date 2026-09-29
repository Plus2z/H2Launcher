.class public Lnet/oneplus/h2launcher/wallpaper/WallpaperFrameLayout;
.super Landroid/widget/FrameLayout;
.source "WallpaperFrameLayout.java"


# static fields
.field private static final WALLPAPER_FRAME_ASPECT_RATIO:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Utilities;->getScreenAspectRatio(Landroid/content/Context;Z)F

    move-result v1

    sput v1, Lnet/oneplus/h2launcher/wallpaper/WallpaperFrameLayout;->WALLPAPER_FRAME_ASPECT_RATIO:F

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lnet/oneplus/h2launcher/wallpaper/WallpaperFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0, v0}, Lnet/oneplus/h2launcher/wallpaper/WallpaperFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/oneplus/h2launcher/wallpaper/WallpaperFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 37
    .local v8, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 38
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 39
    .local v5, "receivedWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 44
    .local v4, "receivedHeight":I
    if-ne v1, v11, :cond_2

    .line 45
    if-ne v8, v11, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 53
    .local v7, "widthDynamic":Z
    :goto_0
    if-eqz v7, :cond_4

    .line 55
    int-to-float v9, v4

    sget v10, Lnet/oneplus/h2launcher/wallpaper/WallpaperFrameLayout;->WALLPAPER_FRAME_ASPECT_RATIO:F

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 56
    .local v6, "w":I
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 57
    .local v3, "measuredWidth":I
    move v2, p2

    .line 64
    .end local v6    # "w":I
    .local v2, "measuredHeight":I
    :goto_1
    invoke-super {p0, v3, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 65
    .end local v2    # "measuredHeight":I
    .end local v3    # "measuredWidth":I
    .end local v7    # "widthDynamic":Z
    :goto_2
    return-void

    .line 45
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 46
    :cond_2
    if-ne v8, v11, :cond_3

    .line 47
    const/4 v7, 0x0

    .restart local v7    # "widthDynamic":Z
    goto :goto_0

    .line 49
    .end local v7    # "widthDynamic":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 60
    .restart local v7    # "widthDynamic":Z
    :cond_4
    move v3, p1

    .line 61
    .restart local v3    # "measuredWidth":I
    int-to-float v9, v5

    sget v10, Lnet/oneplus/h2launcher/wallpaper/WallpaperFrameLayout;->WALLPAPER_FRAME_ASPECT_RATIO:F

    div-float/2addr v9, v10

    float-to-int v0, v9

    .line 62
    .local v0, "h":I
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "measuredHeight":I
    goto :goto_1
.end method

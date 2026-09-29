.class public Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AllAppsBackgroundDrawable.java"


# static fields
.field private static final DARK_THEME_ICON_ALPHA:I = 0x4c


# instance fields
.field private mBackgroundAnim:Landroid/animation/ObjectAnimator;

.field private mContext:Landroid/content/Context;

.field private final mHeight:I

.field private final mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 95
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 96
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    .line 99
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    const/4 v7, 0x0

    new-instance v0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    const v2, 0x7f0200d0

    const v3, 0x3ed9999a    # 0.425f

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;-><init>(Landroid/content/res/Resources;IFFI)V

    aput-object v0, v6, v7

    .line 101
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    new-instance v0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    const v2, 0x7f0200d1

    const v3, 0x3eb9999a    # 0.3625f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;-><init>(Landroid/content/res/Resources;IFFI)V

    aput-object v0, v6, v5

    .line 103
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    const/4 v7, 0x2

    new-instance v0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    const v2, 0x7f0200d2

    const v3, 0x3ef33333    # 0.475f

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;-><init>(Landroid/content/res/Resources;IFFI)V

    aput-object v0, v6, v7

    .line 105
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    const/4 v7, 0x3

    new-instance v0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    const v2, 0x7f0200d3

    const v3, 0x3f266666    # 0.65f

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;-><init>(Landroid/content/res/Resources;IFFI)V

    aput-object v0, v6, v7

    .line 107
    const v0, 0x7f0c0160

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mWidth:I

    .line 108
    const v0, 0x7f0c015f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mHeight:I

    .line 109
    return-void
.end method

.method private cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 190
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 192
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public animateBgAlpha(FI)V
    .locals 4
    .param p1, "finalAlpha"    # F
    .param p2, "duration"    # I

    .prologue
    .line 115
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 116
    .local v0, "finalAlphaI":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 117
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    .line 118
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    .line 119
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 122
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->invalidateSelf()V

    .line 159
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4c

    if-lt p1, v1, :cond_0

    .line 165
    const/16 p1, 0x4c

    .line 167
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->setAlpha(I)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->invalidateSelf()V

    .line 170
    return-void
.end method

.method public setBgAlpha(F)V
    .locals 2
    .param p1, "finalAlpha"    # F

    .prologue
    .line 128
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 129
    .local v0, "finalAlphaI":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 130
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    .line 131
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 180
    return-void
.end method

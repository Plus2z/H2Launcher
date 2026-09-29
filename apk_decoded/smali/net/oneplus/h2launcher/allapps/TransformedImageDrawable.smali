.class Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;
.super Ljava/lang/Object;
.source "AllAppsBackgroundDrawable.java"


# instance fields
.field private mGravity:I

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mXPercent:F

.field private mYPercent:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IFFI)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resourceId"    # I
    .param p3, "xPct"    # F
    .param p4, "yPct"    # F
    .param p5, "gravity"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    .line 47
    iput p3, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mXPercent:F

    .line 48
    iput p4, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mYPercent:F

    .line 49
    iput p5, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mGravity:I

    .line 50
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 76
    .local v0, "c":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 78
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 54
    return-void
.end method

.method public updateBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 61
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 62
    .local v3, "width":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 63
    .local v0, "height":I
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mXPercent:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v1, v4, v5

    .line 64
    .local v1, "left":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mYPercent:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v2, v4, v5

    .line 65
    .local v2, "top":I
    iget v4, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mGravity:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 66
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v1, v4

    .line 68
    :cond_0
    iget v4, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mGravity:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1

    .line 69
    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v2, v4

    .line 71
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/TransformedImageDrawable;->mImage:Landroid/graphics/drawable/Drawable;

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    return-void
.end method

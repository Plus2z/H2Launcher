.class public Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 35
    const/16 v0, 0xff

    iput v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mAlpha:I

    .line 36
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 43
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 45
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 67
    iput p1, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mAlpha:I

    .line 68
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mWidth:I

    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mHeight:I

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 50
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filterBitmap"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/util/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    return-void
.end method

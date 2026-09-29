.class public Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;
.super Landroid/widget/RelativeLayout;
.source "WallpaperPreviewItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final TRANSITION_DURATION:I = 0xe1


# instance fields
.field private mBackground:Landroid/view/View;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field protected mIndex:I

.field private mOverlay:Landroid/widget/ImageView;

.field private mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/view/ViewPager;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pager"    # Landroid/support/v4/view/ViewPager;
    .param p3, "overlayResId"    # I
    .param p4, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mContext:Landroid/content/Context;

    .line 41
    const v1, 0x7f0400d7

    invoke-static {p1, v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    check-cast p2, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .end local p2    # "pager":Landroid/support/v4/view/ViewPager;
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .line 44
    iput p4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mIndex:I

    .line 45
    const v1, 0x7f1101e5

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    .line 46
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    :cond_0
    const v1, 0x7f110127

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackground:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackground:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackground:Landroid/view/View;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setTag(Ljava/lang/Object;)V

    .line 58
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;)V

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mIndex:I

    if-nez v1, :cond_2

    move v0, v2

    .line 68
    .local v0, "pivotX":F
    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setPivotX(F)V

    .line 69
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setPivotY(F)V

    .line 70
    return-void

    .line 67
    .end local v0    # "pivotX":F
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c00e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    .prologue
    .line 23
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    return-object v0
.end method

.method private cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 173
    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 174
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 177
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    if-nez v1, :cond_0

    .line 179
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 181
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 184
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private composePreviewBackground(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "wallpaper"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 141
    if-nez p1, :cond_0

    .line 142
    sget-object v10, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->TAG:Ljava/lang/String;

    const-string v11, "invalid wallpaper"

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v9

    .line 169
    .end local p1    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 146
    .restart local p1    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getMaskColor()I

    move-result v10

    if-nez v10, :cond_1

    .line 147
    sget-object v9, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->TAG:Ljava/lang/String;

    const-string v10, "return original wallpaper for transparent mask color"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 153
    .local v2, "context":Landroid/content/Context;
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "wallpaper":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getMaskColor()I

    move-result v4

    .line 155
    .local v4, "maskColor":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v0, v12}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->resolveWallpaperOrientation(Landroid/content/Context;Landroid/graphics/Bitmap;Z)I

    move-result v6

    .line 156
    .local v6, "orientation":I
    if-ne v6, v12, :cond_3

    .line 157
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c00e4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 158
    .local v8, "w":I
    int-to-float v10, v8

    invoke-static {v2, v12}, Lnet/oneplus/h2launcher/Utilities;->getScreenAspectRatio(Landroid/content/Context;Z)F

    move-result v11

    div-float/2addr v10, v11

    float-to-int v3, v10

    .line 159
    .local v3, "h":I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 160
    .local v7, "temp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0, v13, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 162
    invoke-static {v2, v7, v4, v6}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->paintWallpaperColorMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 163
    .local v5, "masked":Landroid/graphics/Bitmap;
    if-eq v5, v7, :cond_2

    .line 164
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "h":I
    .end local v7    # "temp":Landroid/graphics/Bitmap;
    .end local v8    # "w":I
    :cond_2
    :goto_1
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p1, v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 167
    .end local v5    # "masked":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {v2, v0, v4, v6}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->paintWallpaperColorMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "masked":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private dumpBitmapInfo(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 190
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 191
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    .line 193
    .local v1, "isRecycled":Z
    sget-object v2, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRecycled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "isRecycled":Z
    :goto_0
    return-void

    .line 195
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayCover()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 80
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    .line 86
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->TAG:Ljava/lang/String;

    const-string v2, "invalid preview item overlay, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOverlayCover(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "cover"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected setPreviewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 13
    .param p1, "wallpaper"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 92
    sget-object v6, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->TAG:Ljava/lang/String;

    const-string v7, "setPreviewBackground index: %d, wallpaper: %s"

    new-array v8, v12, [Ljava/lang/Object;

    iget v9, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    invoke-static {v6, v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    if-nez v6, :cond_0

    .line 95
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    :goto_0
    return-void

    .line 99
    :cond_0
    if-eqz p1, :cond_1

    iget v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mIndex:I

    if-nez v6, :cond_1

    .line 100
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e035a

    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 100
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 102
    .local v0, "color":I
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    .end local v0    # "color":I
    :cond_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    .line 106
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->dumpBitmapInfo(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->dumpBitmapInfo(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 109
    .local v1, "fromDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 111
    .local v3, "toDrawable":Landroid/graphics/drawable/Drawable;
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mIndex:I

    if-ne v6, v10, :cond_2

    .line 112
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->drawWallpaperColorMask()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->composePreviewBackground(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 116
    :cond_2
    if-nez v1, :cond_3

    .line 118
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 123
    :cond_3
    new-array v2, v12, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v11

    aput-object v3, v2, v10

    .line 124
    .local v2, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 125
    .local v4, "transition":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    const/16 v6, 0xe1

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 129
    .end local v1    # "fromDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "toDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "transition":Landroid/graphics/drawable/TransitionDrawable;
    :cond_4
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->dumpBitmapInfo(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 131
    .local v5, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mIndex:I

    if-ne v6, v10, :cond_5

    .line 132
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->drawWallpaperColorMask()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 133
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->composePreviewBackground(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 135
    :cond_5
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iput-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

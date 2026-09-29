.class public Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
.super Landroid/support/v4/view/ViewPager;
.source "WallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;,
        Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;,
        Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;,
        Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;
    }
.end annotation


# static fields
.field private static final CARD_SLIDE_SHRINK_FRACTION_WALLPAPER_PREVIEW:F = 0.148f

.field private static final CARD_SLIDE_SHRINK_FRACTION_WALLPAPER_PREVIEW_ITEM:F = 0.12f

.field public static final HOME_SCREEN:I = 0x1

.field public static final HOME_SCREEN_WALLPAPER:Ljava/lang/String; = "home_screen_wallpaper"

.field public static final LOCK_SCREEN:I = 0x0

.field public static final LOCK_SCREEN_WALLPAPER:Ljava/lang/String; = "lock_screen_wallpaper"

.field private static final TAG:Ljava/lang/String;

.field private static final sIndices:[I


# instance fields
.field private mAdapter:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;

.field private mCurrentPage:I

.field private mHelper:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOverlayCover:Landroid/graphics/drawable/Drawable;

.field private mPreviewTitles:Landroid/view/View;

.field private mPreviewTitlesTranslationX:F

.field private mPreviewTitlesTranslationY:F

.field private mSelectingPage:Z

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->sIndices:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 96
    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->init(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->getInstance()Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mHelper:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    .line 98
    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mModel:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    .line 100
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020261

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mOverlayCover:Landroid/graphics/drawable/Drawable;

    .line 102
    const v1, 0x7f0c00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mPreviewTitlesTranslationX:F

    .line 103
    const v1, 0x7f0c00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mPreviewTitlesTranslationY:F

    .line 104
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 48
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 48
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mAdapter:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 48
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mHelper:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 48
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 48
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mTitles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mSelectingPage:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 48
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mModel:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->sIndices:[I

    return-object v0
.end method

.method private getLockOverlayResId()I
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getDeviceTag()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 142
    const v0, 0x7f020141

    :goto_1
    return v0

    .line 127
    :sswitch_0
    const-string v2, "15801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "15811"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "16859"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "17801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "17819"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "18801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "18811"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "18821"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "18857"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 131
    :pswitch_0
    const v0, 0x7f02013d

    goto :goto_1

    .line 133
    :pswitch_1
    const v0, 0x7f02013e

    goto :goto_1

    .line 135
    :pswitch_2
    const v0, 0x7f02013f

    goto :goto_1

    .line 138
    :pswitch_3
    const v0, 0x7f020140

    goto :goto_1

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x2cb6f95 -> :sswitch_0
        0x2cb6fb4 -> :sswitch_1
        0x2cbe497 -> :sswitch_2
        0x2cc5853 -> :sswitch_3
        0x2cc587a -> :sswitch_4
        0x2ccccb2 -> :sswitch_5
        0x2ccccd1 -> :sswitch_6
        0x2ccccf0 -> :sswitch_7
        0x2cccd53 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setScale(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scale"    # F

    .prologue
    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 227
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 228
    return-void
.end method


# virtual methods
.method protected clearPreviewItemBackground()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    .line 189
    .local v0, "wallpaperPreviewItem":Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget v2, v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 191
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mOverlayCover:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setOverlayCover(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 194
    .end local v0    # "wallpaperPreviewItem":Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;
    :cond_1
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mCurrentPage:I

    return v0
.end method

.method public getMaskColor()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mModel:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getMaskColor()I

    move-result v0

    return v0
.end method

.method public getPreviewCover(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "screen"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->getOverlayCover()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWallpaper(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 269
    .local v4, "manager":Landroid/app/WallpaperManager;
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 270
    .local v3, "info":Landroid/app/WallpaperInfo;
    sget-object v6, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->sIndices:[I

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_1

    aget v2, v6, v5

    .line 271
    .local v2, "index":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mModel:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    invoke-virtual {v8, p1, v2, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->loadWallpaperFromCache(Landroid/content/Context;ILandroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 272
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 273
    new-instance v8, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;

    invoke-direct {v8, p0, v2, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$ApplyPreviewWallpaper;->run()V

    .line 270
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v8

    new-instance v9, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;

    invoke-direct {v9, p0, p1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 296
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "index":I
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 108
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onFinishInflate()V

    .line 110
    iput v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mCurrentPage:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    .line 112
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getLockOverlayResId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, p0, v3, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;-><init>(Landroid/content/Context;Landroid/support/v4/view/ViewPager;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0200cb

    invoke-direct {v1, v2, p0, v3, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;-><init>(Landroid/content/Context;Landroid/support/v4/view/ViewPager;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mAdapter:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;

    .line 116
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mHelper:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->getWallpaperPreviewPageMarginPx()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setPageMargin(I)V

    .line 117
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setOverScrollMode(I)V

    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mAdapter:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 119
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setCurrentItem(I)V

    .line 120
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 122
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mHelper:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->getWallpaperPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setPivotX(F)V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setPivotY(F)V

    .line 124
    return-void
.end method

.method public saveWallpaperToCache()V
    .locals 4

    .prologue
    .line 299
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 300
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mModel:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->addWallpaperToCache(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected selectPage(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 231
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mSelectingPage:Z

    if-eqz v3, :cond_0

    .line 260
    :goto_0
    return-void

    .line 235
    :cond_0
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mCurrentPage:I

    .line 236
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mSelectingPage:Z

    .line 237
    if-eqz p2, :cond_1

    .line 238
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 239
    .local v0, "va":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v5, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$3;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$4;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$4;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 257
    .end local v0    # "va":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mAdapter:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mCurrentPage:I

    if-ne v4, v5, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->changeSelection(F)V

    .line 258
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mSelectingPage:Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 257
    goto :goto_1

    .line 238
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected setMaskColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mModel:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->setMaskColor(I)V

    .line 202
    return-void
.end method

.method public setPreviewCover(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "cover"    # Landroid/graphics/drawable/Drawable;
    .param p2, "index"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setOverlayCover(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected setPreviewItemBackground(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 178
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$2;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$2;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;ILandroid/graphics/drawable/Drawable;)V

    .line 184
    .local v0, "setBackgroundRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method protected setPreviewTitles(Landroid/view/View;)V
    .locals 2
    .param p1, "titles"    # Landroid/view/View;

    .prologue
    .line 153
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mPreviewTitles:Landroid/view/View;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mTitles:Ljava/util/List;

    .line 155
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mPreviewTitles:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mTitles:Ljava/util/List;

    const v1, 0x7f1101ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mTitles:Ljava/util/List;

    const v1, 0x7f1101ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    return-void
.end method

.method protected setSlideOffset(F)V
    .locals 8
    .param p1, "slideOffset"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 206
    const v5, 0x3e178d50    # 0.148f

    mul-float/2addr v5, p1

    sub-float v2, v4, v5

    .line 207
    .local v2, "scale":F
    invoke-direct {p0, p0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setScale(Landroid/view/View;F)V

    .line 210
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    .line 211
    .local v1, "item":Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;
    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v6, p1

    sub-float v2, v4, v6

    .line 212
    invoke-direct {p0, v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setScale(Landroid/view/View;F)V

    goto :goto_0

    .line 216
    .end local v1    # "item":Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mPreviewTitles:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 217
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mPreviewTitles:Landroid/view/View;

    iget v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mPreviewTitlesTranslationY:F

    mul-float/2addr v6, p1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 218
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mTitles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 219
    .local v3, "title":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f1101ed

    if-ne v6, v7, :cond_1

    move v0, v4

    .line 220
    .local v0, "direction":F
    :goto_2
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->mPreviewTitlesTranslationX:F

    mul-float/2addr v6, v0

    mul-float/2addr v6, p1

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 219
    .end local v0    # "direction":F
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_2

    .line 223
    .end local v3    # "title":Landroid/view/View;
    :cond_2
    return-void
.end method

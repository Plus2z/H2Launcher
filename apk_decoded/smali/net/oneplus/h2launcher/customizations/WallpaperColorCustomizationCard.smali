.class public Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
.source "WallpaperColorCustomizationCard.java"

# interfaces
.implements Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    }
.end annotation


# static fields
.field private static final COLORS_PER_GROUP:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlurBox:Landroid/view/ViewGroup;

.field private mBlurSwitch:Landroid/widget/Switch;

.field private mBlurWallpaperSettings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

.field private mChangeColors:Landroid/view/View;

.field private mColorCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/ColorCircleView;",
            ">;"
        }
    .end annotation
.end field

.field private mOnColorCircleClickListener:Landroid/view/View$OnClickListener;

.field private mPreviewItemChangeListener:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;

.field private mSelectedCircle:Lnet/oneplus/h2launcher/customizations/ColorCircleView;

.field private mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

.field private mSelectedTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

.field private mWallpaperColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

.field private mWallpaperSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mColorCircles:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    .line 39
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mOnColorCircleClickListener:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$2;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mPreviewItemChangeListener:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;

    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mContent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setupContentView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->reloadCustomizationSettings()V

    .line 80
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mPreviewItemChangeListener:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/ColorCircleView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedCircle:Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;I)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getGroupForIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;I)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getGroupStartIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;IZ)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->updateColorCirclesForIndex(IZ)V

    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getWallpaperCard()Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Lnet/oneplus/h2launcher/customizations/ColorCircleView;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->selectColorCircle(Lnet/oneplus/h2launcher/customizations/ColorCircleView;)V

    return-void
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .param p1, "x1"    # [Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setComponentsEnabled([Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V

    return-void
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;I)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->updateColorCirclesForIndex(I)V

    return-void
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurWallpaperSettings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    return-object v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->updateBlurSwitch(Z)V

    return-void
.end method

.method private getGroupForIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 339
    div-int/lit8 v0, p1, 0x5

    return v0
.end method

.method private getGroupStartIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 335
    mul-int/lit8 v0, p1, 0x5

    return v0
.end method

.method private getWallpaperCard()Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getPager()Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getWallpaperCard()Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v0

    return-object v0
.end method

.method private loadWallpaperColors(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .param p2, "onLoaded"    # Ljava/lang/Runnable;

    .prologue
    .line 271
    if-nez p1, :cond_1

    .line 272
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->TAG:Ljava/lang/String;

    const-string v1, "invalid wallpaper tile info"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz p2, :cond_0

    .line 274
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;

    invoke-direct {v1, p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$8;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private selectColorCircle(Lnet/oneplus/h2launcher/customizations/ColorCircleView;)V
    .locals 3
    .param p1, "circle"    # Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    .prologue
    .line 343
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedCircle:Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedCircle:Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->setSelected(Z)V

    .line 346
    :cond_0
    if-eqz p1, :cond_1

    .line 347
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedCircle:Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    .line 348
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedCircle:Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->setSelected(Z)V

    .line 349
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedCircle:Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    .line 350
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getIndex()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedCircle:Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    .line 351
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;-><init>(II)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    .line 354
    :cond_1
    return-void
.end method

.method private setComponentsEnabled(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V
    .locals 2
    .param p1, "component"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    .param p2, "enabled"    # Z

    .prologue
    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setComponentsEnabled([Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V

    .line 221
    return-void
.end method

.method private setComponentsEnabled([Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V
    .locals 7
    .param p1, "components"    # [Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    .param p2, "enabled"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e851eb8    # 0.26f

    .line 224
    array-length v5, p1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, p1, v4

    .line 225
    .local v0, "component":Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    sget-object v1, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$9;->$SwitchMap$net$oneplus$h2launcher$customizations$WallpaperColorCustomizationCard$Component:[I

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 224
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mChangeColors:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 228
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mChangeColors:Landroid/view/View;

    if-eqz p2, :cond_0

    move v1, v2

    :goto_2
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_2

    .line 231
    :pswitch_1
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setEnabled(Z)V

    .line 232
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mCard:Landroid/view/View;

    if-eqz p2, :cond_1

    move v1, v2

    :goto_3
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_3

    .line 235
    :pswitch_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setClickable(Z)V

    .line 236
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurBox:Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 237
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurBox:Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    move v1, v2

    :goto_4
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_4

    .line 241
    .end local v0    # "component":Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    :cond_3
    return-void

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupContentView(Landroid/view/View;)V
    .locals 6
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 175
    const v4, 0x7f1100d9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurBox:Landroid/view/ViewGroup;

    .line 176
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurBox:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurBox:Landroid/view/ViewGroup;

    new-instance v5, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$6;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$6;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurBox:Landroid/view/ViewGroup;

    const v5, 0x7f1100db

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurSwitch:Landroid/widget/Switch;

    .line 189
    :cond_0
    const v4, 0x7f1100dc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 190
    .local v1, "colorBox":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 192
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 193
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    if-eqz v4, :cond_1

    .line 195
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mOnColorCircleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mColorCircles:Ljava/util/List;

    check-cast v0, Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    const v4, 0x7f1100dd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mChangeColors:Landroid/view/View;

    .line 202
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mChangeColors:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 203
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mChangeColors:Landroid/view/View;

    new-instance v5, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_3
    return-void
.end method

.method private updateBlurSwitch(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 291
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->BLUR_SWITCH:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    invoke-direct {p0, v0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setComponentsEnabled(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V

    .line 292
    return-void
.end method

.method private updateColorCirclesForIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->updateColorCirclesForIndex(IZ)V

    .line 296
    return-void
.end method

.method private updateColorCirclesForIndex(IZ)V
    .locals 16
    .param p1, "index"    # I
    .param p2, "selectCircleOfIndex"    # Z

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    if-nez v11, :cond_1

    .line 300
    sget-object v11, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->TAG:Ljava/lang/String;

    const-string v12, "invalid wallpaper swatches"

    invoke-static {v11, v12}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getGroupForIndex(I)I

    move-result v5

    .line 305
    .local v5, "group":I
    mul-int/lit8 v8, v5, 0x5

    .line 306
    .local v8, "start":I
    add-int/lit8 v11, v8, 0x5

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 308
    .local v4, "end":I
    if-le v8, v4, :cond_2

    .line 309
    sget-object v11, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->TAG:Ljava/lang/String;

    const-string v12, "illegal color index, size:%d [start:%d end:%d]"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    .line 314
    invoke-interface {v11, v8, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 316
    .local v10, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x5

    if-le v11, v12, :cond_7

    const/4 v3, 0x1

    .line 317
    .local v3, "enableChangeColor":Z
    :goto_2
    sget-object v11, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->CHANGE_COLOR_BUTTON:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setComponentsEnabled(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V

    .line 318
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mColorCircles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 319
    add-int v1, v8, v6

    .line 320
    .local v1, "circleIndex":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_8

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/graphics/Palette$Swatch;

    move-object v9, v11

    .line 321
    .local v9, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mColorCircles:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    .line 322
    .local v2, "colorCircleView":Lnet/oneplus/h2launcher/customizations/ColorCircleView;
    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->setIndex(I)V

    .line 323
    invoke-virtual {v2, v9}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->setSwatch(Landroid/support/v7/graphics/Palette$Swatch;)V

    .line 324
    if-eqz v9, :cond_9

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v2, v11}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->setClickable(Z)V

    .line 325
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->setSelected(Z)V

    .line 326
    move/from16 v0, p1

    if-ne v1, v0, :cond_3

    if-nez p2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    iget v11, v11, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    if-ne v11, v1, :cond_a

    :cond_4
    const/4 v7, 0x1

    .line 328
    .local v7, "select":Z
    :goto_6
    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->selectColorCircle(Lnet/oneplus/h2launcher/customizations/ColorCircleView;)V

    .line 318
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 315
    .end local v1    # "circleIndex":I
    .end local v2    # "colorCircleView":Lnet/oneplus/h2launcher/customizations/ColorCircleView;
    .end local v3    # "enableChangeColor":Z
    .end local v6    # "i":I
    .end local v7    # "select":Z
    .end local v9    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    .end local v10    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    goto :goto_1

    .line 316
    .restart local v10    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 320
    .restart local v1    # "circleIndex":I
    .restart local v3    # "enableChangeColor":Z
    .restart local v6    # "i":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 324
    .restart local v2    # "colorCircleView":Lnet/oneplus/h2launcher/customizations/ColorCircleView;
    .restart local v9    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 326
    :cond_a
    const/4 v7, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getBlurWallpaperSettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurWallpaperSettings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    .line 167
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurWallpaperSettings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    iget v1, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    iput v1, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 169
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurWallpaperSettings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 171
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurWallpaperSettings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    return-object v0
.end method

.method protected getBottommostViewInScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f1100dd

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    .locals 4

    .prologue
    .line 145
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getBlurWallpaperSettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v2

    iget-boolean v2, v2, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->setBlurEnabled(Z)V

    .line 149
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    :cond_1
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    .line 153
    :cond_2
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    iget v1, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    iget v2, v2, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    iget-boolean v3, v3, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->blurEnabled:Z

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;-><init>(IIZ)V

    .line 155
    .local v0, "color":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$5;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->TAG:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$5;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;Ljava/lang/String;Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;)V

    goto :goto_0
.end method

.method protected getScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f1100dd

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 264
    invoke-super/range {p0 .. p5}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onLayout(ZIIII)V

    .line 265
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getCardContainer()Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    move-result-object v1

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getSlideOffset()F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->slideTo(F)V

    .line 268
    :cond_0
    return-void
.end method

.method public onWallpaperColorsChanged(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/util/List;)V
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 254
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 255
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    .line 256
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->updateColorCirclesForIndex(I)V

    .line 257
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->updateBlurSwitch(Z)V

    .line 258
    new-array v0, v1, [Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    sget-object v3, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->CARD:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    aput-object v3, v0, v2

    .line 259
    .local v0, "components":[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setComponentsEnabled([Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V

    .line 260
    return-void

    :cond_0
    move v1, v2

    .line 259
    goto :goto_0
.end method

.method protected reloadCustomizationSettings()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 101
    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedCircle:Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    .line 102
    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    .line 103
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 104
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperColor(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    .line 105
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurWallpaperSettings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    .line 108
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    if-eqz v3, :cond_1

    .line 109
    new-instance v2, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$3;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$3;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V

    .line 116
    .local v2, "onLoaded":Ljava/lang/Runnable;
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mSelectedTileInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    invoke-direct {p0, v3, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->loadWallpaperColors(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Ljava/lang/Runnable;)V

    .line 117
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperColor:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    iget v1, v3, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->rgb:I

    .line 119
    .local v1, "maskColor":I
    :goto_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setMaskColor(I)V

    .line 129
    .end local v1    # "maskColor":I
    .end local v2    # "onLoaded":Ljava/lang/Runnable;
    :goto_1
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v3

    new-instance v4, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$4;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 141
    return-void

    .line 117
    .restart local v2    # "onLoaded":Ljava/lang/Runnable;
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurWallpaperSettings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    iget v1, v3, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    goto :goto_0

    .line 121
    .end local v2    # "onLoaded":Ljava/lang/Runnable;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mWallpaperSwatches:Ljava/util/List;

    .line 122
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->updateColorCirclesForIndex(I)V

    .line 123
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->mBlurWallpaperSettings:Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    iget v4, v4, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setMaskColor(I)V

    .line 124
    const/4 v3, 0x1

    new-array v0, v3, [Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    sget-object v3, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->CARD:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    aput-object v3, v0, v5

    .line 125
    .local v0, "components":[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    invoke-direct {p0, v0, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setComponentsEnabled([Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;Z)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 245
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 246
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setEnabled(Z)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setEnabled(Z)V

    goto :goto_0
.end method

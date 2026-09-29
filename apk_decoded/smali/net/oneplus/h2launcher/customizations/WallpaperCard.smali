.class public Lnet/oneplus/h2launcher/customizations/WallpaperCard;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
.source "WallpaperCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;,
        Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;,
        Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;,
        Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;
    }
.end annotation


# static fields
.field public static final ACTION_BLUR_WALLPAPER_SETTINGS_CHANGED:Ljava/lang/String; = "net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field public static final FLOW_LAYOUT_NUM_COLUMNS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColorOverlay:I

.field private mFilter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

.field private mHomeScreenOrientation:I

.field private mLoadUriWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;

.field private mLoadingProgressDialog:Landroid/app/ProgressDialog;

.field private mOnOrientationButtonClickListener:Landroid/view/View$OnClickListener;

.field private mOrientationBox:Landroid/view/View;

.field private mOrientationLand:Lnet/oneplus/h2launcher/customizations/OptionButton;

.field private mOrientationPort:Lnet/oneplus/h2launcher/customizations/OptionButton;

.field private mPreferenceTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

.field private mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

.field private mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

.field private mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

.field private mWallpaperColorsListener:Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;

.field private mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
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
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-array v1, v5, [Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 85
    new-array v1, v5, [Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mPreferenceTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 89
    iput v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mColorOverlay:I

    .line 90
    iput v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    .line 95
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    .line 107
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$2;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOnOrientationButtonClickListener:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$3;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mFilter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

    .line 158
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e035c

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mColorOverlay:I

    .line 159
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mContent:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->setupContentView(Landroid/view/View;)V

    .line 160
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->reloadCustomizationSettings()V

    .line 162
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$4;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 202
    .local v0, "previewItemChangeListener":Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Landroid/view/View;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->onClickTile(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V

    return-void
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->saveSecondaryWallpaperTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V

    return-void
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->saveWallpaperToCache()V

    return-void
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .param p2, "x2"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->logAnalytics(Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->addTemporaryWallpaperTile(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperColorsListener:Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;

    return-object v0
.end method

.method static synthetic access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 78
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->autoSelectLockWallpaperIfCleared(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V

    return-void
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    return v0
.end method

.method static synthetic access$302(Lnet/oneplus/h2launcher/customizations/WallpaperCard;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    return p1
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->updateOrientationBox()V

    return-void
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mFilter:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$WallpaperTileInfoFilter;

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 78
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->notifyBlurWallpaperSettingChanged()V

    return-void
.end method

.method private addTemporaryWallpaperTile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "uriWallpaperInfos":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;>;"
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/util/List;Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLoadUriWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;

    .line 674
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLoadUriWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;

    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->getNormalPriorityExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 675
    return-void
.end method

.method private autoSelectLockWallpaperIfCleared(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 8
    .param p1, "homeInfo"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    const/4 v7, 0x0

    .line 597
    if-eqz p1, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aget-object v4, v4, v7

    if-nez v4, :cond_0

    .line 598
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 599
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-static {v3}, Lcom/oneplus/sdk/wrapper/android/app/OpWallpaperManager;->getKeyguardBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    .line 600
    sget-object v4, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v5, "lock screen wallpaper is empty"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 603
    .local v2, "orientation":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    .line 604
    invoke-virtual {v4, v1, v7}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->findWallpaperTileInfo(Ljava/lang/String;I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v0

    .line 605
    .local v0, "lockInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-eqz v0, :cond_1

    .line 606
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0, v7}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->onClickTile(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V

    .line 612
    .end local v0    # "lockInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "orientation":I
    .end local v3    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 608
    .restart local v0    # "lockInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "orientation":I
    .restart local v3    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_1
    sget-object v4, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v5, "unable to find lock screen tile for current tile: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private cancelLoadUriWallpaperTask()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLoadUriWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isTaskUnfinished(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLoadUriWallpaperTask:Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->cancel(Z)Z

    .line 404
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 407
    :cond_1
    return-void
.end method

.method public static getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/util/Size;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 208
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    const v6, 0x7f0c00e0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 209
    .local v5, "spacing":I
    const v6, 0x7f0c0037

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 210
    .local v1, "cardPadding":I
    const v6, 0x7f0c0032

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 212
    .local v0, "cardContentPadding":I
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    mul-int/lit8 v7, v0, 0x2

    sub-int/2addr v6, v7

    mul-int/lit8 v7, v5, 0x2

    sub-int v2, v6, v7

    .line 214
    .local v2, "contentWidth":I
    div-int/lit8 v4, v2, 0x3

    .line 215
    .local v4, "size":I
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v4}, Landroid/util/Size;-><init>(II)V

    return-object v6
.end method

.method private logAnalytics(Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)V
    .locals 11
    .param p1, "settings"    # Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .param p2, "homeScreenTileInfo"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    const/4 v9, 0x1

    .line 414
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v7, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    if-ne v7, v9, :cond_3

    const-string v5, "0"

    .line 418
    .local v5, "wallpaperMode":Ljava/lang/String;
    :goto_0
    const-string v7, "wallpaper_mode"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    if-eqz p2, :cond_0

    .line 422
    const/4 v6, 0x0

    .line 423
    .local v6, "wallpaperType":Ljava/lang/String;
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getType()Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v2

    .line 424
    .local v2, "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    sget-object v7, Lnet/oneplus/h2launcher/customizations/WallpaperCard$7;->$SwitchMap$net$oneplus$h2launcher$customizations$wallpaper$tileInfo$WallpaperTileInfo$Type:[I

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 433
    sget-object v7, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v8, "unknown wallpaper type: %s"

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 437
    const-string v7, "wallpaper_type"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .end local v2    # "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    .end local v6    # "wallpaperType":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 443
    iget-boolean v7, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    if-eqz v7, :cond_4

    const-string v3, "TRUE"

    .line 444
    .local v3, "wallpaperBlur":Ljava/lang/String;
    :goto_2
    const-string v7, "wallpaper_blur"

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .end local v3    # "wallpaperBlur":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperColor(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    move-result-object v4

    .line 449
    .local v4, "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    if-eqz v4, :cond_2

    .line 450
    iget v7, v4, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    if-nez v7, :cond_5

    const-string v0, "0"

    .line 451
    .local v0, "color":Ljava/lang/String;
    :goto_3
    const-string v7, "wallpaper_color"

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .end local v0    # "color":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v7

    const-string v8, "launcher.options.h2"

    invoke-virtual {v7, v8, v1}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/util/Map;)V

    .line 455
    return-void

    .line 417
    .end local v4    # "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    .end local v5    # "wallpaperMode":Ljava/lang/String;
    :cond_3
    const-string v5, "1"

    goto :goto_0

    .line 426
    .restart local v2    # "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    .restart local v5    # "wallpaperMode":Ljava/lang/String;
    .restart local v6    # "wallpaperType":Ljava/lang/String;
    :pswitch_0
    const-string v6, "0"

    .line 427
    goto :goto_1

    .line 429
    :pswitch_1
    const-string v6, "1"

    .line 430
    goto :goto_1

    .line 443
    .end local v2    # "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    .end local v6    # "wallpaperType":Ljava/lang/String;
    :cond_4
    const-string v3, "FALSE"

    goto :goto_2

    .line 450
    .restart local v4    # "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    :cond_5
    const-string v0, "1"

    goto :goto_3

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyBlurWallpaperSettingChanged()V
    .locals 3

    .prologue
    .line 410
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    return-void
.end method

.method private onClickTile(Landroid/view/View;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V
    .locals 5
    .param p1, "tile"    # Landroid/view/View;
    .param p2, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .param p3, "screen"    # I

    .prologue
    const/4 v2, 0x1

    .line 570
    if-nez p2, :cond_0

    .line 571
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v1, "empty wallpaper tile info"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aget-object v0, v0, p3

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v1, "same wallpaper tile selected for screen: %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    invoke-virtual {p0, p3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->clearSelectedTile(I)V

    .line 582
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->selectTile(Landroid/view/View;)V

    .line 583
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aput-object p2, v0, p3

    .line 586
    :cond_2
    invoke-direct {p0, p3, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->shouldApplyColorMaskInPreview(ILnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p3, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$ApplyPreviewWithColorMask;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;ILnet/oneplus/h2launcher/customizations/WallpaperCard$1;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->post(Ljava/lang/Runnable;)V

    .line 592
    :goto_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->updateOrientationBox()V

    goto :goto_0

    .line 589
    :cond_3
    invoke-virtual {p2, p0, p3, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V

    goto :goto_1
.end method

.method private saveSecondaryWallpaperTile(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;I)V
    .locals 0
    .param p1, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .param p2, "screen"    # I

    .prologue
    return-void
.end method

.method private saveWallpaperToCache()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->saveWallpaperToCache()V

    .line 508
    return-void
.end method

.method private selectTile(Landroid/view/View;)V
    .locals 3
    .param p1, "tile"    # Landroid/view/View;

    .prologue
    .line 615
    if-nez p1, :cond_1

    .line 616
    sget-object v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v2, "invalid wallpaper tile"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const v1, 0x7f110130

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/Selection;

    .line 621
    .local v0, "selection":Lnet/oneplus/h2launcher/customizations/Selection;
    if-eqz v0, :cond_0

    .line 622
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(Z)V

    goto :goto_0
.end method

.method private setupContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 245
    const v0, 0x7f1100d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    .line 246
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->setWallpaperCard(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V

    .line 250
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    const v0, 0x7f1100d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationBox:Landroid/view/View;

    .line 252
    const v0, 0x7f1100d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/OptionButton;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationPort:Lnet/oneplus/h2launcher/customizations/OptionButton;

    .line 253
    const v0, 0x7f1100d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/OptionButton;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationLand:Lnet/oneplus/h2launcher/customizations/OptionButton;

    .line 254
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationBox:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationBox:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationPort:Lnet/oneplus/h2launcher/customizations/OptionButton;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationPort:Lnet/oneplus/h2launcher/customizations/OptionButton;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOnOrientationButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationLand:Lnet/oneplus/h2launcher/customizations/OptionButton;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationLand:Lnet/oneplus/h2launcher/customizations/OptionButton;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOnOrientationButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_3
    return-void
.end method

.method private shouldApplyColorMaskInPreview(ILnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)Z
    .locals 2
    .param p1, "currentPage"    # I
    .param p2, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .prologue
    const/4 v0, 0x1

    .line 511
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->drawWallpaperColorMask()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 512
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateOrientationBox()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 296
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationBox:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v0

    .line 298
    .local v0, "currentPage":I
    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 300
    .local v1, "enabled":Z
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationLand:Lnet/oneplus/h2launcher/customizations/OptionButton;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setClickable(Z)V

    .line 301
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationPort:Lnet/oneplus/h2launcher/customizations/OptionButton;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setClickable(Z)V

    .line 302
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationBox:Landroid/view/View;

    if-eqz v1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 303
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->updateOrientationButtons()V

    .line 305
    .end local v0    # "currentPage":I
    .end local v1    # "enabled":Z
    :cond_0
    return-void

    .line 298
    .restart local v0    # "currentPage":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 302
    .restart local v1    # "enabled":Z
    :cond_2
    const v2, 0x3e851eb8    # 0.26f

    goto :goto_1
.end method

.method private updateOrientationButtons()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 308
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationPort:Lnet/oneplus/h2launcher/customizations/OptionButton;

    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setSelected(Z)V

    .line 309
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mOrientationLand:Lnet/oneplus/h2launcher/customizations/OptionButton;

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setSelected(Z)V

    .line 310
    return-void

    :cond_0
    move v0, v2

    .line 308
    goto :goto_0

    :cond_1
    move v1, v2

    .line 309
    goto :goto_1
.end method


# virtual methods
.method protected clearSelectedTile(I)V
    .locals 4
    .param p1, "currentPage"    # I

    .prologue
    .line 638
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aget-object v0, v3, p1

    .line 639
    .local v0, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->findWallpaperTileView(Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;)Landroid/view/View;

    move-result-object v1

    .line 640
    .local v1, "selectedTile":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 641
    const v3, 0x7f110130

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/customizations/Selection;

    .line 642
    .local v2, "selection":Lnet/oneplus/h2launcher/customizations/Selection;
    if-eqz v2, :cond_0

    .line 643
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(Z)V

    .line 646
    .end local v2    # "selection":Lnet/oneplus/h2launcher/customizations/Selection;
    :cond_0
    return-void
.end method

.method protected getBottommostViewInScrollableView()Landroid/view/View;
    .locals 3

    .prologue
    .line 656
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 657
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 659
    .end local v0    # "childCount":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getBottommostViewInScrollableView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getColorOverlay()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mColorOverlay:I

    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 241
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getHomeScreenOrientation()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    return v0
.end method

.method public getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOnThumbnailClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    .locals 19

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->cancelLoadUriWallpaperTask()V

    .line 316
    const/4 v14, 0x0

    .local v14, "lock":I
    const/4 v11, 0x1

    .line 317
    .local v11, "home":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    const/4 v2, 0x0

    aget-object v7, v1, v2

    .line 318
    .local v7, "lockScreenTileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    const/4 v2, 0x1

    aget-object v8, v1, v2

    .line 319
    .local v8, "homeScreenTileInfo":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mPreferenceTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 320
    invoke-virtual {v7, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v6, 0x1

    .line 321
    .local v6, "isLockScreenWallpaperChanged":Z
    :goto_0
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mPreferenceTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 322
    invoke-virtual {v8, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v9, 0x1

    .line 324
    .local v9, "isHomeScreenWallpaperChanged":Z
    :goto_1
    sget-object v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v2, "isLockScreenWallpaperChanged=%b, isHomeScreenWallpaperChanged=%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v17, 0x0

    .line 325
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v3, v17

    const/16 v17, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v3, v17

    .line 324
    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v13

    .line 329
    .local v13, "last":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    const/4 v15, 0x0

    .line 330
    .local v15, "temp":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    move v12, v9

    .line 332
    .local v12, "isBlurWallpaperSettingsChanged":Z
    if-eqz v12, :cond_0

    .line 333
    move-object v15, v13

    .line 334
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->emptySettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v1

    iget v1, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    iput v1, v15, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    .line 335
    const/4 v1, 0x0

    iput-boolean v1, v15, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    .line 352
    :cond_0
    :goto_2
    sget-object v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v2, "isBlurWallpaperSettingsChanged=%b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v3, v17

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    if-nez v9, :cond_7

    if-nez v12, :cond_7

    if-nez v6, :cond_7

    .line 357
    const/4 v1, 0x0

    .line 363
    .end local v12    # "isBlurWallpaperSettingsChanged":Z
    :goto_3
    return-object v1

    .line 320
    .end local v6    # "isLockScreenWallpaperChanged":Z
    .end local v9    # "isHomeScreenWallpaperChanged":Z
    .end local v13    # "last":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .end local v15    # "temp":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 322
    .restart local v6    # "isLockScreenWallpaperChanged":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 338
    .restart local v9    # "isHomeScreenWallpaperChanged":Z
    .restart local v13    # "last":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    .restart local v15    # "temp":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getPager()Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    move-result-object v16

    .line 339
    .local v16, "wallpaperPager":Lnet/oneplus/h2launcher/customizations/WallpaperPager;
    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getWallpaperColorCard()Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    move-result-object v10

    .line 340
    .local v10, "colorCard":Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    if-nez v10, :cond_4

    .line 341
    sget-object v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v2, "cannot get wallpaper color card"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v1, 0x0

    goto :goto_3

    .line 345
    :cond_4
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->getBlurWallpaperSettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v15

    move-object/from16 v0, p0

    iget v1, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    iput v1, v15, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 346
    invoke-virtual {v13, v15}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->theSameAs(Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v12, 0x1

    .line 347
    .restart local v12    # "isBlurWallpaperSettingsChanged":Z
    :goto_4
    if-eqz v12, :cond_0

    .line 348
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->emptySettings()Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v1

    iget v1, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    iput v1, v15, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->scrollMode:I

    .line 349
    if-nez v9, :cond_6

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v15, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    goto :goto_2

    .line 346
    .end local v12    # "isBlurWallpaperSettingsChanged":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 349
    .restart local v12    # "isBlurWallpaperSettingsChanged":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 360
    .end local v10    # "colorCard":Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .end local v16    # "wallpaperPager":Lnet/oneplus/h2launcher/customizations/WallpaperPager;
    :cond_7
    move-object v5, v15

    .line 361
    .local v5, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    if-nez v9, :cond_8

    if-eqz v12, :cond_9

    :cond_8
    const/4 v4, 0x1

    .line 363
    .local v4, "screen":I
    :goto_6
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;

    sget-object v3, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$5;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/lang/String;ILnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;ZLnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Z)V

    goto :goto_3

    .line 361
    .end local v4    # "screen":I
    :cond_9
    const/4 v4, 0x0

    goto :goto_6
.end method

.method protected getScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    return-object v0
.end method

.method public getSelectedTile()Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getSelectedTile(I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectedTile(I)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 631
    if-ltz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 632
    :cond_0
    const/4 v0, 0x0

    .line 634
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v0

    return-object v0
.end method

.method protected isMemoryTrimmed()Z
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->isMemoryTrimmed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWallpaper(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V
    .locals 2
    .param p1, "wallpaperPreview"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 536
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v1, "loadWallpaper"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .line 538
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->clearPreviewItemBackground()V

    .line 541
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->loadWallpaper(Landroid/content/Context;)V

    .line 543
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 682
    if-nez p3, :cond_0

    .line 683
    sget-object v7, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v8, "invalid data"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :goto_0
    return-void

    .line 687
    :cond_0
    const/4 v9, -0x1

    if-eq p2, v9, :cond_1

    .line 688
    sget-object v9, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v10, "invalid result code: %d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v9, v10, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 693
    :cond_1
    const/high16 v1, -0x80000000

    .line 694
    .local v1, "maskColor":I
    const/4 v2, 0x0

    .line 695
    .local v2, "orientation":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v6, "uriWallpaperInfos":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;>;"
    const/16 v9, 0xa

    if-eq p1, v9, :cond_2

    const/16 v9, 0x19

    if-ne p1, v9, :cond_4

    .line 698
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 699
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 700
    .local v4, "uri":Landroid/net/Uri;
    new-instance v7, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    invoke-direct {v7, v4, v4, v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_1
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;

    invoke-direct {v0, p0, v6}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/util/List;)V

    .line 735
    .local v0, "addWallpaperTileRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v7

    invoke-virtual {v7, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 702
    .end local v0    # "addWallpaperTileRunnable":Ljava/lang/Runnable;
    :cond_4
    const/16 v9, 0xf

    if-eq p1, v9, :cond_5

    const/16 v9, 0x10

    if-ne p1, v9, :cond_3

    .line 704
    :cond_5
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getInput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    .line 705
    .local v3, "srcUri":Landroid/net/Uri;
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v4

    .line 706
    .restart local v4    # "uri":Landroid/net/Uri;
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputMaskColor(Landroid/content/Intent;)I

    move-result v1

    .line 707
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputCropAspectRatio(Landroid/content/Intent;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    move v2, v7

    .line 710
    :goto_2
    new-instance v9, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    invoke-direct {v9, v3, v4, v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputSecondary(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v5

    .line 713
    .local v5, "uri2":Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 714
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputMaskColorSecondary(Landroid/content/Intent;)I

    move-result v1

    .line 715
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputCropAspectRatioSecondary(Landroid/content/Intent;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    move v2, v7

    .line 718
    :goto_3
    new-instance v7, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    invoke-direct {v7, v3, v5, v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v5    # "uri2":Landroid/net/Uri;
    :cond_6
    move v2, v8

    .line 707
    goto :goto_2

    .restart local v5    # "uri2":Landroid/net/Uri;
    :cond_7
    move v2, v8

    .line 715
    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 220
    invoke-super/range {p0 .. p5}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onLayout(ZIIII)V

    .line 221
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getCardContainer()Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    move-result-object v1

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getSlideOffset()F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->slideTo(F)V

    .line 224
    :cond_0
    return-void
.end method

.method protected onLeftCustomization()V
    .locals 2

    .prologue
    .line 664
    invoke-super {p0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onLeftCustomization()V

    .line 666
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v1, "onLeftCustomization"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->purgeCropFiles(Landroid/content/Context;)V

    .line 670
    return-void
.end method

.method public onReadExternalStoragePermissionGranted()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 533
    :cond_0
    return-void
.end method

.method public performLoadThumbnails()V
    .locals 4

    .prologue
    .line 520
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 521
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    .line 523
    .local v0, "launcher":Lnet/oneplus/h2launcher/Launcher;
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v3, 0xc8

    invoke-static {v0, v2, v3}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 526
    .end local v0    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->loadWallpaperThumbnails()V

    .line 527
    return-void
.end method

.method protected reloadCustomizationSettings()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 268
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    .line 272
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 273
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->clearSelectedTile(I)V

    .line 274
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "screen":I
    :cond_0
    move v2, v3

    .line 268
    goto :goto_0

    .line 277
    .restart local v1    # "screen":I
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 278
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 279
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mPreferenceTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    if-nez v1, :cond_3

    .line 280
    invoke-static {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getLockWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v2

    .line 281
    :goto_3
    aput-object v2, v4, v1

    .line 282
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mPreferenceTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 283
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mSelectedTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mPreferenceTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 284
    if-ne v1, v3, :cond_2

    .line 285
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mPreferenceTiles:[Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getOrientation()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mHomeScreenOrientation:I

    .line 278
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 281
    :cond_3
    invoke-static {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWallpaperTile(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    move-result-object v2

    goto :goto_3

    .line 290
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 291
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->updateOrientationBox()V

    .line 293
    :cond_5
    return-void
.end method

.method public setWallpaper(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "screen"    # I
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "wallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    .line 555
    invoke-static {p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 556
    invoke-static {p2, p3}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->cacheImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 559
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 560
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v1, p1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setPreviewItemBackground(ILandroid/graphics/drawable/Drawable;)V

    .line 562
    const/4 v1, 0x1

    invoke-static {p3, v1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->updateWallpaperBackground(Landroid/graphics/Bitmap;Z)V

    .line 563
    return-void
.end method

.method public setWallpaperColorsListener(Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;

    .prologue
    .line 516
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperColorsListener:Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;

    .line 517
    return-void
.end method

.method public setWallpaperPreview(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V
    .locals 0
    .param p1, "wallpaperPreview"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 550
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .line 551
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 679
    return-void
.end method

.method protected trimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 459
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v1, "[Trim Memory] wallpaperCard, level:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    .line 463
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->trimPartialData()V

    .line 465
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->clearPreviewItemBackground()V

    .line 469
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->clear()V

    .line 471
    :cond_1
    return-void
.end method

.method protected trimPartialData()V
    .locals 2

    .prologue
    .line 474
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->TAG:Ljava/lang/String;

    const-string v1, "[Trim Memory] trimPartialData"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mRecyclerView:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->trimWallpaperTileData()V

    .line 482
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->trimPreviewData()V

    .line 485
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mWallpaperPreview:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->clearPreviewItemBackground()V

    .line 488
    :cond_1
    return-void
.end method

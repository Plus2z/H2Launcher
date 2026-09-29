.class public Lnet/oneplus/h2launcher/SwitchLayoutFragment;
.super Landroid/support/v4/app/Fragment;
.source "SwitchLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;,
        Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;
    }
.end annotation


# static fields
.field public static final SHOW_SWITCHING_VIEW:Ljava/lang/String; = "show_switching_view"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLayoutStyle:I

.field private mLayoutTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewDefaultResource:[I

.field private mPreviewFocusResource:[I

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    const-class v0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->TAG:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mView:Landroid/view/View;

    .line 48
    iput-object v1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutStyle:I

    .line 53
    iput-object v1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    .line 54
    iput-object v1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutTypes:Ljava/util/ArrayList;

    .line 57
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mPreviewDefaultResource:[I

    .line 58
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mPreviewFocusResource:[I

    return-void

    .line 57
    :array_0
    .array-data 4
        0x7f0201bd
        0x7f0201bb
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x7f0201be
        0x7f0201bc
    .end array-data
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 43
    iget v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutStyle:I

    return v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/SwitchLayoutFragment;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutStyle:I

    return p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Lnet/oneplus/h2launcher/customizations/WallpaperBackground;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/SwitchLayoutFragment;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getDefaultWallpaper(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)[I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mPreviewFocusResource:[I

    return-object v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)[I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mPreviewDefaultResource:[I

    return-object v0
.end method

.method private getDefaultWallpaper(Z)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "isStandard"    # Z

    .prologue
    .line 323
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 324
    .local v12, "resources":Landroid/content/res/Resources;
    if-nez v12, :cond_0

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[getDefaultWallpaper] resources is null"

    invoke-static/range {v18 .. v19}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/16 v18, 0x0

    .line 363
    :goto_0
    return-object v18

    .line 329
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v19

    if-eqz p1, :cond_1

    const-string v18, "default_standard_wallpaper"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v17

    .line 331
    .local v17, "wallpaperResId":I
    if-nez v17, :cond_2

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[getDefaultWallpaper] can\'t find resource id for default wallpaper"

    invoke-static/range {v18 .. v19}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v18, 0x0

    goto :goto_0

    .line 329
    .end local v17    # "wallpaperResId":I
    :cond_1
    const-string v18, "default_simplified_wallpaper"

    goto :goto_1

    .line 337
    .restart local v17    # "wallpaperResId":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 338
    .local v4, "activity":Landroid/app/Activity;
    if-nez v4, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[getDefaultWallpaper] activity is null"

    invoke-static/range {v18 .. v19}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v18, 0x0

    goto :goto_0

    .line 343
    :cond_3
    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    .line 344
    .local v15, "theme":Landroid/content/res/Resources$Theme;
    if-eqz p1, :cond_4

    .line 345
    move/from16 v0, v17

    invoke-virtual {v12, v0, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    goto :goto_0

    .line 348
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v18

    const-string v19, "default_wallpaper_color"

    invoke-virtual/range {v18 .. v19}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v7

    .line 350
    .local v7, "defaultMaskColorResId":I
    invoke-virtual {v12, v7, v15}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 351
    .local v6, "defaultMaskColor":I
    const v18, 0x7f0c013e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 352
    .local v16, "w":I
    const v18, 0x7f0c013c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 353
    .local v9, "h":I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 354
    .local v14, "temp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 355
    .local v5, "canvas":Landroid/graphics/Canvas;
    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 356
    .local v10, "landscape":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 357
    .local v13, "srcRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    sget v21, Lnet/oneplus/h2launcher/crop/view/CropImageView;->LANDSCAPE_IMAGE_ASPECT_RATIO:F

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    move/from16 v3, v20

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    .local v8, "destRect":Landroid/graphics/Rect;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v10, v13, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 360
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v4, v14, v6, v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->paintWallpaperColorMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 363
    .local v11, "masked":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 64
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 65
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getTableType()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutStyle:I

    .line 68
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutTypes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutTypes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 75
    const v4, 0x7f040060

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mView:Landroid/view/View;

    .line 76
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mView:Landroid/view/View;

    const v5, 0x7f110127

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    iput-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mWallpaperBackground:Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    .line 77
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->updateWallpaperBackground()V

    .line 79
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mView:Landroid/view/View;

    const v5, 0x7f110128

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 80
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;-><init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 81
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;

    invoke-direct {v5, p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;-><init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 82
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPager;->setClipToPadding(Z)V

    .line 83
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c013a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 84
    .local v1, "pageMargin":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 85
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOverScrollMode(I)V

    .line 87
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mView:Landroid/view/View;

    const v5, 0x7f11001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 88
    .local v0, "backButton":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 89
    new-instance v4, Lnet/oneplus/h2launcher/SwitchLayoutFragment$1;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment$1;-><init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mView:Landroid/view/View;

    const v5, 0x7f11007b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    .local v3, "title":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 99
    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 102
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mView:Landroid/view/View;

    const v5, 0x7f1100de

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    .local v2, "saveButton":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 104
    new-instance v4, Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;-><init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mView:Landroid/view/View;

    return-object v4
.end method

.method protected saveSwitchLayoutSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 157
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->TAG:Ljava/lang/String;

    const-string v7, "saveSwitchLayoutSettings"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 160
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "launcher.layout_style"

    iget v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutStyle:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    iget v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutStyle:I

    sput v6, Lnet/oneplus/h2launcher/oos/StyleManager;->sLayoutStyle:I

    .line 166
    iget v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutStyle:I

    invoke-static {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->saveLayoutStyle(I)V

    .line 167
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherSettings;->reloadTable()V

    .line 169
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v5

    .line 170
    .local v5, "provider":Lnet/oneplus/h2launcher/LauncherProvider;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherProvider;->reloadOpenDatabaseHelper()V

    .line 172
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v3

    .line 173
    .local v3, "launcher":Lnet/oneplus/h2launcher/Launcher;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Lnet/oneplus/h2launcher/LauncherModel;->resetLoadedState(ZZ)V

    .line 175
    const-string v6, "show_switching_view"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    iget v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->mLayoutStyle:I

    if-nez v6, :cond_1

    const-string v4, "O"

    .line 180
    .local v4, "layoutStyle":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v6

    const-string v7, "launcher.options"

    const-string v8, "layout_switch"

    invoke-virtual {v6, v7, v8, v4}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    instance-of v6, v3, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 184
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->TAG:Ljava/lang/String;

    const-string v7, "reCreate launcher"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->recreate()V

    .line 188
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "intentHome":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const v6, 0x8000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    const-string v6, "net.oneplus.h2launcher"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->startActivity(Landroid/content/Intent;)V

    .line 195
    .end local v2    # "intentHome":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 196
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 201
    :goto_1
    return-void

    .line 179
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v4    # "layoutStyle":Ljava/lang/String;
    :cond_1
    const-string v4, "H"

    goto :goto_0

    .line 199
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v4    # "layoutStyle":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->TAG:Ljava/lang/String;

    const-string v7, "[saveSwitchLayoutSettings] activity is null. Should not be here."

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected updateWallpaperBackground()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;-><init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V

    .line 153
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

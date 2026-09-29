.class public abstract Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
.super Ljava/lang/Object;
.source "WallpaperTileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    }
.end annotation


# static fields
.field private static final KEY_MASK_COLOR:Ljava/lang/String; = "mask_color"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final KEY_OVERLAY_WALLPAPER:Ljava/lang/String; = "overlay_wallpaper"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final TAG:Ljava/lang/String;

.field public static final WALLPAPER_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final WALLPAPER_ORIENTATION_PORTRAIT:I = 0x0

.field public static final WALLPAPER_ORIENTATION_UNKNOWN:I = -0x1


# instance fields
.field public mHomeScreenOrientation:I

.field public mIsLive:Z

.field public mIsThirdParty:Z

.field public mMaskColor:I

.field public mName:Ljava/lang/String;

.field public mOrientation:I

.field public mOverlayWallpaper:Ljava/lang/String;

.field private mShouldPerformClickOnBound:Z

.field private mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field public mThumb:Landroid/graphics/drawable/Drawable;

.field protected mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

.field protected mView:Landroid/view/View;

.field protected mWallpaper:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->UNDEFINED:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    .line 49
    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mMaskColor:I

    .line 50
    iput v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOrientation:I

    .line 51
    iput v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mHomeScreenOrientation:I

    .line 53
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mShouldPerformClickOnBound:Z

    return-void
.end method

.method private addMaskColor()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 237
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    if-eqz v3, :cond_0

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mMaskColor:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const/4 v1, -0x1

    .line 242
    .local v1, "similarColorIndex":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 243
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/graphics/Palette$Swatch;

    .line 244
    .local v2, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v3

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mMaskColor:I

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/ColorUtils;->isColorDifferencePerceptible(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 245
    move v1, v0

    .line 242
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    .end local v2    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_3
    if-gez v1, :cond_4

    .line 249
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    new-instance v4, Landroid/support/v7/graphics/Palette$Swatch;

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mMaskColor:I

    invoke-direct {v4, v5, v6}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v3, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 251
    :cond_4
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static deserialize(Landroid/content/Context;Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tileValue"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v12, "tile":Lorg/json/JSONObject;
    const-string v15, "type"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->fromString(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    move-result-object v13

    .line 65
    .local v13, "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    const-string v15, "name"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "name":Ljava/lang/String;
    const-string v15, "wallpaper"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 67
    .local v14, "wallpaper":Ljava/lang/String;
    const-string v15, "mask_color"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 68
    .local v5, "maskColor":I
    const-string v15, "orientation"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 69
    .local v7, "orientation":I
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->correctLauncherPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "correctedWallpaper":Ljava/lang/String;
    sget-object v15, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->RESOURCE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v15, v13}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 72
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v2, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 73
    .local v11, "resId":I
    if-nez v11, :cond_1

    .line 74
    sget-object v15, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->TAG:Ljava/lang/String;

    const-string v16, "failed to find resId for res name: %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    invoke-static/range {v15 .. v17}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const/4 v4, 0x0

    .line 89
    .end local v2    # "correctedWallpaper":Ljava/lang/String;
    .end local v5    # "maskColor":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "orientation":I
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "resId":I
    .end local v12    # "tile":Lorg/json/JSONObject;
    .end local v13    # "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    .end local v14    # "wallpaper":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 59
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Lorg/json/JSONException;
    sget-object v15, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cannot create wallpaper tile info from JSON, error="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v4, 0x0

    goto :goto_0

    .line 77
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v2    # "correctedWallpaper":Ljava/lang/String;
    .restart local v5    # "maskColor":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "orientation":I
    .restart local v10    # "res":Landroid/content/res/Resources;
    .restart local v11    # "resId":I
    .restart local v12    # "tile":Lorg/json/JSONObject;
    .restart local v13    # "type":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    .restart local v14    # "wallpaper":Ljava/lang/String;
    :cond_1
    new-instance v4, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;

    invoke-direct {v4, v10, v6, v11, v7}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;-><init>(Landroid/content/res/Resources;Ljava/lang/String;II)V

    .line 78
    .local v4, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
    const-string v15, "overlay_wallpaper"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, "overlayWallpaper":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 80
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->correctLauncherPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "correctedOverlayWallpaper":Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v1, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 83
    .local v8, "overlayResId":I
    invoke-virtual {v4, v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;->setOverlayResId(I)V

    goto :goto_0

    .line 86
    .end local v1    # "correctedOverlayWallpaper":Ljava/lang/String;
    .end local v4    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/ResourceWallpaperInfo;
    .end local v8    # "overlayResId":I
    .end local v9    # "overlayWallpaper":Ljava/lang/String;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "resId":I
    :cond_2
    sget-object v15, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->FILE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v15, v13}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 87
    new-instance v4, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v15, v5, v7, v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/FileWallpaperInfo;-><init>(Ljava/io/File;IILjava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    instance-of v3, p1, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    if-nez v3, :cond_1

    move v1, v2

    .line 282
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    if-eq p1, p0, :cond_0

    move-object v0, p1

    .line 279
    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 280
    .local v0, "rhs":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iget-object v4, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    iget-object v4, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getMaskColor()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mMaskColor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOrientation:I

    return v0
.end method

.method public getPreviewCacheKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "screen"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    return-object v0
.end method

.method public getWallpaper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    return-object v0
.end method

.method protected getWallpaperBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 257
    const/4 v0, 0x7

    .line 258
    .local v0, "hash":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0xd9

    .line 259
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 260
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOverlayWallpaper:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 261
    return v0

    .line 258
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->hashCode()I

    move-result v1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 260
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOverlayWallpaper:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 148
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mIsLive:Z

    return v0
.end method

.method public isNamelessWallpaper()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isThirdParty()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mIsThirdParty:Z

    return v0
.end method

.method public loadSwatches(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    if-nez v3, :cond_2

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    .line 210
    sget-object v3, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->RESOURCE:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mName:Ljava/lang/String;

    invoke-static {p1, v3}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->loadWallpaperPredefinedColors(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "predefinedColors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v0, :cond_0

    .line 213
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    .end local v0    # "predefinedColors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->getWallpaperBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 219
    .local v2, "wallpaper":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->loadWallpaperSwatches(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v1

    .line 220
    .local v1, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v1, :cond_1

    .line 221
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->addMaskColor()V

    .line 229
    .end local v1    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    .end local v2    # "wallpaper":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mSwatches:Ljava/util/List;

    return-object v3
.end method

.method public onBeforeSave(I)V
    .locals 0
    .param p1, "homeScreenOrientation"    # I

    .prologue
    .line 100
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mHomeScreenOrientation:I

    iput p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOrientation:I

    .line 101
    return-void
.end method

.method public onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V
    .locals 0
    .param p1, "card"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "screen"    # I
    .param p3, "changed"    # Z

    .prologue
    .line 97
    return-void
.end method

.method public onDelete(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)V
    .locals 0
    .param p1, "card"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 107
    return-void
.end method

.method public onIndexUpdated(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 118
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->isNamelessWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onSave(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # I

    .prologue
    .line 104
    return-void
.end method

.method public serialize()Ljava/lang/String;
    .locals 5

    .prologue
    .line 182
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "type"

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v2, "name"

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v2, "wallpaper"

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v2, "overlay_wallpaper"

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOverlayWallpaper:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v2, "mask_color"

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mMaskColor:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v2, "orientation"

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create wallpaper tile info JSON, error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShouldPerformClickOnBound(Z)V
    .locals 0
    .param p1, "shouldPerformClickOnBound"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mShouldPerformClickOnBound:Z

    .line 171
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mView:Landroid/view/View;

    .line 94
    return-void
.end method

.method public shouldPerformClickOnBound()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mShouldPerformClickOnBound:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 266
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "type=%s, wallpaper=%s, overlayWallpaper=%s, orientation=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mWallpaper:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOverlayWallpaper:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mOrientation:I

    .line 267
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 266
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

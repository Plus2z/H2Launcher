.class public Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;
.super Landroid/app/Activity;
.source "SetWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCropCoverResId()I
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getDeviceTag()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 161
    const v0, 0x7f0200af

    :goto_1
    return v0

    .line 157
    :pswitch_0
    const-string v2, "17801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :pswitch_1
    const v0, 0x7f0200b0

    goto :goto_1

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x2cc5853
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private launchCropActivity(Landroid/net/Uri;)V
    .locals 16
    .param p1, "source"    # Landroid/net/Uri;

    .prologue
    .line 114
    const/4 v11, 0x0

    .line 116
    .local v11, "output2":Ljava/io/File;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 117
    .local v5, "directory":Ljava/io/File;
    const-string v14, "crop_"

    const/4 v15, 0x0

    invoke-static {v14, v15, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    .line 118
    .local v10, "output":Ljava/io/File;
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 119
    const-string v14, "crop_"

    const/4 v15, 0x0

    invoke-static {v14, v15, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    .line 120
    sget-object v14, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 128
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lnet/oneplus/h2launcher/crop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lnet/oneplus/h2launcher/crop/UCrop;

    move-result-object v12

    .line 130
    .local v12, "uCrop":Lnet/oneplus/h2launcher/crop/UCrop;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 131
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v14

    iget v9, v14, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 132
    .local v9, "orientation":I
    if-nez v9, :cond_3

    .line 133
    sget v14, Lnet/oneplus/h2launcher/crop/view/CropImageView;->PORTRAIT_IMAGE_ASPECT_RATIO:F

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14, v15}, Lnet/oneplus/h2launcher/crop/UCrop;->withAspectRatio(FF)Lnet/oneplus/h2launcher/crop/UCrop;

    .line 139
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c002a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 140
    .local v13, "w":I
    int-to-float v14, v13

    const/4 v15, 0x1

    invoke-static {v2, v15}, Lnet/oneplus/h2launcher/Utilities;->getScreenAspectRatio(Landroid/content/Context;Z)F

    move-result v15

    div-float/2addr v14, v15

    float-to-int v7, v14

    .line 141
    .local v7, "h":I
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->getCropCoverResId()I

    move-result v4

    .line 142
    .local v4, "cropCoverResId":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    invoke-static {v1, v13, v7, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 144
    .local v3, "cropCover":Landroid/graphics/Bitmap;
    if-eq v3, v1, :cond_1

    .line 145
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    :cond_1
    new-instance v8, Lnet/oneplus/h2launcher/crop/UCrop$Options;

    invoke-direct {v8}, Lnet/oneplus/h2launcher/crop/UCrop$Options;-><init>()V

    .line 149
    .local v8, "options":Lnet/oneplus/h2launcher/crop/UCrop$Options;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lnet/oneplus/h2launcher/crop/UCrop$Options;->setShowCropGrid(Z)V

    .line 150
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v14

    invoke-virtual {v8, v14}, Lnet/oneplus/h2launcher/crop/UCrop$Options;->setShowCropCoverColorMask(Z)V

    .line 151
    invoke-virtual {v8, v3}, Lnet/oneplus/h2launcher/crop/UCrop$Options;->setCropCoverImage(Landroid/graphics/Bitmap;)V

    .line 152
    invoke-virtual {v12, v8}, Lnet/oneplus/h2launcher/crop/UCrop;->withOptions(Lnet/oneplus/h2launcher/crop/UCrop$Options;)Lnet/oneplus/h2launcher/crop/UCrop;

    .line 153
    const/16 v14, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v14}, Lnet/oneplus/h2launcher/crop/UCrop;->start(Landroid/app/Activity;I)V

    .line 154
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "cropCover":Landroid/graphics/Bitmap;
    .end local v4    # "cropCoverResId":I
    .end local v5    # "directory":Ljava/io/File;
    .end local v7    # "h":I
    .end local v8    # "options":Lnet/oneplus/h2launcher/crop/UCrop$Options;
    .end local v9    # "orientation":I
    .end local v10    # "output":Ljava/io/File;
    .end local v12    # "uCrop":Lnet/oneplus/h2launcher/crop/UCrop;
    .end local v13    # "w":I
    :goto_2
    return-void

    .line 122
    :catch_0
    move-exception v6

    .line 123
    .local v6, "e":Ljava/io/IOException;
    sget-object v14, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v15, "failed to create temp crop file(s)"

    invoke-static {v14, v15}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 129
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "directory":Ljava/io/File;
    .restart local v10    # "output":Ljava/io/File;
    :cond_2
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lnet/oneplus/h2launcher/crop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lnet/oneplus/h2launcher/crop/UCrop;

    move-result-object v12

    goto :goto_0

    .line 135
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v9    # "orientation":I
    .restart local v12    # "uCrop":Lnet/oneplus/h2launcher/crop/UCrop;
    :cond_3
    sget v14, Lnet/oneplus/h2launcher/crop/view/CropImageView;->LANDSCAPE_IMAGE_ASPECT_RATIO:F

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14, v15}, Lnet/oneplus/h2launcher/crop/UCrop;->withAspectRatio(FF)Lnet/oneplus/h2launcher/crop/UCrop;

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->purgeCropFiles(Landroid/content/Context;)V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 71
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    if-nez p3, :cond_0

    .line 78
    sget-object v6, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v7, "invalid data"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->finish()V

    .line 110
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v8, -0x1

    if-eq p2, v8, :cond_1

    .line 84
    sget-object v8, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v9, "invalid result code: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v8, v9, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->finish()V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "outputUriInfos":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;>;"
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getInput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    .line 92
    .local v3, "srcUri":Landroid/net/Uri;
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v4

    .line 93
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputMaskColor(Landroid/content/Intent;)I

    move-result v0

    .line 94
    .local v0, "maskColor":I
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputCropAspectRatio(Landroid/content/Intent;)F

    move-result v8

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    move v1, v6

    .line 97
    .local v1, "orientation":I
    :goto_1
    new-instance v8, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    invoke-direct {v8, v3, v4, v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputSecondary(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v5

    .line 100
    .local v5, "uri2":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 101
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputMaskColorSecondary(Landroid/content/Intent;)I

    move-result v0

    .line 102
    invoke-static {p3}, Lnet/oneplus/h2launcher/crop/UCrop;->getOutputCropAspectRatioSecondary(Landroid/content/Intent;)F

    move-result v8

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    move v1, v6

    .line 105
    :goto_2
    new-instance v8, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    invoke-direct {v8, v3, v5, v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    new-instance v8, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;

    invoke-direct {v8, p0, p0, v2, v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;Landroid/content/Context;Ljava/util/List;I)V

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v8, v6}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .end local v1    # "orientation":I
    .end local v5    # "uri2":Landroid/net/Uri;
    :cond_3
    move v1, v7

    .line 94
    goto :goto_1

    .restart local v1    # "orientation":I
    .restart local v5    # "uri2":Landroid/net/Uri;
    :cond_4
    move v1, v7

    .line 102
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a02a9

    :goto_0
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->setTheme(I)V

    .line 45
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->finish()V

    .line 65
    :cond_0
    :goto_1
    return-void

    .line 41
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const v2, 0x7f0a02a8

    goto :goto_0

    .line 54
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    if-nez p1, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, "source":Landroid/net/Uri;
    if-nez v1, :cond_3

    .line 57
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v3, "source uri is empty"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->finish()V

    goto :goto_1

    .line 62
    :cond_3
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v3, "source uri=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->launchCropActivity(Landroid/net/Uri;)V

    goto :goto_1
.end method

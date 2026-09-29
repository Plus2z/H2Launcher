.class public Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;
.super Landroid/app/Activity;
.source "SetLockscreenWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$WallpaperLoader;,
        Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;,
        Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;
    }
.end annotation


# static fields
.field private static final FILE_PROVIDER_AHTHORITY:Ljava/lang/String; = "net.oneplus.fileprovider"

.field private static final REQUEST_CROP_WALLPAPER:I = 0x0

.field private static final STATE_IMAGE_URI:Ljava/lang/String; = "imageUri"

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_WALLPAPER_DIR:Ljava/lang/String; = "temp"

.field private static final TEMP_WALLPAPER_FILE:Ljava/lang/String; = "temp_wp.jpg"


# instance fields
.field private mSaveFileTask:Landroid/os/AsyncTask;

.field private mTempUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 58
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getTempFile()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->deleteTempFile()V

    return-void
.end method

.method private decodeAndSaveFile()V
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 162
    .local v0, "fileUri":Landroid/net/Uri;
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;

    invoke-direct {v1, p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;Landroid/net/Uri;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mSaveFileTask:Landroid/os/AsyncTask;

    .line 163
    return-void
.end method

.method private deleteTempFile()V
    .locals 6

    .prologue
    .line 190
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 191
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v2, "failed to delete temp file"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v2, "temp file[%s] deleted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getTempFile()Landroid/net/Uri;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "temp"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v5, "created temp wallpaper file dir successfully"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "temp_wp.jpg"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    const-string v4, "net.oneplus.fileprovider"

    invoke-static {p0, v4, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    .local v0, "contentUri":Landroid/net/Uri;
    sget-object v5, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v6, "contentUri=%s"

    new-array v7, v9, [Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string v4, "null"

    :goto_1
    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-object v0

    .line 178
    .end local v0    # "contentUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v5, "failed to create temp file: %s, error: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 180
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 179
    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "contentUri":Landroid/net/Uri;
    :cond_2
    move-object v4, v0

    .line 185
    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    if-nez p1, :cond_3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 105
    if-eqz p3, :cond_0

    .line 106
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    .line 108
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v3, "[onActivityResult] mTempUri=%s"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 111
    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v2, "cropped wallpaper does not exist"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const v1, 0x7f0b003c

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 114
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->deleteTempFile()V

    .line 115
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->finish()V

    .line 125
    .end local v0    # "msg":Ljava/lang/String;
    :goto_1
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    goto :goto_0

    .line 119
    :cond_2
    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$TempFileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 122
    :cond_3
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->deleteTempFile()V

    .line 123
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->finish()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->finish()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-eqz p1, :cond_2

    .line 78
    const-string v2, "imageUri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "imageUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    goto :goto_0

    .line 83
    .end local v0    # "imageUri":Ljava/lang/String;
    :cond_2
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 84
    .local v1, "permission":Ljava/lang/String;
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 85
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0xca

    invoke-static {p0, v2, v3}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->decodeAndSaveFile()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 148
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mSaveFileTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isTaskUnfinished(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mSaveFileTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 151
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->deleteTempFile()V

    .line 152
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 143
    :cond_0
    return-void

    .line 132
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 133
    aget-object v1, p2, v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    aget v1, p3, v0

    if-nez v1, :cond_2

    .line 135
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->decodeAndSaveFile()V

    .line 132
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->finish()V

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "imageUri"

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->mTempUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.class Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;
.super Landroid/os/AsyncTask;
.source "SetWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveUriWallpapers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingProgressDialog:Landroid/app/ProgressDialog;

.field private mScreen:I

.field private mUriWallpaperInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p3, "infos":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 172
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid uri wallpaper infos"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->cancel(Z)Z

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 177
    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mUriWallpaperInfos:Ljava/util/List;

    .line 178
    iput p4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mScreen:I

    .line 179
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 203
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 204
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "invalid context"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 236
    :goto_0
    return-object v7

    .line 209
    :cond_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mUriWallpaperInfos:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    .line 210
    .local v3, "primary":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    invoke-static {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getBlurWallpaperSettings(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;

    move-result-object v5

    .line 211
    .local v5, "settings":Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;
    iput-boolean v10, v5, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->notify:Z

    .line 212
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 213
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getMaskColor()I

    move-result v7

    iput v7, v5, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->maskColor:I

    .line 214
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getOrientation()I

    move-result v7

    iput v7, v5, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 216
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "settings=%s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v5, v9, v10

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-static {v0, v5}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setBlurWallpaperSettings(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;)V

    .line 223
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperImageCache;->clear()V

    .line 225
    iget v1, v5, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->orientation:I

    .line 226
    .local v1, "homeScreenOrientation":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "serialNumber":Ljava/lang/String;
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mUriWallpaperInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    .line 228
    .local v2, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->updateMetaData(Ljava/lang/String;)V

    .line 229
    iget v8, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mScreen:I

    invoke-virtual {v2, v0, v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->loadImage(Landroid/content/Context;I)V

    .line 230
    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->onBeforeSave(I)V

    .line 231
    iget v8, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mScreen:I

    invoke-virtual {v2, v0, v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->onSave(Landroid/content/Context;I)V

    goto :goto_1

    .line 234
    .end local v2    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    :cond_2
    new-instance v6, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getMaskColor()I

    move-result v7

    iget-boolean v8, v5, Lnet/oneplus/h2launcher/customizations/wallpaper/BlurWallpaperSettings;->blurEnabled:Z

    invoke-direct {v6, v10, v7, v8}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;-><init>(IIZ)V

    .line 235
    .local v6, "wallpaperColor":Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;
    invoke-static {v0, v6}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setWallpaperColor(Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;)V

    .line 236
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 255
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->finish()V

    .line 256
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 241
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers$1;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 248
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 251
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 187
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 188
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 189
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid context"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->cancel(Z)Z

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 195
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0b00b0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 197
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 198
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

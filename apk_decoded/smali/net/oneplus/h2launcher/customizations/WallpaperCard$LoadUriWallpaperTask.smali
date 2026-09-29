.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;
.super Landroid/os/AsyncTask;
.source "WallpaperCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadUriWallpaperTask"
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

.field private mScreen:I

.field private mSerialNumber:Ljava/lang/String;

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

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/util/List;)V
    .locals 2
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
    .line 784
    .local p2, "uriWallpaperInfos":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 785
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid uri wallpaper infos"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_1
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mUriWallpaperInfos:Ljava/util/List;

    .line 789
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mSerialNumber:Ljava/lang/String;

    .line 791
    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/util/List;Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard$1;

    .prologue
    .line 778
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 814
    const/4 v0, 0x1

    .line 815
    .local v0, "allUriInfoLoaded":Z
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 816
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 817
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mUriWallpaperInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    .line 818
    .local v2, "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->updateMetaData(Ljava/lang/String;)V

    .line 819
    iget v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mScreen:I

    invoke-virtual {v2, v1, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->loadImage(Landroid/content/Context;I)V

    .line 820
    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->loadSwatches(Landroid/content/Context;)Ljava/util/List;

    .line 821
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 822
    :goto_1
    goto :goto_0

    .line 821
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 824
    .end local v2    # "info":Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 778
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "allUriInfoLoaded"    # Ljava/lang/Boolean;

    .prologue
    .line 829
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mUriWallpaperInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/UriWallpaperInfo;->setShouldPerformClickOnBound(Z)V

    .line 831
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$600(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$600(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->getPickWallpaperTilesCount()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mUriWallpaperInfos:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;->addWallpaperTiles(ILjava/util/List;)V

    .line 833
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 835
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1902(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 837
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 778
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->mScreen:I

    .line 796
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 800
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    iget-object v2, v2, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1902(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 801
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 803
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 809
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1900(Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 810
    return-void
.end method

.class Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;
.super Landroid/os/AsyncTask;
.source "WallpapersContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveWallpaperTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_DIALOG_SHOW_DURATION_MS:J = 0x3e8L

.field private static final SAVE_WALLPAPER_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private final mDialogMessage:Ljava/lang/String;

.field private mDialogPopupTime:J

.field private mForceStopSaveWallpaper:Ljava/lang/Runnable;

.field private mSaveProgressDialog:Landroid/app/ProgressDialog;

.field private mScreen:I

.field private final mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpapersViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .param p1    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wallpapersView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p3, "tasks":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 454
    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mForceStopSaveWallpaper:Ljava/lang/Runnable;

    .line 466
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mWallpapersViewReference:Ljava/lang/ref/WeakReference;

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mTasks:Ljava/util/List;

    .line 468
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mTasks:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 469
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mDialogMessage:Ljava/lang/String;

    .line 470
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;

    .line 471
    .local v0, "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    instance-of v2, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;

    if-eqz v2, :cond_0

    .line 472
    check-cast v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;

    .end local v0    # "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;->getScreen()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mScreen:I

    goto :goto_0

    .line 478
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mForceStopSaveWallpaper:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    return-void
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;I)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;
    .param p1, "x1"    # I

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->onWallpaperSaved(I)V

    return-void
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    .prologue
    .line 445
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mScreen:I

    return v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;

    .prologue
    .line 445
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->hideProgress()V

    return-void
.end method

.method private computeProgressDialogRemainingShowDuration()J
    .locals 9

    .prologue
    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mDialogPopupTime:J

    sub-long v0, v4, v6

    .line 560
    .local v0, "dialogShowDuration":J
    const-wide/16 v4, 0x3e8

    sub-long v2, v4, v0

    .line 561
    .local v2, "remainingDuration":J
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "remaining duration=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    return-wide v2
.end method

.method private hideProgress()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 515
    :cond_0
    return-void
.end method

.method private onWallpaperSaved(I)V
    .locals 9
    .param p1, "screen"    # I

    .prologue
    .line 518
    iget v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mScreen:I

    if-eq v4, p1, :cond_0

    .line 519
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onWallpaperSaved: mScreen=%d, screen=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mScreen:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mWallpapersViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 525
    .local v3, "wallpapersView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 526
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mForceStopSaveWallpaper:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 527
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "force stop save wallpaper runnable removed"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_1
    new-instance v2, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask$2;-><init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;)V

    .line 546
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_3

    .line 547
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->computeProgressDialogRemainingShowDuration()J

    move-result-wide v0

    .line 548
    .local v0, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 549
    invoke-virtual {v3, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 554
    .end local v0    # "duration":J
    :cond_3
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wallpapers view is null"

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showProgress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 498
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mWallpapersViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 499
    .local v1, "wallpapersView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 500
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannot get context from wallpapers view"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_0
    return-void

    .line 504
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    .line 505
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 507
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 508
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 445
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 490
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;

    .line 491
    .local v0, "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;->run()V

    goto :goto_0

    .line 493
    .end local v0    # "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 483
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->hideProgress()V

    .line 484
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->showProgress()V

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$SaveWallpaperTask;->mDialogPopupTime:J

    .line 486
    return-void
.end method

.class public Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;
.super Landroid/os/AsyncTask;
.source "WidgetPreviewLoader.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Landroid/os/CancellationSignal$OnCancelListener;"
    }
.end annotation


# instance fields
.field mBitmapToRecycle:Landroid/graphics/Bitmap;

.field private final mCaller:Lnet/oneplus/h2launcher/widget/WidgetCell;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mInfo:Lnet/oneplus/h2launcher/model/WidgetItem;

.field final mKey:Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field mVersions:[J

.field final synthetic this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader;Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;Lnet/oneplus/h2launcher/model/WidgetItem;IILnet/oneplus/h2launcher/widget/WidgetCell;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader;
    .param p2, "key"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;
    .param p3, "info"    # Lnet/oneplus/h2launcher/model/WidgetItem;
    .param p4, "previewWidth"    # I
    .param p5, "previewHeight"    # I
    .param p6, "caller"    # Lnet/oneplus/h2launcher/widget/WidgetCell;

    .prologue
    .line 576
    iput-object p1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 577
    iput-object p2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

    .line 578
    iput-object p3, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lnet/oneplus/h2launcher/model/WidgetItem;

    .line 579
    iput p5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    .line 580
    iput p4, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    .line 581
    iput-object p6, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lnet/oneplus/h2launcher/widget/WidgetCell;

    .line 586
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 590
    const/4 v3, 0x0

    .line 593
    .local v3, "unusedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 632
    :goto_0
    return-object v4

    .line 596
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v5, v5, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v5

    .line 598
    :try_start_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v6, v6, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 599
    .local v0, "candidate":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 600
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    if-ne v7, v8, :cond_1

    .line 601
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v8, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    if-ne v7, v8, :cond_1

    .line 602
    move-object v3, v0

    .line 603
    iget-object v6, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v6, v6, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 607
    .end local v0    # "candidate":Landroid/graphics/Bitmap;
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    if-nez v3, :cond_3

    .line 611
    iget v5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v6, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 614
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v4, v3

    .line 615
    goto :goto_0

    .line 607
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 617
    :cond_4
    iget-object v5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v6, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

    invoke-virtual {v5, v6, v3, p0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->readFromDb(Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 618
    .local v2, "preview":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v5, v5, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    iput-object v5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mComponentName:Landroid/content/ComponentName;

    .line 621
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_7

    if-nez v2, :cond_7

    .line 625
    iget-object v5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget-object v5, v5, Lnet/oneplus/h2launcher/model/WidgetItem;->activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget-object v5, v5, Lnet/oneplus/h2launcher/model/WidgetItem;->activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    .line 626
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->isPersistable()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_5
    const/4 v1, 0x1

    .line 627
    .local v1, "persistable":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v4, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v5, v5, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v4

    :cond_6
    iput-object v4, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    .line 630
    iget-object v4, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v5, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget v6, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v7, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    invoke-virtual {v4, v5, v3, v6, v7}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->generatePreview(Lnet/oneplus/h2launcher/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v1    # "persistable":Z
    :cond_7
    move-object v4, v2

    .line 632
    goto/16 :goto_0

    .line 626
    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 564
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 684
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->cancel(Z)Z

    .line 691
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$3;-><init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 702
    :cond_0
    return-void
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 670
    if-eqz p1, :cond_0

    .line 671
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$2;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$2;-><init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 564
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 637
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lnet/oneplus/h2launcher/widget/WidgetCell;

    iget-object v1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V

    .line 640
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;-><init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 564
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.class Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

.field final synthetic val$preview:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    .prologue
    .line 641
    iput-object p1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 644
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v2, v2, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    iget-object v3, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->writeToDb(Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V

    .line 648
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    .line 656
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v1, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v1

    .line 653
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    iget-object v2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 654
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

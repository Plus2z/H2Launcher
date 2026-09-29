.class Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$3;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    .prologue
    .line 692
    iput-object p1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v1, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v1

    .line 696
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    iget-object v2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v2, v2, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 697
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    .line 699
    return-void

    .line 697
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

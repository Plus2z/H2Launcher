.class public Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewLoadRequest"
.end annotation


# instance fields
.field final mTask:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

.field final synthetic this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader;Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader;
    .param p2, "task"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    .prologue
    .line 536
    iput-object p1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    .line 538
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->cancel(Z)Z

    .line 550
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest$1;-><init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    :cond_1
    return-void
.end method

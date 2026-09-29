.class Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;
.super Ljava/lang/Object;
.source "TransformImageView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/crop/view/TransformImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/crop/view/TransformImageView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/crop/view/TransformImageView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/crop/view/TransformImageView;

    .prologue
    .line 138
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/TransformImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/TransformImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->access$002(Lnet/oneplus/h2launcher/crop/view/TransformImageView;Z)Z

    .line 142
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/TransformImageView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/TransformImageView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;->onBitmapLoadComplete(Landroid/graphics/Bitmap;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/TransformImageView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/TransformImageView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->invalidate()V

    .line 147
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "bitmapWorkerException"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    const-string v0, "TransformImageView"

    const-string v1, "onFailure: setImageUri"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/TransformImageView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/TransformImageView$1;->this$0:Lnet/oneplus/h2launcher/crop/view/TransformImageView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/crop/view/TransformImageView;->mTransformImageListener:Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;->onLoadFailure(Ljava/lang/Exception;)V

    .line 155
    :cond_0
    return-void
.end method

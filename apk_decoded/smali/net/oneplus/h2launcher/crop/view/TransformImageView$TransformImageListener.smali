.class public interface abstract Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;
.super Ljava/lang/Object;
.source "TransformImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/crop/view/TransformImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransformImageListener"
.end annotation


# virtual methods
.method public abstract onBitmapLoadComplete(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onLoadComplete()V
.end method

.method public abstract onLoadFailure(Ljava/lang/Exception;)V
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRotate(F)V
.end method

.method public abstract onScale(F)V
.end method

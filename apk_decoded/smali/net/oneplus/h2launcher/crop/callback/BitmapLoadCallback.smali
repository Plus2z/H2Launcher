.class public interface abstract Lnet/oneplus/h2launcher/crop/callback/BitmapLoadCallback;
.super Ljava/lang/Object;
.source "BitmapLoadCallback.java"


# virtual methods
.method public abstract onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onFailure(Ljava/lang/Exception;)V
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

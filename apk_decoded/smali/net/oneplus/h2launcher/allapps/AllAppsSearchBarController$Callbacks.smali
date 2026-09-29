.class public interface abstract Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;
.super Ljava/lang/Object;
.source "AllAppsSearchBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract clearSearchResult()V
.end method

.method public abstract onBoundsChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation
.end method

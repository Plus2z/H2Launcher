.class public interface abstract Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
.super Ljava/lang/Object;
.source "IDynamicShortcut.java"


# virtual methods
.method public abstract createShortcutView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Lnet/oneplus/h2launcher/BubbleTextView;
.end method

.method public abstract getCurrentData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStaticDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;
.end method

.method public abstract initFlags()V
.end method

.method public abstract isRunningAnimation()Z
.end method

.method public abstract needInvalidate()Z
.end method

.method public abstract needRegisterDataProvider()Z
.end method

.method public abstract onAnimationEnd()V
.end method

.method public abstract onAnimationStart()V
.end method

.method public abstract onDataChanged()V
.end method

.method public abstract refreshConfig()V
.end method

.method public abstract registerDataProvider()V
.end method

.method public abstract requestData()Z
.end method

.method public abstract unregisterDataProvider()V
.end method

.method public abstract updateIconCache()V
.end method

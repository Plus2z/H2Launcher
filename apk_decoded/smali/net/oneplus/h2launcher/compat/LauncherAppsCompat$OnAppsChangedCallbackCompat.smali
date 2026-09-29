.class public interface abstract Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
.super Ljava/lang/Object;
.source "LauncherAppsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAppsChangedCallbackCompat"
.end annotation


# virtual methods
.method public abstract onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end method

.method public abstract onPackageChanged(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end method

.method public abstract onPackageRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end method

.method public abstract onPackagesAvailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
.end method

.method public abstract onPackagesSuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end method

.method public abstract onPackagesUnavailable([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V
.end method

.method public abstract onPackagesUnsuspended([Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end method

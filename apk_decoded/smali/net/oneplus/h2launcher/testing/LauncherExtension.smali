.class public Lnet/oneplus/h2launcher/testing/LauncherExtension;
.super Lnet/oneplus/h2launcher/Launcher;
.source "LauncherExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/testing/LauncherExtension$LauncherExtensionCallbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    new-instance v0, Lnet/oneplus/h2launcher/testing/LauncherExtension$LauncherExtensionCallbacks;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/testing/LauncherExtension$LauncherExtensionCallbacks;-><init>(Lnet/oneplus/h2launcher/testing/LauncherExtension;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/testing/LauncherExtension;->setLauncherCallbacks(Lnet/oneplus/h2launcher/LauncherCallbacks;)Z

    .line 30
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/Launcher;->onCreate(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

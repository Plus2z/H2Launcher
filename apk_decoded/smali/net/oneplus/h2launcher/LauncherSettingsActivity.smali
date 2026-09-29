.class public Lnet/oneplus/h2launcher/LauncherSettingsActivity;
.super Landroid/app/Activity;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;
    }
.end annotation


# static fields
.field private static final ICON_PACK:Ljava/lang/String; = "pref_icon_pack"

.field private static final QUICK_PAGE:Ljava/lang/String; = "pref_quick_page"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a02ab

    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/LauncherSettingsActivity;->setTheme(I)V

    .line 37
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/LauncherSettingsActivity$SettingsFragment;-><init>()V

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 40
    return-void

    .line 33
    :cond_0
    const v0, 0x7f0a02aa

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 47
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherSettingsActivity;->finish()V

    .line 48
    return-void
.end method

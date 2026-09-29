.class public Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;
.super Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
.source "LauncherActivityInfoCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0
    .param p1, "launcherActivityInfo"    # Landroid/content/pm/LauncherActivityInfo;

    .prologue
    .line 34
    invoke-direct {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 36
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    .locals 1
    .param p1, "iconPackHelper"    # Lnet/oneplus/h2launcher/IconPackHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "density"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->getIconFromIconPack(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    move-result-object v0

    .line 56
    .local v0, "drawableSource":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0, p2, p3}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->getIconFromPackage(Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    move-result-object v0

    .line 59
    :cond_0
    return-object v0
.end method

.method public getIconFromIconPack(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    .locals 3
    .param p1, "iconPackHelper"    # Lnet/oneplus/h2launcher/IconPackHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "density"    # I

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lnet/oneplus/h2launcher/IconPackHelper;->getDrawableForComponentNameWithDensity(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;-><init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/graphics/drawable/Drawable;Z)V

    .line 72
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconFromPackage(Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I

    .prologue
    .line 77
    new-instance v0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;-><init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/graphics/drawable/Drawable;Z)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.class public Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;
.super Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
.source "LauncherActivityInfoCompatV16.java"


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 40
    invoke-direct {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;-><init>()V

    .line 41
    iput-object p2, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 42
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 43
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mComponentName:Landroid/content/ComponentName;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    .line 45
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 114
    :try_start_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 115
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-wide v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "density"    # I

    .prologue
    .line 60
    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    .line 61
    .local v1, "iconRes":I
    const/4 v2, 0x0

    .line 62
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 64
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v1, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 72
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 73
    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    :cond_1
    if-nez v0, :cond_2

    .line 76
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 77
    const/high16 v3, 0x10d0000

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    :cond_2
    return-object v0

    .line 68
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getIcon(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    .locals 1
    .param p1, "iconPackHelper"    # Lnet/oneplus/h2launcher/IconPackHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "density"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->getIconFromIconPack(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    move-result-object v0

    .line 84
    .local v0, "drawableSource":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0, p2, p3}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->getIconFromPackage(Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    move-result-object v0

    .line 87
    :cond_0
    return-object v0
.end method

.method public getIconFromIconPack(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    .locals 3
    .param p1, "iconPackHelper"    # Lnet/oneplus/h2launcher/IconPackHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "density"    # I

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lnet/oneplus/h2launcher/IconPackHelper;->getDrawableForComponentNameWithDensity(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;-><init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/graphics/drawable/Drawable;Z)V

    .line 100
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
    .line 105
    new-instance v0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;

    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;-><init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/graphics/drawable/Drawable;Z)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

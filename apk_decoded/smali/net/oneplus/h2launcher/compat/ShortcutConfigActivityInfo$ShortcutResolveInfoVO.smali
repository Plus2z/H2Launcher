.class public Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutResolveInfoVO;
.super Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;
.source "ShortcutConfigActivityInfo.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutResolveInfoVO"
.end annotation


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private final mInfo:Landroid/content/pm/ResolveInfo;

.field private mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 180
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 180
    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 183
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutResolveInfoVO;->mComponentName:Landroid/content/ComponentName;

    .line 184
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutResolveInfoVO;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 185
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutResolveInfoVO;->mInfo:Landroid/content/pm/ResolveInfo;

    .line 186
    return-void
.end method


# virtual methods
.method public getFullResIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "cache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 195
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutResolveInfoVO;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutResolveInfoVO;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 196
    invoke-virtual {p1, v2, v3}, Lnet/oneplus/h2launcher/AssetCache;->getIcon(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutResolveInfoVO;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.class Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;
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
    accessFlags = 0x8
    name = "ShortcutConfigActivityInfoVO"
.end annotation


# instance fields
.field private final mInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 140
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 141
    return-void
.end method


# virtual methods
.method public getFullResIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "cache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 150
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v1

    iget v1, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 155
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 159
    :cond_0
    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    const-string v2, "getShortcutConfigActivityIntent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/pm/LauncherActivityInfo;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 161
    .local v8, "m":Ljava/lang/reflect/Method;
    const-class v0, Landroid/content/pm/LauncherApps;

    .line 162
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    aput-object v4, v2, v3

    .line 161
    invoke-virtual {v8, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 163
    .local v1, "is":Landroid/content/IntentSender;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 164
    goto :goto_0

    .line 165
    .end local v1    # "is":Landroid/content/IntentSender;
    .end local v8    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    .line 166
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SCActivityInfo"

    const-string v2, "Error calling new API"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    .line 167
    goto :goto_0
.end method

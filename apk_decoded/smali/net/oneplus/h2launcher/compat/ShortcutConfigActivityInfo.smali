.class public abstract Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;
.super Ljava/lang/Object;
.source "ShortcutConfigActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutResolveInfoVO;,
        Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;,
        Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SCActivityInfo"


# instance fields
.field private final mCn:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method protected constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    .line 58
    iput-object p2, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    .line 59
    return-void
.end method


# virtual methods
.method public createShortcutInfo()Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    return-object v0
.end method

.method public abstract getFullResIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public isPersistable()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    const v5, 0x7f0b002f

    const/4 v2, 0x0

    .line 86
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    const/4 v2, 0x1

    .line 99
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 93
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 95
    const-string v3, "SCActivityInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "or use the exported attribute for this activity."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

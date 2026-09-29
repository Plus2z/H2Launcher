.class public Lnet/oneplus/h2launcher/UninstallDropTarget;
.super Lnet/oneplus/h2launcher/ButtonDropTarget;
.source "UninstallDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/UninstallDropTarget$UninstallSource;
    }
.end annotation


# static fields
.field public static final ONEPLUS_INTENT_ACTION_DELETE:Ljava/lang/String; = "oneplus.intent.action.DELETE"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/oneplus/h2launcher/UninstallDropTarget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/UninstallDropTarget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/UninstallDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private static getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 4
    .param p0, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    instance-of v2, p0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 71
    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    .line 72
    .local v1, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v2, v1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget v3, v1, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 81
    .end local v1    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :goto_0
    return-object v2

    .line 73
    :cond_0
    instance-of v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 74
    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 75
    .local v1, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 76
    .local v0, "component":Landroid/content/ComponentName;
    iget v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 78
    iget v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    goto :goto_0

    .line 81
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static hasDualApp(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/ItemInfo;)Z
    .locals 12
    .param p0, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    const/4 v8, 0x0

    .line 164
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v4

    .line 165
    .local v4, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v7

    .line 167
    .local v7, "userManager":Lnet/oneplus/h2launcher/compat/UserManagerCompat;
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    .line 168
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    const/4 v3, 0x0

    .line 169
    .local v3, "dualAccount":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 170
    .local v5, "profile":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->hashCode()I

    move-result v10

    const/16 v11, 0x3e7

    if-ne v10, v11, :cond_0

    .line 171
    move-object v3, v5

    .line 176
    .end local v5    # "profile":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_1
    if-nez v3, :cond_3

    .line 194
    :cond_2
    :goto_0
    return v8

    .line 180
    :cond_3
    invoke-static {p1}, Lnet/oneplus/h2launcher/UninstallDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 181
    .local v2, "componentInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    if-nez v2, :cond_4

    .line 182
    sget-object v9, Lnet/oneplus/h2launcher/UninstallDropTarget;->TAG:Ljava/lang/String;

    const-string v10, "the component info is null, just treat it as non-dual app"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_4
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 188
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 190
    sget-object v8, Lnet/oneplus/h2launcher/UninstallDropTarget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasDualApp componentName ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private static isDualUninstallActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 156
    const-string v2, "oneplus.intent.action.DELETE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 158
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 159
    .local v0, "isExist":Z
    :cond_0
    sget-object v2, Lnet/oneplus/h2launcher/UninstallDropTarget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dualUninstallActivity isExist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return v0
.end method

.method public static startUninstallActivity(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/ItemInfo;)Z
    .locals 11
    .param p0, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    const/4 v9, 0x0

    .line 117
    invoke-static {p1}, Lnet/oneplus/h2launcher/UninstallDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 118
    .local v1, "componentInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v7, p1, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 119
    .local v7, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    if-nez v1, :cond_0

    .line 120
    sget-object v8, Lnet/oneplus/h2launcher/UninstallDropTarget;->TAG:Ljava/lang/String;

    const-string v10, "cannot find the component info for the app"

    invoke-static {v8, v10}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 151
    :goto_0
    return v8

    .line 124
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 125
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 127
    .local v3, "flags":I
    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_1

    .line 130
    const v5, 0x7f0b00ca

    .line 131
    .local v5, "messageId":I
    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 132
    goto :goto_0

    .line 134
    .end local v5    # "messageId":I
    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "className":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.DELETE"

    const-string v9, "package"

    .line 137
    invoke-static {v9, v6, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10800000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/UninstallDropTarget;->hasDualApp(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/ItemInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0, v4}, Lnet/oneplus/h2launcher/UninstallDropTarget;->isDualUninstallActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 141
    const-string v8, "oneplus.intent.action.DELETE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :goto_1
    if-eqz v7, :cond_2

    .line 147
    const-string v8, "android.intent.extra.USER"

    invoke-virtual {v7, v4, v8}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 150
    :cond_2
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 151
    const/4 v8, 0x1

    goto :goto_0

    .line 143
    :cond_3
    const-string v8, "android.intent.action.DELETE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    sget-boolean v3, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR2:Z

    if-eqz v3, :cond_1

    .line 54
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 55
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    .line 56
    .local v1, "restrictions":Landroid/os/Bundle;
    const-string v3, "no_control_apps"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "no_uninstall_apps"

    .line 57
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    .end local v1    # "restrictions":Landroid/os/Bundle;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :cond_0
    :goto_0
    return v4

    .line 62
    :cond_1
    invoke-static {p1}, Lnet/oneplus/h2launcher/UninstallDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 63
    .local v0, "componentInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 5
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 96
    iget-object v3, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v3}, Lnet/oneplus/h2launcher/UninstallDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 97
    .local v1, "componentInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v3, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    iget-object v2, v3, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 98
    .local v2, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    iget-object v4, p0, Lnet/oneplus/h2launcher/UninstallDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v3, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-static {v4, v3}, Lnet/oneplus/h2launcher/UninstallDropTarget;->startUninstallActivity(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    new-instance v0, Lnet/oneplus/h2launcher/UninstallDropTarget$1;

    invoke-direct {v0, p0, v1, v2, p1}, Lnet/oneplus/h2launcher/UninstallDropTarget$1;-><init>(Lnet/oneplus/h2launcher/UninstallDropTarget;Landroid/util/Pair;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 109
    .local v0, "checkIfUninstallWasSuccess":Ljava/lang/Runnable;
    iget-object v3, p0, Lnet/oneplus/h2launcher/UninstallDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 113
    .end local v0    # "checkIfUninstallWasSuccess":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v3, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lnet/oneplus/h2launcher/UninstallDropTarget;->sendUninstallResult(Lnet/oneplus/h2launcher/DragSource;Z)V

    goto :goto_0
.end method

.method public onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 87
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    instance-of v0, v0, Lnet/oneplus/h2launcher/UninstallDropTarget$UninstallSource;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    check-cast v0, Lnet/oneplus/h2launcher/UninstallDropTarget$UninstallSource;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/UninstallDropTarget$UninstallSource;->deferCompleteDropAfterUninstallActivity()V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 91
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->onFinishInflate()V

    .line 41
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/UninstallDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0358

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/UninstallDropTarget;->mHoverColor:I

    .line 43
    const v0, 0x7f0201d4

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/UninstallDropTarget;->setDrawable(I)V

    .line 44
    return-void
.end method

.method sendUninstallResult(Lnet/oneplus/h2launcher/DragSource;Z)V
    .locals 1
    .param p1, "target"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "result"    # Z

    .prologue
    .line 199
    instance-of v0, p1, Lnet/oneplus/h2launcher/UninstallDropTarget$UninstallSource;

    if-eqz v0, :cond_0

    .line 200
    check-cast p1, Lnet/oneplus/h2launcher/UninstallDropTarget$UninstallSource;

    .end local p1    # "target":Lnet/oneplus/h2launcher/DragSource;
    invoke-interface {p1, p2}, Lnet/oneplus/h2launcher/UninstallDropTarget$UninstallSource;->onUninstallActivityReturned(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method protected supportsDrop(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/UninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/oneplus/h2launcher/UninstallDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

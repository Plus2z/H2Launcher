.class public Lnet/oneplus/h2launcher/AppInfo;
.super Lnet/oneplus/h2launcher/ItemInfoWithIcon;
.source "AppInfo.java"


# static fields
.field static final DOWNLOADED_FLAG:I = 0x1

.field public static final SUPPORT_EDIT_ICON_IMAGE_FLAG:I = 0x8

.field public static final SUPPORT_EDIT_ICON_LABEL_FLAG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Launcher3.AppInfo"

.field static final UPDATED_SYSTEM_APP_FLAG:I = 0x2


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field firstInstallTime:J

.field flags:I

.field public intent:Landroid/content/Intent;

.field isDisabled:I

.field pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfoWithIcon;-><init>()V

    .line 59
    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    .line 64
    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->itemType:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p4, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 85
    .line 86
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p3}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->isQuietModeEnabled(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 85
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/AppInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p4, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p5, "quietModeEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfoWithIcon;-><init>()V

    .line 59
    iput v2, p0, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    .line 64
    iput v2, p0, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    .line 91
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/AppInfo;->container:J

    .line 94
    invoke-static {p2}, Lnet/oneplus/h2launcher/AppInfo;->initFlags(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    .line 95
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 96
    iget v0, p0, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    .line 98
    :cond_0
    if-eqz p5, :cond_1

    .line 99
    iget v0, p0, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    .line 102
    :cond_1
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/AppInfo;->firstInstallTime:J

    .line 103
    invoke-virtual {p4, p0, p2, v2}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Z)V

    .line 104
    invoke-static {p1, p2, p3}, Lnet/oneplus/h2launcher/AppInfo;->makeLaunchIntent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    .line 105
    iput-object p3, p0, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 106
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->pkgName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/AppInfo;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/AppInfo;

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/ItemInfoWithIcon;-><init>(Lnet/oneplus/h2launcher/ItemInfoWithIcon;)V

    .line 59
    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    .line 64
    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    .line 125
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 126
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    .line 128
    iget v0, p1, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    .line 129
    iget v0, p1, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    iput v0, p0, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    .line 130
    iget-wide v0, p1, Lnet/oneplus/h2launcher/AppInfo;->firstInstallTime:J

    iput-wide v0, p0, Lnet/oneplus/h2launcher/AppInfo;->firstInstallTime:J

    .line 131
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 132
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->pkgName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    .line 176
    .local v0, "info":Lnet/oneplus/h2launcher/AppInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstInstallTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lnet/oneplus/h2launcher/AppInfo;->firstInstallTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 178
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_0
    return-void
.end method

.method public static initFlags(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;)I
    .locals 3
    .param p0, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .prologue
    .line 110
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 111
    .local v0, "appFlags":I
    const/4 v1, 0x0

    .line 112
    .local v1, "flags":I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    .line 113
    or-int/lit8 v1, v1, 0x1

    .line 115
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 116
    or-int/lit8 v1, v1, 0x2

    .line 119
    :cond_0
    or-int/lit8 v1, v1, 0xc

    .line 120
    return v1
.end method

.method public static makeLaunchIntent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 196
    invoke-static {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 197
    .local v0, "serialNumber":J
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 198
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 199
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10200000

    .line 200
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "profile"

    .line 201
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getIcon(Lnet/oneplus/h2launcher/AssetCache;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "invalidate"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/AppInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel(Lnet/oneplus/h2launcher/AssetCache;Z)Ljava/lang/String;
    .locals 1
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "invalidate"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/AppInfo;->updateLabel(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRestoredIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lnet/oneplus/h2launcher/AppInfo;->isDisabled:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeShortcut()Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Lnet/oneplus/h2launcher/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->createShortcutInfo(Lnet/oneplus/h2launcher/AppInfo;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>(Lnet/oneplus/h2launcher/AppInfo;)V

    goto :goto_0
.end method

.method public toComponentKey()Lnet/oneplus/h2launcher/util/ComponentKey;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lnet/oneplus/h2launcher/util/ComponentKey;

    iget-object v1, p0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/AppInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/AppInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/AppInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/AppInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/AppInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/AppInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/AppInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/AppInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/AppInfo;->dropPos:[I

    .line 166
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 2
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 158
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p1, v0, v1}, Lnet/oneplus/h2launcher/AssetCache;->getIcon(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 159
    return-void
.end method

.method public updateLabel(Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 2
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 147
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lnet/oneplus/h2launcher/AppInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p1, v0, v1}, Lnet/oneplus/h2launcher/AssetCache;->getTitle(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    .line 148
    return-void
.end method

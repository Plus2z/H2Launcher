.class public Lnet/oneplus/h2launcher/ShortcutInfo;
.super Lnet/oneplus/h2launcher/ItemInfoWithIcon;
.source "ShortcutInfo.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final FLAG_AUTOINTALL_ICON:I = 0x2

.field public static final FLAG_DISABLED_NOT_AVAILABLE:I = 0x2

.field public static final FLAG_DISABLED_QUIET_USER:I = 0x8

.field public static final FLAG_DISABLED_SAFEMODE:I = 0x1

.field public static final FLAG_DISABLED_SUSPENDED:I = 0x4

.field public static final FLAG_INSTALL_SESSION_ACTIVE:I = 0x4

.field public static final FLAG_RESTORED_APP_TYPE:I = 0xf0

.field public static final FLAG_RESTORED_ICON:I = 0x1

.field public static final FLAG_RESTORE_STARTED:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public customIcon:Z

.field public firstInstallTime:J

.field protected flags:I

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field isDisabled:I

.field protected mCurrentData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeepShortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

.field protected mForceUseAppResource:Z

.field public mIcon:Landroid/graphics/Bitmap;

.field private mInstallProgress:I

.field protected mIsDynamicIcon:Z

.field promisedIntent:Landroid/content/Intent;

.field status:I

.field usingFallbackIcon:Z

.field usingLowResIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/ShortcutInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfoWithIcon;-><init>()V

    .line 140
    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 157
    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 168
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mForceUseAppResource:Z

    .line 177
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIsDynamicIcon:Z

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mCurrentData:Ljava/util/Map;

    .line 182
    const/4 v0, 0x1

    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/ItemInfoWithIcon;-><init>(Lnet/oneplus/h2launcher/ItemInfoWithIcon;)V

    .line 140
    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 157
    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 168
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mForceUseAppResource:Z

    .line 177
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIsDynamicIcon:Z

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mCurrentData:Ljava/util/Map;

    .line 201
    iget-object v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 202
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 203
    iget-object v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 208
    :cond_0
    iget-object v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 209
    iget-boolean v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->customIcon:Z

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->customIcon:Z

    .line 210
    iget v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 211
    iget-wide v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->firstInstallTime:J

    iput-wide v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->firstInstallTime:J

    .line 212
    iget-object v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 213
    iget v0, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 191
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .line 192
    iput-object p1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 193
    invoke-static {p2}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 194
    iput-object p3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 195
    iput-object p4, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 196
    iput-object p5, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 197
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/AppInfo;)V
    .locals 3
    .param p1, "info"    # Lnet/oneplus/h2launcher/AppInfo;

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/ItemInfoWithIcon;-><init>(Lnet/oneplus/h2launcher/ItemInfoWithIcon;)V

    .line 140
    iput v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 157
    iput v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 168
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mForceUseAppResource:Z

    .line 177
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIsDynamicIcon:Z

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mCurrentData:Ljava/util/Map;

    .line 219
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 220
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 221
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->customIcon:Z

    .line 222
    iget v0, p1, Lnet/oneplus/h2launcher/AppInfo;->flags:I

    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 223
    iget-wide v0, p1, Lnet/oneplus/h2launcher/AppInfo;->firstInstallTime:J

    iput-wide v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->firstInstallTime:J

    .line 224
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfoWithIcon;-><init>()V

    .line 140
    iput v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 157
    iput v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 168
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mForceUseAppResource:Z

    .line 177
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIsDynamicIcon:Z

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mCurrentData:Ljava/util/Map;

    .line 227
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 228
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 229
    invoke-static {p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    .line 230
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 231
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lnet/oneplus/h2launcher/AppInfo;->makeLaunchIntent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 232
    iput v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 233
    invoke-static {p1}, Lnet/oneplus/h2launcher/AppInfo;->initFlags(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 234
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 2
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfoWithIcon;-><init>()V

    .line 140
    iput v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    .line 157
    iput v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 168
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mForceUseAppResource:Z

    .line 177
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIsDynamicIcon:Z

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mCurrentData:Ljava/util/Map;

    .line 241
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->getUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 242
    const/4 v0, 0x6

    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 243
    iput v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 244
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateFromDeepShortcutInfo(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 245
    return-void
.end method

.method public static dumpShortcutInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
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

    .line 370
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 371
    .local v0, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->customIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    return-void
.end method

.method public static fromActivityInfo(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 5
    .param p0, "info"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 409
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->isDynamicIcon(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    invoke-static {}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->getInstance()Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->createShortcutInfo(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v0

    .line 414
    .local v0, "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    iput-object v1, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 415
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 416
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v1

    .line 417
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 418
    iput-boolean v4, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->customIcon:Z

    .line 419
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lnet/oneplus/h2launcher/AppInfo;->makeLaunchIntent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 420
    iput v4, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    .line 421
    invoke-static {p0}, Lnet/oneplus/h2launcher/AppInfo;->initFlags(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;)I

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->flags:I

    .line 422
    instance-of v1, v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 423
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->initFlags()V

    move-object v1, v0

    .line 424
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->refreshConfig()V

    .line 426
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v2

    iput-wide v2, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->firstInstallTime:J

    .line 427
    return-object v0

    .line 412
    .end local v0    # "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    new-instance v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .restart local v0    # "shortcut":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_0
.end method

.method private updateLabel(Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 2
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 287
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/oneplus/h2launcher/AssetCache;->getTitle(Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 288
    return-void
.end method


# virtual methods
.method public forceUpdateIcon(Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 2
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 322
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutInfo;->shouldUseLowResIcon()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;ZZ)V

    .line 323
    return-void
.end method

.method public getDeepShortcutComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutInfo;->isDeepShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mDeepShortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    if-nez v0, :cond_1

    .line 452
    :cond_0
    const/4 v0, 0x0

    .line 454
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mDeepShortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeepShortcutId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Lnet/oneplus/h2launcher/AssetCache;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "invalidate"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getInstallProgress()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mInstallProgress:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel(Lnet/oneplus/h2launcher/AssetCache;Z)Ljava/lang/String;
    .locals 2
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "invalidate"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 276
    .local v0, "oldTitle":Ljava/lang/CharSequence;
    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateLabel(Lnet/oneplus/h2launcher/AssetCache;)V

    .line 279
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 281
    iput-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 283
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 379
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 386
    iget v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeepShortcut()Z
    .locals 2

    .prologue
    .line 447
    iget v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeepShortcutDeclaredInManifest()Z
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mDeepShortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    if-nez v0, :cond_0

    .line 459
    sget-object v0, Lnet/oneplus/h2launcher/ShortcutInfo;->TAG:Ljava/lang/String;

    const-string v1, "mDeepShortcutInfo is null"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mDeepShortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDynamicIcon()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIsDynamicIcon:Z

    return v0
.end method

.method public final isPromise()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 327
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/ItemInfoWithIcon;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 329
    iget-object v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "titleStr":Ljava/lang/String;
    :goto_0
    const-string v3, "title"

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "uri":Ljava/lang/String;
    :goto_1
    const-string v2, "intent"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v2, "restored"

    iget v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->customIcon:Z

    if-eqz v2, :cond_0

    .line 338
    const-string v2, "iconType"

    const/4 v3, 0x1

    .line 339
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 338
    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    iget-object v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p2, v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 341
    :cond_0
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mForceUseAppResource:Z

    if-eqz v2, :cond_5

    .line 342
    const-string v2, "iconType"

    const/4 v3, 0x2

    .line 343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 342
    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    :cond_1
    :goto_2
    return-void

    .end local v0    # "titleStr":Ljava/lang/String;
    .end local v1    # "uri":Ljava/lang/String;
    :cond_2
    move-object v0, v2

    .line 329
    goto :goto_0

    .line 332
    .restart local v0    # "titleStr":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    iget-object v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 333
    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_1

    .line 345
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_5
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_6

    .line 346
    iget-object v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p2, v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 348
    :cond_6
    iget-object v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_1

    .line 349
    const-string v2, "iconType"

    .line 350
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 349
    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v2, "iconPackage"

    iget-object v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v2, "iconResource"

    iget-object v3, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 270
    iput-object p1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 271
    return-void
.end method

.method public setInstallProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 399
    iput p1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mInstallProgress:I

    .line 400
    iget v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->status:I

    .line 401
    return-void
.end method

.method public shouldUseLowResIcon()Z
    .locals 4

    .prologue
    .line 404
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->rank:I

    invoke-static {}, Lnet/oneplus/h2launcher/FolderIcon;->getNumItemsInPreview()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->dropPos:[I

    .line 364
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromDeepShortcutInfo(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 3
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-virtual {p1, p2}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 250
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 251
    iput-object p1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mDeepShortcutInfo:Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;

    .line 253
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 254
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 257
    :cond_0
    invoke-static {p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 258
    invoke-virtual {v1, v0, v2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 266
    invoke-static {p1, p2}, Lnet/oneplus/h2launcher/Utilities;->createShortcutIcon(Lnet/oneplus/h2launcher/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 267
    return-void
.end method

.method public updateIcon(Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 2
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 318
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutInfo;->shouldUseLowResIcon()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;ZZ)V

    .line 319
    return-void
.end method

.method public updateIcon(Lnet/oneplus/h2launcher/AssetCache;Z)V
    .locals 1
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "useLowRes"    # Z

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->updateIcon(Lnet/oneplus/h2launcher/AssetCache;ZZ)V

    .line 303
    return-void
.end method

.method public updateIcon(Lnet/oneplus/h2launcher/AssetCache;ZZ)V
    .locals 2
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "useLowRes"    # Z
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 306
    iget v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->itemType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 307
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p1, p0, v0, v1, p2}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 310
    :cond_1
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public updateIconForApplicationShortcutCreate(Lnet/oneplus/h2launcher/AssetCache;Z)V
    .locals 2
    .param p1, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;
    .param p2, "useLowRes"    # Z

    .prologue
    .line 313
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {p1, p0, v0, v1, p2}, Lnet/oneplus/h2launcher/AssetCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 315
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

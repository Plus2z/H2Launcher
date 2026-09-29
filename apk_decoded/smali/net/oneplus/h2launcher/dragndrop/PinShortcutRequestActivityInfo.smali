.class Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;
.super Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;
.source "PinShortcutRequestActivityInfo.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation


# static fields
.field private static final DUMMY_COMPONENT_CLASS:Ljava/lang/String; = "pinned-shortcut"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Landroid/content/pm/ShortcutInfo;

.field private final mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;Landroid/content/Context;)V
    .locals 3
    .param p1, "request"    # Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pinned-shortcut"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 53
    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 55
    iput-object p1, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    .line 56
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    .line 57
    iput-object p2, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public createShortcutInfo()Lnet/oneplus/h2launcher/ShortcutInfo;
    .locals 5

    .prologue
    .line 79
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x12c

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-long v0, v2

    .line 83
    .local v0, "duration":J
    iget-object v2, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mRequest:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-static {v2, v3, v0, v1}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->createShortcutInfoFromPinItemRequest(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;J)Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v2

    return-object v2
.end method

.method public getFullResIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "cache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 72
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    .line 73
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x6

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnet/oneplus/h2launcher/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isPersistable()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

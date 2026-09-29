.class public Lnet/oneplus/h2launcher/model/WidgetItem;
.super Lnet/oneplus/h2launcher/util/ComponentKey;
.source "WidgetItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/oneplus/h2launcher/util/ComponentKey;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/oneplus/h2launcher/model/WidgetItem;",
        ">;"
    }
.end annotation


# static fields
.field private static sCollator:Ljava/text/Collator;

.field private static sMyUserHandle:Landroid/os/UserHandle;


# instance fields
.field public final activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

.field public final label:Ljava/lang/String;

.field public final spanX:I

.field public final spanY:I

.field public final widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "idp"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 35
    iget-object v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 37
    invoke-virtual {p1, p2}, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->label:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    .line 41
    iget v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v1, p3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->spanX:I

    .line 42
    iget v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iget v1, p3, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->spanY:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    .prologue
    .line 46
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 47
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->label:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 49
    iput-object p1, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->spanY:I

    iput v0, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->spanX:I

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lnet/oneplus/h2launcher/model/WidgetItem;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/model/WidgetItem;->compareTo(Lnet/oneplus/h2launcher/model/WidgetItem;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/oneplus/h2launcher/model/WidgetItem;)I
    .locals 9
    .param p1, "another"    # Lnet/oneplus/h2launcher/model/WidgetItem;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 55
    sget-object v7, Lnet/oneplus/h2launcher/model/WidgetItem;->sMyUserHandle:Landroid/os/UserHandle;

    if-nez v7, :cond_0

    .line 57
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    sput-object v7, Lnet/oneplus/h2launcher/model/WidgetItem;->sMyUserHandle:Landroid/os/UserHandle;

    .line 58
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    sput-object v7, Lnet/oneplus/h2launcher/model/WidgetItem;->sCollator:Ljava/text/Collator;

    .line 63
    :cond_0
    sget-object v7, Lnet/oneplus/h2launcher/model/WidgetItem;->sMyUserHandle:Landroid/os/UserHandle;

    iget-object v8, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v4, v5

    .line 64
    .local v4, "thisWorkProfile":Z
    :goto_0
    sget-object v7, Lnet/oneplus/h2launcher/model/WidgetItem;->sMyUserHandle:Landroid/os/UserHandle;

    iget-object v8, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 65
    .local v2, "otherWorkProfile":Z
    :goto_1
    xor-int v6, v4, v2

    if-eqz v6, :cond_4

    .line 66
    if-eqz v4, :cond_3

    .line 80
    :goto_2
    return v5

    .end local v2    # "otherWorkProfile":Z
    .end local v4    # "thisWorkProfile":Z
    :cond_1
    move v4, v6

    .line 63
    goto :goto_0

    .restart local v4    # "thisWorkProfile":Z
    :cond_2
    move v2, v6

    .line 64
    goto :goto_1

    .line 66
    .restart local v2    # "otherWorkProfile":Z
    :cond_3
    const/4 v5, -0x1

    goto :goto_2

    .line 69
    :cond_4
    sget-object v5, Lnet/oneplus/h2launcher/model/WidgetItem;->sCollator:Ljava/text/Collator;

    iget-object v6, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->label:Ljava/lang/String;

    iget-object v7, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "labelCompare":I
    if-eqz v0, :cond_5

    move v5, v0

    .line 71
    goto :goto_2

    .line 76
    :cond_5
    iget v5, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->spanX:I

    iget v6, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->spanY:I

    mul-int v3, v5, v6

    .line 77
    .local v3, "thisArea":I
    iget v5, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->spanX:I

    iget v6, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->spanY:I

    mul-int v1, v5, v6

    .line 78
    .local v1, "otherArea":I
    if-ne v3, v1, :cond_6

    iget v5, p0, Lnet/oneplus/h2launcher/model/WidgetItem;->spanY:I

    iget v6, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->spanY:I

    .line 79
    invoke-static {v5, v6}, Ljava/lang/Integer;->compare(II)I

    move-result v5

    goto :goto_2

    .line 80
    :cond_6
    invoke-static {v3, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v5

    goto :goto_2
.end method

.class public Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;
.super Lnet/oneplus/h2launcher/PendingAddItemInfo;
.source "PendingAddShortcutInfo.java"


# instance fields
.field public activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;)V
    .locals 1
    .param p1, "activityInfo"    # Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    .prologue
    .line 31
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PendingAddItemInfo;-><init>()V

    .line 32
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;->activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    .line 33
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    .line 34
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 35
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;->getItemType()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;->itemType:I

    .line 36
    return-void
.end method

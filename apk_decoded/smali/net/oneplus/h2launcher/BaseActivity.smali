.class public abstract Lnet/oneplus/h2launcher/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field protected mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lnet/oneplus/h2launcher/BaseActivity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    instance-of v0, p0, Lnet/oneplus/h2launcher/BaseActivity;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Lnet/oneplus/h2launcher/BaseActivity;

    .line 44
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/BaseActivity;

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseActivity;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    return-object v0
.end method

.method public isInMultiWindowModeCompat()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/BaseActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

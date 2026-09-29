.class public Lnet/oneplus/h2launcher/util/ConfigMonitor;
.super Landroid/content/BroadcastReceiver;
.source "ConfigMonitor.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDensity:I

.field private final mFontScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    const-class v1, Lnet/oneplus/h2launcher/util/ConfigMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 42
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mFontScale:F

    .line 43
    invoke-static {v0}, Lnet/oneplus/h2launcher/util/ConfigMonitor;->getDensity(Landroid/content/res/Configuration;)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mDensity:I

    .line 44
    return-void
.end method

.method private static getDensity(Landroid/content/res/Configuration;)I
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 90
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 50
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFontScale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mFontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config.fontScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDensity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mDensity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config.density = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 52
    invoke-static {v0}, Lnet/oneplus/h2launcher/util/ConfigMonitor;->getDensity(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mFontScale:F

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mDensity:I

    invoke-static {v0}, Lnet/oneplus/h2launcher/util/ConfigMonitor;->getDensity(Landroid/content/res/Configuration;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 55
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Configuration changed, restarting launcher"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 61
    :cond_1
    if-nez p2, :cond_3

    .line 62
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->TAG:Ljava/lang/String;

    const-string v4, "onReceive: intent is null. Should not happened!!"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    :goto_0
    return-void

    .line 66
    :cond_3
    const-string v3, "font_scale"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 67
    .local v2, "fontScale":F
    const-string v3, "density_dpi"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "density":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFontScale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mFontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fontScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDensity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mDensity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", density = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    cmpl-float v3, v2, v6

    if-eqz v3, :cond_4

    if-ne v1, v7, :cond_5

    .line 74
    :cond_4
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->TAG:Ljava/lang/String;

    const-string v4, "onReceive: fontScale/density have not change!"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_5
    iget v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mFontScale:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_6

    iget v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mDensity:I

    if-eq v3, v1, :cond_2

    .line 79
    :cond_6
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Configuration changed, restarting launcher"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lnet/oneplus/h2launcher/util/ConfigMonitor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

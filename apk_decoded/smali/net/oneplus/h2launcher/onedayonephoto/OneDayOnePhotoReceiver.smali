.class public Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OneDayOnePhotoReceiver.java"


# static fields
.field private static final ACTION_LAUNCH_ONE_DAY_ONE_PHOTO:Ljava/lang/String; = "net.oneplus.h2launcher.action.LAUNCH_ONE_DAY_ONE_PHOTO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.oneplus.h2launcher.action.LAUNCH_ONE_DAY_ONE_PHOTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->startOneDayOnePhotoPicker(Landroid/content/Context;I)V

    .line 18
    :cond_0
    return-void
.end method

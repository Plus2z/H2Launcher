.class Lnet/oneplus/h2launcher/LauncherAppState$1;
.super Landroid/content/BroadcastReceiver;
.source "LauncherAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherAppState;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherAppState;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherAppState;

    .prologue
    .line 85
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherAppState$1;->this$0:Lnet/oneplus/h2launcher/LauncherAppState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->clearOneplusPermissionState()V

    .line 89
    return-void
.end method

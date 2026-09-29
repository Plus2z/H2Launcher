.class Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconPackReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0

    .prologue
    .line 5786
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/Launcher$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/Launcher$1;

    .prologue
    .line 5786
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 5790
    const-string v1, "preview"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 5791
    .local v0, "previewOnly":Z
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    new-instance v2, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;-><init>(Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;Z)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->access$3202(Lnet/oneplus/h2launcher/Launcher;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 5792
    return-void
.end method

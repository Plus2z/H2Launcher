.class Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "WelcomePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 87
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$000(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Z

    move-result v1

    .line 93
    .local v1, "isNetworkConnected":Z
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network has been turned "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_1

    const-string v2, "on"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v1, :cond_2

    .line 95
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$200(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$300(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V

    .line 102
    .end local v1    # "isNetworkConnected":Z
    :cond_0
    :goto_1
    return-void

    .line 93
    .restart local v1    # "isNetworkConnected":Z
    :cond_1
    const-string v2, "off"

    goto :goto_0

    .line 99
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$400(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Z)V

    goto :goto_1
.end method

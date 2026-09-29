.class Lnet/oneplus/h2launcher/Launcher$25;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 2789
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$25;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2793
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2820
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2795
    :pswitch_0
    const/4 v1, 0x0

    .line 2797
    .local v1, "i":I
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage MSG_ADVANCE + mWidgetsToAdvance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher$25;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v6, v6, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$25;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2799
    .local v2, "key":Landroid/view/View;
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$25;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2800
    .local v3, "v":Landroid/view/View;
    mul-int/lit16 v0, v1, 0xfa

    .line 2801
    .local v0, "delay":I
    instance-of v4, v3, Landroid/widget/Advanceable;

    if-eqz v4, :cond_0

    .line 2802
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$25;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v6, Lnet/oneplus/h2launcher/Launcher$25$1;

    invoke-direct {v6, p0, v0, v3}, Lnet/oneplus/h2launcher/Launcher$25$1;-><init>(Lnet/oneplus/h2launcher/Launcher$25;ILandroid/view/View;)V

    int-to-long v8, v0

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2810
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2811
    goto :goto_1

    .line 2812
    .end local v0    # "delay":I
    .end local v2    # "key":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$25;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/Launcher;->sendAdvanceMessage(J)V

    goto :goto_0

    .line 2816
    .end local v1    # "i":I
    :pswitch_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$25;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/Launcher;->showSwitchingLoadingView(Z)V

    goto :goto_0

    .line 2793
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lnet/oneplus/h2launcher/Launcher$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->onCreate(Landroid/os/Bundle;)V
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
    .line 668
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toggleWidgets()V
    .locals 4

    .prologue
    .line 696
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showWidgetsButton()Z

    move-result v1

    .line 700
    .local v1, "showWidgets":Z
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$300(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Launcher;->access$400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 701
    .local v0, "index":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$300(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Launcher;->access$400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 702
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$300(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Launcher;->access$400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 703
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    return-void

    .line 703
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 671
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 693
    :goto_1
    return-void

    .line 671
    :sswitch_0
    const-string v2, "shelf_enabled_saved"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "swipe_up_enabled_saved"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "swipe_down_enabled_saved"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "widgets_enabled_saved"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "double_tap_to_lock_enabled_saved"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 673
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->refreshCustomContentOnStateChange()V

    goto :goto_1

    .line 676
    :pswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->access$102(Lnet/oneplus/h2launcher/Launcher;Z)Z

    goto :goto_1

    .line 679
    :pswitch_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->access$202(Lnet/oneplus/h2launcher/Launcher;Z)Z

    goto :goto_1

    .line 682
    :pswitch_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$300(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 683
    :cond_1
    const-string v0, "Launcher"

    const-string v1, "invalid overview panel or widgets button"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 686
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher$3;->toggleWidgets()V

    goto :goto_1

    .line 689
    :pswitch_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->doubleTabToLockEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->access$502(Lnet/oneplus/h2launcher/Launcher;Z)Z

    .line 690
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$3;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$600(Lnet/oneplus/h2launcher/Launcher;)V

    goto :goto_1

    .line 671
    :sswitch_data_0
    .sparse-switch
        -0x4c39f587 -> :sswitch_3
        0xc2546b4 -> :sswitch_0
        0x2cb61bca -> :sswitch_1
        0x3748e5af -> :sswitch_4
        0x53b09451 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

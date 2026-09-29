.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;
.super Ljava/lang/Object;
.source "GlobalSearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 849
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/AppData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 855
    .local v8, "componentName":Landroid/content/ComponentName;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 856
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/AppData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 858
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 859
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 860
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 862
    const-string v0, "profile"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    const-string v0, "profile"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 864
    .local v10, "serialNumber":J
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1800(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    .line 865
    invoke-virtual {v0, v10, v11}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    .line 873
    .end local v10    # "serialNumber":J
    .local v7, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/Stats;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v8, v4, v5}, Lnet/oneplus/h2launcher/Stats;->recordAppHistory(Landroid/content/ComponentName;J)V

    .line 874
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/Stats;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/Stats;->recordLaunch(Landroid/view/View;Landroid/content/Intent;Lnet/oneplus/h2launcher/ShortcutInfo;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 878
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2402(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)Z

    .line 879
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 880
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitWithoutAnimation()V

    .line 887
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_0
    :goto_1
    return-void

    .line 867
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {v2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    .restart local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    goto :goto_0

    .line 870
    .end local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    .restart local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    goto :goto_0

    .line 882
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 884
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitAnimation()V

    goto :goto_1
.end method

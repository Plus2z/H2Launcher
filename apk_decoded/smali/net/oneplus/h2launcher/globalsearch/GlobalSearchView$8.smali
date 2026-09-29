.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;
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
    .line 891
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 896
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "id":Ljava/lang/String;
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 898
    .local v2, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getIcon()Landroid/net/Uri;

    move-result-object v3

    .line 899
    .local v3, "iconUri":Landroid/net/Uri;
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 900
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 901
    if-eqz v6, :cond_0

    .line 902
    const/high16 v0, 0x10000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 903
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v6, v4}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 905
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/Stats;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/Stats;->recordContactHistory(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 907
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2402(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)Z

    .line 908
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 909
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitWithoutAnimation()V

    .line 916
    :cond_1
    :goto_0
    return-void

    .line 911
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 913
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitAnimation()V

    goto :goto_0
.end method

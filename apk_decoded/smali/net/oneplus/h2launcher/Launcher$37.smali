.class Lnet/oneplus/h2launcher/Launcher$37;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->showIconPackListPopupWindow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$iconPackList:[[Ljava/lang/CharSequence;

.field final synthetic val$listPopupWindow:Landroid/widget/ListPopupWindow;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;[[Ljava/lang/CharSequence;Ljava/lang/String;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 4653
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$37;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$37;->val$iconPackList:[[Ljava/lang/CharSequence;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$37;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lnet/oneplus/h2launcher/Launcher$37;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 4657
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$37;->val$iconPackList:[[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    aget-object v2, v2, p3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4658
    .local v1, "iconPackPackage":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$37;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const-class v3, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4659
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "app_package"

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$37;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4660
    const-string v2, "icon_pack_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4661
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$37;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2, v4}, Lnet/oneplus/h2launcher/Launcher;->access$3002(Lnet/oneplus/h2launcher/Launcher;Z)Z

    .line 4662
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$37;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2, v1}, Lnet/oneplus/h2launcher/Launcher;->access$3102(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    .line 4664
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$37;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const/16 v3, 0xe

    invoke-virtual {v2, v0, v3}, Lnet/oneplus/h2launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4665
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$37;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 4666
    return-void
.end method

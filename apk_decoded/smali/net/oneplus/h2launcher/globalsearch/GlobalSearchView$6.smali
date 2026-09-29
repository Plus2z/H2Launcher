.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;
.super Ljava/lang/Object;
.source "GlobalSearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 791
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 794
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    long-to-int v2, p4

    packed-switch v2, :pswitch_data_0

    .line 808
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 809
    return-void

    .line 796
    :pswitch_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 797
    .local v0, "selected":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;->val$res:Landroid/content/res/Resources;

    const v3, 0x7f0b00aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 798
    .local v1, "t9Input":Z
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1800(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 799
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1900(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)V

    goto :goto_0

    .line 802
    .end local v0    # "selected":Ljava/lang/String;
    .end local v1    # "t9Input":Z
    :pswitch_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    goto :goto_0

    .line 794
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

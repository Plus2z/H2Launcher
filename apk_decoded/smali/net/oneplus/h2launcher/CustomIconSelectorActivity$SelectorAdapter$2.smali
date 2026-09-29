.class Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$2;
.super Ljava/lang/Object;
.source "CustomIconSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

.field final synthetic val$item:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    .prologue
    .line 413
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$2;->this$1:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    iput-object p2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$2;->val$item:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "res_name"

    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$2;->val$item:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$2;->this$1:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 419
    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$2;->this$1:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->finish()V

    .line 420
    return-void
.end method

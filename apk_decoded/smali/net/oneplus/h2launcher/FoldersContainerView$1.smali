.class Lnet/oneplus/h2launcher/FoldersContainerView$1;
.super Ljava/lang/Object;
.source "FoldersContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FoldersContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FoldersContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FoldersContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FoldersContainerView;

    .prologue
    .line 67
    iput-object p1, p0, Lnet/oneplus/h2launcher/FoldersContainerView$1;->this$0:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView$1;->this$0:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->access$000(Lnet/oneplus/h2launcher/FoldersContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView$1;->this$0:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->access$100(Lnet/oneplus/h2launcher/FoldersContainerView;)Lnet/oneplus/h2launcher/ExtendedEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView$1;->this$0:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->access$100(Lnet/oneplus/h2launcher/FoldersContainerView;)Lnet/oneplus/h2launcher/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ExtendedEditText;->requestFocus()Z

    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView$1;->this$0:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->access$100(Lnet/oneplus/h2launcher/FoldersContainerView;)Lnet/oneplus/h2launcher/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ExtendedEditText;->showKeyboard()V

    .line 75
    return-void
.end method

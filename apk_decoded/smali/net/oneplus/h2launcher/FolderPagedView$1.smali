.class Lnet/oneplus/h2launcher/FolderPagedView$1;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderPagedView;->realTimeReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderPagedView;

.field final synthetic val$newRank:I

.field final synthetic val$oldTranslateX:F

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderPagedView;Landroid/view/View;FI)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderPagedView;

    .prologue
    .line 666
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->this$0:Lnet/oneplus/h2launcher/FolderPagedView;

    iput-object p2, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$v:Landroid/view/View;

    iput p3, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$oldTranslateX:F

    iput p4, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$newRank:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 670
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->this$0:Lnet/oneplus/h2launcher/FolderPagedView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$v:Landroid/view/View;

    iget v1, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$oldTranslateX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 672
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 673
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->this$0:Lnet/oneplus/h2launcher/FolderPagedView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$v:Landroid/view/View;

    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    iget v3, p0, Lnet/oneplus/h2launcher/FolderPagedView$1;->val$newRank:I

    invoke-virtual {v1, v2, v0, v3}, Lnet/oneplus/h2launcher/FolderPagedView;->addViewForRank(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;I)V

    .line 674
    return-void
.end method

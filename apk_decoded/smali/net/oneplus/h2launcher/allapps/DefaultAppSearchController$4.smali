.class Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->hideSearchField(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;

.field final synthetic val$resetTextField:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    .prologue
    .line 247
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;->val$resetTextField:Z

    iput-object p3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;->val$resetTextField:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mCb:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 255
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 258
    :cond_1
    return-void
.end method

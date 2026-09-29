.class Lnet/oneplus/h2launcher/FoldersTransitionController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FoldersTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FoldersTransitionController;->animateToWorkspace(Landroid/animation/AnimatorSet;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FoldersTransitionController;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FoldersTransitionController;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FoldersTransitionController;

    .prologue
    .line 160
    iput-object p1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController$2;->this$0:Lnet/oneplus/h2launcher/FoldersTransitionController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController$2;->this$0:Lnet/oneplus/h2launcher/FoldersTransitionController;

    sget-object v1, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->WORKSPACE:Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FoldersTransitionController;->endAnimation(Lnet/oneplus/h2launcher/FoldersTransitionController$State;)V

    .line 171
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 163
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController$2;->this$0:Lnet/oneplus/h2launcher/FoldersTransitionController;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->access$000(Lnet/oneplus/h2launcher/FoldersTransitionController;)Lnet/oneplus/h2launcher/FoldersContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getFolderScrollBar()Lnet/oneplus/h2launcher/FolderScrollBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController$2;->this$0:Lnet/oneplus/h2launcher/FoldersTransitionController;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FoldersTransitionController;->access$000(Lnet/oneplus/h2launcher/FoldersTransitionController;)Lnet/oneplus/h2launcher/FoldersContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->getFolderScrollBar()Lnet/oneplus/h2launcher/FolderScrollBar;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->cancelShowScrollbarAnimation()V

    .line 166
    :cond_0
    return-void
.end method

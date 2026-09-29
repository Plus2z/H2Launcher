.class Lnet/oneplus/h2launcher/FoldersTransitionController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FoldersTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FoldersTransitionController;->animateToFolders(Landroid/animation/AnimatorSet;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/FoldersTransitionController;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FoldersTransitionController;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FoldersTransitionController;

    .prologue
    .line 124
    iput-object p1, p0, Lnet/oneplus/h2launcher/FoldersTransitionController$1;->this$0:Lnet/oneplus/h2launcher/FoldersTransitionController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController$1;->canceled:Z

    .line 130
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 134
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController$1;->canceled:Z

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersTransitionController$1;->this$0:Lnet/oneplus/h2launcher/FoldersTransitionController;

    sget-object v1, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->FOLDER:Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FoldersTransitionController;->endAnimation(Lnet/oneplus/h2launcher/FoldersTransitionController$State;)V

    goto :goto_0
.end method

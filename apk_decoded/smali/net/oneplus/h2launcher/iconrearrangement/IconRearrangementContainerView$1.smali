.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IconRearrangementContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    .prologue
    .line 85
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method

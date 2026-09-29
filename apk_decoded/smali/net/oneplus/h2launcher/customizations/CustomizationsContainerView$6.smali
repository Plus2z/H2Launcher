.class Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomizationsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->setupSearchBarPreviewContainer(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    .prologue
    .line 399
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$6;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 409
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$6;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$6;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$6;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 402
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$6;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$6;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mSearchBarPreviewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 405
    :cond_0
    return-void
.end method

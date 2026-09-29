.class Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomizationsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->animateToPreview(Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

.field final synthetic val$searchBarPreview:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    .prologue
    .line 334
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$5;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$5;->val$searchBarPreview:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 342
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$5;->val$searchBarPreview:Landroid/view/View;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$5;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 343
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 337
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$5;->val$searchBarPreview:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    return-void
.end method

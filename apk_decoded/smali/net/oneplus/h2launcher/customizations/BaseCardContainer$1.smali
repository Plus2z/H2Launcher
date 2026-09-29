.class Lnet/oneplus/h2launcher/customizations/BaseCardContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseCardContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    .prologue
    .line 114
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$1;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$1;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$1;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$1;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 117
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$1;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$1;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mActionBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_0
    return-void
.end method

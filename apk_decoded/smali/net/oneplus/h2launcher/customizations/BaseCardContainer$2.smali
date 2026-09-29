.class Lnet/oneplus/h2launcher/customizations/BaseCardContainer$2;
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
    .line 142
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$2;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 152
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$2;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$2;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$2;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 145
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$2;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$2;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPagerIndicator:Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->setVisibility(I)V

    .line 148
    :cond_0
    return-void
.end method

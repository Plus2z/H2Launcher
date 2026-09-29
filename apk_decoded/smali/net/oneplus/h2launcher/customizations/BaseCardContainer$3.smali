.class Lnet/oneplus/h2launcher/customizations/BaseCardContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseCardContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z
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
    .line 254
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$3;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 257
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$3;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$3;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$3;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->showCustomizationsClingIfNecessary()V

    .line 260
    :cond_0
    return-void
.end method

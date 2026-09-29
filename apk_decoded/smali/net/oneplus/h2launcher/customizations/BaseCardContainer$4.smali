.class Lnet/oneplus/h2launcher/customizations/BaseCardContainer$4;
.super Ljava/lang/Object;
.source "BaseCardContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$card:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    .prologue
    .line 297
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$4;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$4;->val$card:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 300
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$4;->val$card:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->slideTo(F)V

    .line 301
    return-void
.end method

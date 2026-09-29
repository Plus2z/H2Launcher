.class Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;
.super Ljava/lang/Object;
.source "CustomizationsContainerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->animateToState(Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

.field final synthetic val$endWidth:I

.field final synthetic val$heightOffset:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;II)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    .prologue
    .line 258
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iput p2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;->val$heightOffset:I

    iput p3, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;->val$endWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v8, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 262
    .local v1, "newHeight":I
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 263
    .local v0, "fraction":F
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-object v6, v6, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mState:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v7, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    if-ne v6, v7, :cond_0

    move v4, v0

    .line 264
    .local v4, "percentage":F
    :goto_0
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;->val$heightOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    mul-float v5, v6, v4

    .line 265
    .local v5, "translationY":F
    iget v6, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;->val$heightOffset:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v2, v6

    .line 266
    .local v2, "padding":I
    new-instance v3, Landroid/graphics/Rect;

    neg-int v6, v2

    invoke-direct {v3, v8, v2, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    .local v3, "paddings":Landroid/graphics/Rect;
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget v7, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$4;->val$endWidth:I

    invoke-static {v6, v7, v1, v5, v3}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->access$100(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;IIFLandroid/graphics/Rect;)V

    .line 268
    return-void

    .line 263
    .end local v2    # "padding":I
    .end local v3    # "paddings":Landroid/graphics/Rect;
    .end local v4    # "percentage":F
    .end local v5    # "translationY":F
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v0

    goto :goto_0
.end method

.class Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    .prologue
    .line 2399
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2402
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2403
    .local v0, "r":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget v5, v5, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->mode:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget-boolean v5, v5, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->repeating:Z

    if-eqz v5, :cond_0

    move v1, v6

    .line 2404
    .local v1, "r1":F
    :goto_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget v5, v5, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    mul-float/2addr v5, v1

    sub-float v7, v6, v1

    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget v8, v8, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    mul-float/2addr v7, v8

    add-float v3, v5, v7

    .line 2405
    .local v3, "x":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget v5, v5, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    mul-float/2addr v5, v1

    sub-float v7, v6, v1

    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget v8, v8, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    mul-float/2addr v7, v8

    add-float v4, v5, v7

    .line 2406
    .local v4, "y":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget-object v5, v5, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 2407
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget-object v5, v5, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2408
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget v5, v5, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->finalScale:F

    mul-float/2addr v5, v0

    sub-float/2addr v6, v0

    iget-object v7, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget v7, v7, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v6, v7

    add-float v2, v5, v6

    .line 2409
    .local v2, "s":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget-object v5, v5, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleX(F)V

    .line 2410
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$1;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget-object v5, v5, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleY(F)V

    .line 2411
    return-void

    .end local v1    # "r1":F
    .end local v2    # "s":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    move v1, v0

    .line 2403
    goto :goto_0
.end method

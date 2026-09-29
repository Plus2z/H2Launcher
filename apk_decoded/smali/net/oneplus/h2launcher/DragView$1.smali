.class Lnet/oneplus/h2launcher/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DragView;-><init>(Lnet/oneplus/h2launcher/Launcher;Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DragView;

.field final synthetic val$initialScale:F

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DragView;FF)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DragView;

    .prologue
    .line 102
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    iput p2, p0, Lnet/oneplus/h2launcher/DragView$1;->val$initialScale:F

    iput p3, p0, Lnet/oneplus/h2launcher/DragView$1;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 107
    .local v2, "value":F
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget v3, v3, Lnet/oneplus/h2launcher/DragView;->mOffsetX:F

    neg-float v3, v3

    float-to-int v0, v3

    .line 108
    .local v0, "deltaX":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget v3, v3, Lnet/oneplus/h2launcher/DragView;->mOffsetY:F

    neg-float v3, v3

    float-to-int v1, v3

    .line 110
    .local v1, "deltaY":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget v4, v3, Lnet/oneplus/h2launcher/DragView;->mOffsetX:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Lnet/oneplus/h2launcher/DragView;->mOffsetX:F

    .line 111
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget v4, v3, Lnet/oneplus/h2launcher/DragView;->mOffsetY:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, v3, Lnet/oneplus/h2launcher/DragView;->mOffsetY:F

    .line 112
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget v4, p0, Lnet/oneplus/h2launcher/DragView$1;->val$initialScale:F

    iget v5, p0, Lnet/oneplus/h2launcher/DragView$1;->val$scale:F

    iget v6, p0, Lnet/oneplus/h2launcher/DragView$1;->val$initialScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/DragView;->setScaleX(F)V

    .line 113
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget v4, p0, Lnet/oneplus/h2launcher/DragView$1;->val$initialScale:F

    iget v5, p0, Lnet/oneplus/h2launcher/DragView$1;->val$scale:F

    iget v6, p0, Lnet/oneplus/h2launcher/DragView$1;->val$initialScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/DragView;->setScaleY(F)V

    .line 114
    sget v3, Lnet/oneplus/h2launcher/DragView;->sDragAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    sget v4, Lnet/oneplus/h2launcher/DragView;->sDragAlpha:F

    mul-float/2addr v4, v2

    sub-float v5, v7, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/DragView;->setAlpha(F)V

    .line 118
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragView;->getTranslationX()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/DragView;->setTranslationX(F)V

    .line 122
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/DragView$1;->this$0:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragView;->getTranslationY()F

    move-result v4

    int-to-float v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/DragView;->setTranslationY(F)V

    goto :goto_0
.end method

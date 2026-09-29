.class Lnet/oneplus/h2launcher/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic val$anim:Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 254
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout$1;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iput-object p2, p0, Lnet/oneplus/h2launcher/CellLayout$1;->val$anim:Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    iput p3, p0, Lnet/oneplus/h2launcher/CellLayout$1;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 256
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$1;->val$anim:Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 260
    .local v1, "outline":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 269
    .local v0, "debug":Z
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 274
    .end local v0    # "debug":Z
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$1;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v3, v2, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAlphas:[F

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout$1;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v4

    .line 272
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$1;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$1;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v3, v3, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout$1;->val$thisIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

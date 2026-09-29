.class Lnet/oneplus/h2launcher/DragView$3;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DragView;->animateFilterTo([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DragView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DragView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DragView;

    .prologue
    .line 291
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragView$3;->this$0:Lnet/oneplus/h2launcher/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 295
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView$3;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragView$3;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget-object v2, v2, Lnet/oneplus/h2launcher/DragView;->mCurrentFilter:[F

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 296
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView$3;->this$0:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragView;->invalidate()V

    .line 297
    return-void
.end method

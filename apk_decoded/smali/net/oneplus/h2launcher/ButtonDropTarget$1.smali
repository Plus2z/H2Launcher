.class Lnet/oneplus/h2launcher/ButtonDropTarget$1;
.super Ljava/lang/Object;
.source "ButtonDropTarget.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/ButtonDropTarget;->animateTextColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/ButtonDropTarget;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/ButtonDropTarget;

    .prologue
    .line 177
    iput-object p1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$1;->this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 181
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$1;->this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;

    iget-object v0, v0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$1;->this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;

    iget-object v2, v2, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget$1;->this$0:Lnet/oneplus/h2launcher/ButtonDropTarget;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->invalidate()V

    .line 183
    return-void
.end method

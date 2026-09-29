.class Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    .prologue
    .line 283
    iput-object p1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 286
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget-object v1, v0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget-object v0, v0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mRv:Lnet/oneplus/h2launcher/BaseRecyclerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget-object v1, v1, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget-object v2, v2, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget-object v3, v3, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget v4, v4, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget-object v4, v4, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar$1;->this$0:Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;

    iget v5, v5, Lnet/oneplus/h2launcher/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/BaseRecyclerView;->invalidate(IIII)V

    .line 289
    return-void
.end method

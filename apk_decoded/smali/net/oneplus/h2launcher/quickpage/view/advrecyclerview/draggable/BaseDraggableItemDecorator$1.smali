.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;
.super Ljava/lang/Object;
.source "BaseDraggableItemDecorator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;->moveToDefaultPosition(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translate:Landroid/view/animation/TranslateAnimation;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;Landroid/view/animation/TranslateAnimation;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;

    .prologue
    .line 89
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;->val$translate:Landroid/view/animation/TranslateAnimation;

    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;->val$translate:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseDraggableItemDecorator$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postInvalidateOnAnimation()V

    .line 104
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 108
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 92
    return-void
.end method

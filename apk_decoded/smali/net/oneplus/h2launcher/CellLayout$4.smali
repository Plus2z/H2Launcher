.class Lnet/oneplus/h2launcher/CellLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lnet/oneplus/h2launcher/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/CellLayout$LayoutParams;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 1098
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout$4;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iput-object p2, p0, Lnet/oneplus/h2launcher/CellLayout$4;->val$lp:Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iput-object p3, p0, Lnet/oneplus/h2launcher/CellLayout$4;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$4;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$4;->cancelled:Z

    .line 1114
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1104
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$4;->cancelled:Z

    if-nez v0, :cond_0

    .line 1105
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$4;->val$lp:Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1106
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$4;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1108
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$4;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$4;->val$lp:Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$4;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$4;->val$lp:Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :cond_1
    return-void
.end method

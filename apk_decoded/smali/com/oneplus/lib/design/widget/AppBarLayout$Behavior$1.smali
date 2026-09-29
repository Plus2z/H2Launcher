.class Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetWithDuration(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

.field final synthetic val$child:Lcom/oneplus/lib/design/widget/AppBarLayout;

.field final synthetic val$coordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->this$0:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->val$coordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->val$child:Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 952
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->this$0:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->val$coordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;->val$child:Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 953
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 952
    invoke-virtual {v1, v2, v3, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 954
    return-void
.end method

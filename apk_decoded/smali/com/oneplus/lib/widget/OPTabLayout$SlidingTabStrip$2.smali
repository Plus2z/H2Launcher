.class Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;->this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;->this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;->val$position:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->access$1802(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;I)I

    .line 1461
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;->this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->access$1902(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;F)F

    .line 1462
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;->this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;->val$position:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->access$1802(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;I)I

    .line 1455
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;->this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->access$1902(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;F)F

    .line 1456
    return-void
.end method

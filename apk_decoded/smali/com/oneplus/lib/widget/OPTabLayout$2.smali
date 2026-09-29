.class Lcom/oneplus/lib/widget/OPTabLayout$2;
.super Ljava/lang/Object;
.source "OPTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/OPTabLayout;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPTabLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/OPTabLayout;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$2;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 733
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$2;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->scrollTo(II)V

    .line 734
    return-void
.end method

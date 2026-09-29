.class Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;
.super Ljava/lang/Object;
.source "QuickPageAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->updateItemLayout(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

.field final synthetic val$isCurrentEditItem:Z

.field final synthetic val$item:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 728
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$item:Landroid/view/View;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$isCurrentEditItem:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 731
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 732
    .local v2, "progress":F
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$item:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 733
    .local v0, "alpha":F
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$item:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 735
    .local v1, "padding":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$1300(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 736
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$isCurrentEditItem:Z

    if-eqz v3, :cond_0

    .line 738
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$item:Landroid/view/View;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 739
    invoke-static {v4}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$1400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/2addr v4, v1

    .line 738
    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 740
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$item:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 751
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$item:Landroid/view/View;

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, v0, v4

    mul-float/2addr v4, v2

    sub-float v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 747
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$item:Landroid/view/View;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .line 748
    invoke-static {v4}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$1400(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    sub-int v4, v1, v4

    .line 747
    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 749
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$3;->val$item:Landroid/view/View;

    sub-float v4, v6, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

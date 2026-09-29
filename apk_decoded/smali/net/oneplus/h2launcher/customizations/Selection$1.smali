.class Lnet/oneplus/h2launcher/customizations/Selection$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/Selection;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/Selection;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/Selection;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/Selection;

    .prologue
    .line 55
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/Selection$1;->this$0:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 65
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/Selection$1;->this$0:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/Selection;->access$000(Lnet/oneplus/h2launcher/customizations/Selection;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/Selection$1;->this$0:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/Selection;->access$000(Lnet/oneplus/h2launcher/customizations/Selection;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/Selection$1;->this$0:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/Selection;->access$100(Lnet/oneplus/h2launcher/customizations/Selection;)Z

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/Selection$1;->this$0:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/Selection;->access$000(Lnet/oneplus/h2launcher/customizations/Selection;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/Selection$1;->this$0:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/Selection;->access$000(Lnet/oneplus/h2launcher/customizations/Selection;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :cond_0
    return-void
.end method

.class Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->expand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .prologue
    .line 320
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 323
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$000(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 324
    return-void
.end method

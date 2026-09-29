.class Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->hideMainButton()V
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
    .line 115
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$000(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$102(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Z)Z

    .line 120
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$102(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Z)Z

    .line 125
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$000(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setShadow(Z)V

    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->setMainButtonClickable(Z)V

    .line 127
    return-void
.end method

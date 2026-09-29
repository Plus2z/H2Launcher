.class Lnet/oneplus/h2launcher/PagedView$2;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/PagedView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/PagedView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/PagedView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/PagedView;

    .prologue
    .line 979
    iput-object p1, p0, Lnet/oneplus/h2launcher/PagedView$2;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 989
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 991
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView$2;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/PagedView;->updateMaxScrollX()V

    .line 992
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView$2;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/PagedView;->updateFreescrollBounds()V

    .line 994
    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 983
    return-void
.end method

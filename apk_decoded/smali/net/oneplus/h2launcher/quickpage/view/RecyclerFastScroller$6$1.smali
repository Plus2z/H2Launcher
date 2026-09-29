.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecyclerFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;

    .prologue
    .line 379
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6$1;->this$1:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 382
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 383
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6$1;->this$1:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$6;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAnimatingIn:Z

    .line 384
    return-void
.end method

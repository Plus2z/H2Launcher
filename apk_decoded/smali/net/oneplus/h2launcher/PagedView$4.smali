.class Lnet/oneplus/h2launcher/PagedView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/PagedView;->animateDragViewToOriginalPosition()V
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
    .line 2290
    iput-object p1, p0, Lnet/oneplus/h2launcher/PagedView$4;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2293
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView$4;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/PagedView;->onPostReorderingAnimationCompleted()V

    .line 2294
    return-void
.end method

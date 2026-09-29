.class Lnet/oneplus/h2launcher/DragView$4;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DragView;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DragView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DragView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DragView;

    .prologue
    .line 332
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragView$4;->this$0:Lnet/oneplus/h2launcher/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragView$4;->this$0:Lnet/oneplus/h2launcher/DragView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 335
    return-void
.end method

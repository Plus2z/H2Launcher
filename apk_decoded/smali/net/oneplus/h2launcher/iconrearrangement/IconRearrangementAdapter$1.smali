.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;
.super Ljava/lang/Object;
.source "IconRearrangementAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->runRemoveViewAnimator(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

.field final synthetic val$callback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;

.field final synthetic val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;Lnet/oneplus/h2launcher/ShortcutInfo;Ljava/lang/Runnable;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    .prologue
    .line 167
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$endRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$callback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    iput-object p5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 170
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 174
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 175
    .local v0, "index":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 176
    if-ltz v0, :cond_1

    .line 177
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;->onItemChanged()V

    .line 180
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->notifyItemRemoved(I)V

    .line 182
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 185
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$callback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$task:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 186
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$callback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 188
    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 192
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 196
    return-void
.end method

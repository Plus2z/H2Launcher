.class Lnet/oneplus/h2launcher/Workspace$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 943
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$6;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$6;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 946
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$6;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$6;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 949
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$6;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$6;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 952
    :cond_1
    return-void
.end method

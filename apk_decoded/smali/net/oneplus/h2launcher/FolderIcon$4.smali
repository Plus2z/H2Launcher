.class Lnet/oneplus/h2launcher/FolderIcon$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderIcon;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderIcon;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    .line 788
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon$4;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    iput-object p2, p0, Lnet/oneplus/h2launcher/FolderIcon$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 795
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$4;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimating:Z

    .line 796
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 799
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 791
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$4;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimating:Z

    .line 792
    return-void
.end method

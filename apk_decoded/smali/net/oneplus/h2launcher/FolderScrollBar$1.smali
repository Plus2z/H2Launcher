.class Lnet/oneplus/h2launcher/FolderScrollBar$1;
.super Ljava/lang/Object;
.source "FolderScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderScrollBar;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderScrollBar;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderScrollBar;

    .prologue
    .line 68
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderScrollBar$1;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$1;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->PLAY_HIDE_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$002(Lnet/oneplus/h2launcher/FolderScrollBar;Lnet/oneplus/h2launcher/FolderScrollBar$State;)Lnet/oneplus/h2launcher/FolderScrollBar$State;

    .line 72
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$1;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xe1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/FolderScrollBar$1$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/FolderScrollBar$1$1;-><init>(Lnet/oneplus/h2launcher/FolderScrollBar$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 90
    return-void
.end method

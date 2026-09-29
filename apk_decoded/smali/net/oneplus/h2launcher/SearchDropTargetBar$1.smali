.class Lnet/oneplus/h2launcher/SearchDropTargetBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchDropTargetBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/SearchDropTargetBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/SearchDropTargetBar;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/SearchDropTargetBar;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/SearchDropTargetBar;

    .prologue
    .line 132
    iput-object p1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar$1;->this$0:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 141
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar$1;->this$0:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-object v0, v0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar$1;->this$0:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-object v0, v0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    iget-object v1, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar$1;->this$0:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 144
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar$1;->this$0:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    iget-object v0, v0, Lnet/oneplus/h2launcher/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method

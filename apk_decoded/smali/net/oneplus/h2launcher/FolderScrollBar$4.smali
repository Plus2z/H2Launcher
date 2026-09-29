.class Lnet/oneplus/h2launcher/FolderScrollBar$4;
.super Ljava/lang/Object;
.source "FolderScrollBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderScrollBar;->playShowAnimation()V
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
    .line 178
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderScrollBar$4;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 185
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$4;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->SHOW:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$002(Lnet/oneplus/h2launcher/FolderScrollBar;Lnet/oneplus/h2launcher/FolderScrollBar$State;)Lnet/oneplus/h2launcher/FolderScrollBar$State;

    .line 186
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 194
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 181
    return-void
.end method

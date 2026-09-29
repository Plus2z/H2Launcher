.class Lnet/oneplus/h2launcher/FolderScrollBar$1$1;
.super Ljava/lang/Object;
.source "FolderScrollBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderScrollBar$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/FolderScrollBar$1;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderScrollBar$1;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/FolderScrollBar$1;

    .prologue
    .line 72
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderScrollBar$1$1;->this$1:Lnet/oneplus/h2launcher/FolderScrollBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 84
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$1$1;->this$1:Lnet/oneplus/h2launcher/FolderScrollBar$1;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderScrollBar$1;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$002(Lnet/oneplus/h2launcher/FolderScrollBar;Lnet/oneplus/h2launcher/FolderScrollBar$State;)Lnet/oneplus/h2launcher/FolderScrollBar$State;

    .line 80
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 88
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 75
    return-void
.end method

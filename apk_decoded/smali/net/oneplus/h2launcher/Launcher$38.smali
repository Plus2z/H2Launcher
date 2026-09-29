.class Lnet/oneplus/h2launcher/Launcher$38;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->shrinkAndFadeInFolderIcon(Lnet/oneplus/h2launcher/FolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$cl:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic val$fi:Lnet/oneplus/h2launcher/FolderIcon;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/FolderIcon;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 4966
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$38;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$38;->val$cl:Lnet/oneplus/h2launcher/CellLayout;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$38;->val$fi:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 4969
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$38;->val$cl:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 4970
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$38;->val$cl:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->clearFolderLeaveBehind()V

    .line 4972
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$38;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$38;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 4973
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$38;->val$fi:Lnet/oneplus/h2launcher/FolderIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderIcon;->setVisibility(I)V

    .line 4975
    :cond_0
    return-void
.end method

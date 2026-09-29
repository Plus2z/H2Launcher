.class Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->animateToNaturalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .prologue
    .line 325
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$4;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 328
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$4;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$4;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$4;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->hideFolderAccept(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$4;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$4;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    :cond_1
    return-void
.end method

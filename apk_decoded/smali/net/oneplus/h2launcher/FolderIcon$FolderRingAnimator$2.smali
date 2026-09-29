.class Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->animateToAcceptState()V
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
    .line 296
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$2;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 299
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$2;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$2;->this$0:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    iget-object v0, v0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    :cond_0
    return-void
.end method

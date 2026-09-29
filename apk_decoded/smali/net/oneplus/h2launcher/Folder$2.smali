.class Lnet/oneplus/h2launcher/Folder$2;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Folder;->adjustFolderPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 394
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$2;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 397
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$2;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v1, v0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/FolderContent;->setMinimumHeight(I)V

    .line 398
    return-void
.end method

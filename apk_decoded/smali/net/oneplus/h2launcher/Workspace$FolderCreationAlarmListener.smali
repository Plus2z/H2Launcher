.class Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field layout:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/CellLayout;II)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;
    .param p2, "layout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I

    .prologue
    .line 3653
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3654
    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->layout:Lnet/oneplus/h2launcher/CellLayout;

    .line 3655
    iput p3, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 3656
    iput p4, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->cellY:I

    .line 3657
    return-void
.end method


# virtual methods
.method public onAlarm(Lnet/oneplus/h2launcher/Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lnet/oneplus/h2launcher/Alarm;

    .prologue
    .line 3660
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    .line 3662
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3664
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    new-instance v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/FolderIcon;)V

    iput-object v1, v0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .line 3665
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget v1, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v2, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 3666
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->layout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->setCellLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3667
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 3668
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->layout:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->showFolderAccept(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;)V

    .line 3669
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->layout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->clearDragOutlines()V

    .line 3670
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->this$0:Lnet/oneplus/h2launcher/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setDragMode(I)V

    .line 3671
    return-void
.end method

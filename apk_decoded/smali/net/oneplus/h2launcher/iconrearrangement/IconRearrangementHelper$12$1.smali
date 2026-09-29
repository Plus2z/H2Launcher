.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;

.field final synthetic val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

.field final synthetic val$shortcutInfos:Ljava/util/ArrayList;

.field final synthetic val$targetFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

.field final synthetic val$task:Ljava/lang/Runnable;

.field final synthetic val$workspace:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;Lnet/oneplus/h2launcher/FolderIcon;Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;

    .prologue
    .line 455
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$targetFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$workspace:Lnet/oneplus/h2launcher/Workspace;

    iput-object p4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    iput-object p5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$shortcutInfos:Ljava/util/ArrayList;

    iput-object p6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 458
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 462
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$targetFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/FolderIcon;->setAlpha(F)V

    .line 463
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$targetFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    .line 464
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$workspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->invalidate()V

    .line 465
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;

    iget-object v1, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->clearAllItem()V

    .line 466
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setEnableNoAnimation(Z)V

    .line 467
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setCreateTextVisibility(I)V

    .line 468
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setNewFolderTextVisibility(I)V

    .line 469
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setFakeIconDrawable([Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$shortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 471
    .local v0, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;

    iget-object v2, v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 473
    .end local v0    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;

    iget-object v1, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getRecyclerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;

    iget-object v1, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 479
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 483
    return-void
.end method

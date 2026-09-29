.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addShortcut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 105
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 107
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 108
    .local v2, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;

    .line 109
    .local v7, "positionInfo":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    if-nez v7, :cond_1

    .line 110
    new-instance v7, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;

    .end local v7    # "positionInfo":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-direct {v7, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    .line 111
    .restart local v7    # "positionInfo":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 118
    .local v6, "parent":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 119
    .local v4, "parentLayout":Lnet/oneplus/h2launcher/CellLayout;
    :goto_0
    if-eqz v6, :cond_2

    instance-of v0, v6, Lnet/oneplus/h2launcher/Workspace;

    if-nez v0, :cond_2

    instance-of v0, v6, Lnet/oneplus/h2launcher/Folder;

    if-nez v0, :cond_2

    .line 120
    instance-of v0, v6, Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_0

    move-object v4, v6

    .line 121
    check-cast v4, Lnet/oneplus/h2launcher/CellLayout;

    .line 123
    :cond_0
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_0

    .line 113
    .end local v4    # "parentLayout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 150
    :goto_1
    return-void

    .line 126
    .restart local v4    # "parentLayout":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v6    # "parent":Landroid/view/ViewParent;
    :cond_2
    if-nez v6, :cond_3

    .line 127
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 130
    :cond_3
    instance-of v0, v6, Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->val$view:Landroid/view/View;

    invoke-static {v0, v1, v2, v4, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$400(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)V

    .line 144
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2$1;

    invoke-direct {v1, p0, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2$1;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;Lnet/oneplus/h2launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v0, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->addShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Z

    goto :goto_1

    .line 132
    :cond_5
    instance-of v0, v6, Lnet/oneplus/h2launcher/Folder;

    if-eqz v0, :cond_6

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->val$view:Landroid/view/View;

    move-object v3, v6

    check-cast v3, Lnet/oneplus/h2launcher/Folder;

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$500(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/Folder;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 139
    :cond_6
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

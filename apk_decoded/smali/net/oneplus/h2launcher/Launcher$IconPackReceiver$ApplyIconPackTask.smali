.class Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyIconPackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/util/Pair",
        "<",
        "Landroid/view/View;",
        "Lnet/oneplus/h2launcher/ItemInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mApplyIconPackDialog:Landroid/app/ProgressDialog;

.field private mPreviewOnly:Z

.field final synthetic this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;Z)V
    .locals 0
    .param p2, "previewOnly"    # Z

    .prologue
    .line 5798
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5799
    iput-boolean p2, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mPreviewOnly:Z

    .line 5800
    return-void
.end method

.method static synthetic access$3400(Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 5794
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->updateDesktopItems(Ljava/util/List;)V

    return-void
.end method

.method private dismissProgressDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 5900
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mApplyIconPackDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mApplyIconPackDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5901
    :cond_0
    const-string v1, "Launcher"

    const-string v2, "apply icon pack dialog is not valid or showing"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5917
    :goto_0
    return-void

    .line 5906
    :cond_1
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$2;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$2;-><init>(Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;Ljava/util/List;)V

    .line 5914
    .local v0, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mApplyIconPackDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5915
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mApplyIconPackDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5916
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mApplyIconPackDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private updateDesktopItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 5870
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 5871
    .local v0, "shortcut":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v1, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;

    invoke-direct {v1, p0, v0}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$1;-><init>(Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;Landroid/util/Pair;)V

    .line 5888
    .local v1, "updateItemRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v3

    invoke-static {}, Lnet/oneplus/h2launcher/Launcher;->access$3300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Object;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5891
    .end local v0    # "shortcut":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v1    # "updateItemRunnable":Ljava/lang/Runnable;
    :cond_0
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mPreviewOnly:Z

    if-nez v2, :cond_2

    .line 5892
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showAllApps()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5893
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/AllAppsViewController;->notifyDataSetChanged()V

    .line 5895
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->onComponentChanged()V

    .line 5897
    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5794
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5812
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Launcher;->access$2500(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/AssetCache;->changeAssetPack()V

    .line 5815
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mPreviewOnly:Z

    if-eqz v4, :cond_2

    .line 5817
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v5, v5, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v5, v5, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/Workspace;->getAllShortcutsInPage(I)Ljava/util/List;

    move-result-object v3

    .line 5824
    .local v3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 5825
    .local v2, "shortcut":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5852
    .end local v2    # "shortcut":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_1
    :goto_2
    return-object v3

    .line 5820
    .end local v3    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    :cond_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->getAllShortcuts()Ljava/util/List;

    move-result-object v3

    .line 5821
    .restart local v3    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Launcher;->access$2500(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/AssetCache;->updateDbIconsForIconPackChanged()V

    goto :goto_0

    .line 5828
    .restart local v2    # "shortcut":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_3
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v4, :cond_0

    .line 5829
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v4, v4, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;

    if-eqz v4, :cond_4

    .line 5830
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    invoke-interface {v4}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->refreshConfig()V

    goto :goto_1

    .line 5832
    :cond_4
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lnet/oneplus/h2launcher/ShortcutInfo;

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v6, v6, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v6}, Lnet/oneplus/h2launcher/Launcher;->access$2500(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/ShortcutInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5833
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 5834
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .line 5836
    .local v1, "iconDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 5845
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "iconDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .end local v2    # "shortcut":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_5
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mPreviewOnly:Z

    if-nez v4, :cond_1

    .line 5846
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/oos/StyleManager;->showAllApps()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5847
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v5, v5, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v5}, Lnet/oneplus/h2launcher/Launcher;->access$2500(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lnet/oneplus/h2launcher/AllAppsViewController;->updateAllAppsEntries(Lnet/oneplus/h2launcher/AssetCache;Ljava/lang/String;Z)V

    goto :goto_2

    .line 5849
    :cond_6
    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Launcher;->access$1700(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->onComponentChanged()V

    goto/16 :goto_2
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5794
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->onCancelled(Ljava/util/List;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 5866
    .local p1, "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->dismissProgressDialog(Ljava/util/List;)V

    .line 5867
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5794
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 5857
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mPreviewOnly:Z

    if-nez v0, :cond_0

    .line 5858
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->dismissProgressDialog(Ljava/util/List;)V

    .line 5862
    :goto_0
    return-void

    .line 5860
    :cond_0
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->updateDesktopItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 5804
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mPreviewOnly:Z

    if-nez v1, :cond_0

    .line 5805
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const v2, 0x7f0b00c5

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5806
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->this$1:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->mApplyIconPackDialog:Landroid/app/ProgressDialog;

    .line 5808
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

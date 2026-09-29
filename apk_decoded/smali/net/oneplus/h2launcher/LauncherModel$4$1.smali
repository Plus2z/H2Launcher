.class Lnet/oneplus/h2launcher/LauncherModel$4$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$4;

.field final synthetic val$addedShortcutsFinal:Ljava/util/ArrayList;

.field final synthetic val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$4;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$4;

    .prologue
    .line 599
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$4;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 601
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$4;

    iget-object v8, v8, Lnet/oneplus/h2launcher/LauncherModel$4;->this$0:Lnet/oneplus/h2launcher/LauncherModel;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/LauncherModel;->getCallback()Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v2

    .line 602
    .local v2, "cb":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$4;

    iget-object v8, v8, Lnet/oneplus/h2launcher/LauncherModel$4;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    if-ne v8, v2, :cond_3

    if-eqz v2, :cond_3

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v0, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v1, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 606
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/ItemInfo;

    .line 607
    .local v4, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-wide v6, v4, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 608
    .local v6, "lastScreenId":J
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    .line 609
    .local v3, "i":Lnet/oneplus/h2launcher/ItemInfo;
    iget-wide v10, v3, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    cmp-long v9, v10, v6

    if-nez v9, :cond_1

    .line 610
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :goto_1
    instance-of v9, v3, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v9, :cond_0

    move-object v5, v3

    .line 615
    check-cast v5, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 616
    .local v5, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v9, "com.android.stk"

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 617
    const-string v9, "Launcher.Model"

    const-string v10, "addAndBindAddedWorkspaceItems STK try to bindView"

    invoke-static {v9, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    .end local v5    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 622
    .end local v3    # "i":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v6    # "lastScreenId":J
    :cond_2
    iget-object v8, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->this$1:Lnet/oneplus/h2launcher/LauncherModel$4;

    iget-object v8, v8, Lnet/oneplus/h2launcher/LauncherModel$4;->val$callbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$4$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v1, v0, v10}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 625
    .end local v0    # "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v1    # "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_3
    return-void
.end method

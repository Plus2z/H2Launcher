.class Lnet/oneplus/h2launcher/Workspace$25;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$children:Ljava/util/HashMap;

.field final synthetic val$childrenToRemove:Ljava/util/ArrayList;

.field final synthetic val$componentNames:Ljava/util/HashSet;

.field final synthetic val$folderAppsToRemove:Ljava/util/HashMap;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4622
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$25;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$componentNames:Ljava/util/HashSet;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object p4, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    iput-object p5, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$childrenToRemove:Ljava/util/ArrayList;

    iput-object p6, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$children:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "parent"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x1

    .line 4626
    instance-of v3, p1, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v3, :cond_1

    .line 4627
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$componentNames:Ljava/util/HashSet;

    invoke-virtual {v3, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p2, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 4628
    check-cast v1, Lnet/oneplus/h2launcher/FolderInfo;

    .line 4630
    .local v1, "folder":Lnet/oneplus/h2launcher/FolderInfo;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4631
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4636
    .local v0, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    :goto_0
    check-cast p2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .end local p2    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4637
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[removeItemsByComponentName] appsToRemove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4647
    .end local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .end local v1    # "folder":Lnet/oneplus/h2launcher/FolderInfo;
    :goto_1
    return v2

    .line 4633
    .restart local v1    # "folder":Lnet/oneplus/h2launcher/FolderInfo;
    .restart local p2    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4634
    .restart local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4641
    .end local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .end local v1    # "folder":Lnet/oneplus/h2launcher/FolderInfo;
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$componentNames:Ljava/util/HashSet;

    invoke-virtual {v3, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p2, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4642
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$childrenToRemove:Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$25;->val$children:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4643
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[removeItemsByComponentName] ShortcutInfo, cn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4647
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.class Lnet/oneplus/h2launcher/Launcher$36;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->startApplicationEditDialog(Landroid/content/ComponentName;Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$appLabel:Landroid/widget/EditText;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$enableEditImage:Z

.field final synthetic val$enableEditLabel:Z

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;ZLnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/ComponentName;ZLandroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 4580
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$enableEditImage:Z

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object p4, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$componentName:Landroid/content/ComponentName;

    iput-boolean p5, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$enableEditLabel:Z

    iput-object p6, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$appLabel:Landroid/widget/EditText;

    iput-object p7, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 4583
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$2300(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$2400(Lnet/oneplus/h2launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$enableEditImage:Z

    if-eqz v2, :cond_1

    .line 4584
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Launcher;->access$2600(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    .line 4585
    invoke-static {v5}, Lnet/oneplus/h2launcher/Launcher;->access$2300(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v6}, Lnet/oneplus/h2launcher/Launcher;->access$2200(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v6

    .line 4584
    invoke-static {v2, v3, v4, v5, v6}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->setCustomIconForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4586
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$2500(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/AssetCache;->changeCustomIcon(Lnet/oneplus/h2launcher/compat/UserHandleCompat;Landroid/content/ComponentName;)V

    .line 4589
    :cond_1
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$enableEditLabel:Z

    if-eqz v2, :cond_2

    .line 4590
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    .line 4591
    invoke-static {v4}, Lnet/oneplus/h2launcher/Launcher;->access$2600(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$appLabel:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4590
    invoke-static {v2, v3, v4, v5}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->setCustomLabelForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;)V

    .line 4594
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$2500(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Launcher;->access$2800(Lnet/oneplus/h2launcher/Launcher;)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/AssetCache;->updateIconsForComponentName(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4599
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    const/high16 v3, -0x80000000

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v5}, Lnet/oneplus/h2launcher/Launcher;->access$2600(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/oneplus/h2launcher/Workspace;->updateShortcutsWithComponentName(ILnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 4600
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Launcher;->access$2500(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Launcher;->access$2600(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lnet/oneplus/h2launcher/AllAppsViewController;->updateAllAppsEntries(Lnet/oneplus/h2launcher/AssetCache;Ljava/lang/String;Z)V

    .line 4605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4606
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4607
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.USER"

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4608
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4609
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Launcher;->createAppDragInfo(Landroid/content/Intent;)Lnet/oneplus/h2launcher/AppInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4612
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/AllAppsViewController;->updateApps(Ljava/util/ArrayList;)V

    .line 4613
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher;->mAllAppsViewController:Lnet/oneplus/h2launcher/AllAppsViewController;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/AllAppsViewController;->notifyDataSetChanged()V

    .line 4614
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->onComponentChanged()V

    .line 4615
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$1700(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$componentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->updateAppInfo(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4617
    const-string v2, "Launcher"

    const-string v3, "[edit app] pkgName:%s label:%s, ResPkg:%s ResName:%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher$36;->val$appLabel:Landroid/widget/EditText;

    .line 4618
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v6}, Lnet/oneplus/h2launcher/Launcher;->access$2300(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v6}, Lnet/oneplus/h2launcher/Launcher;->access$2200(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4617
    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4620
    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$36;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$2900(Lnet/oneplus/h2launcher/Launcher;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 4621
    return-void
.end method

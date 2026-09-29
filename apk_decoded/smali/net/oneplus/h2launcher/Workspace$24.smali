.class Lnet/oneplus/h2launcher/Workspace$24;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->removeItemsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$cns:Ljava/util/HashSet;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4576
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$24;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$24;->val$packageNames:Ljava/util/HashSet;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$24;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object p4, p0, Lnet/oneplus/h2launcher/Workspace$24;->val$cns:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "parent"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 4580
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$24;->val$packageNames:Ljava/util/HashSet;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$24;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 4581
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4582
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$24;->val$cns:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4583
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeItemsByPackageName] cn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4584
    const/4 v0, 0x1

    .line 4586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

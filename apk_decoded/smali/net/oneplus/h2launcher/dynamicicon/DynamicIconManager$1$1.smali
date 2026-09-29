.class Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1$1;
.super Ljava/lang/Object;
.source "DynamicIconManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;->onNeedAnimateIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;

    .prologue
    .line 59
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1$1;->this$1:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1$1;->this$1:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;

    iget-object v1, v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    invoke-static {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->access$000(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1$1;->this$1:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;

    iget-object v1, v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    invoke-static {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->access$000(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1$1;->this$1:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;

    iget-object v1, v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    invoke-static {v1}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;->access$000(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    .line 64
    .local v0, "launcher":Lnet/oneplus/h2launcher/Launcher;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->doWorkspaceOrFolderIconAnimation()V

    .line 66
    .end local v0    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_0
    return-void
.end method

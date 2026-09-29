.class Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;
.super Ljava/lang/Object;
.source "LauncherAccessibilityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

.field final synthetic val$coordinates:[I

.field final synthetic val$item:Lnet/oneplus/h2launcher/ItemInfo;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;Lnet/oneplus/h2launcher/ItemInfo;J[I)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    .prologue
    .line 152
    iput-object p1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide p3, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    iput-object p5, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v2, -0x64

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 156
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    instance-of v0, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppInfo;->makeShortcut()Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v1

    .line 158
    .local v1, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-wide v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    aget v6, v6, v8

    iget-object v7, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    aget v7, v7, v11

    invoke-static/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 162
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v9, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v9, v8, v2, v11}, Lnet/oneplus/h2launcher/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 172
    .end local v1    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v9    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    const v2, 0x7f0b0072

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 173
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    instance-of v0, v0, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v1, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    .line 167
    .local v1, "info":Lnet/oneplus/h2launcher/PendingAddItemInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v10

    .line 168
    .local v10, "workspace":Lnet/oneplus/h2launcher/Workspace;
    iget-wide v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    invoke-virtual {v10, v4, v5}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    invoke-virtual {v10, v0}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 169
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-wide v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    iget v7, v1, Lnet/oneplus/h2launcher/PendingAddItemInfo;->spanX:I

    iget v8, v1, Lnet/oneplus/h2launcher/PendingAddItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v8}, Lnet/oneplus/h2launcher/Launcher;->addPendingItem(Lnet/oneplus/h2launcher/PendingAddItemInfo;JJ[III)V

    goto :goto_0
.end method

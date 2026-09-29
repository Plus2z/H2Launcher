.class Lnet/oneplus/h2launcher/Workspace$27;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->updateShortcutsInPage(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4780
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$27;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$27;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 11
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 4783
    instance-of v9, p1, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v9, :cond_4

    instance-of v9, p2, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v9, :cond_4

    move-object v7, p2

    .line 4784
    check-cast v7, Lnet/oneplus/h2launcher/FolderIcon;

    .line 4785
    .local v7, "folderIcon":Lnet/oneplus/h2launcher/FolderIcon;
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v5

    .line 4786
    .local v5, "folder":Lnet/oneplus/h2launcher/Folder;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v6

    .line 4788
    .local v6, "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4789
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "childIdx":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4790
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4791
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 4792
    .local v3, "childTag":Ljava/lang/Object;
    instance-of v9, v3, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v9, :cond_1

    instance-of v9, v0, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v9, :cond_1

    move-object v8, v3

    .line 4793
    check-cast v8, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4794
    .local v8, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 4795
    .local v4, "component":Landroid/content/ComponentName;
    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace$27;->val$pkgName:Ljava/lang/String;

    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 4796
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$27;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4797
    :cond_0
    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace$27;->this$0:Lnet/oneplus/h2launcher/Workspace;

    check-cast v0, Lnet/oneplus/h2launcher/BubbleTextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v9, v0, v8}, Lnet/oneplus/h2launcher/Workspace;->access$100(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 4789
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v8    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4801
    .end local v3    # "childTag":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Folder;->setScaledSize()V

    .line 4802
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/FolderIcon;->setScaledLayout()V

    .line 4803
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    .line 4815
    .end local v1    # "childCount":I
    .end local v2    # "childIdx":I
    .end local v5    # "folder":Lnet/oneplus/h2launcher/Folder;
    .end local v6    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "folderIcon":Lnet/oneplus/h2launcher/FolderIcon;
    .end local p1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local p2    # "view":Landroid/view/View;
    :cond_3
    :goto_1
    const/4 v9, 0x0

    return v9

    .line 4804
    .restart local p1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4
    instance-of v9, p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v9, :cond_3

    instance-of v9, p2, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v9, :cond_3

    move-object v8, p1

    .line 4805
    check-cast v8, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4806
    .restart local v8    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 4810
    .restart local v4    # "component":Landroid/content/ComponentName;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 4811
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/Workspace$27;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4812
    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace$27;->this$0:Lnet/oneplus/h2launcher/Workspace;

    check-cast p2, Lnet/oneplus/h2launcher/BubbleTextView;

    .end local p2    # "view":Landroid/view/View;
    check-cast p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .end local p1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-static {v9, p2, p1}, Lnet/oneplus/h2launcher/Workspace;->access$100(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ShortcutInfo;)V

    goto :goto_1
.end method

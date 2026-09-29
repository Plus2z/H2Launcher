.class Lnet/oneplus/h2launcher/IconCache$4;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/IconCache;->updateIconInBackground(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/IconCache;

.field final synthetic val$caller:Lnet/oneplus/h2launcher/BubbleTextView;

.field final synthetic val$info:Lnet/oneplus/h2launcher/ItemInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/IconCache;Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/BubbleTextView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/IconCache;

    .prologue
    .line 745
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache$4;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iput-object p2, p0, Lnet/oneplus/h2launcher/IconCache$4;->val$info:Lnet/oneplus/h2launcher/ItemInfo;

    iput-object p3, p0, Lnet/oneplus/h2launcher/IconCache$4;->val$caller:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 749
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache$4;->val$info:Lnet/oneplus/h2launcher/ItemInfo;

    instance-of v2, v2, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v2, :cond_1

    .line 750
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$4;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache$4;->val$info:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Z)V

    .line 760
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache$4;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v2, v2, Lnet/oneplus/h2launcher/IconCache;->mMainThreadExecutor:Lnet/oneplus/h2launcher/MainThreadExecutor;

    new-instance v3, Lnet/oneplus/h2launcher/IconCache$4$1;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/IconCache$4$1;-><init>(Lnet/oneplus/h2launcher/IconCache$4;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 767
    return-void

    .line 751
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache$4;->val$info:Lnet/oneplus/h2launcher/ItemInfo;

    instance-of v2, v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_3

    .line 752
    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$4;->val$info:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 753
    .local v1, "st":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v3, p0, Lnet/oneplus/h2launcher/IconCache$4;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    :goto_1
    iget-object v4, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3, v1, v2, v4, v5}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Intent;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lnet/oneplus/h2launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_1

    .line 756
    .end local v1    # "st":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache$4;->val$info:Lnet/oneplus/h2launcher/ItemInfo;

    instance-of v2, v2, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    if-eqz v2, :cond_0

    .line 757
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$4;->val$info:Lnet/oneplus/h2launcher/ItemInfo;

    check-cast v0, Lnet/oneplus/h2launcher/model/PackageItemInfo;

    .line 758
    .local v0, "pti":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconCache$4;->this$0:Lnet/oneplus/h2launcher/IconCache;

    iget-object v3, v0, Lnet/oneplus/h2launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lnet/oneplus/h2launcher/model/PackageItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v4, v5, v0}, Lnet/oneplus/h2launcher/IconCache;->getTitleAndIconForApp(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZLnet/oneplus/h2launcher/model/PackageItemInfo;)V

    goto :goto_0
.end method

.class Lnet/oneplus/h2launcher/Workspace$23;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->disableShortcutsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$reason:I

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4527
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$23;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$23;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$23;->val$packageNames:Ljava/util/HashSet;

    iput p4, p0, Lnet/oneplus/h2launcher/Workspace$23;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 4530
    instance-of v3, p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 4531
    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4532
    .local v2, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4533
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$23;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v4, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$23;->val$packageNames:Ljava/util/HashSet;

    .line 4534
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4535
    iget v3, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    iget v4, p0, Lnet/oneplus/h2launcher/Workspace$23;->val$reason:I

    or-int/2addr v3, v4

    iput v3, v2, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled:I

    move-object v1, p2

    .line 4536
    check-cast v1, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 4537
    .local v1, "shortcut":Lnet/oneplus/h2launcher/BubbleTextView;
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 4539
    if-eqz p3, :cond_0

    .line 4540
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 4545
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "shortcut":Lnet/oneplus/h2launcher/BubbleTextView;
    .end local v2    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

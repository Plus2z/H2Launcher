.class Lnet/oneplus/h2launcher/Workspace$30;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->updateRestoreItems(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 5002
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$30;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$30;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 5005
    instance-of v0, p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$30;->val$updates:Ljava/util/HashSet;

    .line 5006
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5007
    check-cast p2, Lnet/oneplus/h2launcher/BubbleTextView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->applyState(Z)V

    .line 5014
    :cond_0
    :goto_0
    return v1

    .line 5008
    .restart local p2    # "v":Landroid/view/View;
    :cond_1
    instance-of v0, p2, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$30;->val$updates:Ljava/util/HashSet;

    .line 5010
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5011
    check-cast p2, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->applyState()V

    goto :goto_0
.end method

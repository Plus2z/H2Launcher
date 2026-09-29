.class Lnet/oneplus/h2launcher/Workspace$26;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V
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
    .line 4749
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$26;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$26;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4752
    instance-of v6, p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v6, :cond_0

    instance-of v6, p2, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace$26;->val$updates:Ljava/util/HashSet;

    .line 4753
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, p1

    .line 4754
    check-cast v3, Lnet/oneplus/h2launcher/ShortcutInfo;

    .local v3, "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    move-object v2, p2

    .line 4755
    check-cast v2, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 4756
    .local v2, "shortcut":Lnet/oneplus/h2launcher/BubbleTextView;
    invoke-static {v2}, Lnet/oneplus/h2launcher/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4757
    .local v0, "oldIcon":Landroid/graphics/drawable/Drawable;
    instance-of v6, v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    if-eqz v6, :cond_1

    check-cast v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    .line 4758
    .end local v0    # "oldIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 4759
    .local v1, "oldPromiseState":Z
    :goto_0
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v6

    if-eq v6, v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;Z)V

    .line 4761
    if-eqz p3, :cond_0

    .line 4762
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 4766
    .end local v1    # "oldPromiseState":Z
    .end local v2    # "shortcut":Lnet/oneplus/h2launcher/BubbleTextView;
    .end local v3    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    return v5

    .restart local v2    # "shortcut":Lnet/oneplus/h2launcher/BubbleTextView;
    .restart local v3    # "si":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    move v1, v5

    .line 4758
    goto :goto_0

    .restart local v1    # "oldPromiseState":Z
    :cond_2
    move v4, v5

    .line 4759
    goto :goto_1
.end method

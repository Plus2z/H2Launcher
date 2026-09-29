.class Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$2;
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

.field final synthetic val$item:Lnet/oneplus/h2launcher/ItemInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    .prologue
    .line 190
    iput-object p1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$2;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$2;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$2;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$2;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v1, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 197
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$2;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 198
    return-void
.end method

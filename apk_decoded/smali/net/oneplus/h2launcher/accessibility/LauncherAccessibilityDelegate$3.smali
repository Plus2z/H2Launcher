.class Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;
.super Ljava/lang/Object;
.source "LauncherAccessibilityDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$host:Landroid/view/View;

.field final synthetic val$info:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;Ljava/util/ArrayList;Landroid/view/View;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    .prologue
    .line 210
    iput-object p1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;->val$actions:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;->val$host:Landroid/view/View;

    iput-object p4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;->val$info:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 214
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;->this$0:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;->val$host:Landroid/view/View;

    iget-object v3, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;->val$info:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-virtual {v1, v0, v2, v3}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    return-void
.end method

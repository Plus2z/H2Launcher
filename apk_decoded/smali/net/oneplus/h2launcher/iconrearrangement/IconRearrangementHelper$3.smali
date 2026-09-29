.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addShortcutFromWorkspace(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field final synthetic val$parentLayout:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic val$task:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/CellLayout;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 164
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->val$parentLayout:Lnet/oneplus/h2launcher/CellLayout;

    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->val$view:Landroid/view/View;

    iput-object p4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->val$parentLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->val$parentLayout:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$600(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

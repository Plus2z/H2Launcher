.class Lnet/oneplus/h2launcher/Workspace$15;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->animateWidgetDrop(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4018
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$15;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$15;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$15;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4021
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$15;->val$finalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4022
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$15;->val$finalView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4024
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$15;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 4025
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$15;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4027
    :cond_1
    return-void
.end method

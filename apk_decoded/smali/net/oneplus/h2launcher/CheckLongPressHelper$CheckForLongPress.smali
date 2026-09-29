.class Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CheckLongPressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/CheckLongPressHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/CheckLongPressHelper;

    .prologue
    .line 31
    iput-object p1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mHasPerformedLongPress:Z

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 41
    .local v0, "handled":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 43
    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 46
    .end local v0    # "handled":Z
    :cond_0
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/CheckLongPressHelper$CheckForLongPress;->this$0:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_0
.end method

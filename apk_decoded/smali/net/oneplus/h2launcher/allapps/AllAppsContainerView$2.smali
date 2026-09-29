.class Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$2;
.super Ljava/lang/Object;
.source "AllAppsContainerView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    .prologue
    .line 325
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$2;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 328
    if-eqz p2, :cond_0

    .line 329
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$2;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->requestFocus()Z

    .line 331
    :cond_0
    return-void
.end method

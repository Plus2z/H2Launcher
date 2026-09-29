.class Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$1;
.super Ljava/lang/Object;
.source "AllAppsContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;
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
    .line 172
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 176
    .local v0, "searchIntent":Landroid/content/Intent;
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    iget-object v1, v1, Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.class Lnet/oneplus/h2launcher/Launcher$14;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 2194
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$14;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2197
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$14;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2198
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$14;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->onClickSortButton()V

    .line 2199
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v0

    const-string v1, "launcher.actions"

    const-string v2, "icon_align"

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    :cond_0
    return-void
.end method

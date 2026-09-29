.class Lnet/oneplus/h2launcher/Launcher$19;
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
    .line 2263
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$19;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2266
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$19;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2267
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$19;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Launcher;->onClickSettingsButton(Landroid/view/View;)V

    .line 2269
    :cond_0
    return-void
.end method

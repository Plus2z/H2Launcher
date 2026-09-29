.class Lnet/oneplus/h2launcher/LauncherClings$2;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->showLongPressCling(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherClings;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherClings;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherClings;

    .prologue
    .line 177
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$2;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 181
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$2;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$2;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissLongPressCling()V

    .line 183
    return v1
.end method

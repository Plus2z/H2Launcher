.class Lnet/oneplus/h2launcher/LauncherClings$5;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->dismissQuickPageWelcomeCling()V
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
    .line 262
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$5;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 264
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$5$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings$5$1;-><init>(Lnet/oneplus/h2launcher/LauncherClings$5;)V

    .line 270
    .local v0, "cb":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings$5;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings$5;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v3, 0x7f1101a4

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "cling_gel.quick_page_1.dismissed"

    const/16 v5, 0xc8

    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 272
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings$5;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void
.end method

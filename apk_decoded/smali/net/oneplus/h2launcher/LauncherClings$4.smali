.class Lnet/oneplus/h2launcher/LauncherClings$4;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->dismissLongPressCling()V
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
    .line 230
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$4;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 232
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$4;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings$4;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v1, v1, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v2, 0x7f11015b

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "cling_gel.workspace.dismissed"

    const/16 v4, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 234
    return-void
.end method

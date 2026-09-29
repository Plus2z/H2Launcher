.class Lnet/oneplus/h2launcher/LauncherClings$5$1;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherClings$5;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherClings$5;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherClings$5;

    .prologue
    .line 264
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$5$1;->this$1:Lnet/oneplus/h2launcher/LauncherClings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$5$1;->this$1:Lnet/oneplus/h2launcher/LauncherClings$5;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherClings$5;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->showQuickPageResizeCling()V

    .line 268
    return-void
.end method

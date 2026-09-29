.class Lnet/oneplus/h2launcher/LauncherClings$1$1;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherClings$1;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherClings$1;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherClings$1;

    .prologue
    .line 159
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$1$1;->this$1:Lnet/oneplus/h2launcher/LauncherClings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$1$1;->this$1:Lnet/oneplus/h2launcher/LauncherClings$1;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherClings$1;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherClings;->showLongPressCling(Z)V

    .line 163
    return-void
.end method

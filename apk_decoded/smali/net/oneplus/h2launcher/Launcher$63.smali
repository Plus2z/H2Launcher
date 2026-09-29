.class Lnet/oneplus/h2launcher/Launcher$63;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->showSwitchingLoadingView(Z)V
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
    .line 7430
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$63;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 7433
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$63;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$63;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$63;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const v4, 0x7f0b00c5

    .line 7434
    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 7433
    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->access$3602(Lnet/oneplus/h2launcher/Launcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 7435
    return-void
.end method

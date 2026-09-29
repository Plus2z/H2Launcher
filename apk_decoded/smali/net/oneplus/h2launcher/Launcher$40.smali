.class Lnet/oneplus/h2launcher/Launcher$40;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$a:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 5361
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$40;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/Launcher$40;->val$a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5363
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$40;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher$40;->val$a:Z

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    .line 5364
    return-void
.end method

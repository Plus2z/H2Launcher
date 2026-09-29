.class Lnet/oneplus/h2launcher/Launcher$59;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Launcher;
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
    .line 6905
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$59;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6907
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$59;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$59;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->bindAllPackages(Lnet/oneplus/h2launcher/model/WidgetsModel;)V

    .line 6908
    return-void
.end method

.class Lnet/oneplus/h2launcher/Launcher$60;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->unlockScreenOrientation(Z)V
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
    .line 6975
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$60;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6977
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$60;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setRequestedOrientation(I)V

    .line 6978
    return-void
.end method

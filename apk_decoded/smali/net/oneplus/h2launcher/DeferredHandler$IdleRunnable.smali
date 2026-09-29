.class Lnet/oneplus/h2launcher/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lnet/oneplus/h2launcher/DeferredHandler;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DeferredHandler;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 64
    iput-object p1, p0, Lnet/oneplus/h2launcher/DeferredHandler$IdleRunnable;->this$0:Lnet/oneplus/h2launcher/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lnet/oneplus/h2launcher/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 66
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    return-void
.end method

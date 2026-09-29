.class public Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconLoadRequest"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    .line 1540
    iput-object p2, p0, Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    .line 1541
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1545
    return-void
.end method

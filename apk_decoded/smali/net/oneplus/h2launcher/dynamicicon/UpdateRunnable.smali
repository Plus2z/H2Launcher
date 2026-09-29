.class public Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;
.super Ljava/lang/Object;
.source "UpdateRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final createTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/dynamicicon/UpdateRunnable;->createTime:J

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

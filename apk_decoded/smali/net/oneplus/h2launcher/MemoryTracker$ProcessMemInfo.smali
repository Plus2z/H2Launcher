.class public Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;
.super Ljava/lang/Object;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/MemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessMemInfo"
.end annotation


# instance fields
.field public currentPss:J

.field public currentUss:J

.field public head:I

.field public max:J

.field public name:Ljava/lang/String;

.field public pid:I

.field public pss:[J

.field public startTime:J

.field public uss:[J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "start"    # J

    .prologue
    const/16 v1, 0x100

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-array v0, v1, [J

    iput-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->pss:[J

    .line 51
    new-array v0, v1, [J

    iput-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->uss:[J

    .line 53
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->max:J

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->head:I

    .line 56
    iput p1, p0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->pid:I

    .line 57
    iput-object p2, p0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->name:Ljava/lang/String;

    .line 58
    iput-wide p3, p0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->startTime:J

    .line 59
    return-void
.end method


# virtual methods
.method public getUptime()J
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

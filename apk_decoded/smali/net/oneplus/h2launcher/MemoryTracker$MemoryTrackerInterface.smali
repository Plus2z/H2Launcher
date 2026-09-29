.class public Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;
.super Landroid/os/Binder;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/MemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryTrackerInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/MemoryTracker;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/MemoryTracker;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/MemoryTracker;

    .prologue
    .line 211
    iput-object p1, p0, Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;->this$0:Lnet/oneplus/h2launcher/MemoryTracker;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lnet/oneplus/h2launcher/MemoryTracker;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;->this$0:Lnet/oneplus/h2launcher/MemoryTracker;

    return-object v0
.end method

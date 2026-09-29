.class Lnet/oneplus/h2launcher/WeightWatcher$2;
.super Ljava/lang/Object;
.source "WeightWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/WeightWatcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/WeightWatcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WeightWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WeightWatcher;

    .prologue
    .line 91
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeightWatcher$2;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 93
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$2;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    check-cast p2, Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/MemoryTracker$MemoryTrackerInterface;->getService()Lnet/oneplus/h2launcher/MemoryTracker;

    move-result-object v1

    iput-object v1, v0, Lnet/oneplus/h2launcher/WeightWatcher;->mMemoryService:Lnet/oneplus/h2launcher/MemoryTracker;

    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$2;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/WeightWatcher;->initViews()V

    .line 95
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$2;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/oneplus/h2launcher/WeightWatcher;->mMemoryService:Lnet/oneplus/h2launcher/MemoryTracker;

    .line 99
    return-void
.end method

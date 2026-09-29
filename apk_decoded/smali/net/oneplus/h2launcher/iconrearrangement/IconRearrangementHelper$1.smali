.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 68
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEnd(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "needConsumeQueue":Z
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/lang/Runnable;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/lang/Boolean;

    move-result-object v2

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$002(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 78
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->access$102(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->consumeQueue()Z

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

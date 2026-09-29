.class public Lnet/oneplus/h2launcher/WeightWatcher;
.super Landroid/widget/LinearLayout;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x40000000

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final MSG_UPDATE:I = 0x3

.field private static final RAM_GRAPH_PSS_COLOR:I = -0x663400

.field private static final RAM_GRAPH_RSS_COLOR:I = -0x670000

.field private static final TEXT_COLOR:I = -0x1

.field private static final UPDATE_RATE:I = 0x1388


# instance fields
.field mHandler:Landroid/os/Handler;

.field mMemoryService:Lnet/oneplus/h2launcher/MemoryTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/WeightWatcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v1, Lnet/oneplus/h2launcher/WeightWatcher$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/WeightWatcher$1;-><init>(Lnet/oneplus/h2launcher/WeightWatcher;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/WeightWatcher;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lnet/oneplus/h2launcher/WeightWatcher$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/WeightWatcher$2;-><init>(Lnet/oneplus/h2launcher/WeightWatcher;)V

    .line 101
    .local v0, "connection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/oneplus/h2launcher/MemoryTracker;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 104
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/WeightWatcher;->setOrientation(I)V

    .line 106
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/WeightWatcher;->setBackgroundColor(I)V

    .line 107
    return-void
.end method

.method static indexOf([II)I
    .locals 2
    .param p0, "a"    # [I
    .param p1, "x"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 53
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 55
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 52
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public initViews()V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WeightWatcher;->removeAllViews()V

    .line 111
    iget-object v3, p0, Lnet/oneplus/h2launcher/WeightWatcher;->mMemoryService:Lnet/oneplus/h2launcher/MemoryTracker;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v1

    .line 112
    .local v1, "processes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 113
    new-instance v2, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WeightWatcher;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;-><init>(Lnet/oneplus/h2launcher/WeightWatcher;Landroid/content/Context;)V

    .line 114
    .local v2, "v":Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->setPid(I)V

    .line 115
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/WeightWatcher;->addView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "v":Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 132
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method

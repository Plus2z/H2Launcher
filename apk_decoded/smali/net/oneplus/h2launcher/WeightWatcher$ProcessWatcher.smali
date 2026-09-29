.class public Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;
.super Landroid/widget/LinearLayout;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WeightWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;
    }
.end annotation


# instance fields
.field mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

.field mPid:I

.field mRamGraph:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;

.field mText:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/oneplus/h2launcher/WeightWatcher;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/WeightWatcher;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WeightWatcher;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;-><init>(Lnet/oneplus/h2launcher/WeightWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/WeightWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WeightWatcher;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 145
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    .line 146
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 150
    .local v0, "dp":F
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    .line 151
    iget-object v3, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v3, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    iget-object v3, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 156
    .local v1, "p":I
    invoke-virtual {p0, v1, v5, v1, v5}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->setPadding(IIII)V

    .line 158
    new-instance v3, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;-><init>(Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;Landroid/content/Context;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mRamGraph:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;

    .line 160
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 166
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 168
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 169
    const/high16 v3, 0x43480000    # 200.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 170
    iget-object v3, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mRamGraph:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {p0, v3, v2}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mPid:I

    return v0
.end method

.method public getUptimeString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 187
    iget-object v7, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->getUptime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v8, v10, v12

    .line 188
    .local v8, "sec":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-wide/32 v10, 0x15180

    div-long v0, v8, v10

    .line 190
    .local v0, "days":J
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-lez v7, :cond_0

    .line 191
    const-wide/32 v10, 0x15180

    mul-long/2addr v10, v0

    sub-long/2addr v8, v10

    .line 192
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    const-string v7, "d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    .line 197
    .local v2, "hours":J
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-lez v7, :cond_1

    .line 198
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v2

    sub-long/2addr v8, v10

    .line 199
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    const-string v7, "h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_1
    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    .line 204
    .local v4, "mins":J
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-lez v7, :cond_2

    .line 205
    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v4

    sub-long/2addr v8, v10

    .line 206
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_2
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public setPid(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 174
    iput p1, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mPid:I

    .line 175
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WeightWatcher;->mMemoryService:Lnet/oneplus/h2launcher/MemoryTracker;

    iget v1, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/MemoryTracker;->getMemInfo(I)Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    .line 176
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    if-nez v0, :cond_0

    .line 177
    const-string v0, "WeightWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing info for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->this$0:Lnet/oneplus/h2launcher/WeightWatcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/WeightWatcher;->initViews()V

    .line 180
    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mPid:I

    .line 219
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v0, v3, :cond_0

    const-string v0, "/A"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") up "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->getUptimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " P="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " U="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->currentUss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mRamGraph:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->invalidate()V

    .line 227
    return-void

    .line 219
    :cond_0
    const-string v0, "/S"

    goto :goto_0
.end method

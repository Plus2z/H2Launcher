.class public Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;
.super Landroid/view/View;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GraphView"
.end annotation


# instance fields
.field headPaint:Landroid/graphics/Paint;

.field pssPaint:Landroid/graphics/Paint;

.field final synthetic this$1:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

.field ussPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;-><init>(Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 232
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

    .line 233
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    const v1, -0x663400

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x670000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    .line 240
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    .line 250
    .local v12, "w":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 252
    .local v9, "h":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    iget-object v0, v0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->pss:[J

    array-length v6, v0

    .line 255
    .local v6, "N":I
    int-to-float v0, v12

    int-to-float v2, v6

    div-float v7, v0, v2

    .line 256
    .local v7, "barStep":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 257
    .local v8, "barWidth":F
    int-to-float v0, v9

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->max:J

    long-to-float v2, v2

    div-float v11, v0, v2

    .line 261
    .local v11, "scale":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_1

    .line 262
    int-to-float v0, v10

    mul-float v1, v0, v7

    .line 263
    .local v1, "x":F
    int-to-float v0, v9

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    iget-object v2, v2, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->pss:[J

    aget-wide v2, v2, v10

    long-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v2, v0, v2

    add-float v3, v1, v8

    int-to-float v4, v9

    iget-object v5, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 264
    int-to-float v0, v9

    iget-object v2, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    iget-object v2, v2, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->uss:[J

    aget-wide v2, v2, v10

    long-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v2, v0, v2

    add-float v3, v1, v8

    int-to-float v4, v9

    iget-object v5, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 261
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 266
    .end local v1    # "x":F
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher;->mMemInfo:Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;

    iget v0, v0, Lnet/oneplus/h2launcher/MemoryTracker$ProcessMemInfo;->head:I

    int-to-float v0, v0

    mul-float v1, v0, v7

    .line 267
    .restart local v1    # "x":F
    const/4 v2, 0x0

    add-float v3, v1, v8

    int-to-float v4, v9

    iget-object v5, p0, Lnet/oneplus/h2launcher/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

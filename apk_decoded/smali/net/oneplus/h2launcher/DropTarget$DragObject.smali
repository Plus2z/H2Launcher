.class public Lnet/oneplus/h2launcher/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragObject"
.end annotation


# instance fields
.field public accessibleDrag:Z

.field public cancelled:Z

.field public deferDragViewCleanupPostAnimation:Z

.field public dragComplete:Z

.field public dragInfo:Ljava/lang/Object;

.field public dragSource:Lnet/oneplus/h2launcher/DragSource;

.field public dragView:Lnet/oneplus/h2launcher/DragView;

.field public edit:Z

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public remove:Z

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    .line 32
    iput v0, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    .line 35
    iput v0, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->xOffset:I

    .line 38
    iput v0, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->yOffset:I

    .line 44
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragComplete:Z

    .line 47
    iput-object v1, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    .line 50
    iput-object v1, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 53
    iput-object v1, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    .line 59
    iput-object v1, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 62
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->edit:Z

    .line 65
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->remove:Z

    .line 68
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->cancelled:Z

    .line 71
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 74
    return-void
.end method


# virtual methods
.method public final getVisualCenter([F)[F
    .locals 5
    .param p1, "recycle"    # [F

    .prologue
    .line 83
    if-nez p1, :cond_0

    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 89
    .local v1, "res":[F
    :goto_0
    iget v3, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    iget v4, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->xOffset:I

    sub-int v0, v3, v4

    .line 90
    .local v0, "left":I
    iget v3, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    iget v4, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->yOffset:I

    sub-int v2, v3, v4

    .line 93
    .local v2, "top":I
    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 94
    const/4 v3, 0x1

    iget-object v4, p0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 96
    return-object v1

    .end local v0    # "left":I
    .end local v1    # "res":[F
    .end local v2    # "top":I
    :cond_0
    move-object v1, p1

    .line 83
    goto :goto_0
.end method

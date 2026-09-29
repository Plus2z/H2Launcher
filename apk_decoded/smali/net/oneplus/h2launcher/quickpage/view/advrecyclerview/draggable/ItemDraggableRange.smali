.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;
.super Ljava/lang/Object;
.source "ItemDraggableRange.java"


# instance fields
.field private final mEnd:I

.field private final mStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-le p1, p2, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end position (= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is smaller than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "start position (="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->mStart:I

    .line 30
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->mEnd:I

    .line 31
    return-void
.end method


# virtual methods
.method public checkInRange(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->mEnd:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "ItemDraggableRange"

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->mEnd:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->mStart:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/ItemDraggableRange;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

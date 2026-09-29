.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;
.source "MoveAnimationInfo.java"


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;-><init>()V

    .line 27
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 28
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->fromX:I

    .line 29
    iput p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->fromY:I

    .line 30
    iput p4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->toX:I

    .line 31
    iput p5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->toY:I

    .line 32
    return-void
.end method


# virtual methods
.method public clear(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v0, p1, :cond_0

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 44
    :cond_0
    return-void
.end method

.method public getAvailableViewHolder()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoveAnimationInfo{holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->fromX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->fromY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->toX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/MoveAnimationInfo;->toY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

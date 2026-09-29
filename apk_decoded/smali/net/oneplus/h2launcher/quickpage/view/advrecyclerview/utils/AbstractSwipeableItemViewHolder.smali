.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "AbstractSwipeableItemViewHolder.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeableItemViewHolder;


# instance fields
.field private mAfterSwipeReaction:I

.field private mHorizontalSwipeAmount:F

.field private mMaxDownSwipeAmount:F

.field private mMaxLeftSwipeAmount:F

.field private mMaxRightSwipeAmount:F

.field private mMaxUpSwipeAmount:F

.field private mSwipeResult:I

.field private mSwipeStateFlags:I

.field private mVerticalSwipeAmount:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mSwipeResult:I

    .line 34
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mAfterSwipeReaction:I

    .line 38
    const/high16 v0, -0x38800000    # -65536.0f

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxLeftSwipeAmount:F

    .line 39
    const v0, -0x387fff80    # -65537.0f

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxUpSwipeAmount:F

    .line 40
    const/high16 v0, 0x47800000    # 65536.0f

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxRightSwipeAmount:F

    .line 41
    const v0, 0x47800080    # 65537.0f

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxDownSwipeAmount:F

    .line 45
    return-void
.end method


# virtual methods
.method public getAfterSwipeReaction()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mAfterSwipeReaction:I

    return v0
.end method

.method public getMaxDownSwipeAmount()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxDownSwipeAmount:F

    return v0
.end method

.method public getMaxLeftSwipeAmount()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxLeftSwipeAmount:F

    return v0
.end method

.method public getMaxRightSwipeAmount()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxRightSwipeAmount:F

    return v0
.end method

.method public getMaxUpSwipeAmount()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxUpSwipeAmount:F

    return v0
.end method

.method public getSwipeItemHorizontalSlideAmount()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mHorizontalSwipeAmount:F

    return v0
.end method

.method public getSwipeItemSlideAmount()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->getSwipeItemHorizontalSlideAmount()F

    move-result v0

    return v0
.end method

.method public getSwipeItemVerticalSlideAmount()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mVerticalSwipeAmount:F

    return v0
.end method

.method public getSwipeResult()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mSwipeResult:I

    return v0
.end method

.method public getSwipeStateFlags()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mSwipeStateFlags:I

    return v0
.end method

.method public getSwipeableContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSlideAmountUpdated(FFZ)V
    .locals 0
    .param p1, "horizontalAmount"    # F
    .param p2, "verticalAmount"    # F
    .param p3, "isSwiping"    # Z

    .prologue
    .line 168
    return-void
.end method

.method public setAfterSwipeReaction(I)V
    .locals 0
    .param p1, "reaction"    # I

    .prologue
    .line 77
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mAfterSwipeReaction:I

    .line 78
    return-void
.end method

.method public setMaxDownSwipeAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 157
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxDownSwipeAmount:F

    .line 158
    return-void
.end method

.method public setMaxLeftSwipeAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 127
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxLeftSwipeAmount:F

    .line 128
    return-void
.end method

.method public setMaxRightSwipeAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 147
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxRightSwipeAmount:F

    .line 148
    return-void
.end method

.method public setMaxUpSwipeAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 137
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mMaxUpSwipeAmount:F

    .line 138
    return-void
.end method

.method public setSwipeItemHorizontalSlideAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 112
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mHorizontalSwipeAmount:F

    .line 113
    return-void
.end method

.method public setSwipeItemSlideAmount(F)V
    .locals 0
    .param p1, "amount"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->setSwipeItemHorizontalSlideAmount(F)V

    .line 98
    return-void
.end method

.method public setSwipeItemVerticalSlideAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 102
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mVerticalSwipeAmount:F

    .line 103
    return-void
.end method

.method public setSwipeResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 60
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mSwipeResult:I

    .line 61
    return-void
.end method

.method public setSwipeStateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 49
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;->mSwipeStateFlags:I

    .line 50
    return-void
.end method

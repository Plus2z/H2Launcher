.class abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.source "BaseEdgeEffectDecorator.java"


# static fields
.field protected static final EDGE_BOTTOM:I = 0x3

.field protected static final EDGE_LEFT:I = 0x0

.field protected static final EDGE_RIGHT:I = 0x2

.field protected static final EDGE_TOP:I = 0x1


# instance fields
.field private mGlow1:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mGlow1Dir:I

.field private mGlow2:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mGlow2Dir:I

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;-><init>()V

    .line 39
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 40
    return-void
.end method

.method private static drawGlow(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;ILandroid/support/v4/widget/EdgeEffectCompat;)Z
    .locals 6
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "dir"    # I
    .param p3, "edge"    # Landroid/support/v4/widget/EdgeEffectCompat;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 108
    :goto_0
    return v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 67
    .local v2, "restore":I
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->getClipToPadding(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v0

    .line 69
    .local v0, "clipToPadding":Z
    packed-switch p2, :pswitch_data_0

    .line 104
    :cond_1
    :goto_1
    invoke-virtual {p3, p0}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 106
    .local v1, "needsInvalidate":Z
    invoke-virtual {p0, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 71
    .end local v1    # "needsInvalidate":Z
    :pswitch_0
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 76
    :pswitch_1
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 77
    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 79
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 78
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 85
    :pswitch_2
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 86
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 88
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    .line 87
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 94
    :pswitch_3
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 95
    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    .line 97
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 96
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    .line 99
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private ensureGlow1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 2
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 164
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 168
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1:Landroid/support/v4/widget/EdgeEffectCompat;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1Dir:I

    invoke-static {p1, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->updateGlowSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/support/v4/widget/EdgeEffectCompat;I)V

    .line 169
    return-void
.end method

.method private ensureGlow2(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 2
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 175
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2:Landroid/support/v4/widget/EdgeEffectCompat;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2Dir:I

    invoke-static {p1, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->updateGlowSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/support/v4/widget/EdgeEffectCompat;I)V

    .line 176
    return-void
.end method

.method private static getClipToPadding(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    return v0
.end method

.method private static updateGlowSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/support/v4/widget/EdgeEffectCompat;I)V
    .locals 6
    .param p0, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p1, "glow"    # Landroid/support/v4/widget/EdgeEffectCompat;
    .param p2, "dir"    # I

    .prologue
    const/4 v5, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredWidth()I

    move-result v2

    .line 180
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMeasuredHeight()I

    move-result v0

    .line 182
    .local v0, "height":I
    invoke-static {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->getClipToPadding(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 184
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 187
    :cond_0
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 188
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 190
    if-eqz p2, :cond_1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 191
    :cond_1
    move v1, v2

    .line 192
    .local v1, "t":I
    move v2, v0

    .line 193
    move v0, v1

    .line 196
    .end local v1    # "t":I
    :cond_2
    invoke-virtual {p1, v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 197
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mStarted:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->releaseBothGlows()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mStarted:Z

    .line 128
    return-void
.end method

.method protected abstract getEdgeDirection(I)I
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 49
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1Dir:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {p1, p2, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->drawGlow(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;ILandroid/support/v4/widget/EdgeEffectCompat;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 52
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    .line 53
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2Dir:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {p1, p2, v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->drawGlow(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;ILandroid/support/v4/widget/EdgeEffectCompat;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 56
    :cond_1
    if-eqz v0, :cond_2

    .line 57
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 59
    :cond_2
    return-void
.end method

.method public pullFirstEdge(F)V
    .locals 1
    .param p1, "deltaDistance"    # F

    .prologue
    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->ensureGlow1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 136
    :cond_0
    return-void
.end method

.method public pullSecondEdge(F)V
    .locals 1
    .param p1, "deltaDistance"    # F

    .prologue
    .line 139
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->ensureGlow2(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 141
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 144
    :cond_0
    return-void
.end method

.method public releaseBothGlows()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 154
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 158
    :cond_1
    if-eqz v0, :cond_2

    .line 159
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 161
    :cond_2
    return-void
.end method

.method public reorderToTop()V
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mStarted:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 206
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 208
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mStarted:Z

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->getEdgeDirection(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow1Dir:I

    .line 116
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->getEdgeDirection(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mGlow2Dir:I

    .line 117
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    .line 118
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;->mStarted:Z

    goto :goto_0
.end method

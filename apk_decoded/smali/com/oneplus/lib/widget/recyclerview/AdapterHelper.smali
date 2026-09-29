.class Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;,
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/Pools$Pool",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;Z)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    .line 76
    iput-boolean p2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    .line 77
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;-><init>(Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    .line 78
    return-void
.end method

.method private applyAdd(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 430
    return-void
.end method

.method private applyMove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 128
    return-void
.end method

.method private applyRemove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 12
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 131
    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 132
    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .line 133
    .local v2, "tmpCount":I
    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v8, v9

    .line 134
    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .line 135
    .local v5, "type":I
    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 136
    const/4 v6, 0x0

    .line 137
    .local v6, "typeChanged":Z
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v8, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v7

    .line 138
    .local v7, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v7, :cond_0

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 145
    :cond_0
    if-nez v5, :cond_1

    .line 148
    invoke-virtual {p0, v10, v4, v2, v11}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 149
    .local v0, "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 150
    const/4 v6, 0x1

    .line 152
    .end local v0    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v5, 0x1

    .line 165
    :goto_1
    if-eqz v6, :cond_4

    .line 166
    sub-int/2addr v1, v2

    .line 167
    sub-int/2addr v3, v2

    .line 168
    const/4 v2, 0x1

    .line 135
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    if-ne v5, v10, :cond_3

    .line 159
    invoke-virtual {p0, v10, v4, v2, v11}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 160
    .restart local v0    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 161
    const/4 v6, 0x1

    .line 163
    .end local v0    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 170
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    .end local v6    # "typeChanged":Z
    .end local v7    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_5
    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v8, :cond_6

    .line 174
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 175
    invoke-virtual {p0, v10, v4, v2, v11}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 177
    :cond_6
    if-nez v5, :cond_7

    .line 178
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 182
    :goto_3
    return-void

    .line 180
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_3
.end method

.method private applyUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 11
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .prologue
    const/4 v10, 0x2

    .line 185
    iget v5, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 186
    .local v5, "tmpStart":I
    const/4 v3, 0x0

    .line 187
    .local v3, "tmpCount":I
    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int v4, v8, v9

    .line 188
    .local v4, "tmpEnd":I
    const/4 v6, -0x1

    .line 189
    .local v6, "type":I
    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .local v2, "position":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 190
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v8, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v7

    .line 191
    .local v7, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v7, :cond_0

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 192
    :cond_0
    if-nez v6, :cond_1

    .line 193
    iget-object v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v5, v3, v8}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 195
    .local v0, "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 196
    const/4 v3, 0x0

    .line 197
    move v5, v2

    .line 199
    .end local v0    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v6, 0x1

    .line 210
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_2
    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    .line 202
    iget-object v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v5, v3, v8}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 204
    .restart local v0    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 205
    const/4 v3, 0x0

    .line 206
    move v5, v2

    .line 208
    .end local v0    # "newOp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 212
    .end local v7    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_4
    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v8, :cond_5

    .line 213
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 214
    .local v1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 215
    invoke-virtual {p0, v10, v5, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 217
    .end local v1    # "payload":Ljava/lang/Object;
    :cond_5
    if-nez v6, :cond_6

    .line 218
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 222
    :goto_2
    return-void

    .line 220
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 408
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 409
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 410
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 411
    .local v3, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 412
    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 425
    .end local v3    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_0
    :goto_1
    return v5

    .line 415
    .restart local v3    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_1
    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-nez v6, :cond_2

    .line 417
    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int v1, v6, v7

    .line 418
    .local v1, "end":I
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 419
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 418
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 409
    .end local v1    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v3    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 14
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 228
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v12, :cond_0

    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    .line 229
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "should not dispatch add or move for pre layout"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 242
    :cond_1
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v13, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v12, v13}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .line 246
    .local v8, "tmpStart":I
    const/4 v7, 0x1

    .line 247
    .local v7, "tmpCnt":I
    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 249
    .local v1, "offsetPositionForPartial":I
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_0

    .line 257
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op should be remove or update."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 251
    :pswitch_0
    const/4 v5, 0x1

    .line 259
    .local v5, "positionMultiplier":I
    :goto_0
    const/4 v2, 0x1

    .local v2, "p":I
    :goto_1
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v12, :cond_6

    .line 260
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v13, v5, v2

    add-int v4, v12, v13

    .line 261
    .local v4, "pos":I
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v4, v12}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v9

    .line 265
    .local v9, "updatedPos":I
    const/4 v0, 0x0

    .line 266
    .local v0, "continuous":Z
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_1

    .line 274
    :goto_2
    if-eqz v0, :cond_4

    .line 275
    add-int/lit8 v7, v7, 0x1

    .line 259
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    .end local v0    # "continuous":Z
    .end local v2    # "p":I
    .end local v4    # "pos":I
    .end local v5    # "positionMultiplier":I
    .end local v9    # "updatedPos":I
    :pswitch_1
    const/4 v5, 0x0

    .line 255
    .restart local v5    # "positionMultiplier":I
    goto :goto_0

    .line 268
    .restart local v0    # "continuous":Z
    .restart local v2    # "p":I
    .restart local v4    # "pos":I
    .restart local v9    # "updatedPos":I
    :pswitch_2
    add-int/lit8 v12, v8, 0x1

    if-ne v9, v12, :cond_2

    move v0, v10

    .line 269
    :goto_4
    goto :goto_2

    :cond_2
    move v0, v11

    .line 268
    goto :goto_4

    .line 271
    :pswitch_3
    if-ne v9, v8, :cond_3

    move v0, v10

    :goto_5
    goto :goto_2

    :cond_3
    move v0, v11

    goto :goto_5

    .line 278
    :cond_4
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    iget-object v13, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v12, v8, v7, v13}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 282
    .local v6, "tmp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v6, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    .line 283
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 284
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 285
    add-int/2addr v1, v7

    .line 287
    :cond_5
    move v8, v9

    .line 288
    const/4 v7, 0x1

    goto :goto_3

    .line 291
    .end local v0    # "continuous":Z
    .end local v4    # "pos":I
    .end local v6    # "tmp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .end local v9    # "updatedPos":I
    :cond_6
    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 292
    .local v3, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 293
    if-lez v7, :cond_7

    .line 294
    iget v10, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v10, v8, v7, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 298
    .restart local v6    # "tmp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v6, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    .line 299
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 309
    .end local v6    # "tmp":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_7
    return-void

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 4
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 454
    :goto_0
    return-void

    .line 442
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    .line 449
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 10
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 327
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 328
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_d

    .line 329
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 330
    .local v4, "postponed":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v9, :cond_9

    .line 332
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v6, v7, :cond_2

    .line 333
    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 334
    .local v5, "start":I
    iget v1, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 339
    .local v1, "end":I
    :goto_1
    if-lt p1, v5, :cond_7

    if-gt p1, v1, :cond_7

    .line 341
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v5, v6, :cond_4

    .line 342
    if-nez p2, :cond_3

    .line 343
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 348
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 328
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 336
    :cond_2
    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 337
    .restart local v5    # "start":I
    iget v1, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .restart local v1    # "end":I
    goto :goto_1

    .line 344
    :cond_3
    if-ne p2, v8, :cond_0

    .line 345
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 350
    :cond_4
    if-nez p2, :cond_6

    .line 351
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 356
    :cond_5
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 352
    :cond_6
    if-ne p2, v8, :cond_5

    .line 353
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    .line 358
    :cond_7
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v6, :cond_1

    .line 360
    if-nez p2, :cond_8

    .line 361
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 362
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 363
    :cond_8
    if-ne p2, v8, :cond_1

    .line 364
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 365
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 369
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_9
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v6, p1, :cond_b

    .line 370
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-nez v6, :cond_a

    .line 371
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v6

    goto :goto_3

    .line 372
    :cond_a
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v8, :cond_1

    .line 373
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v6

    goto :goto_3

    .line 376
    :cond_b
    if-nez p2, :cond_c

    .line 377
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 378
    :cond_c
    if-ne p2, v8, :cond_1

    .line 379
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 392
    .end local v4    # "postponed":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_d
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_5
    if-ltz v2, :cond_11

    .line 393
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 394
    .local v3, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v9, :cond_10

    .line 395
    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v6, v7, :cond_e

    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v6, :cond_f

    .line 396
    :cond_e
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 392
    :cond_f
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 399
    :cond_10
    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v6, :cond_f

    .line 400
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 404
    .end local v3    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_11
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;
    .locals 1
    .param p1, "ops"    # [Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 82
    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 567
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 568
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 569
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 570
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 568
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :pswitch_1
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_0

    .line 573
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v4

    goto :goto_1

    .line 577
    :pswitch_2
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_0

    .line 578
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int v0, v4, v5

    .line 579
    .local v0, "end":I
    if-le v0, p1, :cond_2

    .line 580
    const/4 p1, -0x1

    .line 599
    .end local v0    # "end":I
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_1
    return p1

    .line 582
    .restart local v0    # "end":I
    .restart local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_2
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    .line 583
    goto :goto_1

    .line 586
    .end local v0    # "end":I
    :pswitch_3
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, p1, :cond_3

    .line 587
    iget p1, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 589
    :cond_3
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, p1, :cond_4

    .line 590
    add-int/lit8 p1, p1, -0x1

    .line 592
    :cond_4
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v4, p1, :cond_0

    .line 593
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method consumePostponedUpdates()V
    .locals 4

    .prologue
    .line 117
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 118
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 119
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 7

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumePostponedUpdates()V

    .line 538
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 539
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 540
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 541
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 559
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 560
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 539
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 544
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_1

    .line 547
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 548
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 551
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 552
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    .line 555
    :pswitch_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 556
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 563
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 564
    return-void

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V
    .locals 3
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchFirstPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 313
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 324
    :goto_0
    return-void

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .prologue
    .line 465
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 466
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 467
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 468
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 469
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1

    .line 470
    iget p1, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 466
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_2

    .line 473
    add-int/lit8 p1, p1, -0x1

    .line 475
    :cond_2
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_0

    .line 476
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 479
    :cond_3
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_0

    .line 480
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 481
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_5

    .line 482
    const/4 p1, -0x1

    .line 490
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_4
    return p1

    .line 484
    .restart local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_5
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1

    .line 485
    :cond_6
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-nez v3, :cond_0

    .line 486
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1
.end method

.method hasPendingUpdates()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 702
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 703
    .local v0, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    if-nez v0, :cond_0

    .line 704
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .end local v0    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    .line 711
    .restart local v0    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :goto_0
    return-object v0

    .line 706
    :cond_0
    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    .line 707
    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 708
    iput p3, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 709
    iput-object p4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    goto :goto_0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 497
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onItemRangeInserted(II)Z
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 505
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method onItemRangeMoved(III)Z
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 521
    if-ne p1, p2, :cond_0

    .line 528
    :goto_0
    return v1

    .line 524
    :cond_0
    if-eq p3, v0, :cond_1

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method onItemRangeRemoved(II)Z
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 513
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method preProcess()V
    .locals 5

    .prologue
    .line 91
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 92
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 94
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 95
    .local v2, "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 109
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyAdd(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyRemove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 106
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyMove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 113
    .end local v2    # "op":Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 1
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    .line 717
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 720
    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 724
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 725
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 728
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    return-void
.end method

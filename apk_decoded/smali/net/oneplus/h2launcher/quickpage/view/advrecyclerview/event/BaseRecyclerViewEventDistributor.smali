.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;
.super Ljava/lang/Object;
.source "BaseRecyclerViewEventDistributor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mPerformingClearMethod:Z

.field protected mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field protected mReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    const-string v0, "add()"

    .line 107
    .local v0, "METHOD_NAME":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can not specify null for the listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    const-string v1, "add()"

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->verifyIsNotReleased(Ljava/lang/String;)V

    .line 112
    const-string v1, "add()"

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->verifyIsNotPerformingClearMethod(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    .line 118
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    if-gez p2, :cond_3

    .line 121
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_0
    instance-of v1, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewEventDistributorListener;

    if-eqz v1, :cond_2

    .line 129
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewEventDistributorListener;

    .end local p1    # "listener":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewEventDistributorListener;->onAddedToEventDistributor(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;)V

    .line 133
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 124
    .restart local p1    # "listener":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public attachRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 3
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 72
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    const-string v0, "attachRecyclerView()"

    .line 74
    .local v0, "METHOD_NAME":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RecyclerView cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    const-string v1, "attachRecyclerView()"

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->verifyIsNotReleased(Ljava/lang/String;)V

    .line 79
    const-string v1, "attachRecyclerView()"

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->verifyIsNotPerformingClearMethod(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->onRecyclerViewAttached(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 82
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->clear(Z)V

    .line 174
    return-void
.end method

.method protected clear(Z)V
    .locals 6
    .param p1, "calledFromRelease"    # Z

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    const/4 v5, 0x0

    .line 177
    const-string v0, "clear()"

    .line 179
    .local v0, "METHOD_NAME":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 180
    const-string v4, "clear()"

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->verifyIsNotReleased(Ljava/lang/String;)V

    .line 182
    :cond_0
    const-string v4, "clear()"

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->verifyIsNotPerformingClearMethod(Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    if-nez v4, :cond_1

    .line 205
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mPerformingClearMethod:Z

    .line 191
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 193
    .local v3, "n":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 194
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "listener":Ljava/lang/Object;, "TT;"
    instance-of v4, v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewEventDistributorListener;

    if-eqz v4, :cond_2

    .line 198
    check-cast v2, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewEventDistributorListener;

    .line 199
    .end local v2    # "listener":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewEventDistributorListener;->onRemovedFromEventDistributor(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 203
    :cond_3
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mPerformingClearMethod:Z

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mPerformingClearMethod:Z

    throw v4
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecyclerView()Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    return-object v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mReleased:Z

    return v0
.end method

.method protected onRecyclerViewAttached(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 241
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 242
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 236
    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mPerformingClearMethod:Z

    .line 238
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    const/4 v1, 0x1

    .line 49
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mReleased:Z

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mReleased:Z

    .line 53
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->clear(Z)V

    .line 54
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->onRelease()V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    const-string v0, "remove()"

    .line 145
    .local v0, "METHOD_NAME":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "can not specify null for the listener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_0
    const-string v2, "remove()"

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->verifyIsNotPerformingClearMethod(Ljava/lang/String;)V

    .line 150
    const-string v2, "remove()"

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->verifyIsNotReleased(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    if-nez v2, :cond_2

    .line 153
    const/4 v1, 0x0

    .line 166
    .end local p1    # "listener":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    return v1

    .line 156
    .restart local p1    # "listener":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 158
    .local v1, "removed":Z
    if-eqz v1, :cond_1

    .line 160
    instance-of v2, p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewEventDistributorListener;

    if-eqz v2, :cond_1

    .line 161
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewEventDistributorListener;

    .line 162
    .end local p1    # "listener":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/RecyclerViewEventDistributorListener;->onRemovedFromEventDistributor(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected verifyIsNotPerformingClearMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 245
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mPerformingClearMethod:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not be called while performing the"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clear() method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    return-void
.end method

.method protected verifyIsNotReleased(Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 252
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor<TT;>;"
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/event/BaseRecyclerViewEventDistributor;->mReleased:Z

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not be called after release() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "method called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    return-void
.end method

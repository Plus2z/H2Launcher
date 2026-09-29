.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractDraggableItemViewHolder;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "AbstractDraggableItemViewHolder.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;


# instance fields
.field private mDragStateFlags:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getDragStateFlags()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractDraggableItemViewHolder;->mDragStateFlags:I

    return v0
.end method

.method public setDragStateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 36
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractDraggableItemViewHolder;->mDragStateFlags:I

    .line 37
    return-void
.end method

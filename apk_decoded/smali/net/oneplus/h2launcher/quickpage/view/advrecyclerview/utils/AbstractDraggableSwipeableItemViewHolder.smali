.class public abstract Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractDraggableSwipeableItemViewHolder;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;
.source "AbstractDraggableSwipeableItemViewHolder.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/DraggableItemViewHolder;


# instance fields
.field private mDragStateFlags:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractSwipeableItemViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getDragStateFlags()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractDraggableSwipeableItemViewHolder;->mDragStateFlags:I

    return v0
.end method

.method public setDragStateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 35
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/AbstractDraggableSwipeableItemViewHolder;->mDragStateFlags:I

    .line 36
    return-void
.end method

.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/TopBottomEdgeEffectDecorator;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;
.source "TopBottomEdgeEffectDecorator.java"


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/draggable/BaseEdgeEffectDecorator;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getEdgeDirection(I)I
    .locals 1
    .param p1, "no"    # I

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 30
    :pswitch_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

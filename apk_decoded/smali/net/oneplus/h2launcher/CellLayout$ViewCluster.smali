.class Lnet/oneplus/h2launcher/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/CellLayout$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lnet/oneplus/h2launcher/CellLayout$ViewCluster$PositionComparator;

.field config:Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/CellLayout;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CellLayout;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)V
    .locals 1
    .param p3, "config"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1650
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1641
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1643
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->leftEdge:[I

    .line 1644
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->rightEdge:[I

    .line 1645
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->topEdge:[I

    .line 1646
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1836
    new-instance v0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster$PositionComparator;-><init>(Lnet/oneplus/h2launcher/CellLayout$ViewCluster;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->comparator:Lnet/oneplus/h2launcher/CellLayout$ViewCluster$PositionComparator;

    .line 1651
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1652
    iput-object p3, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->config:Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    .line 1653
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->resetEdges()V

    .line 1654
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1774
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->resetEdges()V

    .line 1776
    return-void
.end method

.method computeEdge(I[I)V
    .locals 10
    .param p1, "which"    # I
    .param p2, "edge"    # [I

    .prologue
    .line 1673
    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1674
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_7

    .line 1675
    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->config:Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    iget-object v8, v8, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v9, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1676
    .local v2, "cs":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 1674
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1678
    :pswitch_0
    iget v5, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .line 1679
    .local v5, "left":I
    iget v4, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    .local v4, "j":I
    :goto_1
    iget v8, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    .line 1680
    aget v8, p2, v4

    if-lt v5, v8, :cond_1

    aget v8, p2, v4

    if-gez v8, :cond_2

    .line 1681
    :cond_1
    aput v5, p2, v4

    .line 1679
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1686
    .end local v4    # "j":I
    .end local v5    # "left":I
    :pswitch_1
    iget v8, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int v6, v8, v9

    .line 1687
    .local v6, "right":I
    iget v4, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    .restart local v4    # "j":I
    :goto_2
    iget v8, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    .line 1688
    aget v8, p2, v4

    if-le v6, v8, :cond_3

    .line 1689
    aput v6, p2, v4

    .line 1687
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1694
    .end local v4    # "j":I
    .end local v6    # "right":I
    :pswitch_2
    iget v7, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    .line 1695
    .local v7, "top":I
    iget v4, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .restart local v4    # "j":I
    :goto_3
    iget v8, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    .line 1696
    aget v8, p2, v4

    if-lt v7, v8, :cond_4

    aget v8, p2, v4

    if-gez v8, :cond_5

    .line 1697
    :cond_4
    aput v7, p2, v4

    .line 1695
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1702
    .end local v4    # "j":I
    .end local v7    # "top":I
    :pswitch_3
    iget v8, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int v0, v8, v9

    .line 1703
    .local v0, "bottom":I
    iget v4, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .restart local v4    # "j":I
    :goto_4
    iget v8, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    .line 1704
    aget v8, p2, v4

    if-le v0, v8, :cond_6

    .line 1705
    aput v0, p2, v4

    .line 1703
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1711
    .end local v0    # "bottom":I
    .end local v2    # "cs":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v4    # "j":I
    :cond_7
    return-void

    .line 1676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getBottomEdge()[I
    .locals 2

    .prologue
    .line 1830
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1831
    const/4 v0, 0x3

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1833
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->bottomEdge:[I

    return-object v0
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 1779
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v3, :cond_1

    .line 1780
    const/4 v1, 0x1

    .line 1781
    .local v1, "first":Z
    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1782
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->config:Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    iget-object v4, v4, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1783
    .local v0, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    if-eqz v1, :cond_0

    .line 1784
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v7, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v8, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v9, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1785
    const/4 v1, 0x0

    goto :goto_0

    .line 1787
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v7, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v8, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v9, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 1791
    .end local v0    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v1    # "first":Z
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v3
.end method

.method public getEdge(I)[I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1795
    packed-switch p1, :pswitch_data_0

    .line 1804
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->getBottomEdge()[I

    move-result-object v0

    :goto_0
    return-object v0

    .line 1797
    :pswitch_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->getLeftEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1799
    :pswitch_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->getRightEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1801
    :pswitch_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->getTopEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1795
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getLeftEdge()[I
    .locals 2

    .prologue
    .line 1809
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1810
    const/4 v0, 0x0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1812
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->leftEdge:[I

    return-object v0
.end method

.method public getRightEdge()[I
    .locals 2

    .prologue
    .line 1816
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1817
    const/4 v0, 0x2

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1819
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->rightEdge:[I

    return-object v0
.end method

.method public getTopEdge()[I
    .locals 2

    .prologue
    .line 1823
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1824
    const/4 v0, 0x1

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1826
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->topEdge:[I

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "whichEdge"    # I

    .prologue
    const/4 v3, 0x1

    .line 1714
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->config:Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    iget-object v4, v4, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1716
    .local v0, "cs":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->getEdge(I)[I

    move-result-object v1

    .line 1718
    .local v1, "edge":[I
    packed-switch p2, :pswitch_data_0

    .line 1748
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return v3

    .line 1720
    :pswitch_0
    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    .local v2, "i":I
    :goto_0
    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1721
    aget v4, v1, v2

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 1720
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1727
    .end local v2    # "i":I
    :pswitch_1
    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    .restart local v2    # "i":I
    :goto_1
    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1728
    aget v4, v1, v2

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    if-eq v4, v5, :cond_1

    .line 1727
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1734
    .end local v2    # "i":I
    :pswitch_2
    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .restart local v2    # "i":I
    :goto_2
    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1735
    aget v4, v1, v2

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 1734
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1741
    .end local v2    # "i":I
    :pswitch_3
    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .restart local v2    # "i":I
    :goto_3
    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1742
    aget v4, v1, v2

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    if-eq v4, v5, :cond_1

    .line 1741
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method resetEdges()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1657
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget v1, v1, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v0, v1, :cond_0

    .line 1658
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->topEdge:[I

    aput v3, v1, v0

    .line 1659
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->bottomEdge:[I

    aput v3, v1, v0

    .line 1657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1661
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    iget v1, v1, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-ge v0, v1, :cond_1

    .line 1662
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    .line 1663
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    .line 1661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1665
    :cond_1
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->leftEdgeDirty:Z

    .line 1666
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->rightEdgeDirty:Z

    .line 1667
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    .line 1668
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->topEdgeDirty:Z

    .line 1669
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->boundingRectDirty:Z

    .line 1670
    return-void
.end method

.method shift(II)V
    .locals 4
    .param p1, "whichEdge"    # I
    .param p2, "delta"    # I

    .prologue
    .line 1752
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1753
    .local v1, "v":Landroid/view/View;
    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->config:Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    iget-object v3, v3, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1754
    .local v0, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 1766
    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    add-int/2addr v3, p2

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1756
    :pswitch_0
    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v3, p2

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1759
    :pswitch_1
    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    add-int/2addr v3, p2

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1762
    :pswitch_2
    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v3, p2

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1770
    .end local v0    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->resetEdges()V

    .line 1771
    return-void

    .line 1754
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 1857
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->comparator:Lnet/oneplus/h2launcher/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1858
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->config:Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->comparator:Lnet/oneplus/h2launcher/CellLayout$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1859
    return-void
.end method

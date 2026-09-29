.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplLollipop;
.super Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplHoneycomb;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemTouchUIUtilImplLollipop"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplHoneycomb;-><init>()V

    return-void
.end method

.method private findMaxElevation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)F
    .locals 6
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 1384
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v1

    .line 1385
    .local v1, "childCount":I
    const/4 v4, 0x0

    .line 1386
    .local v4, "max":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1387
    invoke-virtual {p1, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1388
    .local v0, "child":Landroid/view/View;
    if-ne v0, p2, :cond_1

    .line 1386
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1391
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v2

    .line 1392
    .local v2, "elevation":F
    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    .line 1393
    move v4, v2

    goto :goto_1

    .line 1396
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "elevation":F
    :cond_2
    return v4
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1401
    sget v1, Lcom/oneplus/commonctrl/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1402
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 1403
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setElevation(F)V

    .line 1405
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$id;->item_touch_helper_previous_elevation:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1406
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplHoneycomb;->clearView(Landroid/view/View;)V

    .line 1407
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 1371
    if-eqz p7, :cond_0

    .line 1372
    sget v2, Lcom/oneplus/commonctrl/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1373
    .local v1, "originalElevation":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1374
    invoke-virtual {p3}, Landroid/view/View;->getElevation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1375
    .local v1, "originalElevation":Ljava/lang/Float;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplLollipop;->findMaxElevation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)F

    move-result v3

    add-float v0, v2, v3

    .line 1376
    .local v0, "newElevation":F
    invoke-virtual {p3, v0}, Landroid/view/View;->setElevation(F)V

    .line 1377
    sget v2, Lcom/oneplus/commonctrl/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1380
    .end local v0    # "newElevation":F
    .end local v1    # "originalElevation":Ljava/lang/Float;
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback$ItemTouchUIUtilImplHoneycomb;->onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;FFIZ)V

    .line 1381
    return-void
.end method

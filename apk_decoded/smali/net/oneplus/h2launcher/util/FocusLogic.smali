.class public Lnet/oneplus/h2launcher/util/FocusLogic;
.super Ljava/lang/Object;
.source "FocusLogic.java"


# static fields
.field public static final CURRENT_PAGE_FIRST_ITEM:I = -0x6

.field public static final CURRENT_PAGE_LAST_ITEM:I = -0x7

.field private static final DEBUG:Z = false

.field public static final EMPTY:I = -0x1

.field public static final NEXT_PAGE_FIRST_ITEM:I = -0x8

.field public static final NEXT_PAGE_LEFT_COLUMN:I = -0x9

.field public static final NEXT_PAGE_RIGHT_COLUMN:I = -0xa

.field public static final NOOP:I = -0x1

.field public static final PIVOT:I = 0x64

.field public static final PREVIOUS_PAGE_FIRST_ITEM:I = -0x3

.field public static final PREVIOUS_PAGE_LAST_ITEM:I = -0x4

.field public static final PREVIOUS_PAGE_LEFT_COLUMN:I = -0x5

.field public static final PREVIOUS_PAGE_RIGHT_COLUMN:I = -0x2

.field private static final TAG:Ljava/lang/String; = "FocusLogic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFullMatrix(II)[[I
    .locals 4
    .param p0, "m"    # I
    .param p1, "n"    # I

    .prologue
    .line 146
    filled-new-array {p0, p1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 148
    .local v1, "matrix":[[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 149
    aget-object v2, v1, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-object v1
.end method

.method public static createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;)[[I
    .locals 10
    .param p0, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 160
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 161
    .local v8, "parent":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v5

    .line 162
    .local v5, "m":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v7

    .line 163
    .local v7, "n":I
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    .line 165
    .local v4, "invert":Z
    invoke-static {v5, v7}, Lnet/oneplus/h2launcher/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object v6

    .line 168
    .local v6, "matrix":[[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 169
    invoke-virtual {v8, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "cell":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v9

    if-nez v9, :cond_0

    .line 168
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v1, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 174
    .local v1, "cx":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v2, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 175
    .local v2, "cy":I
    if-eqz v4, :cond_1

    sub-int v9, v5, v1

    add-int/lit8 v1, v9, -0x1

    .end local v1    # "cx":I
    :cond_1
    aget-object v9, v6, v1

    aput v3, v9, v2

    goto :goto_1

    .line 180
    .end local v0    # "cell":Landroid/view/View;
    .end local v2    # "cy":I
    :cond_2
    return-object v6
.end method

.method public static createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;II)[[I
    .locals 9
    .param p0, "iconLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p1, "pivotX"    # I
    .param p2, "pivotY"    # I

    .prologue
    const/16 v8, 0x64

    .line 259
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 261
    .local v4, "iconParent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v7

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object v5

    .line 264
    .local v5, "matrix":[[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 265
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "cell":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 264
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v1, v6, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 270
    .local v1, "cx":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v2, v6, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 271
    .local v2, "cy":I
    if-gez p1, :cond_1

    .line 272
    sub-int v6, v1, p1

    aget-object v6, v5, v6

    aput v3, v6, v2

    goto :goto_1

    .line 274
    :cond_1
    aget-object v6, v5, v1

    aput v3, v6, v2

    goto :goto_1

    .line 278
    .end local v0    # "cell":Landroid/view/View;
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    :cond_2
    if-gez p1, :cond_3

    .line 279
    const/4 v6, 0x0

    aget-object v6, v5, v6

    aput v8, v6, p2

    .line 286
    :goto_2
    return-object v5

    .line 281
    :cond_3
    aget-object v6, v5, p1

    aput v8, v6, p2

    goto :goto_2
.end method

.method public static createSparseMatrix(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/CellLayout;ZIZ)[[I
    .locals 14
    .param p0, "iconLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p1, "hotseatLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p2, "isHorizontal"    # Z
    .param p3, "allappsiconRank"    # I
    .param p4, "includeAllappsicon"    # Z

    .prologue
    .line 192
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v7

    .line 193
    .local v7, "iconParent":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 196
    .local v5, "hotseatParent":Landroid/view/ViewGroup;
    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v8

    .line 198
    .local v8, "m":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v11

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v12

    add-int v10, v11, v12

    .line 203
    .local v10, "n":I
    :goto_0
    invoke-static {v8, v10}, Lnet/oneplus/h2launcher/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object v9

    .line 206
    .local v9, "matrix":[[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 207
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 208
    .local v1, "cell":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 206
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 200
    .end local v1    # "cell":Landroid/view/View;
    .end local v6    # "i":I
    .end local v8    # "m":I
    .end local v9    # "matrix":[[I
    .end local v10    # "n":I
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v11

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v12

    add-int v8, v11, v12

    .line 201
    .restart local v8    # "m":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v10

    .restart local v10    # "n":I
    goto :goto_0

    .line 211
    .restart local v1    # "cell":Landroid/view/View;
    .restart local v6    # "i":I
    .restart local v9    # "matrix":[[I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v2, v11, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 212
    .local v2, "cx":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v3, v11, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 213
    .local v3, "cy":I
    aget-object v11, v9, v2

    aput v6, v11, v3

    goto :goto_2

    .line 220
    .end local v1    # "cell":Landroid/view/View;
    .end local v2    # "cx":I
    .end local v3    # "cy":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    :goto_3
    if-eqz p4, :cond_6

    const/4 v11, 0x0

    :goto_4
    if-lt v6, v11, :cond_b

    .line 221
    const/4 v4, 0x0

    .line 222
    .local v4, "delta":I
    if-eqz p2, :cond_7

    .line 224
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v2, v11, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 225
    .restart local v2    # "cx":I
    if-eqz p4, :cond_3

    move/from16 v0, p3

    if-ge v2, v0, :cond_4

    :cond_3
    if-nez p4, :cond_5

    move/from16 v0, p3

    if-le v2, v0, :cond_5

    .line 227
    :cond_4
    const/4 v4, -0x1

    .line 229
    :cond_5
    add-int v11, v2, v4

    aget-object v11, v9, v11

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v12

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    add-int/2addr v13, v6

    aput v13, v11, v12

    .line 220
    .end local v2    # "cx":I
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .end local v4    # "delta":I
    :cond_6
    const/4 v11, 0x1

    goto :goto_4

    .line 232
    .restart local v4    # "delta":I
    :cond_7
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v3, v11, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 233
    .restart local v3    # "cy":I
    if-eqz p4, :cond_8

    move/from16 v0, p3

    if-ge v3, v0, :cond_9

    :cond_8
    if-nez p4, :cond_a

    move/from16 v0, p3

    if-le v3, v0, :cond_a

    .line 235
    :cond_9
    const/4 v4, -0x1

    .line 237
    :cond_a
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v11

    aget-object v11, v9, v11

    add-int v12, v3, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    add-int/2addr v13, v6

    aput v13, v11, v12

    goto :goto_5

    .line 243
    .end local v3    # "cy":I
    .end local v4    # "delta":I
    :cond_b
    return-object v9
.end method

.method public static getAdjacentChildInNextPage(Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;
    .locals 7
    .param p0, "nextPage"    # Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    .param p1, "oldView"    # Landroid/view/View;
    .param p2, "edgeColumn"    # I

    .prologue
    const/4 v5, 0x0

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget v1, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 504
    .local v1, "newRow":I
    const/16 v4, -0x9

    if-ne p2, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v6

    xor-int/2addr v4, v6

    if-eqz v4, :cond_1

    move v0, v5

    .line 507
    .local v0, "column":I
    :goto_1
    if-ltz v0, :cond_4

    .line 508
    move v3, v1

    .local v3, "row":I
    :goto_2
    if-ltz v3, :cond_3

    .line 509
    invoke-virtual {p0, v0, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 510
    .local v2, "newView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 515
    .end local v2    # "newView":Landroid/view/View;
    .end local v3    # "row":I
    :goto_3
    return-object v2

    .end local v0    # "column":I
    :cond_0
    move v4, v5

    .line 504
    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    .line 508
    .restart local v0    # "column":I
    .restart local v2    # "newView":Landroid/view/View;
    .restart local v3    # "row":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 507
    .end local v2    # "newView":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 515
    .end local v3    # "row":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private static getStringIndex(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 464
    packed-switch p0, :pswitch_data_0

    .line 474
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 465
    :pswitch_1
    const-string v0, "NOOP"

    goto :goto_0

    .line 466
    :pswitch_2
    const-string v0, "PREVIOUS_PAGE_FIRST"

    goto :goto_0

    .line 467
    :pswitch_3
    const-string v0, "PREVIOUS_PAGE_LAST"

    goto :goto_0

    .line 468
    :pswitch_4
    const-string v0, "PREVIOUS_PAGE_RIGHT_COLUMN"

    goto :goto_0

    .line 469
    :pswitch_5
    const-string v0, "CURRENT_PAGE_FIRST"

    goto :goto_0

    .line 470
    :pswitch_6
    const-string v0, "CURRENT_PAGE_LAST"

    goto :goto_0

    .line 471
    :pswitch_7
    const-string v0, "NEXT_PAGE_FIRST"

    goto :goto_0

    .line 472
    :pswitch_8
    const-string v0, "NEXT_PAGE_LEFT_COLUMN"

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private static handleDpadHorizontal(III[[II)I
    .locals 11
    .param p0, "iconIdx"    # I
    .param p1, "cntX"    # I
    .param p2, "cntY"    # I
    .param p3, "matrix"    # [[I
    .param p4, "increment"    # I

    .prologue
    const/4 v10, -0x1

    .line 305
    if-nez p3, :cond_0

    .line 306
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Dpad navigation requires a matrix."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 308
    :cond_0
    const/4 v3, -0x1

    .line 310
    .local v3, "newIconIndex":I
    const/4 v7, -0x1

    .line 311
    .local v7, "xPos":I
    const/4 v8, -0x1

    .line 313
    .local v8, "yPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 314
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 315
    aget-object v9, p3, v1

    aget v9, v9, v2

    if-ne v9, p0, :cond_1

    .line 316
    move v7, v1

    .line 317
    move v8, v2

    .line 314
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "j":I
    :cond_3
    add-int v1, v7, p4

    :goto_2
    if-ltz v1, :cond_5

    if-ge v1, p1, :cond_5

    .line 328
    invoke-static {v1, v8, p1, p2, p3}, Lnet/oneplus/h2launcher/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v3

    if-eq v3, v10, :cond_4

    move v4, v3

    .line 350
    .end local v3    # "newIconIndex":I
    .local v4, "newIconIndex":I
    :goto_3
    return v4

    .line 327
    .end local v4    # "newIconIndex":I
    .restart local v3    # "newIconIndex":I
    :cond_4
    add-int/2addr v1, p4

    goto :goto_2

    .line 337
    :cond_5
    const/4 v1, -0x1

    .line 338
    const/4 v0, 0x1

    .local v0, "coeff":I
    :goto_4
    if-ge v0, p2, :cond_9

    .line 339
    mul-int v9, v0, p4

    add-int v5, v8, v9

    .line 340
    .local v5, "nextYPos1":I
    mul-int v9, v0, p4

    sub-int v6, v8, v9

    .line 341
    .local v6, "nextYPos2":I
    mul-int v9, p4, v0

    add-int v1, v7, v9

    :goto_5
    if-ltz v1, :cond_8

    if-ge v1, p1, :cond_8

    .line 342
    invoke-static {v1, v5, p1, p2, p3}, Lnet/oneplus/h2launcher/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v3

    if-eq v3, v10, :cond_6

    move v4, v3

    .line 343
    .end local v3    # "newIconIndex":I
    .restart local v4    # "newIconIndex":I
    goto :goto_3

    .line 345
    .end local v4    # "newIconIndex":I
    .restart local v3    # "newIconIndex":I
    :cond_6
    invoke-static {v1, v6, p1, p2, p3}, Lnet/oneplus/h2launcher/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v3

    if-eq v3, v10, :cond_7

    move v4, v3

    .line 346
    .end local v3    # "newIconIndex":I
    .restart local v4    # "newIconIndex":I
    goto :goto_3

    .line 341
    .end local v4    # "newIconIndex":I
    .restart local v3    # "newIconIndex":I
    :cond_7
    add-int/2addr v1, p4

    goto :goto_5

    .line 338
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v5    # "nextYPos1":I
    .end local v6    # "nextYPos2":I
    :cond_9
    move v4, v3

    .line 350
    .end local v3    # "newIconIndex":I
    .restart local v4    # "newIconIndex":I
    goto :goto_3
.end method

.method private static handleDpadVertical(III[[II)I
    .locals 11
    .param p0, "iconIndex"    # I
    .param p1, "cntX"    # I
    .param p2, "cntY"    # I
    .param p3, "matrix"    # [[I
    .param p4, "increment"    # I

    .prologue
    const/4 v10, -0x1

    .line 365
    const/4 v3, -0x1

    .line 366
    .local v3, "newIconIndex":I
    if-nez p3, :cond_0

    .line 367
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Dpad navigation requires a matrix."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 370
    :cond_0
    const/4 v7, -0x1

    .line 371
    .local v7, "xPos":I
    const/4 v8, -0x1

    .line 373
    .local v8, "yPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 374
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 375
    aget-object v9, p3, v1

    aget v9, v9, v2

    if-ne v9, p0, :cond_1

    .line 376
    move v7, v1

    .line 377
    move v8, v2

    .line 374
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 373
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "j":I
    :cond_3
    add-int v2, v8, p4

    .restart local v2    # "j":I
    :goto_2
    if-ltz v2, :cond_5

    if-ge v2, p2, :cond_5

    if-ltz v2, :cond_5

    .line 389
    invoke-static {v7, v2, p1, p2, p3}, Lnet/oneplus/h2launcher/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v3

    if-eq v3, v10, :cond_4

    move v4, v3

    .line 411
    .end local v3    # "newIconIndex":I
    .local v4, "newIconIndex":I
    :goto_3
    return v4

    .line 388
    .end local v4    # "newIconIndex":I
    .restart local v3    # "newIconIndex":I
    :cond_4
    add-int/2addr v2, p4

    goto :goto_2

    .line 398
    :cond_5
    const/4 v2, -0x1

    .line 399
    const/4 v0, 0x1

    .local v0, "coeff":I
    :goto_4
    if-ge v0, p1, :cond_9

    .line 400
    mul-int v9, v0, p4

    add-int v5, v7, v9

    .line 401
    .local v5, "nextXPos1":I
    mul-int v9, v0, p4

    sub-int v6, v7, v9

    .line 402
    .local v6, "nextXPos2":I
    mul-int v9, p4, v0

    add-int v2, v8, v9

    :goto_5
    if-ltz v2, :cond_8

    if-ge v2, p2, :cond_8

    .line 403
    invoke-static {v5, v2, p1, p2, p3}, Lnet/oneplus/h2launcher/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v3

    if-eq v3, v10, :cond_6

    move v4, v3

    .line 404
    .end local v3    # "newIconIndex":I
    .restart local v4    # "newIconIndex":I
    goto :goto_3

    .line 406
    .end local v4    # "newIconIndex":I
    .restart local v3    # "newIconIndex":I
    :cond_6
    invoke-static {v6, v2, p1, p2, p3}, Lnet/oneplus/h2launcher/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v3

    if-eq v3, v10, :cond_7

    move v4, v3

    .line 407
    .end local v3    # "newIconIndex":I
    .restart local v4    # "newIconIndex":I
    goto :goto_3

    .line 402
    .end local v4    # "newIconIndex":I
    .restart local v3    # "newIconIndex":I
    :cond_7
    add-int/2addr v2, p4

    goto :goto_5

    .line 399
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v5    # "nextXPos1":I
    .end local v6    # "nextXPos2":I
    :cond_9
    move v4, v3

    .line 411
    .end local v3    # "newIconIndex":I
    .restart local v4    # "newIconIndex":I
    goto :goto_3
.end method

.method public static handleKeyEvent(III[[IIIIZ)I
    .locals 3
    .param p0, "keyCode"    # I
    .param p1, "cntX"    # I
    .param p2, "cntY"    # I
    .param p3, "map"    # [[I
    .param p4, "iconIdx"    # I
    .param p5, "pageIndex"    # I
    .param p6, "pageCount"    # I
    .param p7, "isRtl"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 91
    const/4 v0, -0x1

    .line 92
    .local v0, "newIndex":I
    sparse-switch p0, :sswitch_data_0

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 94
    :sswitch_0
    invoke-static {p4, p1, p2, p3, v2}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleDpadHorizontal(III[[II)I

    move-result v0

    .line 95
    if-nez p7, :cond_1

    if-ne v0, v2, :cond_1

    if-lez p5, :cond_1

    .line 96
    const/4 v0, -0x2

    goto :goto_0

    .line 97
    :cond_1
    if-eqz p7, :cond_0

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, p6, -0x1

    if-ge p5, v1, :cond_0

    .line 98
    const/16 v0, -0xa

    goto :goto_0

    .line 102
    :sswitch_1
    invoke-static {p4, p1, p2, p3, v1}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleDpadHorizontal(III[[II)I

    move-result v0

    .line 103
    if-nez p7, :cond_2

    if-ne v0, v2, :cond_2

    add-int/lit8 v1, p6, -0x1

    if-ge p5, v1, :cond_2

    .line 104
    const/16 v0, -0x9

    goto :goto_0

    .line 105
    :cond_2
    if-eqz p7, :cond_0

    if-ne v0, v2, :cond_0

    if-lez p5, :cond_0

    .line 106
    const/4 v0, -0x5

    goto :goto_0

    .line 110
    :sswitch_2
    invoke-static {p4, p1, p2, p3, v1}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result v0

    .line 111
    goto :goto_0

    .line 113
    :sswitch_3
    invoke-static {p4, p1, p2, p3, v2}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result v0

    .line 114
    goto :goto_0

    .line 116
    :sswitch_4
    invoke-static {}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleMoveHome()I

    move-result v0

    .line 117
    goto :goto_0

    .line 119
    :sswitch_5
    invoke-static {}, Lnet/oneplus/h2launcher/util/FocusLogic;->handleMoveEnd()I

    move-result v0

    .line 120
    goto :goto_0

    .line 122
    :sswitch_6
    invoke-static {p5, p6}, Lnet/oneplus/h2launcher/util/FocusLogic;->handlePageDown(II)I

    move-result v0

    .line 123
    goto :goto_0

    .line 125
    :sswitch_7
    invoke-static {p5}, Lnet/oneplus/h2launcher/util/FocusLogic;->handlePageUp(I)I

    move-result v0

    .line 126
    goto :goto_0

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_7
        0x5d -> :sswitch_6
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private static handleMoveEnd()I
    .locals 1

    .prologue
    .line 419
    const/4 v0, -0x7

    return v0
.end method

.method private static handleMoveHome()I
    .locals 1

    .prologue
    .line 415
    const/4 v0, -0x6

    return v0
.end method

.method private static handlePageDown(II)I
    .locals 1
    .param p0, "pageIndex"    # I
    .param p1, "pageCount"    # I

    .prologue
    .line 423
    add-int/lit8 v0, p1, -0x1

    if-ge p0, v0, :cond_0

    .line 424
    const/4 v0, -0x8

    .line 426
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x7

    goto :goto_0
.end method

.method private static handlePageUp(I)I
    .locals 1
    .param p0, "pageIndex"    # I

    .prologue
    .line 430
    if-lez p0, :cond_0

    .line 431
    const/4 v0, -0x3

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x6

    goto :goto_0
.end method

.method private static inspectMatrix(IIII[[I)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "cntX"    # I
    .param p3, "cntY"    # I
    .param p4, "matrix"    # [[I

    .prologue
    .line 446
    const/4 v0, -0x1

    .line 447
    .local v0, "newIconIndex":I
    invoke-static {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/util/FocusLogic;->isValid(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    aget-object v2, p4, p0

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 449
    aget-object v2, p4, p0

    aget v0, v2, p1

    move v1, v0

    .line 457
    .end local v0    # "newIconIndex":I
    .local v1, "newIconIndex":I
    :goto_0
    return v1

    .end local v1    # "newIconIndex":I
    .restart local v0    # "newIconIndex":I
    :cond_0
    move v1, v0

    .end local v0    # "newIconIndex":I
    .restart local v1    # "newIconIndex":I
    goto :goto_0
.end method

.method private static isValid(IIII)Z
    .locals 1
    .param p0, "xPos"    # I
    .param p1, "yPos"    # I
    .param p2, "countX"    # I
    .param p3, "countY"    # I

    .prologue
    .line 442
    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static printMatrix([[I)V
    .locals 11
    .param p0, "matrix"    # [[I

    .prologue
    const/4 v10, 0x0

    .line 482
    const-string v5, "FocusLogic"

    const-string v6, "\tprintMap:"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    array-length v3, p0

    .line 484
    .local v3, "m":I
    aget-object v5, p0, v10

    array-length v4, v5

    .line 486
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 487
    const-string v0, "\t\t"

    .line 488
    .local v0, "colY":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "%3d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v9, p0, v1

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    :cond_0
    const-string v5, "FocusLogic"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "colY":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static shouldConsume(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 75
    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x43

    if-eq p0, v0, :cond_0

    const/16 v0, 0x70

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

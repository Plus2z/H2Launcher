.class public Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridItemDecoration"
.end annotation


# static fields
.field private static final DEBUG_SECTION_MARGIN:Z

.field private static final FADE_OUT_SECTIONS:Z


# instance fields
.field private mCachedSectionBounds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .prologue
    .line 152
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->mCachedSectionBounds:Ljava/util/HashMap;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->mTmpBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private getAndCacheSectionBounds(Ljava/lang/String;)Landroid/graphics/PointF;
    .locals 5
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->mCachedSectionBounds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 274
    .local v0, "bounds":Landroid/graphics/PointF;
    if-nez v0, :cond_0

    .line 275
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 276
    new-instance v0, Landroid/graphics/PointF;

    .end local v0    # "bounds":Landroid/graphics/PointF;
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 277
    .restart local v0    # "bounds":Landroid/graphics/PointF;
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->mCachedSectionBounds:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_0
    return-object v0
.end method

.method private isValidHolderAndChild(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;Landroid/view/View;Ljava/util/List;)Z
    .locals 4
    .param p1, "holder"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .param p2, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;>;"
    const/4 v2, 0x0

    .line 288
    .line 289
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 290
    .local v0, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v2

    .line 294
    :cond_1
    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;->getPosition()I

    move-result v1

    .line 299
    .local v1, "pos":I
    if-ltz v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 302
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private shouldDrawItemDivider(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;Ljava/util/List;)Z
    .locals 3
    .param p1, "holder"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;>;"
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;->getPosition()I

    move-result v0

    .line 311
    .local v0, "pos":I
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldDrawItemSection(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;ILjava/util/List;)Z
    .locals 5
    .param p1, "holder"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .param p2, "childIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 319
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;->getPosition()I

    move-result v1

    .line 320
    .local v1, "pos":I
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 323
    .local v0, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v2, v4, :cond_0

    .line 328
    :goto_0
    return v3

    .line 327
    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 328
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v2, v2, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-nez v2, :cond_2

    :cond_1
    move v2, v4

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 267
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 34
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    if-nez v2, :cond_1

    .line 261
    :cond_0
    return-void

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v16

    .line 174
    .local v16, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;>;"
    const/4 v12, 0x0

    .line 175
    .local v12, "hasDrawnPredictedAppsDivider":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    if-lez v2, :cond_3

    const/16 v29, 0x1

    .line 176
    .local v29, "showSectionNames":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v10

    .line 177
    .local v10, "childCount":I
    const/16 v20, 0x0

    .line 178
    .local v20, "lastSectionTop":I
    const/16 v18, 0x0

    .line 179
    .local v18, "lastSectionHeight":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v10, :cond_0

    .line 180
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 181
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;

    .line 182
    .local v13, "holder":Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v9, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->isValidHolderAndChild(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;Landroid/view/View;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 179
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 175
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childCount":I
    .end local v13    # "holder":Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .end local v14    # "i":I
    .end local v18    # "lastSectionHeight":I
    .end local v20    # "lastSectionTop":I
    .end local v29    # "showSectionNames":Z
    :cond_3
    const/16 v29, 0x0

    goto :goto_0

    .line 186
    .restart local v9    # "child":Landroid/view/View;
    .restart local v10    # "childCount":I
    .restart local v13    # "holder":Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .restart local v14    # "i":I
    .restart local v18    # "lastSectionHeight":I
    .restart local v20    # "lastSectionTop":I
    .restart local v29    # "showSectionNames":Z
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->shouldDrawItemDivider(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v12, :cond_5

    .line 188
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v3, v3, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mPredictionBarDividerOffset:I

    add-int v30, v2, v3

    .line 189
    .local v30, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move/from16 v0, v30

    int-to-float v4, v0

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v5, v5, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move/from16 v0, v30

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v7, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 189
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    const/4 v12, 0x1

    .line 194
    goto :goto_2

    .end local v30    # "top":I
    :cond_5
    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->shouldDrawItemSection(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    mul-int/lit8 v31, v2, 0x2

    .line 197
    .local v31, "viewTopOffset":I
    invoke-virtual {v13}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;->getPosition()I

    move-result v24

    .line 198
    .local v24, "pos":I
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 199
    .local v15, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget-object v0, v15, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    move-object/from16 v27, v0

    .line 202
    .local v27, "sectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    iget-object v0, v15, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 203
    .local v19, "lastSectionName":Ljava/lang/String;
    iget v0, v15, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    move/from16 v17, v0

    .local v17, "j":I
    :goto_3
    move-object/from16 v0, v27

    iget v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    .line 204
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 205
    .local v21, "nextItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 206
    .local v28, "sectionName":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    move-object/from16 v0, v27

    if-eq v2, v0, :cond_7

    .line 258
    .end local v21    # "nextItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v28    # "sectionName":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v27

    iget v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    iget v3, v15, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    sub-int/2addr v2, v3

    add-int/2addr v14, v2

    goto/16 :goto_2

    .line 209
    .restart local v21    # "nextItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .restart local v28    # "sectionName":Ljava/lang/String;
    :cond_7
    iget v2, v15, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    move/from16 v0, v17

    if-le v0, v2, :cond_8

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 203
    :goto_4
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 215
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->getAndCacheSectionBounds(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v26

    .line 218
    .local v26, "sectionBounds":Landroid/graphics/PointF;
    move/from16 v0, v31

    int-to-float v2, v0

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v25, v0

    .line 219
    .local v25, "sectionBaseline":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-boolean v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mIsRtl:Z

    if-eqz v2, :cond_b

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v3, v3, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v3, v3, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    sub-int v32, v2, v3

    .line 222
    .local v32, "x":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    int-to-float v2, v2

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v32, v32, v2

    .line 223
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    add-int v33, v2, v25

    .line 228
    .local v33, "y":I
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v8, v2, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 229
    .local v8, "appIndexInSection":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v3, v3, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    add-int v3, v3, v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v4, v4, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    rem-int v4, v8, v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 231
    .local v23, "nextRowPos":I
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 232
    .local v22, "nextRowItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    move-object/from16 v0, v22

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v11, 0x1

    .line 233
    .local v11, "fixedToRow":Z
    :goto_6
    if-nez v11, :cond_9

    .line 234
    move/from16 v0, v25

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 239
    :cond_9
    if-lez v18, :cond_a

    add-int v2, v20, v18

    move/from16 v0, v33

    if-gt v0, v2, :cond_a

    .line 240
    sub-int v2, v20, v33

    add-int v2, v2, v18

    add-int v33, v33, v2

    .line 252
    :cond_a
    move/from16 v0, v32

    int-to-float v2, v0

    move/from16 v0, v33

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v4, v4, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    move/from16 v20, v33

    .line 255
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v3, v3, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mSectionHeaderOffset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    .line 256
    move-object/from16 v19, v28

    goto/16 :goto_4

    .line 220
    .end local v8    # "appIndexInSection":I
    .end local v11    # "fixedToRow":Z
    .end local v22    # "nextRowItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v23    # "nextRowPos":I
    .end local v32    # "x":I
    .end local v33    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridItemDecoration;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    goto/16 :goto_5

    .line 232
    .restart local v8    # "appIndexInSection":I
    .restart local v22    # "nextRowItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .restart local v23    # "nextRowPos":I
    .restart local v32    # "x":I
    .restart local v33    # "y":I
    :cond_c
    const/4 v11, 0x0

    goto :goto_6
.end method

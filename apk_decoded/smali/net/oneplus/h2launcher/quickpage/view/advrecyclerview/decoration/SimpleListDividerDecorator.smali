.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.source "SimpleListDividerDecorator.java"


# instance fields
.field private final mHorizontalDividerHeight:I

.field private final mHorizontalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlap:Z

.field private final mVerticalDividerWidth:I

.field private final mVerticalDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "horizontalDivider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "verticalDivider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "overlap"    # Z

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;-><init>()V

    .line 58
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDividerHeight:I

    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :cond_0
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDividerWidth:I

    .line 64
    iput-boolean p3, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mOverlap:Z

    .line 65
    return-void

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "overlap"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mOverlap:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDividerWidth:I

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDividerHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 28
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v6

    .line 72
    .local v6, "childCount":I
    if-nez v6, :cond_1

    .line 142
    :cond_0
    return-void

    .line 76
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mOverlap:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const/high16 v20, 0x3f800000    # 1.0f

    .line 77
    .local v20, "xPositionThreshold":F
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mOverlap:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    const/high16 v21, 0x3f800000    # 1.0f

    .line 79
    .local v21, "yPositionThreshold":F
    :goto_1
    const/high16 v22, 0x3f800000    # 1.0f

    .line 81
    .local v22, "zPositionThreshold":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v23

    if-ge v9, v0, :cond_0

    .line 82
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 83
    .local v3, "child":Landroid/view/View;
    add-int/lit8 v23, v9, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 85
    .local v11, "nextChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-nez v23, :cond_2

    .line 86
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-eqz v23, :cond_5

    .line 81
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 76
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "i":I
    .end local v11    # "nextChild":Landroid/view/View;
    .end local v20    # "xPositionThreshold":F
    .end local v21    # "yPositionThreshold":F
    .end local v22    # "zPositionThreshold":F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDividerWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    add-float v20, v23, v24

    goto :goto_0

    .line 77
    .restart local v20    # "xPositionThreshold":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDividerHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    add-float v21, v23, v24

    goto :goto_1

    .line 91
    .restart local v3    # "child":Landroid/view/View;
    .restart local v9    # "i":I
    .restart local v11    # "nextChild":Landroid/view/View;
    .restart local v21    # "yPositionThreshold":F
    .restart local v22    # "zPositionThreshold":F
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v24

    add-float v5, v23, v24

    .line 92
    .local v5, "childBottom":F
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v24

    add-float v14, v23, v24

    .line 93
    .local v14, "nextChildTop":F
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v24

    add-float v7, v23, v24

    .line 94
    .local v7, "childRight":F
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v24

    add-float v13, v23, v24

    .line 96
    .local v13, "nextChildLeft":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDividerHeight:I

    move/from16 v23, v0

    if-eqz v23, :cond_6

    sub-float v23, v14, v5

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    cmpg-float v23, v23, v21

    if-ltz v23, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDividerWidth:I

    move/from16 v23, v0

    if-eqz v23, :cond_2

    sub-float v23, v13, v7

    .line 98
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    cmpg-float v23, v23, v20

    if-gez v23, :cond_2

    .line 104
    :cond_7
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v23

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v24

    add-float v8, v23, v24

    .line 105
    .local v8, "childZ":F
    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v23

    .line 106
    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v24

    add-float v15, v23, v24

    .line 108
    .local v15, "nextChildZ":F
    sub-float v23, v15, v8

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_2

    .line 112
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v4

    .line 113
    .local v4, "childAlpha":F
    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v12

    .line 115
    .local v12, "nextChildAlpha":F
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v23

    const/high16 v24, 0x3f000000    # 0.5f

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v18, v0

    .line 116
    .local v18, "tx":I
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v23

    const/high16 v24, 0x3f000000    # 0.5f

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v19, v0

    .line 118
    .local v19, "ty":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDividerHeight:I

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 119
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 120
    .local v10, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v16

    .line 121
    .local v16, "right":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mOverlap:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDividerHeight:I

    move/from16 v23, v0

    :goto_4
    sub-int v17, v24, v23

    .line 122
    .local v17, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDividerHeight:I

    move/from16 v23, v0

    add-int v2, v17, v23

    .line 124
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/high16 v24, 0x42ff0000    # 127.5f

    add-float v25, v4, v12

    mul-float v24, v24, v25

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    add-int v24, v10, v18

    add-int v25, v17, v19

    add-int v26, v16, v18

    add-int v27, v2, v19

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mHorizontalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    .end local v2    # "bottom":I
    .end local v10    # "left":I
    .end local v16    # "right":I
    .end local v17    # "top":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDividerWidth:I

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mOverlap:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDividerWidth:I

    move/from16 v23, v0

    :goto_5
    sub-int v10, v24, v23

    .line 132
    .restart local v10    # "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDividerWidth:I

    move/from16 v23, v0

    add-int v16, v10, v23

    .line 133
    .restart local v16    # "right":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v17

    .line 134
    .restart local v17    # "top":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 136
    .restart local v2    # "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/high16 v24, 0x42ff0000    # 127.5f

    add-float v25, v4, v12

    mul-float v24, v24, v25

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    add-int v24, v10, v18

    add-int v25, v17, v19

    add-int v26, v16, v18

    add-int v27, v2, v19

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/SimpleListDividerDecorator;->mVerticalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 121
    .end local v2    # "bottom":I
    .end local v17    # "top":I
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 131
    .end local v10    # "left":I
    .end local v16    # "right":I
    :cond_a
    const/16 v23, 0x0

    goto :goto_5
.end method

.class public Lcom/oneplus/lib/widget/OPButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "OPButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mLastWidthSize:I

    .line 45
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPButtonBarLayout_op_allowStacking:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method

.method private isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 12
    .param p1, "stacked"    # Z

    .prologue
    .line 107
    if-eqz p1, :cond_5

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setOrientation(I)V

    .line 108
    if-eqz p1, :cond_6

    const/4 v7, 0x5

    :goto_1
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setGravity(I)V

    .line 109
    if-eqz p1, :cond_7

    .line 110
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_bottom1:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setPadding(IIII)V

    .line 115
    :goto_2
    sget v7, Lcom/oneplus/commonctrl/R$id;->spacer:I

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 116
    .local v5, "spacer":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 117
    if-eqz p1, :cond_8

    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_0
    sget v7, Lcom/oneplus/commonctrl/R$id;->spacer2:I

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 121
    .local v6, "spacer2":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 122
    if-eqz p1, :cond_9

    const/16 v7, 0x8

    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_1
    const v7, 0x1020019

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "button1":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 127
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_list_item_height_one_line1:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_5
    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 130
    :cond_2
    const v7, 0x102001a

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "button2":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 132
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_list_item_height_one_line1:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_6
    invoke-virtual {v1, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 135
    :cond_3
    const v7, 0x102001b

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "button3":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 137
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_list_item_height_one_line1:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_7
    invoke-virtual {v2, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getChildCount()I

    move-result v3

    .line 143
    .local v3, "childCount":I
    add-int/lit8 v4, v3, -0x2

    .local v4, "i":I
    :goto_8
    if-ltz v4, :cond_d

    .line 144
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 143
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 107
    .end local v0    # "button1":Landroid/view/View;
    .end local v1    # "button2":Landroid/view/View;
    .end local v2    # "button3":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    .end local v5    # "spacer":Landroid/view/View;
    .end local v6    # "spacer2":Landroid/view/View;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 108
    :cond_6
    const/16 v7, 0x50

    goto/16 :goto_1

    .line 112
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_top1:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_right1:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_bottom1:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_left1:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 117
    .restart local v5    # "spacer":Landroid/view/View;
    :cond_8
    const/4 v7, 0x4

    goto/16 :goto_3

    .line 122
    .restart local v6    # "spacer2":Landroid/view/View;
    :cond_9
    const/4 v7, 0x4

    goto/16 :goto_4

    .line 127
    .restart local v0    # "button1":Landroid/view/View;
    :cond_a
    const/4 v7, 0x1

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    goto/16 :goto_5

    .line 132
    .restart local v1    # "button2":Landroid/view/View;
    :cond_b
    const/4 v7, 0x1

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    goto/16 :goto_6

    .line 137
    .restart local v2    # "button3":Landroid/view/View;
    :cond_c
    const/4 v7, 0x1

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    goto/16 :goto_7

    .line 146
    .restart local v3    # "childCount":I
    .restart local v4    # "i":I
    :cond_d
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 64
    .local v4, "widthSize":I
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_1

    .line 65
    iget v5, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mLastWidthSize:I

    if-le v4, v5, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->isStacked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setStacked(Z)V

    .line 70
    :cond_0
    iput v4, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mLastWidthSize:I

    .line 73
    :cond_1
    const/4 v3, 0x0

    .line 79
    .local v3, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->isStacked()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_4

    .line 80
    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 83
    .local v0, "initialWidthMeasureSpec":I
    const/4 v3, 0x1

    .line 88
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 90
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->isStacked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v1

    .line 92
    .local v1, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int v2, v1, v5

    .line 93
    .local v2, "measuredWidthState":I
    const/high16 v5, 0x1000000

    if-ne v2, v5, :cond_2

    .line 94
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setStacked(Z)V

    .line 97
    const/4 v3, 0x1

    .line 101
    .end local v1    # "measuredWidth":I
    .end local v2    # "measuredWidthState":I
    :cond_2
    if-eqz v3, :cond_3

    .line 102
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 104
    :cond_3
    return-void

    .line 85
    .end local v0    # "initialWidthMeasureSpec":I
    :cond_4
    move v0, p1

    .restart local v0    # "initialWidthMeasureSpec":I
    goto :goto_0
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 52
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    .line 53
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setStacked(Z)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->requestLayout()V

    .line 58
    :cond_1
    return-void
.end method

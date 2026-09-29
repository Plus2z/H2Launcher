.class public Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;
.super Landroid/view/ViewGroup;
.source "OneplusFlowLayout.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChildrenHeight:I

.field private mChildrenWidth:I

.field private mColumnCount:I

.field private mHorizontalSpacing:I

.field private mPaddingLeft:I

.field private mRowCount:I

.field private mScaledHorizontalSpacing:I

.field private mScaledPaddingLeft:I

.field private mVerticalSpacing:I

.field private mWrap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    sget-object v4, Lnet/oneplus/h2launcher/R$styleable;->OneplusFlowLayout:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 60
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 61
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 62
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 63
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 61
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :pswitch_0
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenWidth:I

    goto :goto_1

    .line 68
    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    goto :goto_1

    .line 71
    :pswitch_2
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mVerticalSpacing:I

    goto :goto_1

    .line 74
    :pswitch_3
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mHorizontalSpacing:I

    goto :goto_1

    .line 77
    :pswitch_4
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mPaddingLeft:I

    goto :goto_1

    .line 80
    :pswitch_5
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mColumnCount:I

    goto :goto_1

    .line 83
    :pswitch_6
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mWrap:Z

    goto :goto_1

    .line 88
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getHeightForSize(I)I
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mVerticalSpacing:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 159
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxHeight()I
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mRowCount:I

    iget v2, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mRowCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mVerticalSpacing:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 138
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowCount()I
    .locals 7

    .prologue
    .line 117
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getMeasuredHeight()I

    move-result v1

    .line 118
    .local v1, "height":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 119
    .local v3, "padding":I
    iget v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mRowCount:I

    if-lez v4, :cond_2

    .line 120
    iget v2, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mRowCount:I

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 121
    iget v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    mul-int/2addr v4, v2

    add-int v5, v3, v4

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    :goto_1
    iget v6, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mVerticalSpacing:I

    mul-int/2addr v4, v6

    add-int v0, v5, v4

    .line 123
    .local v0, "currentRowSize":I
    if-lt v1, v0, :cond_1

    .line 129
    .end local v0    # "currentRowSize":I
    .end local v2    # "i":I
    :goto_2
    return v2

    .line 121
    .restart local v2    # "i":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 120
    .restart local v0    # "currentRowSize":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 129
    .end local v0    # "currentRowSize":I
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public getStandardHeight()I
    .locals 7

    .prologue
    .line 142
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getMeasuredHeight()I

    move-result v1

    .line 143
    .local v1, "height":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 144
    .local v3, "padding":I
    iget v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mRowCount:I

    if-lez v4, :cond_2

    .line 145
    iget v2, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mRowCount:I

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 146
    iget v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    mul-int/2addr v4, v2

    add-int v5, v3, v4

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    :goto_1
    iget v6, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mVerticalSpacing:I

    mul-int/2addr v4, v6

    add-int v0, v5, v4

    .line 148
    .local v0, "currentRowSize":I
    if-lt v1, v0, :cond_1

    .line 154
    .end local v0    # "currentRowSize":I
    .end local v2    # "i":I
    :goto_2
    return v0

    .line 146
    .restart local v2    # "i":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 145
    .restart local v0    # "currentRowSize":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0    # "currentRowSize":I
    .end local v2    # "i":I
    :cond_2
    move v0, v1

    .line 154
    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildCount()I

    move-result v1

    .line 215
    .local v1, "count":I
    sub-int v3, p4, p2

    .line 216
    .local v3, "width":I
    iget v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mScaledPaddingLeft:I

    .line 217
    .local v4, "xPos":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingTop()I

    move-result v5

    .line 219
    .local v5, "yPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 220
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, "child":Landroid/view/View;
    iget-boolean v6, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mWrap:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenWidth:I

    add-int/2addr v6, v4

    if-le v6, v3, :cond_0

    .line 222
    iget v4, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mScaledPaddingLeft:I

    .line 223
    iget v6, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    iget v7, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mVerticalSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 225
    :cond_0
    iget v6, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 226
    iget v6, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenWidth:I

    iget v7, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mScaledHorizontalSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 164
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 165
    sget-boolean v13, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->$assertionsDisabled:Z

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 167
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildCount()I

    move-result v2

    .line 169
    .local v2, "count":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mColumnCount:I

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenWidth:I

    mul-int/2addr v14, v15

    sub-int v7, v13, v14

    .line 170
    .local v7, "residue":I
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mPaddingLeft:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mColumnCount:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mHorizontalSpacing:I

    mul-int/2addr v14, v15

    add-int v9, v13, v14

    .line 171
    .local v9, "totalMargin":I
    int-to-float v13, v7

    int-to-float v14, v9

    div-float v8, v13, v14

    .line 173
    .local v8, "scale":F
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mPaddingLeft:I

    int-to-float v13, v13

    mul-float/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mScaledPaddingLeft:I

    .line 174
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mHorizontalSpacing:I

    int-to-float v13, v13

    mul-float/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mScaledHorizontalSpacing:I

    .line 176
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingBottom()I

    move-result v14

    add-int v3, v13, v14

    .line 178
    .local v3, "height":I
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mScaledPaddingLeft:I

    .line 179
    .local v11, "xPos":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingTop()I

    move-result v12

    .line 181
    .local v12, "yPos":I
    const/4 v6, 0x0

    .line 182
    .local v6, "j":I
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenWidth:I

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 183
    .local v10, "widthSpec":I
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 184
    .local v4, "heightSpec":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 185
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 186
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, v10, v4}, Landroid/view/View;->measure(II)V

    .line 188
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mWrap:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenWidth:I

    add-int/2addr v13, v11

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getMeasuredWidth()I

    move-result v14

    if-le v13, v14, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mScaledPaddingLeft:I

    .line 190
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mVerticalSpacing:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 191
    add-int/lit8 v6, v6, 0x1

    .line 194
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mScaledHorizontalSpacing:I

    add-int/2addr v13, v14

    add-int/2addr v11, v13

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v13, v6, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mRowCount:I

    .line 198
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    .line 200
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    if-nez v13, :cond_4

    .line 201
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    add-int v3, v12, v13

    .line 208
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getSuggestedMinimumWidth()I

    move-result v13

    move/from16 v0, p1

    invoke-static {v13, v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getDefaultSize(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->setMeasuredDimension(II)V

    .line 210
    return-void

    .line 202
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    const/high16 v14, -0x80000000

    if-ne v13, v14, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    add-int/2addr v13, v12

    if-ge v13, v3, :cond_3

    .line 204
    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    add-int v3, v12, v13

    goto :goto_1
.end method

.method public setChildrenSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 100
    iput p1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenWidth:I

    .line 101
    iput p2, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mChildrenHeight:I

    .line 102
    return-void
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 113
    iput p1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mColumnCount:I

    .line 114
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 105
    iput p1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mHorizontalSpacing:I

    .line 106
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 109
    iput p1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mVerticalSpacing:I

    .line 110
    return-void
.end method

.method public setWrap(Z)V
    .locals 1
    .param p1, "wrap"    # Z

    .prologue
    .line 92
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mWrap:Z

    if-ne p1, v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->mWrap:Z

    .line 96
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->requestLayout()V

    goto :goto_0
.end method

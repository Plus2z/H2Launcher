.class public Lcom/oneplus/lib/widget/cardview/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/cardview/CardViewDelegate;


# static fields
.field private static final IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;


# instance fields
.field private mCompatPadding:Z

.field private final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field private final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    .line 84
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->initStatic()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 205
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->CardView:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->CardView_Light:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 207
    .local v7, "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 208
    .local v3, "backgroundColor":I
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardCornerRadius:I

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 209
    .local v4, "radius":F
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 210
    .local v5, "op_elevation":F
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 211
    .local v6, "maxElevation":F
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    .line 212
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    .line 213
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPadding:I

    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 214
    .local v8, "defaultPadding":I
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {v7, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 216
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {v7, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 218
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {v7, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 220
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {v7, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 222
    cmpl-float v0, v5, v6

    if-lez v0, :cond_0

    .line 223
    move v6, v5

    .line 225
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->initialize(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;Landroid/content/Context;IFFF)V

    .line 227
    return-void
.end method


# virtual methods
.method public getCardElevation()F
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    sget-object v4, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    instance-of v4, v4, Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    if-nez v4, :cond_0

    .line 179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 180
    .local v3, "widthMode":I
    sparse-switch v3, :sswitch_data_0

    .line 189
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 190
    .local v0, "heightMode":I
    sparse-switch v0, :sswitch_data_1

    .line 198
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 202
    .end local v0    # "heightMode":I
    .end local v3    # "widthMode":I
    :goto_2
    return-void

    .line 183
    .restart local v3    # "widthMode":I
    :sswitch_0
    sget-object v4, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v4, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getMinWidth(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 185
    .local v2, "minWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 184
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 193
    .end local v2    # "minWidth":I
    .restart local v0    # "heightMode":I
    :sswitch_1
    sget-object v4, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v4, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getMinHeight(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 195
    .local v1, "minHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 194
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 200
    .end local v0    # "heightMode":I
    .end local v1    # "minHeight":I
    .end local v3    # "widthMode":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 180
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 190
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 236
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->setBackgroundColor(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;I)V

    .line 237
    return-void
.end method

.method public setCardElevation(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 317
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->setElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    .line 318
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->updatePadding(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V

    .line 174
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 343
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    .line 344
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 114
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 118
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1
    .param p1, "preventCornerOverlap"    # Z

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    if-ne p1, v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    .line 387
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->onPreventCornerOverlapChanged(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V

    goto :goto_0
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 283
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->setRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    .line 284
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 306
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1
    .param p1, "useCompatPadding"    # Z

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    if-ne v0, p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    .line 152
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->onCompatPaddingChanged(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V

    goto :goto_0
.end method

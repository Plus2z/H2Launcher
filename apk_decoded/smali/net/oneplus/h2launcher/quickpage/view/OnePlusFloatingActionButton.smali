.class public Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;
.super Landroid/widget/ImageButton;
.source "OnePlusFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$TYPE;
    }
.end annotation


# static fields
.field public static final TYPE_MINI:I = 0x1

.field public static final TYPE_NORMAL:I


# instance fields
.field private mColorDisabled:I

.field private mColorNormal:I

.field private mColorPressed:I

.field private mColorRipple:I

.field private mContext:Landroid/content/Context;

.field private mMarginsSet:Z

.field private mShadow:Z

.field private mShadowSize:I

.field private mType:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    .prologue
    .line 31
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mType:I

    return v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;I)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getDimension(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->toggle(ZZZ)V

    return-void
.end method

.method private createDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 132
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 133
    .local v0, "ovalShape":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 134
    .local v1, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    return-object v1
.end method

.method private static darkenColor(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 305
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 306
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 307
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 308
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 144
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getDimension(I)I
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getMarginBottom()I
    .locals 3

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "marginBottom":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 194
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 195
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 197
    :cond_0
    return v1
.end method

.method private getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "attr"    # [I

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 81
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mVisible:Z

    .line 82
    const v1, 0x106000d

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getColor(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    .line 83
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->darkenColor(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorPressed:I

    .line 84
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->lightenColor(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorRipple:I

    .line 85
    const/high16 v1, 0x1060000

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getColor(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorDisabled:I

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mType:I

    .line 87
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadow:Z

    .line 88
    const v1, 0x7f0c007c

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getDimension(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadowSize:I

    .line 89
    const v1, 0x7f05000f

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    .line 91
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 92
    if-eqz p2, :cond_0

    .line 93
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->updateBackground()V

    .line 96
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    sget-object v1, Lnet/oneplus/h2launcher/R$styleable;->OnePlusFloatingActionButton:[I

    invoke-direct {p0, p1, p2, v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    .local v0, "attr":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x1

    const v2, 0x106000d

    .line 108
    :try_start_0
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getColor(I)I

    move-result v2

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    .line 109
    const/4 v1, 0x0

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    .line 110
    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->darkenColor(I)I

    move-result v2

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorPressed:I

    .line 111
    const/4 v1, 0x2

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    .line 112
    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->lightenColor(I)I

    move-result v2

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorRipple:I

    .line 113
    const/4 v1, 0x3

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorDisabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorDisabled:I

    .line 115
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadow:Z

    .line 116
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    :cond_0
    return-void

    .line 118
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static lightenColor(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 312
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 313
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 314
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 315
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadow:Z

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getElevation()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getElevation()F

    move-result v0

    .line 176
    .local v0, "elevation":F
    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setElevation(F)V

    .line 177
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v7, [[I

    new-array v4, v6, [I

    aput-object v4, v3, v6

    new-array v4, v7, [I

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorRipple:I

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 179
    .local v1, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;)V

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 187
    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setClipToOutline(Z)V

    .line 188
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    return-void

    .line 170
    .end local v0    # "elevation":F
    .end local v1    # "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    const v2, 0x7f0c0073

    .line 171
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getDimension(I)I

    move-result v2

    int-to-float v0, v2

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "elevation":F
    goto :goto_0
.end method

.method private setMarginsWithoutShadow()V
    .locals 7

    .prologue
    .line 152
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mMarginsSet:Z

    if-nez v5, :cond_0

    .line 153
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    .line 154
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 155
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadowSize:I

    sub-int v2, v5, v6

    .line 156
    .local v2, "leftMargin":I
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadowSize:I

    sub-int v4, v5, v6

    .line 157
    .local v4, "topMargin":I
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadowSize:I

    sub-int v3, v5, v6

    .line 158
    .local v3, "rightMargin":I
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadowSize:I

    sub-int v0, v5, v6

    .line 159
    .local v0, "bottomMargin":I
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 161
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->requestLayout()V

    .line 162
    const/4 v5, 0x1

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mMarginsSet:Z

    .line 165
    .end local v0    # "bottomMargin":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "leftMargin":I
    .end local v3    # "rightMargin":I
    .end local v4    # "topMargin":I
    :cond_0
    return-void
.end method

.method private toggle(ZZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 281
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mVisible:Z

    if-ne v2, p1, :cond_0

    if-eqz p3, :cond_1

    .line 282
    :cond_0
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mVisible:Z

    .line 283
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getHeight()I

    move-result v0

    .line 284
    .local v0, "height":I
    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 285
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 286
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;

    invoke-direct {v2, p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;-><init>(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;ZZ)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 302
    .end local v0    # "height":I
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method private updateBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 125
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorPressed:I

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->createDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 126
    new-array v1, v4, [I

    const v2, -0x101009e

    aput v2, v1, v3

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorDisabled:I

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->createDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 127
    new-array v1, v3, [I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->createDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 129
    return-void
.end method


# virtual methods
.method public getColorNormal()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorPressed:I

    return v0
.end method

.method public getColorRipple()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorRipple:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mType:I

    return v0
.end method

.method public hasShadow()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadow:Z

    return v0
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, v0, p1, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->toggle(ZZZ)V

    .line 278
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mVisible:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    .line 101
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 74
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mType:I

    if-nez v1, :cond_0

    const v1, 0x7f0c007e

    :goto_0
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getDimension(I)I

    move-result v0

    .line 76
    .local v0, "size":I
    invoke-virtual {p0, v0, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setMeasuredDimension(II)V

    .line 77
    return-void

    .line 74
    .end local v0    # "size":I
    :cond_0
    const v1, 0x7f0c007d

    goto :goto_0
.end method

.method public setColorNormal(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 201
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    if-eq p1, v0, :cond_0

    .line 202
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorNormal:I

    .line 203
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->updateBackground()V

    .line 205
    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1
    .param p1, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setColorNormal(I)V

    .line 209
    return-void
.end method

.method public setColorPressed(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 216
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorPressed:I

    if-eq p1, v0, :cond_0

    .line 217
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorPressed:I

    .line 218
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->updateBackground()V

    .line 220
    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1
    .param p1, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setColorPressed(I)V

    .line 224
    return-void
.end method

.method public setColorRipple(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 231
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorRipple:I

    if-eq p1, v0, :cond_0

    .line 232
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mColorRipple:I

    .line 233
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->updateBackground()V

    .line 235
    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 1
    .param p1, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setColorRipple(I)V

    .line 239
    return-void
.end method

.method public setShadow(Z)V
    .locals 1
    .param p1, "shadow"    # Z

    .prologue
    .line 246
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadow:Z

    if-eq p1, v0, :cond_0

    .line 247
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mShadow:Z

    .line 248
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->updateBackground()V

    .line 250
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 257
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mType:I

    if-eq p1, v0, :cond_0

    .line 258
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->mType:I

    .line 259
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->updateBackground()V

    .line 261
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 273
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->toggle(ZZZ)V

    .line 274
    return-void
.end method

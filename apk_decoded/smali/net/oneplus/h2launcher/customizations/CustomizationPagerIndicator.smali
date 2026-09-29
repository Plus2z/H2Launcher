.class public Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;
.super Landroid/view/View;
.source "CustomizationPagerIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mCurrentPage:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPositionOffset:F

.field private mScrollState:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mPaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 33
    .local v0, "color":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    .line 59
    .local v6, "count":I
    if-eqz v6, :cond_0

    .line 63
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mCurrentPage:I

    if-lt v0, v6, :cond_2

    .line 64
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mCurrentPage:I

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->getPaddingLeft()I

    move-result v7

    .line 69
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->getWidth()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v9, v6

    mul-float/2addr v5, v9

    div-float v8, v0, v5

    .line 70
    .local v8, "pageWidth":F
    int-to-float v0, v7

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mCurrentPage:I

    int-to-float v5, v5

    iget v9, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mPositionOffset:F

    add-float/2addr v5, v9

    mul-float/2addr v5, v8

    add-float v1, v0, v5

    .line 71
    .local v1, "left":F
    add-float v3, v1, v8

    .line 72
    .local v3, "right":F
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 73
    .local v2, "top":F
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v4, v0

    .line 74
    .local v4, "bottom":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 95
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mScrollState:I

    .line 96
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 79
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mCurrentPage:I

    .line 80
    iput p2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mPositionOffset:F

    .line 81
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->invalidate()V

    .line 82
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 86
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 87
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mCurrentPage:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mPositionOffset:F

    .line 89
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->invalidate()V

    .line 91
    :cond_0
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 48
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPagerIndicator;->invalidate()V

    goto :goto_0
.end method

.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperPreviewAdapter"
.end annotation


# instance fields
.field private mCurrentWidth:F

.field private final mDifference:F

.field private final mPageMargin:F

.field private final mPreviewItemWidth:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V
    .locals 3

    .prologue
    .line 729
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 730
    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$1100(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->getWallpaperPreviewPageFraction()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mPreviewItemWidth:F

    .line 731
    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$1100(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewHelper;->getWallpaperPreviewPageMarginFraction()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mPageMargin:F

    .line 732
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mPreviewItemWidth:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mPreviewItemWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mPageMargin:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mDifference:F

    .line 733
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mPreviewItemWidth:F

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mCurrentWidth:F

    .line 734
    return-void
.end method


# virtual methods
.method changeSelection(F)V
    .locals 8
    .param p1, "animate"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 766
    iget v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mPreviewItemWidth:F

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mDifference:F

    mul-float/2addr v5, p1

    sub-float/2addr v3, v5

    iput v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mCurrentWidth:F

    .line 767
    iget v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mCurrentWidth:F

    sub-float v3, v4, v3

    iget v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mPageMargin:F

    sub-float/2addr v3, v5

    iput v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mCurrentWidth:F

    .line 768
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-virtual {v3, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 769
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$1200(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setCurrentItem(I)V

    .line 770
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    .line 771
    .local v2, "item":Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;
    iget v3, v2, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mIndex:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$1200(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)I

    move-result v5

    if-ne v3, v5, :cond_1

    const/4 v1, 0x1

    .line 772
    .local v1, "isCurrent":Z
    :goto_1
    if-eqz v1, :cond_2

    mul-float v3, v7, p1

    add-float v0, v7, v3

    .line 774
    .local v0, "alpha":F
    :goto_2
    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setAlpha(F)V

    .line 775
    if-eqz v1, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setTranslationZ(F)V

    .line 776
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$1300(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 778
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$1300(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Ljava/util/List;

    move-result-object v3

    iget v5, v2, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->mIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v1, :cond_4

    move v5, p1

    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 771
    .end local v0    # "alpha":F
    .end local v1    # "isCurrent":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 772
    .restart local v1    # "isCurrent":Z
    :cond_2
    mul-float v3, v7, p1

    sub-float v0, v4, v3

    goto :goto_2

    .line 775
    .restart local v0    # "alpha":F
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 778
    :cond_4
    sub-float v5, v4, p1

    goto :goto_4

    .line 781
    .end local v0    # "alpha":F
    .end local v1    # "isCurrent":Z
    .end local v2    # "item":Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;
    :cond_5
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 747
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 748
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageWidth(I)F
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 757
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$1200(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mCurrentWidth:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mCurrentWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->mPageMargin:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 738
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 739
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 741
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 762
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/oneplus/lib/widget/cardview/CardViewApi21;
.super Ljava/lang/Object;
.source "CardViewApi21.java"

# interfaces
.implements Lcom/oneplus/lib/widget/cardview/CardViewImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;

    .prologue
    .line 77
    check-cast p1, Landroid/view/View;

    .end local p1    # "cardView":Lcom/oneplus/lib/widget/cardview/CardViewDelegate;
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->getPadding()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getMinWidth(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;

    .prologue
    .line 67
    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->getRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public initialize(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 3
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # I
    .param p4, "radius"    # F
    .param p5, "op_elevation"    # F
    .param p6, "maxElevation"    # F

    .prologue
    .line 26
    new-instance v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-direct {v0, p3, p4}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;-><init>(IF)V

    .line 27
    .local v0, "backgroundDrawable":Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;
    invoke-interface {p1, v0}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, p1

    .line 28
    check-cast v1, Landroid/view/View;

    .line 29
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 30
    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    .line 31
    invoke-virtual {p0, p1, p6}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    .line 32
    return-void
.end method

.method public onCompatPaddingChanged(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    .line 98
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    .line 103
    return-void
.end method

.method public setBackgroundColor(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;I)V
    .locals 1
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;
    .param p2, "color"    # I

    .prologue
    .line 107
    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setColor(I)V

    .line 108
    return-void
.end method

.method public setElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 0
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;
    .param p2, "op_elevation"    # F

    .prologue
    .line 72
    check-cast p1, Landroid/view/View;

    .end local p1    # "cardView":Lcom/oneplus/lib/widget/cardview/CardViewDelegate;
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 73
    return-void
.end method

.method public setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 3
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .prologue
    .line 45
    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    .line 46
    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    .line 45
    invoke-virtual {v0, p2, v1, v2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setPadding(FZZ)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->updatePadding(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V

    .line 48
    return-void
.end method

.method public setRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;
    .param p2, "radius"    # F

    .prologue
    .line 36
    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setRadius(F)V

    .line 37
    return-void
.end method

.method public updatePadding(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V
    .locals 6
    .param p1, "cardView"    # Lcom/oneplus/lib/widget/cardview/CardViewDelegate;

    .prologue
    const/4 v5, 0x0

    .line 82
    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    invoke-interface {p1, v5, v5, v5, v5}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v1

    .line 87
    .local v1, "op_elevation":F
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v2

    .line 89
    .local v2, "radius":F
    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 91
    .local v0, "hPadding":I
    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    .line 90
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 92
    .local v3, "vPadding":I
    invoke-interface {p1, v0, v3, v0, v3}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    goto :goto_0
.end method

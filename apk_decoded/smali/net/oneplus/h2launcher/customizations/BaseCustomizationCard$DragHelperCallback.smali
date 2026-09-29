.class Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;
.super Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;
.source "BaseCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$1;

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;I)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I

    .prologue
    .line 552
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$600(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;F)I

    move-result v0

    .line 553
    .local v0, "collapsedTop":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$600(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;F)I

    move-result v1

    .line 554
    .local v1, "expandedTop":I
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 544
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$400(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v0

    .line 547
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$800(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)I

    move-result v0

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;II)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v1, p2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$300(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;I)F

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$202(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;F)F

    .line 513
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$400(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getCardContainer()Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$200(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)F

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->onCardSlided(F)V

    .line 516
    :cond_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;F)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "yVel"    # F

    .prologue
    const/4 v4, 0x0

    .line 520
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$500(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 522
    neg-float v0, p2

    .line 524
    .local v0, "direction":F
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 525
    const/high16 v2, 0x3f800000    # 1.0f

    .line 534
    .local v2, "targetSlideOffset":F
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$200(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 535
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v3, v2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$600(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;F)I

    move-result v1

    .line 536
    .local v1, "target":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$700(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)Lnet/oneplus/h2launcher/customizations/DragHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->settleCapturedViewAt(I)Z

    .line 537
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->invalidate()V

    .line 540
    .end local v0    # "direction":F
    .end local v1    # "target":I
    .end local v2    # "targetSlideOffset":F
    :cond_0
    return-void

    .line 526
    .restart local v0    # "direction":F
    :cond_1
    cmpg-float v3, v0, v4

    if-gez v3, :cond_2

    .line 527
    const/4 v2, 0x0

    .restart local v2    # "targetSlideOffset":F
    goto :goto_0

    .line 528
    .end local v2    # "targetSlideOffset":F
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$DragHelperCallback;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$200(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 529
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "targetSlideOffset":F
    goto :goto_0

    .line 531
    .end local v2    # "targetSlideOffset":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "targetSlideOffset":F
    goto :goto_0
.end method

.class Lnet/oneplus/h2launcher/DragLayer$2;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DragLayer;->animateView(Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/DragLayer;

.field final synthetic val$alphaInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$dropViewScale:F

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScaleX:F

.field final synthetic val$finalScaleY:F

.field final synthetic val$from:Landroid/graphics/Rect;

.field final synthetic val$initAlpha:F

.field final synthetic val$initScaleX:F

.field final synthetic val$initScaleY:F

.field final synthetic val$motionInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$to:Landroid/graphics/Rect;

.field final synthetic val$view:Lnet/oneplus/h2launcher/DragView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DragLayer;Lnet/oneplus/h2launcher/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DragLayer;

    .prologue
    .line 916
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    iput-object p2, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$view:Lnet/oneplus/h2launcher/DragView;

    iput-object p3, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    iput p5, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$initScaleX:F

    iput p6, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$dropViewScale:F

    iput p7, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$initScaleY:F

    iput p8, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$finalScaleX:F

    iput p9, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$finalScaleY:F

    iput p10, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$finalAlpha:F

    iput p11, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$initAlpha:F

    iput-object p12, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$from:Landroid/graphics/Rect;

    iput-object p13, p0, Lnet/oneplus/h2launcher/DragLayer$2;->val$to:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 21
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 919
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 920
    .local v10, "percent":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$view:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v13

    .line 921
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$view:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v6

    .line 923
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    move v2, v10

    .line 925
    .local v2, "alphaPercent":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move v9, v10

    .line 928
    .local v9, "motionPercent":F
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$initScaleX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$dropViewScale:F

    move/from16 v19, v0

    mul-float v7, v18, v19

    .line 929
    .local v7, "initialScaleX":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$initScaleY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$dropViewScale:F

    move/from16 v19, v0

    mul-float v8, v18, v19

    .line 930
    .local v8, "initialScaleY":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$finalScaleX:F

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v10

    mul-float v19, v19, v7

    add-float v11, v18, v19

    .line 931
    .local v11, "scaleX":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$finalScaleY:F

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v10

    mul-float v19, v19, v8

    add-float v12, v18, v19

    .line 932
    .local v12, "scaleY":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$finalAlpha:F

    move/from16 v18, v0

    mul-float v18, v18, v2

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$initAlpha:F

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v2

    mul-float v19, v19, v20

    add-float v1, v18, v19

    .line 934
    .local v1, "alpha":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$from:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v7, v19

    int-to-float v0, v13

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v4, v18, v19

    .line 935
    .local v4, "fromLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$from:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v8, v19

    int-to-float v0, v6

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v5, v18, v19

    .line 937
    .local v5, "fromTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$to:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v4

    mul-float v18, v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v4

    move/from16 v0, v18

    float-to-int v14, v0

    .line 938
    .local v14, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$to:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v5

    mul-float v18, v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v5

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 940
    .local v16, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mAnchorView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    const/4 v3, 0x0

    .line 943
    .local v3, "anchorAdjust":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/DragView;->getScrollX()I

    move-result v18

    sub-int v18, v14, v18

    add-int v15, v18, v3

    .line 944
    .local v15, "xPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/DragView;->getScrollY()I

    move-result v18

    sub-int v17, v16, v18

    .line 946
    .local v17, "yPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lnet/oneplus/h2launcher/DragView;->setTranslationX(F)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lnet/oneplus/h2launcher/DragView;->setTranslationY(F)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/DragView;->setScaleX(F)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lnet/oneplus/h2launcher/DragView;->setScaleY(F)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragView;->setAlpha(F)V

    .line 951
    return-void

    .line 923
    .end local v1    # "alpha":F
    .end local v2    # "alphaPercent":F
    .end local v3    # "anchorAdjust":I
    .end local v4    # "fromLeft":F
    .end local v5    # "fromTop":F
    .end local v7    # "initialScaleX":F
    .end local v8    # "initialScaleY":F
    .end local v9    # "motionPercent":F
    .end local v11    # "scaleX":F
    .end local v12    # "scaleY":F
    .end local v14    # "x":I
    .end local v15    # "xPos":I
    .end local v16    # "y":I
    .end local v17    # "yPos":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    .line 924
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_0

    .line 925
    .restart local v2    # "alphaPercent":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    .line 926
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    goto/16 :goto_1

    .line 940
    .restart local v1    # "alpha":F
    .restart local v4    # "fromLeft":F
    .restart local v5    # "fromTop":F
    .restart local v7    # "initialScaleX":F
    .restart local v8    # "initialScaleY":F
    .restart local v9    # "motionPercent":F
    .restart local v11    # "scaleX":F
    .restart local v12    # "scaleY":F
    .restart local v14    # "x":I
    .restart local v16    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mAnchorView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScaleX()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mAnchorViewInitialScrollX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer$2;->this$0:Lnet/oneplus/h2launcher/DragLayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 941
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getScrollX()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v3, v0

    goto/16 :goto_2
.end method

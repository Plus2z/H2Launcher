.class public Lnet/oneplus/h2launcher/util/FlingAnimation;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DRAG_END_DELAY:I = 0x12c

.field private static final MAX_ACCELERATION:F = 0.5f


# instance fields
.field protected mAX:F

.field protected mAY:F

.field protected final mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field protected final mAnimationTimeFraction:F

.field protected final mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

.field protected final mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

.field protected final mDuration:I

.field protected final mFrom:Landroid/graphics/Rect;

.field protected final mIconRect:Landroid/graphics/Rect;

.field protected final mUX:F

.field protected final mUY:F


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/graphics/Rect;Lnet/oneplus/h2launcher/DragLayer;)V
    .locals 8
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p2, "vel"    # Landroid/graphics/PointF;
    .param p3, "iconRect"    # Landroid/graphics/Rect;
    .param p4, "dragLayer"    # Lnet/oneplus/h2launcher/DragLayer;

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 37
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mDragObject:Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .line 38
    iget v3, p2, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v7

    iput v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUX:F

    .line 39
    iget v3, p2, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v7

    iput v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUY:F

    .line 40
    iput-object p3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    .line 42
    iput-object p4, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    .line 43
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    .line 44
    iget-object v3, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {p4, v3, v4}, Lnet/oneplus/h2launcher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 46
    iget-object v3, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/DragView;->getScaleX()F

    move-result v0

    .line 47
    .local v0, "scale":F
    sub-float v3, v0, v5

    iget-object v4, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v1, v3, v6

    .line 48
    .local v1, "xOffset":F
    sub-float v3, v0, v5

    iget-object v4, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v2, v3, v6

    .line 49
    .local v2, "yOffset":F
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 50
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 51
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 52
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 54
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/util/FlingAnimation;->initDuration()I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mDuration:I

    .line 55
    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mDuration:I

    int-to-float v3, v3

    iget v4, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mDuration:I

    add-int/lit16 v4, v4, 0x12c

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAnimationTimeFraction:F

    .line 56
    return-void
.end method


# virtual methods
.method public final getDuration()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mDuration:I

    add-int/lit16 v0, v0, 0x12c

    return v0
.end method

.method protected initDuration()I
    .locals 10

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 66
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    int-to-float v2, v3

    .line 68
    .local v2, "sY":F
    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUY:F

    iget v6, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUY:F

    mul-float/2addr v3, v6

    mul-float v6, v8, v2

    mul-float/2addr v6, v7

    add-float v0, v3, v6

    .line 69
    .local v0, "d":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 71
    iput v7, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAY:F

    .line 77
    :goto_0
    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUY:F

    neg-float v3, v3

    float-to-double v6, v3

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAY:F

    float-to-double v8, v3

    div-double v4, v6, v8

    .line 79
    .local v4, "t":D
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    neg-float v3, v3

    iget-object v6, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    add-float v1, v3, v6

    .line 82
    .local v1, "sX":F
    float-to-double v6, v1

    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUX:F

    float-to-double v8, v3

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    mul-double v8, v4, v4

    div-double/2addr v6, v8

    double-to-float v3, v6

    iput v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAX:F

    .line 83
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v3, v6

    return v3

    .line 74
    .end local v1    # "sX":F
    .end local v4    # "t":D
    :cond_0
    const/4 v0, 0x0

    .line 75
    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUY:F

    iget v6, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUY:F

    mul-float/2addr v3, v6

    neg-float v6, v2

    mul-float/2addr v6, v8

    div-float/2addr v3, v6

    iput v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAY:F

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 92
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 93
    .local v1, "t":F
    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAnimationTimeFraction:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 94
    const/high16 v1, 0x3f800000    # 1.0f

    .line 98
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/DragView;

    .line 99
    .local v0, "dragView":Lnet/oneplus/h2launcher/DragView;
    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mDuration:I

    int-to-float v3, v3

    mul-float v2, v1, v3

    .line 100
    .local v2, "time":F
    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUX:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAX:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/DragView;->setTranslationX(F)V

    .line 101
    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mUY:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAY:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/DragView;->setTranslationY(F)V

    .line 102
    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v4, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/DragView;->setAlpha(F)V

    .line 103
    return-void

    .line 96
    .end local v0    # "dragView":Lnet/oneplus/h2launcher/DragView;
    .end local v2    # "time":F
    :cond_0
    iget v3, p0, Lnet/oneplus/h2launcher/util/FlingAnimation;->mAnimationTimeFraction:F

    div-float/2addr v1, v3

    goto :goto_0
.end method

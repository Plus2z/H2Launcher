.class public abstract Lnet/oneplus/h2launcher/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "ButtonDropTarget.java"

# interfaces
.implements Lnet/oneplus/h2launcher/DropTarget;
.implements Lnet/oneplus/h2launcher/DragController$DragListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static DRAG_VIEW_DROP_DURATION:I


# instance fields
.field protected mActive:Z

.field private mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mBottomDragPadding:I

.field private mCurrentColorAnim:Landroid/animation/AnimatorSet;

.field mCurrentFilter:Landroid/graphics/ColorMatrix;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field mDstFilter:Landroid/graphics/ColorMatrix;

.field protected mHoverColor:I

.field protected mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field protected mOriginalTextColor:Landroid/content/res/ColorStateList;

.field protected mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

.field mSrcFilter:Landroid/graphics/ColorMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x11d

    sput v0, Lnet/oneplus/h2launcher/ButtonDropTarget;->DRAG_VIEW_DROP_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mHoverColor:I

    .line 81
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mBottomDragPadding:I

    .line 82
    return-void
.end method

.method private animateTextColor(I)V
    .locals 6
    .param p1, "targetColor"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 163
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    .line 164
    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    sget v2, Lnet/oneplus/h2launcher/DragView;->COLOR_CHANGE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 166
    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    if-nez v1, :cond_1

    .line 167
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    .line 168
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDstFilter:Landroid/graphics/ColorMatrix;

    .line 169
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    .line 172
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getTextColor()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 173
    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDstFilter:Landroid/graphics/ColorMatrix;

    invoke-static {p1, v1}, Lnet/oneplus/h2launcher/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 174
    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    .line 175
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    .line 176
    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDstFilter:Landroid/graphics/ColorMatrix;

    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    aput-object v3, v2, v5

    .line 174
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 177
    .local v0, "anim1":Landroid/animation/ValueAnimator;
    new-instance v1, Lnet/oneplus/h2launcher/ButtonDropTarget$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/ButtonDropTarget$1;-><init>(Lnet/oneplus/h2launcher/ButtonDropTarget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 187
    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    const-string v2, "textColor"

    new-array v3, v5, [I

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 188
    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 189
    return-void
.end method


# virtual methods
.method public final acceptDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z
    .locals 2
    .param p1, "dragObject"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 232
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->supportsDrop(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public completeDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    .line 282
    return-void
.end method

.method public enableAccessibleDrag(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 334
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAccessibilityDropConfirmation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 287
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mBottomDragPadding:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 289
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 290
    .local v0, "coords":[I
    iget-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 291
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 292
    return-void
.end method

.method protected getIconRect(IIII)Landroid/graphics/Rect;
    .locals 12
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "drawableWidth"    # I
    .param p4, "drawableHeight"    # I

    .prologue
    .line 295
    iget-object v10, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v10}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v1

    .line 298
    .local v1, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 299
    .local v5, "to":Landroid/graphics/Rect;
    invoke-virtual {v1, p0, v5}, Lnet/oneplus/h2launcher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 301
    move v7, p3

    .line 302
    .local v7, "width":I
    move/from16 v2, p4

    .line 307
    .local v2, "height":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 308
    iget v10, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getPaddingRight()I

    move-result v11

    sub-int v4, v10, v11

    .line 309
    .local v4, "right":I
    sub-int v3, v4, v7

    .line 315
    .local v3, "left":I
    :goto_0
    iget v10, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int v6, v10, v11

    .line 316
    .local v6, "top":I
    add-int v0, v6, v2

    .line 318
    .local v0, "bottom":I
    invoke-virtual {v5, v3, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 321
    sub-int v10, p1, v7

    neg-int v10, v10

    div-int/lit8 v8, v10, 0x2

    .line 322
    .local v8, "xOffset":I
    sub-int v10, p2, v2

    neg-int v10, v10

    div-int/lit8 v9, v10, 0x2

    .line 323
    .local v9, "yOffset":I
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 325
    return-object v5

    .line 311
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    .end local v8    # "xOffset":I
    .end local v9    # "yOffset":I
    :cond_0
    iget v10, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getPaddingLeft()I

    move-result v11

    add-int v3, v10, v11

    .line 312
    .restart local v3    # "left":I
    add-int v4, v3, v7

    .restart local v4    # "right":I
    goto :goto_0
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .param p1, "loc"    # [I

    .prologue
    .line 330
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 331
    return-void
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mActive:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 343
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getAccessibilityDropConfirmation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mActive:Z

    .line 245
    return-void
.end method

.method public final onDragEnter(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 5
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 122
    iget-object v2, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    iget v3, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/DragView;->setColor(I)V

    .line 123
    sget-boolean v2, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v2, :cond_1

    .line 124
    iget v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mHoverColor:I

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/ButtonDropTarget;->animateTextColor(I)V

    .line 133
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 134
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 135
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v4, :cond_3

    .line 136
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 137
    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 141
    :cond_0
    return-void

    .line 126
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    if-nez v2, :cond_2

    .line 127
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    .line 129
    :cond_2
    iget v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mHoverColor:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 130
    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v4, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 131
    iget v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setTextColor(I)V

    goto :goto_0

    .line 134
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 5
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-boolean v2, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragComplete:Z

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/DragView;->setColor(I)V

    .line 195
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->resetHoverColor()V

    .line 200
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "reverse"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 204
    .local v1, "reverse":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 216
    .end local v1    # "reverse":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 198
    :cond_1
    iget-object v2, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    iget v3, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/DragView;->setColor(I)V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "DropTarget"

    const-string v3, "failed to get method: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 207
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "DropTarget"

    const-string v3, "failed to invoke target: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 209
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "DropTarget"

    const-string v3, "illegal access exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 213
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    goto :goto_1
.end method

.method public onDragOver(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 146
    return-void
.end method

.method public final onDragStart(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/ButtonDropTarget;->supportsDrop(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mActive:Z

    .line 221
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 222
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 224
    iput-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    .line 226
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 227
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mActive:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 228
    return-void

    .line 227
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 20
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v3

    .line 253
    .local v3, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 254
    .local v5, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget-object v4, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 257
    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 258
    .local v18, "height":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v8, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v4, v8, v1, v2}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v6

    .line 260
    .local v6, "to":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v7, v4, v8

    .line 261
    .local v7, "scale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->deferOnDragEnd()V

    .line 263
    new-instance v15, Lnet/oneplus/h2launcher/ButtonDropTarget$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lnet/oneplus/h2launcher/ButtonDropTarget$2;-><init>(Lnet/oneplus/h2launcher/ButtonDropTarget;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 271
    .local v15, "onAnimationEndRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v4, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3dcccccd    # 0.1f

    sget v12, Lnet/oneplus/h2launcher/ButtonDropTarget;->DRAG_VIEW_DROP_DURATION:I

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v13, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lnet/oneplus/h2launcher/DragLayer;->animateView(Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 275
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 87
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 90
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 91
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, ""

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onFlingToDelete(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p2, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 118
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method protected resetHoverColor()V
    .locals 2

    .prologue
    .line 149
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->animateTextColor(I)V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 153
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method protected setDrawable(I)V
    .locals 2
    .param p1, "resId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    sget-boolean v0, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Lnet/oneplus/h2launcher/ButtonDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLauncher(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 110
    iput-object p1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 111
    return-void
.end method

.method public setSearchDropTargetBar(Lnet/oneplus/h2launcher/SearchDropTargetBar;)V
    .locals 0
    .param p1, "searchDropTargetBar"    # Lnet/oneplus/h2launcher/SearchDropTargetBar;

    .prologue
    .line 114
    iput-object p1, p0, Lnet/oneplus/h2launcher/ButtonDropTarget;->mSearchDropTargetBar:Lnet/oneplus/h2launcher/SearchDropTargetBar;

    .line 115
    return-void
.end method

.method protected abstract supportsDrop(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;)Z
.end method

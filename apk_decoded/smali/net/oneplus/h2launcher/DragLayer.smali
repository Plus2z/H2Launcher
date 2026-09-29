.class public Lnet/oneplus/h2launcher/DragLayer;
.super Lnet/oneplus/h2launcher/InsettableFrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;,
        Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    }
.end annotation


# static fields
.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2

.field public static final BACKGROUND_COLOR_RATIO:F = 0.6f

.field private static final SCRIM_COLOR:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private SWIPE_THRESHOLD:I

.field private mActiveController:Lnet/oneplus/h2launcher/util/TouchController;

.field mAnchorView:Landroid/view/View;

.field mAnchorViewInitialScrollX:I

.field private mBackgroundAlpha:F

.field private mChildCountOnLastUpdate:I

.field private final mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

.field private mDownY:F

.field mDragController:Lnet/oneplus/h2launcher/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field mDropView:Lnet/oneplus/h2launcher/DragView;

.field private mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

.field private mHasTriggeredGesture:Z

.field private final mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private mInScrollArea:Z

.field private mIsCustomContentScreen:Z

.field private final mIsRtl:Z

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftHoverDrawableActive:Landroid/graphics/drawable/Drawable;

.field private mOverlayView:Landroid/view/View;

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightHoverDrawableActive:Landroid/graphics/drawable/Drawable;

.field private final mScrollChildPosition:Landroid/graphics/Rect;

.field private mShowPageHints:Z

.field private final mStatusBarManager:Ljava/lang/Object;

.field private final mTmpXY:[I

.field private mTopViewIndex:I

.field private mTouchCompleteListener:Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;

.field public mTransY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mXDown:I

.field private mYDown:I

.field public mYVelocity:I

.field private mdrawingCache:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/DragLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/16 v1, 0xc8

    iput v1, p0, Lnet/oneplus/h2launcher/DragLayer;->SWIPE_THRESHOLD:I

    .line 77
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mTmpXY:[I

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    .line 95
    iput-object v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 96
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 97
    iput-object v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    .line 98
    iput v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mAnchorViewInitialScrollX:I

    .line 99
    iput-object v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mAnchorView:Landroid/view/View;

    .line 101
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mHoverPointClosesFolder:Z

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 108
    const/4 v1, -0x1

    iput v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mChildCountOnLastUpdate:I

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mBackgroundAlpha:F

    .line 114
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    .line 126
    iput-object v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 127
    iput v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mTransY:I

    .line 128
    iput v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mYVelocity:I

    .line 145
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 148
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mLeftHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    .line 152
    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mRightHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    .line 153
    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mIsRtl:Z

    .line 156
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mStatusBarManager:Ljava/lang/Object;

    .line 157
    return-void
.end method

.method private drawPageHints(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1116
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mShowPageHints:Z

    if-eqz v7, :cond_1

    .line 1117
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v6

    .line 1118
    .local v6, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getMeasuredWidth()I

    move-result v5

    .line 1119
    .local v5, "width":I
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v2

    .line 1120
    .local v2, "page":I
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mIsRtl:Z

    if-eqz v7, :cond_2

    add-int/lit8 v7, v2, 0x1

    :goto_0
    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 1121
    .local v1, "leftPage":Lnet/oneplus/h2launcher/CellLayout;
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mIsRtl:Z

    if-eqz v7, :cond_3

    add-int/lit8 v7, v2, -0x1

    :goto_1
    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/CellLayout;

    .line 1123
    .local v4, "rightPage":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->isDragTarget()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1124
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mInScrollArea:Z

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getIsDragOverlapping()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mLeftHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    .line 1126
    .local v0, "left":Landroid/graphics/drawable/Drawable;
    :goto_2
    const/4 v7, 0x0

    iget-object v8, p0, Lnet/oneplus/h2launcher/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 1127
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lnet/oneplus/h2launcher/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1126
    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1128
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1130
    .end local v0    # "left":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/CellLayout;->isDragTarget()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1131
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mInScrollArea:Z

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/CellLayout;->getIsDragOverlapping()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mRightHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    .line 1133
    .local v3, "right":Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v7, v5, v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lnet/oneplus/h2launcher/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v7, v8, v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1135
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1138
    .end local v1    # "leftPage":Lnet/oneplus/h2launcher/CellLayout;
    .end local v2    # "page":I
    .end local v3    # "right":Landroid/graphics/drawable/Drawable;
    .end local v4    # "rightPage":Lnet/oneplus/h2launcher/CellLayout;
    .end local v5    # "width":I
    .end local v6    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_1
    return-void

    .line 1120
    .restart local v2    # "page":I
    .restart local v5    # "width":I
    .restart local v6    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_2
    add-int/lit8 v7, v2, -0x1

    goto :goto_0

    .line 1121
    .restart local v1    # "leftPage":Lnet/oneplus/h2launcher/CellLayout;
    :cond_3
    add-int/lit8 v7, v2, 0x1

    goto :goto_1

    .line 1124
    .restart local v4    # "rightPage":Lnet/oneplus/h2launcher/CellLayout;
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1131
    :cond_5
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "intercept"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 245
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 246
    .local v2, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 247
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 249
    .local v4, "y":I
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->isCustomizationsViewVisible()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->isShrunkenAllAppsVisible()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 250
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->isWallpapersViewVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->isEventOverPreviewRegion(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 252
    const-string v7, "Launcher"

    const-string v8, "touch event handled (preview region), intercept=%b"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :goto_0
    return v5

    .line 257
    :cond_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    .line 258
    .local v0, "child":Lnet/oneplus/h2launcher/AppWidgetResizeFrame;
    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 260
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getLeft()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getTop()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {v0, v8, v9}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 261
    iput-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mCurrentResizeFrame:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    .line 262
    iput v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mXDown:I

    .line 263
    iput v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mYDown:I

    .line 264
    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 265
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->cancelSwipeUpDownGesture()V

    .line 266
    const-string v7, "Launcher"

    const-string v8, "touch event handled (app resize frames), intercept=%b"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    .end local v0    # "child":Lnet/oneplus/h2launcher/AppWidgetResizeFrame;
    :cond_3
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v1

    .line 273
    .local v1, "currentFolder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    .line 274
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Folder;->isEditingName()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 275
    invoke-direct {p0, v1, p1}, Lnet/oneplus/h2launcher/DragLayer;->isEventOverFolderTextRegion(Lnet/oneplus/h2launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 276
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Folder;->dismissEditingName()V

    .line 277
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->cancelSwipeUpDownGesture()V

    .line 278
    const-string v6, "Launcher"

    const-string v7, "touch event handled (folder edit name)"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_4
    invoke-direct {p0, v1, p1}, Lnet/oneplus/h2launcher/DragLayer;->isEventOverFolder(Lnet/oneplus/h2launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 284
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragLayer;->isInAccessibleDrag()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 286
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 287
    const-string v6, "Launcher"

    const-string v7, "touch event handled (isInAccessibleDrag)"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_5
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->isEventOverIconRearrangement(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 291
    const-string v6, "Launcher"

    const-string v7, "touch event handled (!isInAccessibleDrag)"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    goto/16 :goto_0

    :cond_6
    move v5, v6

    .line 297
    goto/16 :goto_0
.end method

.method private isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEventOverFolder(Lnet/oneplus/h2launcher/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "folder"    # Lnet/oneplus/h2launcher/Folder;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 194
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 195
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderTextRegion(Lnet/oneplus/h2launcher/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "folder"    # Lnet/oneplus/h2launcher/Folder;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEventOverIconRearrangement(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getIconRearrangementView()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    move-result-object v0

    .line 224
    .local v0, "iconRearrangementView":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->getIconRearrangementPanel()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 225
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 229
    .end local v0    # "iconRearrangementView":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEventOverPreviewRegion(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "over":Z
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isCustomizationsViewVisible()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isShrunkenAllAppsVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    move-result-object v0

    .line 214
    .local v0, "customizationsView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getPreviewRegion()Landroid/graphics/Rect;

    move-result-object v2

    .local v2, "rect":Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_2

    const/4 v1, 0x1

    .line 218
    .end local v0    # "customizationsView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return v1

    .line 216
    .restart local v0    # "customizationsView":Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInAccessibleDrag()Z
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    .line 486
    .local v0, "delegate":Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private printActiveController(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 424
    .local v0, "index":I
    sget-object v1, Lnet/oneplus/h2launcher/DragLayer;->TAG:Ljava/lang/String;

    const-string v2, "Intercept touch # event action: %d, pos: (%d, %d), activeController: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 425
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lnet/oneplus/h2launcher/DragLayer;->mActiveController:Lnet/oneplus/h2launcher/util/TouchController;

    aput-object v5, v3, v4

    .line 424
    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 5
    .param p1, "isEditingName"    # Z

    .prologue
    .line 471
    .line 472
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 473
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    if-eqz p1, :cond_1

    const v2, 0x7f0b005b

    .line 475
    .local v2, "stringId":I
    :goto_0
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 477
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 478
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 481
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "stringId":I
    :cond_0
    return-void

    .line 474
    :cond_1
    const v2, 0x7f0b005a

    goto :goto_0
.end method

.method private updateChildIndices()V
    .locals 3

    .prologue
    .line 1044
    const/4 v2, -0x1

    iput v2, p0, Lnet/oneplus/h2launcher/DragLayer;->mTopViewIndex:I

    .line 1045
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getChildCount()I

    move-result v0

    .line 1046
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1047
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lnet/oneplus/h2launcher/DragView;

    if-eqz v2, :cond_0

    .line 1048
    iput v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mTopViewIndex:I

    .line 1046
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    :cond_1
    iput v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mChildCountOnLastUpdate:I

    .line 1052
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 510
    .local v0, "currentFolder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragLayer;->isInAccessibleDrag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public addResizeFrame(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 4
    .param p1, "itemInfo"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "widget"    # Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    .param p3, "cellLayout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    const/4 v3, -0x1

    .line 755
    new-instance v1, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, p0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/DragLayer;)V

    .line 758
    .local v1, "resizeFrame":Lnet/oneplus/h2launcher/AppWidgetResizeFrame;
    new-instance v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    invoke-direct {v0, v3, v3}, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 759
    .local v0, "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 761
    invoke-virtual {p0, v1, v0}, Lnet/oneplus/h2launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    iget-object v2, p0, Lnet/oneplus/h2launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 765
    return-void
.end method

.method public animateView(Lnet/oneplus/h2launcher/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 4
    .param p1, "view"    # Lnet/oneplus/h2launcher/DragView;
    .param p2, "updateCb"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p6, "animationEndStyle"    # I
    .param p7, "anchorView"    # Landroid/view/View;

    .prologue
    .line 961
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 964
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    .line 965
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragView;->cancelAnimation()V

    .line 966
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragView;->resetLayoutParams()V

    .line 969
    if-eqz p7, :cond_1

    .line 970
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mAnchorViewInitialScrollX:I

    .line 972
    :cond_1
    iput-object p7, p0, Lnet/oneplus/h2launcher/DragLayer;->mAnchorView:Landroid/view/View;

    .line 975
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 976
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 977
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 978
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 979
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 980
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lnet/oneplus/h2launcher/DragLayer$3;

    invoke-direct {v1, p0, p5, p6}, Lnet/oneplus/h2launcher/DragLayer$3;-><init>(Lnet/oneplus/h2launcher/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 994
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 995
    return-void

    .line 978
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 25
    .param p1, "view"    # Lnet/oneplus/h2launcher/DragView;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "finalAlpha"    # F
    .param p5, "initScaleX"    # F
    .param p6, "initScaleY"    # F
    .param p7, "finalScaleX"    # F
    .param p8, "finalScaleY"    # F
    .param p9, "duration"    # I
    .param p10, "motionInterpolator"    # Landroid/view/animation/Interpolator;
    .param p11, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p12, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p13, "animationEndStyle"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 894
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v22, v0

    .line 895
    .local v22, "dist":F
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 896
    .local v24, "res":Landroid/content/res/Resources;
    const v3, 0x7f0f0028

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v23, v0

    .line 899
    .local v23, "maxDist":F
    if-gez p9, :cond_1

    .line 900
    const v3, 0x7f0f0029

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p9

    .line 901
    cmpg-float v3, v22, v23

    if-gez v3, :cond_0

    .line 902
    move/from16 v0, p9

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float v5, v22, v23

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p9, v0

    .line 904
    :cond_0
    const v3, 0x7f0f002a

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move/from16 v0, p9

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 908
    :cond_1
    const/16 v18, 0x0

    .line 909
    .local v18, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    .line 910
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v18, v0

    .line 914
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getAlpha()F

    move-result v13

    .line 915
    .local v13, "initAlpha":F
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getScaleX()F

    move-result v8

    .line 916
    .local v8, "dropViewScale":F
    new-instance v2, Lnet/oneplus/h2launcher/DragLayer$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p11

    move-object/from16 v6, p10

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v2 .. v15}, Lnet/oneplus/h2launcher/DragLayer$2;-><init>(Lnet/oneplus/h2launcher/DragLayer;Lnet/oneplus/h2launcher/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .local v2, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move/from16 v17, p9

    move-object/from16 v19, p12

    move/from16 v20, p13

    move-object/from16 v21, p14

    .line 953
    invoke-virtual/range {v14 .. v21}, Lnet/oneplus/h2launcher/DragLayer;->animateView(Lnet/oneplus/h2launcher/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 955
    return-void
.end method

.method public animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 17
    .param p1, "view"    # Lnet/oneplus/h2launcher/DragView;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I
    .param p6, "finalAlpha"    # F
    .param p7, "initScaleX"    # F
    .param p8, "initScaleY"    # F
    .param p9, "finalScaleX"    # F
    .param p10, "finalScaleY"    # F
    .param p11, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p12, "animationEndStyle"    # I
    .param p13, "duration"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 859
    new-instance v4, Landroid/graphics/Rect;

    .line 860
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 861
    .local v4, "from":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 862
    .local v5, "to":Landroid/graphics/Rect;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Lnet/oneplus/h2launcher/DragLayer;->animateView(Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 864
    return-void
.end method

.method public animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;Landroid/view/View;)V
    .locals 1
    .param p1, "dragView"    # Lnet/oneplus/h2launcher/DragView;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 768
    invoke-virtual {p0, p1, p2, v0, v0}, Lnet/oneplus/h2launcher/DragLayer;->animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 769
    return-void
.end method

.method public animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 25
    .param p1, "dragView"    # Lnet/oneplus/h2launcher/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p5, "anchorView"    # Landroid/view/View;

    .prologue
    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 791
    .local v21, "parentChildren":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 792
    .local v20, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 794
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 795
    .local v22, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 797
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 798
    .local v19, "coord":[I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v18

    .line 799
    .local v18, "childScale":F
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v18

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v4, v9

    aput v4, v19, v3

    .line 800
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v18

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v4, v9

    aput v4, v19, v3

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v23

    .line 807
    .local v23, "scale":F
    mul-float v23, v23, v18

    .line 808
    const/4 v3, 0x0

    aget v7, v19, v3

    .line 809
    .local v7, "toX":I
    const/4 v3, 0x1

    aget v8, v19, v3

    .line 810
    .local v8, "toY":I
    move/from16 v12, v23

    .line 811
    .local v12, "toScale":F
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object/from16 v24, p2

    .line 812
    check-cast v24, Landroid/widget/TextView;

    .line 815
    .local v24, "tv":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getIntrinsicIconScaleFactor()F

    move-result v3

    div-float v12, v23, v3

    .line 820
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v8, v3

    .line 821
    int-to-float v3, v8

    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v12

    mul-float/2addr v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    float-to-int v8, v3

    .line 822
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 823
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v8, v3

    .line 826
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v23

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 840
    .end local v24    # "tv":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 841
    .local v5, "fromX":I
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 842
    .local v6, "fromY":I
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 843
    new-instance v14, Lnet/oneplus/h2launcher/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lnet/oneplus/h2launcher/DragLayer$1;-><init>(Lnet/oneplus/h2launcher/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 851
    .local v14, "onCompleteRunnable":Ljava/lang/Runnable;
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v13, v12

    move/from16 v16, p3

    move-object/from16 v17, p5

    invoke-virtual/range {v3 .. v17}, Lnet/oneplus/h2launcher/DragLayer;->animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 853
    return-void

    .line 827
    .end local v5    # "fromX":I
    .end local v6    # "fromY":I
    .end local v14    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_1
    move-object/from16 v0, p2

    instance-of v3, v0, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v3, :cond_2

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getDragRegionTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v23

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v8, v3

    .line 830
    int-to-float v3, v8

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v23

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    float-to-int v8, v3

    .line 831
    int-to-float v3, v8

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v23

    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    float-to-int v8, v3

    .line 833
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v23

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto :goto_0

    .line 835
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v23

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 836
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v3

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v23

    .line 836
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto/16 :goto_0
.end method

.method public animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 6
    .param p1, "dragView"    # Lnet/oneplus/h2launcher/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p4, "anchorView"    # Landroid/view/View;

    .prologue
    .line 785
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/DragLayer;->animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 786
    return-void
.end method

.method public animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 19
    .param p1, "dragView"    # Lnet/oneplus/h2launcher/DragView;
    .param p2, "pos"    # [I
    .param p3, "alpha"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "animationEndStyle"    # I
    .param p7, "onFinishRunnable"    # Ljava/lang/Runnable;
    .param p8, "duration"    # I

    .prologue
    .line 774
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 775
    .local v18, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 776
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 777
    .local v5, "fromX":I
    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 779
    .local v6, "fromY":I
    const/4 v3, 0x0

    aget v7, p2, v3

    const/4 v3, 0x1

    aget v8, p2, v3

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p7

    move/from16 v15, p6

    move/from16 v16, p8

    invoke-virtual/range {v3 .. v17}, Lnet/oneplus/h2launcher/DragLayer;->animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 781
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1034
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1035
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mOverlayView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1040
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragLayer;->updateChildIndices()V

    .line 1041
    return-void
.end method

.method public cancelSwipeUpDownGesture()V
    .locals 1

    .prologue
    .line 1013
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDownY:F

    .line 1014
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 663
    instance-of v0, p1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    return v0
.end method

.method public clearAllResizeFrames()V
    .locals 3

    .prologue
    .line 736
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 737
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    .line 738
    .local v0, "frame":Lnet/oneplus/h2launcher/AppWidgetResizeFrame;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->commitResize()V

    .line 739
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 741
    .end local v0    # "frame":Lnet/oneplus/h2launcher/AppWidgetResizeFrame;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 743
    :cond_1
    return-void
.end method

.method public clearAnimatedView()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1001
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDragController:Lnet/oneplus/h2launcher/DragController;

    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragController;->onDeferredEndDrag(Lnet/oneplus/h2launcher/DragView;)V

    .line 1004
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    .line 1005
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->invalidate()V

    .line 1006
    return-void
.end method

.method public dismissOverlayView()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mOverlayView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1107
    iget v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1108
    iget v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1109
    .local v0, "alpha":I
    shl-int/lit8 v1, v0, 0x18

    or-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1112
    .end local v0    # "alpha":I
    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1113
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 168
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 304
    :pswitch_0
    const-string v0, "Launcher"

    const-string v1, "DragLayer dispatchTouchEvent: ACTION_DOWN"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :pswitch_1
    const-string v0, "Launcher"

    const-string v1, "DragLayer dispatchTouchEvent: ACTION_UP"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1141
    invoke-super {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1144
    .local v0, "ret":Z
    instance-of v1, p2, Lnet/oneplus/h2launcher/Workspace;

    if-eqz v1, :cond_0

    .line 1145
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->drawPageHints(Landroid/graphics/Canvas;)V

    .line 1147
    :cond_0
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->generateDefaultLayoutParams()Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->generateDefaultLayoutParams()Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 657
    new-instance v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->generateDefaultLayoutParams()Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 652
    new-instance v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 668
    new-instance v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mDropView:Lnet/oneplus/h2launcher/DragView;

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mBackgroundAlpha:F

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1056
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mChildCountOnLastUpdate:I

    if-eq v0, p1, :cond_0

    .line 1061
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragLayer;->updateChildIndices()V

    .line 1065
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mTopViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1076
    .end local p2    # "i":I
    :cond_1
    :goto_0
    return p2

    .line 1068
    .restart local p2    # "i":I
    :cond_2
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_3

    .line 1070
    iget p2, p0, Lnet/oneplus/h2launcher/DragLayer;->mTopViewIndex:I

    goto :goto_0

    .line 1071
    :cond_3
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mTopViewIndex:I

    if-lt p2, v0, :cond_1

    .line 1076
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I
    .param p3, "includeRootScroll"    # Z

    .prologue
    .line 610
    invoke-static {p1, p0, p2, p3}, Lnet/oneplus/h2launcher/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelfWithoutMapPoint(Landroid/view/View;[IZ)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I
    .param p3, "includeRootScroll"    # Z

    .prologue
    .line 620
    const/4 v0, 0x0

    invoke-static {p1, p0, p2, p3, v0}, Lnet/oneplus/h2launcher/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZZ)F

    move-result v0

    return v0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 576
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mTmpXY:[I

    aput v4, v1, v4

    .line 577
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mTmpXY:[I

    aput v4, v1, v5

    .line 578
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v1}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 580
    .local v0, "scale":F
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    iget-object v3, p0, Lnet/oneplus/h2launcher/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    int-to-float v3, v3

    .line 581
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    int-to-float v4, v4

    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 580
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 583
    return v0
.end method

.method public getDrawingImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mdrawingCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "loc"    # [I

    .prologue
    const/4 v1, 0x0

    .line 587
    aput v1, p2, v1

    .line 588
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 589
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 631
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 632
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/DragLayer;->getLocationInWindow([I)V

    .line 633
    aget v5, v1, v8

    .line 634
    .local v5, "x":I
    aget v6, v1, v9

    .line 636
    .local v6, "y":I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 637
    aget v3, v1, v8

    .line 638
    .local v3, "vX":I
    aget v4, v1, v9

    .line 640
    .local v4, "vY":I
    sub-int v0, v3, v5

    .line 641
    .local v0, "left":I
    sub-int v2, v4, v6

    .line 642
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 643
    return-void
.end method

.method public hasResizeFrames()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hidePageHints()V
    .locals 1

    .prologue
    .line 1099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mShowPageHints:Z

    .line 1100
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->invalidate()V

    .line 1101
    return-void
.end method

.method public isWidgetBeingResized()Z
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mCurrentResizeFrame:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapCoordInSelfToDescendent(Landroid/view/View;[I)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    .line 627
    invoke-static {p1, p0, p2}, Lnet/oneplus/h2launcher/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1018
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 1019
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1024
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragLayer;->updateChildIndices()V

    .line 1025
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1029
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragLayer;->updateChildIndices()V

    .line 1030
    return-void
.end method

.method onEnterScrollArea(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mInScrollArea:Z

    .line 1082
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->invalidate()V

    .line 1083
    return-void
.end method

.method onExitScrollArea()V
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mInScrollArea:Z

    .line 1087
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->invalidate()V

    .line 1088
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 430
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v6

    if-nez v6, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v4

    .line 433
    :cond_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v2

    .line 434
    .local v2, "currentFolder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 439
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 442
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 454
    :pswitch_1
    invoke-direct {p0, v2, p1}, Lnet/oneplus/h2launcher/DragLayer;->isEventOverFolder(Lnet/oneplus/h2launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 455
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragLayer;->isInAccessibleDrag()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    move v3, v5

    .line 456
    .local v3, "isOverFolderOrSearchBar":Z
    :goto_1
    if-nez v3, :cond_7

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v6, :cond_7

    .line 457
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Folder;->isEditingName()Z

    move-result v4

    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 458
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/DragLayer;->mHoverPointClosesFolder:Z

    move v4, v5

    .line 459
    goto :goto_0

    .line 444
    .end local v3    # "isOverFolderOrSearchBar":Z
    :pswitch_2
    invoke-direct {p0, v2, p1}, Lnet/oneplus/h2launcher/DragLayer;->isEventOverFolder(Lnet/oneplus/h2launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 445
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragLayer;->isInAccessibleDrag()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v3, v5

    .line 446
    .restart local v3    # "isOverFolderOrSearchBar":Z
    :goto_2
    if-nez v3, :cond_5

    .line 447
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Folder;->isEditingName()Z

    move-result v4

    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 448
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/DragLayer;->mHoverPointClosesFolder:Z

    move v4, v5

    .line 449
    goto :goto_0

    .end local v3    # "isOverFolderOrSearchBar":Z
    :cond_4
    move v3, v4

    .line 445
    goto :goto_2

    .line 451
    .restart local v3    # "isOverFolderOrSearchBar":Z
    :cond_5
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    .end local v3    # "isOverFolderOrSearchBar":Z
    :cond_6
    move v3, v4

    .line 455
    goto :goto_1

    .line 460
    .restart local v3    # "isOverFolderOrSearchBar":Z
    :cond_7
    if-nez v3, :cond_8

    move v4, v5

    .line 461
    goto :goto_0

    .line 463
    :cond_8
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 315
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_0

    .line 316
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 318
    :cond_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 319
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 320
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mYVelocity:I

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 407
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->clearAllResizeFrames()V

    .line 409
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v7, p1}, Lnet/oneplus/h2launcher/DragController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 410
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mDragController:Lnet/oneplus/h2launcher/DragController;

    iput-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mActiveController:Lnet/oneplus/h2launcher/util/TouchController;

    .line 411
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->printActiveController(Landroid/view/MotionEvent;)V

    .line 419
    :goto_1
    return v5

    .line 324
    :pswitch_0
    const-string v7, "Launcher"

    const-string v8, "DragLayer onInterceptTouchEvent: ACTION_DOWN"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mDownY:F

    .line 326
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mHasTriggeredGesture:Z

    .line 327
    invoke-direct {p0, p1, v5}, Lnet/oneplus/h2launcher/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 328
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->cancelSwipeUpDownGesture()V

    goto :goto_1

    .line 333
    :pswitch_1
    iget v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mDownY:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Lnet/oneplus/h2launcher/DragLayer;->mDownY:F

    sub-float/2addr v7, v8

    iget v8, p0, Lnet/oneplus/h2launcher/DragLayer;->SWIPE_THRESHOLD:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_3

    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v7, v7, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 335
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->isInNormalMode()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->isInSearchMode()Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mHasTriggeredGesture:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 336
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getSwipeDownEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 341
    :try_start_0
    const-string v7, "android.app.StatusBarManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 342
    .local v4, "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "expandNotificationsPanel"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 343
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 345
    .local v1, "expandNotificationsPanel":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mStatusBarManager:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 346
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mStatusBarManager:Ljava/lang/Object;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 357
    .end local v1    # "expandNotificationsPanel":Ljava/lang/reflect/Method;
    .end local v4    # "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_2
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/DragLayer;->mHasTriggeredGesture:Z

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "Launcher"

    const-string v8, "Failed to get class by reflection: "

    invoke-static {v7, v8, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 350
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "Launcher"

    const-string v8, "Failed to get method by reflection: "

    invoke-static {v7, v8, v0}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 352
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v7, "Launcher"

    const-string v8, "Failed to invoke the method by reflection: "

    invoke-static {v7, v8, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 354
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v7, "Launcher"

    const-string v8, "Illegal access to the target: "

    invoke-static {v7, v8, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 358
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    iget v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p0, Lnet/oneplus/h2launcher/DragLayer;->SWIPE_THRESHOLD:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v7, v7, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 359
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->isInNormalMode()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mHasTriggeredGesture:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 360
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getSwipeUpEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 364
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v7, v7, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v2

    .line 365
    .local v2, "folder":Lnet/oneplus/h2launcher/Folder;
    if-nez v2, :cond_6

    .line 366
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/oos/StyleManager;->showOnlineSearch()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 367
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v3, "i":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 369
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.google.android.googlequicksearchbox"

    const-string v9, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 371
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/DragLayer;->mHasTriggeredGesture:Z

    .line 373
    :try_start_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 374
    :catch_4
    move-exception v0

    .line 375
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "Launcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find google quick search box : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 381
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->isInWorkspaceMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 382
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v7, v7, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->resetTouchState()V

    .line 383
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->showGlobalSearch()V

    goto/16 :goto_0

    .line 385
    :cond_5
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->isInSearchMode()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->isInWorkspaceMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 386
    const-string v7, "Launcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t access GlobalSearch because Launcher state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 387
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Launcher;->getState()Lnet/oneplus/h2launcher/Launcher$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    :cond_6
    const-string v7, "Launcher"

    const-string v8, "Can\'t access GlobalSearch because folder is opened"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    .end local v2    # "folder":Lnet/oneplus/h2launcher/Folder;
    :pswitch_2
    const-string v7, "Launcher"

    const-string v8, "DragLayer onInterceptTouchEvent: ACTION_UP or ACTION_CANCEL"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mTouchCompleteListener:Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;

    if-eqz v7, :cond_7

    .line 401
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mTouchCompleteListener:Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;

    invoke-interface {v7}, Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 403
    :cond_7
    const/4 v7, 0x0

    iput-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mTouchCompleteListener:Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;

    goto/16 :goto_0

    .line 414
    :cond_8
    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/FoldersTransitionController;->isAnimating()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    invoke-virtual {v7, p1}, Lnet/oneplus/h2launcher/FoldersTransitionController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 415
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    iput-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mActiveController:Lnet/oneplus/h2launcher/util/TouchController;

    .line 416
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->printActiveController(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_9
    move v5, v6

    .line 419
    goto/16 :goto_1

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 721
    invoke-super/range {p0 .. p5}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 722
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getChildCount()I

    move-result v1

    .line 723
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 724
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 725
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 726
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 727
    check-cast v4, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    .line 728
    .local v4, "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 729
    iget v5, v4, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->x:I

    iget v8, v4, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->y:I

    iget v9, v4, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 723
    .end local v4    # "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 733
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 491
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 492
    .local v0, "currentFolder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v0, :cond_2

    .line 493
    if-ne p1, v0, :cond_0

    .line 494
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 504
    :goto_0
    return v1

    .line 497
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DragLayer;->isInAccessibleDrag()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lnet/oneplus/h2launcher/SearchDropTargetBar;

    if-eqz v1, :cond_1

    .line 498
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0

    .line 502
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 504
    :cond_2
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 534
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 535
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 537
    .local v3, "y":I
    if-nez v0, :cond_1

    .line 538
    invoke-direct {p0, p1, v5}, Lnet/oneplus/h2launcher/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 565
    :cond_0
    :goto_0
    return v4

    .line 541
    :cond_1
    if-eq v0, v4, :cond_2

    const/4 v6, 0x3

    if-ne v0, v6, :cond_4

    .line 542
    :cond_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mTouchCompleteListener:Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;

    if-eqz v6, :cond_3

    .line 543
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mTouchCompleteListener:Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;

    invoke-interface {v6}, Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 545
    :cond_3
    iput-object v9, p0, Lnet/oneplus/h2launcher/DragLayer;->mTouchCompleteListener:Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;

    .line 548
    :cond_4
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mCurrentResizeFrame:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    if-eqz v6, :cond_5

    .line 549
    const/4 v1, 0x1

    .line 550
    packed-switch v0, :pswitch_data_0

    .line 561
    :cond_5
    :goto_1
    if-nez v1, :cond_0

    .line 562
    iget-object v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mActiveController:Lnet/oneplus/h2launcher/util/TouchController;

    if-eqz v4, :cond_6

    .line 563
    iget-object v4, p0, Lnet/oneplus/h2launcher/DragLayer;->mActiveController:Lnet/oneplus/h2launcher/util/TouchController;

    invoke-interface {v4, p1}, Lnet/oneplus/h2launcher/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 552
    :pswitch_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mCurrentResizeFrame:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    iget v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mXDown:I

    sub-int v7, v2, v7

    iget v8, p0, Lnet/oneplus/h2launcher/DragLayer;->mYDown:I

    sub-int v8, v3, v8

    invoke-virtual {v6, v7, v8}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 556
    :pswitch_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mCurrentResizeFrame:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    iget v7, p0, Lnet/oneplus/h2launcher/DragLayer;->mXDown:I

    sub-int v7, v2, v7

    iget v8, p0, Lnet/oneplus/h2launcher/DragLayer;->mYDown:I

    sub-int v8, v3, v8

    invoke-virtual {v6, v7, v8}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 557
    iget-object v6, p0, Lnet/oneplus/h2launcher/DragLayer;->mCurrentResizeFrame:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->onTouchUp()V

    .line 558
    iput-object v9, p0, Lnet/oneplus/h2launcher/DragLayer;->mCurrentResizeFrame:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    goto :goto_1

    :cond_6
    move v4, v5

    .line 565
    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1151
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1152
    iput p1, p0, Lnet/oneplus/h2launcher/DragLayer;->mBackgroundAlpha:F

    .line 1153
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->invalidate()V

    .line 1155
    :cond_0
    return-void
.end method

.method public setTouchCompleteListener(Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;

    .prologue
    .line 1162
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragLayer;->mTouchCompleteListener:Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;

    .line 1163
    return-void
.end method

.method public setup(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/DragController;Lnet/oneplus/h2launcher/FoldersTransitionController;)V
    .locals 0
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "controller"    # Lnet/oneplus/h2launcher/DragController;
    .param p3, "foldersTransitionController"    # Lnet/oneplus/h2launcher/FoldersTransitionController;

    .prologue
    .line 161
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 162
    iput-object p2, p0, Lnet/oneplus/h2launcher/DragLayer;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 163
    iput-object p3, p0, Lnet/oneplus/h2launcher/DragLayer;->mFoldersController:Lnet/oneplus/h2launcher/FoldersTransitionController;

    .line 164
    return-void
.end method

.method public showOverlayView(Landroid/view/View;)V
    .locals 2
    .param p1, "overlayView"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 172
    new-instance v0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 173
    .local v0, "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    iput-object p1, p0, Lnet/oneplus/h2launcher/DragLayer;->mOverlayView:Landroid/view/View;

    .line 174
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 179
    return-void
.end method

.method showPageHints()V
    .locals 3

    .prologue
    .line 1091
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mShowPageHints:Z

    .line 1092
    iget-object v1, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    .line 1093
    .local v0, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 1095
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->invalidate()V

    .line 1096
    return-void
.end method

.method public snapshot()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->needCaptureEntireScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->buildDrawingCache()V

    .line 235
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/DragLayer;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mdrawingCache:Landroid/graphics/Bitmap;

    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/DragLayer;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->destroyDrawingCache()V

    .line 238
    :cond_0
    return-void
.end method

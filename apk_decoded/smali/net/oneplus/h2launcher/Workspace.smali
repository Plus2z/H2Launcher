.class public Lnet/oneplus/h2launcher/Workspace;
.super Lnet/oneplus/h2launcher/PagedView;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/DropTarget;
.implements Lnet/oneplus/h2launcher/DragSource;
.implements Lnet/oneplus/h2launcher/DragScroller;
.implements Landroid/view/View$OnTouchListener;
.implements Lnet/oneplus/h2launcher/DragController$DragListener;
.implements Lnet/oneplus/h2launcher/LauncherTransitionable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lnet/oneplus/h2launcher/Insettable;
.implements Lnet/oneplus/h2launcher/UninstallDropTarget$UninstallSource;
.implements Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;
.implements Lnet/oneplus/h2launcher/Stats$LaunchSourceProvider;
.implements Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/Workspace$Direction;,
        Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;,
        Lnet/oneplus/h2launcher/Workspace$ItemOperator;,
        Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;,
        Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;,
        Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;,
        Lnet/oneplus/h2launcher/Workspace$AnimationObject;,
        Lnet/oneplus/h2launcher/Workspace$State;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final CUSTOM_CONTENT_SCREEN_ID:J = -0x12dL

.field public static final DRAG_BITMAP_PADDING:I = 0x2

.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field private static ENFORCE_DRAG_EVENT_ORDER:Z = false

.field static final EXTRA_EMPTY_SCREEN_ID:J = -0xc9L

.field protected static final FADE_EMPTY_SCREEN_DURATION:I = 0x96

.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field static final MAP_NO_RECURSE:Z = false

.field static final MAP_RECURSE:Z = true

.field private static final MAX_DISTANCE_FOR_FOLDER_CREATION:F = 0.85f

.field private static final MAX_DISTANCE_FOR_FOLDER_CREATION_FOR_WORST_CASE:F = 0.7f

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final MAX_UPDATE_DYNAMIC_ICON_PENDING_COUNT:I = 0x3

.field protected static final PAGE_INDEX_ALL:I = -0x80000000

.field private static final PENDING_DYNAMIC_ICON_DELAY:J = 0x1f4L

.field private static final REORDER_JITTER_PIXEL:I = 0x2

.field public static final REORDER_TIMEOUT:I = 0x12c

.field protected static final SNAP_OFF_EMPTY_SCREEN_DURATION:I = 0x190

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field static mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

.field static mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field mAddNewPageOnDrag:Z

.field private mAddToExistingFolderOnDrop:Z

.field mAnimatingViewIntoPlace:Z

.field mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private mBaseIconSize:I

.field private final mCanvas:Landroid/graphics/Canvas;

.field mChildrenLayersEnabled:Z

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

.field private mCustomContentDescription:Ljava/lang/String;

.field mCustomContentShowing:Z

.field private mDefaultPage:I

.field private mDeferDropAfterUninstall:Z

.field mDeferRemoveExtraEmptyScreen:Z

.field mDeferredAction:Ljava/lang/Runnable;

.field private mDelayedRemoveExtraEmptyScreenRunnable:Ljava/lang/Runnable;

.field mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field mDragController:Lnet/oneplus/h2launcher/DragController;

.field mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

.field private mDragMode:I

.field mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOverFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

.field private mDragOverReorderX:I

.field private mDragOverReorderY:I

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lnet/oneplus/h2launcher/CellLayout;

.field private mDragSourceInternal:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

.field mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

.field mDragViewVisualCenter:[F

.field private mDropToLayout:Lnet/oneplus/h2launcher/CellLayout;

.field private final mFolderCreationAlarm:Lnet/oneplus/h2launcher/Alarm;

.field private mHasNavigationBar:Z

.field private mHasTouchSettled:Z

.field private mInScrollArea:Z

.field private mIsAttachedToWindow:Z

.field mIsDragOccuring:Z

.field private mIsSwitchingState:Z

.field private mLastCustomContentScrollProgress:F

.field mLastOverlaySroll:I

.field mLastReorderX:I

.field mLastReorderY:I

.field mLastSetWallpaperOffsetSteps:F

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field mLauncherOverlay:Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mMaxDistanceForFolderCreation:F

.field mNumPagesForWallpaperParallax:I

.field private mOriginalDefaultPage:I

.field private mOutlineHelper:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

.field private mOverviewModeShrinkFactor:F

.field private mPageAlpha:[F

.field private mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private final mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleIconSize:I

.field mScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mScrollInteractionBegan:Z

.field private mSettledX:F

.field mShouldSendPageSettled:Z

.field private mSpringLoadedDragController:Lnet/oneplus/h2launcher/SpringLoadedDragController;

.field private mSpringLoadedShrinkFactor:F

.field mStartedSendingScrollEvents:Z

.field private mState:Lnet/oneplus/h2launcher/Workspace$State;

.field private mStateTransitionAnimation:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

.field private mStripScreensOnPageStopMoving:Z

.field mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempEstimate:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mTempPt:[I

.field private mTempVisiblePagesRange:[I

.field private final mTempXY:[I

.field private mTouchDownTime:J

.field private mTransitionProgress:F

.field private mUninstallSuccessful:Z

.field mWallpaperIsLiveWallpaper:Z

.field mWallpaperIsOneplusBlurWallpaper:Z

.field final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

.field mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mXDown:F

.field private mYDown:F

.field naviBarShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lnet/oneplus/h2launcher/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    .line 150
    sput-object v1, Lnet/oneplus/h2launcher/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 151
    sput-object v1, Lnet/oneplus/h2launcher/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 347
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 357
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lnet/oneplus/h2launcher/Workspace;->mTouchDownTime:J

    .line 129
    new-instance v3, Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 133
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 134
    iput-boolean v10, p0, Lnet/oneplus/h2launcher/Workspace;->mAddNewPageOnDrag:Z

    .line 136
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mHasNavigationBar:Z

    .line 146
    new-array v3, v7, [I

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 147
    iput v9, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverX:I

    .line 148
    iput v9, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverY:I

    .line 155
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLastCustomContentScrollProgress:F

    .line 156
    const-string v3, ""

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 161
    iput-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 165
    iput-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverlappingLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 170
    iput-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mDropToLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 178
    new-array v3, v7, [I

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempCell:[I

    .line 179
    new-array v3, v7, [I

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    .line 180
    new-array v3, v7, [I

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempEstimate:[I

    .line 181
    new-array v3, v7, [F

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    .line 182
    new-array v3, v7, [F

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 183
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 189
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mIsAttachedToWindow:Z

    .line 238
    sget-object v3, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    .line 239
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    .line 241
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mAnimatingViewIntoPlace:Z

    .line 242
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mIsDragOccuring:Z

    .line 243
    iput-boolean v10, p0, Lnet/oneplus/h2launcher/Workspace;->mChildrenLayersEnabled:Z

    .line 245
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 248
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mInScrollArea:Z

    .line 251
    iput-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 253
    new-array v3, v7, [I

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    .line 254
    new-array v3, v7, [I

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    .line 262
    const/4 v3, 0x0

    iput v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLastSetWallpaperOffsetSteps:F

    .line 266
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 271
    new-instance v3, Lnet/oneplus/h2launcher/Alarm;

    invoke-direct {v3}, Lnet/oneplus/h2launcher/Alarm;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mFolderCreationAlarm:Lnet/oneplus/h2launcher/Alarm;

    .line 272
    new-instance v3, Lnet/oneplus/h2launcher/Alarm;

    invoke-direct {v3}, Lnet/oneplus/h2launcher/Alarm;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    .line 273
    iput-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .line 275
    iput-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    .line 276
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mCreateUserFolderOnDrop:Z

    .line 277
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 282
    iput v6, p0, Lnet/oneplus/h2launcher/Workspace;->mScaleIconSize:I

    .line 283
    iput v6, p0, Lnet/oneplus/h2launcher/Workspace;->mBaseIconSize:I

    .line 284
    iput v6, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverReorderX:I

    .line 285
    iput v6, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverReorderY:I

    .line 287
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    .line 310
    iput v6, p0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    .line 311
    iput v9, p0, Lnet/oneplus/h2launcher/Workspace;->mLastReorderX:I

    .line 312
    iput v9, p0, Lnet/oneplus/h2launcher/Workspace;->mLastReorderY:I

    .line 315
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 329
    iput v6, p0, Lnet/oneplus/h2launcher/Workspace;->mLastOverlaySroll:I

    .line 337
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->naviBarShow:Z

    .line 862
    iput-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedRemoveExtraEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 5409
    new-array v3, v7, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mPageAlpha:[F

    .line 359
    invoke-static {p1}, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mOutlineHelper:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    move-object v3, p1

    .line 361
    check-cast v3, Lnet/oneplus/h2launcher/Launcher;

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 362
    new-instance v3, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v3, v4, p0}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/Workspace;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    .line 363
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 364
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    .line 365
    .local v1, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v3

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 366
    iput-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mFadeInAdjacentScreens:Z

    .line 367
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 369
    sget-object v3, Lnet/oneplus/h2launcher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 371
    .local v0, "a":Landroid/content/res/TypedArray;
    const v3, 0x7f0f0014

    .line 372
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lnet/oneplus/h2launcher/Workspace;->mSpringLoadedShrinkFactor:F

    .line 373
    const v3, 0x7f0f0011

    .line 374
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lnet/oneplus/h2launcher/Workspace;->mOverviewModeShrinkFactor:F

    .line 375
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDefaultPage:I

    iput v3, p0, Lnet/oneplus/h2launcher/Workspace;->mOriginalDefaultPage:I

    .line 376
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 378
    invoke-virtual {p0, p0}, Lnet/oneplus/h2launcher/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 379
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 381
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->initWorkspace()V

    .line 384
    invoke-virtual {p0, v10}, Lnet/oneplus/h2launcher/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 386
    new-instance v3, Lnet/oneplus/h2launcher/DoubleTapTouchListener;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v3, v4, p0}, Lnet/oneplus/h2launcher/DoubleTapTouchListener;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/Workspace;)V

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    return-void

    .line 5409
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/Workspace;)Lnet/oneplus/h2launcher/Workspace$State;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Workspace;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p2, "x2"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/Workspace;->updateShortcut(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/BubbleTextView;F)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Workspace;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p2, "x2"    # F

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/Workspace;->updateShortcutIconSize(Lnet/oneplus/h2launcher/BubbleTextView;F)V

    return-void
.end method

.method private caculateExtraRatio(F)F
    .locals 2
    .param p1, "theta"    # F

    .prologue
    .line 1392
    const v0, 0x3f060a92

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3332
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 3333
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 3334
    iput-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    .line 3336
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3323
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    .line 3324
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3325
    iput-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .line 3327
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFolderCreationAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Alarm;->setOnAlarmListener(Lnet/oneplus/h2launcher/OnAlarmListener;)V

    .line 3328
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFolderCreationAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 3329
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 2
    .param p1, "cancelAlarm"    # Z

    .prologue
    const/4 v1, -0x1

    .line 3340
    if-eqz p1, :cond_0

    .line 3341
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 3343
    :cond_0
    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLastReorderX:I

    .line 3344
    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLastReorderY:I

    .line 3345
    return-void
.end method

.method private convertFinalScreenToEmptyScreenIfNecessary()V
    .locals 8

    .prologue
    const-wide/16 v6, -0xc9

    .line 831
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    const-string v1, "Launcher.Workspace"

    const-string v4, "    - workspace loading, skip"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasExtraEmptyScreen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 840
    .local v2, "finalScreenId":J
    const-wide/16 v4, -0x12d

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 844
    .local v0, "finalScreen":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 845
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->isDropPending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 847
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1, v6, v7, v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 851
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v1

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "orig"    # Landroid/graphics/Bitmap;
    .param p2, "padding"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "clipAlpha"    # Z

    .prologue
    .line 2503
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0261

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 2504
    .local v3, "outlineColor":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2505
    .local v1, "b":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2507
    new-instance v10, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v10, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2508
    .local v10, "src":Landroid/graphics/Rect;
    sub-int v0, p3, p2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-int v2, p4, p2

    int-to-float v2, v2

    .line 2509
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 2508
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 2510
    .local v7, "scaleFactor":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v9, v0

    .line 2511
    .local v9, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v8, v0

    .line 2512
    .local v8, "scaledHeight":I
    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v2, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2515
    .local v6, "dst":Landroid/graphics/Rect;
    sub-int v0, p3, v9

    div-int/lit8 v0, v0, 0x2

    sub-int v2, p4, v8

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2517
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v10, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2518
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mOutlineHelper:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    move v4, v3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 2520
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2522
    return-object v1
.end method

.method private createDragOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "padding"    # I

    .prologue
    .line 2486
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0261

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2488
    .local v1, "outlineColor":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2487
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2490
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2491
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {p1, v2, p2}, Lnet/oneplus/h2launcher/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 2492
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mOutlineHelper:Lnet/oneplus/h2launcher/HolographicOutlineHelper;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v3, v1, v1}, Lnet/oneplus/h2launcher/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2493
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2494
    return-object v0
.end method

.method private static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "destCanvas"    # Landroid/graphics/Canvas;
    .param p2, "padding"    # I

    .prologue
    const/4 v6, 0x0

    .line 2420
    sget-object v1, Lnet/oneplus/h2launcher/Workspace;->sTempRect:Landroid/graphics/Rect;

    .line 2421
    .local v1, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2423
    const/4 v3, 0x0

    .line 2425
    .local v3, "textVisible":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2426
    instance-of v4, p0, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 2427
    check-cast p0, Landroid/widget/TextView;

    .end local p0    # "v":Landroid/view/View;
    invoke-static {p0}, Lnet/oneplus/h2launcher/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2428
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lnet/oneplus/h2launcher/Workspace;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2429
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2430
    div-int/lit8 v4, p2, 0x2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-int/lit8 v5, p2, 0x2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2431
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2450
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2451
    return-void

    .line 2433
    .restart local p0    # "v":Landroid/view/View;
    :cond_1
    instance-of v4, p0, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v4, :cond_2

    move-object v4, p0

    .line 2436
    check-cast v4, Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/FolderIcon;->getTextVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p0

    .line 2437
    check-cast v4, Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v4, v6}, Lnet/oneplus/h2launcher/FolderIcon;->setTextVisible(Z)V

    .line 2438
    const/4 v3, 0x1

    .line 2441
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p2, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v6, p2, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2442
    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2443
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2446
    if-eqz v3, :cond_0

    .line 2447
    check-cast p0, Lnet/oneplus/h2launcher/FolderIcon;

    .end local p0    # "v":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/FolderIcon;->setTextVisible(Z)V

    goto :goto_0
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2086
    iget-boolean v9, p0, Lnet/oneplus/h2launcher/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v9, :cond_3

    .line 2087
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v6

    .line 2088
    .local v6, "screenCount":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lnet/oneplus/h2launcher/Workspace;->getVisiblePages([I)V

    .line 2089
    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v4, v9, v8

    .line 2090
    .local v4, "leftScreen":I
    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v5, v9, v7

    .line 2091
    .local v5, "rightScreen":I
    if-ne v4, v5, :cond_0

    .line 2093
    add-int/lit8 v9, v6, -0x1

    if-ge v5, v9, :cond_1

    .line 2094
    add-int/lit8 v5, v5, 0x1

    .line 2100
    :cond_0
    :goto_0
    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    const-wide/16 v10, -0x12d

    invoke-virtual {v9, v10, v11}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 2101
    .local v0, "customScreen":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_3

    .line 2102
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout;

    .line 2106
    .local v3, "layout":Lnet/oneplus/h2launcher/CellLayout;
    if-eq v3, v0, :cond_2

    if-gt v4, v2, :cond_2

    if-gt v2, v5, :cond_2

    .line 2107
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v1, v7

    .line 2108
    .local v1, "enableLayer":Z
    :goto_2
    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/CellLayout;->enableHardwareLayer(Z)V

    .line 2101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2095
    .end local v0    # "customScreen":Lnet/oneplus/h2launcher/CellLayout;
    .end local v1    # "enableLayer":Z
    .end local v2    # "i":I
    .end local v3    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_1
    if-lez v4, :cond_0

    .line 2096
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .restart local v0    # "customScreen":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v2    # "i":I
    .restart local v3    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_2
    move v1, v8

    .line 2107
    goto :goto_2

    .line 2111
    .end local v0    # "customScreen":Lnet/oneplus/h2launcher/CellLayout;
    .end local v2    # "i":I
    .end local v3    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v4    # "leftScreen":I
    .end local v5    # "rightScreen":I
    .end local v6    # "screenCount":I
    :cond_3
    return-void
.end method

.method private enfoceDragParity(Landroid/view/View;Ljava/lang/String;II)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "update"    # I
    .param p4, "expectedValue"    # I

    .prologue
    const v3, 0x7f11000e

    .line 3257
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 3258
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 3259
    .end local v0    # "tag":Ljava/lang/Object;
    .local v1, "value":I
    :goto_0
    add-int/2addr v1, p3

    .line 3260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3262
    if-eq v1, p4, :cond_0

    .line 3263
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Drag contract violated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    :cond_0
    return-void

    .line 3258
    .end local v1    # "value":I
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private enfoceDragParity(Ljava/lang/String;II)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "update"    # I
    .param p3, "expectedValue"    # I

    .prologue
    .line 3250
    invoke-direct {p0, p0, p1, p2, p3}, Lnet/oneplus/h2launcher/Workspace;->enfoceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 3251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3252
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lnet/oneplus/h2launcher/Workspace;->enfoceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 3251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3254
    :cond_0
    return-void
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
    .locals 10
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "onComplete"    # Ljava/lang/Runnable;
    .param p4, "stripEmptyScreens"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 920
    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 921
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "backgroundAlpha"

    new-array v5, v8, [F

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 923
    .local v1, "bgAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    const-wide/16 v6, -0xc9

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 925
    .local v2, "cl":Lnet/oneplus/h2launcher/CellLayout;
    new-instance v4, Lnet/oneplus/h2launcher/Workspace$5;

    invoke-direct {v4, p0, v2, p4}, Lnet/oneplus/h2launcher/Workspace$5;-><init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/CellLayout;Z)V

    iput-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 938
    invoke-virtual {v2, v8}, Lnet/oneplus/h2launcher/CellLayout;->setDeleted(Z)V

    .line 940
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v9

    aput-object v1, v4, v8

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 941
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 942
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 943
    new-instance v4, Lnet/oneplus/h2launcher/Workspace$6;

    invoke-direct {v4, p0, p3}, Lnet/oneplus/h2launcher/Workspace$6;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 954
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 955
    return-void
.end method

.method private findMatchingPageForDragOver(Lnet/oneplus/h2launcher/DragView;FFZ)Lnet/oneplus/h2launcher/CellLayout;
    .locals 12
    .param p1, "dragView"    # Lnet/oneplus/h2launcher/DragView;
    .param p2, "originX"    # F
    .param p3, "originY"    # F
    .param p4, "exact"    # Z

    .prologue
    .line 3418
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v5

    .line 3419
    .local v5, "screenCount":I
    const/4 v0, 0x0

    .line 3420
    .local v0, "bestMatchingScreen":Lnet/oneplus/h2launcher/CellLayout;
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 3422
    .local v6, "smallestDistSoFar":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 3424
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, -0x12d

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 3422
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3428
    :cond_1
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 3430
    .local v2, "cl":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v8, 0x2

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput p2, v7, v8

    const/4 v8, 0x1

    aput p3, v7, v8

    .line 3433
    .local v7, "touchXy":[F
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3434
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v7, v8}, Lnet/oneplus/h2launcher/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3436
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2

    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    const/4 v8, 0x1

    aget v8, v7, v8

    .line 3437
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2

    .line 3461
    .end local v2    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v7    # "touchXy":[F
    :goto_2
    return-object v2

    .line 3441
    .restart local v2    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v7    # "touchXy":[F
    :cond_2
    if-nez p4, :cond_0

    .line 3443
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 3444
    .local v1, "cellLayoutCenter":[F
    const/4 v8, 0x0

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 3445
    const/4 v8, 0x1

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 3446
    invoke-virtual {p0, v2, v1}, Lnet/oneplus/h2launcher/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 3448
    const/4 v8, 0x0

    aput p2, v7, v8

    .line 3449
    const/4 v8, 0x1

    aput p3, v7, v8

    .line 3453
    invoke-static {v7, v1}, Lnet/oneplus/h2launcher/Workspace;->squaredDistance([F[F)F

    move-result v3

    .line 3455
    .local v3, "dist":F
    cmpg-float v8, v3, v6

    if-gez v8, :cond_0

    .line 3456
    move v6, v3

    .line 3457
    move-object v0, v2

    goto :goto_1

    .end local v1    # "cellLayoutCenter":[F
    .end local v2    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v3    # "dist":F
    .end local v7    # "touchXy":[F
    :cond_3
    move-object v2, v0

    .line 3461
    goto :goto_2
.end method

.method static getCellLayoutMetrics(Landroid/app/Activity;I)Landroid/graphics/Rect;
    .locals 17
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orientation"    # I

    .prologue
    .line 3177
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    .line 3178
    .local v1, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v6

    .line 3180
    .local v6, "inv":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 3181
    .local v4, "display":Landroid/view/Display;
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 3182
    .local v10, "smallestSize":Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 3183
    .local v8, "largestSize":Landroid/graphics/Point;
    invoke-virtual {v4, v10, v8}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 3184
    iget v2, v6, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 3185
    .local v2, "countX":I
    iget v3, v6, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    .line 3186
    .local v3, "countY":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v7

    .line 3187
    .local v7, "isLayoutRtl":Z
    if-nez p1, :cond_1

    .line 3188
    sget-object v12, Lnet/oneplus/h2launcher/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v12, :cond_0

    .line 3189
    iget-object v12, v6, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->landscapeProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-virtual {v12, v7}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v9

    .line 3190
    .local v9, "padding":Landroid/graphics/Rect;
    iget v12, v8, Landroid/graphics/Point;->x:I

    iget v13, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->right:I

    sub-int v11, v12, v13

    .line 3191
    .local v11, "width":I
    iget v12, v10, Landroid/graphics/Point;->y:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v12, v13

    .line 3192
    .local v5, "height":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    sput-object v12, Lnet/oneplus/h2launcher/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3193
    sget-object v12, Lnet/oneplus/h2launcher/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3194
    invoke-static {v11, v2}, Lnet/oneplus/h2launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v13

    .line 3195
    invoke-static {v5, v3}, Lnet/oneplus/h2launcher/DeviceProfile;->calculateCellHeight(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 3193
    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 3197
    .end local v5    # "height":I
    .end local v9    # "padding":Landroid/graphics/Rect;
    .end local v11    # "width":I
    :cond_0
    sget-object v12, Lnet/oneplus/h2launcher/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3210
    :goto_0
    return-object v12

    .line 3198
    :cond_1
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    .line 3199
    sget-object v12, Lnet/oneplus/h2launcher/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v12, :cond_2

    .line 3200
    iget-object v12, v6, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-virtual {v12, v7}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v9

    .line 3201
    .restart local v9    # "padding":Landroid/graphics/Rect;
    iget v12, v10, Landroid/graphics/Point;->x:I

    iget v13, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->right:I

    sub-int v11, v12, v13

    .line 3202
    .restart local v11    # "width":I
    iget v12, v8, Landroid/graphics/Point;->y:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v12, v13

    .line 3203
    .restart local v5    # "height":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    sput-object v12, Lnet/oneplus/h2launcher/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3204
    sget-object v12, Lnet/oneplus/h2launcher/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3205
    invoke-static {v11, v2}, Lnet/oneplus/h2launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v13

    .line 3206
    invoke-static {v5, v3}, Lnet/oneplus/h2launcher/DeviceProfile;->calculateCellHeight(II)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 3204
    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 3208
    .end local v5    # "height":I
    .end local v9    # "padding":Landroid/graphics/Rect;
    .end local v11    # "width":I
    :cond_2
    sget-object v12, Lnet/oneplus/h2launcher/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    goto :goto_0

    .line 3210
    :cond_3
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static getCustomContentScreenId()J
    .locals 2

    .prologue
    .line 5198
    const-wide/16 v0, -0x12d

    return-wide v0
.end method

.method private static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 2150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2151
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2152
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_2

    .line 2153
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2157
    :goto_0
    instance-of v2, p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    if-eqz v2, :cond_1

    .line 2158
    check-cast p0, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PreloadIconDrawable;->getOutset()I

    move-result v2

    neg-int v1, v2

    .line 2159
    .local v1, "inset":I
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 2161
    .end local v1    # "inset":I
    :cond_1
    return-object v0

    .line 2155
    .restart local p0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method private getFinalPositionForDropAnimation([I[FLnet/oneplus/h2launcher/DragView;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/ItemInfo;[IZZ)V
    .locals 12
    .param p1, "loc"    # [I
    .param p2, "scaleXY"    # [F
    .param p3, "dragView"    # Lnet/oneplus/h2launcher/DragView;
    .param p4, "layout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p5, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p6, "targetCell"    # [I
    .param p7, "external"    # Z
    .param p8, "scale"    # Z

    .prologue
    .line 3942
    move-object/from16 v0, p5

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 3943
    .local v6, "spanX":I
    move-object/from16 v0, p5

    iget v7, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 3945
    .local v7, "spanY":I
    const/4 v1, 0x0

    aget v4, p6, v1

    const/4 v1, 0x1

    aget v5, p6, v1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v7}, Lnet/oneplus/h2launcher/Workspace;->estimateItemPosition(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v11

    .line 3946
    .local v11, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iget v2, v11, Landroid/graphics/Rect;->left:I

    aput v2, p1, v1

    .line 3947
    const/4 v1, 0x1

    iget v2, v11, Landroid/graphics/Rect;->top:I

    aput v2, p1, v1

    .line 3949
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setFinalTransitionTransform(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3950
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 3951
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, p1, v2}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v8

    .line 3952
    .local v8, "cellLayoutScale":F
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->resetTransitionTransform(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3956
    if-eqz p8, :cond_0

    .line 3957
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 3958
    .local v9, "dragViewScaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 3966
    .local v10, "dragViewScaleY":F
    :goto_0
    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 3967
    const/4 v1, 0x1

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 3969
    const/4 v1, 0x0

    mul-float v2, v9, v8

    aput v2, p2, v1

    .line 3970
    const/4 v1, 0x1

    mul-float v2, v10, v8

    aput v2, p2, v1

    .line 3971
    return-void

    .line 3960
    .end local v9    # "dragViewScaleX":F
    .end local v10    # "dragViewScaleY":F
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    .line 3961
    .restart local v9    # "dragViewScaleX":F
    const/high16 v10, 0x3f800000    # 1.0f

    .restart local v10    # "dragViewScaleY":F
    goto :goto_0
.end method

.method private getFirstMatch(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;
    .locals 3
    .param p1, "operator"    # Lnet/oneplus/h2launcher/Workspace$ItemOperator;

    .prologue
    const/4 v2, 0x0

    .line 4495
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/view/View;

    .line 4496
    .local v0, "value":[Landroid/view/View;
    new-instance v1, Lnet/oneplus/h2launcher/Workspace$21;

    invoke-direct {v1, p0, p1, v0}, Lnet/oneplus/h2launcher/Workspace$21;-><init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/Workspace$ItemOperator;[Landroid/view/View;)V

    invoke-virtual {p0, v2, v1}, Lnet/oneplus/h2launcher/Workspace;->mapOverItems(ZLnet/oneplus/h2launcher/Workspace$ItemOperator;)V

    .line 4506
    aget-object v1, v0, v2

    return-object v1
.end method

.method private getOverviewModePages([I)V
    .locals 4
    .param p1, "range"    # [I

    .prologue
    const/4 v3, 0x0

    .line 2208
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v1

    .line 2209
    .local v1, "start":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 2211
    .local v0, "end":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v3

    .line 2212
    const/4 v2, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p1, v2

    .line 2213
    return-void
.end method

.method private getPageDescription(I)Ljava/lang/String;
    .locals 5
    .param p1, "page"    # I

    .prologue
    .line 5133
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v0

    .line 5134
    .local v0, "delta":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v4, v0

    .line 5135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5134
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 2403
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2404
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 2405
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2406
    aget-object v2, v0, v1

    .line 2409
    :goto_1
    return-object v2

    .line 2404
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2409
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isDragWidget(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 3465
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExternalDragWidget(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 3469
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    if-eq v0, p0, :cond_0

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->isDragWidget(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageFolderFeedback(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;[IFLandroid/view/View;Z)V
    .locals 9
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "targetLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "dragOverView"    # Landroid/view/View;
    .param p6, "accessibleDrag"    # Z

    .prologue
    .line 3608
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/Workspace;->willCreateUserFolder(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;[IFZ)Z

    move-result v7

    .line 3610
    .local v7, "userFolderPending":Z
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    if-nez v0, :cond_2

    if-eqz v7, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFolderCreationAlarm:Lnet/oneplus/h2launcher/Alarm;

    .line 3611
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3613
    new-instance v6, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;

    const/4 v0, 0x0

    aget v0, p3, v0

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-direct {v6, p0, p2, v0, v1}, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;-><init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/CellLayout;II)V

    .line 3616
    .local v6, "listener":Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;
    if-nez p6, :cond_1

    .line 3617
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFolderCreationAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/Alarm;->setOnAlarmListener(Lnet/oneplus/h2launcher/OnAlarmListener;)V

    .line 3618
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFolderCreationAlarm:Lnet/oneplus/h2launcher/Alarm;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/Alarm;->setAlarm(J)V

    .line 3645
    .end local v6    # "listener":Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;
    .end local p5    # "dragOverView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3620
    .restart local v6    # "listener":Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;
    .restart local p5    # "dragOverView":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFolderCreationAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;->onAlarm(Lnet/oneplus/h2launcher/Alarm;)V

    goto :goto_0

    .line 3626
    .end local v6    # "listener":Lnet/oneplus/h2launcher/Workspace$FolderCreationAlarmListener;
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;[IF)Z

    move-result v8

    .line 3628
    .local v8, "willAddToFolder":Z
    if-eqz v8, :cond_4

    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    if-nez v0, :cond_4

    .line 3629
    check-cast p5, Lnet/oneplus/h2launcher/FolderIcon;

    .end local p5    # "dragOverView":Landroid/view/View;
    iput-object p5, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    .line 3630
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    .line 3631
    if-eqz p2, :cond_3

    .line 3632
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/CellLayout;->clearDragOutlines()V

    .line 3634
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setDragMode(I)V

    goto :goto_0

    .line 3638
    .restart local p5    # "dragOverView":Landroid/view/View;
    :cond_4
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    if-nez v8, :cond_5

    .line 3639
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setDragMode(I)V

    .line 3641
    :cond_5
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez v7, :cond_0

    .line 3642
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setDragMode(I)V

    goto :goto_0
.end method

.method private onDropExternal([ILjava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;Z)V
    .locals 6
    .param p1, "touchXY"    # [I
    .param p2, "dragInfo"    # Ljava/lang/Object;
    .param p3, "cellLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p4, "insertAtFirst"    # Z

    .prologue
    .line 3739
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/Workspace;->onDropExternal([ILjava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;ZLnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 3740
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;ZLnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 58
    .param p1, "touchXY"    # [I
    .param p2, "dragInfo"    # Ljava/lang/Object;
    .param p3, "cellLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p4, "insertAtFirst"    # Z
    .param p5, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 3752
    new-instance v54, Lnet/oneplus/h2launcher/Workspace$13;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/Workspace$13;-><init>(Lnet/oneplus/h2launcher/Workspace;)V

    .local v54, "exitSpringLoadedRunnable":Ljava/lang/Runnable;
    move-object/from16 v34, p2

    .line 3760
    check-cast v34, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3761
    .local v34, "info":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v34

    iget v7, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 3762
    .local v7, "spanX":I
    move-object/from16 v0, v34

    iget v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 3763
    .local v8, "spanY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v4, :cond_0

    .line 3764
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget v7, v4, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->spanX:I

    .line 3765
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget v8, v4, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->spanY:I

    .line 3768
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-wide/16 v28, -0x65

    .line 3771
    .local v28, "container":J
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v30

    .line 3772
    .local v30, "screenId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    .line 3773
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    cmp-long v4, v30, v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v5, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq v4, v5, :cond_1

    .line 3775
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2, v4}, Lnet/oneplus/h2launcher/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    .line 3778
    :cond_1
    move-object/from16 v0, v34

    instance-of v4, v0, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    if-eqz v4, :cond_10

    move-object/from16 v27, p2

    .line 3779
    check-cast v27, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    .line 3781
    .local v27, "pendingInfo":Lnet/oneplus/h2launcher/PendingAddItemInfo;
    const/16 v55, 0x1

    .line 3782
    .local v55, "findNearestVacantCell":Z
    move-object/from16 v0, v27

    iget v4, v0, Lnet/oneplus/h2launcher/PendingAddItemInfo;->itemType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    move-object/from16 v0, v27

    iget v4, v0, Lnet/oneplus/h2launcher/PendingAddItemInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 3784
    :cond_2
    const/4 v4, 0x0

    aget v5, p1, v4

    const/4 v4, 0x1

    aget v6, p1, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lnet/oneplus/h2launcher/Workspace;->findNearestArea(IIIILnet/oneplus/h2launcher/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 3786
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lnet/oneplus/h2launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v13

    .line 3788
    .local v13, "distance":F
    move-object/from16 v0, p5

    iget-object v10, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v10, Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v14, 0x1

    move-object/from16 v9, p0

    move-object/from16 v11, p3

    invoke-virtual/range {v9 .. v14}, Lnet/oneplus/h2launcher/Workspace;->willCreateUserFolder(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;[IFZ)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p5

    iget-object v4, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 3789
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v5, v13}, Lnet/oneplus/h2launcher/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;[IF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3791
    :cond_3
    const/16 v55, 0x0

    .line 3795
    .end local v13    # "distance":F
    :cond_4
    move-object/from16 v0, p5

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3796
    .local v32, "item":Lnet/oneplus/h2launcher/ItemInfo;
    const/16 v57, 0x0

    .line 3797
    .local v57, "updateWidgetSize":Z
    if-eqz v55, :cond_8

    .line 3798
    move-object/from16 v0, v32

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v17, v0

    .line 3799
    .local v17, "minSpanX":I
    move-object/from16 v0, v32

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v18, v0

    .line 3800
    .local v18, "minSpanY":I
    move-object/from16 v0, v32

    iget v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    if-lez v4, :cond_5

    move-object/from16 v0, v32

    iget v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    if-lez v4, :cond_5

    .line 3801
    move-object/from16 v0, v32

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    move/from16 v17, v0

    .line 3802
    move-object/from16 v0, v32

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    move/from16 v18, v0

    .line 3804
    :cond_5
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 3805
    .local v23, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v15, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    move/from16 v16, v0

    move-object/from16 v0, v34

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v34

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v22, v0

    const/16 v24, 0x3

    move-object/from16 v14, p3

    invoke-virtual/range {v14 .. v24}, Lnet/oneplus/h2launcher/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 3809
    const/4 v4, 0x0

    aget v4, v23, v4

    move-object/from16 v0, v32

    iget v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    aget v4, v23, v4

    move-object/from16 v0, v32

    iget v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    if-eq v4, v5, :cond_7

    .line 3810
    :cond_6
    const/16 v57, 0x1

    .line 3812
    :cond_7
    const/4 v4, 0x0

    aget v4, v23, v4

    move-object/from16 v0, v32

    iput v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 3813
    const/4 v4, 0x1

    aget v4, v23, v4

    move-object/from16 v0, v32

    iput v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 3816
    .end local v17    # "minSpanX":I
    .end local v18    # "minSpanY":I
    .end local v23    # "resultSpan":[I
    :cond_8
    new-instance v25, Lnet/oneplus/h2launcher/Workspace$14;

    move-object/from16 v26, p0

    invoke-direct/range {v25 .. v32}, Lnet/oneplus/h2launcher/Workspace$14;-><init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/PendingAddItemInfo;JJLnet/oneplus/h2launcher/ItemInfo;)V

    .line 3830
    .local v25, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v27

    iget v4, v0, Lnet/oneplus/h2launcher/PendingAddItemInfo;->itemType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    move-object/from16 v0, v27

    iget v4, v0, Lnet/oneplus/h2launcher/PendingAddItemInfo;->itemType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    :cond_9
    const/16 v56, 0x1

    .line 3833
    .local v56, "isWidget":Z
    :goto_1
    if-eqz v56, :cond_f

    move-object/from16 v4, v27

    check-cast v4, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v0, v4, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v39, v0

    .line 3835
    .local v39, "finalView":Landroid/view/View;
    :goto_2
    move-object/from16 v0, v39

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_a

    if-eqz v57, :cond_a

    move-object/from16 v53, v39

    .line 3836
    check-cast v53, Landroid/appwidget/AppWidgetHostView;

    .line 3837
    .local v53, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, v32

    iget v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move-object/from16 v0, v32

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move-object/from16 v0, v53

    invoke-static {v0, v4, v5, v6}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/Launcher;II)V

    .line 3841
    .end local v53    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_a
    const/16 v38, 0x0

    .line 3842
    .local v38, "animationStyle":I
    if-eqz v56, :cond_b

    move-object/from16 v4, v27

    check-cast v4, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v4, v4, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v4, :cond_b

    check-cast v27, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    .end local v27    # "pendingInfo":Lnet/oneplus/h2launcher/PendingAddItemInfo;
    move-object/from16 v0, v27

    iget-object v4, v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    iget-object v4, v4, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_b

    .line 3844
    const/16 v38, 0x1

    .line 3846
    :cond_b
    move-object/from16 v0, p5

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v36, v0

    const/16 v40, 0x1

    move-object/from16 v33, p0

    move-object/from16 v35, p3

    move-object/from16 v37, v25

    invoke-virtual/range {v33 .. v40}, Lnet/oneplus/h2launcher/Workspace;->animateWidgetDrop(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 3916
    .end local v25    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v32    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v38    # "animationStyle":I
    .end local v39    # "finalView":Landroid/view/View;
    .end local v55    # "findNearestVacantCell":Z
    .end local v56    # "isWidget":Z
    .end local v57    # "updateWidgetSize":Z
    :cond_c
    :goto_3
    return-void

    .line 3768
    .end local v28    # "container":J
    .end local v30    # "screenId":J
    :cond_d
    const-wide/16 v28, -0x64

    goto/16 :goto_0

    .line 3830
    .restart local v25    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .restart local v27    # "pendingInfo":Lnet/oneplus/h2launcher/PendingAddItemInfo;
    .restart local v28    # "container":J
    .restart local v30    # "screenId":J
    .restart local v32    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v55    # "findNearestVacantCell":Z
    .restart local v57    # "updateWidgetSize":Z
    :cond_e
    const/16 v56, 0x0

    goto :goto_1

    .line 3833
    .restart local v56    # "isWidget":Z
    :cond_f
    const/16 v39, 0x0

    goto :goto_2

    .line 3850
    .end local v25    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v27    # "pendingInfo":Lnet/oneplus/h2launcher/PendingAddItemInfo;
    .end local v32    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v55    # "findNearestVacantCell":Z
    .end local v56    # "isWidget":Z
    .end local v57    # "updateWidgetSize":Z
    :cond_10
    const/16 v41, 0x0

    .line 3852
    .local v41, "view":Landroid/view/View;
    move-object/from16 v0, v34

    iget v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 3867
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3856
    :pswitch_1
    move-object/from16 v0, v34

    iget-wide v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_11

    move-object/from16 v0, v34

    instance-of v4, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v4, :cond_11

    .line 3858
    check-cast v34, Lnet/oneplus/h2launcher/AppInfo;

    .end local v34    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual/range {v34 .. v34}, Lnet/oneplus/h2launcher/AppInfo;->makeShortcut()Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v34

    .line 3860
    .restart local v34    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v4, v34

    check-cast v4, Lnet/oneplus/h2launcher/ShortcutInfo;

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v4}, Lnet/oneplus/h2launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v41

    .line 3872
    :goto_4
    if-eqz p1, :cond_12

    .line 3873
    const/4 v4, 0x0

    aget v5, p1, v4

    const/4 v4, 0x1

    aget v6, p1, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lnet/oneplus/h2launcher/Workspace;->findNearestArea(IIIILnet/oneplus/h2launcher/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 3875
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lnet/oneplus/h2launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v13

    .line 3877
    .restart local v13    # "distance":F
    move-object/from16 v0, v54

    move-object/from16 v1, p5

    iput-object v0, v1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3878
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v45, v0

    const/16 v47, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v48, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v49, v0

    move-object/from16 v40, p0

    move-wide/from16 v42, v28

    move-object/from16 v44, p3

    move/from16 v46, v13

    invoke-virtual/range {v40 .. v49}, Lnet/oneplus/h2launcher/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLnet/oneplus/h2launcher/CellLayout;[IFZLnet/oneplus/h2launcher/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3882
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v43, v0

    const/16 v46, 0x1

    move-object/from16 v40, p0

    move-object/from16 v42, p3

    move/from16 v44, v13

    move-object/from16 v45, p5

    invoke-virtual/range {v40 .. v46}, Lnet/oneplus/h2launcher/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lnet/oneplus/h2launcher/CellLayout;[IFLnet/oneplus/h2launcher/DropTarget$DragObject;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3888
    .end local v13    # "distance":F
    :cond_12
    if-eqz p1, :cond_13

    .line 3890
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v0, v4

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    move/from16 v44, v0

    const/16 v45, 0x1

    const/16 v46, 0x1

    const/16 v47, 0x1

    const/16 v48, 0x1

    const/16 v49, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const/16 v52, 0x3

    move-object/from16 v42, p3

    invoke-virtual/range {v42 .. v52}, Lnet/oneplus/h2launcher/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 3898
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v48, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v49, v4, v5

    move-object/from16 v43, v34

    move-wide/from16 v44, v28

    move-wide/from16 v46, v30

    invoke-static/range {v42 .. v49}, Lnet/oneplus/h2launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 3901
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v46, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v47, v4, v5

    move-object/from16 v0, v34

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v48, v0

    move-object/from16 v0, v34

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v49, v0

    move-object/from16 v40, p0

    move-wide/from16 v42, v28

    move-wide/from16 v44, v30

    move/from16 v50, p4

    invoke-virtual/range {v40 .. v50}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 3903
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3904
    invoke-virtual/range {p3 .. p3}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 3906
    move-object/from16 v0, p5

    iget-object v4, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    if-eqz v4, :cond_c

    .line 3910
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setFinalTransitionTransform(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3911
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v4

    move-object/from16 v0, p5

    iget-object v5, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    move-object/from16 v2, p0

    invoke-virtual {v4, v5, v0, v1, v2}, Lnet/oneplus/h2launcher/DragLayer;->animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 3913
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->resetTransitionTransform(Lnet/oneplus/h2launcher/CellLayout;)V

    goto/16 :goto_3

    .line 3863
    :pswitch_2
    const v5, 0x7f04005a

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v4, v34

    check-cast v4, Lnet/oneplus/h2launcher/FolderInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/oneplus/h2launcher/Workspace;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    move-object/from16 v0, p3

    invoke-static {v5, v6, v0, v4, v9}, Lnet/oneplus/h2launcher/FolderIcon;->fromXml(ILnet/oneplus/h2launcher/Launcher;Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/FolderInfo;Lnet/oneplus/h2launcher/AssetCache;)Lnet/oneplus/h2launcher/FolderIcon;

    move-result-object v41

    .line 3865
    goto/16 :goto_4

    .line 3894
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    goto/16 :goto_5

    .line 3852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onResetScrollArea()V
    .locals 1

    .prologue
    .line 4394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDragOverlappingLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 4395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mInScrollArea:Z

    .line 4396
    return-void
.end method

.method private setEnableShelfScroll(Z)V
    .locals 4
    .param p1, "shelfScroll"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5172
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Workspace;->mEnableShelfScroll:Z

    .line 5175
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mEnableShelfScroll:Z

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getShelfScrollPageRange([IZ)V

    .line 5177
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 5178
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFreeScrollMinScrollX:I

    .line 5179
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFreeScrollMaxScrollX:I

    .line 5186
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mEnableShelfScroll:Z

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getShelfScrollPageRange([IZ)V

    .line 5188
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    .line 5189
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    .line 5194
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->setEnableOverscroll(Z)V

    .line 5195
    return-void

    .line 5181
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFreeScrollMinScrollX:I

    .line 5182
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFreeScrollMaxScrollX:I

    goto :goto_0

    .line 5190
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_0

    .line 5191
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempVisiblePagesRange:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    goto :goto_1
.end method

.method private setWorkspaceTranslationAndAlpha(Lnet/oneplus/h2launcher/Workspace$Direction;FFZ)V
    .locals 10
    .param p1, "direction"    # Lnet/oneplus/h2launcher/Workspace$Direction;
    .param p2, "translation"    # F
    .param p3, "alpha"    # F
    .param p4, "includeShortcutWidgetContainer"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5348
    invoke-static {p1}, Lnet/oneplus/h2launcher/Workspace$Direction;->access$300(Lnet/oneplus/h2launcher/Workspace$Direction;)Landroid/util/Property;

    move-result-object v5

    .line 5349
    .local v5, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace;->mPageAlpha:[F

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Workspace$Direction;->ordinal()I

    move-result v7

    aput p3, v6, v7

    .line 5350
    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace;->mPageAlpha:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace;->mPageAlpha:[F

    aget v7, v7, v9

    mul-float v3, v6, v7

    .line 5352
    .local v3, "finalAlpha":F
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v6

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 5353
    .local v1, "currentChild":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v1, :cond_0

    .line 5354
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5355
    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/CellLayout;->setAlpha(F)V

    .line 5357
    if-eqz p4, :cond_0

    .line 5358
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_0

    .line 5359
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6}, Lnet/oneplus/h2launcher/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 5364
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v6

    if-nez v6, :cond_4

    .line 5365
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v2

    .line 5366
    .local v2, "currentPage":I
    if-lt v2, v9, :cond_1

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Workspace;->isCustomContentPageIndex(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5367
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 5368
    .local v0, "child":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_1

    .line 5369
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5370
    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/CellLayout;->setAlpha(F)V

    .line 5373
    .end local v0    # "child":Lnet/oneplus/h2launcher/CellLayout;
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Workspace;->isCustomContentPageIndex(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5374
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 5375
    .restart local v0    # "child":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_2

    .line 5376
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5377
    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/CellLayout;->setAlpha(F)V

    .line 5382
    .end local v0    # "child":Lnet/oneplus/h2launcher/CellLayout;
    :cond_2
    invoke-static {p2, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_4

    .line 5383
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    .line 5384
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5385
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 5386
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5387
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 5383
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 5392
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "currentPage":I
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method private setupLayoutTransition()V
    .locals 2

    .prologue
    .line 528
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 529
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 530
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 531
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 532
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 533
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 534
    return-void
.end method

.method private setupNewScreenAlpha(Lnet/oneplus/h2launcher/CellLayout;I)V
    .locals 8
    .param p1, "newScreen"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p2, "insertIndex"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 652
    new-instance v3, Lnet/oneplus/h2launcher/TransitionStates;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v6

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getState()Lnet/oneplus/h2launcher/Workspace$State;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lnet/oneplus/h2launcher/TransitionStates;-><init>(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;)V

    .line 653
    .local v3, "states":Lnet/oneplus/h2launcher/TransitionStates;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v6

    if-ne p2, v6, :cond_1

    const/4 v2, 0x1

    .line 654
    .local v2, "isCurrentPage":Z
    :goto_0
    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsSpringLoaded:Z

    if-nez v6, :cond_0

    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-nez v6, :cond_0

    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    if-nez v6, :cond_0

    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsIconRearrangement:Z

    if-eqz v6, :cond_2

    :cond_0
    move v1, v5

    .line 657
    .local v1, "backgroundAlpha":F
    :goto_1
    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsIconRearrangement:Z

    if-eqz v6, :cond_3

    .line 658
    const/high16 v0, 0x3f800000    # 1.0f

    .line 669
    .local v0, "alpha":F
    :goto_2
    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/CellLayout;->setBackgroundAlpha(F)V

    .line 670
    invoke-virtual {p1, v0}, Lnet/oneplus/h2launcher/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 671
    return-void

    .line 653
    .end local v0    # "alpha":F
    .end local v1    # "backgroundAlpha":F
    .end local v2    # "isCurrentPage":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "isCurrentPage":Z
    :cond_2
    move v1, v4

    .line 654
    goto :goto_1

    .line 659
    .restart local v1    # "backgroundAlpha":F
    :cond_3
    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormalHidden:Z

    if-nez v6, :cond_4

    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverviewHidden:Z

    if-nez v6, :cond_4

    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsShrunkenAllApps:Z

    if-eqz v6, :cond_5

    .line 661
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_2

    .line 662
    .end local v0    # "alpha":F
    :cond_5
    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormal:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v6, :cond_8

    .line 663
    if-nez v2, :cond_6

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v6

    if-ge p2, v6, :cond_7

    :cond_6
    move v0, v5

    .restart local v0    # "alpha":F
    :goto_3
    goto :goto_2

    .end local v0    # "alpha":F
    :cond_7
    move v0, v4

    goto :goto_3

    .line 664
    :cond_8
    iget-boolean v6, v3, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    if-eqz v6, :cond_a

    .line 665
    if-eqz v2, :cond_9

    move v0, v5

    .restart local v0    # "alpha":F
    :goto_4
    goto :goto_2

    .end local v0    # "alpha":F
    :cond_9
    move v0, v4

    goto :goto_4

    .line 667
    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto :goto_2
.end method

.method private static squaredDistance([F[F)F
    .locals 5
    .param p0, "point1"    # [F
    .param p1, "point2"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3400
    aget v2, p0, v3

    aget v3, p1, v3

    sub-float v0, v2, v3

    .line 3401
    .local v0, "distanceX":F
    aget v2, p1, v4

    aget v3, p1, v4

    sub-float v1, v2, v3

    .line 3402
    .local v1, "distanceY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private updateAccessibilityFlags(Lnet/oneplus/h2launcher/CellLayout;I)V
    .locals 4
    .param p1, "page"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p2, "pageNo"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x4

    .line 2329
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v1, v2, :cond_1

    .line 2330
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/CellLayout;->setImportantForAccessibility(I)V

    .line 2331
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 2333
    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2335
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-nez v1, :cond_0

    .line 2336
    new-instance v1, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/accessibility/OverviewScreenAccessibilityDelegate;-><init>(Lnet/oneplus/h2launcher/Workspace;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 2338
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2348
    :goto_0
    return-void

    .line 2340
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    .line 2343
    .local v0, "accessible":I
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lnet/oneplus/h2launcher/CellLayout;->setImportantForAccessibility(I)V

    .line 2344
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 2345
    invoke-virtual {p1, v3}, Lnet/oneplus/h2launcher/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2346
    invoke-virtual {p1, v3}, Lnet/oneplus/h2launcher/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0
.end method

.method private updatePageAlphaValues(I)V
    .locals 7
    .param p1, "screenCenter"    # I

    .prologue
    .line 1817
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v2

    .line 1818
    .local v2, "childCount":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v3

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1819
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 1820
    .local v1, "child":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v1, :cond_1

    .line 1821
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1822
    .local v0, "alpha":F
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v6, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_0

    .line 1825
    invoke-virtual {p0, p1, v1, v3}, Lnet/oneplus/h2launcher/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1826
    .local v4, "scrollProgress":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v0, v5, v6

    .line 1828
    .end local v4    # "scrollProgress":F
    :cond_0
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 1818
    .end local v0    # "alpha":F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1831
    .end local v1    # "child":Lnet/oneplus/h2launcher/CellLayout;
    :cond_2
    return-void
.end method

.method private updateShortcut(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 2
    .param p1, "shortcut"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 4917
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZ)V

    .line 4918
    return-void
.end method

.method private updateShortcutIconSize(Lnet/oneplus/h2launcher/BubbleTextView;F)V
    .locals 0
    .param p1, "shortcut"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p2, "iconSizeScale"    # F

    .prologue
    .line 4921
    invoke-virtual {p1, p2}, Lnet/oneplus/h2launcher/BubbleTextView;->applyIconSizeScale(F)V

    .line 4922
    return-void
.end method

.method private updateStateForCustomContent(I)V
    .locals 12
    .param p1, "screenCenter"    # I

    .prologue
    .line 1865
    const/4 v7, 0x0

    .line 1866
    .local v7, "translationX":F
    const/4 v4, 0x0

    .line 1867
    .local v4, "progress":F
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1868
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v10, -0x12d

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1870
    .local v2, "index":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getScrollX()I

    move-result v8

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getScrollForPage(I)I

    move-result v9

    sub-int/2addr v8, v9

    .line 1871
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v9

    sub-int v5, v8, v9

    .line 1872
    .local v5, "scrollDelta":I
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Lnet/oneplus/h2launcher/Workspace;->getScrollForPage(I)I

    move-result v8

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getScrollForPage(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v6, v8

    .line 1873
    .local v6, "scrollRange":F
    int-to-float v8, v5

    sub-float v7, v6, v8

    .line 1874
    int-to-float v8, v5

    sub-float v8, v6, v8

    div-float v4, v8, v6

    .line 1876
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v8, :cond_2

    .line 1877
    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1881
    :goto_0
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1884
    .end local v2    # "index":I
    .end local v5    # "scrollDelta":I
    .end local v6    # "scrollRange":F
    :cond_0
    iget v8, p0, Lnet/oneplus/h2launcher/Workspace;->mLastCustomContentScrollProgress:F

    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_3

    .line 1929
    :cond_1
    :goto_1
    return-void

    .line 1879
    .restart local v2    # "index":I
    .restart local v5    # "scrollDelta":I
    .restart local v6    # "scrollRange":F
    :cond_2
    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_0

    .line 1886
    .end local v2    # "index":I
    .end local v5    # "scrollDelta":I
    .end local v6    # "scrollRange":F
    :cond_3
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    const-wide/16 v10, -0x12d

    invoke-virtual {v8, v10, v11}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 1887
    .local v0, "cc":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    if-lez v8, :cond_4

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1888
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/CellLayout;->setVisibility(I)V

    .line 1890
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1891
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v8

    invoke-virtual {v8, v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 1894
    :cond_5
    iput v4, p0, Lnet/oneplus/h2launcher/Workspace;->mLastCustomContentScrollProgress:F

    .line 1899
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v9, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v8, v9, :cond_6

    .line 1900
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v8

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v4

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/DragLayer;->setBackgroundAlpha(F)V

    .line 1903
    :cond_6
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v1

    .line 1904
    .local v1, "hotseatController":Lnet/oneplus/h2launcher/HotseatController;
    if-eqz v1, :cond_7

    .line 1905
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v8

    invoke-virtual {v8, v7}, Lnet/oneplus/h2launcher/HotseatController;->setTranslationX(F)V

    .line 1906
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v4

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/HotseatController;->setAlpha(F)V

    .line 1907
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v4, v8

    if-nez v8, :cond_9

    .line 1908
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x8000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 1909
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestApplyInsets()V

    .line 1910
    const/4 v8, 0x1

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/Workspace;->naviBarShow:Z

    .line 1920
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicator()Lnet/oneplus/h2launcher/PageIndicator;

    move-result-object v3

    .line 1921
    .local v3, "pageIndicator":Lnet/oneplus/h2launcher/PageIndicator;
    if-eqz v3, :cond_8

    .line 1922
    invoke-virtual {v3, v7}, Lnet/oneplus/h2launcher/PageIndicator;->setTranslationX(F)V

    .line 1923
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v4

    invoke-virtual {v3, v8}, Lnet/oneplus/h2launcher/PageIndicator;->setAlpha(F)V

    .line 1926
    :cond_8
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    if-eqz v8, :cond_1

    .line 1927
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    invoke-interface {v8, v4, v7}, Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;->onScrollProgressChanged(FF)V

    goto/16 :goto_1

    .line 1912
    .end local v3    # "pageIndicator":Lnet/oneplus/h2launcher/PageIndicator;
    :cond_9
    iget-boolean v8, p0, Lnet/oneplus/h2launcher/Workspace;->naviBarShow:Z

    if-eqz v8, :cond_7

    .line 1913
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x8000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    .line 1914
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestApplyInsets()V

    .line 1915
    const/4 v8, 0x0

    iput-boolean v8, p0, Lnet/oneplus/h2launcher/Workspace;->naviBarShow:Z

    goto :goto_2
.end method


# virtual methods
.method public acceptDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z
    .locals 34
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 2687
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/Workspace;->mDropToLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 2688
    .local v7, "dropTargetLayout":Lnet/oneplus/h2launcher/CellLayout;
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_a

    .line 2690
    if-nez v7, :cond_0

    .line 2691
    const/4 v2, 0x0

    .line 2770
    :goto_0
    return v2

    .line 2693
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 2695
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    .line 2698
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2, v7}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2699
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->mapPointFromSelfToHotseatLayout(Lnet/oneplus/h2launcher/Hotseat;[F)V

    .line 2704
    :goto_1
    const/16 v18, 0x1

    .line 2705
    .local v18, "spanX":I
    const/16 v19, 0x1

    .line 2706
    .local v19, "spanY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v2, :cond_5

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    move-object/from16 v24, v0

    .line 2708
    .local v24, "dragCellInfo":Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    move-object/from16 v0, v24

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->spanX:I

    move/from16 v18, v0

    .line 2709
    move-object/from16 v0, v24

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->spanY:I

    move/from16 v19, v0

    .line 2716
    .end local v24    # "dragCellInfo":Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    :goto_2
    move/from16 v5, v18

    .line 2717
    .local v5, "minSpanX":I
    move/from16 v6, v19

    .line 2718
    .local v6, "minSpanY":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    if-eqz v2, :cond_3

    .line 2720
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget v0, v2, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->minSpanX:I

    move/from16 v26, v0

    .line 2721
    .local v26, "dragInfoMinSpanX":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget v0, v2, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->minSpanY:I

    move/from16 v27, v0

    .line 2722
    .local v27, "dragInfoMinSpanY":I
    move/from16 v0, v26

    if-ge v0, v5, :cond_2

    move/from16 v5, v26

    .line 2723
    :cond_2
    move/from16 v0, v27

    if-ge v0, v6, :cond_3

    move/from16 v6, v27

    .line 2726
    .end local v26    # "dragInfoMinSpanX":I
    .end local v27    # "dragInfoMinSpanY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lnet/oneplus/h2launcher/Workspace;->findNearestArea(IIIILnet/oneplus/h2launcher/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 2729
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v2, v3, v4}, Lnet/oneplus/h2launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v12

    .line 2731
    .local v12, "distance":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v9, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object v10, v7

    invoke-virtual/range {v8 .. v13}, Lnet/oneplus/h2launcher/Workspace;->willCreateUserFolder(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;[IFZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2733
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2701
    .end local v5    # "minSpanX":I
    .end local v6    # "minSpanY":I
    .end local v12    # "distance":F
    .end local v18    # "spanX":I
    .end local v19    # "spanY":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 2711
    .restart local v18    # "spanX":I
    .restart local v19    # "spanY":I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lnet/oneplus/h2launcher/ItemInfo;

    .line 2712
    .local v25, "dragInfo":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v25

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v18, v0

    .line 2713
    move-object/from16 v0, v25

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v19, v0

    goto/16 :goto_2

    .line 2736
    .end local v25    # "dragInfo":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v5    # "minSpanX":I
    .restart local v6    # "minSpanY":I
    .restart local v12    # "distance":F
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v3, v12}, Lnet/oneplus/h2launcher/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;[IF)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2738
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2741
    :cond_7
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 2742
    .local v22, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v15, v2

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v21, v0

    const/16 v23, 0x4

    move-object v13, v7

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v23}, Lnet/oneplus/h2launcher/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 2745
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_8

    const/16 v28, 0x1

    .line 2748
    .local v28, "foundCell":Z
    :goto_3
    if-nez v28, :cond_a

    .line 2751
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2, v7}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v30

    .line 2752
    .local v30, "isHotseat":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    if-eqz v2, :cond_9

    if-eqz v30, :cond_9

    .line 2753
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v29

    .line 2754
    .local v29, "hotseat":Lnet/oneplus/h2launcher/Hotseat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 2755
    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    .line 2754
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2756
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2745
    .end local v28    # "foundCell":Z
    .end local v29    # "hotseat":Lnet/oneplus/h2launcher/Hotseat;
    .end local v30    # "isHotseat":Z
    :cond_8
    const/16 v28, 0x0

    goto :goto_3

    .line 2760
    .restart local v28    # "foundCell":Z
    .restart local v30    # "isHotseat":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Launcher;->showOutOfSpaceMessage(Z)V

    .line 2761
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2765
    .end local v5    # "minSpanX":I
    .end local v6    # "minSpanY":I
    .end local v12    # "distance":F
    .end local v18    # "spanX":I
    .end local v19    # "spanY":I
    .end local v22    # "resultSpan":[I
    .end local v28    # "foundCell":Z
    .end local v30    # "isHotseat":Z
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v32

    .line 2766
    .local v32, "screenId":J
    const-wide/16 v2, -0xc9

    cmp-long v2, v32, v2

    if-nez v2, :cond_b

    .line 2767
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->commitExtraEmptyScreen()J

    .line 2770
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public addExternalItemToScreen(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;)Z
    .locals 4
    .param p1, "dragInfo"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    const/4 v0, 0x0

    .line 3729
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mTempEstimate:[I

    iget v2, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget v3, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-virtual {p2, v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3730
    iget-object v1, p1, Lnet/oneplus/h2launcher/ItemInfo;->dropPos:[I

    invoke-direct {p0, v1, p1, p2, v0}, Lnet/oneplus/h2launcher/Workspace;->onDropExternal([ILjava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;Z)V

    .line 3731
    const/4 v0, 0x1

    .line 3734
    :goto_0
    return v0

    .line 3733
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2, p2}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0
.end method

.method public addExtraEmptyScreen()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 823
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->insertNewWorkspaceScreen(J)J

    .line 825
    const/4 v0, 0x1

    .line 827
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addExtraEmptyScreenOnDrag()V
    .locals 8

    .prologue
    const-wide/16 v6, -0xc9

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "lastChildOnScreen":Z
    const/4 v0, 0x0

    .line 801
    .local v0, "childOnFinalScreen":Z
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 803
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDragSourceInternal:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    if-eqz v3, :cond_1

    .line 804
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDragSourceInternal:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 805
    const/4 v2, 0x1

    .line 807
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDragSourceInternal:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 808
    .local v1, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 809
    const/4 v0, 0x1

    .line 814
    .end local v1    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    :cond_1
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 820
    :cond_2
    :goto_0
    return-void

    .line 817
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v3, v6, v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->containsKey(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 818
    invoke-virtual {p0, v6, v7}, Lnet/oneplus/h2launcher/Workspace;->insertNewWorkspaceScreen(J)J

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2023
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isAppsViewVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2024
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 2025
    .local v0, "openFolder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v0, :cond_1

    .line 2026
    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2031
    .end local v0    # "openFolder":Lnet/oneplus/h2launcher/Folder;
    :cond_0
    :goto_0
    return-void

    .line 2028
    .restart local v0    # "openFolder":Lnet/oneplus/h2launcher/Folder;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addInScreen(Landroid/view/View;JJIIII)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 1103
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 1104
    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIIIZ)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I
    .param p10, "insert"    # Z

    .prologue
    .line 1116
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 1117
    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIIIZZ)V
    .locals 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I
    .param p10, "insert"    # Z
    .param p11, "computeXYFromRank"    # Z

    .prologue
    .line 1136
    const-wide/16 v16, -0x64

    cmp-long v5, p2, v16

    if-nez v5, :cond_1

    .line 1137
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1141
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addInScreen] screenId "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " not found. Find place to add."

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/oneplus/h2launcher/ItemInfo;

    .line 1143
    .local v14, "item":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v14}, Lnet/oneplus/h2launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 1145
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    .local v10, "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v11

    .line 1148
    .local v11, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Lnet/oneplus/h2launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1224
    .end local v10    # "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    .end local v11    # "app":Lnet/oneplus/h2launcher/LauncherAppState;
    .end local v14    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local p1    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1152
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    const-wide/16 v16, -0xc9

    cmp-long v5, p4, v16

    if-nez v5, :cond_2

    .line 1154
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1158
    :cond_2
    const-wide/16 v16, -0x65

    cmp-long v5, p2, v16

    if-nez v5, :cond_a

    .line 1159
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/HotseatController;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v4

    .line 1160
    .local v4, "layout":Lnet/oneplus/h2launcher/CellLayout;
    new-instance v5, Lnet/oneplus/h2launcher/HotseatIconKeyEventListener;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/HotseatIconKeyEventListener;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1163
    move-object/from16 v0, p1

    instance-of v5, v0, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v5, :cond_3

    move-object/from16 v5, p1

    .line 1164
    check-cast v5, Lnet/oneplus/h2launcher/FolderIcon;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/FolderIcon;->setTextVisible(Z)V

    .line 1167
    :cond_3
    if-eqz p11, :cond_9

    .line 1168
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v5

    move-wide/from16 v0, p4

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/HotseatController;->getCellXFromOrder(I)I

    move-result p6

    .line 1169
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v5

    move-wide/from16 v0, p4

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/HotseatController;->getCellYFromOrder(I)I

    move-result p7

    .line 1182
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 1184
    .local v12, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v12, :cond_4

    instance-of v5, v12, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    if-nez v5, :cond_c

    .line 1185
    :cond_4
    new-instance v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {v8, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 1194
    .local v8, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :goto_2
    move-object/from16 v0, p1

    instance-of v5, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    if-eqz v5, :cond_5

    move-object/from16 v5, p1

    .line 1195
    check-cast v5, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 1196
    .local v13, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    if-eqz v13, :cond_5

    iget-boolean v5, v13, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v5, :cond_5

    .line 1197
    iget-boolean v5, v13, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->canReorder:Z

    iput-boolean v5, v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    .line 1201
    .end local v13    # "info":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :cond_5
    if-gez p8, :cond_6

    if-gez p9, :cond_6

    .line 1202
    const/4 v5, 0x0

    iput-boolean v5, v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1206
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/ItemInfo;

    .line 1207
    .local v13, "info":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5, v13}, Lnet/oneplus/h2launcher/Launcher;->getViewIdForItem(Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v7

    .line 1209
    .local v7, "childId":I
    move-object/from16 v0, p1

    instance-of v5, v0, Lnet/oneplus/h2launcher/Folder;

    if-nez v5, :cond_d

    const/4 v9, 0x1

    .line 1210
    .local v9, "markCellsAsOccupied":Z
    :goto_3
    if-eqz v4, :cond_7

    if-eqz p10, :cond_e

    const/4 v6, 0x0

    :goto_4
    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILnet/oneplus/h2launcher/CellLayout$LayoutParams;Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1214
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to add to item at ("

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v15, v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v15, v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ") to CellLayout"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x1

    invoke-static {v5, v6, v15}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1217
    :cond_7
    move-object/from16 v0, p1

    instance-of v5, v0, Lnet/oneplus/h2launcher/Folder;

    if-nez v5, :cond_8

    .line 1218
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1221
    :cond_8
    move-object/from16 v0, p1

    instance-of v5, v0, Lnet/oneplus/h2launcher/DropTarget;

    if-eqz v5, :cond_0

    .line 1222
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    check-cast p1, Lnet/oneplus/h2launcher/DropTarget;

    .end local p1    # "child":Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/DragController;->addDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    goto/16 :goto_0

    .line 1171
    .end local v7    # "childId":I
    .end local v8    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .end local v9    # "markCellsAsOccupied":Z
    .end local v12    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local p1    # "child":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v5

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v5, v0, v1}, Lnet/oneplus/h2launcher/HotseatController;->getOrderInHotseat(II)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 p4, v0

    goto/16 :goto_1

    .line 1175
    .end local v4    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_a
    move-object/from16 v0, p1

    instance-of v5, v0, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v5, :cond_b

    move-object/from16 v5, p1

    .line 1176
    check-cast v5, Lnet/oneplus/h2launcher/FolderIcon;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/FolderIcon;->setTextVisible(Z)V

    .line 1178
    :cond_b
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v4

    .line 1179
    .restart local v4    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    new-instance v5, Lnet/oneplus/h2launcher/IconKeyEventListener;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/IconKeyEventListener;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .restart local v12    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    move-object v8, v12

    .line 1187
    check-cast v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 1188
    .restart local v8    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    move/from16 v0, p6

    iput v0, v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 1189
    move/from16 v0, p7

    iput v0, v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 1190
    move/from16 v0, p8

    iput v0, v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1191
    move/from16 v0, p9

    iput v0, v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    .line 1209
    .restart local v7    # "childId":I
    .restart local v13    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1210
    .restart local v9    # "markCellsAsOccupied":Z
    :cond_e
    const/4 v6, -0x1

    goto/16 :goto_4
.end method

.method addInScreenFromBind(Landroid/view/View;JJIIII)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 1110
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 1111
    return-void
.end method

.method public addToCustomContentPage(Landroid/view/View;Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;Ljava/lang/String;)V
    .locals 12
    .param p1, "customContent"    # Landroid/view/View;
    .param p2, "callbacks"    # Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, -0x12d

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 734
    invoke-virtual {p0, v10, v11}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    if-gez v1, :cond_0

    .line 735
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expected custom content screen to exist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 739
    :cond_0
    invoke-virtual {p0, v10, v11}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 740
    .local v0, "customScreen":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getCountX()I

    move-result v7

    .line 741
    .local v7, "spanX":I
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v8

    .line 742
    .local v8, "spanY":I
    new-instance v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v7, v8}, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 743
    .local v4, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iput-boolean v2, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    .line 744
    iput-boolean v5, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isFullscreen:Z

    .line 745
    instance-of v1, p1, Lnet/oneplus/h2launcher/Insettable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 746
    check-cast v1, Lnet/oneplus/h2launcher/Insettable;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lnet/oneplus/h2launcher/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 750
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 751
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 752
    .local v6, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 754
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->removeAllViews()V

    move-object v1, p1

    move v3, v2

    .line 755
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILnet/oneplus/h2launcher/CellLayout$LayoutParams;Z)Z

    .line 756
    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 758
    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    .line 759
    return-void
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lnet/oneplus/h2launcher/CellLayout;[IFLnet/oneplus/h2launcher/DropTarget$DragObject;Z)Z
    .locals 6
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "target"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p6, "external"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2879
    iget v4, p0, Lnet/oneplus/h2launcher/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v4, p4, v4

    if-lez v4, :cond_1

    .line 2901
    :cond_0
    :goto_0
    return v2

    .line 2881
    :cond_1
    aget v4, p3, v2

    aget v5, p3, v3

    invoke-virtual {p2, v4, v5}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2882
    .local v0, "dropOverView":Landroid/view/View;
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v4, :cond_0

    .line 2883
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2885
    instance-of v4, v0, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 2886
    check-cast v1, Lnet/oneplus/h2launcher/FolderIcon;

    .line 2887
    .local v1, "fi":Lnet/oneplus/h2launcher/FolderIcon;
    iget-object v4, p5, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2888
    invoke-virtual {v1, p5}, Lnet/oneplus/h2launcher/FolderIcon;->onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 2891
    if-nez p6, :cond_2

    .line 2892
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v2, v2, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v2

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v4, v4, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2894
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2895
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/16 v4, 0x12c

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    :cond_3
    move v2, v3

    .line 2898
    goto :goto_0
.end method

.method public animateWidgetDrop(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 42
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "cellLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p3, "dragView"    # Lnet/oneplus/h2launcher/DragView;
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p5, "animationType"    # I
    .param p6, "finalView"    # Landroid/view/View;
    .param p7, "external"    # Z

    .prologue
    .line 3976
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 3977
    .local v38, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Lnet/oneplus/h2launcher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3979
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3980
    .local v5, "finalPos":[I
    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 3981
    .local v6, "scaleXY":[F
    move-object/from16 v0, p1

    instance-of v4, v0, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;

    if-nez v4, :cond_4

    const/4 v12, 0x1

    .line 3982
    .local v12, "scalePreview":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lnet/oneplus/h2launcher/Workspace;->getFinalPositionForDropAnimation([I[FLnet/oneplus/h2launcher/DragView;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/ItemInfo;[IZZ)V

    .line 3985
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    .line 3986
    .local v40, "res":Landroid/content/res/Resources;
    const v4, 0x7f0f0029

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v0, v4, -0xc8

    move/from16 v21, v0

    .line 3989
    .local v21, "duration":I
    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    .line 3990
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 3993
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_5

    :cond_1
    const/16 v39, 0x1

    .line 3995
    .local v39, "isWidget":Z
    :goto_1
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_2

    if-eqz p7, :cond_6

    :cond_2
    if-eqz p6, :cond_6

    .line 3996
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Lnet/oneplus/h2launcher/Workspace;->estimateItemSize(Lnet/oneplus/h2launcher/ItemInfo;Z)[I

    move-result-object v41

    .line 3997
    .local v41, "unScaledSize":[I
    move-object/from16 v0, v41

    array-length v4, v0

    const/4 v7, 0x2

    if-lt v4, v7, :cond_3

    const/4 v4, 0x0

    aget v4, v41, v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    aget v4, v41, v4

    if-lez v4, :cond_3

    .line 3998
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->createWidgetBitmap(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 3999
    .local v37, "crossFadeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    .line 4000
    move/from16 v0, v21

    int-to-float v4, v0

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/DragView;->crossFade(I)V

    .line 4006
    .end local v37    # "crossFadeBitmap":Landroid/graphics/Bitmap;
    .end local v41    # "unScaledSize":[I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v22

    .line 4007
    .local v22, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_7

    .line 4008
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v13

    const/16 v16, 0x0

    const v17, 0x3dcccccd    # 0.1f

    const v18, 0x3dcccccd    # 0.1f

    const/16 v19, 0x0

    move-object/from16 v14, p3

    move-object v15, v5

    move-object/from16 v20, p4

    invoke-virtual/range {v13 .. v21}, Lnet/oneplus/h2launcher/DragLayer;->animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 4033
    :goto_3
    return-void

    .line 3981
    .end local v12    # "scalePreview":Z
    .end local v21    # "duration":I
    .end local v22    # "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    .end local v39    # "isWidget":Z
    .end local v40    # "res":Landroid/content/res/Resources;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3993
    .restart local v12    # "scalePreview":Z
    .restart local v21    # "duration":I
    .restart local v40    # "res":Landroid/content/res/Resources;
    :cond_5
    const/16 v39, 0x0

    goto :goto_1

    .line 4002
    .restart local v39    # "isWidget":Z
    :cond_6
    if-eqz v39, :cond_3

    if-eqz p7, :cond_3

    .line 4003
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_2

    .line 4012
    .restart local v22    # "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 4013
    const/16 v34, 0x2

    .line 4018
    .local v34, "endStyle":I
    :goto_4
    new-instance v33, Lnet/oneplus/h2launcher/Workspace$15;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace$15;-><init>(Lnet/oneplus/h2launcher/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4029
    .local v33, "onComplete":Ljava/lang/Runnable;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    const/4 v4, 0x0

    aget v26, v5, v4

    const/4 v4, 0x1

    aget v27, v5, v4

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/high16 v30, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v31, v6, v4

    const/4 v4, 0x1

    aget v32, v6, v4

    move-object/from16 v23, p3

    move/from16 v35, v21

    move-object/from16 v36, p0

    invoke-virtual/range {v22 .. v36}, Lnet/oneplus/h2launcher/DragLayer;->animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_3

    .line 4015
    .end local v33    # "onComplete":Ljava/lang/Runnable;
    .end local v34    # "endStyle":I
    :cond_8
    const/16 v34, 0x0

    .restart local v34    # "endStyle":I
    goto :goto_4
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1793
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1794
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1796
    :cond_0
    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 4
    .param p1, "r"    # F

    .prologue
    .line 1805
    const v0, 0x3dcccccd    # 0.1f

    .line 1806
    .local v0, "pivotA":F
    const v1, 0x3ecccccd    # 0.4f

    .line 1807
    .local v1, "pivotB":F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1808
    const/4 v2, 0x0

    .line 1812
    :goto_0
    return v2

    .line 1809
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1810
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1812
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Landroid/graphics/Point;Lnet/oneplus/h2launcher/DragSource;Z)V
    .locals 29
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeTouchPos"    # Landroid/graphics/Point;
    .param p3, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p4, "accessible"    # Z

    .prologue
    .line 2552
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 2553
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2556
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/Workspace;->createDragOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2558
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/Launcher;->onDragStarted(Landroid/view/View;)V

    .line 2560
    new-instance v25, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x2

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2561
    .local v25, "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2563
    .local v6, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 2564
    .local v17, "bmpWidth":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 2566
    .local v16, "bmpHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lnet/oneplus/h2launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v14

    .line 2567
    .local v14, "scale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v14

    sub-float/2addr v5, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2568
    .local v7, "dragLayerX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v9, v0

    mul-float/2addr v9, v14

    sub-float/2addr v5, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    .line 2569
    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 2568
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 2571
    .local v8, "dragLayerY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v20

    .line 2572
    .local v20, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    const/4 v12, 0x0

    .line 2573
    .local v12, "dragVisualizeOffset":Landroid/graphics/Point;
    const/4 v13, 0x0

    .line 2574
    .local v13, "dragRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v4, v0, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v4, :cond_5

    move-object/from16 v21, p1

    .line 2575
    check-cast v21, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 2576
    .local v21, "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    move-object/from16 v0, v20

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    move/from16 v22, v0

    .line 2577
    .local v22, "iconSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v28

    .line 2578
    .local v28, "top":I
    sub-int v4, v17, v22

    div-int/lit8 v23, v4, 0x2

    .line 2579
    .local v23, "left":I
    add-int v27, v23, v22

    .line 2580
    .local v27, "right":I
    add-int v18, v28, v22

    .line 2581
    .local v18, "bottom":I
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2586
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2587
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2592
    :cond_0
    :goto_0
    add-int v8, v8, v28

    .line 2595
    new-instance v12, Landroid/graphics/Point;

    .end local v12    # "dragVisualizeOffset":Landroid/graphics/Point;
    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v12, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 2596
    .restart local v12    # "dragVisualizeOffset":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "dragRect":Landroid/graphics/Rect;
    move/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v27

    move/from16 v3, v18

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2605
    .end local v18    # "bottom":I
    .end local v21    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    .end local v22    # "iconSize":I
    .end local v23    # "left":I
    .end local v27    # "right":I
    .end local v28    # "top":I
    .restart local v13    # "dragRect":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    instance-of v4, v0, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v4, :cond_2

    move-object/from16 v21, p1

    .line 2606
    check-cast v21, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 2607
    .restart local v21    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    invoke-virtual/range {v21 .. v21}, Lnet/oneplus/h2launcher/BubbleTextView;->clearPressedBackground()V

    .line 2610
    .end local v21    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lnet/oneplus/h2launcher/ItemInfo;

    if-nez v4, :cond_6

    .line 2611
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2613
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2614
    .local v24, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2589
    .end local v24    # "msg":Ljava/lang/String;
    .restart local v18    # "bottom":I
    .restart local v21    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    .restart local v22    # "iconSize":I
    .restart local v23    # "left":I
    .restart local v27    # "right":I
    .restart local v28    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v5, v17, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_0

    .line 2597
    .end local v18    # "bottom":I
    .end local v21    # "icon":Lnet/oneplus/h2launcher/BubbleTextView;
    .end local v22    # "iconSize":I
    .end local v23    # "left":I
    .end local v27    # "right":I
    .end local v28    # "top":I
    :cond_5
    move-object/from16 v0, p1

    instance-of v4, v0, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v4, :cond_1

    .line 2598
    move-object/from16 v0, v20

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->folderIconSizePx:I

    move/from16 v26, v0

    .line 2599
    .local v26, "previewSize":I
    new-instance v12, Landroid/graphics/Point;

    .end local v12    # "dragVisualizeOffset":Landroid/graphics/Point;
    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 2600
    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-direct {v12, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 2601
    .restart local v12    # "dragVisualizeOffset":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "dragRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    move/from16 v0, v26

    invoke-direct {v13, v4, v5, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v13    # "dragRect":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 2617
    .end local v26    # "previewSize":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    if-eqz v4, :cond_7

    .line 2618
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragSourceInternal:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 2621
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 2622
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    sget v11, Lnet/oneplus/h2launcher/DragController;->DRAG_ACTION_MOVE:I

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    move/from16 v15, p4

    .line 2621
    invoke-virtual/range {v4 .. v15}, Lnet/oneplus/h2launcher/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZ)Lnet/oneplus/h2launcher/DragView;

    move-result-object v19

    .line 2624
    .local v19, "dv":Lnet/oneplus/h2launcher/DragView;
    invoke-interface/range {p3 .. p3}, Lnet/oneplus/h2launcher/DragSource;->getIntrinsicIconScaleFactor()F

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/DragView;->setIntrinsicIconScaleFactor(F)V

    .line 2626
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2627
    return-void
.end method

.method public beginDragShared(Landroid/view/View;Lnet/oneplus/h2launcher/DragSource;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p3, "accessible"    # Z

    .prologue
    .line 2547
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lnet/oneplus/h2launcher/Workspace;->beginDragShared(Landroid/view/View;Landroid/graphics/Point;Lnet/oneplus/h2launcher/DragSource;Z)V

    .line 2548
    return-void
.end method

.method public beginExternalDragShared(Landroid/view/View;Lnet/oneplus/h2launcher/DragSource;)V
    .locals 24
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lnet/oneplus/h2launcher/DragSource;

    .prologue
    .line 2630
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v17

    .line 2631
    .local v17, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    move-object/from16 v0, v17

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    move/from16 v19, v0

    .line 2634
    .local v19, "iconSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/Launcher;->onDragStarted(Landroid/view/View;)V

    .line 2637
    new-instance v22, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2638
    .local v22, "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 2639
    .local v23, "tmpB":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2640
    .local v5, "b":Landroid/graphics/Bitmap;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 2641
    .local v21, "p":Landroid/graphics/Paint;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2642
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2643
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v4, v8, v9, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-direct {v8, v9, v10, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v4, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2648
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 2649
    .local v15, "bmpWidth":I
    int-to-float v3, v15

    move/from16 v0, v19

    int-to-float v4, v0

    div-float v18, v3, v4

    .line 2650
    .local v18, "iconScale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lnet/oneplus/h2launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v3

    mul-float v13, v3, v18

    .line 2651
    .local v13, "scale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    int-to-float v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v13

    sub-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 2652
    .local v6, "dragLayerX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2656
    .local v7, "dragLayerY":I
    new-instance v11, Landroid/graphics/Point;

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v11, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2657
    .local v11, "dragVisualizeOffset":Landroid/graphics/Point;
    new-instance v12, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-direct {v12, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2659
    .local v12, "dragRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnet/oneplus/h2launcher/ItemInfo;

    if-nez v3, :cond_1

    .line 2660
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2662
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2663
    .local v20, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2667
    .end local v20    # "msg":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 2668
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    sget v10, Lnet/oneplus/h2launcher/DragController;->DRAG_ACTION_MOVE:I

    const/4 v14, 0x0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    .line 2667
    invoke-virtual/range {v3 .. v14}, Lnet/oneplus/h2launcher/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZ)Lnet/oneplus/h2launcher/DragView;

    move-result-object v16

    .line 2671
    .local v16, "dv":Lnet/oneplus/h2launcher/DragView;
    invoke-interface/range {p2 .. p2}, Lnet/oneplus/h2launcher/DragSource;->getIntrinsicIconScaleFactor()F

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/DragView;->setIntrinsicIconScaleFactor(F)V

    .line 2674
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    .line 2675
    return-void
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 2115
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2116
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2117
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v0

    .line 2118
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2119
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 2120
    .local v1, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->buildHardwareLayer()V

    .line 2118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2123
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2124
    return-void
.end method

.method clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2057
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v2

    .line 2058
    .local v2, "screenCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2059
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 2060
    .local v1, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2062
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2063
    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 2058
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2066
    .end local v1    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_1
    return-void
.end method

.method clearDropTargets()V
    .locals 2

    .prologue
    .line 4510
    const/4 v0, 0x0

    new-instance v1, Lnet/oneplus/h2launcher/Workspace$22;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Workspace$22;-><init>(Lnet/oneplus/h2launcher/Workspace;)V

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->mapOverItems(ZLnet/oneplus/h2launcher/Workspace$ItemOperator;)V

    .line 4520
    return-void
.end method

.method public commitExtraEmptyScreen()J
    .locals 8

    .prologue
    const-wide/16 v6, -0xc9

    .line 971
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLoading()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 973
    const-string v4, "Launcher.Workspace"

    const-string v5, "    - workspace loading, skip"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 974
    const-wide/16 v2, -0x1

    .line 994
    :goto_0
    return-wide v2

    .line 977
    :cond_0
    invoke-virtual {p0, v6, v7}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    .line 978
    .local v1, "index":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 979
    .local v0, "cl":Lnet/oneplus/h2launcher/CellLayout;
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 980
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 982
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/LauncherProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 983
    .local v2, "newId":J
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v4, v2, v3, v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 984
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicator()Lnet/oneplus/h2launcher/PageIndicator;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 988
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicator()Lnet/oneplus/h2launcher/PageIndicator;

    move-result-object v4

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicatorMarker(I)Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lnet/oneplus/h2launcher/PageIndicator;->updateMarker(ILnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;)V

    .line 992
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1784
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->computeScroll()V

    .line 1785
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1786
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1788
    :cond_0
    return-void
.end method

.method public createCustomContentContainer()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x12d

    const/4 v3, 0x0

    .line 674
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 675
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400e0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 676
    .local v0, "customScreen":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->setIsCustomContentScreen(Z)V

    .line 677
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->disableDragTarget()V

    .line 679
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1, v4, v5, v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 680
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 683
    invoke-virtual {v0, v3, v3, v3, v3}, Lnet/oneplus/h2launcher/CellLayout;->setPadding(IIII)V

    .line 685
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->addFullScreenPage(Landroid/view/View;)V

    .line 688
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mOriginalDefaultPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDefaultPage:I

    .line 691
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mRestorePage:I

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_0

    .line 692
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mRestorePage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mRestorePage:I

    .line 698
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hideCustomContentIfNecessary()V

    .line 699
    return-void

    .line 694
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "expectedPadding"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 2462
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 2463
    .local v3, "padding":I
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 2464
    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4}, Lnet/oneplus/h2launcher/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2465
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lnet/oneplus/h2launcher/Workspace;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2466
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    .line 2467
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2466
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2468
    .local v0, "b":Landroid/graphics/Bitmap;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2474
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2475
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {p1, v4, v3}, Lnet/oneplus/h2launcher/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 2476
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2478
    return-object v0

    .line 2471
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2470
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLnet/oneplus/h2launcher/CellLayout;[IFZLnet/oneplus/h2launcher/DragView;Ljava/lang/Runnable;)Z
    .locals 22
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "target"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p5, "targetCell"    # [I
    .param p6, "distance"    # F
    .param p7, "external"    # Z
    .param p8, "dragView"    # Lnet/oneplus/h2launcher/DragView;
    .param p9, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2827
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v2, p6, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 2874
    :goto_0
    return v2

    .line 2828
    :cond_0
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .line 2830
    .local v10, "v":Landroid/view/View;
    const/16 v20, 0x0

    .line 2831
    .local v20, "hasntMoved":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    .line 2832
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v2, v2, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v18

    .line 2833
    .local v18, "cellParent":Lnet/oneplus/h2launcher/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget v2, v2, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cellX:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget v2, v2, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cellY:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_3

    const/16 v20, 0x1

    .line 2837
    .end local v18    # "cellParent":Lnet/oneplus/h2launcher/CellLayout;
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2833
    .restart local v18    # "cellParent":Lnet/oneplus/h2launcher/CellLayout;
    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    .line 2838
    .end local v18    # "cellParent":Lnet/oneplus/h2launcher/CellLayout;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2839
    if-nez p5, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-wide v6, v2, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->screenId:J

    .line 2841
    .local v6, "screenId":J
    :goto_2
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    move/from16 v16, v0

    .line 2842
    .local v16, "aboveShortcut":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    move/from16 v21, v0

    .line 2844
    .local v21, "willBecomeShortcut":Z
    if-eqz v16, :cond_9

    if-eqz v21, :cond_9

    .line 2845
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 2846
    .local v11, "sourceInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 2848
    .local v19, "destInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    if-nez p7, :cond_5

    .line 2849
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v2, v2, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v3, v3, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2852
    :cond_5
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2853
    .local v13, "folderLocation":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v10, v13}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v14

    .line 2854
    .local v14, "scale":F
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2856
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v3, 0x0

    aget v8, p5, v3

    const/4 v3, 0x1

    aget v9, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    .line 2857
    invoke-virtual/range {v2 .. v9}, Lnet/oneplus/h2launcher/Launcher;->addFolder(Lnet/oneplus/h2launcher/CellLayout;JJII)Lnet/oneplus/h2launcher/FolderIcon;

    move-result-object v8

    .line 2858
    .local v8, "fi":Lnet/oneplus/h2launcher/FolderIcon;
    const/4 v2, -0x1

    move-object/from16 v0, v19

    iput v2, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    .line 2859
    const/4 v2, -0x1

    move-object/from16 v0, v19

    iput v2, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    .line 2860
    const/4 v2, -0x1

    iput v2, v11, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    .line 2861
    const/4 v2, -0x1

    iput v2, v11, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    .line 2864
    if-eqz p8, :cond_7

    const/16 v17, 0x1

    .line 2865
    .local v17, "animate":Z
    :goto_3
    if-eqz v17, :cond_8

    move-object/from16 v9, v19

    move-object/from16 v12, p8

    move-object/from16 v15, p9

    .line 2866
    invoke-virtual/range {v8 .. v15}, Lnet/oneplus/h2launcher/FolderIcon;->performCreateAnimation(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 2872
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2839
    .end local v6    # "screenId":J
    .end local v8    # "fi":Lnet/oneplus/h2launcher/FolderIcon;
    .end local v11    # "sourceInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v13    # "folderLocation":Landroid/graphics/Rect;
    .end local v14    # "scale":F
    .end local v16    # "aboveShortcut":Z
    .end local v17    # "animate":Z
    .end local v19    # "destInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v21    # "willBecomeShortcut":Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v6

    goto/16 :goto_2

    .line 2864
    .restart local v6    # "screenId":J
    .restart local v8    # "fi":Lnet/oneplus/h2launcher/FolderIcon;
    .restart local v11    # "sourceInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v13    # "folderLocation":Landroid/graphics/Rect;
    .restart local v14    # "scale":F
    .restart local v16    # "aboveShortcut":Z
    .restart local v19    # "destInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .restart local v21    # "willBecomeShortcut":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 2869
    .restart local v17    # "animate":Z
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/FolderIcon;->addItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 2870
    invoke-virtual {v8, v11}, Lnet/oneplus/h2launcher/FolderIcon;->addItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    goto :goto_4

    .line 2874
    .end local v8    # "fi":Lnet/oneplus/h2launcher/FolderIcon;
    .end local v11    # "sourceInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v13    # "folderLocation":Landroid/graphics/Rect;
    .end local v14    # "scale":F
    .end local v17    # "animate":Z
    .end local v19    # "destInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public createWidgetBitmap(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "widgetInfo"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3919
    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v5

    invoke-virtual {v5, p1, v8}, Lnet/oneplus/h2launcher/Workspace;->estimateItemSize(Lnet/oneplus/h2launcher/ItemInfo;Z)[I

    move-result-object v2

    .line 3920
    .local v2, "unScaledSize":[I
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    .line 3921
    .local v3, "visibility":I
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3923
    aget v5, v2, v8

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3924
    .local v4, "width":I
    aget v5, v2, v9

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3925
    .local v1, "height":I
    aget v5, v2, v8

    aget v6, v2, v9

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3927
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3929
    invoke-virtual {p2, v4, v1}, Landroid/view/View;->measure(II)V

    .line 3930
    aget v5, v2, v8

    aget v6, v2, v9

    invoke-virtual {p2, v8, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 3931
    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3932
    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3933
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3934
    return-object v0
.end method

.method public deferCompleteDropAfterUninstallActivity()V
    .locals 1

    .prologue
    .line 4164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferDropAfterUninstall:Z

    .line 4165
    return-void
.end method

.method public deferRemoveExtraEmptyScreen()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 463
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1323
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isFinishedSwitchingState()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->isDrawerOpen()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lnet/oneplus/h2launcher/Workspace;->mXDown:F

    sub-float v2, v7, v8

    .line 1326
    .local v2, "deltaX":F
    iget v7, p0, Lnet/oneplus/h2launcher/Workspace;->mSettledX:F

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1327
    .local v4, "settledX":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1328
    .local v0, "absDeltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lnet/oneplus/h2launcher/Workspace;->mYDown:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1330
    .local v1, "absDeltaY":F
    iput v2, p0, Lnet/oneplus/h2launcher/Workspace;->mSettledX:F

    .line 1332
    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_0

    .line 1334
    div-float v5, v1, v0

    .line 1335
    .local v5, "slope":F
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 1337
    .local v6, "theta":F
    iget v7, p0, Lnet/oneplus/h2launcher/Workspace;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-gtz v7, :cond_2

    iget v7, p0, Lnet/oneplus/h2launcher/Workspace;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_3

    .line 1338
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->cancelCurrentPageLongPress()V

    .line 1342
    :cond_3
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v7

    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    const-wide/16 v10, -0x12d

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    const/4 v3, 0x1

    .line 1344
    .local v3, "onCustomContentScreen":Z
    :goto_1
    if-eqz v3, :cond_4

    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    .line 1345
    invoke-interface {v7}, Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;->isScrollingAllowed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1351
    :cond_4
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mHasTouchSettled:Z

    if-nez v7, :cond_8

    .line 1354
    const-string v7, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isOverview: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string v7, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "settledX: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v7, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPageNearestToPoint: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lnet/oneplus/h2launcher/Workspace;->mXDown:F

    invoke-virtual {p0, v9}, Lnet/oneplus/h2launcher/Workspace;->getPageNearestToPoint(F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v7, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPageNearestToCenterOfScreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_5

    iget v7, p0, Lnet/oneplus/h2launcher/Workspace;->mXDown:F

    .line 1359
    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/Workspace;->getPageNearestToPoint(F)I

    move-result v7

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 1360
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mHasTouchSettled:Z

    .line 1361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/Workspace;->mXDown:F

    .line 1362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lnet/oneplus/h2launcher/Workspace;->mYDown:F

    .line 1364
    :cond_6
    const-string v7, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "touchSettled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lnet/oneplus/h2launcher/Workspace;->mHasTouchSettled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v7, "Launcher.Workspace"

    const-string v8, "determineScrollingStart# skip the determination scrolling start"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1342
    .end local v3    # "onCustomContentScreen":Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1369
    .restart local v3    # "onCustomContentScreen":Z
    :cond_8
    const v7, 0x3f860a92

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_0

    .line 1372
    const v7, 0x3f060a92

    cmpl-float v7, v6, v7

    if-lez v7, :cond_9

    .line 1377
    const v7, 0x3f060a92

    sub-float/2addr v6, v7

    .line 1378
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40800000    # 4.0f

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/Workspace;->caculateExtraRatio(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-super {p0, p1, v7}, Lnet/oneplus/h2launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto/16 :goto_0

    .line 1380
    :cond_9
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1383
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40800000    # 4.0f

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/Workspace;->caculateExtraRatio(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-super {p0, p1, v7}, Lnet/oneplus/h2launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto/16 :goto_0

    .line 1386
    :cond_a
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method disableLayoutTransitions()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 542
    return-void
.end method

.method public disableShelfScroll()V
    .locals 1

    .prologue
    .line 5163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setEnableShelfScroll(Z)V

    .line 5164
    return-void
.end method

.method public disableShortcutsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    .locals 3
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 4524
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4525
    .local v0, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4527
    const/4 v1, 0x1

    new-instance v2, Lnet/oneplus/h2launcher/Workspace$23;

    invoke-direct {v2, p0, p2, v0, p3}, Lnet/oneplus/h2launcher/Workspace$23;-><init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet;I)V

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->mapOverItems(ZLnet/oneplus/h2launcher/Workspace$ItemOperator;)V

    .line 4548
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4289
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 4290
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 1259
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1261
    :cond_0
    const/4 v0, 0x0

    .line 1263
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public enableAccessibleDrag(Z)V
    .locals 4
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 1836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1837
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 1838
    .local v0, "child":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v0, p1, v3}, Lnet/oneplus/h2launcher/CellLayout;->enableAccessibleDrag(ZI)V

    .line 1836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1841
    .end local v0    # "child":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    if-eqz p1, :cond_1

    .line 1843
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1848
    :goto_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getSearchDropTargetBar()Lnet/oneplus/h2launcher/SearchDropTargetBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/oneplus/h2launcher/SearchDropTargetBar;->enableAccessibleDrag(Z)V

    .line 1849
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lnet/oneplus/h2launcher/HotseatController;->enableAccessibleDrag(ZI)V

    .line 1850
    return-void

    .line 1846
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method enableChildrenCache(II)V
    .locals 6
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    const/4 v5, 0x1

    .line 2038
    if-le p1, p2, :cond_0

    .line 2039
    move v3, p1

    .line 2040
    .local v3, "temp":I
    move p1, p2

    .line 2041
    move p2, v3

    .line 2044
    .end local v3    # "temp":I
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v2

    .line 2046
    .local v2, "screenCount":I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2047
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2049
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 2050
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 2051
    .local v1, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2052
    invoke-virtual {v1, v5}, Lnet/oneplus/h2launcher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 2049
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2054
    .end local v1    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_1
    return-void
.end method

.method enableLayoutTransitions()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 538
    return-void
.end method

.method public enableShelfScroll()V
    .locals 1

    .prologue
    .line 5167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setEnableShelfScroll(Z)V

    .line 5168
    return-void
.end method

.method public estimateItemPosition(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/ItemInfo;IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "cl"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p2, "pendingInfo"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "hCell"    # I
    .param p4, "vCell"    # I
    .param p5, "hSpan"    # I
    .param p6, "vSpan"    # I

    .prologue
    .line 433
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "r":Landroid/graphics/Rect;
    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 434
    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 435
    return-object v5
.end method

.method public estimateItemSize(Lnet/oneplus/h2launcher/ItemInfo;Z)[I
    .locals 10
    .param p1, "itemInfo"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "springLoaded"    # Z

    .prologue
    const v2, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 412
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 413
    .local v8, "size":[I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 415
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 416
    .local v1, "cl":Lnet/oneplus/h2launcher/CellLayout;
    iget v5, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget v6, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lnet/oneplus/h2launcher/Workspace;->estimateItemPosition(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 417
    .local v7, "r":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v8, v3

    .line 418
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v8, v9

    .line 419
    if-eqz p2, :cond_0

    .line 420
    aget v0, v8, v3

    int-to-float v0, v0

    iget v2, p0, Lnet/oneplus/h2launcher/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v3

    .line 421
    aget v0, v8, v9

    int-to-float v0, v0

    iget v2, p0, Lnet/oneplus/h2launcher/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v9

    .line 427
    .end local v1    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v7    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v8

    .line 425
    :cond_1
    aput v2, v8, v3

    .line 426
    aput v2, v8, v9

    goto :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 2198
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    .line 2199
    .local v0, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->clearAllResizeFrames()V

    .line 2200
    return-void
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 5144
    const-string v0, "container"

    const-string v1, "homescreen"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5145
    const-string v0, "container_page"

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5146
    return-void
.end method

.method findNearestArea(IIIILnet/oneplus/h2launcher/CellLayout;[I)[I
    .locals 6
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "layout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p6, "recycle"    # [I

    .prologue
    .line 4085
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4430
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getShortcutAndWidgetContainerInPage(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getAllShortcuts()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4925
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4926
    .local v16, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v8

    .line 4927
    .local v8, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4928
    .local v6, "containerCount":I
    const/4 v7, 0x0

    .local v7, "containerIdx":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 4929
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 4931
    .local v5, "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v14

    .line 4932
    .local v14, "itemCount":I
    const/4 v15, 0x0

    .local v15, "itemIdx":I
    :goto_1
    if-ge v15, v14, :cond_4

    .line 4933
    invoke-virtual {v5, v15}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 4934
    .local v13, "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/ItemInfo;

    .line 4935
    .local v12, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v0, v12, Lnet/oneplus/h2launcher/FolderInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    instance-of v0, v13, Lnet/oneplus/h2launcher/FolderIcon;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object v11, v13

    .line 4936
    check-cast v11, Lnet/oneplus/h2launcher/FolderIcon;

    .line 4937
    .local v11, "folderIcon":Lnet/oneplus/h2launcher/FolderIcon;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v9

    .line 4938
    .local v9, "folder":Lnet/oneplus/h2launcher/Folder;
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v10

    .line 4940
    .local v10, "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4941
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "childIdx":I
    :goto_2
    if-ge v3, v2, :cond_1

    .line 4942
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4943
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 4944
    .local v4, "childTag":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 4945
    new-instance v17, Landroid/util/Pair;

    check-cast v4, Lnet/oneplus/h2launcher/ItemInfo;

    .end local v4    # "childTag":Ljava/lang/Object;
    move-object/from16 v0, v17

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4941
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4948
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    new-instance v17, Landroid/util/Pair;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4932
    .end local v2    # "childCount":I
    .end local v3    # "childIdx":I
    .end local v9    # "folder":Lnet/oneplus/h2launcher/Folder;
    .end local v10    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "folderIcon":Lnet/oneplus/h2launcher/FolderIcon;
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 4949
    :cond_3
    instance-of v0, v12, Lnet/oneplus/h2launcher/ShortcutInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    instance-of v0, v13, Lnet/oneplus/h2launcher/BubbleTextView;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 4950
    new-instance v17, Landroid/util/Pair;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4928
    .end local v12    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v13    # "item":Landroid/view/View;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 4954
    .end local v5    # "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    .end local v14    # "itemCount":I
    .end local v15    # "itemIdx":I
    :cond_5
    return-object v16
.end method

.method getAllShortcutsInPage(I)Ljava/util/List;
    .locals 16
    .param p1, "pageIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4958
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4959
    .local v14, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;>;>;"
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v6

    .line 4960
    .local v6, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;>;"
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 4961
    .local v5, "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    if-eqz v5, :cond_4

    .line 4963
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    .line 4964
    .local v12, "itemCount":I
    const/4 v13, 0x0

    .local v13, "itemIdx":I
    :goto_0
    if-ge v13, v12, :cond_4

    .line 4965
    invoke-virtual {v5, v13}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4966
    .local v11, "item":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/ItemInfo;

    .line 4967
    .local v10, "info":Lnet/oneplus/h2launcher/ItemInfo;
    instance-of v15, v10, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v15, :cond_3

    instance-of v15, v11, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v15, :cond_3

    move-object v9, v11

    .line 4968
    check-cast v9, Lnet/oneplus/h2launcher/FolderIcon;

    .line 4969
    .local v9, "folderIcon":Lnet/oneplus/h2launcher/FolderIcon;
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v7

    .line 4970
    .local v7, "folder":Lnet/oneplus/h2launcher/Folder;
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v8

    .line 4972
    .local v8, "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4973
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "childIdx":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 4974
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4975
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 4976
    .local v4, "childTag":Ljava/lang/Object;
    instance-of v15, v4, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v15, :cond_0

    .line 4977
    new-instance v15, Landroid/util/Pair;

    check-cast v4, Lnet/oneplus/h2launcher/ItemInfo;

    .end local v4    # "childTag":Ljava/lang/Object;
    invoke-direct {v15, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4973
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4980
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    new-instance v15, Landroid/util/Pair;

    invoke-direct {v15, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4964
    .end local v2    # "childCount":I
    .end local v3    # "childIdx":I
    .end local v7    # "folder":Lnet/oneplus/h2launcher/Folder;
    .end local v8    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "folderIcon":Lnet/oneplus/h2launcher/FolderIcon;
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 4981
    :cond_3
    instance-of v15, v10, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v15, :cond_2

    instance-of v15, v11, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v15, :cond_2

    .line 4982
    new-instance v15, Landroid/util/Pair;

    invoke-direct {v15, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4987
    .end local v10    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v11    # "item":Landroid/view/View;
    .end local v12    # "itemCount":I
    .end local v13    # "itemIdx":I
    :cond_4
    return-object v14
.end method

.method public getCurrentDropLayout()Lnet/oneplus/h2launcher/CellLayout;
    .locals 1

    .prologue
    .line 4061
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5125
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v1

    if-nez v1, :cond_0

    .line 5126
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 5129
    :goto_0
    return-object v1

    .line 5128
    :cond_0
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mNextPage:I

    .line 5129
    .local v0, "page":I
    :goto_1
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5128
    .end local v0    # "page":I
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    goto :goto_1
.end method

.method public getCurrentPageOffsetFromCustomContent()I
    .locals 2

    .prologue
    .line 4075
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCurrentWallpaperOffset()F
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method protected getCustomContentCallbacks()Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 2015
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    const/high16 v0, 0x60000

    .line 2018
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDragInfo()Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 4071
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    return-object v0
.end method

.method protected getEdgeVerticalPostion([I)V
    .locals 3
    .param p1, "pos"    # [I

    .prologue
    .line 1499
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1500
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    aput v2, p1, v1

    .line 1501
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    aput v2, p1, v1

    .line 1502
    return-void
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lnet/oneplus/h2launcher/Folder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4453
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$17;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/Workspace$17;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getFirstMatch(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/Folder;

    return-object v0
.end method

.method protected getFreeScrollPageRange([I)V
    .locals 0
    .param p1, "range"    # [I

    .prologue
    .line 2204
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->getOverviewModePages([I)V

    .line 2205
    return-void
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3721
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 3722
    return-void
.end method

.method public getHomeScreenPageIndex()I
    .locals 2

    .prologue
    .line 1015
    const-wide/16 v0, -0x12d

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getHomescreenIconByItemId(J)Landroid/view/View;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 4464
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$18;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/Workspace$18;-><init>(Lnet/oneplus/h2launcher/Workspace;J)V

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getFirstMatch(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J
    .locals 4
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 1003
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 1004
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1005
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->keyAt(I)J

    move-result-wide v2

    .line 1007
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 4247
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .param p1, "loc"    # [I

    .prologue
    .line 5139
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/oneplus/h2launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 5140
    return-void
.end method

.method public getNearestLayout()Lnet/oneplus/h2launcher/CellLayout;
    .locals 1

    .prologue
    .line 4053
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    return-object v0
.end method

.method public getNextPage()I
    .locals 1

    .prologue
    .line 5253
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->getNextPage()I

    move-result v0

    return v0
.end method

.method public getOpenFolder()Lnet/oneplus/h2launcher/Folder;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 568
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getFoldersView()Lnet/oneplus/h2launcher/FoldersContainerView;

    move-result-object v1

    .line 569
    .local v1, "foldersView":Lnet/oneplus/h2launcher/FoldersContainerView;
    if-nez v1, :cond_1

    .line 570
    const-string v3, "Launcher.Workspace"

    const-string v4, "getOpenFolder# folders view is null"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 574
    :cond_1
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FoldersContainerView;->getCurrentFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 575
    .local v0, "folder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v3

    iget-boolean v3, v3, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    if-nez v3, :cond_0

    :cond_2
    move-object v0, v2

    .line 578
    goto :goto_0
.end method

.method getOverviewModeTranslationY()I
    .locals 13

    .prologue
    .line 2263
    iget-object v11, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v11}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    .line 2264
    .local v1, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v11

    invoke-virtual {v1, v11}, Lnet/oneplus/h2launcher/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v9

    .line 2265
    .local v9, "workspacePadding":Landroid/graphics/Rect;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DeviceProfile;->getOverviewModeButtonBarHeight()I

    move-result v3

    .line 2267
    .local v3, "overviewButtonBarHeight":I
    iget v11, p0, Lnet/oneplus/h2launcher/Workspace;->mOverviewModeShrinkFactor:F

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNormalChildHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v6, v11

    .line 2269
    .local v6, "scaledHeight":I
    iget-object v11, p0, Lnet/oneplus/h2launcher/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    add-int v10, v11, v12

    .line 2270
    .local v10, "workspaceTop":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getViewportHeight()I

    move-result v11

    iget-object v12, p0, Lnet/oneplus/h2launcher/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v11, v12

    .line 2271
    .local v7, "workspaceBottom":I
    iget-object v11, p0, Lnet/oneplus/h2launcher/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v5, v11, Landroid/graphics/Rect;->top:I

    .line 2272
    .local v5, "overviewTop":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getViewportHeight()I

    move-result v11

    iget-object v12, p0, Lnet/oneplus/h2launcher/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int v2, v11, v3

    .line 2273
    .local v2, "overviewBottom":I
    sub-int v11, v7, v10

    sub-int/2addr v11, v6

    div-int/lit8 v11, v11, 0x2

    add-int v8, v10, v11

    .line 2274
    .local v8, "workspaceOffsetTopEdge":I
    sub-int v11, v2, v5

    sub-int/2addr v11, v6

    div-int/lit8 v11, v11, 0x2

    add-int v4, v5, v11

    .line 2275
    .local v4, "overviewOffsetTopEdge":I
    iget-boolean v11, p0, Lnet/oneplus/h2launcher/Workspace;->mHasNavigationBar:Z

    if-eqz v11, :cond_0

    .line 2276
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0048

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2279
    .local v0, "customizationOffset":I
    :goto_0
    neg-int v11, v8

    add-int/2addr v11, v4

    sub-int/2addr v11, v0

    return v11

    .line 2277
    .end local v0    # "customizationOffset":I
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0047

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPageAreaRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "outArea"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3124
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 3125
    .local v1, "child":Lnet/oneplus/h2launcher/CellLayout;
    if-nez v1, :cond_0

    .line 3140
    :goto_0
    return-void

    .line 3128
    :cond_0
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 3133
    .local v0, "boundingLayout":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getViewportOffsetX()I

    move-result v4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v6

    .line 3134
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getTop()I

    move-result v4

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v7

    .line 3136
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    invoke-virtual {v3, p0, v4}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v2

    .line 3137
    .local v2, "scale":F
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    aget v3, v3, v6

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    aget v4, v4, v7

    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    aget v5, v5, v6

    int-to-float v5, v5

    .line 3138
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace;->mTempXY:[I

    aget v6, v6, v7

    int-to-float v6, v6

    .line 3139
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 3137
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getPageIndexForScreenId(J)I
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 1011
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    .line 1933
    .line 1934
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1935
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1936
    const/4 v1, 0x0

    .line 1944
    :goto_0
    return-object v1

    .line 1938
    :cond_0
    new-instance v1, Lnet/oneplus/h2launcher/Workspace$8;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Workspace$8;-><init>(Lnet/oneplus/h2launcher/Workspace;)V

    .line 1944
    .local v1, "listener":Landroid/view/View$OnClickListener;
    goto :goto_0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5120
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5121
    .local v0, "settings":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getPageIndicatorMarker(I)Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;
    .locals 9
    .param p1, "pageIndex"    # I

    .prologue
    const v8, 0x7f020114

    const v7, 0x7f020113

    const/4 v6, 0x1

    .line 5102
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    .line 5103
    .local v2, "screenId":J
    const-wide/16 v4, -0xc9

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 5104
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v4

    sub-int v0, v1, v4

    .line 5105
    .local v0, "count":I
    if-le v0, v6, :cond_0

    .line 5106
    new-instance v1, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    invoke-direct {v1, v8, v7}, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;-><init>(II)V

    .line 5116
    .end local v0    # "count":I
    :goto_0
    return-object v1

    .line 5111
    :cond_0
    const-wide/16 v4, -0x12d

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 5112
    new-instance v1, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    const v4, 0x7f020100

    invoke-direct {v1, v8, v7, v4}, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;-><init>(III)V

    goto :goto_0

    .line 5116
    :cond_1
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->getPageIndicatorMarker(I)Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    move-result-object v1

    goto :goto_0
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lnet/oneplus/h2launcher/CellLayout;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4402
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v1

    .line 4403
    .local v1, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/CellLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 4404
    .local v0, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 4408
    .end local v0    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenIdForPageIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1019
    if-ltz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1020
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1022
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getScreenOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 998
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1, p1, p2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 999
    .local v0, "layout":Lnet/oneplus/h2launcher/CellLayout;
    return-object v0
.end method

.method protected getShelfScrollPageRange([IZ)V
    .locals 6
    .param p1, "range"    # [I
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5153
    const-wide/16 v4, -0x12d

    invoke-virtual {p0, v4, v5}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 5154
    .local v0, "isCustomContentExist":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 5155
    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    aput v1, p1, v2

    .line 5159
    :goto_2
    aget v1, p1, v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p1, v3

    .line 5160
    return-void

    .end local v0    # "isCustomContentExist":Z
    :cond_0
    move v0, v2

    .line 5153
    goto :goto_0

    .restart local v0    # "isCustomContentExist":Z
    :cond_1
    move v1, v3

    .line 5155
    goto :goto_1

    .line 5157
    :cond_2
    aput v2, p1, v2

    goto :goto_2
.end method

.method getShortcutAndWidgetContainerInPage(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "pageIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4435
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;>;"
    const/high16 v4, -0x80000000

    if-ne p1, v4, :cond_2

    .line 4436
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v3

    .line 4437
    .local v3, "screenCount":I
    const/4 v2, 0x0

    .local v2, "screen":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 4438
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4437
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4440
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/HotseatController;->addShortcutsAndWidgets(Ljava/util/ArrayList;)V

    .line 4449
    .end local v2    # "screen":I
    .end local v3    # "screenCount":I
    :cond_1
    :goto_1
    return-object v1

    .line 4441
    :cond_2
    const/16 v4, -0x65

    if-ne p1, v4, :cond_3

    .line 4442
    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/HotseatController;->addShortcutsAndWidgets(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 4444
    :cond_3
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 4445
    .local v0, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_1

    .line 4446
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method getState()Lnet/oneplus/h2launcher/Workspace$State;
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    return-object v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4474
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$19;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/Workspace$19;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getFirstMatch(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewLocationRelativeToSelf(Landroid/view/View;[I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "location"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3143
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/Workspace;->getLocationInWindow([I)V

    .line 3144
    aget v2, p2, v5

    .line 3145
    .local v2, "x":I
    aget v3, p2, v6

    .line 3147
    .local v3, "y":I
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3148
    aget v0, p2, v5

    .line 3149
    .local v0, "vX":I
    aget v1, p2, v6

    .line 3151
    .local v1, "vY":I
    sub-int v4, v0, v2

    aput v4, p2, v5

    .line 3152
    sub-int v4, v1, v3

    aput v4, p2, v6

    .line 3153
    return-void
.end method

.method public getWidgetForAppWidgetId(I)Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    .locals 1
    .param p1, "appWidgetId"    # I

    .prologue
    .line 4484
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$20;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/Workspace$20;-><init>(Lnet/oneplus/h2launcher/Workspace;I)V

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getFirstMatch(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    return-object v0
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4416
    .local v0, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/CellLayout;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v2

    .line 4417
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4418
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4420
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/HotseatController;->addCellLayout(Ljava/util/ArrayList;)V

    .line 4421
    return-object v0
.end method

.method public hasCustomContent()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1853
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x12d

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasExtraEmptyScreen()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 965
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v0

    .line 966
    .local v0, "nScreens":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v2

    sub-int/2addr v0, v2

    .line 967
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    const-wide/16 v4, -0xc9

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hideCustomContentIfNecessary()V
    .locals 4

    .prologue
    .line 2391
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2392
    .local v0, "hide":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2393
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->disableLayoutTransitions()V

    .line 2394
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    const-wide/16 v2, -0x12d

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->setVisibility(I)V

    .line 2395
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->enableLayoutTransitions()V

    .line 2397
    :cond_0
    return-void

    .line 2391
    .end local v0    # "hide":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initWorkspace()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 490
    iget v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDefaultPage:I

    iput v3, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    .line 491
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 492
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v2

    .line 493
    .local v2, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 494
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Workspace;->setWillNotDraw(Z)V

    .line 495
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Workspace;->setClipChildren(Z)V

    .line 496
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Workspace;->setClipToPadding(Z)V

    .line 497
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 499
    iget v3, p0, Lnet/oneplus/h2launcher/Workspace;->mOverviewModeShrinkFactor:F

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->setMinScale(F)V

    .line 500
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->setupLayoutTransition()V

    .line 502
    new-instance v3, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;-><init>(Lnet/oneplus/h2launcher/Workspace;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    .line 503
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 504
    .local v1, "display":Landroid/view/Display;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 505
    iget v3, v2, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    iput v3, p0, Lnet/oneplus/h2launcher/Workspace;->mBaseIconSize:I

    .line 507
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->updateIconSize(F)V

    .line 510
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->setWallpaperDimension()V

    .line 512
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0365

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->setEdgeGlowColor(I)V

    .line 513
    return-void
.end method

.method public insertNewWorkspaceScreen(J)J
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 617
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertNewWorkspaceScreen(JI)J
    .locals 5
    .param p1, "screenId"    # J
    .param p3, "insertIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 621
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v2, p1, p2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 627
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400e0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 630
    .local v1, "newScreen":Lnet/oneplus/h2launcher/CellLayout;
    invoke-direct {p0, v1, p3}, Lnet/oneplus/h2launcher/Workspace;->setupNewScreenAlpha(Lnet/oneplus/h2launcher/CellLayout;I)V

    .line 631
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 632
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDoubleTapEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->onDoubleTapSettingsChange(Z)V

    .line 634
    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/CellLayout;->setSoundEffectsEnabled(Z)V

    .line 635
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v2, p1, p2, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 636
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 637
    invoke-virtual {p0, v1, p3}, Lnet/oneplus/h2launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 640
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    .line 641
    .local v0, "delegate":Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 642
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->enableAccessibleDrag(ZI)V

    .line 644
    :cond_1
    return-wide p1
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(J)J
    .locals 5
    .param p1, "screenId"    # J

    .prologue
    .line 609
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 610
    .local v0, "insertIndex":I
    if-gez v0, :cond_0

    .line 611
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 613
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v2

    return-wide v2
.end method

.method public isCustomContentPageIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 5046
    const-wide/16 v0, -0x12d

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 4281
    const/4 v0, 0x1

    return v0
.end method

.method public isExtraEmptyScreen(Lnet/oneplus/h2launcher/CellLayout;)Z
    .locals 4
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 958
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v0

    const-wide/16 v2, -0xc9

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 959
    const/4 v0, 0x1

    .line 961
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinishedSwitchingState()Z
    .locals 2

    .prologue
    .line 1245
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconRearrangementMode()Z
    .locals 2

    .prologue
    .line 2259
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCustomizationMode()Z
    .locals 2

    .prologue
    .line 2255
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInNormalMode()Z
    .locals 2

    .prologue
    .line 2251
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInOverviewMode()Z
    .locals 2

    .prologue
    .line 2247
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOnCustomContentScreen()Z
    .locals 4

    .prologue
    .line 5042
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v0

    const-wide/16 v2, -0x12d

    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnOrMovingToCustomContent()Z
    .locals 1

    .prologue
    .line 1861
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3363
    if-nez p3, :cond_0

    .line 3364
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "r":Landroid/graphics/Rect;
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 3366
    .restart local p3    # "r":Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    aput p1, v3, v2

    .line 3367
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    aput p2, v3, v1

    .line 3368
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    invoke-virtual {v3, p0, v4, v1}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 3370
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 3371
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DeviceProfile;->getHotseatRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 3372
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    aget v3, v3, v2

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    aget v4, v4, v1

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3375
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 1239
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransiting()Z
    .locals 2

    .prologue
    .line 1249
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1250
    .local v0, "layoutTransition":Landroid/animation/LayoutTransition;
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method mapOverItems(ZLnet/oneplus/h2launcher/Workspace$ItemOperator;)V
    .locals 1
    .param p1, "recurse"    # Z
    .param p2, "op"    # Lnet/oneplus/h2launcher/Workspace$ItemOperator;

    .prologue
    .line 4702
    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0, p2}, Lnet/oneplus/h2launcher/Workspace;->mapOverItemsInPage(ZILnet/oneplus/h2launcher/Workspace$ItemOperator;)V

    .line 4703
    return-void
.end method

.method mapOverItemsInPage(ZILnet/oneplus/h2launcher/Workspace$ItemOperator;)V
    .locals 15
    .param p1, "recurse"    # Z
    .param p2, "pageIndex"    # I
    .param p3, "op"    # Lnet/oneplus/h2launcher/Workspace$ItemOperator;

    .prologue
    .line 4713
    .line 4714
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getShortcutAndWidgetContainerInPage(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 4715
    .local v7, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4716
    .local v5, "containerCount":I
    const/4 v6, 0x0

    .local v6, "containerIdx":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 4717
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 4719
    .local v4, "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    .line 4720
    .local v12, "itemCount":I
    const/4 v13, 0x0

    .local v13, "itemIdx":I
    :goto_1
    if-ge v13, v12, :cond_5

    .line 4721
    invoke-virtual {v4, v13}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4722
    .local v11, "item":Landroid/view/View;
    if-nez v11, :cond_1

    .line 4720
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 4725
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/ItemInfo;

    .line 4726
    .local v10, "info":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz p1, :cond_4

    instance-of v14, v10, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v14, :cond_4

    instance-of v14, v11, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v14, :cond_4

    move-object v8, v11

    .line 4727
    check-cast v8, Lnet/oneplus/h2launcher/FolderIcon;

    .line 4728
    .local v8, "folder":Lnet/oneplus/h2launcher/FolderIcon;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v14

    invoke-virtual {v14}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v9

    .line 4730
    .local v9, "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4731
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "childIdx":I
    :goto_2
    if-ge v3, v2, :cond_0

    .line 4732
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4733
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    check-cast v10, Lnet/oneplus/h2launcher/ItemInfo;

    .line 4734
    .restart local v10    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, p3

    invoke-interface {v0, v10, v1, v8}, Lnet/oneplus/h2launcher/Workspace$ItemOperator;->evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 4745
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "childIdx":I
    .end local v4    # "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    .end local v8    # "folder":Lnet/oneplus/h2launcher/FolderIcon;
    .end local v9    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v11    # "item":Landroid/view/View;
    .end local v12    # "itemCount":I
    .end local v13    # "itemIdx":I
    :cond_2
    :goto_3
    return-void

    .line 4731
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childCount":I
    .restart local v3    # "childIdx":I
    .restart local v4    # "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    .restart local v8    # "folder":Lnet/oneplus/h2launcher/FolderIcon;
    .restart local v9    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v11    # "item":Landroid/view/View;
    .restart local v12    # "itemCount":I
    .restart local v13    # "itemIdx":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4739
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "childIdx":I
    .end local v8    # "folder":Lnet/oneplus/h2launcher/FolderIcon;
    .end local v9    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v14}, Lnet/oneplus/h2launcher/Workspace$ItemOperator;->evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_3

    .line 4716
    .end local v10    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v11    # "item":Landroid/view/View;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    .line 3395
    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 3396
    const/4 v0, 0x1

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 3397
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F
    .param p3, "cachedInverseMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3358
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 3359
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 3360
    return-void
.end method

.method mapPointFromSelfToHotseatLayout(Lnet/oneplus/h2launcher/Hotseat;[F)V
    .locals 5
    .param p1, "hotseat"    # Lnet/oneplus/h2launcher/Hotseat;
    .param p2, "xy"    # [F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3379
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    aget v1, p2, v4

    float-to-int v1, v1

    aput v1, v0, v4

    .line 3380
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    aget v1, p2, v3

    float-to-int v1, v1

    aput v1, v0, v3

    .line 3381
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    invoke-virtual {v0, p0, v1, v3}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 3382
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    .line 3384
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    aget v0, v0, v4

    int-to-float v0, v0

    aput v0, p2, v4

    .line 3385
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTempPt:[I

    aget v0, v0, v3

    int-to-float v0, v0

    aput v0, p2, v3

    .line 3386
    return-void
.end method

.method protected markCellsAsOccupiedForView()V
    .locals 4

    .prologue
    .line 5235
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v3, :cond_1

    .line 5236
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v0, v3, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 5239
    .local v0, "cell":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5240
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 5241
    .local v2, "shortcutAndWidgetContainer":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v3, :cond_0

    .line 5242
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 5243
    .local v1, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v1, :cond_0

    .line 5244
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 5248
    .end local v1    # "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v2    # "shortcutAndWidgetContainer":Landroid/view/ViewParent;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    .line 5250
    .end local v0    # "cell":Landroid/view/View;
    :cond_1
    return-void
.end method

.method moveToAlternateScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 5077
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isOnCustomContentScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5078
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 5082
    :goto_0
    return-void

    .line 5080
    :cond_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->moveToCustomContentScreen(Z)V

    goto :goto_0
.end method

.method moveToCustomContentScreen(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 5085
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5086
    const-wide/16 v2, -0x12d

    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 5087
    .local v0, "ccIndex":I
    if-eqz p1, :cond_1

    .line 5088
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 5092
    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5093
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 5094
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 5097
    .end local v0    # "ccIndex":I
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->exitWidgetResizeMode()V

    .line 5098
    return-void

    .line 5090
    .restart local v0    # "ccIndex":I
    :cond_1
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method moveToDefaultScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 5073
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0, p1}, Lnet/oneplus/h2launcher/Workspace;->moveToScreen(IZ)V

    .line 5074
    return-void
.end method

.method moveToDefaultScreenIfNecessary()V
    .locals 4

    .prologue
    .line 5064
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v0

    const-wide/16 v2, -0x12d

    .line 5065
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5067
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    .line 5068
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragLayer;->setBackgroundAlpha(F)V

    .line 5070
    :cond_0
    return-void
.end method

.method moveToScreen(IZ)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 5050
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5051
    if-eqz p2, :cond_2

    .line 5052
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 5057
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5058
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 5059
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5061
    :cond_1
    return-void

    .line 5054
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageSwitchListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1506
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->notifyPageSwitchListener()V

    .line 1508
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentShowing:Z

    if-nez v0, :cond_1

    .line 1509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentShowing:Z

    .line 1510
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;->onShow(Z)V

    .line 1519
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentShowing:Z

    if-eqz v0, :cond_0

    .line 1514
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentShowing:Z

    .line 1515
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;->onHide(Z)V

    goto :goto_0
.end method

.method public numCustomPages()I
    .locals 1

    .prologue
    .line 1857
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1955
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->onAttachedToWindow()V

    .line 1956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsAttachedToWindow:Z

    .line 1957
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1958
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->computeScroll()V

    .line 1959
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    if-eqz v0, :cond_0

    .line 1960
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1961
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 546
    instance-of v1, p2, Lnet/oneplus/h2launcher/CellLayout;

    if-nez v1, :cond_0

    .line 547
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 549
    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 550
    .local v0, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 551
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->setClickable(Z)V

    .line 552
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->setImportantForAccessibility(I)V

    .line 553
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/PagedView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 554
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1964
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->onDetachedFromWindow()V

    .line 1965
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsAttachedToWindow:Z

    .line 1967
    return-void
.end method

.method public onDoubleTapSettingsChange(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "childView":Landroid/view/View;
    instance-of v2, v0, Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;

    if-eqz v2, :cond_0

    .line 196
    check-cast v0, Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;

    .end local v0    # "childView":Landroid/view/View;
    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;->onDoubleTapSettingsChange(Z)V

    .line 193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    return-void
.end method

.method public onDragEnd()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    sget-boolean v0, Lnet/oneplus/h2launcher/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "onDragEnd"

    invoke-direct {p0, v0, v2, v2}, Lnet/oneplus/h2launcher/Workspace;->enfoceDragParity(Ljava/lang/String;II)V

    .line 471
    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    if-nez v0, :cond_1

    .line 472
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragSourceInternal:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 475
    :cond_1
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Workspace;->mIsDragOccuring:Z

    .line 476
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 477
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Launcher;->unlockScreenOrientation(Z)V

    .line 480
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragSourceInternal:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 483
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->onInteractionEnd()V

    .line 484
    return-void

    :cond_2
    move v0, v2

    .line 472
    goto :goto_0
.end method

.method public onDragEnter(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 4
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3157
    sget-boolean v1, Lnet/oneplus/h2launcher/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v1, :cond_0

    .line 3158
    const-string v1, "onDragEnter"

    invoke-direct {p0, v1, v3, v3}, Lnet/oneplus/h2launcher/Workspace;->enfoceDragParity(Ljava/lang/String;II)V

    .line 3161
    :cond_0
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3162
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 3164
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDropToLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 3165
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentDropLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 3166
    .local v0, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDropLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3167
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDragOverlappingLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3169
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3170
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragLayer;->showPageHints()V

    .line 3172
    :cond_1
    return-void
.end method

.method public onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 5
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3215
    sget-boolean v0, Lnet/oneplus/h2launcher/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_0

    .line 3216
    const-string v0, "onDragExit"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->enfoceDragParity(Ljava/lang/String;II)V

    .line 3221
    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_3

    .line 3222
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3225
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDropToLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 3233
    :goto_0
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    if-ne v0, v3, :cond_4

    .line 3234
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3240
    :cond_1
    :goto_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->onResetScrollArea()V

    .line 3241
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDropLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3242
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDragOverlappingLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3244
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mSpringLoadedDragController:Lnet/oneplus/h2launcher/SpringLoadedDragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/SpringLoadedDragController;->cancel()V

    .line 3246
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragLayer;->hidePageHints()V

    .line 3247
    return-void

    .line 3227
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverlappingLayout:Lnet/oneplus/h2launcher/CellLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDropToLayout:Lnet/oneplus/h2launcher/CellLayout;

    goto :goto_0

    .line 3230
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDropToLayout:Lnet/oneplus/h2launcher/CellLayout;

    goto :goto_0

    .line 3235
    :cond_4
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3236
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/Workspace;->mAddToExistingFolderOnDrop:Z

    goto :goto_1
.end method

.method public onDragOver(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 42
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 3474
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/oneplus/h2launcher/Workspace;->mInScrollArea:Z

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3604
    :cond_0
    :goto_0
    return-void

    .line 3476
    :cond_1
    new-instance v39, Landroid/graphics/Rect;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Rect;-><init>()V

    .line 3477
    .local v39, "r":Landroid/graphics/Rect;
    const/16 v37, 0x0

    .line 3478
    .local v37, "layout":Lnet/oneplus/h2launcher/CellLayout;
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3479
    .local v36, "item":Lnet/oneplus/h2launcher/ItemInfo;
    if-nez v36, :cond_2

    .line 3480
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3481
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "DragObject has null info"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3487
    :cond_2
    move-object/from16 v0, v36

    iget v3, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    if-ltz v3, :cond_3

    move-object/from16 v0, v36

    iget v3, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    if-gez v3, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Improper spans found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3488
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    .line 3490
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-nez v3, :cond_b

    const/16 v18, 0x0

    .line 3492
    .local v18, "child":Landroid/view/View;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3493
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/Workspace;->isExternalDragWidget(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3494
    move-object/from16 v0, p1

    iget v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v4, v1}, Lnet/oneplus/h2launcher/Workspace;->isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3495
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v37

    .line 3498
    :cond_5
    if-nez v37, :cond_6

    .line 3499
    move-object/from16 v0, p1

    iget-object v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v0, p1

    iget v4, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v7, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    int-to-float v7, v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v7, v8}, Lnet/oneplus/h2launcher/Workspace;->findMatchingPageForDragOver(Lnet/oneplus/h2launcher/DragView;FFZ)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v37

    .line 3501
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, v37

    if-eq v0, v3, :cond_7

    .line 3502
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDropLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3503
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDragOverlappingLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3505
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v4, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v3, v4, :cond_c

    const/16 v35, 0x1

    .line 3506
    .local v35, "isInSpringLoadedMode":Z
    :goto_2
    if-eqz v35, :cond_7

    .line 3507
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3508
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mSpringLoadedDragController:Lnet/oneplus/h2launcher/SpringLoadedDragController;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/SpringLoadedDragController;->cancel()V

    .line 3531
    .end local v35    # "isInSpringLoadedMode":Z
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v3, :cond_0

    .line 3533
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3534
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnet/oneplus/h2launcher/Workspace;->mapPointFromSelfToHotseatLayout(Lnet/oneplus/h2launcher/Hotseat;[F)V

    .line 3539
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3541
    .local v34, "info":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v36

    iget v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 3542
    .local v5, "minSpanX":I
    move-object/from16 v0, v36

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 3543
    .local v6, "minSpanY":I
    move-object/from16 v0, v36

    iget v3, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    if-lez v3, :cond_8

    move-object/from16 v0, v36

    iget v3, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    if-lez v3, :cond_8

    .line 3544
    move-object/from16 v0, v36

    iget v5, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    .line 3545
    move-object/from16 v0, v36

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    .line 3548
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v4, v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lnet/oneplus/h2launcher/Workspace;->findNearestArea(IIIILnet/oneplus/h2launcher/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 3551
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v40, v3, v4

    .line 3552
    .local v40, "reorderX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v41, v3, v4

    .line 3554
    .local v41, "reorderY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDropOverCell(II)V

    .line 3556
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    invoke-virtual {v3, v4, v7, v8}, Lnet/oneplus/h2launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3559
    .local v11, "targetCellDistance":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v3, v4, v7}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    .line 3562
    .local v12, "dragOverView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->accessibleDrag:Z

    move-object/from16 v7, p0

    move-object/from16 v8, v34

    invoke-direct/range {v7 .. v13}, Lnet/oneplus/h2launcher/Workspace;->manageFolderFeedback(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;[IFLandroid/view/View;Z)V

    .line 3565
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v14, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v15, v3

    move-object/from16 v0, v36

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v16, v0

    move-object/from16 v0, v36

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v13 .. v19}, Lnet/oneplus/h2launcher/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v38

    .line 3569
    .local v38, "nearestDropOccupied":Z
    if-nez v38, :cond_12

    .line 3570
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v22, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v23, v3, v4

    move-object/from16 v0, v36

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v24, v0

    move-object/from16 v0, v36

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    .line 3573
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v28

    .line 3570
    invoke-virtual/range {v17 .. v28}, Lnet/oneplus/h2launcher/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 3597
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    if-nez v38, :cond_0

    .line 3599
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v3, :cond_0

    .line 3600
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/CellLayout;->revertTempState()V

    goto/16 :goto_0

    .line 3490
    .end local v5    # "minSpanX":I
    .end local v6    # "minSpanY":I
    .end local v11    # "targetCellDistance":F
    .end local v12    # "dragOverView":Landroid/view/View;
    .end local v18    # "child":Landroid/view/View;
    .end local v34    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v38    # "nearestDropOccupied":Z
    .end local v40    # "reorderX":I
    .end local v41    # "reorderY":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v0, v3, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v18, v0

    goto/16 :goto_1

    .line 3505
    .restart local v18    # "child":Landroid/view/View;
    :cond_c
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 3510
    .restart local v35    # "isInSpringLoadedMode":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mSpringLoadedDragController:Lnet/oneplus/h2launcher/SpringLoadedDragController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/SpringLoadedDragController;->setAlarm(Lnet/oneplus/h2launcher/CellLayout;)V

    goto/16 :goto_3

    .line 3516
    .end local v35    # "isInSpringLoadedMode":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p1}, Lnet/oneplus/h2launcher/Workspace;->isDragWidget(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3517
    move-object/from16 v0, p1

    iget v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v4, v1}, Lnet/oneplus/h2launcher/Workspace;->isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3518
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v37

    .line 3521
    :cond_f
    if-nez v37, :cond_10

    .line 3522
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentDropLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v37

    .line 3524
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, v37

    if-eq v0, v3, :cond_7

    .line 3525
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDropLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3526
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDragOverlappingLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    goto/16 :goto_3

    .line 3536
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7}, Lnet/oneplus/h2launcher/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_4

    .line 3574
    .restart local v5    # "minSpanX":I
    .restart local v6    # "minSpanY":I
    .restart local v11    # "targetCellDistance":F
    .restart local v12    # "dragOverView":Landroid/view/View;
    .restart local v34    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v38    # "nearestDropOccupied":Z
    .restart local v40    # "reorderX":I
    .restart local v41    # "reorderY":I
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    .line 3575
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Alarm;->alarmPending()Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLastReorderX:I

    move/from16 v0, v40

    if-ne v3, v0, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/Workspace;->mLastReorderY:I

    move/from16 v0, v41

    if-eq v3, v0, :cond_9

    .line 3578
    :cond_14
    move-object/from16 v0, p1

    iget v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragOverReorderX:I

    sub-int v32, v3, v4

    .local v32, "dx":I
    move-object/from16 v0, p1

    iget v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragOverReorderY:I

    sub-int v33, v3, v4

    .line 3579
    .local v33, "dy":I
    mul-int v3, v32, v32

    mul-int v4, v33, v33

    add-int/2addr v3, v4

    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    .line 3580
    .local v30, "dis":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v3, v30, v8

    if-lez v3, :cond_15

    .line 3581
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v28, v0

    .line 3582
    .local v28, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    move-object/from16 v0, v36

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v24, v0

    move-object/from16 v0, v36

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v26, v18

    invoke-virtual/range {v19 .. v29}, Lnet/oneplus/h2launcher/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    .line 3588
    new-instance v2, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, v36

    iget v7, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move-object/from16 v0, v36

    iget v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v3, p0

    move-object/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;-><init>(Lnet/oneplus/h2launcher/Workspace;[FIIIILnet/oneplus/h2launcher/DragView;Landroid/view/View;)V

    .line 3590
    .local v2, "listener":Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/Alarm;->setOnAlarmListener(Lnet/oneplus/h2launcher/OnAlarmListener;)V

    .line 3591
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/Workspace;->mReorderAlarm:Lnet/oneplus/h2launcher/Alarm;

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Lnet/oneplus/h2launcher/Alarm;->setAlarm(J)V

    .line 3593
    .end local v2    # "listener":Lnet/oneplus/h2launcher/Workspace$ReorderAlarmListener;
    .end local v28    # "resultSpan":[I
    :cond_15
    move-object/from16 v0, p1

    iget v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->x:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragOverReorderX:I

    .line 3594
    move-object/from16 v0, p1

    iget v3, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->y:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/Workspace;->mDragOverReorderY:I

    goto/16 :goto_5
.end method

.method public onDragStart(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 440
    sget-boolean v0, Lnet/oneplus/h2launcher/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "onDragStart"

    invoke-direct {p0, v0, v1, v1}, Lnet/oneplus/h2launcher/Workspace;->enfoceDragParity(Ljava/lang/String;II)V

    .line 444
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsDragOccuring:Z

    .line 445
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 446
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->lockScreenOrientation()V

    .line 447
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->onInteractionBegin()V

    .line 449
    invoke-static {}, Lnet/oneplus/h2launcher/InstallShortcutReceiver;->enableInstallQueue()V

    .line 451
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mAddNewPageOnDrag:Z

    if-eqz v0, :cond_1

    .line 452
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 453
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->addExtraEmptyScreenOnDrag()V

    .line 455
    :cond_1
    return-void
.end method

.method public onDragStartedWithItem(Lnet/oneplus/h2launcher/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .param p1, "info"    # Lnet/oneplus/h2launcher/PendingAddItemInfo;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "clipAlpha"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2191
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/Workspace;->estimateItemSize(Lnet/oneplus/h2launcher/ItemInfo;Z)[I

    move-result-object v6

    .line 2194
    .local v6, "size":[I
    const/4 v2, 0x2

    aget v3, v6, v0

    const/4 v0, 0x1

    aget v4, v6, v0

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/Workspace;->createDragOutline(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2195
    return-void
.end method

.method public onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 72
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 2908
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    .line 2909
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/oneplus/h2launcher/Workspace;->mDropToLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 2912
    .local v9, "dropTargetLayout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v9, :cond_0

    .line 2913
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6, v9}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2914
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lnet/oneplus/h2launcher/Workspace;->mapPointFromSelfToHotseatLayout(Lnet/oneplus/h2launcher/Hotseat;[F)V

    .line 2920
    :cond_0
    :goto_0
    const/16 v71, -0x1

    .line 2921
    .local v71, "snapScreen":I
    const/16 v69, 0x0

    .line 2922
    .local v69, "resizeOnDrop":Z
    move-object/from16 v0, p1

    iget-object v6, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragSource:Lnet/oneplus/h2launcher/DragSource;

    move-object/from16 v0, p0

    if-eq v6, v0, :cond_3

    .line 2923
    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v10, 0x0

    aget v8, v8, v10

    float-to-int v8, v8

    aput v8, v7, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v10, 0x1

    aget v8, v8, v10

    float-to-int v8, v8

    aput v8, v7, v6

    .line 2925
    .local v7, "touchXY":[I
    move-object/from16 v0, p1

    iget-object v8, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Lnet/oneplus/h2launcher/Workspace;->onDropExternal([ILjava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;ZLnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 3118
    .end local v7    # "touchXY":[I
    :cond_1
    :goto_1
    return-void

    .line 2916
    .end local v69    # "resizeOnDrop":Z
    .end local v71    # "snapScreen":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6, v8}, Lnet/oneplus/h2launcher/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_0

    .line 2926
    .restart local v69    # "resizeOnDrop":Z
    .restart local v71    # "snapScreen":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v6, :cond_1

    .line 2927
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v0, v6, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v17, v0

    .line 2929
    .local v17, "cell":Landroid/view/View;
    const/16 v70, 0x0

    .line 2930
    .local v70, "resizeRunnable":Ljava/lang/Runnable;
    if-eqz v9, :cond_c

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->cancelled:Z

    if-nez v6, :cond_c

    .line 2932
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v6

    if-eq v6, v9, :cond_e

    const/16 v60, 0x1

    .line 2933
    .local v60, "hasMovedLayouts":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6, v9}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v59

    .line 2934
    .local v59, "hasMovedIntoHotseat":Z
    if-eqz v59, :cond_f

    const-wide/16 v18, -0x65

    .line 2937
    .local v18, "container":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    if-gez v6, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-wide v0, v6, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v40, v0

    .line 2939
    .local v40, "screenId":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v6, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget v13, v6, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->spanX:I

    .line 2940
    .local v13, "spanX":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget v14, v6, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->spanY:I

    .line 2944
    .local v14, "spanY":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v11, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-object v15, v9

    invoke-virtual/range {v10 .. v16}, Lnet/oneplus/h2launcher/Workspace;->findNearestArea(IIIILnet/oneplus/h2launcher/CellLayout;[I)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 2946
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v10, 0x1

    aget v8, v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    invoke-virtual {v9, v6, v8, v10}, Lnet/oneplus/h2launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v22

    .line 2950
    .local v22, "distance":F
    new-instance v25, Lnet/oneplus/h2launcher/Workspace$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/Workspace$9;-><init>(Lnet/oneplus/h2launcher/Workspace;)V

    .line 2961
    .local v25, "postAnimation":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lnet/oneplus/h2launcher/Workspace;->mInScrollArea:Z

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v24, v0

    move-object/from16 v16, p0

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v25}, Lnet/oneplus/h2launcher/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLnet/oneplus/h2launcher/CellLayout;[IFZLnet/oneplus/h2launcher/DragView;Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2966
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v29, v0

    const/16 v32, 0x0

    move-object/from16 v26, p0

    move-object/from16 v27, v17

    move-object/from16 v28, v9

    move/from16 v30, v22

    move-object/from16 v31, p1

    invoke-virtual/range {v26 .. v32}, Lnet/oneplus/h2launcher/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lnet/oneplus/h2launcher/CellLayout;[IFLnet/oneplus/h2launcher/DropTarget$DragObject;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2973
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Lnet/oneplus/h2launcher/ItemInfo;

    .line 2974
    .local v64, "item":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v64

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v29, v0

    .line 2975
    .local v29, "minSpanX":I
    move-object/from16 v0, v64

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v30, v0

    .line 2976
    .local v30, "minSpanY":I
    move-object/from16 v0, v64

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    if-lez v6, :cond_5

    move-object/from16 v0, v64

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    if-lez v6, :cond_5

    .line 2977
    move-object/from16 v0, v64

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    move/from16 v29, v0

    .line 2978
    move-object/from16 v0, v64

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    move/from16 v30, v0

    .line 2981
    :cond_5
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v35, v0

    .line 2982
    .local v35, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v0, v6

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v0, v6

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    move-object/from16 v34, v0

    const/16 v36, 0x2

    move-object/from16 v26, v9

    move/from16 v31, v13

    move/from16 v32, v14

    move-object/from16 v33, v17

    invoke-virtual/range {v26 .. v36}, Lnet/oneplus/h2launcher/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    .line 2986
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    if-ltz v6, :cond_13

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    if-ltz v6, :cond_13

    const/16 v58, 0x1

    .line 2989
    .local v58, "foundCell":Z
    :goto_7
    if-eqz v58, :cond_7

    move-object/from16 v0, v17

    instance-of v6, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    aget v6, v35, v6

    move-object/from16 v0, v64

    iget v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    if-ne v6, v8, :cond_6

    const/4 v6, 0x1

    aget v6, v35, v6

    move-object/from16 v0, v64

    iget v8, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    if-eq v6, v8, :cond_7

    .line 2991
    :cond_6
    const/16 v69, 0x1

    .line 2992
    const/4 v6, 0x0

    aget v6, v35, v6

    move-object/from16 v0, v64

    iput v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 2993
    const/4 v6, 0x1

    aget v6, v35, v6

    move-object/from16 v0, v64

    iput v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move-object/from16 v55, v17

    .line 2994
    check-cast v55, Landroid/appwidget/AppWidgetHostView;

    .line 2995
    .local v55, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v8, 0x0

    aget v8, v35, v8

    const/4 v10, 0x1

    aget v10, v35, v10

    move-object/from16 v0, v55

    invoke-static {v0, v6, v8, v10}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/Launcher;II)V

    .line 2999
    .end local v55    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v10

    cmp-long v6, v10, v40

    if-eqz v6, :cond_8

    if-nez v59, :cond_8

    .line 3000
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v71

    .line 3001
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 3004
    :cond_8
    if-eqz v58, :cond_15

    .line 3005
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3006
    .local v62, "info":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz v60, :cond_a

    .line 3008
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v68

    .line 3009
    .local v68, "parentCell":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v68, :cond_14

    .line 3010
    move-object/from16 v0, v68

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3014
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v42, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v43, v6, v8

    move-object/from16 v0, v62

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v44, v0

    move-object/from16 v0, v62

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v45, v0

    move-object/from16 v36, p0

    move-object/from16 v37, v17

    move-wide/from16 v38, v18

    invoke-virtual/range {v36 .. v45}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 3019
    .end local v68    # "parentCell":Lnet/oneplus/h2launcher/CellLayout;
    :cond_a
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v66

    check-cast v66, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 3020
    .local v66, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    move-object/from16 v0, v66

    iput v6, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v66

    iput v6, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 3021
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    move-object/from16 v0, v66

    iput v6, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v66

    iput v6, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 3022
    move-object/from16 v0, v64

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move-object/from16 v0, v66

    iput v6, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 3023
    move-object/from16 v0, v64

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move-object/from16 v0, v66

    iput v6, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 3024
    const/4 v6, 0x1

    move-object/from16 v0, v66

    iput-boolean v6, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3026
    const-wide/16 v10, -0x65

    cmp-long v6, v18, v10

    if-eqz v6, :cond_b

    move-object/from16 v0, v17

    instance-of v6, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    if-eqz v6, :cond_b

    .line 3028
    move-object/from16 v56, v9

    .local v56, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    move-object/from16 v61, v17

    .line 3032
    check-cast v61, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    .line 3033
    .local v61, "hostView":Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    invoke-virtual/range {v61 .. v61}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v67

    .line 3034
    .local v67, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v67, :cond_b

    move-object/from16 v0, v67

    iget v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v6, :cond_b

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v6, :cond_b

    .line 3036
    new-instance v54, Lnet/oneplus/h2launcher/Workspace$10;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    move-object/from16 v2, v62

    move-object/from16 v3, v61

    move-object/from16 v4, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/Workspace$10;-><init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3042
    .local v54, "addResizeFrame":Ljava/lang/Runnable;
    new-instance v70, Lnet/oneplus/h2launcher/Workspace$11;

    .end local v70    # "resizeRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v70

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace$11;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Runnable;)V

    .line 3054
    .end local v54    # "addResizeFrame":Ljava/lang/Runnable;
    .end local v56    # "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v61    # "hostView":Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    .end local v67    # "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v70    # "resizeRunnable":Ljava/lang/Runnable;
    :cond_b
    const-string v6, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[onDrop] - move "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v64

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", to container = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", screenId = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v40

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", cellX = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v66

    iget v10, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", cellY = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v66

    iget v10, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v36, v0

    move-object/from16 v0, v66

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    move/from16 v42, v0

    move-object/from16 v0, v66

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    move/from16 v43, v0

    move-object/from16 v0, v64

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    move/from16 v44, v0

    move-object/from16 v0, v64

    iget v0, v0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    move/from16 v45, v0

    move-object/from16 v37, v62

    move-wide/from16 v38, v18

    invoke-static/range {v36 .. v45}, Lnet/oneplus/h2launcher/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJIIII)V

    .line 3068
    .end local v13    # "spanX":I
    .end local v14    # "spanY":I
    .end local v18    # "container":J
    .end local v22    # "distance":F
    .end local v25    # "postAnimation":Ljava/lang/Runnable;
    .end local v29    # "minSpanX":I
    .end local v30    # "minSpanY":I
    .end local v35    # "resultSpan":[I
    .end local v40    # "screenId":J
    .end local v58    # "foundCell":Z
    .end local v59    # "hasMovedIntoHotseat":Z
    .end local v60    # "hasMovedLayouts":Z
    .end local v62    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v64    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v66    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_c
    :goto_8
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v44

    check-cast v44, Lnet/oneplus/h2launcher/CellLayout;

    .line 3069
    .local v44, "parent":Lnet/oneplus/h2launcher/CellLayout;
    move-object/from16 v57, v70

    .line 3072
    .local v57, "finalResizeRunnable":Ljava/lang/Runnable;
    new-instance v46, Lnet/oneplus/h2launcher/Workspace$12;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Workspace$12;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Runnable;)V

    .line 3090
    .local v46, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lnet/oneplus/h2launcher/Workspace;->mAnimatingViewIntoPlace:Z

    .line 3091
    move-object/from16 v0, p1

    iget-object v6, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/DragView;->hasDrawn()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 3092
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lnet/oneplus/h2launcher/ItemInfo;

    .line 3093
    .local v43, "info":Lnet/oneplus/h2launcher/ItemInfo;
    move-object/from16 v0, v43

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_d

    move-object/from16 v0, v43

    iget v6, v0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_16

    :cond_d
    const/16 v63, 0x1

    .line 3095
    .local v63, "isWidget":Z
    :goto_9
    if-eqz v63, :cond_18

    .line 3096
    if-eqz v69, :cond_17

    const/16 v47, 0x2

    .line 3098
    .local v47, "animationType":I
    :goto_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v45, v0

    const/16 v49, 0x0

    move-object/from16 v42, p0

    move-object/from16 v48, v17

    invoke-virtual/range {v42 .. v49}, Lnet/oneplus/h2launcher/Workspace;->animateWidgetDrop(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 3116
    .end local v43    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v47    # "animationType":I
    .end local v63    # "isWidget":Z
    :goto_b
    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->onDropChild(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2932
    .end local v44    # "parent":Lnet/oneplus/h2launcher/CellLayout;
    .end local v46    # "onCompleteRunnable":Ljava/lang/Runnable;
    .end local v57    # "finalResizeRunnable":Ljava/lang/Runnable;
    :cond_e
    const/16 v60, 0x0

    goto/16 :goto_2

    .line 2934
    .restart local v59    # "hasMovedIntoHotseat":Z
    .restart local v60    # "hasMovedLayouts":Z
    :cond_f
    const-wide/16 v18, -0x64

    goto/16 :goto_3

    .line 2938
    .restart local v18    # "container":J
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v40

    goto/16 :goto_4

    .line 2939
    .restart local v40    # "screenId":J
    :cond_11
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 2940
    .restart local v13    # "spanX":I
    :cond_12
    const/4 v14, 0x1

    goto/16 :goto_6

    .line 2986
    .restart local v14    # "spanY":I
    .restart local v22    # "distance":F
    .restart local v25    # "postAnimation":Ljava/lang/Runnable;
    .restart local v29    # "minSpanX":I
    .restart local v30    # "minSpanY":I
    .restart local v35    # "resultSpan":[I
    .restart local v64    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_13
    const/16 v58, 0x0

    goto/16 :goto_7

    .line 3011
    .restart local v58    # "foundCell":Z
    .restart local v62    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v68    # "parentCell":Lnet/oneplus/h2launcher/CellLayout;
    :cond_14
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3012
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v8, "mDragInfo.cell has null parent"

    invoke-direct {v6, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3060
    .end local v62    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v68    # "parentCell":Lnet/oneplus/h2launcher/CellLayout;
    :cond_15
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v66

    check-cast v66, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 3061
    .restart local v66    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    move-object/from16 v0, v66

    iget v10, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    aput v10, v6, v8

    .line 3062
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    move-object/from16 v0, v66

    iget v10, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    aput v10, v6, v8

    .line 3063
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v65

    check-cast v65, Lnet/oneplus/h2launcher/CellLayout;

    .line 3064
    .local v65, "layout":Lnet/oneplus/h2launcher/CellLayout;
    move-object/from16 v0, v65

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 3093
    .end local v13    # "spanX":I
    .end local v14    # "spanY":I
    .end local v18    # "container":J
    .end local v22    # "distance":F
    .end local v25    # "postAnimation":Ljava/lang/Runnable;
    .end local v29    # "minSpanX":I
    .end local v30    # "minSpanY":I
    .end local v35    # "resultSpan":[I
    .end local v40    # "screenId":J
    .end local v58    # "foundCell":Z
    .end local v59    # "hasMovedIntoHotseat":Z
    .end local v60    # "hasMovedLayouts":Z
    .end local v64    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v65    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v66    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .restart local v43    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .restart local v44    # "parent":Lnet/oneplus/h2launcher/CellLayout;
    .restart local v46    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v57    # "finalResizeRunnable":Ljava/lang/Runnable;
    :cond_16
    const/16 v63, 0x0

    goto :goto_9

    .line 3096
    .restart local v63    # "isWidget":Z
    :cond_17
    const/16 v47, 0x0

    goto :goto_a

    .line 3101
    :cond_18
    if-gez v71, :cond_19

    const/16 v51, -0x1

    .line 3104
    .local v51, "duration":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v48

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    move-object/from16 v49, v0

    move-object/from16 v50, v17

    move-object/from16 v52, v46

    move-object/from16 v53, p0

    invoke-virtual/range {v48 .. v53}, Lnet/oneplus/h2launcher/DragLayer;->animateViewIntoPosition(Lnet/oneplus/h2launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_b

    .line 3101
    .end local v51    # "duration":I
    :cond_19
    const/16 v51, 0x12c

    goto :goto_c

    .line 3109
    .end local v43    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v63    # "isWidget":Z
    :cond_1a
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-boolean v6, v0, Lnet/oneplus/h2launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 3110
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3113
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v8, 0x1

    const/16 v10, 0x12c

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v10, v11}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    goto/16 :goto_b
.end method

.method public onDropCompleted(Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 4104
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferDropAfterUninstall:Z

    if-eqz v1, :cond_1

    .line 4105
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/Workspace$16;-><init>(Lnet/oneplus/h2launcher/Workspace;Landroid/view/View;Lnet/oneplus/h2launcher/DropTarget$DragObject;ZZ)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    .line 4141
    :cond_0
    :goto_0
    return-void

    .line 4114
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    const/4 v6, 0x1

    .line 4116
    .local v6, "beingCalledAfterUninstall":Z
    :goto_1
    iget-boolean v1, p2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->remove:Z

    if-eqz v1, :cond_7

    if-eqz p4, :cond_7

    if-eqz v6, :cond_2

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mUninstallSuccessful:Z

    if-eqz v1, :cond_7

    .line 4118
    :cond_2
    if-eq p1, p0, :cond_3

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v1, :cond_3

    .line 4119
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 4132
    :cond_3
    :goto_2
    iget-boolean v1, p2, Lnet/oneplus/h2launcher/DropTarget$DragObject;->cancelled:Z

    if-nez v1, :cond_4

    if-eqz v6, :cond_5

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mUninstallSuccessful:Z

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 4134
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4136
    :cond_5
    iput-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 4138
    instance-of v0, p1, Lnet/oneplus/h2launcher/EditDropTarget;

    if-nez v0, :cond_0

    instance-of v0, p1, Lnet/oneplus/h2launcher/UninstallDropTarget;

    if-nez v0, :cond_0

    .line 4139
    iput-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    goto :goto_0

    .end local v6    # "beingCalledAfterUninstall":Z
    :cond_6
    move v6, v0

    .line 4114
    goto :goto_1

    .line 4121
    .restart local v6    # "beingCalledAfterUninstall":Z
    :cond_7
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v1, :cond_3

    .line 4122
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->container:J

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-wide v4, v4, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/oneplus/h2launcher/Launcher;->getCellLayout(JJ)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v7

    .line 4124
    .local v7, "cellLayout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v7, :cond_9

    .line 4125
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v7, v1}, Lnet/oneplus/h2launcher/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 4130
    :cond_8
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragMode()V

    goto :goto_2

    .line 4126
    :cond_9
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid state: cellLayout == null in Workspace#onDropCompleted. Please file a bug. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onEndReordering()V
    .locals 6

    .prologue
    .line 2222
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->onEndReordering()V

    .line 2224
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2244
    :cond_0
    :goto_0
    return-void

    .line 2229
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2230
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v1

    .line 2231
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2232
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 2233
    .local v0, "cl":Lnet/oneplus/h2launcher/CellLayout;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2236
    .end local v0    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2239
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->enableLayoutTransitions()V

    .line 2240
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedRemoveExtraEmptyScreenRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 2241
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedRemoveExtraEmptyScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2242
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedRemoveExtraEmptyScreenRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onEnterScrollArea(III)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4346
    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lnet/oneplus/h2launcher/DeviceProfile;->isLandscape:Z

    if-nez v6, :cond_1

    move v0, v4

    .line 4347
    .local v0, "isPortrait":Z
    :goto_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v6

    invoke-virtual {v6, p1, p2, v0}, Lnet/oneplus/h2launcher/HotseatController;->getHitRect(IIZ)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4375
    :cond_0
    :goto_1
    return v5

    .end local v0    # "isPortrait":Z
    :cond_1
    move v0, v5

    .line 4346
    goto :goto_0

    .line 4351
    .restart local v0    # "isPortrait":Z
    :cond_2
    const/4 v3, 0x0

    .line 4352
    .local v3, "result":Z
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v6

    if-nez v6, :cond_4

    .line 4353
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/Workspace;->mInScrollArea:Z

    .line 4355
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v6

    if-nez p3, :cond_3

    const/4 v4, -0x1

    :cond_3
    add-int v2, v6, v4

    .line 4358
    .local v2, "page":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDropLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 4360
    if-ltz v2, :cond_4

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 4362
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    .line 4366
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 4367
    .local v1, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDragOverlappingLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 4371
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->invalidate()V

    .line 4372
    const/4 v3, 0x1

    .end local v1    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v2    # "page":I
    :cond_4
    move v5, v3

    .line 4375
    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    .prologue
    .line 4380
    const/4 v1, 0x0

    .line 4381
    .local v1, "result":Z
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Workspace;->mInScrollArea:Z

    if-eqz v2, :cond_0

    .line 4382
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->invalidate()V

    .line 4383
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentDropLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 4384
    .local v0, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDropLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 4385
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDragOverlappingLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 4387
    const/4 v1, 0x1

    .line 4388
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Workspace;->mInScrollArea:Z

    .line 4390
    .end local v0    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    return v1
.end method

.method public onExternalDragStartedWithItem(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2166
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v10

    .line 2167
    .local v10, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    iget v3, v10, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    .line 2168
    .local v3, "iconSize":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 2169
    .local v7, "bmpWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 2172
    .local v6, "bmpHeight":I
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2173
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2174
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Lnet/oneplus/h2launcher/Workspace;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v8

    .line 2175
    .local v8, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 2176
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 2180
    .end local v8    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2182
    .local v1, "b":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2183
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lnet/oneplus/h2launcher/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 2184
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2187
    const/4 v2, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/Workspace;->createDragOutline(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2188
    return-void
.end method

.method public onFlingToDelete(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;
    .param p2, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 4273
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 4278
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1290
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    .line 1292
    invoke-interface {v0}, Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;->isScrollingAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    const/4 v0, 0x0

    .line 1295
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 1284
    :goto_0
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1270
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mXDown:F

    .line 1271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mYDown:F

    .line 1272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/Workspace;->mTouchDownTime:J

    goto :goto_0

    .line 1276
    :sswitch_1
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mTouchState:I

    if-nez v1, :cond_0

    .line 1277
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 1278
    .local v0, "currentPage":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 1282
    .end local v0    # "currentPage":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mHasTouchSettled:Z

    goto :goto_0

    .line 1268
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLauncherTransitionEnd(Lnet/oneplus/h2launcher/Launcher;ZZ)V
    .locals 1
    .param p1, "l"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2371
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    .line 2372
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2373
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->showCustomContentIfNecessary()V

    .line 2374
    return-void
.end method

.method public onLauncherTransitionPrepare(Lnet/oneplus/h2launcher/Launcher;ZZ)V
    .locals 1
    .param p1, "l"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    .line 2354
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->invalidate()V

    .line 2356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2357
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hideCustomContentIfNecessary()V

    .line 2358
    return-void
.end method

.method public onLauncherTransitionStart(Lnet/oneplus/h2launcher/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2362
    return-void
.end method

.method public onLauncherTransitionStep(Lnet/oneplus/h2launcher/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 2366
    iput p2, p0, Lnet/oneplus/h2launcher/Workspace;->mTransitionProgress:F

    .line 2367
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1993
    invoke-super/range {p0 .. p5}, Lnet/oneplus/h2launcher/PagedView;->onLayout(ZIIII)V

    .line 1994
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1995
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1996
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 1998
    :cond_0
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .prologue
    .line 1396
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->onPageBeginMoving()V

    .line 1398
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1410
    :goto_0
    return-void

    .line 1401
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1403
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mNextPage:I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 1407
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->enableChildrenCache(II)V

    goto :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1413
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->onPageEndMoving()V

    .line 1415
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1416
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1421
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DragController;->forceTouchMove()V

    .line 1429
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1430
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1431
    iput-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 1434
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1435
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1436
    iput-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1438
    :cond_2
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_3

    .line 1439
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->stripEmptyScreens()V

    .line 1440
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 1443
    :cond_3
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mShouldSendPageSettled:Z

    if-eqz v0, :cond_4

    .line 1444
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncherOverlay:Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;->onScrollSettled()V

    .line 1445
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mShouldSendPageSettled:Z

    .line 1447
    :cond_4
    return-void

    .line 1418
    :cond_5
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->clearChildrenCache()V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2002
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isAppsViewVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2003
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 2004
    .local v0, "openFolder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v0, :cond_0

    .line 2005
    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2010
    .end local v0    # "openFolder":Lnet/oneplus/h2launcher/Folder;
    :goto_0
    return v1

    .line 2007
    .restart local v0    # "openFolder":Lnet/oneplus/h2launcher/Folder;
    :cond_0
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2010
    .end local v0    # "openFolder":Lnet/oneplus/h2launcher/Folder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRescheduleMeasure(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 5268
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5269
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5275
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5276
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5277
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1970
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicator()Lnet/oneplus/h2launcher/PageIndicator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1973
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 1974
    .local v0, "listener":Landroid/view/View$OnClickListener;
    if-eqz v0, :cond_0

    .line 1975
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageIndicator()Lnet/oneplus/h2launcher/PageIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1981
    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->hasWallpaperChangedSinceLastCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1982
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->setWallpaperDimension()V

    .line 1984
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperIsLiveWallpaper:Z

    .line 1985
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->isOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperIsOneplusBlurWallpaper:Z

    .line 1988
    const/4 v1, 0x0

    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLastSetWallpaperOffsetSteps:F

    .line 1989
    return-void

    .line 1984
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onScrollInteractionBegin()V
    .locals 1

    .prologue
    .line 1450
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->onScrollInteractionBegin()V

    .line 1451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mScrollInteractionBegan:Z

    .line 1452
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1455
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->onScrollInteractionEnd()V

    .line 1456
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScrollInteractionBegan:Z

    .line 1457
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mStartedSendingScrollEvents:Z

    if-eqz v0, :cond_0

    .line 1458
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mStartedSendingScrollEvents:Z

    .line 1459
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncherOverlay:Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;->onScrollInteractionEnd()V

    .line 1461
    :cond_0
    return-void
.end method

.method public onStartReordering()V
    .locals 0

    .prologue
    .line 2216
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->onStartReordering()V

    .line 2218
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->disableLayoutTransitions()V

    .line 2219
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 1234
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUninstallActivityReturned(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 4170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferDropAfterUninstall:Z

    .line 4171
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Workspace;->mUninstallSuccessful:Z

    .line 4172
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4173
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4176
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->markCellsAsOccupiedForView()V

    .line 4177
    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2127
    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace;->mTempCell:[I

    .line 2128
    .local v8, "position":[I
    invoke-virtual {p0, v8}, Lnet/oneplus/h2launcher/Workspace;->getLocationOnScreen([I)V

    .line 2130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 2131
    .local v7, "pointerIndex":I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 2132
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 2134
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    .line 2134
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 2138
    return-void

    .line 2135
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1254
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Launcher;->onWindowVisibilityChanged(I)V

    .line 1255
    return-void
.end method

.method protected overScroll(F)V
    .locals 9
    .param p1, "amount"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1469
    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncherOverlay:Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    if-eqz v7, :cond_6

    cmpg-float v7, p1, v8

    if-gtz v7, :cond_0

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v7, :cond_1

    :cond_0
    cmpl-float v7, p1, v8

    if-ltz v7, :cond_6

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v7, :cond_6

    :cond_1
    move v3, v5

    .line 1472
    .local v3, "shouldScrollOverlay":Z
    :goto_0
    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncherOverlay:Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    if-eqz v7, :cond_7

    iget v7, p0, Lnet/oneplus/h2launcher/Workspace;->mLastOverlaySroll:I

    if-eqz v7, :cond_7

    cmpl-float v7, p1, v8

    if-ltz v7, :cond_2

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v7, :cond_3

    :cond_2
    cmpg-float v7, p1, v8

    if-gtz v7, :cond_7

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    if-eqz v7, :cond_7

    :cond_3
    move v4, v5

    .line 1475
    .local v4, "shouldZeroOverlay":Z
    :goto_1
    if-eqz v3, :cond_8

    .line 1476
    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mStartedSendingScrollEvents:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mScrollInteractionBegan:Z

    if-eqz v7, :cond_4

    .line 1477
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/Workspace;->mStartedSendingScrollEvents:Z

    .line 1478
    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncherOverlay:Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    invoke-interface {v7}, Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;->onScrollInteractionBegin()V

    .line 1479
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/Workspace;->mShouldSendPageSettled:Z

    .line 1481
    :cond_4
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getViewportWidth()I

    move-result v2

    .line 1482
    .local v2, "screenSize":I
    int-to-float v5, v2

    div-float v0, p1, v5

    .line 1484
    .local v0, "f":F
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 1486
    .local v1, "progress":I
    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLastOverlaySroll:I

    .line 1487
    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncherOverlay:Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    invoke-interface {v5, v1, v7}, Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;->onScrollChange(IZ)V

    .line 1492
    .end local v0    # "f":F
    .end local v1    # "progress":I
    .end local v2    # "screenSize":I
    :goto_2
    if-eqz v4, :cond_5

    .line 1493
    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncherOverlay:Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mIsRtl:Z

    invoke-interface {v5, v6, v7}, Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;->onScrollChange(IZ)V

    .line 1495
    :cond_5
    return-void

    .end local v3    # "shouldScrollOverlay":Z
    .end local v4    # "shouldZeroOverlay":Z
    :cond_6
    move v3, v6

    .line 1469
    goto :goto_0

    .restart local v3    # "shouldScrollOverlay":Z
    :cond_7
    move v4, v6

    .line 1472
    goto :goto_1

    .line 1489
    .restart local v4    # "shouldZeroOverlay":Z
    :cond_8
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->dampedOverScroll(F)V

    goto :goto_2
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    .prologue
    .line 2905
    return-void
.end method

.method protected reinflateWidgetsIfNecessary()V
    .locals 10

    .prologue
    .line 1299
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v1

    .line 1300
    .local v1, "clCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1301
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 1302
    .local v0, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v7

    .line 1303
    .local v7, "swc":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    .line 1304
    .local v4, "itemCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 1305
    invoke-virtual {v7, v5}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1307
    .local v8, "v":Landroid/view/View;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v9, :cond_0

    .line 1308
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 1309
    .local v3, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    iget-object v6, v3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v6, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    .line 1310
    .local v6, "lahv":Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->isReinflateRequired()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1311
    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9, v3}, Lnet/oneplus/h2launcher/Launcher;->removeAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 1313
    invoke-virtual {v0, v6}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1314
    iget-object v9, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9, v3}, Lnet/oneplus/h2launcher/Launcher;->bindAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 1304
    .end local v3    # "info":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    .end local v6    # "lahv":Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1300
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1319
    .end local v0    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v4    # "itemCount":I
    .end local v5    # "j":I
    .end local v7    # "swc":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    :cond_2
    return-void
.end method

.method public removeAbandonedPromise(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 4995
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4996
    .local v0, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4997
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel;->deletePackageFromDatabase(Landroid/content/Context;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4998
    invoke-virtual {p0, v0, p2}, Lnet/oneplus/h2launcher/Workspace;->removeItemsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4999
    return-void
.end method

.method public removeAllWorkspaceScreens()V
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->disableLayoutTransitions()V

    .line 593
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->removeCustomContentPage()V

    .line 598
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->removeAllViews()V

    .line 599
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 600
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/util/LongArrayMap;->clear()V

    .line 603
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->enableLayoutTransitions()V

    .line 604
    return-void
.end method

.method public removeCustomContentPage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, -0x12d

    .line 702
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 703
    .local v0, "customScreen":Lnet/oneplus/h2launcher/CellLayout;
    if-nez v0, :cond_0

    .line 704
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expected custom content screen to exist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 708
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 710
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->disableLayoutTransitions()V

    .line 711
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->removeView(Landroid/view/View;)V

    .line 712
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->enableLayoutTransitions()V

    .line 714
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    invoke-interface {v1, v4, v4}, Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;->onScrollProgressChanged(FF)V

    .line 716
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;->onHide(Z)V

    .line 719
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mCustomContentCallbacks:Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;

    .line 722
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mOriginalDefaultPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDefaultPage:I

    .line 725
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mRestorePage:I

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_2

    .line 726
    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mRestorePage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnet/oneplus/h2launcher/Workspace;->mRestorePage:I

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public removeExtraEmptyScreen(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "stripEmptyScreens"    # Z

    .prologue
    .line 859
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 860
    return-void
.end method

.method public removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V
    .locals 8
    .param p1, "animate"    # Z
    .param p2, "onComplete"    # Ljava/lang/Runnable;
    .param p3, "delay"    # I
    .param p4, "stripEmptyScreens"    # Z

    .prologue
    const/16 v7, 0x190

    const/16 v5, 0x96

    const/4 v4, 0x0

    .line 866
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    const-string v0, "Launcher.Workspace"

    const-string v1, "    - workspace loading, skip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/Workspace;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    const-string v0, "Launcher.Workspace"

    const-string v1, "removeExtraEmptyScreenDelayed while reordering, delay do it"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/Workspace$3;-><init>(Lnet/oneplus/h2launcher/Workspace;ZLjava/lang/Runnable;IZ)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedRemoveExtraEmptyScreenRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 883
    :cond_2
    if-lez p3, :cond_3

    .line 884
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$4;

    invoke-direct {v0, p0, p1, p2, p4}, Lnet/oneplus/h2launcher/Workspace$4;-><init>(Lnet/oneplus/h2launcher/Workspace;ZLjava/lang/Runnable;Z)V

    int-to-long v2, p3

    invoke-virtual {p0, v0, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 893
    :cond_3
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->convertFinalScreenToEmptyScreenIfNecessary()V

    .line 894
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 895
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 896
    .local v6, "emptyIndex":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 897
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0, v7}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(II)V

    .line 898
    invoke-direct {p0, v7, v5, p2, p4}, Lnet/oneplus/h2launcher/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    goto :goto_0

    .line 901
    :cond_4
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(II)V

    .line 902
    invoke-direct {p0, v4, v5, p2, p4}, Lnet/oneplus/h2launcher/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    goto :goto_0

    .line 906
    .end local v6    # "emptyIndex":I
    :cond_5
    if-eqz p4, :cond_6

    .line 909
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->stripEmptyScreens()V

    .line 912
    :cond_6
    if-eqz p2, :cond_0

    .line 913
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method removeItemsByComponentName(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 21
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4602
    .local p1, "componentNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_1

    .line 4603
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 4604
    .local v11, "componentName":Landroid/content/ComponentName;
    if-eqz v11, :cond_0

    const-string v3, "com.android.stk"

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4605
    const-string v3, "Launcher.Workspace"

    const-string v4, "workspace removeItemsByComponentName for delete STK"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4609
    .end local v11    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v9

    .line 4610
    .local v9, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/CellLayout;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnet/oneplus/h2launcher/CellLayout;

    .line 4611
    .local v16, "layoutParent":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v15

    .line 4613
    .local v15, "layout":Landroid/view/ViewGroup;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4614
    .local v7, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;>;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v14, v2, :cond_3

    .line 4615
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4616
    .local v17, "view":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    move-object/from16 v0, v17

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4614
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 4619
    .end local v17    # "view":Landroid/view/View;
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4620
    .local v6, "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4622
    .local v5, "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/FolderInfo;Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;>;"
    new-instance v1, Lnet/oneplus/h2launcher/Workspace$25;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lnet/oneplus/h2launcher/Workspace$25;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 4650
    .local v1, "filter":Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v1}, Lnet/oneplus/h2launcher/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 4653
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/FolderInfo;

    .line 4654
    .local v12, "folder":Lnet/oneplus/h2launcher/FolderInfo;
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 4655
    .local v8, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 4656
    .local v13, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v12, v13}, Lnet/oneplus/h2launcher/FolderInfo;->remove(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 4657
    const-string v4, "Launcher.Workspace"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[removeItemsByComponentName] folder remove: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4662
    .end local v8    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    .end local v12    # "folder":Lnet/oneplus/h2launcher/FolderInfo;
    .end local v13    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 4665
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lnet/oneplus/h2launcher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4666
    const-string v4, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[removeItemsByComponentName] removeViewInLayout: "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-nez v10, :cond_7

    const-string v2, "child is null."

    .line 4667
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4666
    invoke-static {v4, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4668
    instance-of v2, v10, Lnet/oneplus/h2launcher/DropTarget;

    if-eqz v2, :cond_6

    .line 4669
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    check-cast v10, Lnet/oneplus/h2launcher/DropTarget;

    .end local v10    # "child":Landroid/view/View;
    invoke-virtual {v2, v10}, Lnet/oneplus/h2launcher/DragController;->removeDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    goto :goto_4

    .line 4667
    .restart local v10    # "child":Landroid/view/View;
    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    .line 4673
    .end local v10    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4674
    invoke-virtual {v15}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4675
    invoke-virtual {v15}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_1

    .line 4680
    .end local v1    # "filter":Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;
    .end local v5    # "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/FolderInfo;Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;>;"
    .end local v6    # "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;>;"
    .end local v14    # "j":I
    .end local v15    # "layout":Landroid/view/ViewGroup;
    .end local v16    # "layoutParent":Lnet/oneplus/h2launcher/CellLayout;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->stripEmptyScreens()V

    .line 4681
    return-void
.end method

.method removeItemsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 15
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4554
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 4555
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4556
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v13, "com.android.stk"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 4557
    const-string v13, "Launcher.Workspace"

    const-string v14, "workspace removeItemsByPackageName for delete STK"

    invoke-static {v13, v14}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4561
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 4562
    .local v10, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4565
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 4566
    .local v6, "infos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4567
    .local v3, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v1

    .line 4568
    .local v1, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/CellLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/CellLayout;

    .line 4569
    .local v8, "layoutParent":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v7

    .line 4570
    .local v7, "layout":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 4571
    .local v2, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 4572
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4573
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4571
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4576
    .end local v2    # "childCount":I
    .end local v5    # "i":I
    .end local v7    # "layout":Landroid/view/ViewGroup;
    .end local v8    # "layoutParent":Lnet/oneplus/h2launcher/CellLayout;
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    new-instance v4, Lnet/oneplus/h2launcher/Workspace$24;

    move-object/from16 v0, p2

    invoke-direct {v4, p0, v10, v0, v3}, Lnet/oneplus/h2launcher/Workspace$24;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet;)V

    .line 4589
    .local v4, "filter":Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;
    invoke-static {v6, v4}, Lnet/oneplus/h2launcher/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 4592
    move-object/from16 v0, p2

    invoke-virtual {p0, v3, v0}, Lnet/oneplus/h2launcher/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 4593
    return-void
.end method

.method public removeWorkspaceItem(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4147
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 4148
    .local v0, "parentCell":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_2

    .line 4149
    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 4157
    :cond_0
    :goto_0
    instance-of v1, p1, Lnet/oneplus/h2launcher/DropTarget;

    if-eqz v1, :cond_1

    .line 4158
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    check-cast p1, Lnet/oneplus/h2launcher/DropTarget;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/DragController;->removeDropTarget(Lnet/oneplus/h2launcher/DropTarget;)V

    .line 4160
    :cond_1
    return-void

    .line 4150
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4155
    const-string v1, "Launcher.Workspace"

    const-string v2, "mDragInfo.cell has null parent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeWorkspaceScreen(Lnet/oneplus/h2launcher/CellLayout;Z)V
    .locals 9
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p2, "animated"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 762
    invoke-virtual {p1, v6}, Lnet/oneplus/h2launcher/CellLayout;->setDeleted(Z)V

    .line 763
    new-instance v3, Lnet/oneplus/h2launcher/Workspace$1;

    invoke-direct {v3, p0, p1}, Lnet/oneplus/h2launcher/Workspace$1;-><init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/CellLayout;)V

    .line 776
    .local v3, "removeScreenRunnable":Ljava/lang/Runnable;
    if-nez p2, :cond_0

    .line 777
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 794
    :goto_0
    return-void

    .line 780
    :cond_0
    const-string v4, "alpha"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 781
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "backgroundAlpha"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 783
    .local v1, "bgAlpha":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v7

    aput-object v1, v4, v6

    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 784
    .local v2, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 785
    new-instance v4, Lnet/oneplus/h2launcher/Workspace$2;

    invoke-direct {v4, p0, v3}, Lnet/oneplus/h2launcher/Workspace$2;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 793
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method protected rescheduleMeasure(II)Z
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5258
    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_2

    :cond_0
    move v0, v2

    .line 5259
    .local v0, "reschedule":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 5260
    const-string v3, "Launcher.Workspace"

    const-string v4, "rescheduleMeasure# size: %dx%d, orientation: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    .line 5261
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    .line 5260
    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5263
    :cond_1
    return v0

    .end local v0    # "reschedule":Z
    :cond_2
    move v0, v1

    .line 5258
    goto :goto_0
.end method

.method public resetTransitionTransform(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 4043
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4044
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setScaleX(F)V

    .line 4045
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setScaleY(F)V

    .line 4047
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 3
    .param p1, "child"    # I

    .prologue
    .line 4293
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 4294
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4295
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 4296
    .local v0, "cl":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_0

    .line 4297
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 4300
    .end local v0    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 4

    .prologue
    .line 4303
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v0

    .line 4304
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4305
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4306
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->restoreInstanceStateForChild(I)V

    .line 4304
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4309
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4310
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 4311
    return-void
.end method

.method saveWorkspaceScreenToDb(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 13
    .param p1, "cl"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 4215
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    .line 4217
    .local v9, "count":I
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v4

    .line 4218
    .local v4, "screenId":J
    const/16 v8, -0x64

    .line 4220
    .local v8, "container":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4221
    const-wide/16 v4, -0x1

    .line 4222
    const/16 v8, -0x65

    .line 4225
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_4

    .line 4226
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 4227
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 4229
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz v1, :cond_2

    .line 4230
    iget v6, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 4231
    .local v6, "cellX":I
    iget v7, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 4232
    .local v7, "cellY":I
    const/16 v0, -0x65

    if-ne v8, v0, :cond_1

    .line 4233
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v0

    iget-wide v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/HotseatController;->getCellXFromOrder(I)I

    move-result v6

    .line 4234
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseatController()Lnet/oneplus/h2launcher/HotseatController;

    move-result-object v0

    iget-wide v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/HotseatController;->getCellYFromOrder(I)I

    move-result v7

    .line 4236
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    int-to-long v2, v8

    invoke-static/range {v0 .. v7}, Lnet/oneplus/h2launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 4238
    .end local v6    # "cellX":I
    .end local v7    # "cellY":I
    :cond_2
    instance-of v0, v12, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v0, :cond_3

    move-object v10, v12

    .line 4239
    check-cast v10, Lnet/oneplus/h2launcher/FolderIcon;

    .line 4240
    .local v10, "fi":Lnet/oneplus/h2launcher/FolderIcon;
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->addItemLocationsInDatabase()V

    .line 4225
    .end local v10    # "fi":Lnet/oneplus/h2launcher/FolderIcon;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4243
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method

.method saveWorkspaceToDb()V
    .locals 4

    .prologue
    .line 4203
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4204
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->saveWorkspaceScreenToDb(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 4207
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v1

    .line 4208
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4209
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 4210
    .local v0, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->saveWorkspaceScreenToDb(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 4208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4212
    .end local v0    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    :cond_1
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 0
    .param p1, "screenCenter"    # I

    .prologue
    .line 1949
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->updatePageAlphaValues(I)V

    .line 1950
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->updateStateForCustomContent(I)V

    .line 1951
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->enableHwLayersOnVisiblePages()V

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->invalidate()V

    .line 1952
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-static {p0, p1}, Lnet/oneplus/h2launcher/util/WallpaperComposer;->drawBlurBackground(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 4315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->scrollLeft(Z)V

    .line 4316
    return-void
.end method

.method public scrollLeft(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 4319
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_1

    .line 4320
    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->scrollLeft()V

    .line 4322
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 4323
    .local v0, "openFolder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v0, :cond_2

    .line 4324
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->completeDragExit()V

    .line 4326
    :cond_2
    return-void
.end method

.method public scrollRight()V
    .locals 1

    .prologue
    .line 4330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->scrollRight(Z)V

    .line 4331
    return-void
.end method

.method public scrollRight(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 4334
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_1

    .line 4335
    :cond_0
    invoke-super {p0}, Lnet/oneplus/h2launcher/PagedView;->scrollRight()V

    .line 4337
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 4338
    .local v0, "openFolder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v0, :cond_2

    .line 4339
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->completeDragExit()V

    .line 4341
    :cond_2
    return-void
.end method

.method public setAddNewPageOnDrag(Z)V
    .locals 0
    .param p1, "addPage"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/Workspace;->mAddNewPageOnDrag:Z

    .line 459
    return-void
.end method

.method setCurrentDragOverlappingLayout(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 3282
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverlappingLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 3283
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverlappingLayout:Lnet/oneplus/h2launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->setIsDragOverlapping(Z)V

    .line 3285
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverlappingLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 3286
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverlappingLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_1

    .line 3287
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverlappingLayout:Lnet/oneplus/h2launcher/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->setIsDragOverlapping(Z)V

    .line 3289
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->invalidate()V

    .line 3290
    return-void
.end method

.method setCurrentDropLayout(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    const/4 v1, -0x1

    .line 3268
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 3269
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->revertTempState()V

    .line 3270
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->onDragExit()V

    .line 3272
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 3273
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_1

    .line 3274
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragTargetLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->onDragEnter()V

    .line 3276
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->cleanupReorder(Z)V

    .line 3277
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->cleanupFolderCreation()V

    .line 3278
    invoke-virtual {p0, v1, v1}, Lnet/oneplus/h2launcher/Workspace;->setCurrentDropOverCell(II)V

    .line 3279
    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3293
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 3294
    :cond_0
    iput p1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverX:I

    .line 3295
    iput p2, p0, Lnet/oneplus/h2launcher/Workspace;->mDragOverY:I

    .line 3296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setDragMode(I)V

    .line 3298
    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2
    .param p1, "dragMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 3301
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 3302
    if-nez p1, :cond_2

    .line 3303
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->cleanupAddToFolder()V

    .line 3306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->cleanupReorder(Z)V

    .line 3307
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->cleanupFolderCreation()V

    .line 3318
    :cond_0
    :goto_0
    iput p1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragMode:I

    .line 3320
    :cond_1
    return-void

    .line 3308
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 3309
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->cleanupReorder(Z)V

    .line 3310
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 3311
    :cond_3
    if-ne p1, v1, :cond_4

    .line 3312
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->cleanupAddToFolder()V

    .line 3313
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 3314
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3315
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->cleanupAddToFolder()V

    .line 3316
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->cleanupFolderCreation()V

    goto :goto_0
.end method

.method public setFinalTransitionTransform(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 4036
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4037
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getScaleX()F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentScale:F

    .line 4038
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setScaleX(F)V

    .line 4039
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setScaleY(F)V

    .line 4041
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 391
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Workspace;->mHasNavigationBar:Z

    .line 392
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 394
    const-wide/16 v4, -0x12d

    invoke-virtual {p0, v4, v5}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    .line 395
    .local v1, "customScreen":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, "customContent":Landroid/view/View;
    instance-of v2, v0, Lnet/oneplus/h2launcher/Insettable;

    if-eqz v2, :cond_0

    .line 398
    check-cast v0, Lnet/oneplus/h2launcher/Insettable;

    .end local v0    # "customContent":Landroid/view/View;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v0, v2}, Lnet/oneplus/h2launcher/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 402
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->setupUtilsPanel()V

    .line 403
    return-void

    .end local v1    # "customScreen":Lnet/oneplus/h2launcher/CellLayout;
    :cond_1
    move v2, v3

    .line 391
    goto :goto_0
.end method

.method public setLauncherOverlay(Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;)V
    .locals 0
    .param p1, "overlay"    # Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    .prologue
    .line 1464
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncherOverlay:Lnet/oneplus/h2launcher/Launcher$LauncherOverlay;

    .line 1465
    return-void
.end method

.method public setStateWithAnimation(Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 7
    .param p1, "toState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toPage"    # I
    .param p3, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/Workspace$State;",
            "IZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 2295
    .local p4, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStateWithAnimation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mStateTransitionAnimation:Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/WorkspaceStateTransitionAnimation;->getAnimationToState(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;IZLjava/util/HashMap;)Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 2301
    .local v6, "workspaceAnim":Landroid/animation/Animator;
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    .line 2302
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->updateAccessibilityFlags()V

    .line 2304
    return-object v6
.end method

.method protected setWallpaperDimension()V
    .locals 5

    .prologue
    .line 1526
    new-instance v1, Lnet/oneplus/h2launcher/Workspace$7;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Workspace$7;-><init>(Lnet/oneplus/h2launcher/Workspace;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    .line 1536
    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1537
    return-void
.end method

.method public setWorkspaceYTranslationAndAlpha(FFZ)V
    .locals 1
    .param p1, "translation"    # F
    .param p2, "alpha"    # F
    .param p3, "includeShortcutWidgetContainer"    # Z

    .prologue
    .line 5336
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$Direction;->Y:Lnet/oneplus/h2launcher/Workspace$Direction;

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/oneplus/h2launcher/Workspace;->setWorkspaceTranslationAndAlpha(Lnet/oneplus/h2launcher/Workspace$Direction;FFZ)V

    .line 5337
    return-void
.end method

.method setup(Lnet/oneplus/h2launcher/DragController;)V
    .locals 2
    .param p1, "dragController"    # Lnet/oneplus/h2launcher/DragController;

    .prologue
    .line 4090
    new-instance v0, Lnet/oneplus/h2launcher/SpringLoadedDragController;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/SpringLoadedDragController;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mSpringLoadedDragController:Lnet/oneplus/h2launcher/SpringLoadedDragController;

    .line 4091
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    .line 4092
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 4093
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDragController:Lnet/oneplus/h2launcher/DragController;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 4096
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 4097
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 557
    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 558
    .local v0, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 560
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 561
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getBackgroundAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showCustomContentIfNecessary()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2384
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v3, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 2385
    .local v0, "show":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2386
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    const-wide/16 v4, -0x12d

    invoke-virtual {v1, v4, v5}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->setVisibility(I)V

    .line 2388
    :cond_0
    return-void

    .end local v0    # "show":Z
    :cond_1
    move v0, v2

    .line 2384
    goto :goto_0
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1799
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1800
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 1802
    :cond_0
    return-void
.end method

.method protected snapToPage(IILjava/lang/Runnable;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1544
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1547
    :cond_0
    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1548
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(II)V

    .line 1549
    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1540
    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0, p2}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(IILjava/lang/Runnable;)V

    .line 1541
    return-void
.end method

.method public snapToScreenId(J)V
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 1552
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    .line 1553
    return-void
.end method

.method protected snapToScreenId(JLjava/lang/Runnable;)V
    .locals 1
    .param p1, "screenId"    # J
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1556
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    .line 1557
    return-void
.end method

.method public startDrag(Lnet/oneplus/h2launcher/CellLayout$CellInfo;)V
    .locals 1
    .param p1, "cellInfo"    # Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    .prologue
    .line 2526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/Workspace;->startDrag(Lnet/oneplus/h2launcher/CellLayout$CellInfo;Z)V

    .line 2527
    return-void
.end method

.method public startDrag(Lnet/oneplus/h2launcher/CellLayout$CellInfo;Z)V
    .locals 3
    .param p1, "cellInfo"    # Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    .param p2, "accessible"    # Z

    .prologue
    .line 2531
    iget-object v0, p1, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2534
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2544
    :goto_0
    return-void

    .line 2538
    :cond_0
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    .line 2539
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2540
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 2541
    .local v1, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/CellLayout;->prepareChildForDrag(Landroid/view/View;)V

    .line 2543
    invoke-virtual {p0, v0, p0, p2}, Lnet/oneplus/h2launcher/Workspace;->beginDragShared(Landroid/view/View;Lnet/oneplus/h2launcher/DragSource;Z)V

    goto :goto_0
.end method

.method public stripEmptyScreens()V
    .locals 18

    .prologue
    .line 1030
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v13}, Lnet/oneplus/h2launcher/Launcher;->isWorkspaceLoading()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1033
    const-string v13, "Launcher.Workspace"

    const-string v14, "    - workspace loading, skip"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lnet/oneplus/h2launcher/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->isPageMoving()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1038
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lnet/oneplus/h2launcher/Workspace;->mStripScreensOnPageStopMoving:Z

    goto :goto_0

    .line 1042
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v4

    .line 1043
    .local v4, "currentPage":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v11, "removeScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v13}, Lnet/oneplus/h2launcher/util/LongArrayMap;->size()I

    move-result v12

    .line 1045
    .local v12, "total":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_5

    .line 1046
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v13, v6}, Lnet/oneplus/h2launcher/util/LongArrayMap;->keyAt(I)J

    move-result-wide v8

    .line 1047
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v13, v6}, Lnet/oneplus/h2launcher/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 1048
    .local v2, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 1049
    .local v3, "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-ltz v13, :cond_4

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getScaleX()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getScaleY()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    .line 1050
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1055
    .end local v2    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v3    # "container":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    .end local v8    # "id":J
    :cond_5
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v13

    invoke-virtual {v13}, Lnet/oneplus/h2launcher/LauncherAppState;->getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v5

    .line 1059
    .local v5, "delegate":Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v13

    add-int/lit8 v7, v13, 0x1

    .line 1061
    .local v7, "minScreens":I
    const/4 v10, 0x0

    .line 1062
    .local v10, "pageShift":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1063
    .local v8, "id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout;

    .line 1064
    .restart local v2    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lnet/oneplus/h2launcher/util/LongArrayMap;->remove(J)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1066
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lnet/oneplus/h2launcher/CellLayout;->setDeleted(Z)V

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v14

    if-le v14, v7, :cond_8

    .line 1069
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v14

    if-ge v14, v4, :cond_6

    .line 1070
    add-int/lit8 v10, v10, 0x1

    .line 1073
    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1074
    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v2, v14, v15}, Lnet/oneplus/h2launcher/CellLayout;->enableAccessibleDrag(ZI)V

    .line 1077
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 1080
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/oneplus/h2launcher/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 1081
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    const-wide/16 v16, -0xc9

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v2}, Lnet/oneplus/h2launcher/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v16, -0xc9

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1086
    .end local v2    # "cl":Lnet/oneplus/h2launcher/CellLayout;
    .end local v8    # "id":Ljava/lang/Long;
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 1088
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v13}, Lnet/oneplus/h2launcher/Launcher;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v13, v14, v15}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1091
    :cond_a
    if-ltz v10, :cond_0

    .line 1092
    sub-int v13, v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/oneplus/h2launcher/Workspace;->setCurrentPage(I)V

    goto/16 :goto_0
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 4257
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 4262
    const/4 v0, 0x1

    return v0
.end method

.method public supportsEditDropTarget()Z
    .locals 1

    .prologue
    .line 4267
    const/4 v0, 0x1

    return v0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 4252
    const/4 v0, 0x1

    return v0
.end method

.method public transitionStateShouldAllowDrop()Z
    .locals 2

    .prologue
    .line 2678
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAccessibilityFlags()V
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 2312
    sget-boolean v3, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v3, :cond_3

    .line 2313
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageCount()I

    move-result v2

    .line 2314
    .local v2, "total":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->numCustomPages()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2315
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0, v3, v1}, Lnet/oneplus/h2launcher/Workspace;->updateAccessibilityFlags(Lnet/oneplus/h2launcher/CellLayout;I)V

    .line 2314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2317
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v6, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v6, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v3, v6, :cond_2

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->setImportantForAccessibility(I)V

    .line 2326
    .end local v1    # "i":I
    .end local v2    # "total":I
    :goto_2
    return-void

    .restart local v1    # "i":I
    .restart local v2    # "total":I
    :cond_2
    move v3, v4

    .line 2317
    goto :goto_1

    .line 2321
    .end local v1    # "i":I
    .end local v2    # "total":I
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v6, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v3, v6, :cond_4

    move v0, v5

    .line 2324
    .local v0, "accessible":I
    :goto_3
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->setImportantForAccessibility(I)V

    goto :goto_2

    .end local v0    # "accessible":I
    :cond_4
    move v0, v4

    .line 2321
    goto :goto_3
.end method

.method public updateAllShortcutIconSize(FLjava/lang/String;)V
    .locals 1
    .param p1, "iconSizeScale"    # F
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4878
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lnet/oneplus/h2launcher/Workspace;->updateShortcutIconSizeInPage(IFLjava/lang/String;)V

    .line 4879
    return-void
.end method

.method public updateAllShortcuts()V
    .locals 1

    .prologue
    .line 4991
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->updateShortcutsWithPackageName(Ljava/lang/String;)V

    .line 4992
    return-void
.end method

.method updateChildrenLayersEnabled(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2069
    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v6, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Workspace;->mIsSwitchingState:Z

    if-eqz v5, :cond_3

    :cond_0
    move v3, v1

    .line 2070
    .local v3, "small":Z
    :goto_0
    if-nez p1, :cond_1

    if-nez v3, :cond_1

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->isPageMoving()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2072
    .local v1, "enableChildrenLayers":Z
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v5, :cond_2

    .line 2073
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace;->mChildrenLayersEnabled:Z

    .line 2074
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v5, :cond_5

    .line 2075
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Workspace;->enableHwLayersOnVisiblePages()V

    .line 2083
    :cond_2
    return-void

    .end local v1    # "enableChildrenLayers":Z
    .end local v3    # "small":Z
    :cond_3
    move v3, v4

    .line 2069
    goto :goto_0

    .restart local v3    # "small":Z
    :cond_4
    move v1, v4

    .line 2070
    goto :goto_1

    .line 2077
    .restart local v1    # "enableChildrenLayers":Z
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getPageCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 2078
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 2079
    .local v0, "cl":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/CellLayout;->enableHardwareLayer(Z)V

    .line 2077
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public updateCurrentPageIconState()V
    .locals 1

    .prologue
    .line 5202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace;->updateCurrentPageIconState(I)V

    .line 5203
    return-void
.end method

.method public updateCurrentPageIconState(I)V
    .locals 7
    .param p1, "retryCount"    # I

    .prologue
    const/4 v6, 0x3

    .line 5208
    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isLoaderTaskFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    iget-boolean v3, v3, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    if-nez v3, :cond_1

    .line 5209
    const-string v3, "Launcher.Workspace"

    const-string v4, "DynamicIcon Workspace updateCurrentPageIconState success"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5210
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 5211
    .local v0, "child":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->shouldUpdateDynamicIconState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5212
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->updateDynamicIconState()V

    .line 5231
    .end local v0    # "child":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    :goto_0
    return-void

    .line 5215
    :cond_1
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DynamicIcon Workspace update pending, loadTaskFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->isLoaderTaskFinished()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wallpaperAnimating = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace;->mWallpaperOffset:Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;

    iget-boolean v5, v5, Lnet/oneplus/h2launcher/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retryCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5216
    new-instance v2, Lnet/oneplus/h2launcher/Workspace$31;

    invoke-direct {v2, p0, p1}, Lnet/oneplus/h2launcher/Workspace$31;-><init>(Lnet/oneplus/h2launcher/Workspace;I)V

    .line 5222
    .local v2, "r":Ljava/lang/Runnable;
    if-ge p1, v6, :cond_2

    .line 5223
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 5224
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 5225
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5227
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_2
    if-ne p1, v6, :cond_0

    .line 5228
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUIIdle(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method updateCustomContentVisibility()V
    .locals 4

    .prologue
    .line 2377
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    .line 2378
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2379
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mWorkspaceScreens:Lnet/oneplus/h2launcher/util/LongArrayMap;

    const-wide/16 v2, -0x12d

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/CellLayout;->setVisibility(I)V

    .line 2381
    :cond_0
    return-void

    .line 2377
    .end local v0    # "visibility":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateIconSize(F)V
    .locals 3
    .param p1, "scaleValue"    # F

    .prologue
    .line 516
    iget v0, p0, Lnet/oneplus/h2launcher/Workspace;->mBaseIconSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace;->mScaleIconSize:I

    .line 517
    const v0, 0x3f90a3d7    # 1.13f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isDefaultDensity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const v0, 0x3f333333    # 0.7f

    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScaleIconSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace;->mMaxDistanceForFolderCreation:F

    .line 519
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merge folder using special rule, mMaxDistanceForFolderCreation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/Workspace;->mMaxDistanceForFolderCreation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_0
    const v0, 0x3f59999a    # 0.85f

    iget v1, p0, Lnet/oneplus/h2launcher/Workspace;->mScaleIconSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/Workspace;->mMaxDistanceForFolderCreation:F

    .line 522
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merge folder using normal rule, mMaxDistanceForFolderCreation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/Workspace;->mMaxDistanceForFolderCreation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateInteractionForState()V
    .locals 2

    .prologue
    .line 2283
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq v0, v1, :cond_0

    .line 2284
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->onInteractionBegin()V

    .line 2288
    :goto_0
    return-void

    .line 2286
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->onInteractionEnd()V

    goto :goto_0
.end method

.method updateItemLocationsInDatabase(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 14
    .param p1, "cl"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 4180
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 4182
    .local v11, "count":I
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v4

    .line 4183
    .local v4, "screenId":J
    const/16 v10, -0x64

    .line 4185
    .local v10, "container":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4186
    const-wide/16 v4, -0x1

    .line 4187
    const/16 v10, -0x65

    .line 4190
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_2

    .line 4191
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v12}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 4192
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 4194
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lnet/oneplus/h2launcher/ItemInfo;->requiresDbUpdate:Z

    if-eqz v0, :cond_1

    .line 4195
    const/4 v0, 0x0

    iput-boolean v0, v1, Lnet/oneplus/h2launcher/ItemInfo;->requiresDbUpdate:Z

    .line 4196
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    int-to-long v2, v10

    iget v6, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iget v7, v1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iget v8, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget v9, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-static/range {v0 .. v9}, Lnet/oneplus/h2launcher/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJIIII)V

    .line 4190
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 4200
    .end local v1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v13    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5002
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ItemInfo;>;"
    const/4 v0, 0x1

    new-instance v1, Lnet/oneplus/h2launcher/Workspace$30;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/Workspace$30;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->mapOverItems(ZLnet/oneplus/h2launcher/Workspace$ItemOperator;)V

    .line 5017
    return-void
.end method

.method public updateShortcutIconSizeInPage(IFLjava/lang/String;)V
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "iconSizeScale"    # F
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4883
    const/4 v0, 0x0

    new-instance v1, Lnet/oneplus/h2launcher/Workspace$29;

    invoke-direct {v1, p0, p3, p2}, Lnet/oneplus/h2launcher/Workspace$29;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/String;F)V

    invoke-virtual {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/Workspace;->mapOverItemsInPage(ZILnet/oneplus/h2launcher/Workspace$ItemOperator;)V

    .line 4913
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4748
    .local p1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4749
    .local v0, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    const/4 v1, 0x1

    new-instance v2, Lnet/oneplus/h2launcher/Workspace$26;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/Workspace$26;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/util/HashSet;)V

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/Workspace;->mapOverItems(ZLnet/oneplus/h2launcher/Workspace$ItemOperator;)V

    .line 4769
    return-void
.end method

.method public updateShortcutsInPage(ILjava/lang/String;)V
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4780
    const/4 v0, 0x0

    new-instance v1, Lnet/oneplus/h2launcher/Workspace$27;

    invoke-direct {v1, p0, p2}, Lnet/oneplus/h2launcher/Workspace$27;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/Workspace;->mapOverItemsInPage(ZILnet/oneplus/h2launcher/Workspace$ItemOperator;)V

    .line 4818
    return-void
.end method

.method public updateShortcutsInPageWithComponentName(ILnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "targetComponentName"    # Ljava/lang/String;

    .prologue
    .line 4831
    const/4 v0, 0x0

    new-instance v1, Lnet/oneplus/h2launcher/Workspace$28;

    invoke-direct {v1, p0, p2, p3}, Lnet/oneplus/h2launcher/Workspace$28;-><init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, v1}, Lnet/oneplus/h2launcher/Workspace;->mapOverItemsInPage(ZILnet/oneplus/h2launcher/Workspace$ItemOperator;)V

    .line 4875
    return-void
.end method

.method updateShortcutsWithComponentName(ILnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    .line 4825
    invoke-virtual {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/Workspace;->updateShortcutsInPageWithComponentName(ILnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 4826
    return-void
.end method

.method updateShortcutsWithComponentName(Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 4821
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lnet/oneplus/h2launcher/Workspace;->updateShortcutsInPageWithComponentName(ILnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 4822
    return-void
.end method

.method updateShortcutsWithPackageName(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4776
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/Workspace;->updateShortcutsInPage(ILjava/lang/String;)V

    .line 4777
    return-void
.end method

.method updateShortcutsWithPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4772
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1}, Lnet/oneplus/h2launcher/Workspace;->updateShortcutsInPage(ILjava/lang/String;)V

    .line 4773
    return-void
.end method

.method public updateWorkspaceScreenOrder()V
    .locals 3

    .prologue
    .line 1097
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1098
    return-void
.end method

.method widgetsRestored(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "changedInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;>;"
    const/4 v5, 0x0

    .line 5020
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5021
    new-instance v1, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;

    .line 5022
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;-><init>(Lnet/oneplus/h2launcher/Workspace;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;)V

    .line 5023
    .local v1, "widgetRefresh":Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5024
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    iget-object v4, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 5025
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 5023
    invoke-static {v3, v4, v2}, Lnet/oneplus/h2launcher/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5027
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;->run()V

    .line 5039
    .end local v1    # "widgetRefresh":Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;
    :cond_0
    return-void

    .line 5031
    .restart local v1    # "widgetRefresh":Lnet/oneplus/h2launcher/Workspace$DeferredWidgetRefresh;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 5032
    .local v0, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    if-eqz v2, :cond_2

    .line 5033
    const/16 v2, 0x64

    iput v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->installProgress:I

    .line 5034
    iget-object v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/PendingAppWidgetHostView;->applyState()V

    goto :goto_0
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;[IF)Z
    .locals 7
    .param p1, "dragInfo"    # Ljava/lang/Object;
    .param p2, "target"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2805
    iget v5, p0, Lnet/oneplus/h2launcher/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v5, p4, v5

    if-lez v5, :cond_1

    .line 2821
    :cond_0
    :goto_0
    return v3

    .line 2806
    :cond_1
    aget v5, p3, v3

    aget v6, p3, v4

    invoke-virtual {p2, v5, v6}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2808
    .local v0, "dropOverView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2809
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2810
    .local v2, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget-boolean v5, v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_2

    iget v5, v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_0

    iget v5, v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v2, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v5, v6, :cond_0

    .line 2815
    .end local v2    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_2
    instance-of v5, v0, Lnet/oneplus/h2launcher/FolderIcon;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 2816
    check-cast v1, Lnet/oneplus/h2launcher/FolderIcon;

    .line 2817
    .local v1, "fi":Lnet/oneplus/h2launcher/FolderIcon;
    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 2818
    goto :goto_0
.end method

.method willCreateUserFolder(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/CellLayout;[IFZ)Z
    .locals 9
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "target"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "considerTimeout"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2775
    iget v7, p0, Lnet/oneplus/h2launcher/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v7, p4, v7

    if-lez v7, :cond_1

    .line 2800
    :cond_0
    :goto_0
    return v6

    .line 2776
    :cond_1
    aget v7, p3, v6

    aget v8, p3, v5

    invoke-virtual {p2, v7, v8}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 2778
    .local v1, "dropOverView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2779
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2780
    .local v3, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget-boolean v7, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_2

    iget v7, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v8, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    if-ne v7, v8, :cond_0

    iget v7, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v8, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v7, v8, :cond_0

    .line 2785
    .end local v3    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    .line 2786
    .local v2, "hasntMoved":Z
    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    if-eqz v7, :cond_3

    .line 2787
    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace;->mDragInfo:Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    iget-object v7, v7, Lnet/oneplus/h2launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v1, v7, :cond_6

    move v2, v5

    .line 2790
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    if-eqz p5, :cond_4

    iget-boolean v7, p0, Lnet/oneplus/h2launcher/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v7, :cond_0

    .line 2794
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 2795
    .local v0, "aboveShortcut":Z
    iget v7, p1, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    if-eqz v7, :cond_5

    iget v7, p1, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    if-eq v7, v5, :cond_5

    iget v7, p1, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_7

    :cond_5
    move v4, v5

    .line 2800
    .local v4, "willBecomeShortcut":Z
    :goto_2
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    :goto_3
    move v6, v5

    goto :goto_0

    .end local v0    # "aboveShortcut":Z
    .end local v4    # "willBecomeShortcut":Z
    :cond_6
    move v2, v6

    .line 2787
    goto :goto_1

    .restart local v0    # "aboveShortcut":Z
    :cond_7
    move v4, v6

    .line 2795
    goto :goto_2

    .restart local v4    # "willBecomeShortcut":Z
    :cond_8
    move v5, v6

    .line 2800
    goto :goto_3
.end method

.method public workspaceInModalState()Z
    .locals 2

    .prologue
    .line 2034
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace;->mState:Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Workspace$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

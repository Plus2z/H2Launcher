.class public Lnet/oneplus/h2launcher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lnet/oneplus/h2launcher/BubbleTextView$BubbleTextShadowHandler;
.implements Lnet/oneplus/h2launcher/dynamicicon/IDynamicIconContainer;
.implements Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/CellLayout$CellInfo;,
        Lnet/oneplus/h2launcher/CellLayout$SwapInfo;,
        Lnet/oneplus/h2launcher/CellLayout$LayoutParams;,
        Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;,
        Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;,
        Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;,
        Lnet/oneplus/h2launcher/CellLayout$ViewCluster;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ACTIVATE_DURATION:I = 0x78

.field private static final DEBUG_VISUALIZE_OCCUPIED:Z = false

.field private static final DESTRUCTIVE_REORDER:Z = false

.field public static final FOLDER_ACCESSIBILITY_DRAG:I = 0x1

.field private static final INVALID_DIRECTION:I = -0x64

.field static final LANDSCAPE:I = 0x0

.field public static final MODE_ACCEPT_DROP:I = 0x4

.field public static final MODE_DRAG_OVER:I = 0x1

.field public static final MODE_ON_DROP:I = 0x2

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x3

.field public static final MODE_SHOW_REORDER_HINT:I = 0x0

.field static final PORTRAIT:I = 0x1

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_PREVIEW_MAGNITUDE:F = 0.12f

.field static final TAG:Ljava/lang/String;

.field public static final WORKSPACE_ACCESSIBILITY_DRAG:I = 0x2

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mAddScreenOverlay:Landroid/widget/ImageView;

.field private final mBackground:Landroid/graphics/drawable/TransitionDrawable;

.field private mBackgroundAlpha:F

.field mCellHeight:I

.field mCellWidth:I

.field mCountX:I

.field mCountY:I

.field private mDeleted:Z

.field private mDirectionVector:[I

.field private final mDragCell:[I

.field mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field mDragOutlines:[Landroid/graphics/Rect;

.field private mDragging:Z

.field private mDrawBackground:Z

.field private mDropPending:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFixedCellHeight:I

.field private mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mHeightGap:I

.field private mHotseatScale:F

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCustomContentScreen:Z

.field private mIsDragOverlapping:Z

.field private mIsDragTarget:Z

.field private mIsHotseat:Z

.field private mItemPlacementDirty:Z

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mMaxGap:I

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field mPreviousReorderDirection:[I

.field mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mReorderPreviewAnimationMagnitude:F

.field mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

.field private mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

.field private mSwapInformation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/CellLayout$SwapInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field final mTmpPoint:[I

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private final mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

.field private mTouchHelper:Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;

.field private mUseTouchHelper:Z

.field mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/CellLayout;->TAG:Ljava/lang/String;

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 194
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDropPending:Z

    .line 90
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mIsDragTarget:Z

    .line 94
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    .line 95
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    .line 100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mSwapInformation:Ljava/util/ArrayList;

    .line 105
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 106
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    .line 109
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDrawBackground:Z

    .line 115
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedWidth:I

    .line 116
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedHeight:I

    .line 119
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mIsDragOverlapping:Z

    .line 123
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 124
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAlphas:[F

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    new-array v5, v5, [Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    .line 129
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    .line 130
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 134
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 135
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 137
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mItemPlacementDirty:Z

    .line 140
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    .line 142
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragging:Z

    .line 148
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mIsHotseat:Z

    .line 149
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mHotseatScale:F

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 167
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 168
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDirectionVector:[I

    .line 169
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    .line 172
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 178
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mUseTouchHelper:Z

    .line 1363
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 198
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/CellLayout;->setWillNotDraw(Z)V

    .line 199
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/CellLayout;->setClipToPadding(Z)V

    .line 200
    move-object/from16 v0, p1

    instance-of v5, v0, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v5, :cond_0

    move-object/from16 v5, p1

    .line 201
    check-cast v5, Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 204
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v20

    .line 205
    .local v20, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    sget-object v5, Lnet/oneplus/h2launcher/R$styleable;->CellLayout:[I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 207
    .local v17, "a":Landroid/content/res/TypedArray;
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    .line 208
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedCellHeight:I

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedCellWidth:I

    .line 209
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mOriginalWidthGap:I

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    .line 210
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mOriginalHeightGap:I

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    .line 211
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mMaxGap:I

    .line 212
    move-object/from16 v0, v20

    iget-object v5, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v5, v5, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    .line 213
    move-object/from16 v0, v20

    iget-object v5, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v5, v5, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    .line 214
    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    .line 215
    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    const/4 v6, 0x0

    const/16 v7, -0x64

    aput v7, v5, v6

    .line 217
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    const/4 v6, 0x1

    const/16 v7, -0x64

    aput v7, v5, v6

    .line 219
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 224
    .local v22, "res":Landroid/content/res/Resources;
    move-object/from16 v0, v20

    iget v5, v0, Lnet/oneplus/h2launcher/DeviceProfile;->hotseatIconSizePx:I

    int-to-float v5, v5

    move-object/from16 v0, v20

    iget v6, v0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mHotseatScale:F

    .line 226
    const v5, 0x7f020063

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 229
    const v5, 0x3df5c28f    # 0.12f

    move-object/from16 v0, v20

    iget v6, v0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 233
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40200000    # 2.5f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 234
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    const/4 v8, 0x1

    const/4 v10, -0x1

    aput v10, v7, v8

    aput v10, v5, v6

    .line 235
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v5, v21

    .line 235
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const v5, 0x7f0f0026

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .line 244
    .local v18, "duration":I
    const/16 v19, 0x0

    .line 245
    .local v19, "fromAlphaValue":F
    const v5, 0x7f0f0027

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v9, v5

    .line 247
    .local v9, "toAlphaValue":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAlphas:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 249
    const/16 v21, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    array-length v5, v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_2

    .line 250
    new-instance v4, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    move/from16 v0, v18

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 252
    .local v4, "anim":Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    move/from16 v23, v21

    .line 254
    .local v23, "thisIndex":I
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lnet/oneplus/h2launcher/CellLayout$1;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v6, v0, v4, v1}, Lnet/oneplus/h2launcher/CellLayout$1;-><init>(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lnet/oneplus/h2launcher/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lnet/oneplus/h2launcher/CellLayout$2;-><init>(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    aput-object v4, v5, v21

    .line 249
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 289
    .end local v4    # "anim":Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;
    .end local v23    # "thisIndex":I
    :cond_2
    new-instance v5, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    .line 290
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v14, v0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v15, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    move/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 293
    new-instance v5, Lnet/oneplus/h2launcher/StylusEventHelper;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lnet/oneplus/h2launcher/StylusEventHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    .line 295
    new-instance v5, Lnet/oneplus/h2launcher/ClickShadowView;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lnet/oneplus/h2launcher/ClickShadowView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    .line 296
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/CellLayout;->addView(Landroid/view/View;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/CellLayout;->addView(Landroid/view/View;)V

    .line 298
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDeleted:Z

    .line 299
    return-void

    .line 106
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "currentState"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    .prologue
    .line 1584
    iget-object v0, p4, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1585
    .local v9, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    const/4 v10, 0x0

    .line 1586
    .local v10, "success":Z
    iget v1, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1587
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1589
    iget v1, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    check-cast v7, [[Z

    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1591
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .line 1593
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    .line 1594
    const/4 v10, 0x1

    .line 1596
    :cond_0
    iget v1, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1597
    return v10
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z
    .locals 25
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1959
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v22, 0x1

    .line 2011
    :cond_0
    return v22

    .line 1961
    :cond_1
    const/16 v22, 0x0

    .line 1962
    .local v22, "success":Z
    const/16 v17, 0x0

    .line 1964
    .local v17, "boundingRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1965
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1966
    .local v18, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    if-nez v17, :cond_2

    .line 1967
    new-instance v17, Landroid/graphics/Rect;

    .end local v17    # "boundingRect":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v17    # "boundingRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 1969
    :cond_2
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 1974
    .end local v18    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1975
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1976
    .restart local v18    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 1979
    .end local v18    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 1980
    .local v7, "blockOccupied":[[Z
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 1981
    .local v23, "top":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 1984
    .local v21, "left":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1985
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1986
    .restart local v18    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    sub-int v3, v2, v21

    move-object/from16 v0, v18

    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    sub-int v4, v2, v23

    move-object/from16 v0, v18

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    .line 1989
    .end local v18    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1991
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 1992
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p3

    move-object v15, v7

    .line 1991
    invoke-direct/range {v8 .. v16}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1995
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_7

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v19, v2, v3

    .line 1997
    .local v19, "deltaX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v20, v2, v3

    .line 1998
    .local v20, "deltaY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1999
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 2000
    .restart local v18    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    add-int v3, v3, v19

    move-object/from16 v0, v18

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .line 2001
    move-object/from16 v0, v18

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    add-int v3, v3, v20

    move-object/from16 v0, v18

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    goto :goto_3

    .line 2003
    .end local v18    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_6
    const/16 v22, 0x1

    .line 2007
    .end local v19    # "deltaX":I
    .end local v20    # "deltaY":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 2008
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 2009
    .restart local v18    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v9, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v10, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v11, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v12, v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_4
.end method

.method private animateItemsToSolution(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 15
    .param p1, "solution"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "commitDragView"    # Z

    .prologue
    .line 2280
    iget-object v14, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    check-cast v14, [[Z

    .line 2281
    .local v14, "occupied":[[Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v12, v1, :cond_1

    .line 2282
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-ge v13, v1, :cond_0

    .line 2283
    aget-object v1, v14, v12

    const/4 v3, 0x0

    aput-boolean v3, v1, v13

    .line 2282
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2281
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2287
    .end local v13    # "j":I
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 2288
    .local v11, "childCount":I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_4

    .line 2289
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v12}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2290
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p2

    if-ne v2, v0, :cond_3

    .line 2288
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2291
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 2292
    .local v10, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    if-eqz v10, :cond_2

    .line 2293
    iget v3, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v4, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    const/16 v5, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lnet/oneplus/h2launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2295
    iget v4, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    invoke-direct/range {v3 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 2298
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    :cond_4
    if-eqz p3, :cond_5

    .line 2299
    move-object/from16 v0, p1

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    invoke-direct/range {v3 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2302
    :cond_5
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z
    .locals 5
    .param p2, "occupied"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "ignoreView"    # Landroid/view/View;
    .param p5, "solution"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2023
    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_2

    .line 2026
    aget v0, p3, v1

    .line 2027
    .local v0, "temp":I
    aput v2, p3, v1

    .line 2029
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2112
    .end local v0    # "temp":I
    :cond_0
    :goto_0
    return v1

    .line 2033
    .restart local v0    # "temp":I
    :cond_1
    aput v0, p3, v1

    .line 2034
    aget v0, p3, v2

    .line 2035
    aput v2, p3, v2

    .line 2037
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2042
    aput v0, p3, v2

    .line 2045
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2046
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2047
    aget v0, p3, v1

    .line 2048
    aput v2, p3, v1

    .line 2049
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2054
    aput v0, p3, v1

    .line 2055
    aget v0, p3, v2

    .line 2056
    aput v2, p3, v2

    .line 2057
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2062
    aput v0, p3, v2

    .line 2063
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2064
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    :goto_1
    move v1, v2

    .line 2112
    goto :goto_0

    .line 2069
    .end local v0    # "temp":I
    :cond_2
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2074
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2075
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2076
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2081
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2082
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2088
    aget v0, p3, v1

    .line 2089
    .restart local v0    # "temp":I
    aget v3, p3, v2

    aput v3, p3, v1

    .line 2090
    aput v0, p3, v2

    .line 2091
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2097
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2098
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2099
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2104
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2105
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2108
    aget v0, p3, v1

    .line 2109
    aget v3, p3, v2

    aput v3, p3, v1

    .line 2110
    aput v0, p3, v2

    goto :goto_1
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;II)V
    .locals 16
    .param p1, "solution"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "delay"    # I
    .param p4, "mode"    # I

    .prologue
    .line 2308
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    .line 2309
    .local v12, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_3

    .line 2310
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v13}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2311
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p2

    if-ne v3, v0, :cond_1

    .line 2309
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2312
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 2313
    .local v11, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    if-nez p4, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 2314
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v15, 0x1

    .line 2316
    .local v15, "skip":Z
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2317
    .local v14, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    if-eqz v11, :cond_0

    if-nez v15, :cond_0

    .line 2318
    new-instance v1, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget v5, v14, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v6, v14, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iget v7, v11, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v8, v11, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v9, v11, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iget v10, v11, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v2, p0

    move/from16 v4, p4

    invoke-direct/range {v1 .. v10}, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;-><init>(Lnet/oneplus/h2launcher/CellLayout;Landroid/view/View;IIIIIII)V

    .line 2320
    .local v1, "rha":Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->animate()V

    goto :goto_1

    .line 2314
    .end local v1    # "rha":Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;
    .end local v14    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .end local v15    # "skip":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .line 2323
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    :cond_3
    return-void
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3015
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 3016
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 3017
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    aput-boolean v3, v2, v1

    .line 3018
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    aget-object v2, v2, v0

    aput-boolean v3, v2, v1

    .line 3016
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3015
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3021
    .end local v1    # "y":I
    :cond_1
    return-void
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 3

    .prologue
    .line 2452
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    .line 2453
    .local v0, "a":Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    goto :goto_0

    .line 2455
    .end local v0    # "a":Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2456
    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F
    .param p3, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    .line 2176
    div-float v2, p2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 2178
    .local v0, "angle":D
    aput v4, p3, v4

    .line 2179
    aput v4, p3, v5

    .line 2180
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 2181
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 2183
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    .line 2184
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v5

    .line 2186
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Z)V
    .locals 10
    .param p1, "solution"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .param p2, "temp"    # Z

    .prologue
    .line 2238
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    .line 2239
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 2240
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v8}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2241
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2243
    .local v9, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    if-eqz p2, :cond_0

    .line 2244
    new-instance v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    iget v2, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;-><init>(Lnet/oneplus/h2launcher/CellLayout;IIII)V

    .line 2248
    .local v0, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    :goto_1
    invoke-virtual {p1, v6, v0}, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;)V

    .line 2239
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2246
    .end local v0    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    iget v2, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v3, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iget v4, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;-><init>(Lnet/oneplus/h2launcher/CellLayout;IIII)V

    .restart local v0    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    goto :goto_1

    .line 2250
    .end local v0    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private copyOccupiedArray([[Z)V
    .locals 4
    .param p1, "occupied"    # [[Z

    .prologue
    .line 2189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 2190
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 2191
    aget-object v2, p1, v0

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 2190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2194
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 13
    .param p1, "solution"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 2253
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v10, v0, :cond_1

    .line 2254
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-ge v11, v0, :cond_0

    .line 2255
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    aget-object v0, v0, v10

    const/4 v1, 0x0

    aput-boolean v1, v0, v11

    .line 2254
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2253
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2259
    .end local v11    # "j":I
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    .line 2260
    .local v9, "childCount":I
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    .line 2261
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v10}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2262
    .local v8, "child":Landroid/view/View;
    if-ne v8, p2, :cond_3

    .line 2260
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2263
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2264
    .local v12, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget-object v0, p1, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 2265
    .local v7, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    if-eqz v7, :cond_2

    .line 2266
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iput v0, v12, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    .line 2267
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iput v0, v12, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    .line 2268
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iput v0, v12, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 2269
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    iput v0, v12, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 2270
    iget v1, v7, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v2, v7, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v3, v7, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iget v4, v7, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 2273
    .end local v7    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v8    # "child":Landroid/view/View;
    .end local v12    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_4
    iget v1, p1, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewX:I

    iget v2, p1, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewY:I

    iget v3, p1, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v4, p1, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanY:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2275
    return-void
.end method

.method private findConfigurationNoShuffle(IIIIIILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "solution"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    .prologue
    .line 2501
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 2502
    .local v8, "result":[I
    const/4 v1, 0x2

    new-array v9, v1, [I

    .local v9, "resultSpan":[I
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 2503
    invoke-virtual/range {v1 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    .line 2505
    const/4 v1, 0x0

    aget v1, v8, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v8, v1

    if-ltz v1, :cond_0

    .line 2506
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->copyCurrentStateToSolution(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Z)V

    .line 2507
    const/4 v1, 0x0

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2508
    const/4 v1, 0x1

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2509
    const/4 v1, 0x0

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2510
    const/4 v1, 0x1

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanY:I

    .line 2511
    const/4 v1, 0x1

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2515
    :goto_0
    return-object p8

    .line 2513
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0
.end method

.method private findNearestArea(IIIIIIZ[I[I)[I
    .locals 30
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreOccupied"    # Z
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I

    .prologue
    .line 1396
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->lazyInitTempRectStack()V

    .line 1401
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p5, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p1, v0

    .line 1402
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p6, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p2, v0

    .line 1405
    if-eqz p8, :cond_1

    move-object/from16 v7, p8

    .line 1406
    .local v7, "bestXY":[I
    :goto_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1407
    .local v4, "bestDistance":D
    new-instance v6, Landroid/graphics/Rect;

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1408
    .local v6, "bestRect":Landroid/graphics/Rect;
    new-instance v21, Ljava/util/Stack;

    invoke-direct/range {v21 .. v21}, Ljava/util/Stack;-><init>()V

    .line 1410
    .local v21, "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    .line 1411
    .local v10, "countX":I
    move-object/from16 v0, p0

    iget v11, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    .line 1413
    .local v11, "countY":I
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    .line 1509
    :cond_0
    :goto_1
    return-object v7

    .line 1405
    .end local v4    # "bestDistance":D
    .end local v6    # "bestRect":Landroid/graphics/Rect;
    .end local v7    # "bestXY":[I
    .end local v10    # "countX":I
    .end local v11    # "countY":I
    .end local v21    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_1
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v7, v0, [I

    goto :goto_0

    .line 1418
    .restart local v4    # "bestDistance":D
    .restart local v6    # "bestRect":Landroid/graphics/Rect;
    .restart local v7    # "bestXY":[I
    .restart local v10    # "countX":I
    .restart local v11    # "countY":I
    .restart local v21    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_2
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_2
    add-int/lit8 v26, p4, -0x1

    sub-int v26, v11, v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_1e

    .line 1420
    const/16 v22, 0x0

    .local v22, "x":I
    :goto_3
    add-int/lit8 v26, p3, -0x1

    sub-int v26, v10, v26

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d

    .line 1421
    const/16 v25, -0x1

    .line 1422
    .local v25, "ySize":I
    const/16 v23, -0x1

    .line 1423
    .local v23, "xSize":I
    if-eqz p7, :cond_16

    .line 1425
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    .line 1426
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_5

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v17

    aget-object v26, v26, v27

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_4

    .line 1420
    .end local v17    # "i":I
    .end local v19    # "j":I
    :cond_3
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 1426
    .restart local v17    # "i":I
    .restart local v19    # "j":I
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 1425
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1432
    .end local v19    # "j":I
    :cond_6
    move/from16 v23, p3

    .line 1433
    move/from16 v25, p4

    .line 1438
    const/16 v18, 0x1

    .line 1439
    .local v18, "incX":Z
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_a

    const/4 v13, 0x1

    .line 1440
    .local v13, "hitMaxX":Z
    :goto_7
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_b

    const/16 v16, 0x1

    .line 1441
    .local v16, "hitMaxY":Z
    :goto_8
    if-eqz v13, :cond_7

    if-nez v16, :cond_15

    .line 1442
    :cond_7
    if-eqz v18, :cond_e

    if-nez v13, :cond_e

    .line 1443
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 1444
    add-int v26, v22, v23

    add-int/lit8 v27, v10, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v23

    aget-object v26, v26, v27

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_9

    .line 1446
    :cond_8
    const/4 v13, 0x1

    .line 1443
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 1439
    .end local v13    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v19    # "j":I
    :cond_a
    const/4 v13, 0x0

    goto :goto_7

    .line 1440
    .restart local v13    # "hitMaxX":Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_8

    .line 1449
    .restart local v16    # "hitMaxY":Z
    .restart local v19    # "j":I
    :cond_c
    if-nez v13, :cond_d

    .line 1450
    add-int/lit8 v23, v23, 0x1

    .line 1463
    .end local v19    # "j":I
    :cond_d
    :goto_a
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_12

    const/16 v26, 0x1

    :goto_b
    or-int v13, v13, v26

    .line 1464
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_13

    const/16 v26, 0x1

    :goto_c
    or-int v16, v16, v26

    .line 1465
    if-nez v18, :cond_14

    const/16 v18, 0x1

    :goto_d
    goto :goto_8

    .line 1452
    :cond_e
    if-nez v16, :cond_d

    .line 1453
    const/16 v17, 0x0

    :goto_e
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 1454
    add-int v26, v24, v25

    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v17

    aget-object v26, v26, v27

    add-int v27, v24, v25

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_10

    .line 1456
    :cond_f
    const/16 v16, 0x1

    .line 1453
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 1459
    :cond_11
    if-nez v16, :cond_d

    .line 1460
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 1463
    :cond_12
    const/16 v26, 0x0

    goto :goto_b

    .line 1464
    :cond_13
    const/16 v26, 0x0

    goto :goto_c

    .line 1465
    :cond_14
    const/16 v18, 0x0

    goto :goto_d

    .line 1467
    :cond_15
    const/16 v18, 0x1

    .line 1468
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_1c

    const/4 v13, 0x1

    .line 1469
    :goto_f
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_16

    .line 1471
    .end local v13    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v18    # "incX":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    .line 1472
    .local v8, "cellXY":[I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v8}, Lnet/oneplus/h2launcher/CellLayout;->cellToCenterPoint(II[I)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempRectStack:Ljava/util/Stack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 1478
    .local v12, "currentRect":Landroid/graphics/Rect;
    add-int v26, v22, v23

    add-int v27, v24, v25

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1479
    const/4 v9, 0x0

    .line 1480
    .local v9, "contained":Z
    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_17
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_18

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    .line 1481
    .local v20, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 1482
    const/4 v9, 0x1

    .line 1486
    .end local v20    # "r":Landroid/graphics/Rect;
    :cond_18
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    const/16 v26, 0x0

    aget v26, v8, v26

    sub-int v26, v26, p1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x1

    aget v28, v8, v28

    sub-int v28, v28, p2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    .line 1489
    .local v14, "distance":D
    cmpg-double v26, v14, v4

    if-gtz v26, :cond_19

    if-eqz v9, :cond_1a

    .line 1490
    :cond_19
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1491
    :cond_1a
    move-wide v4, v14

    .line 1492
    const/16 v26, 0x0

    aput v22, v7, v26

    .line 1493
    const/16 v26, 0x1

    aput v24, v7, v26

    .line 1494
    if-eqz p9, :cond_1b

    .line 1495
    const/16 v26, 0x0

    aput v23, p9, v26

    .line 1496
    const/16 v26, 0x1

    aput v25, p9, v26

    .line 1498
    :cond_1b
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 1468
    .end local v8    # "cellXY":[I
    .end local v9    # "contained":Z
    .end local v12    # "currentRect":Landroid/graphics/Rect;
    .end local v14    # "distance":D
    .restart local v13    # "hitMaxX":Z
    .restart local v16    # "hitMaxY":Z
    .restart local v17    # "i":I
    .restart local v18    # "incX":Z
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_f

    .line 1418
    .end local v13    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v18    # "incX":Z
    .end local v23    # "xSize":I
    .end local v25    # "ySize":I
    :cond_1d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 1504
    .end local v22    # "x":I
    :cond_1e
    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v26, v4, v26

    if-nez v26, :cond_1f

    .line 1505
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput v27, v7, v26

    .line 1506
    const/16 v26, 0x1

    const/16 v27, -0x1

    aput v27, v7, v26

    .line 1508
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    goto/16 :goto_1
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 22
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "occupied"    # [[Z
    .param p7, "blockOccupied"    # [[Z
    .param p8, "result"    # [I

    .prologue
    .line 1534
    if-eqz p8, :cond_1

    move-object/from16 v6, p8

    .line 1535
    .local v6, "bestXY":[I
    :goto_0
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 1536
    .local v5, "bestDistance":F
    const/high16 v4, -0x80000000

    .line 1538
    .local v4, "bestDirectionScore":I
    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    .line 1539
    .local v7, "countX":I
    move-object/from16 v0, p0

    iget v8, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    .line 1541
    .local v8, "countY":I
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_1
    add-int/lit8 v18, p4, -0x1

    sub-int v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 1543
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_2
    add-int/lit8 v18, p3, -0x1

    sub-int v18, v7, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 1545
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move/from16 v0, p3

    if-ge v14, v0, :cond_4

    .line 1546
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    move/from16 v0, p4

    if-ge v15, v0, :cond_3

    .line 1547
    add-int v18, v16, v14

    aget-object v18, p6, v18

    add-int v19, v17, v15

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_2

    if-eqz p7, :cond_0

    aget-object v18, p7, v14

    aget-boolean v18, v18, v15

    if-eqz v18, :cond_2

    .line 1543
    .end local v15    # "j":I
    :cond_0
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1534
    .end local v4    # "bestDirectionScore":I
    .end local v5    # "bestDistance":F
    .end local v6    # "bestXY":[I
    .end local v7    # "countX":I
    .end local v8    # "countY":I
    .end local v14    # "i":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v6, v0, [I

    goto :goto_0

    .line 1546
    .restart local v4    # "bestDirectionScore":I
    .restart local v5    # "bestDistance":F
    .restart local v6    # "bestXY":[I
    .restart local v7    # "countX":I
    .restart local v8    # "countY":I
    .restart local v14    # "i":I
    .restart local v15    # "j":I
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1545
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1553
    .end local v15    # "j":I
    :cond_4
    sub-int v18, v16, p1

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-int v20, v17, p2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v12, v0

    .line 1554
    .local v12, "distance":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    .line 1555
    .local v9, "curDirection":[I
    sub-int v18, v16, p1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-int v19, v17, p2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v9}, Lnet/oneplus/h2launcher/CellLayout;->computeDirectionVector(FF[I)V

    .line 1558
    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v9, v19

    mul-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, p5, v19

    const/16 v20, 0x1

    aget v20, v9, v20

    mul-int v19, v19, v20

    add-int v10, v18, v19

    .line 1560
    .local v10, "curDirectionScore":I
    const/4 v13, 0x0

    .line 1561
    .local v13, "exactDirectionOnly":Z
    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/4 v11, 0x1

    .line 1563
    .local v11, "directionMatches":Z
    :goto_6
    if-nez v11, :cond_5

    if-nez v13, :cond_6

    .line 1564
    :cond_5
    invoke-static {v12, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-ltz v18, :cond_7

    :cond_6
    invoke-static {v12, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_0

    if-le v10, v4, :cond_0

    .line 1566
    :cond_7
    move v5, v12

    .line 1567
    move v4, v10

    .line 1568
    const/16 v18, 0x0

    aput v16, v6, v18

    .line 1569
    const/16 v18, 0x1

    aput v17, v6, v18

    goto/16 :goto_5

    .line 1561
    .end local v11    # "directionMatches":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_6

    .line 1541
    .end local v9    # "curDirection":[I
    .end local v10    # "curDirectionScore":I
    .end local v12    # "distance":F
    .end local v13    # "exactDirectionOnly":Z
    .end local v14    # "i":I
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1575
    .end local v16    # "x":I
    :cond_a
    const v18, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v18, v5, v18

    if-nez v18, :cond_b

    .line 1576
    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v6, v18

    .line 1577
    const/16 v18, 0x1

    const/16 v19, -0x1

    aput v19, v6, v18

    .line 1579
    :cond_b
    return-object v6
.end method

.method private findReorderSolution(IIIIII[ILandroid/view/View;ZLnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .locals 20
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "direction"    # [I
    .param p8, "dragView"    # Landroid/view/View;
    .param p9, "decX"    # Z
    .param p10, "solution"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    .prologue
    .line 2200
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->copyCurrentStateToSolution(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Z)V

    .line 2203
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/CellLayout;->copyOccupiedArray([[Z)V

    .line 2207
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, "result":[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    .line 2208
    invoke-virtual/range {v2 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v7

    .line 2210
    const/16 v19, 0x0

    .line 2213
    .local v19, "success":Z
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p10

    invoke-direct/range {v8 .. v15}, Lnet/oneplus/h2launcher/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v19

    .line 2216
    if-nez v19, :cond_3

    .line 2219
    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    if-eqz p9, :cond_1

    .line 2220
    :cond_0
    add-int/lit8 v13, p5, -0x1

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    invoke-direct/range {v8 .. v18}, Lnet/oneplus/h2launcher/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    move-result-object p10

    .line 2234
    .end local p10    # "solution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    :goto_0
    return-object p10

    .line 2222
    .restart local p10    # "solution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    :cond_1
    move/from16 v0, p6

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 2223
    add-int/lit8 v14, p6, -0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    invoke-direct/range {v8 .. v18}, Lnet/oneplus/h2launcher/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    move-result-object p10

    goto :goto_0

    .line 2226
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2228
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2229
    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2230
    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2231
    move/from16 v0, p5

    move-object/from16 v1, p10

    iput v0, v1, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2232
    move/from16 v0, p6

    move-object/from16 v1, p10

    iput v0, v1, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanY:I

    goto :goto_0
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 10
    .param p0, "vacant"    # [I
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I
    .param p5, "occupied"    # [[Z

    .prologue
    .line 2902
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2903
    .local v2, "occupiedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    if-ge v7, p4, :cond_1

    .line 2904
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    if-ge v6, p3, :cond_0

    .line 2905
    aget-object v8, p5, v6

    aget-boolean v8, v8, v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2904
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2903
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2908
    .end local v6    # "x":I
    :cond_1
    const/4 v3, 0x0

    .line 2909
    .local v3, "occupiedX":I
    const/4 v4, 0x0

    .line 2910
    .local v4, "occupiedY":I
    const/4 v1, 0x0

    .line 2911
    .local v1, "index":I
    const/4 v5, 0x0

    .line 2912
    .local v5, "sum":I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, p4, :cond_8

    .line 2913
    const/4 v6, 0x0

    .restart local v6    # "x":I
    :goto_3
    if-ge v6, p3, :cond_7

    .line 2914
    aget-object v8, p5, v6

    aget-boolean v8, v8, v7

    if-nez v8, :cond_2

    const/4 v0, 0x1

    .line 2915
    .local v0, "available":Z
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 2916
    if-eqz v0, :cond_6

    .line 2917
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2918
    rem-int v3, v1, p3

    .line 2919
    div-int v4, v1, p3

    .line 2920
    if-gt v1, v5, :cond_3

    add-int/lit8 v8, v1, 0x1

    if-ge v8, p3, :cond_3

    .line 2921
    const/4 v8, 0x0

    add-int/lit8 v9, v1, 0x1

    aput v9, p0, v8

    .line 2922
    const/4 v8, 0x1

    aput v7, p0, v8

    .line 2923
    const/4 v8, 0x1

    .line 2940
    .end local v0    # "available":Z
    .end local v6    # "x":I
    :goto_5
    return v8

    .line 2914
    .restart local v6    # "x":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_4

    .line 2925
    .restart local v0    # "available":Z
    :cond_3
    if-lt v4, v7, :cond_4

    add-int/lit8 v8, v3, 0x1

    if-ge v8, p3, :cond_4

    .line 2926
    const/4 v8, 0x0

    add-int/lit8 v9, v3, 0x1

    aput v9, p0, v8

    .line 2927
    const/4 v8, 0x1

    aput v4, p0, v8

    .line 2928
    const/4 v8, 0x1

    goto :goto_5

    .line 2929
    :cond_4
    add-int/lit8 v8, v4, 0x1

    if-ge v8, p4, :cond_5

    .line 2930
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, p0, v8

    .line 2931
    const/4 v8, 0x1

    add-int/lit8 v9, v4, 0x1

    aput v9, p0, v8

    .line 2932
    const/4 v8, 0x1

    goto :goto_5

    .line 2934
    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    .line 2913
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2912
    .end local v0    # "available":Z
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2940
    .end local v6    # "x":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_5
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 26
    .param p1, "dragViewCenterX"    # I
    .param p2, "dragViewCenterY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "resultDirection"    # [I

    .prologue
    .line 2532
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, "targetDestination":[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2534
    invoke-virtual/range {v2 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIII[I)[I

    .line 2535
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2536
    .local v13, "dragRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lnet/oneplus/h2launcher/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2537
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2539
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 2540
    .local v20, "dropRegionRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v15, v7, v2

    const/4 v2, 0x1

    aget v16, v7, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v14, p0

    move/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v14 .. v21}, Lnet/oneplus/h2launcher/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2543
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 2544
    .local v24, "dropRegionSpanX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 2546
    .local v25, "dropRegionSpanY":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 2547
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v15, p0

    .line 2546
    invoke-virtual/range {v15 .. v20}, Lnet/oneplus/h2launcher/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2549
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v2, p1

    div-int v22, v2, p3

    .line 2550
    .local v22, "deltaX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v2, p2

    div-int v23, v2, p4

    .line 2552
    .local v23, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    move/from16 v0, v24

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 2553
    :cond_0
    const/16 v22, 0x0

    .line 2555
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    move/from16 v0, v25

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    .line 2556
    :cond_2
    const/16 v23, 0x0

    .line 2559
    :cond_3
    if-nez v22, :cond_4

    if-nez v23, :cond_4

    .line 2561
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p6, v2

    .line 2562
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, p6, v2

    .line 2566
    :goto_0
    return-void

    .line 2564
    :cond_4
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v3, v1}, Lnet/oneplus/h2launcher/CellLayout;->computeDirectionVector(FF[I)V

    goto :goto_0
.end method

.method private getLastOccupiedChild(II)Lnet/oneplus/h2launcher/CellLayout$SwapInfo;
    .locals 6
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    .line 1139
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    add-int/lit8 v3, v0, -0x1

    .local v3, "y":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1140
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v2, v0, :cond_2

    .line 1141
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    aget-object v0, v0, v2

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 1142
    invoke-direct {p0, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->hasChildBeenSwapped(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1

    .line 1140
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1147
    :cond_1
    new-instance v0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;-><init>(Lnet/oneplus/h2launcher/CellLayout;IIII)V

    .line 1151
    .end local v2    # "x":I
    :goto_2
    return-object v0

    .line 1139
    .restart local v2    # "x":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1151
    .end local v2    # "x":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "boundingRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2571
    .local p7, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p6, :cond_0

    .line 2572
    add-int v7, p1, p3

    add-int v8, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2574
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 2575
    new-instance v5, Landroid/graphics/Rect;

    add-int v7, p1, p3

    add-int v8, p2, p4

    invoke-direct {v5, p1, p2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2576
    .local v5, "r0":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2577
    .local v6, "r1":Landroid/graphics/Rect;
    iget-object v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 2578
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2579
    iget-object v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v7, v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2580
    .local v1, "child":Landroid/view/View;
    move-object/from16 v0, p5

    if-ne v1, v0, :cond_2

    .line 2578
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2581
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2582
    .local v4, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v7, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v8, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iget v9, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v10, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v10

    iget v10, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iget v11, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2583
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2584
    iget-object v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2585
    if-eqz p6, :cond_1

    .line 2586
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2590
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private hasChildBeenSwapped(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1127
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mSwapInformation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;

    .line 1128
    .local v0, "info":Lnet/oneplus/h2launcher/CellLayout$SwapInfo;
    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->newX:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->newY:I

    if-ne v2, p2, :cond_0

    .line 1129
    const/4 v1, 0x1

    .line 1132
    .end local v0    # "info":Lnet/oneplus/h2launcher/CellLayout$SwapInfo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .prologue
    .line 1365
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1367
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1370
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "occupied"    # [[Z
    .param p3, "value"    # Z

    .prologue
    .line 2015
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2016
    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "occupied"    # [[Z
    .param p6, "value"    # Z

    .prologue
    .line 3043
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 3049
    :cond_0
    return-void

    .line 3044
    :cond_1
    move v0, p1

    .local v0, "x":I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_0

    .line 3045
    move v1, p2

    .local v1, "y":I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_2

    .line 3046
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    .line 3045
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3044
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z
    .locals 20
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1865
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v11, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v11, v0, v1, v2}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;-><init>(Lnet/oneplus/h2launcher/CellLayout;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)V

    .line 1866
    .local v11, "cluster":Lnet/oneplus/h2launcher/CellLayout$ViewCluster;
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1869
    .local v12, "clusterRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 1873
    .local v13, "fail":Z
    const/4 v3, 0x0

    aget v3, p3, v3

    if-gez v3, :cond_1

    .line 1874
    const/16 v18, 0x0

    .line 1875
    .local v18, "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    .line 1888
    .local v16, "pushDistance":I
    :goto_0
    if-gtz v16, :cond_4

    .line 1889
    const/4 v14, 0x0

    .line 1954
    :cond_0
    return v14

    .line 1876
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_1
    const/4 v3, 0x0

    aget v3, p3, v3

    if-lez v3, :cond_2

    .line 1877
    const/16 v18, 0x2

    .line 1878
    .restart local v18    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 1879
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_2
    const/4 v3, 0x1

    aget v3, p3, v3

    if-gez v3, :cond_3

    .line 1880
    const/16 v18, 0x1

    .line 1881
    .restart local v18    # "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 1883
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_3
    const/16 v18, 0x3

    .line 1884
    .restart local v18    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 1893
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1894
    .local v17, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1895
    .local v10, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    iget v4, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 1901
    .end local v10    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v17    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->save()V

    .line 1906
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    .line 1908
    :goto_2
    if-lez v16, :cond_9

    if-nez v13, :cond_9

    .line 1909
    move-object/from16 v0, p5

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_6
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1913
    .restart local v17    # "v":Landroid/view/View;
    iget-object v3, v11, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_6

    .line 1914
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1915
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 1916
    .local v15, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget-boolean v3, v15, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_8

    .line 1918
    const/4 v13, 0x1

    .line 1929
    .end local v15    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .end local v17    # "v":Landroid/view/View;
    :cond_7
    add-int/lit8 v16, v16, -0x1

    .line 1933
    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->shift(II)V

    goto :goto_2

    .line 1921
    .restart local v15    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .restart local v17    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1922
    move-object/from16 v0, p5

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1925
    .restart local v10    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    iget v4, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 1936
    .end local v10    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v15    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .end local v17    # "v":Landroid/view/View;
    :cond_9
    const/4 v14, 0x0

    .line 1937
    .local v14, "foundSolution":Z
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1941
    if-nez v13, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-gt v3, v4, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-gt v3, v4, :cond_a

    .line 1943
    const/4 v14, 0x1

    .line 1949
    :goto_4
    iget-object v3, v11, Lnet/oneplus/h2launcher/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1950
    .restart local v17    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 1951
    .restart local v10    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    iget v4, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_5

    .line 1945
    .end local v10    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v17    # "v":Landroid/view/View;
    :cond_a
    invoke-virtual/range {p5 .. p5}, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->restore()V

    goto :goto_4
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z
    .locals 14
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "solution"    # Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    .prologue
    .line 2118
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 2168
    :goto_0
    return v2

    .line 2120
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2121
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    move/from16 v0, p2

    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2124
    if-eqz p6, :cond_2

    .line 2125
    move-object/from16 v0, p7

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 2126
    .local v8, "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    if-eqz v8, :cond_2

    .line 2127
    iput p1, v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .line 2128
    move/from16 v0, p2

    iput v0, v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    .line 2131
    .end local v8    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    :cond_2
    new-instance v11, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    move/from16 v0, p2

    invoke-direct {v11, p1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2132
    .local v11, "r0":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2133
    .local v12, "r1":Landroid/graphics/Rect;
    move-object/from16 v0, p7

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2134
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p6

    if-eq v9, v0, :cond_3

    .line 2135
    move-object/from16 v0, p7

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .line 2136
    .restart local v8    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2137
    .local v10, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v3, v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v4, v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v5, v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iget v6, v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iget v7, v8, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v7

    invoke-virtual {v12, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2138
    invoke-static {v11, v12}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2139
    iget-boolean v3, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_4

    .line 2140
    const/4 v2, 0x0

    goto :goto_0

    .line 2142
    :cond_4
    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2146
    .end local v8    # "c":Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p7

    iput-object v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 2151
    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2153
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2157
    :cond_6
    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2159
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2163
    :cond_7
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 2164
    .local v13, "v":Landroid/view/View;
    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v13, v3, v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2165
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2168
    .end local v13    # "v":Landroid/view/View;
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p1, "used":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1376
    :cond_0
    return-void
.end method

.method private setUseTempCoords(Z)V
    .locals 6
    .param p1, "useTempCoords"    # Z

    .prologue
    .line 2482
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2483
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2484
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2485
    .local v3, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iput-boolean p1, v3, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 2483
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2488
    .end local v3    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v1, v4, :cond_3

    .line 2489
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-ge v2, v4, :cond_2

    .line 2490
    if-eqz p1, :cond_1

    .line 2491
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    aget-object v4, v4, v1

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    aget-object v5, v5, v1

    aget-boolean v5, v5, v2

    aput-boolean v5, v4, v2

    .line 2489
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2493
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v1

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    aget-object v5, v5, v1

    aget-boolean v5, v5, v2

    aput-boolean v5, v4, v2

    goto :goto_3

    .line 2488
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2497
    .end local v2    # "j":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addOverlayView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 636
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 637
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "child":Landroid/view/View;
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    .line 638
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CellLayout;->addView(Landroid/view/View;)V

    .line 639
    const/4 v0, 0x1

    .line 641
    :goto_0
    return v0

    .restart local p1    # "child":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addViewToCellLayout(Landroid/view/View;IILnet/oneplus/h2launcher/CellLayout$LayoutParams;Z)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .param p5, "markCells"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 603
    move-object v1, p4

    .line 606
    .local v1, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    instance-of v2, p1, Lnet/oneplus/h2launcher/BubbleTextView;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 607
    check-cast v0, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 608
    .local v0, "bubbleChild":Lnet/oneplus/h2launcher/BubbleTextView;
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsHotseat:Z

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setTextVisibility(Z)V

    .line 611
    .end local v0    # "bubbleChild":Lnet/oneplus/h2launcher/BubbleTextView;
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getChildrenScale()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 612
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getChildrenScale()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 616
    iget v2, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    if-ltz v2, :cond_5

    iget v2, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_5

    iget v2, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    if-ltz v2, :cond_5

    iget v2, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_5

    .line 619
    iget v2, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v2, :cond_1

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iput v2, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 620
    :cond_1
    iget v2, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v2, :cond_2

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    iput v2, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 622
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 623
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v2, p1, p2, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 625
    if-eqz p5, :cond_3

    .line 626
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 627
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    invoke-virtual {p0, p1, v2}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 632
    :cond_3
    :goto_1
    return v3

    .restart local v0    # "bubbleChild":Lnet/oneplus/h2launcher/BubbleTextView;
    :cond_4
    move v2, v4

    .line 608
    goto :goto_0

    .end local v0    # "bubbleChild":Lnet/oneplus/h2launcher/BubbleTextView;
    :cond_5
    move v3, v4

    .line 632
    goto :goto_1
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "permanent"    # Z
    .param p7, "adjustOccupied"    # Z

    .prologue
    .line 1040
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v10

    .line 1041
    .local v10, "clc":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    iget-object v12, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    .line 1042
    .local v12, "occupied":[[Z
    if-nez p6, :cond_0

    .line 1043
    iget-object v12, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    .line 1046
    :cond_0
    invoke-virtual {v10, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 1047
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 1048
    .local v4, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/ItemInfo;

    .line 1051
    .local v11, "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1052
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 1053
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    :cond_1
    iget v5, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->x:I

    .line 1057
    .local v5, "oldX":I
    iget v7, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->y:I

    .line 1058
    .local v7, "oldY":I
    if-eqz p7, :cond_2

    .line 1059
    if-eqz p6, :cond_3

    iget v2, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    :goto_0
    aget-object v3, v12, v2

    if-eqz p6, :cond_4

    iget v2, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    :goto_1
    const/4 v9, 0x0

    aput-boolean v9, v3, v2

    .line 1061
    aget-object v2, v12, p2

    const/4 v3, 0x1

    aput-boolean v3, v2, p3

    .line 1063
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1064
    if-eqz p6, :cond_5

    .line 1065
    move/from16 v0, p2

    iput v0, v11, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    move/from16 v0, p2

    iput v0, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 1066
    move/from16 v0, p3

    iput v0, v11, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 1071
    :goto_2
    invoke-virtual {v10, v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setupLp(Lnet/oneplus/h2launcher/CellLayout$LayoutParams;)V

    .line 1072
    const/4 v2, 0x0

    iput-boolean v2, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1073
    iget v6, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->x:I

    .line 1074
    .local v6, "newX":I
    iget v8, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->y:I

    .line 1076
    .local v8, "newY":I
    iput v5, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->x:I

    .line 1077
    iput v7, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->y:I

    .line 1080
    if-ne v5, v6, :cond_6

    if-ne v7, v8, :cond_6

    .line 1081
    const/4 v2, 0x1

    iput-boolean v2, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1082
    const/4 v2, 0x1

    .line 1120
    .end local v4    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .end local v5    # "oldX":I
    .end local v6    # "newX":I
    .end local v7    # "oldY":I
    .end local v8    # "newY":I
    .end local v11    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :goto_3
    return v2

    .line 1059
    .restart local v4    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .restart local v5    # "oldX":I
    .restart local v7    # "oldY":I
    .restart local v11    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_3
    iget v2, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_4
    iget v2, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    .line 1068
    :cond_5
    move/from16 v0, p2

    iput v0, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    .line 1069
    move/from16 v0, p3

    iput v0, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_2

    .line 1085
    .restart local v6    # "newX":I
    .restart local v8    # "newY":I
    :cond_6
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v2}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 1086
    .local v13, "va":Landroid/animation/ValueAnimator;
    move/from16 v0, p4

    int-to-long v2, v0

    invoke-virtual {v13, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1087
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    new-instance v2, Lnet/oneplus/h2launcher/CellLayout$3;

    move-object v3, p0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lnet/oneplus/h2launcher/CellLayout$3;-><init>(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1098
    new-instance v2, Lnet/oneplus/h2launcher/CellLayout$4;

    invoke-direct {v2, p0, v4, p1}, Lnet/oneplus/h2launcher/CellLayout$4;-><init>(Lnet/oneplus/h2launcher/CellLayout;Lnet/oneplus/h2launcher/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1116
    move/from16 v0, p5

    int-to-long v2, v0

    invoke-virtual {v13, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1117
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 1118
    const/4 v2, 0x1

    goto :goto_3

    .line 1120
    .end local v4    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    .end local v5    # "oldX":I
    .end local v6    # "newX":I
    .end local v7    # "oldY":I
    .end local v8    # "newY":I
    .end local v11    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v13    # "va":Landroid/animation/ValueAnimator;
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 1085
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->buildLayer()V

    .line 349
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 570
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 573
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 574
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 575
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 576
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v3, 0x1

    .line 806
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 807
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    .line 790
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 791
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingTop()I

    move-result v1

    .line 793
    .local v1, "vStartPadding":I
    const/4 v2, 0x0

    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 794
    const/4 v2, 0x1

    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 795
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 13
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I
    .param p5, "resultRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2997
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    .line 2998
    .local v2, "cellWidth":I
    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    .line 2999
    .local v1, "cellHeight":I
    iget v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    .line 3000
    .local v8, "widthGap":I
    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    .line 3002
    .local v5, "heightGap":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingLeft()I

    move-result v3

    .line 3003
    .local v3, "hStartPadding":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingTop()I

    move-result v6

    .line 3005
    .local v6, "vStartPadding":I
    mul-int v11, p3, v2

    add-int/lit8 v12, p3, -0x1

    mul-int/2addr v12, v8

    add-int v7, v11, v12

    .line 3006
    .local v7, "width":I
    mul-int v11, p4, v1

    add-int/lit8 v12, p4, -0x1

    mul-int/2addr v12, v5

    add-int v4, v11, v12

    .line 3008
    .local v4, "height":I
    add-int v11, v2, v8

    mul-int/2addr v11, p1

    add-int v9, v3, v11

    .line 3009
    .local v9, "x":I
    add-int v11, v1, v5

    mul-int/2addr v11, p2

    add-int v10, v6, v11

    .line 3011
    .local v10, "y":I
    add-int v11, v9, v7

    add-int v12, v10, v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3012
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3084
    instance-of v0, p1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 6

    .prologue
    .line 1320
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    .line 1321
    .local v0, "oldIndex":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->animateOut()V

    .line 1322
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v3, v4

    aput v5, v1, v2

    .line 1323
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 546
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 547
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 548
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->invalidate()V

    .line 549
    return-void
.end method

.method public commitTempPlacement()V
    .locals 7

    .prologue
    .line 2459
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/CellLayout;->setUseTempCoords(Z)V

    .line 2460
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 2461
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2462
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v5, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2463
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2464
    .local v4, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    .line 2467
    .local v3, "info":Lnet/oneplus/h2launcher/ItemInfo;
    if-eqz v3, :cond_2

    .line 2468
    iget v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iget v6, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v5, v6, :cond_0

    iget v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iget v6, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v5, v6, :cond_0

    iget v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget v6, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v5, v6, :cond_0

    iget v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    iget v6, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v5, v6, :cond_1

    .line 2470
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->requiresDbUpdate:Z

    .line 2472
    :cond_1
    iget v5, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    iput v5, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iput v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 2473
    iget v5, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    iput v5, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iput v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 2474
    iget v5, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 2475
    iget v5, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    iput v5, v3, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 2461
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2478
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_3
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v5

    invoke-virtual {v5, p0}, Lnet/oneplus/h2launcher/Workspace;->updateItemLocationsInDatabase(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 2479
    :cond_4
    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 22
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "direction"    # [I
    .param p7, "commit"    # Z

    .prologue
    .line 2624
    const/4 v4, 0x2

    new-array v9, v4, [I

    .local v9, "pixelXY":[I
    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 2625
    invoke-virtual/range {v4 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2628
    const/4 v4, 0x0

    aget v11, v9, v4

    const/4 v4, 0x1

    aget v12, v9, v4

    const/16 v19, 0x1

    new-instance v20, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;-><init>(Lnet/oneplus/h2launcher/CellLayout;)V

    move-object/from16 v10, p0

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v18, p5

    invoke-direct/range {v10 .. v20}, Lnet/oneplus/h2launcher/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    move-result-object v21

    .line 2631
    .local v21, "swapSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lnet/oneplus/h2launcher/CellLayout;->setUseTempCoords(Z)V

    .line 2632
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_0

    .line 2636
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->copySolutionToTempState(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2637
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/CellLayout;->setItemPlacementDirty(Z)V

    .line 2638
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->animateItemsToSolution(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2640
    if-eqz p7, :cond_1

    .line 2641
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->commitTempPlacement()V

    .line 2642
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2643
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/CellLayout;->setItemPlacementDirty(Z)V

    .line 2648
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2650
    :cond_0
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->isSolution:Z

    return v4

    .line 2645
    :cond_1
    const/16 v4, 0x96

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4, v5}, Lnet/oneplus/h2launcher/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    goto :goto_0
.end method

.method disableDragTarget()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsDragTarget:Z

    .line 401
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mUseTouchHelper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchHelper:Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 711
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 701
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(FF)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, "v":Landroid/view/View;
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsCustomContentScreen:Z

    if-nez v2, :cond_1

    instance-of v2, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    if-eqz v2, :cond_0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    .line 704
    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .local v1, "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v2, :cond_0

    .line 706
    .end local v1    # "widgetInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/DragLayer;->cancelSwipeUpDownGesture()V

    goto :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public enableAccessibleDrag(ZI)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "dragType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 303
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mUseTouchHelper:Z

    .line 304
    if-nez p1, :cond_1

    .line 305
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 306
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/CellLayout;->setImportantForAccessibility(I)V

    .line 307
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 308
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p0, v1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 328
    :cond_0
    return-void

    .line 310
    :cond_1
    if-ne p2, v2, :cond_3

    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchHelper:Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;

    instance-of v0, v0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;

    if-nez v0, :cond_3

    .line 312
    new-instance v0, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/accessibility/WorkspaceAccessibilityHelper;-><init>(Lnet/oneplus/h2launcher/CellLayout;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchHelper:Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;

    .line 317
    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchHelper:Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 318
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/CellLayout;->setImportantForAccessibility(I)V

    .line 319
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 320
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchHelper:Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 313
    :cond_3
    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchHelper:Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;

    instance-of v0, v0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;

    if-nez v0, :cond_2

    .line 315
    new-instance v0, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/accessibility/FolderAccessibilityHelper;-><init>(Lnet/oneplus/h2launcher/CellLayout;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchHelper:Lnet/oneplus/h2launcher/accessibility/DragAndDropAccessibilityDelegate;

    goto :goto_1
.end method

.method public enableHardwareLayer(Z)V
    .locals 3
    .param p1, "hasLayer"    # Z

    .prologue
    .line 344
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lnet/oneplus/h2launcher/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 345
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method existsEmptyCell()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2840
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method public findCellForSpan([III)Z
    .locals 9
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 2857
    const/4 v2, 0x0

    .line 2858
    .local v2, "foundCell":Z
    iget v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    add-int/lit8 v8, p2, -0x1

    sub-int v0, v7, v8

    .line 2859
    .local v0, "endX":I
    iget v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    add-int/lit8 v8, p3, -0x1

    sub-int v1, v7, v8

    .line 2861
    .local v1, "endY":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-ge v6, v1, :cond_5

    if-nez v2, :cond_5

    .line 2863
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 2864
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 2865
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, p3, :cond_1

    .line 2866
    iget-object v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    add-int v8, v5, v3

    aget-object v7, v7, v8

    add-int v8, v6, v4

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    .line 2869
    add-int/2addr v5, v3

    .line 2863
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2865
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2864
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2874
    .end local v4    # "j":I
    :cond_2
    if-eqz p1, :cond_3

    .line 2875
    const/4 v7, 0x0

    aput v5, p1, v7

    .line 2876
    const/4 v7, 0x1

    aput v6, p1, v7

    .line 2878
    :cond_3
    const/4 v2, 0x1

    .line 2861
    .end local v3    # "i":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2883
    .end local v5    # "x":I
    :cond_5
    return v2
.end method

.method findNearestArea(IIII[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 2836
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIII[I[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "result"    # [I
    .param p8, "resultSpan"    # [I

    .prologue
    .line 1359
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 9
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 1339
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lnet/oneplus/h2launcher/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findVacantCell(II[I)Z
    .locals 6
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "outXY"    # [I

    .prologue
    .line 3305
    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    move-object v0, p3

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/Utilities;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method public finishUpdateDynamicIconState()V
    .locals 5

    .prologue
    .line 1617
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 1618
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1619
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1620
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 1621
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;

    .line 1622
    .local v1, "dynamicIcon":Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;
    invoke-interface {v1}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;->finishUpdateIcon()V

    .line 1618
    .end local v1    # "dynamicIcon":Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1625
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3079
    new-instance v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3089
    new-instance v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1025
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1020
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenScale()F
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsHotseat:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mHotseatScale:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getCountX()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 3057
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 3058
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .prologue
    .line 3052
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 3053
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cell"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 843
    aget v0, p3, v3

    aget v1, p3, v4

    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v0, v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->cellToCenterPoint(II[I)V

    .line 844
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v0, v0

    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    return-object v0
.end method

.method public getSwapInformation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/CellLayout$SwapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mSwapInformation:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVacantCell([III)Z
    .locals 6
    .param p1, "vacant"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 2896
    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hasSortableChild()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1166
    const/4 v2, 0x0

    .line 1167
    .local v2, "totalIconCount":I
    iget v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    add-int/lit8 v4, v7, -0x1

    .local v4, "y":I
    :goto_0
    if-ltz v4, :cond_3

    .line 1168
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    iget v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v3, v7, :cond_2

    .line 1169
    invoke-virtual {p0, v3, v4}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1170
    .local v0, "child":Landroid/view/View;
    instance-of v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    if-eqz v7, :cond_1

    .line 1168
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1174
    :cond_1
    if-eqz v0, :cond_0

    .line 1175
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1167
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1181
    .end local v3    # "x":I
    :cond_3
    if-nez v2, :cond_5

    .line 1207
    :cond_4
    :goto_3
    return v6

    .line 1185
    :cond_5
    move v1, v2

    .line 1186
    .local v1, "sortedIconCount":I
    iget v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    add-int/lit8 v4, v7, -0x1

    :goto_4
    if-ltz v4, :cond_4

    .line 1187
    const/4 v3, 0x0

    .restart local v3    # "x":I
    :goto_5
    iget v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v3, v7, :cond_b

    .line 1188
    invoke-virtual {p0, v3, v4}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1189
    .restart local v0    # "child":Landroid/view/View;
    instance-of v7, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    if-eqz v7, :cond_7

    .line 1187
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1194
    :cond_7
    if-eqz v0, :cond_8

    .line 1195
    add-int/lit8 v1, v1, -0x1

    .line 1198
    :cond_8
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_a

    .line 1199
    if-eq v1, v2, :cond_9

    :goto_6
    move v6, v5

    goto :goto_3

    :cond_9
    move v5, v6

    goto :goto_6

    .line 1202
    :cond_a
    if-eq v1, v2, :cond_6

    move v6, v5

    .line 1203
    goto :goto_3

    .line 1186
    .end local v0    # "child":Landroid/view/View;
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_4
.end method

.method public hideFolderAccept(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .prologue
    .line 533
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->invalidate()V

    .line 537
    return-void
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 3074
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDeleted:Z

    return v0
.end method

.method isDragTarget()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsDragTarget:Z

    return v0
.end method

.method public isDropPending()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDropPending:Z

    return v0
.end method

.method public isHotseat()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsHotseat:Z

    return v0
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .prologue
    .line 2760
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .prologue
    .line 2594
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p6

    .line 2595
    const/4 v0, 0x0

    aget v1, p6, v0

    const/4 v0, 0x1

    aget v2, p6, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2597
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOccupied(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3062
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 3063
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 3065
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRegionVacant(IIII)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .prologue
    const/4 v4, 0x0

    .line 3309
    add-int v5, p1, p3

    add-int/lit8 v2, v5, -0x1

    .line 3310
    .local v2, "x2":I
    add-int v5, p2, p4

    add-int/lit8 v3, v5, -0x1

    .line 3311
    .local v3, "y2":I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v2, v5, :cond_0

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-lt v3, v5, :cond_1

    .line 3322
    :cond_0
    :goto_0
    return v4

    .line 3314
    :cond_1
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-gt v0, v2, :cond_3

    .line 3315
    move v1, p2

    .local v1, "j":I
    :goto_2
    if-gt v1, v3, :cond_2

    .line 3316
    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    aget-object v5, v5, v0

    aget-boolean v5, v5, v1

    if-nez v5, :cond_0

    .line 3315
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3314
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3322
    .end local v1    # "j":I
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isTouchDownCellEmpty()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1155
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1156
    .local v0, "cell":[I
    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchDownX:I

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchDownY:I

    invoke-virtual {p0, v3, v4, v0}, Lnet/oneplus/h2launcher/CellLayout;->pointToCellExact(II[I)V

    .line 1157
    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    aget v4, v0, v2

    aget-object v3, v3, v4

    aget v4, v0, v1

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3024
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    .line 3027
    :cond_0
    :goto_0
    return-void

    .line 3025
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 3026
    .local v7, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v1, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "occupied"    # [[Z

    .prologue
    .line 3030
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    .line 3033
    :cond_0
    :goto_0
    return-void

    .line 3031
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 3032
    .local v7, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v1, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3036
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    .line 3039
    :cond_0
    :goto_0
    return-void

    .line 3037
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 3038
    .local v7, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v1, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public onDoubleTapSettingsChange(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3247
    if-eqz p1, :cond_0

    new-instance v0, Lnet/oneplus/h2launcher/DoubleTapTouchListener;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/DoubleTapTouchListener;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    .line 3248
    .local v0, "l":Landroid/view/View$OnTouchListener;
    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CellLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3249
    return-void

    .line 3247
    .end local v0    # "l":Landroid/view/View$OnTouchListener;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 2949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragging:Z

    .line 2950
    return-void
.end method

.method onDragExit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2959
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 2960
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragging:Z

    .line 2964
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    aput v3, v0, v4

    .line 2965
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->animateOut()V

    .line 2966
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    .line 2967
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->revertTempState()V

    .line 2968
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/CellLayout;->setIsDragOverlapping(Z)V

    .line 2969
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mIsDragTarget:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mDrawBackground:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mBackgroundAlpha:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 437
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 438
    .local v14, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v18, v0

    aget v4, v18, v13

    .line 440
    .local v4, "alpha":F
    const/16 v18, 0x0

    cmpl-float v18, v4, v18

    if-lez v18, :cond_3

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v16, v18, v13

    .line 442
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->getChildrenScale()F

    move-result v19

    invoke-static/range {v18 .. v19}, Lnet/oneplus/h2launcher/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 445
    .local v5, "b":Landroid/graphics/Bitmap;
    const/high16 v18, 0x3f000000    # 0.5f

    add-float v18, v18, v4

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 446
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 438
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v16    # "r":Landroid/graphics/Rect;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 468
    .end local v4    # "alpha":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v11

    .line 469
    .local v11, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lnet/oneplus/h2launcher/Utilities;->getFolderIconSize(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v15

    .line 470
    .local v15, "previewOffset":I
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .line 475
    .local v10, "fra":Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;
    iget v0, v10, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v18, v0

    iget v0, v10, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->cellToPoint(II[I)V

    .line 476
    iget v0, v10, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v18, v0

    iget v0, v10, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    .line 478
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_6

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v6, v18, v19

    .line 480
    .local v6, "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    div-int/lit8 v19, v15, 0x2

    add-int v18, v18, v19

    .line 481
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    iget v0, v11, Lnet/oneplus/h2launcher/DeviceProfile;->folderBackgroundOffset:I

    move/from16 v19, v0

    add-int v7, v18, v19

    .line 484
    .local v7, "centerY":I
    invoke-static {}, Lnet/oneplus/h2launcher/FolderIcon;->hasOuterRing()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 485
    sget-object v9, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 486
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->getOuterRingSize()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->getChildrenScale()F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 487
    .local v17, "width":I
    move/from16 v12, v17

    .line 488
    .local v12, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 489
    div-int/lit8 v18, v17, 0x2

    sub-int v18, v6, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v12, 0x2

    sub-int v19, v7, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 490
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 491
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 496
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v12    # "height":I
    .end local v17    # "width":I
    :cond_5
    sget-object v9, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 497
    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->getChildrenScale()F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 498
    .restart local v17    # "width":I
    move/from16 v12, v17

    .line 499
    .restart local v12    # "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 500
    div-int/lit8 v18, v17, 0x2

    sub-int v18, v6, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v7, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 501
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 502
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 470
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v12    # "height":I
    .end local v17    # "width":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 507
    .end local v8    # "child":Landroid/view/View;
    .end local v10    # "fra":Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    if-ltz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    if-ltz v18, :cond_0

    .line 508
    sget-object v9, Lnet/oneplus/h2launcher/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 509
    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 510
    .restart local v17    # "width":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 512
    .restart local v12    # "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->cellToPoint(II[I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    .line 514
    .restart local v8    # "child":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v6, v18, v19

    .line 516
    .restart local v6    # "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    div-int/lit8 v19, v15, 0x2

    add-int v18, v18, v19

    .line 517
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    iget v0, v11, Lnet/oneplus/h2launcher/DeviceProfile;->folderBackgroundOffset:I

    move/from16 v19, v0

    add-int v7, v18, v19

    .line 519
    .restart local v7    # "centerY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 520
    div-int/lit8 v18, v17, 0x2

    sub-int v18, v6, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v7, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 521
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 522
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2979
    if-eqz p1, :cond_0

    .line 2980
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2981
    .local v0, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->dropped:Z

    .line 2982
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2983
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2985
    .end local v0    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchDownX:I

    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchDownY:I

    .line 724
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mUseTouchHelper:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 725
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 726
    :cond_1
    const/4 v0, 0x1

    .line 731
    :goto_0
    return v0

    .line 728
    :catch_0
    move-exception v0

    .line 731
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 941
    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    const/4 v9, 0x0

    .line 942
    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    iget-boolean v8, v8, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isFullscreen:Z

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    .line 943
    .local v0, "isFullscreen":Z
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 944
    .local v1, "left":I
    if-nez v0, :cond_0

    .line 945
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iget v10, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    mul-int/2addr v9, v10

    sub-int v4, v8, v9

    .line 947
    .local v4, "offset":I
    int-to-float v8, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    add-int/2addr v1, v8

    .line 949
    .end local v4    # "offset":I
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingTop()I

    move-result v7

    .line 951
    .local v7, "top":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    iget-object v9, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    .line 952
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/ClickShadowView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    .line 953
    invoke-virtual {v10}, Lnet/oneplus/h2launcher/ClickShadowView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    .line 951
    invoke-virtual {v8, v1, v7, v9, v10}, Lnet/oneplus/h2launcher/ClickShadowView;->layout(IIII)V

    .line 954
    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    add-int v9, v1, p4

    sub-int/2addr v9, p2

    add-int v10, v7, p5

    sub-int v10, v10, p3

    invoke-virtual {v8, v1, v7, v9, v10}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->layout(IIII)V

    .line 958
    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    .line 959
    sub-int v8, p4, p2

    div-int/lit8 v8, v8, 0x2

    add-int v2, v1, v8

    .line 960
    .local v2, "newLeft":I
    sub-int v8, p5, p3

    div-int/lit8 v8, v8, 0x2

    add-int v3, v7, v8

    .line 961
    .local v3, "newTop":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 962
    .local v6, "offsetWidth":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 964
    .local v5, "offsetHeight":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    sub-int v9, v2, v6

    sub-int v10, v3, v5

    add-int v11, v2, v6

    add-int v12, v3, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/ImageView;->layout(IIII)V

    .line 967
    .end local v2    # "newLeft":I
    .end local v3    # "newTop":I
    .end local v5    # "offsetHeight":I
    .end local v6    # "offsetWidth":I
    :cond_1
    return-void

    .line 942
    .end local v0    # "isFullscreen":Z
    .end local v1    # "left":I
    .end local v7    # "top":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 870
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    .line 871
    .local v27, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 872
    .local v17, "heightSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 873
    .local v26, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 874
    .local v16, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v12, v26, v3

    .line 875
    .local v12, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v11, v16, v3

    .line 876
    .local v11, "childHeightSize":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedCellWidth:I

    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedCellHeight:I

    if-gez v3, :cond_2

    .line 877
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    invoke-static {v12, v3}, Lnet/oneplus/h2launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v13

    .line 878
    .local v13, "cw":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    invoke-static {v11, v3}, Lnet/oneplus/h2launcher/DeviceProfile;->calculateCellHeight(II)I

    move-result v10

    .line 879
    .local v10, "ch":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    if-ne v13, v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    if-eq v10, v3, :cond_2

    .line 880
    :cond_1
    move-object/from16 v0, p0

    iput v13, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    .line 881
    move-object/from16 v0, p0

    iput v10, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v8, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v9, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    invoke-virtual/range {v3 .. v9}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 887
    .end local v10    # "ch":I
    .end local v13    # "cw":I
    :cond_2
    move/from16 v21, v12

    .line 888
    .local v21, "newWidth":I
    move/from16 v20, v11

    .line 889
    .local v20, "newHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedWidth:I

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedHeight:I

    if-lez v3, :cond_6

    .line 890
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedWidth:I

    move/from16 v21, v0

    .line 891
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedHeight:I

    move/from16 v20, v0

    .line 896
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    add-int/lit8 v23, v3, -0x1

    .line 897
    .local v23, "numWidthGaps":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    add-int/lit8 v22, v3, -0x1

    .line 899
    .local v22, "numHeightGaps":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mOriginalWidthGap:I

    if-ltz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mOriginalHeightGap:I

    if-gez v3, :cond_a

    .line 900
    :cond_4
    move v15, v12

    .line 901
    .local v15, "hSpace":I
    move/from16 v25, v11

    .line 902
    .local v25, "vSpace":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    mul-int/2addr v3, v4

    sub-int v14, v15, v3

    .line 903
    .local v14, "hFreeSpace":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    mul-int/2addr v3, v4

    sub-int v24, v25, v3

    .line 904
    .local v24, "vFreeSpace":I
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mMaxGap:I

    if-lez v23, :cond_8

    div-int v3, v14, v23

    :goto_0
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    .line 905
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mMaxGap:I

    if-lez v22, :cond_9

    div-int v3, v24, v22

    :goto_1
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    .line 906
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v8, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v9, v0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    invoke-virtual/range {v3 .. v9}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 914
    .end local v14    # "hFreeSpace":I
    .end local v15    # "hSpace":I
    .end local v24    # "vFreeSpace":I
    .end local v25    # "vSpace":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    .line 915
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/ClickShadowView;->getExtraSize()I

    move-result v5

    add-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    .line 917
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/ClickShadowView;->getExtraSize()I

    move-result v6

    add-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 914
    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/ClickShadowView;->measure(II)V

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    const/high16 v4, 0x40000000    # 2.0f

    .line 921
    move/from16 v0, v21

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    .line 922
    move/from16 v0, v20

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 920
    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->measure(II)V

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    .line 926
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    .line 927
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 925
    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 930
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v19

    .line 931
    .local v19, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v18

    .line 932
    .local v18, "maxHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedWidth:I

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mFixedHeight:I

    if-lez v3, :cond_b

    .line 933
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->setMeasuredDimension(II)V

    .line 937
    :goto_3
    return-void

    .line 892
    .end local v18    # "maxHeight":I
    .end local v19    # "maxWidth":I
    .end local v22    # "numHeightGaps":I
    .end local v23    # "numWidthGaps":I
    :cond_6
    if-eqz v27, :cond_7

    if-nez v17, :cond_3

    .line 893
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 904
    .restart local v14    # "hFreeSpace":I
    .restart local v15    # "hSpace":I
    .restart local v22    # "numHeightGaps":I
    .restart local v23    # "numWidthGaps":I
    .restart local v24    # "vFreeSpace":I
    .restart local v25    # "vSpace":I
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 905
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 909
    .end local v14    # "hFreeSpace":I
    .end local v15    # "hSpace":I
    .end local v24    # "vFreeSpace":I
    .end local v25    # "vSpace":I
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mOriginalWidthGap:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    .line 910
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mOriginalHeightGap:I

    move-object/from16 v0, p0

    iput v3, v0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    goto/16 :goto_2

    .line 935
    .restart local v18    # "maxHeight":I
    .restart local v19    # "maxWidth":I
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->setMeasuredDimension(II)V

    goto :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 971
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 974
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 975
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->setBounds(IIII)V

    .line 977
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 736
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 742
    .local v0, "handled":Z
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->isInOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    .line 743
    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    const/4 v0, 0x1

    .line 746
    .end local v0    # "handled":Z
    :cond_0
    return v0
.end method

.method performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 17
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I
    .param p10, "mode"    # I

    .prologue
    .line 2656
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p8

    .line 2658
    if-nez p9, :cond_0

    .line 2659
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p9, v0

    .line 2665
    :cond_0
    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, p10

    if-ne v0, v2, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x64

    if-eq v2, v3, :cond_5

    .line 2667
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2668
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2670
    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    move/from16 v0, p10

    if-ne v0, v2, :cond_3

    .line 2671
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 2672
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 2681
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/oneplus/h2launcher/CellLayout;->mDirectionVector:[I

    const/4 v11, 0x1

    new-instance v12, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;-><init>(Lnet/oneplus/h2launcher/CellLayout;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lnet/oneplus/h2launcher/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    move-result-object v16

    .line 2685
    .local v16, "swapSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    new-instance v10, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;-><init>(Lnet/oneplus/h2launcher/CellLayout;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lnet/oneplus/h2launcher/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;)Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;

    move-result-object v15

    .line 2688
    .local v15, "noShuffleSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    const/4 v13, 0x0

    .line 2692
    .local v13, "finalSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->area()I

    move-result v2

    invoke-virtual {v15}, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->area()I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 2693
    move-object/from16 v13, v16

    .line 2698
    :cond_4
    :goto_1
    if-nez p10, :cond_8

    .line 2699
    if-eqz v13, :cond_7

    .line 2700
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    .line 2702
    const/4 v2, 0x0

    iget v3, v13, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewX:I

    aput v3, p8, v2

    .line 2703
    const/4 v2, 0x1

    iget v3, v13, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewY:I

    aput v3, p8, v2

    .line 2704
    const/4 v2, 0x0

    iget v3, v13, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v3, p9, v2

    .line 2705
    const/4 v2, 0x1

    iget v3, v13, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v3, p9, v2

    .line 2753
    :goto_2
    return-object p8

    .line 2675
    .end local v13    # "finalSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .end local v15    # "noShuffleSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .end local v16    # "swapSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/CellLayout;->mDirectionVector:[I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lnet/oneplus/h2launcher/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2676
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2677
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    goto/16 :goto_0

    .line 2694
    .restart local v13    # "finalSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .restart local v15    # "noShuffleSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    .restart local v16    # "swapSolution":Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
    :cond_6
    iget-boolean v2, v15, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_4

    .line 2695
    move-object v13, v15

    goto :goto_1

    .line 2707
    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, p8, v3

    aput v6, p8, v2

    goto :goto_2

    .line 2712
    :cond_8
    const/4 v14, 0x1

    .line 2714
    .local v14, "foundSolution":Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/CellLayout;->setUseTempCoords(Z)V

    .line 2717
    if-eqz v13, :cond_10

    .line 2718
    const/4 v2, 0x0

    iget v3, v13, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewX:I

    aput v3, p8, v2

    .line 2719
    const/4 v2, 0x1

    iget v3, v13, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewY:I

    aput v3, p8, v2

    .line 2720
    const/4 v2, 0x0

    iget v3, v13, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v3, p9, v2

    .line 2721
    const/4 v2, 0x1

    iget v3, v13, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v3, p9, v2

    .line 2726
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    move/from16 v0, p10

    if-ne v0, v2, :cond_b

    .line 2728
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1}, Lnet/oneplus/h2launcher/CellLayout;->copySolutionToTempState(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2730
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/CellLayout;->setItemPlacementDirty(Z)V

    .line 2731
    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_e

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lnet/oneplus/h2launcher/CellLayout;->animateItemsToSolution(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2733
    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    move/from16 v0, p10

    if-ne v0, v2, :cond_f

    .line 2735
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->commitTempPlacement()V

    .line 2736
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2737
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/CellLayout;->setItemPlacementDirty(Z)V

    .line 2748
    :cond_b
    :goto_4
    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_c

    if-nez v14, :cond_d

    .line 2749
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/CellLayout;->setUseTempCoords(Z)V

    .line 2752
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->requestLayout()V

    goto/16 :goto_2

    .line 2731
    :cond_e
    const/4 v2, 0x0

    goto :goto_3

    .line 2739
    :cond_f
    const/16 v2, 0x96

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    goto :goto_4

    .line 2744
    :cond_10
    const/4 v14, 0x0

    .line 2745
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, p8, v3

    aput v6, p8, v2

    goto :goto_4
.end method

.method public pointToCellExact(II[I)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 756
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 757
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingTop()I

    move-result v1

    .line 759
    .local v1, "vStartPadding":I
    sub-int v4, p1, v0

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    iget v6, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 760
    sub-int v4, p2, v1

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    iget v6, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 762
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    .line 763
    .local v2, "xAxis":I
    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    .line 765
    .local v3, "yAxis":I
    aget v4, p3, v7

    if-gez v4, :cond_0

    aput v7, p3, v7

    .line 766
    :cond_0
    aget v4, p3, v7

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    .line 767
    :cond_1
    aget v4, p3, v8

    if-gez v4, :cond_2

    aput v7, p3, v8

    .line 768
    :cond_2
    aget v4, p3, v8

    if-lt v4, v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    .line 769
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    .line 778
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lnet/oneplus/h2launcher/CellLayout;->pointToCellExact(II[I)V

    .line 779
    return-void
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2519
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 2520
    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 7
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 818
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 819
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingTop()I

    move-result v1

    .line 820
    .local v1, "vStartPadding":I
    const/4 v2, 0x0

    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 822
    const/4 v2, 0x1

    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    mul-int/2addr v4, p4

    add-int/lit8 v5, p4, -0x1

    iget v6, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 824
    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 834
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 835
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->getPaddingTop()I

    move-result v3

    .line 836
    .local v3, "vStartPadding":I
    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int v1, v0, v4

    .line 837
    .local v1, "left":I
    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int v2, v3, v4

    .line 838
    .local v2, "top":I
    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    mul-int/2addr v5, p4

    add-int/lit8 v6, p4, -0x1

    iget v7, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-virtual {p5, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 840
    return-void
.end method

.method public reloadOccupiedViews()V
    .locals 4

    .prologue
    .line 1029
    invoke-direct {p0}, Lnet/oneplus/h2launcher/CellLayout;->clearOccupiedCells()V

    .line 1030
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1031
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1032
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1033
    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 1031
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1030
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1036
    .end local v1    # "y":I
    :cond_1
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 651
    invoke-direct {p0}, Lnet/oneplus/h2launcher/CellLayout;->clearOccupiedCells()V

    .line 652
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->removeAllViews()V

    .line 653
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 658
    invoke-direct {p0}, Lnet/oneplus/h2launcher/CellLayout;->clearOccupiedCells()V

    .line 659
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    .line 661
    :cond_0
    return-void
.end method

.method public removeOverlayView()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mAddScreenOverlay:Landroid/widget/ImageView;

    .line 647
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 666
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 667
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 672
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->removeViewAt(I)V

    .line 673
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 677
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 678
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 679
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 683
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 684
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->removeViews(II)V

    .line 687
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 691
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 692
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    .line 695
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
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
    .line 558
    .local p1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 566
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_1
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    throw v0

    .line 564
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/CellLayout;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring an error while restoring a view instance state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 559
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public revertSortAllChildrens()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1250
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CellLayout;->setItemPlacementDirty(Z)V

    .line 1251
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CellLayout;->revertTempState(Z)V

    .line 1252
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mSwapInformation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1253
    return-void
.end method

.method revertTempState()V
    .locals 1

    .prologue
    .line 2601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CellLayout;->revertTempState(Z)V

    .line 2602
    return-void
.end method

.method revertTempState(Z)V
    .locals 11
    .param p1, "adjustOccupied"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2605
    invoke-direct {p0}, Lnet/oneplus/h2launcher/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2606
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2607
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    .line 2608
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 2609
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v9}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2610
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 2611
    .local v10, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iget v0, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    if-ne v0, v2, :cond_0

    iget v0, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    if-eq v0, v2, :cond_1

    .line 2612
    :cond_0
    iget v0, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iput v0, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    .line 2613
    iget v0, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iput v0, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    .line 2614
    iget v2, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v3, v10, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2608
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2618
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/CellLayout;->setItemPlacementDirty(Z)V

    .line 2620
    .end local v8    # "count":I
    .end local v9    # "i":I
    :cond_3
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 991
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mDrawBackground:Z

    .line 992
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 993
    return-void

    .line 991
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1000
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1001
    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mBackgroundAlpha:F

    .line 1002
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setAlpha(I)V

    .line 1004
    :cond_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 356
    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mFixedCellWidth:I

    .line 357
    iput p2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    iput p2, p0, Lnet/oneplus/h2launcher/CellLayout;->mFixedCellHeight:I

    .line 358
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iget v6, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    invoke-virtual/range {v0 .. v6}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 360
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 981
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setChildrenDrawingCacheEnabled(Z)V

    .line 982
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 986
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 987
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .prologue
    .line 3070
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mDeleted:Z

    .line 3071
    return-void
.end method

.method public setDropPending(Z)V
    .locals 0
    .param p1, "pending"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mDropPending:Z

    .line 380
    return-void
.end method

.method public setFixedSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 864
    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mFixedWidth:I

    .line 865
    iput p2, p0, Lnet/oneplus/h2launcher/CellLayout;->mFixedHeight:I

    .line 866
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 541
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 542
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->invalidate()V

    .line 543
    return-void
.end method

.method public setGridSize(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 363
    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    .line 364
    iput p2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    .line 365
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mOccupied:[[Z

    .line 366
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTmpOccupied:[[Z

    .line 367
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 368
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    iget v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    iget v6, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    invoke-virtual/range {v0 .. v6}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 370
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->requestLayout()V

    .line 371
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 1
    .param p1, "invert"    # Z

    .prologue
    .line 375
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    .line 376
    return-void
.end method

.method public setIsCustomContentScreen(Z)V
    .locals 0
    .param p1, "isCustomContentScreen"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsCustomContentScreen:Z

    .line 421
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .param p1, "isDragOverlapping"    # Z

    .prologue
    .line 408
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 409
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsDragOverlapping:Z

    .line 410
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 411
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->invalidate()V

    .line 413
    :cond_0
    return-void
.end method

.method public setIsHotseat(Z)V
    .locals 1
    .param p1, "isHotseat"    # Z

    .prologue
    .line 593
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsHotseat:Z

    .line 594
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setIsHotseat(Z)V

    .line 595
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 2757
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mItemPlacementDirty:Z

    .line 2758
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 581
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 582
    return-void
.end method

.method public setPressedIcon(Lnet/oneplus/h2launcher/BubbleTextView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p2, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 388
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 389
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 390
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ClickShadowView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 392
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/ClickShadowView;->alignWithIconView(Lnet/oneplus/h2launcher/BubbleTextView;Landroid/view/ViewGroup;)V

    .line 394
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ClickShadowView;->animateShadow()V

    goto :goto_0
.end method

.method public setShortcutAndWidgetAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1012
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 1013
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public showFolderAccept(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .prologue
    .line 529
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method

.method public sortAllChildrens()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1219
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CellLayout;->reloadOccupiedViews()V

    .line 1220
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mSwapInformation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1221
    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/CellLayout;->setUseTempCoords(Z)V

    .line 1222
    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/CellLayout;->setItemPlacementDirty(Z)V

    .line 1223
    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/CellLayout;->revertTempState(Z)V

    .line 1224
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountY:I

    add-int/lit8 v10, v0, -0x1

    .local v10, "y":I
    :goto_0
    if-ltz v10, :cond_3

    .line 1225
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mCountX:I

    if-ge v9, v0, :cond_2

    .line 1226
    invoke-virtual {p0, v9, v10}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1

    .line 1225
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1231
    :cond_1
    invoke-direct {p0, v9, v10}, Lnet/oneplus/h2launcher/CellLayout;->getLastOccupiedChild(II)Lnet/oneplus/h2launcher/CellLayout$SwapInfo;

    move-result-object v8

    .line 1232
    .local v8, "info":Lnet/oneplus/h2launcher/CellLayout$SwapInfo;
    if-eqz v8, :cond_0

    .line 1234
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mSwapInformation:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    iget v0, v8, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->oldX:I

    iget v2, v8, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->oldY:I

    invoke-virtual {p0, v0, v2}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 1236
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1237
    iget v2, v8, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->newX:I

    iget v3, v8, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->newY:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    goto :goto_2

    .line 1224
    .end local v1    # "child":Landroid/view/View;
    .end local v8    # "info":Lnet/oneplus/h2launcher/CellLayout$SwapInfo;
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1244
    .end local v9    # "x":I
    :cond_3
    return-void
.end method

.method public updateDynamicIconState()V
    .locals 7

    .prologue
    .line 1602
    sget-object v4, Lnet/oneplus/h2launcher/CellLayout;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DynamicIcon CellLayout updateDynamicIconState should Update = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->shouldUpdateDynamicIconState()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->shouldUpdateDynamicIconState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1604
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 1605
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1606
    iget-object v4, p0, Lnet/oneplus/h2launcher/CellLayout;->mShortcutsAndWidgets:Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1607
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 1608
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;

    .line 1609
    .local v1, "dynamicIcon":Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;
    invoke-interface {v1}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;->performUpdateIcon()V

    .line 1605
    .end local v1    # "dynamicIcon":Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1613
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1008
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mIsDragTarget:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragOutline"    # Landroid/graphics/Bitmap;
    .param p3, "originX"    # I
    .param p4, "originY"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I
    .param p9, "resize"    # Z
    .param p10, "dragOffset"    # Landroid/graphics/Point;
    .param p11, "dragRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    const/4 v5, 0x0

    aget v14, v4, v5

    .line 1258
    .local v14, "oldDragCellX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    const/4 v5, 0x1

    aget v15, v4, v5

    .line 1260
    .local v15, "oldDragCellY":I
    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    move/from16 v0, p5

    if-ne v0, v14, :cond_2

    move/from16 v0, p6

    if-eq v0, v15, :cond_0

    .line 1265
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    const/4 v5, 0x0

    aput p5, v4, v5

    .line 1266
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragCell:[I

    const/4 v5, 0x1

    aput p6, v4, v5

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mTmpPoint:[I

    move-object/from16 v18, v0

    .line 1269
    .local v18, "topLeft":[I
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->cellToPoint(II[I)V

    .line 1271
    const/4 v4, 0x0

    aget v12, v18, v4

    .line 1272
    .local v12, "left":I
    const/4 v4, 0x1

    aget v17, v18, v4

    .line 1274
    .local v17, "top":I
    if-eqz p1, :cond_4

    if-nez p10, :cond_4

    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1278
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v4

    .line 1279
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v17, v17, v4

    .line 1284
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v17, v17, v4

    .line 1286
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    mul-int v4, v4, p7

    add-int/lit8 v5, p7, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1287
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v12, v4

    .line 1305
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    move/from16 v16, v0

    .line 1306
    .local v16, "oldIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    aget-object v4, v4, v16

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->animateOut()V

    .line 1307
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    rem-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    aget-object v9, v4, v5

    .line 1309
    .local v9, "r":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int v5, v5, v17

    move/from16 v0, v17

    invoke-virtual {v9, v12, v0, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1310
    if-eqz p9, :cond_3

    move-object/from16 v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1311
    invoke-virtual/range {v4 .. v9}, Lnet/oneplus/h2launcher/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1314
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineAnims:[Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mDragOutlineCurrent:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/InterruptibleInOutAnimator;->animateIn()V

    goto/16 :goto_0

    .line 1289
    .end local v9    # "r":Landroid/graphics/Rect;
    .end local v16    # "oldIndex":I
    :cond_4
    if-eqz p10, :cond_5

    if-eqz p11, :cond_5

    .line 1292
    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    mul-int v5, v5, p7

    add-int/lit8 v6, p7, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 1293
    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v12, v4

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v10

    .line 1295
    .local v10, "cHeight":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    sub-int/2addr v5, v10

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v11, v4

    .line 1296
    .local v11, "cellPaddingY":I
    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v11

    add-int v17, v17, v4

    .line 1297
    goto/16 :goto_1

    .line 1299
    .end local v10    # "cHeight":I
    .end local v11    # "cellPaddingY":I
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellWidth:I

    mul-int v4, v4, p7

    add-int/lit8 v5, p7, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v12, v4

    .line 1301
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/h2launcher/CellLayout;->mCellHeight:I

    mul-int v4, v4, p8

    add-int/lit8 v5, p8, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/CellLayout;->mHeightGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v17, v17, v4

    goto/16 :goto_1
.end method

.class public Lnet/oneplus/h2launcher/FolderIcon;
.super Landroid/widget/FrameLayout;
.source "FolderIcon.java"

# interfaces
.implements Lnet/oneplus/h2launcher/FolderInfo$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;,
        Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;
    }
.end annotation


# static fields
.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DROP_IN_ANIMATION_DURATION:I = 0x190

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x15e

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field private static final ON_OPEN_DELAY:I = 0x320

.field private static final OUTER_RING_GROWTH_FACTOR:F = 0.3f

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.35f

.field protected static final PERSPECTIVE_SHIFT_FACTOR:F = 0.18f

.field private static final SIMPLIFIED_NUM_ITEMS:I = 0x4

.field public static final SPRING_LOADING_ENABLED:Z = true

.field private static final STANDARD_NUM_ITEMS:I = 0x3

.field private static sHasOuterRing:Z

.field public static sNumItemsInPreview:I

.field public static sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

.field static sStaticValuesDirty:Z


# instance fields
.field mAnimParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

.field mAnimating:Z

.field protected mAvailableSpaceInPreview:I

.field protected mBaselineIconScale:F

.field protected mBaselineIconSize:I

.field mDragInfo:Lnet/oneplus/h2launcher/ItemInfo;

.field mFolder:Lnet/oneplus/h2launcher/Folder;

.field protected mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

.field protected mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

.field private mFolderShadowBg:Landroid/graphics/drawable/BitmapDrawable;

.field protected mFourGridIconGap:I

.field protected mFourGridIconSize:I

.field mHiddenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lnet/oneplus/h2launcher/FolderInfo;

.field protected mIntrinsicIconSize:I

.field protected mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

.field protected mMaxPerspectiveShift:F

.field private mOldBounds:Landroid/graphics/Rect;

.field mOnOpenListener:Lnet/oneplus/h2launcher/OnAlarmListener;

.field private mOpenAlarm:Lnet/oneplus/h2launcher/Alarm;

.field protected mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

.field protected mPreviewBackground:Landroid/widget/ImageView;

.field protected mPreviewOffsetX:I

.field protected mPreviewOffsetY:I

.field private mSlop:F

.field private mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

.field protected mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    sput-boolean v1, Lnet/oneplus/h2launcher/FolderIcon;->sStaticValuesDirty:Z

    .line 69
    const/4 v0, 0x3

    sput v0, Lnet/oneplus/h2launcher/FolderIcon;->sNumItemsInPreview:I

    .line 85
    sput-boolean v1, Lnet/oneplus/h2launcher/FolderIcon;->sHasOuterRing:Z

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lnet/oneplus/h2launcher/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mTotalWidth:I

    .line 114
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimating:Z

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    .line 117
    iput v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    .line 118
    iput v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconGap:I

    .line 122
    new-instance v0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;-><init>(Lnet/oneplus/h2launcher/FolderIcon;FFFI)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .line 123
    new-instance v0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;-><init>(Lnet/oneplus/h2launcher/FolderIcon;FFFI)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lnet/oneplus/h2launcher/Alarm;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/Alarm;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOpenAlarm:Lnet/oneplus/h2launcher/Alarm;

    .line 412
    new-instance v0, Lnet/oneplus/h2launcher/FolderIcon$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/FolderIcon$1;-><init>(Lnet/oneplus/h2launcher/FolderIcon;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOnOpenListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    .line 138
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderIcon;->init()V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mTotalWidth:I

    .line 114
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimating:Z

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    .line 117
    iput v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    .line 118
    iput v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconGap:I

    .line 122
    new-instance v0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;-><init>(Lnet/oneplus/h2launcher/FolderIcon;FFFI)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .line 123
    new-instance v0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;-><init>(Lnet/oneplus/h2launcher/FolderIcon;FFFI)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lnet/oneplus/h2launcher/Alarm;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/Alarm;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOpenAlarm:Lnet/oneplus/h2launcher/Alarm;

    .line 412
    new-instance v0, Lnet/oneplus/h2launcher/FolderIcon$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/FolderIcon$1;-><init>(Lnet/oneplus/h2launcher/FolderIcon;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOnOpenListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    .line 133
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderIcon;->init()V

    .line 134
    return-void
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 11
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I
    .param p3, "reverse"    # Z
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 755
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/FolderIcon;->computePreviewItemDrawingParams(ILnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;)Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    move-result-object v4

    .line 757
    .local v4, "finalParams":Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->iconSizePx:I

    int-to-float v7, v0

    .line 758
    .local v7, "iconSize":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v6, v7, v0

    .line 761
    .local v6, "scale0":F
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showStandardFolderIconShape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    .line 763
    .local v8, "tempTransX0":F
    iget v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 768
    .local v9, "tempTransY0":F
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iput-object p1, v0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 770
    move v3, v8

    .line 771
    .local v3, "transX0":F
    move v5, v9

    .line 773
    .local v5, "transY0":F
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 774
    .local v10, "va":Landroid/animation/ValueAnimator;
    new-instance v0, Lnet/oneplus/h2launcher/FolderIcon$3;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/FolderIcon$3;-><init>(Lnet/oneplus/h2launcher/FolderIcon;ZFLnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;FF)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 788
    new-instance v0, Lnet/oneplus/h2launcher/FolderIcon$4;

    invoke-direct {v0, p0, p4}, Lnet/oneplus/h2launcher/FolderIcon$4;-><init>(Lnet/oneplus/h2launcher/FolderIcon;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 801
    int-to-long v0, p2

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 802
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 803
    return-void

    .line 765
    .end local v3    # "transX0":F
    .end local v5    # "transY0":F
    .end local v8    # "tempTransX0":F
    .end local v9    # "tempTransY0":F
    .end local v10    # "va":Landroid/animation/ValueAnimator;
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAvailableSpaceInPreview:I

    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconGap:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    .line 766
    .restart local v8    # "tempTransX0":F
    move v9, v8

    .restart local v9    # "tempTransY0":F
    goto :goto_0

    .line 773
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computePreviewDrawingParams(II)V
    .locals 9
    .param p1, "drawableSize"    # I
    .param p2, "totalSize"    # I

    .prologue
    .line 565
    iget-object v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v2

    .line 566
    .local v2, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    iput p1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mIntrinsicIconSize:I

    .line 567
    iput p2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mTotalWidth:I

    .line 569
    iget-object v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 570
    .local v5, "previewSize":I
    sget v7, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    int-to-float v7, v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 572
    .local v4, "previewPadding":I
    mul-int/lit8 v7, v4, 0x2

    sub-int v7, v5, v7

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAvailableSpaceInPreview:I

    .line 574
    iget-object v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0087

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 575
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    .line 576
    iget-object v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 577
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconGap:I

    .line 578
    iget v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconGap:I

    add-int v0, v7, v8

    .line 581
    .local v0, "actualWidth":I
    iget v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAvailableSpaceInPreview:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const v8, 0x3fe66666    # 1.8f

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 583
    .local v1, "adjustedAvailableSpace":I
    iget v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v7, v7

    const v8, 0x3f970a3e    # 1.1800001f

    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 585
    .local v6, "unscaledHeight":I
    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v8, v1

    mul-float/2addr v7, v8

    int-to-float v8, v6

    div-float/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mBaselineIconScale:F

    .line 587
    iget v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v7, v7

    iget v8, p0, Lnet/oneplus/h2launcher/FolderIcon;->mBaselineIconScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mBaselineIconSize:I

    .line 588
    iget v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mBaselineIconSize:I

    int-to-float v7, v7

    const v8, 0x3e3851ec    # 0.18f

    mul-float/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mMaxPerspectiveShift:F

    .line 590
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/oos/StyleManager;->showStandardFolderIconShape()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 591
    iget v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mTotalWidth:I

    iget v8, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAvailableSpaceInPreview:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewOffsetX:I

    .line 592
    iget v7, v2, Lnet/oneplus/h2launcher/DeviceProfile;->folderBackgroundOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewOffsetY:I

    .line 599
    :goto_0
    return-void

    .line 594
    :cond_0
    iget v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mTotalWidth:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewOffsetX:I

    .line 596
    iget-object v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 597
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getPaddingTop()I

    move-result v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    sub-int v8, v5, v0

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewOffsetY:I

    goto :goto_0
.end method

.method private findDropPosition(Lnet/oneplus/h2launcher/ShortcutInfo;)I
    .locals 8
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "dropPosition":I
    iget-wide v4, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->container:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v6

    iget-wide v6, v6, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 546
    iget-object v4, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Folder;->getItemInfoInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 547
    .local v3, "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    const/4 v1, 0x0

    .line 548
    .local v1, "found":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    .line 549
    .local v2, "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 550
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 551
    const/4 v1, 0x1

    .line 555
    .end local v2    # "itemInfo":Lnet/oneplus/h2launcher/ItemInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 556
    iget-object v4, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 561
    .end local v1    # "found":Z
    .end local v3    # "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ItemInfo;>;"
    :cond_2
    :goto_0
    return v0

    .line 559
    :cond_3
    iget-object v4, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method static fromXml(ILnet/oneplus/h2launcher/Launcher;Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/FolderInfo;Lnet/oneplus/h2launcher/AssetCache;)Lnet/oneplus/h2launcher/FolderIcon;
    .locals 10
    .param p0, "resId"    # I
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "group"    # Landroid/view/ViewGroup;
    .param p3, "folderInfo"    # Lnet/oneplus/h2launcher/FolderInfo;
    .param p4, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 157
    const/4 v1, 0x0

    .line 163
    .local v1, "error":Z
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->showStandardFolderIconShape()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    :goto_0
    sput v6, Lnet/oneplus/h2launcher/FolderIcon;->sNumItemsInPreview:I

    .line 166
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->showStandardFolderIconShape()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    sput-boolean v6, Lnet/oneplus/h2launcher/FolderIcon;->sHasOuterRing:Z

    .line 168
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v3

    .line 172
    .local v3, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, p0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/FolderIcon;

    .line 173
    .local v4, "icon":Lnet/oneplus/h2launcher/FolderIcon;
    invoke-virtual {v4, v8}, Lnet/oneplus/h2launcher/FolderIcon;->setClipToPadding(Z)V

    .line 174
    const v6, 0x7f110119

    invoke-virtual {v4, v6}, Lnet/oneplus/h2launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/BubbleTextView;

    iput-object v6, v4, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    .line 175
    iget-object v6, v4, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    iget-object v9, p3, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Lnet/oneplus/h2launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v6, v4, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v6, v8}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 177
    iget-object v6, v4, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/Utilities;->getFolderNameTopMargin(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 181
    const v6, 0x7f110118

    invoke-virtual {v4, v6}, Lnet/oneplus/h2launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 182
    iget-object v9, v4, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->showStandardFolderIconShape()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f02019c

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v6, v4, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/Utilities;->getFolderPreviewBackgroundTopMargin(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 185
    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/Utilities;->getFolderIconSize(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 186
    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/Utilities;->getFolderIconSize(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 188
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->showStandardFolderIconShape()Z

    move-result v6

    if-nez v6, :cond_0

    .line 189
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/FolderIcon;->initFolderBackground()V

    .line 192
    :cond_0
    invoke-virtual {v4, p3}, Lnet/oneplus/h2launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v4, p1}, Lnet/oneplus/h2launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object p3, v4, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    .line 195
    iput-object p1, v4, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 196
    const v6, 0x7f0b0055

    invoke-virtual {p1, v6}, Lnet/oneplus/h2launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v9, p3, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/oneplus/h2launcher/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 198
    invoke-static {p1}, Lnet/oneplus/h2launcher/Folder;->fromXml(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/Folder;

    move-result-object v2

    .line 199
    .local v2, "folder":Lnet/oneplus/h2launcher/Folder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/Folder;->setDragController(Lnet/oneplus/h2launcher/DragController;)V

    .line 200
    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/Folder;->setFolderIcon(Lnet/oneplus/h2launcher/FolderIcon;)V

    .line 201
    invoke-virtual {v2, p3}, Lnet/oneplus/h2launcher/Folder;->bind(Lnet/oneplus/h2launcher/FolderInfo;)V

    .line 202
    iput-object v2, v4, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    .line 204
    new-instance v6, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-direct {v6, p1, v4}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/FolderIcon;)V

    iput-object v6, v4, Lnet/oneplus/h2launcher/FolderIcon;->mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    .line 205
    invoke-virtual {p3, v4}, Lnet/oneplus/h2launcher/FolderInfo;->addListener(Lnet/oneplus/h2launcher/FolderInfo$FolderListener;)V

    .line 207
    iget-object v6, p1, Lnet/oneplus/h2launcher/Launcher;->mFocusHandler:Lnet/oneplus/h2launcher/FocusIndicatorView;

    invoke-virtual {v4, v6}, Lnet/oneplus/h2launcher/FolderIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 208
    return-object v4

    .line 163
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "folder":Lnet/oneplus/h2launcher/Folder;
    .end local v3    # "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    .end local v4    # "icon":Lnet/oneplus/h2launcher/FolderIcon;
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 166
    goto/16 :goto_1

    .line 182
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    .restart local v4    # "icon":Lnet/oneplus/h2launcher/FolderIcon;
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    const v6, 0x7f020061

    goto :goto_2
.end method

.method private getLocalCenterForIndex(I[I)F
    .locals 6
    .param p1, "index"    # I
    .param p2, "center"    # [I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 621
    sget v2, Lnet/oneplus/h2launcher/FolderIcon;->sNumItemsInPreview:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/FolderIcon;->computePreviewItemDrawingParams(ILnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;)Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .line 623
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewOffsetX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 624
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewOffsetY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 625
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lnet/oneplus/h2launcher/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 626
    .local v0, "offsetX":F
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lnet/oneplus/h2launcher/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 628
    .local v1, "offsetY":F
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 629
    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 630
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->scale:F

    return v2
.end method

.method public static getNumItemsInPreview()I
    .locals 1

    .prologue
    .line 890
    sget v0, Lnet/oneplus/h2launcher/FolderIcon;->sNumItemsInPreview:I

    return v0
.end method

.method private getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 749
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 750
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v0, v0, Lnet/oneplus/h2launcher/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method public static hasOuterRing()Z
    .locals 1

    .prologue
    .line 886
    sget-boolean v0, Lnet/oneplus/h2launcher/FolderIcon;->sHasOuterRing:Z

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    .line 143
    new-instance v0, Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    .line 144
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 145
    return-void
.end method

.method private onDrop(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 24
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "animateView"    # Lnet/oneplus/h2launcher/DragView;
    .param p3, "finalRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRelativeToDragLayer"    # F
    .param p5, "index"    # I
    .param p6, "postAnimationRunnable"    # Ljava/lang/Runnable;
    .param p7, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 473
    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    .line 474
    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    .line 479
    if-eqz p2, :cond_2

    .line 480
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v4

    .line 481
    .local v4, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 482
    .local v6, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lnet/oneplus/h2launcher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 483
    move-object/from16 v7, p3

    .line 484
    .local v7, "to":Landroid/graphics/Rect;
    if-nez v7, :cond_0

    .line 485
    new-instance v7, Landroid/graphics/Rect;

    .end local v7    # "to":Landroid/graphics/Rect;
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 486
    .restart local v7    # "to":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v23

    .line 488
    .local v23, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/Workspace;->setFinalTransitionTransform(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderIcon;->getScaleX()F

    move-result v21

    .line 490
    .local v21, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderIcon;->getScaleY()F

    move-result v22

    .line 491
    .local v22, "scaleY":F
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/FolderIcon;->setScaleX(F)V

    .line 492
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/FolderIcon;->setScaleY(F)V

    .line 493
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v7}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 495
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderIcon;->setScaleX(F)V

    .line 496
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderIcon;->setScaleY(F)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/Workspace;->resetTransitionTransform(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 500
    .end local v21    # "scaleX":F
    .end local v22    # "scaleY":F
    .end local v23    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 501
    .local v19, "center":[I
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v20

    .line 502
    .local v20, "scale":F
    const/4 v5, 0x0

    const/4 v9, 0x0

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    .line 503
    const/4 v5, 0x1

    const/4 v9, 0x1

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    .line 505
    const/4 v5, 0x0

    aget v5, v19, v5

    invoke-virtual/range {p2 .. p2}, Lnet/oneplus/h2launcher/DragView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v5, v9

    const/4 v9, 0x1

    aget v9, v19, v9

    .line 506
    invoke-virtual/range {p2 .. p2}, Lnet/oneplus/h2launcher/DragView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 505
    invoke-virtual {v7, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 508
    sget v5, Lnet/oneplus/h2launcher/FolderIcon;->sNumItemsInPreview:I

    move/from16 v0, p5

    if-ge v0, v5, :cond_1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 510
    .local v8, "finalAlpha":F
    :goto_0
    mul-float v11, v20, p4

    .line 511
    .local v11, "finalScale":F
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v13, 0x190

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v14, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v15, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v5, p2

    move v12, v11

    move-object/from16 v16, p6

    invoke-virtual/range {v4 .. v18}, Lnet/oneplus/h2launcher/DragLayer;->animateView(Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 515
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/h2launcher/FolderIcon;->addItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lnet/oneplus/h2launcher/Folder;->hideItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 518
    new-instance v5, Lnet/oneplus/h2launcher/FolderIcon$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lnet/oneplus/h2launcher/FolderIcon$2;-><init>(Lnet/oneplus/h2launcher/FolderIcon;Lnet/oneplus/h2launcher/ShortcutInfo;)V

    const-wide/16 v12, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lnet/oneplus/h2launcher/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    .end local v4    # "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    .end local v6    # "from":Landroid/graphics/Rect;
    .end local v7    # "to":Landroid/graphics/Rect;
    .end local v8    # "finalAlpha":F
    .end local v11    # "finalScale":F
    .end local v19    # "center":[I
    .end local v20    # "scale":F
    :goto_1
    return-void

    .line 508
    .restart local v4    # "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    .restart local v6    # "from":Landroid/graphics/Rect;
    .restart local v7    # "to":Landroid/graphics/Rect;
    .restart local v19    # "center":[I
    .restart local v20    # "scale":F
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 526
    .end local v4    # "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    .end local v6    # "from":Landroid/graphics/Rect;
    .end local v7    # "to":Landroid/graphics/Rect;
    .end local v19    # "center":[I
    .end local v20    # "scale":F
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/h2launcher/FolderIcon;->addItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    goto :goto_1
.end method

.method private willAcceptItem(Lnet/oneplus/h2launcher/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    const/4 v1, 0x1

    .line 373
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    .line 374
    .local v0, "itemType":I
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    .line 377
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Folder;->isFull()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-boolean v2, v2, Lnet/oneplus/h2launcher/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 381
    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/ItemInfo;

    .line 382
    .local v0, "item":Lnet/oneplus/h2launcher/ItemInfo;
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Folder;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/FolderIcon;->willAcceptItem(Lnet/oneplus/h2launcher/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 1
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 386
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/FolderInfo;->add(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 387
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 880
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 882
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    .line 883
    return-void
.end method

.method protected computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 603
    .local v0, "drawableSize":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/FolderIcon;->computePreviewDrawingParams(II)V

    .line 604
    return-void
.end method

.method protected computePreviewItemDrawingParams(ILnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;)Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;
    .locals 15
    .param p1, "index"    # I
    .param p2, "params"    # Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .prologue
    .line 639
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->showStandardFolderIconShape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    sget v1, Lnet/oneplus/h2launcher/FolderIcon;->sNumItemsInPreview:I

    sub-int v1, v1, p1

    add-int/lit8 p1, v1, -0x1

    .line 641
    move/from16 v0, p1

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    sget v2, Lnet/oneplus/h2launcher/FolderIcon;->sNumItemsInPreview:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 642
    .local v10, "r":F
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3eb33333    # 0.35f

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v10

    mul-float/2addr v2, v14

    sub-float v11, v1, v2

    .line 644
    .local v11, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v10

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mMaxPerspectiveShift:F

    mul-float v7, v1, v2

    .line 645
    .local v7, "offset":F
    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mBaselineIconSize:I

    int-to-float v1, v1

    mul-float v13, v11, v1

    .line 646
    .local v13, "scaledSize":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v11

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mBaselineIconSize:I

    int-to-float v2, v2

    mul-float v12, v1, v2

    .line 650
    .local v12, "scaleOffsetCorrection":F
    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v1, v1

    add-float v2, v7, v13

    add-float/2addr v2, v12

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float v4, v1, v2

    .line 651
    .local v4, "transY":F
    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v1, v1

    sub-float/2addr v1, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    .line 652
    .local v3, "transX":F
    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mBaselineIconScale:F

    mul-float v5, v1, v11

    .line 653
    .local v5, "totalScale":F
    const/high16 v1, 0x42a00000    # 80.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v10

    mul-float/2addr v1, v2

    float-to-int v6, v1

    .line 675
    .end local v7    # "offset":F
    .end local v10    # "r":F
    .end local v11    # "scale":F
    .end local v12    # "scaleOffsetCorrection":F
    .end local v13    # "scaledSize":F
    .local v6, "overlayAlpha":I
    :goto_0
    if-nez p2, :cond_4

    .line 676
    new-instance p2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .end local p2    # "params":Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;
    move-object/from16 v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;-><init>(Lnet/oneplus/h2launcher/FolderIcon;FFFI)V

    .line 683
    .restart local p2    # "params":Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;
    :goto_1
    return-object p2

    .line 655
    .end local v3    # "transX":F
    .end local v4    # "transY":F
    .end local v5    # "totalScale":F
    .end local v6    # "overlayAlpha":I
    :cond_0
    if-nez p1, :cond_1

    .line 656
    const/4 v8, 0x0

    .line 657
    .local v8, "offsetX":F
    const/4 v9, 0x0

    .line 669
    .local v9, "offsetY":F
    :goto_2
    move v4, v9

    .line 670
    .restart local v4    # "transY":F
    move v3, v8

    .line 671
    .restart local v3    # "transX":F
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v2, v2

    div-float v5, v1, v2

    .line 672
    .restart local v5    # "totalScale":F
    const/4 v6, 0x0

    .restart local v6    # "overlayAlpha":I
    goto :goto_0

    .line 658
    .end local v3    # "transX":F
    .end local v4    # "transY":F
    .end local v5    # "totalScale":F
    .end local v6    # "overlayAlpha":I
    .end local v8    # "offsetX":F
    .end local v9    # "offsetY":F
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 659
    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    add-int/lit8 v1, v1, 0x0

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconGap:I

    add-int/2addr v1, v2

    int-to-float v8, v1

    .line 660
    .restart local v8    # "offsetX":F
    const/4 v9, 0x0

    .restart local v9    # "offsetY":F
    goto :goto_2

    .line 661
    .end local v8    # "offsetX":F
    .end local v9    # "offsetY":F
    :cond_2
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 662
    const/4 v8, 0x0

    .line 663
    .restart local v8    # "offsetX":F
    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconGap:I

    add-int/2addr v1, v2

    int-to-float v9, v1

    .restart local v9    # "offsetY":F
    goto :goto_2

    .line 665
    .end local v8    # "offsetX":F
    .end local v9    # "offsetY":F
    :cond_3
    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconGap:I

    add-int/2addr v1, v2

    int-to-float v8, v1

    .line 666
    .restart local v8    # "offsetX":F
    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconSize:I

    iget v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFourGridIconGap:I

    add-int/2addr v1, v2

    int-to-float v9, v1

    .restart local v9    # "offsetY":F
    goto :goto_2

    .line 678
    .end local v8    # "offsetX":F
    .end local v9    # "offsetY":F
    .restart local v3    # "transX":F
    .restart local v4    # "transY":F
    .restart local v5    # "totalScale":F
    .restart local v6    # "overlayAlpha":I
    :cond_4
    move-object/from16 v0, p2

    iput v3, v0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 679
    move-object/from16 v0, p2

    iput v4, v0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 680
    move-object/from16 v0, p2

    iput v5, v0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 681
    move-object/from16 v0, p2

    iput v6, v0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 714
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 716
    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    if-nez v5, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 719
    :cond_2
    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    .line 724
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_4

    .line 725
    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iget-object v5, v5, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 732
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget v6, Lnet/oneplus/h2launcher/FolderIcon;->sNumItemsInPreview:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 733
    .local v3, "nItemsInPreview":I
    iget-boolean v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimating:Z

    if-nez v5, :cond_5

    .line 734
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 735
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 736
    .local v4, "v":Landroid/widget/TextView;
    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 737
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 738
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    invoke-virtual {p0, v1, v5}, Lnet/oneplus/h2launcher/FolderIcon;->computePreviewItemDrawingParams(ILnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;)Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .line 739
    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    iput-object v0, v5, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 740
    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    invoke-virtual {p0, p1, v5}, Lnet/oneplus/h2launcher/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;)V

    .line 734
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 727
    .end local v1    # "i":I
    .end local v3    # "nItemsInPreview":I
    .end local v4    # "v":Landroid/widget/TextView;
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 728
    .restart local v4    # "v":Landroid/widget/TextView;
    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 729
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 744
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "v":Landroid/widget/TextView;
    .restart local v3    # "nItemsInPreview":I
    :cond_5
    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mAnimParams:Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    invoke-virtual {p0, p1, v5}, Lnet/oneplus/h2launcher/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;)V

    goto :goto_0
.end method

.method protected drawPreviewItem(Landroid/graphics/Canvas;Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    .line 687
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 688
    iget v3, p2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewOffsetX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v5, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewOffsetY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 689
    iget v3, p2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 690
    iget-object v0, p2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 692
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 693
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 694
    iget v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mIntrinsicIconSize:I

    iget v4, p0, Lnet/oneplus/h2launcher/FolderIcon;->mIntrinsicIconSize:I

    invoke-virtual {v0, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 695
    instance-of v3, v0, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 696
    check-cast v1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .line 697
    .local v1, "fd":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->getBrightness()I

    move-result v2

    .line 698
    .local v2, "oldBrightness":I
    iget v3, p2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBrightness(I)V

    .line 699
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 700
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBrightness(I)V

    .line 707
    .end local v1    # "fd":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    .end local v2    # "oldBrightness":I
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 709
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 710
    return-void

    .line 702
    :cond_1
    iget v3, p2, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 704
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 705
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public getFolder()Lnet/oneplus/h2launcher/Folder;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    return-object v0
.end method

.method getFolderInfo()Lnet/oneplus/h2launcher/FolderInfo;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    return-object v0
.end method

.method public getTextVisible()Z
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initFolderBackground()V
    .locals 5

    .prologue
    .line 212
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    .line 213
    .local v0, "app":Lnet/oneplus/h2launcher/LauncherAppState;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020061

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 214
    .local v2, "shape":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/Utilities;->createShadowIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderShadowBg:Landroid/graphics/drawable/BitmapDrawable;

    .line 216
    return-void
.end method

.method public isDropEnabled()Z
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 149
    .local v1, "cellLayoutChildren":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 150
    .local v0, "cellLayout":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/Workspace;

    .line 151
    .local v2, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onAdd(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 0
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 823
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    .line 824
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->requestLayout()V

    .line 825
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 874
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 875
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mSlop:F

    .line 876
    return-void
.end method

.method public onCreateWithContents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "contents":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    .line 834
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->requestLayout()V

    .line 835
    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 6
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 390
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Folder;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p1

    check-cast v2, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/FolderIcon;->willAcceptItem(Lnet/oneplus/h2launcher/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    .end local p1    # "dragInfo":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 391
    .restart local p1    # "dragInfo":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 392
    .local v1, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 393
    .local v0, "layout":Lnet/oneplus/h2launcher/CellLayout;
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    iget v3, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 394
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->setCellLayout(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 395
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 396
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/CellLayout;->showFolderAccept(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;)V

    .line 397
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOpenAlarm:Lnet/oneplus/h2launcher/Alarm;

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOnOpenListener:Lnet/oneplus/h2launcher/OnAlarmListener;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Alarm;->setOnAlarmListener(Lnet/oneplus/h2launcher/OnAlarmListener;)V

    .line 398
    instance-of v2, p1, Lnet/oneplus/h2launcher/AppInfo;

    if-nez v2, :cond_2

    instance-of v2, p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-eqz v2, :cond_3

    .line 404
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOpenAlarm:Lnet/oneplus/h2launcher/Alarm;

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/Alarm;->setAlarm(J)V

    .line 406
    :cond_3
    check-cast p1, Lnet/oneplus/h2launcher/ItemInfo;

    .end local p1    # "dragInfo":Ljava/lang/Object;
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mDragInfo:Lnet/oneplus/h2launcher/ItemInfo;

    goto :goto_0
.end method

.method public onDragExit()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderRingAnimator:Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 467
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mOpenAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 468
    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 462
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->onDragExit()V

    .line 463
    return-void
.end method

.method public onDragOver(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 410
    return-void
.end method

.method public onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
    .locals 8
    .param p1, "d"    # Lnet/oneplus/h2launcher/DropTarget$DragObject;

    .prologue
    .line 532
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppInfo;->makeShortcut()Lnet/oneplus/h2launcher/ShortcutInfo;

    move-result-object v1

    .line 538
    .local v1, "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->notifyDrop()V

    .line 539
    iget-object v2, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragView:Lnet/oneplus/h2launcher/DragView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showStandardFolderIconShape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    .line 540
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    iget-object v6, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v7, p1

    .line 539
    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/FolderIcon;->onDrop(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 541
    return-void

    .line 536
    .end local v1    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_0
    iget-object v1, p1, Lnet/oneplus/h2launcher/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .restart local v1    # "item":Lnet/oneplus/h2launcher/ShortcutInfo;
    goto :goto_0

    .line 540
    :cond_1
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/FolderIcon;->findDropPosition(Lnet/oneplus/h2launcher/ShortcutInfo;)I

    move-result v5

    goto :goto_1
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 818
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    .line 819
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->requestLayout()V

    .line 820
    return-void
.end method

.method public onRemove(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 0
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 828
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->invalidate()V

    .line 829
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->requestLayout()V

    .line 830
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    sput-boolean v0, Lnet/oneplus/h2launcher/FolderIcon;->sStaticValuesDirty:Z

    .line 235
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 838
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 841
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 847
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 850
    .local v0, "result":Z
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    .line 852
    const/4 v0, 0x1

    .line 869
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 855
    .restart local v0    # "result":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 857
    :pswitch_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 861
    :pswitch_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 864
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lnet/oneplus/h2launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performCreateAnimation(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 10
    .param p1, "destInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "destView"    # Landroid/view/View;
    .param p3, "srcInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p4, "srcView"    # Lnet/oneplus/h2launcher/DragView;
    .param p5, "dstRect"    # Landroid/graphics/Rect;
    .param p6, "scaleRelativeToDragLayer"    # F
    .param p7, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 434
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 435
    .local v8, "animateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 436
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 437
    .local v9, "drawableSize":I
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v9, v0}, Lnet/oneplus/h2launcher/FolderIcon;->computePreviewDrawingParams(II)V

    .line 441
    const/16 v0, 0x15e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v8, v0, v1, v2}, Lnet/oneplus/h2launcher/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 442
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/FolderIcon;->addItem(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 445
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lnet/oneplus/h2launcher/FolderIcon;->onDrop(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lnet/oneplus/h2launcher/DropTarget$DragObject;)V

    .line 446
    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "finalView"    # Landroid/view/View;
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 449
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 450
    .local v0, "animateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 451
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 453
    .local v1, "drawableSize":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 452
    invoke-direct {p0, v1, v2}, Lnet/oneplus/h2launcher/FolderIcon;->computePreviewDrawingParams(II)V

    .line 457
    const/16 v2, 0xc8

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3, p2}, Lnet/oneplus/h2launcher/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 459
    return-void
.end method

.method public removeListeners()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/FolderInfo;->removeListener(Lnet/oneplus/h2launcher/FolderInfo$FolderListener;)V

    .line 895
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolder:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderInfo;->removeListener(Lnet/oneplus/h2launcher/FolderInfo$FolderListener;)V

    .line 896
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 900
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Utilities;->getIconTopOffset(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v0

    add-int/2addr p2, v0

    .line 901
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 902
    return-void
.end method

.method public setScaledLayout()V
    .locals 3

    .prologue
    .line 219
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 221
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 222
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/Utilities;->getFolderNameTopMargin(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 223
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 226
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/Utilities;->getFolderPreviewBackgroundTopMargin(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 227
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/Utilities;->getFolderIconSize(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 228
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/Utilities;->getFolderIconSize(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 229
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 806
    if-eqz p1, :cond_0

    .line 807
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setVisibility(I)V

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderIcon;->mFolderName:Lnet/oneplus/h2launcher/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView;->setVisibility(I)V

    goto :goto_0
.end method
